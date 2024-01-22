<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <style>
        body{
            background-color: black;
        }
        .head{
            text-align: center;
            font-size: x-large;
            color:white
        }
       
        label{
            color:white;
        }
        table{
           
            margin-left: 590px;
            margin-top: 170px;
        }
       
    </style>
</head>
 <body>
        <h2 class="head">Add Movie</h2>
            
            <form action="savemovie" method="post" enctype="multipart/form-data">
               <table>
                <tr>
               <td> <label>Movie Id</label></td><td> <input type="text" name="movieid"></td></tr>
               <tr>
              <td ><label>Movie Name</label></td><td> <input type="text" name="moviename"></td> </tr>
              <tr><td> <label>Movie Price</label></td><td><input type="text" name="movieprice"></td></tr>
               <tr><td><label>Movie Rating</label></td><td><input type="text" name="movierating"></td></tr>
              <tr><td><label>Movie genre</label></td><td><input type="text" name="moviegenre"></td></tr>
             <tr><td><label>Movie Language</label></td><td><input type="text" name="movielanguage"></td></tr>
               <tr><td><label>Movie Image</label></td><td><input type="file" name="movieimage"></td></tr>
             <tr> <td><input type="submit"></td></tr>
            </table>
            </form>
        
        </body>
</html>