<%@ page language="java" import="java.util.*" pageEncoding="utf-8"   %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <% request.setCharacterEncoding("utf-8"); %>
    <%
    	List<String> info = (List<String>) request.getAttribute("info_page");
    	if(info != null){
    		Iterator<String> iter = info.iterator();
    		while(iter.hasNext()){
    		%>
    	<h4><%=iter.next() %></h4>	
    <% }
    	}
     %>
     
     <form action="LoginServlet" method＝"post" onSubmit = "rentun validate(this)">
     	用户ID:<input type = "text" name = "userid"><br>
     	密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" name="password"><br>
     	<input type="submit" value="提交">
     	<input type="reset" value="重置"><br>
     </form>
  </body>
</html>
