<%-- 
    Document   : home
    Created on : Oct 17, 2022, 3:12:58 PM
    Author     : sonnt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .title {
            color: black;
            display:inline;
            font-size: 36px;
            font-weight: 500;
            margin: 500px;
            .logout{
                text-align: left;
            }
        }
    </style>
    <body>
        <span class="title">FPT University Academic Portal</span>
        <c:if test="${sessionScope.account ne null}">
            Hello ${sessionScope.account.displayname}, click 
            <a class=logout href="logout">here</a> to logout. 
        </c:if>
        <c:if test="${sessionScope.account eq null}">
            click 
            <a href="login">here</a> to login. 
        </c:if>
    </body>
</html>
