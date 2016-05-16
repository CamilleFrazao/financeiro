/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import banco.HibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Conta;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author camille
 */
@WebServlet(urlPatterns = "/cadastrarConta")
public class CadastroConta extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Conta conta = new Conta();

        conta.setNome(req.getParameter("nome"));
        conta.setValor(Double.parseDouble(req.getParameter("valor")));

        try {

            SimpleDateFormat formatoData = new SimpleDateFormat("dd/MM/yyyy");

            String data = "21/12/2012";

            Calendar c = Calendar.getInstance();

            c.setTime(formatoData.parse(data));

            conta.setVencimento(c);

        } catch (Exception e) {

            System.out.println("problema com a data de vencimento");

        }

        conta.setFixa(Boolean.parseBoolean(req.getParameter("fixa"))); 
        
        System.out.println("ajsiajsiajsijaisa     "+conta.isFixa());

        conta.setQuantidadeParcelas(Integer.parseInt(req.getParameter("qtdParcela")));

        try {
            Session session;
            Transaction trans;

            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.beginTransaction();

            session.save(conta);

            System.out.println("SKAhskAHSKHASJh");
            trans.commit();
            HibernateUtil.getSessionFactory().close();
            session.close();

        } catch (Exception e) {
        }

    }

}
