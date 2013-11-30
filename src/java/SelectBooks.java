/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 import beans.DbConnector;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author TATARAO
 * @since Java 1.5
 * @version 1.6
 */
public class SelectBooks extends HttpServlet {



    public void doPost(HttpServletRequest req,HttpServletResponse res)
     {
	 try
	  {
		 String cat=req.getParameter("category");
		 String check=req.getParameter("source");

		 DbConnector dbc=new DbConnector();

		 ArrayList al= dbc.search(cat);

		 req.setAttribute("category",cat);
		 req.setAttribute("list",al);
	
	    String target;
		 if(check.equalsIgnoreCase("Html"))
			 target="HtmlPrint.jsp";
		 else
			 target="ExcelPrint.jsp";

		 RequestDispatcher rd=req.getRequestDispatcher(target);
		 if(rd!=null)
			 rd.forward(req,res);
	    } // try
	    catch(Exception e){}
    }
 }
