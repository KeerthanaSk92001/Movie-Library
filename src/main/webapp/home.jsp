<%@page import="java.util.Base64"%>
<%@page import="DTO.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
  <style>
        body{
            background-color: black;
        }
        .head{
            text-align: center;
            color: white;
        }
        .add{
            text-align: center;
            text-decoration: none;
            color:aquamarine;
            margin-left: 460px;
            font-weight: bolder;
            font-size: x-large;
             margin-top: 50px;
        }
         table{
            border: 1px solid white;
            margin-left: 300px;
            text-align: center;
            color:white;  
            width:900px;
            height:600px;
        }
         th{
            color:red;
            font-size: larger;
        }
         .delete
        {
            color:blue;
            font-size: larger;
        }
        .edit{
            color: blueviolet;
            font-size: larger;
        }

    </style>
<body>
<h1 class="head">Welcome</h1>

<% List<Movie> movies = (List)request.getAttribute("movies"); %>
	
	<table border="2px" class="table">
	<tr>
	<th>id</th>
	<th>name</th>
	<th>price</th>
	<th>rating</th>
	<th>genre</th>
	<th>language</th>
	<th>image</th>
	<th>delete</th>
	<th>edit</th>
	</tr>
	
	<% for(Movie m : movies){ %>
	
	<tr>
	<td><%= m.getMovieid() %></td>
	<td><%= m.getMoviename() %></td>
	<td><%= m.getMovieprice() %></td>
	<td><%= m.getMovierating() %></td>
	<td><%= m.getMoviegenre() %></td>
	<td><%= m.getMovielanguage() %></td>
	
	<% String base64image= new String(Base64.getEncoder().encode(m.getMovieimage())); %>
	<td><img  src="data:image/jpeg;base64, <%=base64image %>" height="100px" width="100px" > </td>
	
	<td><a class="delete" href="deletemovie?id=<%=m.getMovieid() %>">delete</a>
	
	<td><a class="edit" href="editmovie?id=<%=m.getMovieid() %>">edit</a>
	</tr>
	
	<% } %>
	
	
	</table>

	<a class="add" href="addmovie.jsp">Add_Movie</a>
	<a class="add" href="logout">Logout</a>
	

</body>
</html>