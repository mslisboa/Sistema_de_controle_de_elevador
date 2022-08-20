<%-- 
    Document   : inserirElevador
    Created on : 10 de jul. de 2022, 04:17:45
    Author     : lisboa
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="model.Elevador, model.AcessoDB" %>

<%
    AcessoDB db = new AcessoDB();
    Elevador elevador = new Elevador();
    elevador.setTotalAndares(Integer.parseInt(request.getParameter("totalAndares")));
    elevador.setCapacidade(Integer.parseInt(request.getParameter("capacidade")));
    elevador.setDescricao(request.getParameter("descricao"));
    elevador.setFabricante(request.getParameter("fabricante"));
    elevador.setPessoas(Integer.parseInt(request.getParameter("pessoas")));
    elevador.setAndarAtual(0);
    db.inserirElevador(elevador);
%>

<script>
    window.location.href='index.jsp';
</script>
