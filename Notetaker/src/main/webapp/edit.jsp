<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "com.helper.*"%>
    <%@page import="com.entities.*"%>
    <%@page import= "org.hibernate.*" %>
    
    <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Your Note Taker</title>
<%@include file ="all_js_css.jsp" %>

</head>
<body>
<div  class = "container ">
    <%@include file = "navbar.jsp" %>
    
    <h2>Edit Your Note</h2>
    
   <% 
    int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    Session s = FactoryProvider.getFactory().openSession();   
     Note note = (Note) s.get(Note.class, noteId);
            %> 
            
            <form action="UpdateServlet" method="post">
            <%@include file = "pic.html" %>
            <input value ="<%=note.getId() %> " name ="noteId" type="hidden"/>
        <div class="form-group">
            <label for="title"><b>Note Title</b></label>
            <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Here" 
             value="<%= note.getTitle()%>"/>
        </div>
        <div class="form-group">
            <label for="content"><b>Note Content</b></label>
            <textarea name="content" required id="content" placeholder="Enter Your Content Here" class="form-control" style="height: 200px"
              
               ><%=note.getContent()%></textarea>
        </div>
        <div class="container" centerd>
        <button type="submit" class="btn btn-success">Add</button>
        </div>
    </form>
</div>
</body>
</html>