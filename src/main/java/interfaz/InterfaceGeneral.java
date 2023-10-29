package interfaz;

import java.util.List;

import entidad.Productocl2;

public interface InterfaceGeneral {
	public List<Productocl2> ListarProducto();
    public void AgregarProducto(Productocl2 productocl2);
    public boolean Login(String usuario, String password);
}
