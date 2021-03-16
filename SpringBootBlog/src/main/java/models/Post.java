package models;

import org.hibernate.annotations.UpdateTimestamp;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/**
 * @author Cristina Domenech <linkedin.com/in/c-domenech github.com/C-Domenech>
 */

@Entity
@Table(name = "post")
public class Post implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_post;
    private String username;
    private String title;
    private String short_description;
    private String content;
    @UpdateTimestamp
    private Timestamp publication;

    public Post() {
    }

    public Post(String username, String title, String short_description, String content) {
        this.username = username;
        this.title = title;
        this.short_description = short_description;
        this.content = content;
    }

    public Integer getId_post() {
        return id_post;
    }

    public void setId_post(Integer id_post) {
        this.id_post = id_post;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getShort_description() {
        return short_description;
    }

    public void setShort_description(String short_description) {
        this.short_description = short_description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getPublication() {
        return publication;
    }

    public void setPublication(Timestamp publication_dt) {
        this.publication = publication_dt;
    }

    @Override
    public String toString() {
        return "Post{" +
                "id_post=" + id_post +
                ", username='" + username + '\'' +
                ", title='" + title + '\'' +
                ", short_description='" + short_description + '\'' +
                ", content='" + content + '\'' +
                ", publication_dt=" + publication +
                '}';
    }

    public String getFormattedPublication_dt() {
        String formattedTimesatmp = new SimpleDateFormat("E dd MMMM, yyyy HH:mm").format(this.publication);
        return formattedTimesatmp;
    }
}
