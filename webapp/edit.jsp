<%@page import="java.util.Base64"%>
<%@page import="DTO.Movie"%>

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
	<% Movie m = (Movie)request.getAttribute("movie");  %>
	
       <form action="updatemovie" method="post" enctype="multipart/form-data">
            <table>
           <tr><td><label> Movie Id</label></td><td><input type="text" name="movieid" value="<%= m.getMovieid() %>" readonly></td></tr>
           <tr><td><label>Movie Name</label></td><td><input type="text" name="moviename" value="<%= m.getMoviename() %>"></td></tr>
          <tr><td><label>Movie Price</label></td><td><input type="text" name="movieprice" value="<%= m.getMovieprice()%>"></td></tr>
           <tr><td><label>Movie Rating</label></td><td><input type="text" name="movierating" value="<%= m.getMovierating() %>"></td></tr>
           <tr><td><label>Movie Genre</label></td><td><input type="text" name="moviegenre" value="<%= m.getMoviegenre() %>"></td></tr>
            <tr><td><label>Movie Language</label></td><td><input type="text" name="movielanguage" value="<%=m.getMovielanguage()%>"></td></tr>
            
           <tr><td><label>Movie Image</label></td><td><input type="file" name="movieimage"></td></tr>
            
           <% String base64image = new String(Base64.getEncoder().encode(m.getMovieimage())); %>
         <tr><td><img  src="data:image/jpeg;base64 , <%= base64image %>" height="150px" width="100px" ></td></tr>
         <tr><td><input type="submit"></td></tr>
        </table>
        </form>
	
</body>
</html>