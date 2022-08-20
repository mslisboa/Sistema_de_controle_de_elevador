<%-- 
    Document   : addElevador
    Created on : 10 de jul. de 2022, 03:53:26
    Author     : lisboa
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

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
        <main id="addElevador">
            <div id="titulo">
                <p>Adicione os dados abaixo:</p>
            </div>

            <!--incioo do formulario-->

            <form method="POST" action="inserirElevador.jsp">

                <!-- Total de andares -->
                <div class="containerCampo">
                    <label for="TotaldeAndares"><strong>Total de Andares: </strong></label>
                    <input type="text" name="totalAndares" id="totalAndares" class="campo" required>
                </div>

                <!-- Capacidade maxima do elevador -->
                <div class="containerCampo">
                    <label for="CapacidadeDoElevador"><strong>Capacidade Do Elevador: </strong></label>
                    <input type="text" name="capacidade" id="capacidade" class="campo" required>
                </div>

                <!-- Descrição do elevador -->
                <div class="containerCampo">
                    <label for="DescriçãodoElevador"><strong>Descrição do Elevador: </strong></label>
                    <input type="text" name="descricao" id="descricao" class="campo" required>
                </div>

                <!-- Dados do fabricante -->
                <div class="containerCampo">
                    <label for="DadosdoFabricante"><strong>Dados do Fabricante: </strong></label>
                    <input type="text" name="fabricante" id="fabricante" class="campo" required>
                </div>

                <!-- Andar atual -->
                <div class="containerCampo">
                    <label for="Pessoas"><strong>Quantidade de pessoas: </strong></label>
                    <input type="text" name="pessoas" id="pessoas" class="campo" required>
                </div>

                <!-- Botão enviar dados -->
                <div class="containerCampo" id="campoBotao">
                    <a href="index.jsp"><button class="botao" type="submit" name="btAtualizar", value="Incluir">Enviar</button></a>
                </div>
            </form>
        </main>
    </body>
<html/>