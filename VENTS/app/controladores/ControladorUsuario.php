<?php

namespace app\controladores;

use app\modelos\Usuario;

require_once "config/autoload.php";

class ControladorUsuario
{
    public function guardar($username, $password)
    {
        $password = password_hash($password, PASSWORD_DEFAULT);
        $usuario = new Usuario($username, $password);
        if ($usuario->crear() != 0) {
            $resultado = "Guardado";
        } else {
            $resultado = "Error";
        }
        return $resultado;
    }

    public function login($username, $password){
        // comprobar usuario
            // si existe
                // compruebo contraseña
                    // si existe
                        // redirigir
                    // sino
                // error
            // sino
                // error
         if (!empty($_POST['usuario']) && !empty($_POST['password'])) {
    $sql = $conn->prepare('SELECT id, usuario, password, cargo FROM usuarioss WHERE usuario = :usuario');
    $sql->bindParam(':usuario', $_POST['usuario']);

    $sql->execute();
    $results = $sql->fetch(PDO::FETCH_ASSOC);

    $message = '';

    if ($results > 0 && password_verify($_POST['password'], $results['password'])) {
      $_SESSION['user_id'] = $results['id'];
      header("Location: /PD");
    } else {
      $message = 'esta cuenta no existe';
    }


  }
    }
}