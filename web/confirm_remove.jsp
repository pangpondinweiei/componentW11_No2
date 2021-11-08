

<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Remove Student</title>
    </head>
    <body>
       <%
            Student student = (Student) session.getAttribute("student");
            
        %>
        <form name="confirmRemove" action="ConfirmRemoveController">
            ID: <%= student.getId() %> </br>
            Name: <%= student.getName() %> </br>
            GPA: <%= student.getGpa() %> </br>
            <input type="submit" value="Delete" name="delete" />
            <input type="submit" value="Cancel" name="cancel" />
            
        </form>
    </body>
</html>
