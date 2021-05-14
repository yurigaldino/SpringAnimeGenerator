/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.infnet.GenerateRandomAnime.service;

import br.edu.infnet.GenerateRandomAnime.model.Anime;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author Yuri Galdino
 */

@FeignClient(url = "https://api.jikan.moe/v3/anime/", name = "RandomAnimeService")
public interface RandomAnimeService {
    
    @GetMapping("{id}")
    Anime getAnimeById(@PathVariable("id") int id);
}