package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bdd.JDBC;

@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/Connexion.jsp";
    public static final String CHAMP_EMAIL = "email";
    public static final String CHAMP_PASS = "motdepasse";
    public static final String ATT_RESULTAT ="txt";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* Affichage de la page d'inscription */

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );

	}

	
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String txt="none";

	        /* Récupération des champs du formulaire. */

	        String email = request.getParameter( CHAMP_EMAIL );

	        String passe = request.getParameter( CHAMP_PASS );
	        
	        JDBC connection = new JDBC();
	        
	        txt = connection.Connexion(email,passe);
	        
	        request.setAttribute(ATT_RESULTAT, txt);
	        
	        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
		}

}
