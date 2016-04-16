/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MateusMalaquias
 */
public class Jogo {
     private List<Pergunta> listapergunta;
     private Integer pontuacao;
     private Integer pulos ;
     
     public Jogo(){
     pulos = 3;
     pontuacao = 0;
     this.listapergunta = new ArrayList<Pergunta>();
     }

    public List<Pergunta> getListapergunta() {
        return listapergunta;
    }

    public void setListapergunta(List<Pergunta> listapergunta) {
        this.listapergunta = listapergunta;
    }

    public Integer getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(Integer pontuacao) {
        this.pontuacao = pontuacao;
    }

    public Integer getPulos() {
        return pulos;
    }

    public void setPulos(Integer pulos) {
        this.pulos = pulos;
    }
    
    public Integer getAcerto(){
        Integer acerto = 0;
        if(this.pontuacao == 0){
        acerto = 1000;
        }
        else if(pontuacao >= 1000){
            acerto= pontuacao * 2;
        }
        return acerto;
    }
    
    public Integer getErro(){
         Integer erro = 0;
        if(pontuacao == 0 || pontuacao == 1000000){
            return erro;
        }
        else if(pontuacao != 0){
            erro = pontuacao / 2;
        }
    return erro;
    } 
}
