<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./ag.png" type="image/png">
    <title>Cadastrar Evento</title>
</head>
<body>
    <h1>Cadastro de Eventos</h1>
    <form action="" method="POST">
        <fieldset>
            <legend>Insira os dados do evento que deseja criar</legend>
            <table>
                <tr>
                    <td>ID do Evento:</td>
                    <td><input type="number" name="id"></td>
                </tr>
                <tr>
                    <td>Nome do Evento:</td>
                    <td><input type="text" name="nme"></td>
                </tr>
                <tr>
                    <td>Data do Evento:</td>
                    <td><input type="date" name="dte"></td>
                </tr>
                <tr>
                    <td>Horário de Início:</td>
                    <td><input type="time" name="hdi"></td>
                </tr>
                <tr>
                    <td>Horário do Término:</td>
                    <td><input type="time" name="hdt"></td>
                </tr>
                <tr>
                    <td>Descrição do Evento:</td>
                    <td><input type="text" name="desc"></td>
                </tr>
                <tr>
                    <td>Local do Evento</td>
                    <td><input type="text" name="lcl"></td>
                </tr>
                <tr>
                    <td>Responsável pelo Evento:</td>
                    <td><input type="text" name="rese"></td>
                </tr>
            </table>
        </fieldset>
    </form>
    <?php
    
    $host = "localhost"; 
    $user = "root";
    $pass = "";
    $base = "agenda";
    $conexao = mysqli_connect($host, $user, $pass, $base);
    
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $id = $_POST["id"];
        $nome = $_POST["nme"];
        $data = $_POST["dte"];
        $init = $_POST["hdi"];
        $term = $_POST["hdt"];
        $desc = $_POST["desc"];
        $local = $_POST["lcl"];
        $resp = $_POST["rese"];

        $input = mysqli_query($conexao, "INSERT INTO eventos (id, nome_do_evento, data_do_evento, hora_de_inicio, hora_de_termino, desc_event, local_event, resp_event)")
    }
    
    
    ?>
</body>
</html>