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
       </div>  
       </div>
    </nav>
    
<!--Form with header-->
<div class="modal fade" id="card">
    <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">x</button>
              <h4 class="modal-title">Créer votre compte :</h4>
            </div>
            <div class="modal-body">
              <form action="test.php">
                <div class="form-group">
                  <label for="pseudo">Pseudo</label>
                  <input type="text" class="form-control" name ="pseudo" id="pseudo" placeholder="Votre pseudo">
                </div>
                <div class="form-group">
                  <label for="email">Email</label>
                  <input type="email" class="form-control" name="email" id="email" placeholder="Votre Email">
                </div>
                <div class="form-group">
                  <label for="mdp">Mot de passe</label>
                  <input type="mdp" class="form-control" name="mdp" id="mdp" placeholder="Votre mdp">
                </div>
                <div class="form-group">
                  <label for="remdp">Confirmez votre mdp</label>
                  <input type="remdp" class="form-control" name="remdp" id="remdp" placeholder="confirmer votre mdp">
                </div>
                <button type="submit" class="btn btn-primary">Envoyer</button>
              </form>
            </div>
            <div class="modal-footer">
              <button class="btn btn-info" data-dismiss="modal">Annuler</button>
            </div>
          </div>
        </div>
</div>
<!--/Form with header-->
          
          
        <!--/.navbar-collapse -->
      

