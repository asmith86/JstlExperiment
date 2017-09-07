<%-- 
    Document   : index
    Created on : Sep 6, 2017, 8:03:51 PM
    Author     : alexsmith
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL/EL</title>
    </head>
    <body>
        <style>
            table, th, tr, td {
                border: 1px solid black;
            }
        </style>

        <%
            List students = new ArrayList();
            Map student1 = new HashMap();
            student1.put("FirstName", "Robert");
            student1.put("LastName", "Paulson");
            students.add(student1);

            Map student2 = new HashMap();
            student2.put("FirstName", "David");
            student2.put("LastName", "Davidson");
            students.add(student2);

            Map student3 = new HashMap();
            student3.put("FirstName", "Rachel");
            student3.put("LastName", "Kraemer");
            students.add(student3);

            pageContext.setAttribute("students", students);


        %>

        <% /* <h1>Java JSTL/EL Demo</h1>
         <table>
             <th>First Name</th>
             <th>Last Name</th>
             <c:forEach items="${students}" var="student">
             <tr>
                 <td><c:out value="${student.FirstName}"></td>
                 <td><c:out value="${student.LastName}"></td>
             </tr>
             </c:forEach>
         </table> */%>



        <c:set var = "msg" value = "This is a string that has been split, capitalized, and table-ized" />
        <p>String Message: ${msg}</p>
        <c:set var = "split" value = "${fn:split(msg, ' ')}" />
        <table>

            <c:forEach items="${split}" var="word">
                <tr>
                    <td>${fn:toUpperCase(word)}</td>
                </tr>
            </c:forEach>

        </table>    

    </body>
</html>

