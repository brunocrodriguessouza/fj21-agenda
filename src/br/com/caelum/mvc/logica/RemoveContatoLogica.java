package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class RemoveContatoLogica implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {

		long id = Long.parseLong(req.getParameter("id"));

		Contato contato = new Contato();
		contato.setId(id);

		ContatoDao dao = new ContatoDao();
		dao.exclui(contato);

		System.out.println("Excluindo contato...");

		return "lista-contatos.jsp";
	}

}
