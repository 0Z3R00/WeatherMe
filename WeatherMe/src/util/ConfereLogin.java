package util;



import model.Cliente;
import service.ClienteService;

public class ConfereLogin {
	private String email, senha;
	private ClienteService cs;
	private Cliente cliente;

	public ConfereLogin(String email, String senha) {
		setEmail(email);
		setSenha(senha);
		cs = new ClienteService();
		
		
	}

	public Cliente Confere() {
		if(Busca(getEmail()) == true) {
			if(cliente.getSenha().equals(getSenha())) {
				return cliente;
			}else {
				return null;
			}
		}
		return null;
	}

	public boolean Busca(String email) {
		cliente = cs.carregarLogin(email);
		if(cliente != null) {
			return true;
		}
		return false;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

}
