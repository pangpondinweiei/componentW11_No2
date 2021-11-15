
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Update Student</title>
    </head>
    <%Student student = (Student )getServletContext().getAttribute("student"); %>
    <body>
        <form name="confirmUpdate" action="ConfirmUpdateController">
            ID: <%=student.getId()%>
            </br>
            Name: <input type="text" name="name" value="<%=student.getName()%>" size="40" />
            </br>
            GPA: <input type="text" name="gpa" value="<%=student.getGpa()%>" size="10" />
            </br>
            <input type="submit" value="Update" name="update" />
            <input type="submit" value="Cancel" name="cancel" />
        </form>
    </body>
</html>
