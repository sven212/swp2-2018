<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@ page import="services.ReportRevisionService" %>
<%@ page import="tablePojos.Report_Revision" %>


<%
  ReportRevisionService rs = new ReportRevisionService();
  Report_Revision rv = rs.getById(Integer.parseInt(request.getParameter("reportRevisionID")));

  rv.setText1(request.getParameter("text1"));
  rv.setText2(request.getParameter("text2"));
  rv.setText3(request.getParameter("text3"));
  rv.setHours1(Integer.parseInt(request.getParameter("hours1")));
  rv.setHours2(Integer.parseInt(request.getParameter("hours2")));
  rv.setHours3(Integer.parseInt(request.getParameter("hours3")));

  rs.update(rv, rv.getId());


  response.sendRedirect("trainee/allReportsPage.jsp");
%>
