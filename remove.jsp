<html>
<body>
<%@ page language="java" import="java.sql.* " %>
<%@ page language="java" import="java.io.* " %>

<%
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con = DriverManager.getConnection("jdbc:odbc:app");
		Statement st = con.createStatement();
		int no=Integer.parseInt(request.getParameter("t1"));
		out.println(no);
		st.executeUpdate("delete from stu_det where id="+no);	
	}
	catch(Exception e){System.err.println("Exception: "+e.getMessage());}
	String site="admin.html";
	response.sendRedirect(site);
		   	
%>
</body>
</html>


