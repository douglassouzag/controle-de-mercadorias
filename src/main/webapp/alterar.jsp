<%-- 
    Document   : excluir
    Created on : 1 de dez de 2019, 17:47:08
    Author     : douglas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <form action="executa_alterar.jsp" method="post">
            <label>Codigo:</label></br>
            <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>">
            
            <label>Nome:</label></br>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>">
            
            <label>Preço:</label></br>
            <input type="text" name="preco" value="<%=request.getParameter("preco")%>">
            
            <label>Quantidade:</label></br>
            <input type="text" name="quantidade" value="<%=request.getParameter("quantidade")%>">
            
            <button type="submit">OK</button>
                
        </form>
    </body>
</html>
