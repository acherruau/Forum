package bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBC {

    public String Connexion(String email, String motdepasse){
        /* Chargement du driver JDBC pour MySQL */
        try {
            Class.forName( "com.mysql.jdbc.Driver" );
        } catch ( ClassNotFoundException e ) {
        	
        }

        /* Connexion à la base de données */
        String rep="none";
        String url = "jdbc:mysql://localhost:3306/forum";
        String utilisateur = "root";
        String motDePasse = "";
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        try {
            connexion = DriverManager.getConnection( url, utilisateur, motDePasse );

            /* Création de l'objet gérant les requêtes */
            statement = connexion.createStatement();

            /* Exécution d'une requête de lecture */
            resultat = statement.executeQuery( "SELECT mail, mdp FROM utilisateur where mail='"+email+"' and mdp='"+motdepasse+"';");
            
                if(resultat.next())
                {
                	rep="bienvenue";
                }
                else
                {
                	rep="faux";
                }
        
        } catch ( SQLException e ) {
        } finally {
            if ( resultat != null ) {
                try {
                    resultat.close();
                } catch ( SQLException ignore ) {
                }
            }
            if ( statement != null ) {
                try {
                    statement.close();
                } catch ( SQLException ignore ) {
                }
            }
            if ( connexion != null ) {
                try {
                    connexion.close();
                } catch ( SQLException ignore ) {
                }
            }
        }
        return rep;
    }
}