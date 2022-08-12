<%@ page import="ua.mk.berkut.p1208.data.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <jsp:useBean id="userBean" scope="request" class="ua.mk.berkut.p1208.beans.UserBean" />
    <h1>Hello, ${userBean.username} !</h1>
    <table>
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Age</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${userBean.users}" var="u">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.name}</td>
                    <td>${u.age}</td>
                </tr>
            </c:forEach>
<%--        <%--%>
<%--            for (User user : userBean.getUsers()) {--%>
<%--                out.println("<tr>");--%>
<%--                out.println("<td>" + user.getId() + "</td>");--%>
<%--                out.println("<td>" + user.getName() + "</td>");--%>
<%--                out.println("<td>" + user.getAge() + "</td>");--%>
<%--                out.println("</tr>");--%>
<%--            }--%>
<%--        %>--%>
        </tbody>
    </table>
</body>
</html>
