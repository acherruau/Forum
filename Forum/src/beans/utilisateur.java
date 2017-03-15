package beans;

public class utilisateur {

    private Long      id;
    private String    email;
    private String    motDePasse;
    private String    pseudo;

    public Long getId() {
        return id;
    }
    public void setId( Long id ) {
        this.id = id;
    }

    public void setEmail( String email ) {
        this.email = email;
    }
    public String getEmail() {
        return email;
    }

    public void setMotDePasse( String motDePasse ) {
        this.motDePasse = motDePasse;
    }
    public String getMotDePasse() {
        return motDePasse;
    }

    public void setPseudo( String pseudo ) {
        this.pseudo = pseudo;
    }
    public String getPdeudo() {
        return pseudo;
    }
}