import java.io.Serializable;
import java.sql.Date;


public class Album implements Serializable {
    private long id;
    private String artist;
    private String name;
    private Date release_date;
    private float sales;
    private String genre;


    public Album() {
    }

    public long getId() {
        return id;
    }

    public String getArtist() {
        return artist;
    }

    public String getName() {
        return name;
    }

    public Date getRelease_date() {
        return release_date;
    }

    public float getSales() {
        return sales;
    }

    public String getGenre() {
        return genre;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }

    public void setSales(float sales) {
        this.sales = sales;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
