<%-- 
    Document   : deletaElevador
    Created on : 10 de jul. de 2022, 22:46:31
    Author     : lisboa
--%>

<%@ page language="java"  contentType="text/html" import="java.sql.*" %>
<%@ page import="model.Elevador, model.AcessoDB"  %> 

<% 
            AcessoDB bd = new AcessoDB();
            Elevador elevador = new Elevador();
            elevador.setId(Integer.parseInt(request.getParameter("id")));
            bd.deletaElevador(elevador);
%>
<script>
     window.location.href='index.jsp';
</script>
