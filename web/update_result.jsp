

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student Result</title>
    </head>
    <body>
         <h1><%= request.getAttribute("rowUpdated") + " row updated " %> </h1>
        </br>
        <jsp:include page="show_student.jsp" flush="true" />
    </body>
</html>
