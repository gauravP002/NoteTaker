<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "com.helper.FactoryProvider"%>
    <%@page import="com.entities.Note"%>
    <%@page import= "org.hibernate.Session" %>
    <%@page import= "org.hibernate.Query" %>
    <%@page import="java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<div  class = "container ">
    <%@include file = "navbar.jsp" %>
    <%@include file = "pic.html" %>
    <h1>All Notes</h1>
    
    <div class = "row">
    
    <div class = "col-12">
     <%
    Session s = FactoryProvider.getFactory().openSession();
    
   Query q = s.createQuery("from Note");
   List<Note> list = q.list();
   for(Note note : list){
	   %>
	   
	   <div class="card mt-3"  style="height: auto"  style = "width : 50px">
 
  <div class="card-body">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <p> <b> <%=note.getAddedDate()%></b></p>>
    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
     <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
    
  </div>
</div>
	   
	   <% 
   }
    
    s.close();
    
    %>
    
    </div>
    </div>
    </div>
    
</body>
</html>