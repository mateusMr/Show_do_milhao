<%@page import="modelo.Jogador"%>   
<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Pergunta"%>
<%@page import="java.util.List"%>
<%@page import="dao.PerguntaDAO"%>
<%
    Jogo jogo = new Jogo();
   PerguntaDAO dao = new PerguntaDAO();
   List<Pergunta> lista =dao.listar();
   jogo.setListapergunta(lista);
   session.setAttribute("jogo", jogo);
   Pergunta pergunta = jogo.getListapergunta().get(0);
   Jogador jogador = (Jogador)session.getAttribute("jogador");
   JogadorDAO jogdao = new JogadorDAO();
  
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show do Milhão</title>
          <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    
    <body>
        <div class="pergunta">
            <h4 class="enunciado"><%=pergunta%></h4>
            <div class="opcoes">
                <form action="fim.jsp" method="post">
                    <input type="radio" value="A" name="rdoPergunta" />
                    <%=pergunta.getA()%><br/>
                    <input type="radio" value="B" name="rdoPergunta" />
                    <%=pergunta.getB()%><br/>
                    <input type="radio" value="C" name="rdoPergunta" />
                    <%=pergunta.getC()%><br/>
                    <input type="radio" value="D" name="rdoPergunta" />
                    <%=pergunta.getD()%><br/>
                    <hr/>
                    <input type="submit" value="confirmar" />
                     <input type="submit" value="pular" />(<%=jogo.getPulos()%>)
                      <input type="submit" value="parar" />
                </form>
            </div>
        </div>
        <div class="painelUsuario">
            <%=jogador.getLogin()%><br />
            <%=jogo.getErro()%> errar<br/>
            <%=jogo.getPontuacao()%> parar<br/>
            <%=jogo.getAcerto()%> acertar<br/>
        </div>
    </body>
</html>
 