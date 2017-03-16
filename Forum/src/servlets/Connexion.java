package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.utilisateur;
import dao.DAOFactory;
import dao.UtilisateurDao;
import form.ConnexionForm;

@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/ok.jsp";
	public static final String VUE1 = "/Index.jsp";
    public static final String CHAMP_EMAIL = "email";
    public static final String CHAMP_PASS = "motdepasse";
    public static final String ATT_RESULTAT ="txt";
    
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String CONF_DAO_FACTORY = "daofactory";
    public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    
    private UtilisateurDao     utilisateurDao;
    
    public void init() throws ServletException{
        this.utilisateurDao = ( (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY ) ).getUtilisateurDao();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* Affichage de la page d'inscription */

	
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );

	}

	
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			ConnexionForm form = new ConnexionForm();
			
			HttpSession session = request.getSession();
			
			utilisateur utilisateur = form.connecterUtilisateur(request);
			
			 if ( form.getErreurs().isEmpty() ) {
		            session.setAttribute( ATT_SESSION_USER, utilisateur );
		        } else {
		            session.setAttribute( ATT_SESSION_USER, null );
		        }
			
			request.setAttribute( ATT_FORM, form );
	        request.setAttribute( ATT_USER, utilisateur );
	        
	        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
			/*String txt="none";

	        

	        String email = request.getParameter( CHAMP_EMAIL );

	        String passe = request.getParameter( CHAMP_PASS );
	        
	        JDBC connection = new JDBC();
	        
	        txt = connection.Connexion(email,passe);
	        
	        request.setAttribute(ATT_RESULTAT, txt);
	        if(txt=="bienvenue"){
	        	this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
		    }
	        else
	        {
	        	this.getServletContext().getRequestDispatcher(VUE1).forward(request, response);
	        }*/
		}
}
