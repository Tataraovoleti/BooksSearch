<%-- 
    Document   : ExcelPrint
    Created on : Oct 13, 2012, 7:05:33 PM
    Author     : TATARAO
--%>


<%@page import="java.util.ArrayList,beans.BookBean" %>
<%
response.addHeader("Content-Disposition","attachment;filename=title.xml");
response.setContentType("application/xml");
ArrayList al=(ArrayList)request.getAttribute("list");
String cat =(String)request.getAttribute("category");
%>

<html>

<body>
<center><h2><u>Books belonging to category : <%=cat.toUpperCase()%> </u></h2></center><br>

<table border="1" width="100%">
<tr><th>Sno</th><th>BookId</th><th>BookName</th><th>Authername</th><th>Status</th>
</tr>
<% for(int i=0;i<al.size();++i)
{
	BookBean sb=(BookBean)al.get(i);
	%>
	<tr>
	<td><%=(i+1) %></td>
	<td><%=sb.getBookId() %></td>
	<td><%=sb.getBookName() %></td>
	<td><%=sb.getAuthorName() %></td>
	<td><%=sb.getStatus() %></td>
	</tr>
<% 
}
%>
</table>
</body>
</html>