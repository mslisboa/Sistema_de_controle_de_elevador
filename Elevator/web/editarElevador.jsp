<%-- 
    Document   : editarElevador
    Created on : 10 de jul. de 2022, 14:14:58
    Author     : lisboa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, model.AcessoDB, model.Elevador" %>
<%@page import="java.util.*" %>

<!DOCTYPE html>
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
            AcessoDB bd = new AcessoDB();
            Elevador elevador = new Elevador();
            String id_m = request.getParameter("id"); //request.getParameter("2");
            elevador = bd.obterElevadorId(id_m);
        %>    

        <main id="formularios">
            <div id="titulo">
                <p>Adicione os dados abaixo:</p>
            </div>

            <form  action="atualizarElevador.jsp" method="POST">
                <div class="containerCampo">
                    <label for="id"><strong>Id:</strong></label>
                    <input type="text" name="id" value="<%= elevador.getId() %>" class="campo" readonly="readonly" />
                </div>

                <div class="containerCampo">
                    <label for="descricao"><strong>Descrição:</strong></label>
                    <input type="text" name="descricao"
                                   value="<%= elevador.getDescricao() %>" class="campo" />
                </div>

                <div class="containerCampo">
                    <label for="totalAndares"><strong>Quantidade de Andares:</strong></label>
                    <input type="text" name="totalAndares"
                                   value="<%= elevador.getTotalAndares() %>" class="campo" />
                </div>

                <div class="containerCampo">
                    <label for="capacidade"><strong>Capacidade:</strong></label>
                    <input type="text" name="capacidade"
                                   value="<%= elevador.getCapacidade() %>" class="campo" />
                </div>

                <div class="containerCampo">
                    <label for="andarAtual"><strong>Andar Atual:</strong></label>
                    <input type="number" name="andarAtual" min="0" max="<%= elevador.getTotalAndares()%>"
                           value="<%= elevador.getAndarAtual() %>" class="campo" />
                </div>

                <div class="containerCampo">
                    <label for="pessoas"><strong>Quantidade de Pessoas:</strong></label>
                    <input type="number" name="pessoas" min="0" max="<%= elevador.getCapacidade()%>"
                           value="<%= elevador.getPessoas() %>" class="campo" />
                </div>

                <div class="containerCampo">
                    <label for="fabricante"><strong>Fabricante:</strong></label>
                    <input type="text" name="fabricante"
                                   value="<%= elevador.getFabricante() %>" class="campo" />
                </div>

                <div class="containerCampo" id="campoBotao">
                    <input class="botao" id="botaoExcluir" type="submit" name="btAtualizar" value="Atualizar" />
                    <a href="index.jsp"><button type="button" class="botao" id="botaoVoltarExcluir">Voltar</button></a>
                </div>
            </form>
        </main>
    </body>
</html>
