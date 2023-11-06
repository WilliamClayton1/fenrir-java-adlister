import java.io.Serializable;

public class Quote implements Serializable {

    private int id;
    private String content;

    public Quote() {
    }

    public int getId() {
        return id;
    }

    public String getContent() {
        return content;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
