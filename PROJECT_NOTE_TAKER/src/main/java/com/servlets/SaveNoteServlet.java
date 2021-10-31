package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try 
		{
		  //title,content,fetch
			
		  String title = request.getParameter("title");
		  String content = request.getParameter("content");
			
		  Note note = new Note(title , content , new Date());
		 // System.out.println(note.getId() + " : " + note.getTitle());
		  
		  //hibernate:save()
          Session s = FactoryProvider.getFactory().openSession();
          s.beginTransaction();
          s.save(note);
          s.getTransaction().commit();
          s.close();
          response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  out.println("<h1 style='text-align:center;'>Note is add successfully</h1>");
		  out.println("<h1 style='text-align:center;'><a href='read_all_notes.jsp'>view all notes</a></h1>");
		}catch(Exception e)
		{
			e.printStackTrace();
		}

	}
}
