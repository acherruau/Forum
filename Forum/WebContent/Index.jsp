<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.utilisateur" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>

<%
utilisateur u = (utilisateur) session.getAttribute("sessionUtilisateur");
//String login = request.getParameter("email");
//session.getAttribute("email");;
%>
	
	<c:if test="${empty sessionScope.sessionUtilisateur }">
	<jsp:include page="/WEB-INF/Menu.jsp" ></jsp:include>
	</c:if>	
	<c:if test="${!empty sessionScope.sessionUtilisateur }">
	<jsp:include page="/WEB-INF/ok.jsp" ></jsp:include>
	</c:if>
	<jsp:include page="/WEB-INF/Contenu.jsp" ></jsp:include>
	<jsp:include page="/WEB-INF/Footer.jsp" ></jsp:include>

<script src="bootstrap/js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>