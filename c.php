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
                    <td>Local do Evento:</td>
                    <td><input type="text" name="lcl"></td>
                </tr>
                <tr>
                    <td>Responsável pelo Evento:</td>
                    <td><input type="text" name="rese"></td>
                </tr>
            </table>
            <input type="submit" value="Cadastrar Evento">
        </fieldset>
    </form>
    <?php
    
    $host = "localhost"; 
    $user = "root";
    $pass = "";
    $base = "agenda";
    $conexao = mysqli_connect($host, $user, $pass, $base);
    
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $id = mysqli_real_escape_string($conexao, $_POST["id"]);
        $nome = mysqli_real_escape_string($conexao, $_POST["nme"]);
        $data = mysqli_real_escape_string($conexao, $_POST["dte"]);
        $init = mysqli_real_escape_string($conexao, $_POST["hdi"]);
        $term = mysqli_real_escape_string($conexao, $_POST["hdt"]);
        $desc = mysqli_real_escape_string($conexao, $_POST["desc"]);
        $local = mysqli_real_escape_string($conexao, $_POST["lcl"]);
        $resp = mysqli_real_escape_string($conexao, $_POST["rese"]);

        $input = mysqli_query($conexao, "INSERT INTO eventos (id, nome_do_evento, data_do_evento, hora_de_inicio, hora_de_termino, desc_event, local_event, resp_event) VALUES ('$id', '$nome', '$data', '$init', '$term', '$desc', '$local', '$resp')");
    
        if ($input) {
            echo "<p>Cadastro Realizado com sucesso!!!</p>";
        } else {
            echo "<p>Error: " . mysqli_error($conexao) . "</p>";
        }
    }

    $resu = mysqli_query($conexao, "SELECT * FROM eventos");
    echo "<center><table border='3'>
            <tr>
                <td>Cód Evento</td>
                <td>Nome do Evento</td>
                <td>Data do evento</td>
                <td>Horário de início</td>
                <td>Horário do término</td>
                <td>Descrição do evento</td>
                <td>Local</td>
                <td>Responsável</td>
            </tr>";

    while ($escrever = mysqli_fetch_array($resu)) {
        echo "<tr>
            <td>{$escrever['id']}</td>
            <td>{$escrever['nome_do_evento']}</td>
            <td>{$escrever['data_do_evento']}</td>
            <td>{$escrever['hora_de_inicio']}</td>
            <td>{$escrever['hora_de_termino']}</td>
            <td>{$escrever['desc_event']}</td>
            <td>{$escrever['local_event']}</td>
            <td>{$escrever['resp_event']}</td>
        </tr>";
    }
        
    echo "</table></center>";
    echo "<br><br>";

    mysqli_close($conexao);
    ?>
</body>
</html>