package controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cliente;
import service.ClienteService;
import util.ConfereLogin;
import util.EnviarEmail;
import util.RequestAPI;


@WebServlet("/ManterCliente.do")
public class ManterClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String pNome, pEmail, pSenha, pCidade, pDestino, pUf, pUF,pFlag;

	private int id = -1;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String acao = request.getParameter("acao");
		if(request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
		}else {
			id = -1;
		}

		if(request.getParameter("nome") != null) {
			pNome = request.getParameter("nome");
		}else {
			pNome = null;
		}
		if(request.getParameter("email") != null) {
			pEmail = request.getParameter("email");
		}else {
			pEmail = null;
		}
		if(request.getParameter("senha") != null) {
			pSenha = request.getParameter("senha");
		}else {
			pSenha = null;
		}
		if(request.getParameter("cidade") != null) {
			pCidade = request.getParameter("cidade");
		}else {
			pNome = null;
		}
		if(request.getParameter("destino") != null) {
			pDestino = request.getParameter("destino");
		}else {
			pDestino = null;
		}
		if(request.getParameter("flag") != null) {
			pFlag = request.getParameter("flag");
		}else {
			pFlag= null;
		}
		if(request.getParameter("UF") != null) {
			pUF = request.getParameter("UF");
		}else {
			pUF = null;
		}
		if(request.getParameter("uf") != null) {
			pUf = request.getParameter("uf");
		}else {
			pUf= null;
		}


		//instanciar o javabean
		Cliente cliente = new Cliente();
		cliente.setNome(pNome);
		cliente.setEmail(pEmail);
		cliente.setSenha(pSenha);
		cliente.setCidade(location(pCidade,pUF));
		cliente.setDestino(location(pDestino,pUf));
		cliente.setFlag(pFlag);

		//instanciar o service
		ClienteService ps = new ClienteService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();


		if(acao.equals("Incluir")) {

			cliente = ps.carregar(ps.criar(cliente));
			//EnviarEmail.novoUsuario(cliente);
			RequestAPI destino;
			RequestAPI cidade = new RequestAPI(cliente.getCidade());	

			if(cliente.getDestino() != null) {
				destino = new RequestAPI(cliente.getDestino());
				session.setAttribute("destino", destino);
			}
			session.setAttribute("cidade", cidade);
			request.setAttribute("cliente", cliente);
			view = request.getRequestDispatcher("Cliente.jsp");	

		}
		else if(acao.equals("Alterar")) {
			ps.atualizar(cliente);
			request.setAttribute("cliente", cliente);

			view = request.getRequestDispatcher("Cliente.jsp");	

		}else if(acao.equals("Login")) {
			ConfereLogin cl = new ConfereLogin(cliente.getEmail(), cliente.getSenha());
			cliente = cl.Confere();
			if(cliente != null){
				//cliente = ps.carregarLogin(cliente.getEmail()); ;

				RequestAPI destino;
				RequestAPI cidade = new RequestAPI(cliente.getCidade());	
				if(cliente.getDestino() != null) {
					destino = new RequestAPI(cliente.getDestino());
					session.setAttribute("destino", destino);
				}
				session.setAttribute("cidade", cidade);
				session.setAttribute("cliente", cliente);
				view = request.getRequestDispatcher("Cliente.jsp");

			}else {
				view = request.getRequestDispatcher("index.jsp");
			}
		}else if(acao.equals("pesquisar")) {


			RequestAPI destino = null;
			RequestAPI cidade = new RequestAPI(cliente.getCidade());	

			if(cliente.getDestino() != null) {
				destino = new RequestAPI(cliente.getDestino());
				session.setAttribute("destino", destino);
			}
			session.setAttribute("cidade", cidade);
			//EnviarEmail.consultaUsuario(cliente, cidade, destino);

			session.setAttribute("cliente", cliente);
			view = request.getRequestDispatcher("Cliente.jsp");

		}

		//despachar para o JSP correto
		view.forward(request, response);

	}

	public String location(String nome, String uf){
		String localizacao = "";

		if(nome == null || uf == null) {
			return null;	
		}else {
			String cit[] = nome.split(" ");
			for(int i = 0; i < cit.length; i++) {
				if(i == cit.length - 1) {
					localizacao += cit[i]; 
				}else {
					localizacao += cit[i]+"-"; 
				}
			}
			return localizacao += ","+uf;	
		}
	}
}