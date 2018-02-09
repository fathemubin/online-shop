<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Lingerie Shop - ${title} </title>
    
    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
   
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

    
    

  </head>

  <body>

    <!-- Navigation bar is here -->
   <%@ include file="./shared/navbar.jsp" %>

    <!-- User clicks home -->
    
    <c:if test="${userClickHome == true}">
   <%@ include file="home.jsp" %>
   </c:if>
   
   <!-- User clicks About -->
   <c:if test="${userClickAbout == true}">
   <%@ include file="about.jsp" %>
   </c:if>
   <!-- User clicks Contact -->
   <c:if test="${userClickContact == true}">
   <%@ include file="contact.jsp" %>
   </c:if>
   
    <!-- Footer is here-->
    <%@ include file="./shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.min.js"></script>
    <script src="${js}/bootstrap.bundle.min.js"></script>

  </body>

</html>


