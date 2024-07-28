<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agendar Citas</title>
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
        .header img {
            width: 40px;
            height: 40px;
        }
        .title {
            margin-top: 80px; /* Ajustar para dar más espacio entre el título y los iconos */
            font-size: 48px;
            font-family: 'Poppins', sans-serif;
        }
        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 90%;
            max-width: 400px;
            margin-top: 20px;
        }
        .form-group {
            width: 100%;
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #FFFFFF;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            box-sizing: border-box;
            margin-bottom: 10px;
        }
        .form-group input {
            height: 40px;
        }
        .form-group textarea {
            height: 80px;
            resize: none;
        }
        .button-group {
            display: flex;
            justify-content: space-between;
            width: 100%;
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
        <a href="perfil.jsp"><img src="https://cdn-icons-png.flaticon.com/128/3870/3870822.png" alt="Icono de Perfil"></a>
        <a href="ajustes.jsp"><img src="https://cdn-icons-png.flaticon.com/128/4885/4885524.png" alt="Icono de Ajustes"></a>
    </div>
    <h1 class="title">Agendar Cita</h1>
    <div class="form-container">
        <form action="AgendarCitaServlet" method="post">
            <div class="form-group">
                <label for="fecha">Fecha</label>
                <input type="date" id="fecha" name="fecha" required>
            </div>
            <div class="form-group">
                <label for="hora">Hora</label>
                <input type="time" id="hora" name="hora" required>
            </div>
            <div class="form-group">
                <label for="descripcion">Descripción</label>
                <textarea id="descripcion" name="descripcion" required></textarea>
            </div>
            <div class="form-group">
                <label for="archivo">Subir Archivo</label>
                <input type="file" id="archivo" name="archivo">
            </div>
            <div class="button-group">
                <button type="button" onclick="window.history.back();">Atrás</button>
                <button type="submit">Agendar Cita</button>
            </div>
        </form>
    </div>
</body>
</html>
