<%@ page
        language="java"
        contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1" %>
    <%@ page
        import="java.util.List" %>
        <%@ page
        import="entidad.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <style>
    /* Estilos personalizados para la tabla */
    table {
      border-collapse: collapse;
      width: 100%;
      margin-bottom: 20px;
    }
	
	.contain{
		margin-top: 90px;
		height: 900px;
		
	}
	
    th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
    }

    /* Estilos para el formulario */
    form {
      max-width: 400px;
      margin: 0 auto;
    }

    label {
      display: block;
      margin-top: 10px;
    }

    input[type="text"], input[type="number"] {
      width: 100%;
      padding: 8px;
      margin-top: 5px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      padding: 10px 15px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }
  </style>
</head>
<body class="contain">
  <form action="/darwinTantalean/ProductoController" method="post">
    <label for="idproductocl2">ID</label>
    <input type="number" id="idproductocl2" name="idproductocl2" />

    <label for="descripcl2">Descripción</label>
    <input type="text" id="descripcl2" name="descripcl2" />

    <label for="estadocl2">Estado</label>
    <input type="text" id="estadocl2" name="estadocl2" />

    <label for="nombrecl2">Nombre</label>
    <input type="text" id="nombrecl2" name="nombrecl2" />

    <label for="preciocompcl2">Precio Compra</label>
    <input type="number" id="preciocompcl2" name="preciocompcl2" step="0.01" />

    <label for="precioventacl2">Precio Venta</label>
    <input type="number" id="precioventacl2" name="precioventacl2" step="0.01" />

    <input type="submit" value="Guardar" />
  </form>
	<br/>
	<br/>
	<br/>
  <table>
    <thead>
    <tr>
      <th>ID</th>
      <th>Descripción</th>
      <th>Estado</th>
      <th>Nombre</th>
      <th>Precio Compra</th>
      <th>Precio Venta</th>
    </tr>
    </thead>
    <tbody>
    <% List<Productocl2> list = (List<Productocl2>) request.getAttribute("listar"); %>
    <% for (Productocl2 prod : list) { %>
	    <tr>
	    	<td><%=prod.getIdproductocl2() %></td>
	    	<td><%=prod.getDescripcl2() %></td>
	    	<td><%=prod.getEstadocl2() %></td>
	    	<td><%=prod.getNombrecl2() %></td>
	    	<td><%=prod.getPreciocompcl2() %></td>
	    	<td><%=prod.getPrecioventacl2() %></td>
	    </tr>
    <% } %>
    </tbody>
		
  </table>
</body>
</html>