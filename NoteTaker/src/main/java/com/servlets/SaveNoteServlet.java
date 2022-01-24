package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.entities.Note;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// title,content fetch
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Note note = new Note(title, content, new Date());
//			System.out.println(note.getContent() + " : " + note.getTitle());
			// hibernate:save()
			SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session = factory.openSession();
			session.beginTransaction();
			session.save(note);
			session.getTransaction().commit();
			session.close();
			factory.close();

			response.sendRedirect("after_adding.jsp");
//			response.setContentType("text/html");
//			PrintWriter out=response.getWriter();
//			out.println("<br><br><br>");
//			out.println("<h1 style='text-align:center;'>Note is added successfully</h1><br>");
//			out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all saved notes</a></h1>");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
