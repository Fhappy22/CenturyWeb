<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pantalla Principal</title>
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
            margin-top: 120px; /* Ajustar para dar más espacio entre el título y los iconos */
            font-size: 56px;
            font-family: 'Poppins', sans-serif;
        }
        .main-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100%;
            width: 90%;
            max-width: 400px;
        }
        .main-button {
            width: 100%;
            padding: 20px;
            margin-bottom: 20px;
            background-color: #FEF445;
            color: #1A1A1A;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .main-button img {
            margin-right: 10px;
        }
        .main-button:hover {
            background-color: #E6DA3B;
        }
        .secondary-button {
            width: 100%;
            padding: 15px;
            margin-bottom: 10px;
            background-color: #FEF445;
            color: #1A1A1A;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .secondary-button:hover {
            background-color: #E6DA3B;
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
    <h1 class="title">CenturyGO</h1>
    <div class="main-content">
        <button class="main-button" onclick="window.location.href='agendarCitas.jsp';">
            <img src="https://cdn-icons-png.flaticon.com/128/171/171322.png" alt="Icono de Libro">
            Agendar Cita
        </button>
        <button class="secondary-button" onclick="window.location.href='<%= request.getContextPath() %>/verCitas.jsp';">Ver Citas</button>
        <button class="secondary-button" onclick="window.location.href='<%= request.getContextPath() %>/historialCitas.jsp';">Historial de Citas</button>
    </div>
    <div class="nav-buttons">
        <button onclick="window.history.back();">Atrás</button>
        <button onclick="window.history.forward();">Continuar</button>
    </div>
</body>
</html>

