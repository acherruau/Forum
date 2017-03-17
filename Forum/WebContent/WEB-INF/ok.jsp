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
        	<c:if test="${empty sessionScope.sessionUtilisateur }"> 
        	<form class="navbar-form navbar-right" name="Form" action="Connexion" method="POST">
            <div class="form-group">
              <input type="text" placeholder="Pseudo" class="form-control" name="email" id="email">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Mot de passe" class="form-control" name="motdepasse" id="motdepasse">
            </div>
            <button type="submit" class="btn btn-success">Connexion</button>
            <!-- <a class="btn btn-success" href="<c:url value="/Inscription"/>">Inscription</a>
          	-->
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#card">
  Inscription
</button>
       </form> 
        	</c:if>
        	
        	
        	
        	<c:if test="${!empty sessionScope.sessionUtilisateur }">
        	    
        	<a>Bonjour <%=login%></a>
        	<form class="navbar-form navbar-right" name="Form" action="Deconnexion" method="GET">  
        	<button type="submit" class="btn btn-success" >Déconnexion</button>
        	</form>
          	</c:if>
          	</form>
          
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
	<jsp:include page="/WEB-INF/Contenu.jsp" ></jsp:include>
	<jsp:include page="/WEB-INF/Footer.jsp" ></jsp:include>

</body>
</html>