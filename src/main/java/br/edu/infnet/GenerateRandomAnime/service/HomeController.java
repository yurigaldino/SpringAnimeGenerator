/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.infnet.GenerateRandomAnime.service;

import br.edu.infnet.GenerateRandomAnime.model.Anime;
import br.edu.infnet.GenerateRandomAnime.model.Aired;
import feign.FeignException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Yuri Galdino
 */

@SpringBootApplication
@Controller
public class HomeController {

    @Autowired
    private RandomAnimeService randomAnimeService;

    public int getRandomInt() {
        return (int) ((Math.random() * (10000 - 1)) + 0);
    }

    public Anime getRandomAnime(int n) {

        System.out.println("Random ID: " + n);

        Anime anime = randomAnimeService.getAnimeById(n);
        return anime;
    }

//    @RequestMapping("/")
//    public String home() {
//        return "<html>"
//                + "<header>"
//                + "<title>"
//                + "Random Anime Generator"
//                + "</title>"
//                + "</header>"
//                + "<style>"
//                + "body {text-align: center;}"
//                + "</style>"
//                + "<body style=background-color:lightgrey>"
//                + "<h1 id=title style=font-family:verdana>" + "Generator Gawl" + "</h1>" 
//                + "<h3 id=title_japanese>" + "(ジェネレイターガウル)" + "</h3>"
//                + "<img id=imagem src=https://cdn.myanimelist.net/images/anime/2/19006.jpg>"
//                + "<h3 id=sinopse>" + "Ryo, Gawl and Koji are 3 young boys who travel back into the past with only 1 objective: change history. In their time they discover that their country, Kubere, uses genetically enhanced persons called generators as a military tool. These generators are the cause for the Third War which kills most of the human population. Now Koji, Ryo and Gawl are there to change all the events. (Source: ANN)" + "</h3>"
//                + "</body>"
//                + "</html>";
//    }
    @RequestMapping("/")
    public String home(ModelMap model) {
        //R+ - Mild Nudity
        //Rx - Hentai
        int n = getRandomInt();

        try {
            Anime an = getRandomAnime(n);
            
            //Filtro de conteúdo
            if (an.getRating().equals("R+ - Mild Nudity") || an.getRating().equals("Rx - Hentai")) {
                System.out.println("ERRO: Anime de ID " + n + " contém conteúdo não permitido. (XXX)");
                System.out.println("Outro anime aparecerá em instantes...\n");
                home(model);
            } else {
                model.addAttribute("anime", an);
            }

//feign.FeignException$TooManyRequests: [429 Too Many Requests] during [GET] to [https://api.jikan.moe/v3/anime/5444] [RandomAnimeService#getAnimeById(int)]: [{"status": "429", "type": "RateLimitException", "message": "You are being rate-limited. Please follow Rate Limiting guidelines: https://jikan.docs.apiary.io/#introduction/information/rate-limiting", "error": null}]
        } catch (FeignException e) {
            if (e.status() == 404) {
                System.out.println("ERRO: Não foi possível encontrar o anime de ID " + n + ". (" + e.status() + ")");
                System.out.println("Outro anime aparecerá em instantes...\n");
                home(model);
            } else {
                System.out.println(e);
            }

        } 

        return "index";
    }
}
