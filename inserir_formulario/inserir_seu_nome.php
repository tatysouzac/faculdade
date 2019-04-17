<?php

include '../conexao/conexao.php';

$cliente = $_POST['cliente'];
$valor = $_POST['valor'];
$pagamento = $_POST['pagamento'];
$banco = $_POST['banco'];
$conta = $_POST['conta'];
$agencia = $_POST['agencia'];

$inserir = mysqli_query($conn, "insert into financeiro(id, cliente, valor, pagamento, banco, conta, agencia)"
        . "values('NULL', '$cliente', '$valor', '$pagamento', '$banco', '$conta', '$agencia')");

if ($inserir) {
    echo "<script>alert('Boleto cadastrado com sucesso.')</script>";
} else {
    echo "<script>alert('Erro ao cadastrar boleto.')</script>";
}

echo "<script> window.location.href = '../paginas/lancar_boleto.html' </script>";

mysqli_close($conn);
?>