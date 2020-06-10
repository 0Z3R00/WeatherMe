package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.RequestAPI;


@WebServlet("/ManterCidade.do")
public class CidadeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String acao = request.getParameter("acao");
		String uf = request.getParameter("UF");
		String localizacao = "";
		RequestDispatcher dispatcher = null;
		
		String cit[] = nome.split(" ");
		for(int i = 0; i < cit.length; i++) {
			if(i == cit.length - 1) {
				localizacao += cit[i]; 
			}else {
				localizacao += cit[i]+"-"; 
			}
		}
		localizacao += ","+uf;

		switch(acao){
		case "pesquisar":
			RequestAPI cidade = new RequestAPI(localizacao);
			request.setAttribute("city", cidade);
			dispatcher = request.getRequestDispatcher("resultado.jsp");
			break;
		}
		//despachar para o JSP correto
		dispatcher.forward(request, response);

	}

}






