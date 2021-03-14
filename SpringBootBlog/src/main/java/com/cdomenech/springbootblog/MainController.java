package com.cdomenech.springbootblog;

import models.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * @author Cristina Domenech <linkedin.com/in/c-domenech github.com/C-Domenech>
 */
@Controller
public class MainController {
    @Autowired
    private PostRepository postRepository;

    /**
     * Home path where are the first 5 last posts
     *
     * @param model used to send tha data to the html template
     * @return index.html template
     */
    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("posts", postRepository.findTop5ByOrderByPublication_dtDesc());
        return "index";
    }

    /**
     * Show a selected post
     *
     * @param id_post used to find the post
     * @param model   used to send tha data to the html template
     * @return post.html template
     */
    @RequestMapping(path = "/{id_post}", method = RequestMethod.GET)
    public String selectedPost(@PathVariable Integer id_post, Model model) {
        model.addAttribute("post", postRepository.findById(id_post).get());
        return "post";
    }

    /**
     * Show all the posts from a specific author
     *
     * @param username param used to find the posts
     * @param model    used to send tha data to the html template
     * @return index.html template
     */
    @RequestMapping(path = "/{username}/posts", method = RequestMethod.GET)
    public String selectedAuthor(@PathVariable String username, Model model) {
        model.addAttribute("posts", postRepository.findPostsByUsername(username));
        return "index";
    }

    /**
     * Show the form with an empty form
     *
     * @param model used to send tha data to the html template
     * @return new_post_form.html template
     */
    @RequestMapping(path = "/new_post", method = RequestMethod.GET)
    public String showNewPostForm(Model model) {
        // It sends an empty Post opbject which is going to be filled in the form
        model.addAttribute("newPost", new Post());
        return "new_post_form";
    }

    /**
     * Get the filled Post object and save it
     *
     * @param post filled object to be saved
     * @return redirect the user to the index page
     */
    @PostMapping("new_post")
    public String saveNewPost(@ModelAttribute Post post) {
        // If the object doesn't exist, save() create a new one
        postRepository.save(post);
        return "redirect:/";
    }

    /**
     * Show the filled form with the data from the selected post
     *
     * @param id_post used to find the post
     * @param model   used to send tha data to the html template
     * @return edit_post_form.html filled
     */
    @RequestMapping(path = "/edit_post/{id_post}", method = RequestMethod.GET)
    public String showEditPostForm(@PathVariable Integer id_post, Model model) {
        model.addAttribute("editPost", postRepository.findById(id_post).get());
        return "edit_post_form";
    }

    /**
     * Get the Post object from the form and save it
     *
     * @param post changed objects to be updated
     * @return redirect the user to the index page
     */
    @PostMapping("/edit_post/{id_post}")
    public String updatePost(@ModelAttribute Post post) {
        // If the object exists, save() update
        postRepository.save(post);
        return "redirect:/";
    }

}
