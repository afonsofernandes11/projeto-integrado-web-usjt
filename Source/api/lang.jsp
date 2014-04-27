<%@ page language="java" import="functions.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	try
	{
		Language.start( Integer.parseInt( request.getParameter( "lang" ) ) );
	}
	catch(Exception ex){

	}
%>