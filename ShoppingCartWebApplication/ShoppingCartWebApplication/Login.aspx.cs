using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCartWebApplication
{
    public partial class Login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_login_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand("login", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter username = new SqlParameter("Username", TextBox_username.Text);
                SqlParameter password = new SqlParameter("Password", TextBox_password.Text);
                cmd.Parameters.Add(username);
                cmd.Parameters.Add(password);
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    Response.Write("<script>alert('Login Successfull!!!')</script>");
                }
                else
                {
                    Label_error.Visible = true;
                }
            }
        }
    }
}