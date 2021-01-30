<html><style type="text/css">
<!--
body,td,th {
	color: #CCCCCC;
}
-->
</style>
<%-- program to Search RECORD --%>
<body bgcolor=#000033 textcolor=#CCCCCC>

<%@ page language="java" import="java.sql.* " %>
<%@ page language="java" import="java.io.* " %>

<center><h1>SEARCH RECORD</h1></center>
<%
	String dsn="jdbc:odbc:app";
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con = DriverManager.getConnection(dsn);
	Statement st = con.createStatement();
        String se=(request.getParameter("t1"));
	out.println(se);
	ResultSet rs=st.executeQuery("select * from stu_det where s_name='"+se+"' ");
	int i=0;
	%>
	<table Border="1">
	<tr>
		<th width="63">Name</th>	
		<th width="57">DOB</th>
		<th width="42">Age</th>
		<th width="68">gender</th>
		<th width="60">Blood Group</th>
		<th width="69">Nation</th>
		<th width="64">caste</th>
		<th width="65">Religion</th>
		<th width="98">Father name</th>
		<th width="75">Occupation</th>
		<th width="64">Income</th>
		<th width="92">Address</th>
		<th width="64">Mark</th>
		<th width="54">Dept</th>
		<th width="73">fees</th>
	</tr>
	<% while(rs.next()){ i=1;%>

	<tr>
	   	<td height="45"><div align="center"><%=rs.getString("s_name")%></div></td>
		<td><div align="center"><%=rs.getString("dob")%></div></td>
		<td><div align="center"><%=rs.getString("age")%></div></td>
		<td><div align="center"><%=rs.getString("gender")%></div></td>
		<td><div align="center"><%=rs.getString("blood")%></div></td>
		<td><div align="center"><%=rs.getString("nation")%></div></td>
		<td><div align="center"><%=rs.getString("caste")%></div></td>
		<td><div align="center"><%=rs.getString("religion")%></div></td>
		<td><div align="center"><%=rs.getString("f_name")%></div></td>
		<td><div align="center"><%=rs.getString("f_occupation")%></div></td>
		<td><div align="center"><%=rs.getString("income")%></div></td>
		<td><div align="center"><%=rs.getString("address")%></div></td>
		<td><div align="center"><%=rs.getString("mark")%></div></td>
		<td><div align="center"><%=rs.getString("dept")%></div></td>
		<td><div align="center"><%=rs.getString("fees")%></div></td>
	</tr>
	<% }%>	
	    
		
	
	<%if(i==0)
		out.println(" is not in the  record. so the table appears empty ");
	%>

</body>
</html>