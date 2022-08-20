<%-- 
    Document   : excluirElevador
    Created on : 10 de jul. de 2022, 22:46:18
    Author     : lisboa
--%>

<%@ page language="java" contentType="text/html" import="java.sql.*" %>
<%@ page import="model.Elevador, model.AcessoDB"  %> 
    
<html>    
    <head>
        <!-- Metadados -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <!--COLOCAR O LINK DO CSS AQUI-->
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
        
        <!--titulo da pagina-->
        <title>INFORMAÇÕES</title>
    </head>

    <body>
        <%
            Elevador elevador = new Elevador(); 
            AcessoDB bd = new AcessoDB();
            String id_m = request.getParameter("id");
            elevador = bd.obterElevadorId(id_m);
        %>    
        
        <main id="formularios">
            <div id="titulo">
                <p>Excuir Elevador</p>
            </div>

            <form  action="deletaElevador.jsp" method="post">
                <div class="containerCampo">
                    <label for="id"><strong>Id:</strong></label>
                    <input type="text" name="id" value="<%= elevador.getId() %>" class="campo" readonly="readonly" >
                </div>

                <div class="containerCampo">
                    <label for="descricao"><strong>Descrição:</strong></label>
                    <input type="text" name="descricao"
                                   value="<%= elevador.getDescricao() %>" class="campo" readonly="readonly" />
                </div>

                <div class="containerCampo">
                    <label for="totalAndares"><strong>Quantidade de Andares:</strong></label>
                    <input type="text" name="totalAndares"
                                   value="<%= elevador.getTotalAndares() %>" class="campo" readonly="readonly" />
                </div>

                <div class="containerCampo">
                    <label for="capacidade"><strong>Capacidade:</strong></label>
                    <input type="text" name="capacidade"
                                   value="<%= elevador.getCapacidade() %>" class="campo" readonly="readonly" />
                </div>

                <div class="containerCampo">
                    <label for="andarAtual"><strong>Andar Atual:</strong></label>
                    <input type="text" name="andarAtual"
                                   value="<%= elevador.getAndarAtual() %>" class="campo" readonly="readonly" />
                </div>

                <div class="containerCampo">
                    <label for="pessoas"><strong>Quantidade de Pessoas:</strong></label>
                    <input type="text" name="pessoas"
                                   value="<%= elevador.getPessoas() %>" class="campo" readonly="readonly" />
                </div>

                <div class="containerCampo">
                    <label for="fabricante"><strong>Fabricante:</strong></label>
                    <input type="text" name="fabricante"
                                   value="<%= elevador.getFabricante() %>" class="campo" readonly="readonly" />
                </div>

                <div class="containerCampo" id="campoBotao">
                    <input class="botao" id="botaoExcluir" type="submit" name="btAtualizar" value="Excluir" />
                    <a href="index.jsp"><input class="botao" id="botaoVoltarExcluir" type="button" value="Voltar"></a>
                </div>
            </form>
        </main>
    </body>
</html>

