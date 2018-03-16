package com.thoughtmechanix.licenses;

import com.thoughtmechanix.licenses.utils.UserContextInterceptor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

import java.util.Collections;

@SpringBootApplication
@EnableEurekaClient
@EnableCircuitBreaker
public class Application {
    @LoadBalanced
    @Bean
    public RestTemplate restTemplate() {
        RestTemplate restTemplate = new RestTemplate();
        //restTemplate.setInterceptors(Collections.singletonList(new UserContextInterceptor()));
        return restTemplate;
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
