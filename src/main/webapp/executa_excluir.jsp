<%-- 
    Document   : executa_excluir
    Created on : 1 de dez de 2019, 17:30:16
    Author     : douglas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ProdutoDAO" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            try{
                ProdutoDAO prd = new ProdutoDAO();
                prd.excluir(Interger.parseInt(request.getParameter("codigo")));
                response.sendRedirect("index.jsp");
            }catch(Exception erro){
                throw new RuntimeException("Erro 9: "+ erro);

            }
        %>
    </body>
</html>
