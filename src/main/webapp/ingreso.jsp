<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pantalla de Ingreso</title>
    <style>
        body {
            background-color: #1A1A1A;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .profile-icon {
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
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #FFFFFF;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            background-color: #FFFFFF;
        }
        .submit-btn {
            width: 90%;
            max-width: 400px;
            padding: 10px;
            background-color: #FEF445;
            color: #1A1A1A;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }
        .submit-btn:hover {
            background-color: #E6DA3B;
        }
        .link {
            margin-top: 20px;
            color: #FEF445;
            text-decoration: none;
        }
        .link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="profile-icon">
        <img src="https://cdn-icons-png.flaticon.com/128/3870/3870822.png" alt="Icono de Perfil">
    </div>
    <form action="<%= request.getContextPath() %>/IngresoServlet" method="post">
        <div class="form-group">
            <label for="email">Correo</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Contraseña</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit" class="submit-btn">Ingresar</button>
    </form>
    <a class="link" href="index.jsp">Crear una cuenta nueva</a>
</body>
</html>
