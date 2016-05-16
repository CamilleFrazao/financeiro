/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import banco.HibernateUtil;
import static com.sun.corba.se.impl.util.Utility.printStackTrace;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author john
 */
public class GenericDAO {

    private Session session;
    private Transaction transaction;

    public void salvar(Object objeto) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();

            session.save(objeto);
            transaction.commit();

        } catch (Exception e) {
            printStackTrace();
            System.out.println("Ocorream problemas ao salvar os dados");
        } finally {
            session.close();
        }
    }
    
    
   
    
   
}
