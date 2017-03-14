<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	
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
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" name="Form" action="Connexion" method="POST">
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control" name="email" id="email">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control" name="motdepasse" id="motdepasse">
            </div>
            <button type="submit" class="btn btn-success">Connexion</button>
            <a class="btn btn-success" href="<c:url value="/Inscription"/>">Inscription</a>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

