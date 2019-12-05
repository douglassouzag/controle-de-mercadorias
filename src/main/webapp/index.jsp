<%-- 
    Document   : excluir
    Created on : 1 de dez de 2019, 17:47:08
    Author     : douglas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ProdutoDAO"%>
<%@page import="model.Produto"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="index.jsp" method="post">
            <label>Nome:</label><br/>
            <input type="text" name="nome"/>
            
            <button type="submit">OK</button>
        </form>
        
        <%
            try{
            
                out.print("<table>");
                
                out.print("<tr>");
                
                out.print("<th>Codigo</th><th>Nome</th><th>Preço</th><th>Quantidade</th><th>Editar</th><th>Excluir</th>");
                ProdutoDAO prd = new ProdutoDAO();
                if(request.getParameter("nome")=="" || request.getParameter("")==null){
                    ArrayList<Produto> lista = prd.listarTodos();
                    
                    for(int num =0; num < lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getId()+"</td>");
                        out.print("<td>"+lista.get(num).getNome()+"</td>");
                        out.print("<td>"+lista.get(num).getPreco()+"</td>");
                        out.print("<td>"+lista.get(num).getQuantidade()+"</td>");
                        out.print("<td href='alterar.jsp?codigo="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+"&preco="+lista.get(num).getPreco()+"&quantidade="+lista.get(num).getQuantidade()+"'>CLIQUE</td>");
                        out.print("<td href='alterar.jsp?codigo="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+"'>CLIQUE</td>");
                        out.print("</tr>");
                    }
                } else {
                    ArrayList<Produto> lista = prd.listarTodosDescricao(request.getParameter("nome"));
                    
                    for(int num =0; num < lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getId()+"</td>");
                        out.print("<td>"+lista.get(num).getNome()+"</td>");
                        out.print("<td>"+lista.get(num).getPreco()+"</td>");
                        out.print("<td>"+lista.get(num).getQuantidade()+"</td>");
                        out.print("<td href='alterar.jsp?codigo="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+"&preco="+lista.get(num).getPreco()+"&quantidade="+lista.get(num).getQuantidade()+"'>CLIQUE</td>");
                        out.print("<td href='alterar.jsp?codigo="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+"'>CLIQUE</td>");
                        out.print("</tr>");
                    }
                }
                out.print("</tr>");
                
                out.print("</table>");
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 10: "+ erro);
            }
        %>
        
    </body>
</html>
