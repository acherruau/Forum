package servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

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

	        String motDePasse = request.getParameter( CHAMP_PASS );
	        
	        
		}
}
