<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>

<%
	Connection con = null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
    	con = DriverManager.getConnection("jdbc:mysql://ec2-18-217-156-57.us-east-2.compute.amazonaws.com:3306/cs166_raymond", "root", "");
	} catch (Exception e) {
		out.print("An error occurred while connecting to the database");
        return;
    }
%>