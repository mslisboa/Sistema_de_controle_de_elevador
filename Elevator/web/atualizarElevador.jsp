<%-- 
    Document   : atualizarElevador
    Created on : 10 de jul. de 2022, 14:42:13
    Author     : lisboa
--%>

<%@ page language="java" contentType="text/html" import="java.sql.*" %>
<%@ page import="model.Elevador, model.AcessoDB"  %> 
<% 
            AcessoDB db = new AcessoDB();
            Elevador elevador = new Elevador();
            elevador.setId(Integer.parseInt( request.getParameter("id")) );
            elevador.setDescricao(request.getParameter("descricao"));
            elevador.setTotalAndares(Integer.parseInt(request.getParameter("totalAndares")));
            elevador.setCapacidade(Integer.parseInt(request.getParameter("capacidade")));
            elevador.setAndarAtual(Integer.parseInt(request.getParameter("andarAtual")));
            elevador.setFabricante(request.getParameter("fabricante"));
            elevador.setPessoas(Integer.parseInt(request.getParameter("pessoas")));
            db.atualizaElevador(elevador);

%>
<script>
     window.location.href='index.jsp';
</script>