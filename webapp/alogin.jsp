<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<Style>
        body{
            background-color: black;
        }
       
        table{
            margin-left: 600px;
            width: 350px;
            height: 300px;
            margin-right: 250px;
            margin-top: 130px;
            border:2px solid aqua;
        }
        .title{
            text-align: center;
            margin-top: 30px;
            color: white;
            font-weight: bolder;
        }  
        tr{
            color:white;
        }
        .button{
            margin-right: 480px;
            text-align: center;
        }
        .message{
 			color:white;    
 			font-weight: bolder; 
 			 text-align: center;  
        }
    </Style>
</head>
<body>
        <h1 class="title">AdminLogin</h1>
        <div class="container">
      
        <form action="adminlogin" method="post">
            <table>
         <tr>
            <td><label for="admin_mail">Admin mail</label></td>
            <td><input type="text" name="adminmail" id="admin_mail"></td>
         </tr>

         <tr>
            <td><label for="admin_password">Admin password</label></td>
            <td><input type="text" name="adminpassword" id="admin_password"></td>
         </tr>
         <tr>
            <td class="button"><input type="submit"></td>
         </tr>
        </table>
        </form>
    
    </div>

<% String message=(String)request.getAttribute("message"); %>
<% if(message!=null){ %>
<div class="message"><%=message%></div>
<% } %>
</body>
</html>