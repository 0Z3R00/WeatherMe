package service;

import model.Cliente;
import dao.ClienteDAO;



public class ClienteService {
	ClienteDAO dao = new ClienteDAO();
	Cliente cliente = new Cliente();
	
	public int criar(Cliente cliente) {
		return dao.criar(cliente);
	}
	
	public void atualizar(Cliente cliente){
		dao.atualizar(cliente);
	}
	
	public void excluir(int id){
		dao.excluir(id);
	}
	
	public Cliente carregar(int id){
		return dao.carregar(id);
	}
	
	public Cliente carregarLogin(String email){
		return dao.carregarLogin(email);
	}
	
	public Cliente aceitaEnvioEmail(String flag) {
		return dao.aceitaEnvioEmail(flag);
	}
	
}