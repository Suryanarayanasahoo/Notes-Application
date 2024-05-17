<%@page import="com.org.Dto.Notes"%>
<%@page import="com.org.Dto.User"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="compenents\bootstrapCSS.jsp"%>

<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f5f9;
    color: #333;
  }
  .body1{
    position: relative;
     width: 100%;
     height: 100vh;
     background: black;
     background: linear-gradient(45deg , rgb(34, 80, 149), rgb(170, 188, 212),  rgb(191, 234, 243) );
     background-size: 300% 300%;
     animation: clr 12s ease-in-out infinite;
  }
  .container {
    max-width: 800px;
    margin: 0 auto;
    text-align: center;
    padding: 50px 20px;
  }
  h1 {
    font-size: 36px;
    color: #007bff;
  }
  p {
    font-size: 20px;
    margin-top: 20px;
    color: gray;
  }
  span {
  color: crimson;
	
}
.Add{

display: flex;
justify-content: center;
align-items: center;
border-radius: 25%;
}
</style>
</head>
<body>						 
<%
User users = (User) session.getAttribute("userObj");
if (users == null){
response.sendRedirect("Login.jsp");
}
else{
 %>
<%@ include file="compenents\navbar2.jsp"%>

<div class="container">
<h1>Hello, <span> <%= users.getName() %></span></h1>


    <h1>Welcome Surya Notes</h1>
    <p>We're delighted to have you here!</p>
  </div>

<% String msg=(String) session.getAttribute("success");
if (msg !=null){
%>
<p class="text-center text-success fs-4">
<%= msg %>
</p>
<% session.removeAttribute("success");
}
%>

<% 
List<Notes> list= users.getNotes();
%>
<div class="Add">
<a href="Addnotes.jsp">
<button class="btn-danger">Add-note</button>
</a>
</div>

<%  
for (Notes n:list){

%>
<div class="col-md-4 card border border-danger m-4" style="width: 15rem">
<div class="card-body" >
<div class="d-flex flex-wrap justify-content-evenly">
<div>
<h2 class="text-success card-title"><%=n.getTitle() %></h2>
<a href="#" class="btn btn-sm btn-info">View</a>
<a href="#" class="btn btn-sm btn-info">Update</a>
<a href="#" class="btn btn-sm btn-danger">Delete</a>
</div>
</div>
</div>

</div>						 
 <% }%>
 <% }%>
						
</body>
</html>