package com.servlets;
import org.hibernate.Transaction;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date; // You need to import Date class
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;


import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SaveNoteServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String title = request.getParameter("title");
            String content = request.getParameter("content");

            Note note = new Note(title, content, new Date());
         
			Session s = FactoryProvider.getFactory().openSession();
			s.save(note)
			 
			;
			Transaction tx = s.beginTransaction();
			
			
			s.save(note);
			tx.commit();
			
			s.close();
			response.sendRedirect("all_notes.jsp");
			
			
		
            
            
            
        }
            
            
            catch(Exception e) {
            
            e.printStackTrace(); // Corrected the method name
        }
    }
}
