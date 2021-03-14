package com.cdomenech.springbootblog;

import models.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


/**
 * @author Cristina Domenech <linkedin.com/in/c-domenech github.com/C-Domenech>
 */

public interface PostRepository extends JpaRepository<Post, Integer> {

// Method that returns a list of the last 5 posts
    @Query(value = "SELECT * FROM post ORDER BY publication_dt DESC LIMIT 5", nativeQuery = true)
    List<Post> findTop5ByOrderByPublication_dtDesc();

// Method that returns a list of the posts from a specific author
    List<Post> findPostsByUsername(String username);

}
