<html>

<body>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.io.*" %>

<%	
	Connection con = null;
	String name=request.getParameter("t1");
	String dob=request.getParameter("t2");
	String age =request.getParameter("t3");
	String gender=request.getParameter("t4");
	String blood=request.getParameter("t5");
	String nation=request.getParameter("t6");
	String caste=request.getParameter("t7");
	String religion=request.getParameter("t8");
	String f_name=request.getParameter("t9");
	String f_occ=request.getParameter("t10");
	String income=request.getParameter("t11");
	String address=request.getParameter("t12");
	String mark=request.getParameter("t13");
	String dept=request.getParameter("radio");
	String fee="unpaid";
 	
	try
    	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con = DriverManager.getConnection("jdbc:odbc:app");
		Statement st = con.createStatement();
		st.executeUpdate("insert into stu_det(s_name,dob,age,gender,blood,nation,caste,religion,f_name,f_occupation,income,address,mark,dept,fees)values('"+name+"','"+dob+"','"+age+"','"+gender+"','"+blood+"','"+nation+"','"+caste+"','"+religion+"','"+f_name+"','"+f_occ+"','"+income+"','"+address+"','"+mark+"','"+dept+"','"+fee+"')");
		con.close();	      		
    	}
    	catch (Exception e) 
    	{
      		out.println("Exception: "+e.getMessage());
    	}
	String site="index.html";
	response.sendRedirect(site);
%>
</body>
</html>
