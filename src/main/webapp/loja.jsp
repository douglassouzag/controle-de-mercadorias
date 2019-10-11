<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>
        Controle de Estoque
    </title>
    <link rel="stylesheet" href="styles.css">
    <script src="script.js"></script>
</head>

<body>
    <table align="center">
        <tr>
            
            <div align="left">
                <input type="button" value="Voltar" onclick="chamarTelaEstoque()"/>
                <input type="text" placeholder="Buscar por ID">
                <input type="text" placeholder="Buscar por nome">
            </div>
            <table class="list" id="produtos">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Produto</th>
                        <th>Descrição</th>
                        <th>Preço</th>
                        <th>Quantidade</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>Arroz<input type = "checkbox"></td>
                        <td>Grão</td>
                        <td>R$ 5,00</td>
                        <td><input type="text" placeholder="Quantidade"></td>            
                    </tr>
                </tbody>
            </table>
            <div>
                <button class="button">ADICIONAR AO CARRINHO</button>
                <button class="button" onclick="onComprar()">COMPRAR</button>
                <button class="button">LIMPAR CARRINHO</button>
                <button class="button" onclick="relatorio()">RELATÓRIO DE COMPRA</button>
                <input type="text" value="TOTAL: R$ 18,00" disabled>
            </div>
            <table class="list" id="carrinho">
                    <thead>
                        <tr>
                            <th>Produto</th>
                            <th>Preço</th>
                            <th>Quantidade</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Arroz</td>
                            <td>R$ 5,00</td>
                            <td>2</td>            
                        </tr>
                        <tr>
                            <td>Farinha</td>
                            <td>R$ 2,00</td>
                            <td>4</td>            
                        </tr>
                    </tbody>
                </table>
        </tr>
    </table>
</body>

</html>