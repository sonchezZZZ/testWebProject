<!DOCTYPE html >
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Добро пожаловать!</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/sources/css/countStyle.css'/>">
</head>
<body>
<div class="row_result">
    <div class="result">
        <div class="row">
            <h3>number of get requests: </h3>
            <p> ${GetMethods}</p>
        </div>
        <div class="row">
            <h3>number of post requests: </h3>
            <p> ${PostMethods}</p>
        </div>
        <div class="row">
            <h3>number of All requests: </h3>
            <p> ${AllMethods}</p>
        </div>
    </div>
    <div class="result block-list">
        <c:forEach var="element" items="${formAnswers}">
            <p>${element}</p>
        </c:forEach>
    </div>
</div>

    <form method="POST">
        <label for="key">Enter key:</label> <input type="text" name="key" id="key"> <br>
        <label for="value">Enter value:</label> <input type="text" name="value" id="value"><br>
        <input type="submit" value="Send" >
    </form>
    <footer>
        <p>Created by Sonchez.z.z</p>
    </footer>
</body>
</html>
