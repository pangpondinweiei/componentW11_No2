
<%@page import="java.util.Iterator"%>
<%@page import="model.studentTable"%>
<%@page import="model.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Student</title>
    </head>
        <jsp:useBean id="student" class="model.Student" scope="request"/>
         <%
                       
            List<Student> stdList = studentTable.findAllStudent();
            Iterator<Student> itr = stdList.iterator();
            
         %>
     <body>
        <center>
        <h1>Student List</h1>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>GPA:</th>
          </tr>
          <%
              
               while(itr.hasNext()) {
                   student = itr.next();
                   out.println("<tr>");
                   out.println("<td> "+ student.getId() + "</td>");
                   out.println("<td> "+ student.getName() + "</td>");
                   out.println("<td> "+ student.getGpa() + "</td>");
                   out.println("<tr>");
               }
          %>
    </table>
    <a href="index.html">Back to Menu</a>
 </center>
    </body>
</html>
