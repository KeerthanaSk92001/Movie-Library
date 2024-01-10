<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<Style>
        body{
            background-color: black;
        }
        a{
            text-decoration: none;
            color:aqua;
            text-align: center;
        }
        .container{
            height:430;
            width:50;
            border: 2px solid white;
            margin-left: 390px;
            margin-right: 400px;
            margin-top: 200px;
        }
        .title
        {
        text-align: center;
        font-weight: bolder;
        color: white;
        margin-top: 30px;
         
        }
    </Style>
<body>
<h2 class="title">Welcome To Movie Library! </h2>
 <div class="container">
    <a href="user.jsp"><h1>User</h1></a><br>
    <a href="admin.jsp"><h1>Admin</h1></a>
    </div>
</body>
</html>