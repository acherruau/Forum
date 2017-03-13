package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/Connexion.jsp";
    public static final String CHAMP_EMAIL = "email";
    public static final String CHAMP_PASS = "motdepasse";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* Affichage de la page d'inscription */

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	        /* Récupération des champs du formulaire. */

	        String email = request.getParameter( CHAMP_EMAIL );

	        String Passe = request.getParameter( CHAMP_PASS );
	        
	        

	        try {

	            Class.forName( "com.mysql.jdbc.Driver" );

	        } catch ( ClassNotFoundException e ) {

	            /* Gérer les éventuelles erreurs ici. */

	        }
	        
	        /* Connexion à la base de données */

	        String url = "jdbc:mysql://localhost:3306/forum";

	        String utilisateur = "root";

	        String motDePasse = "";

	        Connection connexion = null;

	        
	        
	        try {

	            connexion = DriverManager.getConnection( url, utilisateur, motDePasse );


	            /* Ici, nous placerons nos requêtes vers la BDD */

	            /* ... */


	        } catch ( SQLException e ) {

	            /* Gérer les éventuelles erreurs ici */

	        } finally {

	            if ( connexion != null )

	                try {

	                    /* Fermeture de la connexion */

	                    connexion.close();

	                } catch ( SQLException ignore ) {

	                    /* Si une erreur survient lors de la fermeture, il suffit de l'ignorer. */

	                }

	        }
	        
	        
	        
	        
	        
		}
}
