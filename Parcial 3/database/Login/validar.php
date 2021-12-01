<?php      

    $usuario = $_POST['User'];

    $pass = $_POST['pass'];

    if ($usuario == "Kevin" and $pass == "Kevin123"){

        header('Location:FormularioResponsivo.html');

    }else{

        echo "Las credenciales ingresadas no son correctas";

    }      

?>