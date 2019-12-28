<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCartWebApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form_login" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label_username" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_username" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label_password" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button_login" runat="server" Text="Log in" OnClick="Button_login_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server">
                Don't have an Account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Signup.aspx">Sign up</asp:HyperLink>
            </asp:Label>
        </div>
        <asp:Label ID="Label_error" runat="server" Visible="false" Text="Incorrect Username or Password!!!"></asp:Label>
    </form>
</body>
</html>
