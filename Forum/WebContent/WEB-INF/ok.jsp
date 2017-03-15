<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String login = request.getParameter("email");
session.getAttribute("email");;
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Nom du site</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse" >
        	<form class="navbar-form navbar-right" >        
        	<a>Bonjour <%=login%></a>
        	<button type="submit" class="btn btn-success">Déconnexion</button>
          	</form>
          
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
	<jsp:include page="/WEB-INF/Contenu.jsp" ></jsp:include>
	<jsp:include page="/WEB-INF/Footer.jsp" ></jsp:include>

</body>
</html>