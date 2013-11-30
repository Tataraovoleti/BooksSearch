/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author TATARAO
 */
public class DbConnector {
    
    public Connection getConnection()
    {
                    Connection con=null;
	 try
	 {
	 Class.forName("org.gjt.mm.mysql.Driver");
	 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rao","root","");
	 }
	 catch(Exception e)
	 {}
	 return con;
   }

  public ArrayList search(String category)
 {
  Connection con = getConnection();
  PreparedStatement ps = null;
  ResultSet rs =null;
  ArrayList al=new ArrayList();

   try
   {
     String searchQuery= "select bookid,bookname,authorname,status from select_books where category=?";
        ps=con.prepareStatement(searchQuery);
        ps.setString(1,category);
        rs=ps.executeQuery();

	 while(rs.next())
	 {
	 BookBean b= new BookBean();
	 b.setBookId(rs.getString(1));
	 b.setBookName(rs.getString(2));				
	 b.setAuthorName(rs.getString(3));	
                 b.setStatus(rs.getString(4));
	 al.add(b);
	 }
	 rs.close();
   } // try
 catch(Exception e){}
 finally
 {
      if(ps!=null)
      {
          try{
	  ps.close();
	}
	catch(Exception e){}
       }
			if(con!=null)
				 {
				 try
					{
				     con.close();
					}
					catch(Exception e){}
				 }
		 }  // finally
		 return al;
	 }
    
}
