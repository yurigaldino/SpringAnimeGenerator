/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.infnet.GenerateRandomAnime.model;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 *
 * @author Yuri Galdino
 */
public class Aired {

    @JsonProperty("string")
    private String string;

    public Aired() {
    }

    public Aired(String string) {
        this.string = string;
    }

    public String getString() {
        return string;
    }

    public void setString(String string) {
        this.string = string;
    }

}
