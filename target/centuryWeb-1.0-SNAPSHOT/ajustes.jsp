<%-- 
    Document   : ajustes
    Created on : 27/07/2024, 11:37:33 a. m.
    Author     : felix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajustes</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap');

        body {
            background-color: #1A1A1A;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            color: #FFFFFF;
            text-align: center;
            position: relative;
        }
        .header {
            width: 100%;
            display: flex;
            justify-content: space-between;
            padding: 20px;
            box-sizing: border-box;
            position: absolute;
            top: 0;
        }
        .header button {
            background: none;
            border: none;
            cursor: pointer;
        }
        .header img {
            width: 40px;
            height: 40px;
        }
        .title {
            margin-top: 80px; /* Ajustar para dar más espacio entre el título y los iconos */
            font-size: 48px;
            font-family: 'Poppins', sans-serif;
        }
        .settings-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 90%;
            max-width: 400px;
            margin-top: 20px;
        }
        .settings-item {
            background-color: #FEF445;
            color: #1A1A1A;
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 5px;
            width: 100%;
            text-align: left;
            font-size: 18px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .settings-item img {
            width: 24px;
            height: 24px;
        }
        .nav-buttons {
            display: flex;
            justify-content: space-between;
            width: 90%;
            max-width: 400px;
            margin-top: auto;
            padding-bottom: 20px;
        }
        .nav-buttons button {
            width: 48%;
            padding: 10px;
            background-color: #FEF445;
            color: #1A1A1A;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .nav-buttons button:hover {
            background-color: #E6DA3B;
        }
    </style>
</head>
<body>
    <div class="header">
        <button onclick="window.location.href='perfil.jsp';">
            <img src="https://cdn-icons-png.flaticon.com/128/3870/3870822.png" alt="Icono de Perfil">
        </button>
        <button onclick="window.location.href='ajustes.jsp';">
            <img src="https://cdn-icons-png.flaticon.com/128/4885/4885524.png" alt="Icono de Ajustes">
        </button>
    </div>
    <h1 class="title">Ajustes</h1>
    <div class="settings-container">
        <div class="settings-item" onclick="cambiarTema();">
            <span>Cambiar Tema</span>
            <img src="https://cdn-icons-png.flaticon.com/128/159/159604.png" alt="Icono de Tema">
        </div>
        <div class="settings-item" onclick="window.location.href='informacion-legal.html';">
            <span>Información Legal</span>
            <img src="https://cdn-icons-png.flaticon.com/128/158/158740.png" alt="Icono de Información">
        </div>
        <div class="settings-item" onclick="window.location.href='informacion-version.html';">
            <span>Información de la Versión</span>
            <img src="https://cdn-icons-png.flaticon.com/128/170/170689.png" alt="Icono de Versión">
        </div>
    </div>
    <div class="nav-buttons">
        <button onclick="window.history.back();">Atrás</button>
       <button onclick="window.history.forward();">Continuar</button>
    </div>

    <script>
        function cambiarTema() {
            // Función para cambiar el tema de la aplicación
            alert("Funcionalidad de cambiar tema aún no implementada.");
        }
    </script>
</body>
</html>

