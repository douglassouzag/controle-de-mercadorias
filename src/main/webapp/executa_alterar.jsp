<%-- 
    Document   : executar_inserir
    Created on : 1 de dez de 2019, 17:29:14
    Author     : douglas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto" %>
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
                Produto pro = new Produto();
                ProdutoDAO prd = new ProdutoDAO();
                if(request.getParameter("nome").equals("") || request.getParameter("preco").equals("")){
                    response.sendRedirect("index.jsp");
                }else {
                    pro.setNome(request.getParameter("nome"));
                    pro.setPreco(Double.parseDouble(request.getParameter("preco")));
                    pro.setQuantidade(request.getParameter("quantidade"));
                    pro.setId(Interger.parseInt(request.getParameter("id")));
                    prd.alterar(pro)
                    response.sendRedirect('index.jsp')
                }
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 8: "+ erro);

            }
        %>
        
    </body>
</html>
