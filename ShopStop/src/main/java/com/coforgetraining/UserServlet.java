package com.coforgetraining;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        request.getRequestDispatcher("link.html").include(request, response);
         
        String name=request.getParameter("name");
        String password=request.getParameter("password");
         
        if(password.equals("admin123")){
        out.print("<h3>Welcome, "+name+"<h3>");
        
        //create a new session if there is no active session
        HttpSession session=request.getSession();
        session.setAttribute("uname", name); //creating session attributes
        session.setAttribute("company", "coforge");
        out.print("you are logged in :"+new Date(session.getCreationTime())
        		+"from"+session.getAttribute("company"));
        
        int t=5;
        //set session time out
        session.setMaxInactiveInterval(t);
       response.setHeader("refresh",t+"URL=timeout.html");
        }
        else{
            out.print("Sorry, username or password error!");
            request.getRequestDispatcher("login.html").include(request, response);
        }
        out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
