<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>
        Controle de Estoque
    </title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <table align="center">
        <tr>
            <form onsubmit="event.preventDefault();onFormSubmit();" autocomplete="off">
                <div>
                    <label>Produto*</label><label class="validation-error hide" id="produtoValidationError">Esse campo é obrigatório</label>
                    <input type="text" name="produto" id="produto">
                </div>
                <div>
                    <label>Descrição</label>
                    <input type="text" name="desc" id="desc">
                </div>
                <div>
                    <label>Preço</label>
                    <input type="number" name="preco" id="preco">
                </div>
                <div>
                    <label>Quantidade</label>
                    <input type="number" name="quantidade" id="quantidade">
                </div>
                <div>
                    <input type="button" value="Ir para loja" onclick="chamarTelaLoja()"/>
                </div>
                <div  class="form-action-buttons">
                    <input type="submit" value="Cadastrar produto">
                </div>
            </form>
        </tr>
        <tr>
            <table class="list" id="produtos">
                <thead>
                    <tr>
                        <th>Produto</th>
                        <th>Descrição</th>
                        <th>Preço</th>
                        <th>Quantidade</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </tr>
    </table>
    <script src="script.js"></script>
</body>

</html>