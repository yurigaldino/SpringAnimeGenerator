/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.infnet.GenerateRandomAnime.model;

/**
 *
 * @author Yuri Galdino
 */
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Anime {

    @JsonIgnoreProperties(ignoreUnknown = true)

//    @JsonProperty("id")
//    private int id;
    @JsonProperty("title")
    private String title;

    @JsonProperty("title_japanese")
    private String title_jp;

    @JsonProperty("image_url")
    private String image;

    @JsonProperty("synopsis")
    private String synopsis;

    @JsonProperty("rating")
    private String rating;

    private String airedString;

    @SuppressWarnings("unchecked")
    @JsonProperty("aired")
    private void unpackNested(Map<String, Object> aired) {
        this.airedString = (String) aired.get("string");
    }

    public Anime() {

    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle_jp() {
        return title_jp;
    }

    public void setTitle_jp(String title_jp) {
        this.title_jp = title_jp;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public String getAiredString() {
        return airedString;
    }

    public void setAiredString(String airedString) {
        this.airedString = airedString;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    @Override
    public String toString() {
        return "Nome = " + title
                + "\nNome JP = " + title_jp
                + "\nAno = " + airedString
                + "\nImage = " + image
                + "\nSinopse = " + synopsis + "]";
    }

}
