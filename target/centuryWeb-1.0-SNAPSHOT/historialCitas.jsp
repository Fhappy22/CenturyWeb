<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Historial de Citas</title>
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
        .list-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 90%;
            max-width: 400px;
            margin-top: 20px;
        }
        .list-item {
            background-color: #FEF445;
            color: #1A1A1A;
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 5px;
            width: 100%;
            text-align: left;
            font-size: 18px;
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
    <h1 class="title">Historial de Citas</h1>
    <div class="list-container">
        <div class="list-item">Cita 1 - 20/07/2024</div>
        <div class="list-item">Cita 2 - 18/07/2024</div>
        <div class="list-item">Cita 3 - 15/07/2024</div>
        <!-- Puedes agregar más citas aquí -->
    </div>
    <div class="nav-buttons">
        <button onclick="window.history.back();">Atrás</button>
        <button onclick="window.location.href='next-page.html';">Continuar</button>
    </div>
</body>
</html>
