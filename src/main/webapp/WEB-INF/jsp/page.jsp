<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Добро пожаловать!</title>
      <link rel="stylesheet" type="text/css" href="<c:url value='/sources/css/style.css'/>">

  </head>
  <body>
        <h1>Our Elements from GET method</h1>
        <%-- JSTL foreach tag to loop a Map in JSP --%>
        <ol>
            <c:forEach var="entry" items="${map}">
                <li> <c:out value=" ${entry.key} = "/>
                    <c:forEach var="element" items="${entry.value}">
                            <c:out value="${element} "/>
                    </c:forEach>
                </li>
            </c:forEach>
        </ol>
        <footer>
            <p>Created by Sonchez.z.z</p>
        </footer>
  </body>
</html>