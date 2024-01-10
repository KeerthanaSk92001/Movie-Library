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
            margin-left: 560px;
            width: 400px;
            height: 350px;
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
    </Style>
</head>
<body>
        <h1 class="title">AdminSignup</h1>
        <div class="container"></div>
      
        <form action="adminsignup" method="post">
            <table>
        <tr>
            <td><label for="admin_id">Admin id</label></td>
            <td><input type="text" name="adminid" id="admin_id"></td>
         </tr>

         <tr>
            <td><label for="admin_name">Admin name</label></td>
            <td><input type="text" name="adminname" id="admin_name"></td>
         </tr>

         <tr>
            <td><label for="admin_contact">Admin contact</label></td>
            <td><input type="text" name="admincontact" id="admin_contact"></td>
         </tr>

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
</body>
</html>