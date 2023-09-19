<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Notes</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container" >
    <%@include file="navbar.jsp" %>
    <%@include file = "pic.html" %>
    <h2>Add Your Notes</h2>
</div>
<div class="container" >
    <form action="SaveNoteServlet" method="post">
        <div class="form-group">
            <label for="title"><b>Note Title</b></label>
            <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Here">
        </div>
        <div class="form-group">
            <label for="content"><b>Note Content</b></label>
            <textarea name="content" required id="content" placeholder="Enter Your Content Here" class="form-control" style="height: 100px"></textarea>
        </div>
        <button type="submit" class="btn btn-primary" style="display: block; margin: 0 auto;">Add</button>
        
    </form>
</div>

</body>
</html>
