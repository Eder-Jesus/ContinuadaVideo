/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.continuada3;
import org.apache.commons.dbcp2.BasicDataSource;

/**
 *
 * @author Aluno
 */
public class Conexao {

    public BasicDataSource vConexao;
    
    public Conexao() 
    {
        vConexao = new BasicDataSource();
        vConexao.setDriverClassName("com.mysql.cj.jdbc.Driver");
        vConexao.setUrl("jdbc:mysql://100.25.188.206:3306/banco?useTimezone=true&serverTimezone=UTC");
        vConexao.setUsername("urubu100");
        vConexao.setPassword("bandtec");
    }

    public BasicDataSource getvConexao() {
        return vConexao;
    }
    
}
