create table User_details  
(  
   ID int not null identity(1,1) primary key,
   Username varchar(100), 
   Password varchar(20),
   Email varchar(100)
) 

alter procedure signup(
	@username varchar(100),
	@password varchar(20),
	@email varchar(100)
)
as
	insert into User_details values(@username,@password,@email)
go

create procedure login(
	@username varchar(100),
	@password varchar(20)
)
as
	select * from User_details where Username=@username and Password=@password
go