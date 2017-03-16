package dao;

import beans.utilisateur;

public interface UtilisateurDao {

    void creer( utilisateur utilisateur ) throws DAOException;

    utilisateur trouver( String email ) throws DAOException;

    void connexion(String pseudo, String mdp) throws DAOException;
}