package br.edu.infnet.GenerateRandomAnime;

import br.edu.infnet.GenerateRandomAnime.model.Anime;
import br.edu.infnet.GenerateRandomAnime.service.RandomAnimeService;
import feign.FeignException;
import static org.hibernate.annotations.common.util.impl.LoggerFactory.logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class GenerateRandomAnimeApplication
        implements CommandLineRunner {

//    @Autowired
//    private RandomAnimeService randomAnimeService;
    
    public static void main(String[] args) {
        SpringApplication.run(GenerateRandomAnimeApplication.class, args);
    }

//    public int getRandomInt() {
//        return (int) ((Math.random() * (10000 - 1)) + 0);
//    }
//
//    public Anime getRandomAnime(int n) {
//
//        System.out.println("Random ID: " + n);
//
//        Anime anime = randomAnimeService.getAnimeById(n);
//        return anime;
//    }
    
    @Override
    public void run(String... args) throws Exception {
//        int n = getRandomInt();
//
//        try {
//            System.out.println(getRandomAnime(n));
//        } catch (FeignException e) {
//            if (e.status() == 404) {
//                System.out.println("ERRO: Não foi possível encontrar o anime de ID " + n + ". (" + e.status() + ")");
//                System.out.println("Outro anime aparecerá em instantes...\n");
//                run();
//            } else {
//                System.out.println(e);
//            }
//
//        }
    }
}
