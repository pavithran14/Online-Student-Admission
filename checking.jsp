<html>
<%-- program to Verifiey --%>


<%@ page language="java" import="java.sql.* " %>
<%@ page language="java" import="java.io.* " %>

<%
	String dsn="jdbc:odbc:app";
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con = DriverManager.getConnection(dsn);
	Statement st = con.createStatement();
        String roll_no=(request.getParameter("t1"));
	String date=(request.getParameter("t2"));
	ResultSet rs = st.executeQuery("select * from login where r_no='"+roll_no+"' ");
	int i=0;
	while(rs.next())
	{
		i=1;    
		String dob=rs.getString("dob");
		String form=rs.getString("role");
		Boolean chk_date=(dob).equals(date);
		Boolean chk_role=(form).equals("admin");
		if(chk_date==false)
		{
			response.sendRedirect("login.html");
		}
		if(chk_date==true && chk_role==true)
			response.sendRedirect("admin.html");
		
		if(chk_date==true && chk_role==false)
			response.sendRedirect("user.html");
	}
	if(i==0)
		response.sendRedirect("index.html");
	con.close();
%>
