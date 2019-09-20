var selectedRow = null

function onFormSubmit() {
    if (validate()) {
        var formData = readFormData();
        if (selectedRow == null)
            insertNewRecord(formData);
        else
            updateRecord(formData);
        resetForm();
    }
}

function chamarTelaEstoque(){
    window.location.href = "index.html";
}

function chamarTelaLoja(){
    window.location.href = "loja.html";
} 

function readFormData() {
    var formData = {};
    formData["produto"] = document.getElementById("produto").value;
    formData["desc"] = document.getElementById("desc").value;
    formData["preco"] = document.getElementById("preco").value;
    formData["quantidade"] = document.getElementById("quantidade").value;
    return formData;
}

function insertNewRecord(data) {
    var table = document.getElementById("produtos").getElementsByTagName('tbody')[0];
    var newRow = table.insertRow(table.length);
    cell1 = newRow.insertCell(0);
    cell1.innerHTML = data.produto;
    cell2 = newRow.insertCell(1);
    cell2.innerHTML = data.desc;
    cell3 = newRow.insertCell(2);
    cell3.innerHTML = data.preco;
    cell4 = newRow.insertCell(3);
    cell4.innerHTML = data.quantidade;
    cell4 = newRow.insertCell(4);
    cell4.innerHTML = `<a onClick="onEdit(this)">Editar</a>
                       <a onClick="onDelete(this)">Deletar</a>`;
}

function resetForm() {
    document.getElementById("produto").value = "";
    document.getElementById("desc").value = "";
    document.getElementById("preco").value = "";
    document.getElementById("quantidade").value = "";
    selectedRow = null;
}

function onEdit(td) {
    selectedRow = td.parentElement.parentElement;
    document.getElementById("produto").value = selectedRow.cells[0].innerHTML;
    document.getElementById("desc").value = selectedRow.cells[1].innerHTML;
    document.getElementById("preco").value = selectedRow.cells[2].innerHTML;
    document.getElementById("quantidade").value = selectedRow.cells[3].innerHTML;
}
function updateRecord(formData) {
    selectedRow.cells[0].innerHTML = formData.produto;
    selectedRow.cells[1].innerHTML = formData.desc;
    selectedRow.cells[2].innerHTML = formData.preco;
    selectedRow.cells[3].innerHTML = formData.quantidade;
}

function onDelete(td) {
    if (confirm('Tem certeza que deseja deletar esse cadastro?')) {
        row = td.parentElement.parentElement;
        document.getElementById("produtos").deleteRow(row.rowIndex);
        resetForm();
    }
}
function validate() {
    isValid = true;
    if (document.getElementById("produto").value == "") {
        isValid = false;
        document.getElementById("produtoValidationError").classList.remove("hide");
    } else {
        isValid = true;
        if (!document.getElementById("produtoValidationError").classList.contains("hide"))
            document.getElementById("produtoValidationError").classList.add("hide");
    }
    return isValid;
}