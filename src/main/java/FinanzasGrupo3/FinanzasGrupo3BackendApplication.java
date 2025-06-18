package FinanzasGrupo3;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class FinanzasGrupo3BackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(FinanzasGrupo3BackendApplication.class, args);
    }

}
