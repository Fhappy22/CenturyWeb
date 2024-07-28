<%-- 
    Document   : perfil
    Created on : 27/07/2024, 11:35:37 a. m.
    Author     : felix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pantalla de Perfil</title>
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
        .profile-icon {
            margin-top: 80px;
            margin-bottom: 20px;
        }
        .profile-icon img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
        }
        .form-group {
            width: 90%;
            max-width: 400px;
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #FFFFFF;
            font-family: 'Poppins', sans-serif;
        }
        .form-group p {
            background-color: #FFFFFF;
            color: #000000;
            padding: 10px;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .button-group {
            width: 90%;
            max-width: 400px;
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .button-group button {
            width: 48%;
            padding: 10px;
            background-color: #FEF445;
            color: #1A1A1A;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .button-group button:hover {
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
    <div class="profile-icon">
        <img src="https://cdn-icons-png.flaticon.com/128/3870/3870822.png" alt="Icono de Perfil">
    </div>
    <div class="form-group">
        <label for="name">Nombre Completo</label>
        <p id="name"><%= session.getAttribute("name") %></p>
    </div>
    <div class="form-group">
        <label for="id">Documento de Identificación</label>
        <p id="id"><%= session.getAttribute("id") %></p>
    </div>
    <div class="form-group">
        <label for="age">Edad</label>
        <p id="age"><%= session.getAttribute("age") %></p>
    </div>
    <div class="form-group">
        <label for="email">Correo</label>
        <p id="email"><%= session.getAttribute("email") %></p>
    </div>
    <div class="button-group">
        <button onclick="window.location.href='index.jsp';">Salir</button>
        <button onclick="window.location.href='principal.jsp';">Continuar</button>
    </div>
</body>
</html>

