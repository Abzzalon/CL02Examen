<!DOCTYPE html>
<html>
<head>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .login-container {
      background: #fff;
      border: 1px solid #ccc;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      padding: 20px;
      max-width: 400px;
      width: 100%;
      text-align: center;
    }

    .login-container h2 {
      margin: 0 0 20px;
    }

    .form-group {
      margin: 10px 0;
    }

    .form-group label {
      display: block;
      font-weight: bold;
    }

    .form-group input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    .form-group input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 3px;
      padding: 10px 15px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <h2>Iniciar Sesión</h2>
    <form action="/darwinTantalean/UserController" method="post">
      <div class="form-group">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" placeholder="Nombre de usuario" required>
      </div>
      <div class="form-group">
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" placeholder="Contraseña" required>
      </div>
      <div class="form-group">
        <input type="submit" value="Iniciar Sesión">
      </div>
    </form>
  </div>
</body>
</html>

