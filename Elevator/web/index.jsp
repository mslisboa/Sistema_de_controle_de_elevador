<%-- 
    Document   : index
    Created on : 10 de jul. de 2022, 03:40:34
    Author     : lisboa
--%>

<%@page contentType="text/html" import="java.sql.*, model.AcessoDB, model.DBConexao, model.Elevador" %>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <!-- Metadados -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <!---conectando o html no css-->
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
        <!-- Título da página (aparece na aba) -->
        <title>Elevador Tecnológico</title>
    </head>
    
    <body>
        <%
            AcessoDB db = new AcessoDB();
            Elevador elevador = new Elevador();
            ArrayList<Elevador> listaElevador = db.obterDados();
        %>
        
        <main>
            <div id="titulo">
                <p>Elevador Tecnologico</p>
            </div>

            <!--div da lista-->
            <div id="formulario">
                <table id="tabela">
                    <tr>
                        <th>Id</th>
                        <th>Andar Atual</th>
                        <th>Total de Andares</th>
                        <th>Capacidade</th>
                        <th>Fabricante</th>
                        <th>Descricao</th>
                        <th>Quantidade Pessoas</th>
                        <th></th>
                        <th></th>
                    </tr>

                    <%
                        //for(Elevador elevador: listaElevador) {
                        for(int i = 0; i < listaElevador.size(); i++) {
                        elevador = listaElevador.get(i);
                    %>

                    <tr>
                        <td><%=elevador.getId() %></td>
                        <td>
                            <%=
                                elevador.getAndarAtual()
                            %>
                        </td>
                        <td><%=elevador.getTotalAndares() %></td>
                        <td><%=elevador.getCapacidade() %></td>
                        <td><%=elevador.getFabricante() %></td>
                        <td><%=elevador.getDescricao() %></td>
                        <td><%=elevador.getPessoas() %></td>
                        <td><a class="botao" href="excluirElevador.jsp?id=<%=elevador.getId() %>">Excluir</a></td>
                        <td><a class="botao" href="editarElevador.jsp?id=<%=elevador.getId() %>">Editar</a></td>
                    </tr>

                    <%} %>
                </table>
            </div>

            <!--botao adicionar-->
            <div id="divBotao">
                <a href="addElevador.jsp"><button class="botaoadd" type="button">ADICIONAR</button></a>
            </div>
        </main>
    </body>
</html>