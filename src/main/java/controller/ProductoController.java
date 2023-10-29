package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoGeneral;
import entidad.Productocl2;

/**
 * Servlet implementation class ProductoController
 */
public class ProductoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DaoGeneral dao = new DaoGeneral();
		List<Productocl2> listar = dao.ListarProducto();
		request.setAttribute("listar", listar);
		request.getRequestDispatcher("Producto.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoGeneral dao = new DaoGeneral();
		int id = 0;
		String nombre = request.getParameter("nombrecl2");
		String descr = request.getParameter("descripcl2");
		String estado = request.getParameter("estadocl2");
		double compra = Double.parseDouble(request.getParameter("preciocompcl2"));
		double venta = Double.parseDouble(request.getParameter("precioventacl2"));
		Productocl2 p = new Productocl2();
		p.setDescripcl2(descr);
		p.setNombrecl2(nombre);
		p.setEstadocl2(estado);
		p.setPreciocompcl2(compra);
		p.setPrecioventacl2(venta);
		dao.AgregarProducto(p);
		
		response.sendRedirect("/darwinTantalean/ProductoController");
	}

}
