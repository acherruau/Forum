<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.utilisateur" %>

<%
utilisateur u = (utilisateur) session.getAttribute("sessionUtilisateur");
//String login = request.getParameter("email");
//session.getAttribute("email");;
%>
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
        	 
        	
        	
        	
        	 <form class="navbar-form navbar-right" name="Form" action="Deconnexion" method="GET">    
         	<a>Bonjour <%=u.getEmail()%></a> 
         	
        	 
        	<button type="submit" class="btn btn-success" >Déconnexion</button>
        	</form>
        
          
          
        </div><!--/.navbar-collapse -->
      </div>
    </nav>


