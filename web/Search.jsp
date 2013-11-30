<%-- 
    Document   : index
    Created on : Oct 13, 2012, 6:59:47 PM
    Author     : TATARAO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Search books</title>
<style>
caption {
	background-color:orange;
}
</style>
<script language="javascript">

function isHtml()
{
	f.source.value="Html"
	validate();
}

function isExcel()
{
	f.source.value="Excel"
	validate();
}

function validate()
{
	if(f.category.selectedIndex=='0')
	{
		alert("You should select Category !!!");
		f.category.focus();
		return false();
	}
	else
	{
		f.submit();
		return true;
	}
}
</script>
</head>
<body bgcolor="#691F01">
<form name='f' action="./SelectBooks" method="post">
  <center>
 <span style="width:500;height:40;filter:shadow(color=pink,direction=135);">
 <font color="pink" size="8">Search for Books</font>

 </span>
 <br><br>
</center>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <table border=1 cellpadding=4 cellspacing=4 align=center bgcolor='lavender'>
    <tr>
    <caption>
    Search
    </caption>
    <th> Select Category</th>
      <th><select name='category'>
          <option selected value="">Select a value</option>
          <option value='java'>JAVA</option>
          <option value='.net'>.NET</option>
          <option value='js'>JAVA SCRIPT</option>
        </select>
      </th>
    </tr>
    <tr>
      <th><input type='button' value='Html Output' onClick='isHtml()'></th>
      <th><input type='button' value='Excel Output' onClick='isExcel()'></th>
    </tr>
  </table>
  <input type='text' name='source' readonly style='visibility:hidden'>
</form>
</body>
</html>
