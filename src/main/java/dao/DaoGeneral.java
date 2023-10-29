package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;
import javax.persistence.Query;
import entidad.*;
import interfaz.InterfaceGeneral;

public class DaoGeneral implements InterfaceGeneral{

	@Override
	public List<Productocl2> ListarProducto() {
		EntityManagerFactory conex = Persistence.createEntityManagerFactory("CLIIExamen");
		EntityManager emanager = conex.createEntityManager();
		emanager.getTransaction().begin();
		List<Productocl2> list = emanager.createQuery("SELECT c FROM Productocl2 c",Productocl2.class).getResultList();
		emanager.getTransaction().commit();
		emanager.close();
		return list;
	}

	@Override
	public void AgregarProducto(Productocl2 productocl2) {
		EntityManagerFactory conex = Persistence.createEntityManagerFactory("CLIIExamen");
		EntityManager emanager = conex.createEntityManager();
		emanager.getTransaction().begin();
		emanager.persist(productocl2);
		emanager.getTransaction().commit();
		emanager.close();
	}
	
	@Override
	public boolean Login(String usuario, String password) {
		boolean lo;
		EntityManagerFactory conex = Persistence.createEntityManagerFactory("CLIIExamen");
		EntityManager emanager = conex.createEntityManager();
		emanager.getTransaction().begin();

		Query consulta = emanager.createQuery("SELECT c FROM TblUsuariocl2 c WHERE c.usuariocl2=:x and c.passwordcl2=:y", TblUsuariocl2.class);
		consulta.setParameter("x", usuario);
		consulta.setParameter("y", password);
		TblUsuariocl2 cl;
		try {
			cl = (TblUsuariocl2) consulta.getSingleResult();
			lo = true;
		} catch (Exception e) {
			cl = null;
			lo = false;
		}
		return lo;
	}

}
