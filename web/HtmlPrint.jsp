<%-- 
    Document   : HtmlPrint
    Created on : Oct 13, 2012, 7:04:43 PM
    Author     : TATARAO
--%>


<%@page import="java.util.ArrayList,beans.BookBean" %>
<% 
ArrayList al=(ArrayList)request.getAttribute("list");
String cat =(String)request.getAttribute("category");
%>

<html>
<script language='javascript'>
function showprint()
{
	frames.focus();
	frames.print();
}
</script>
<body bgcolor="lavender">
<form name='f'>
<center><h2><u>Books belonging to category : <%=cat.toUpperCase()%> </u></h2></center><br>

<table border="1" width="100%">
<tr bgcolor="orange"><th>Sno</th><th>BookId</th><th>BookName</th><th>Authername</th><th>Status</th>
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
<center> <a href="javascript:showprint()">Print</a> </center>
<br>
<br><br>
<br><br>
<br><br><blink><a href="Search.jsp">Go To Previous Page</a></blink>
<br>
</form>
</body>
</html>