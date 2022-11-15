package com.example.demo.common.config;

import com.example.demo.utils.config.MyPasswordEncoder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/**")
                .permitAll()
                .anyRequest()
                .authenticated()
                .and().csrf().disable();
    }
    /*
     * 注入MyPasswordEncoder
     */
    @Bean
    public MyPasswordEncoder AesPasswordEncoder(){
        return new MyPasswordEncoder();
    }
}
