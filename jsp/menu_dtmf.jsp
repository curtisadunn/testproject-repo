<?xml version='1.0' encoding="ISO-8859-1"?>
<%@ page contentType="application/srgs+xml"%>
<%@ page import="java.util.*"%>
<%@ page session="false"%>
<%response.addHeader("Cache-Control", "max-age=3600");%>
<%
	String  keys = request.getParameter("keys");
	StringTokenizer aTokenKey = new StringTokenizer(keys,",");
%>
<grammar mode='dtmf' root='root' version='1.0' xml:lang='en-US' xmlns='http://www.w3.org/2001/06/grammar' tag-format='semantics/1.0'>
<rule id="root" scope="public">
  <one-of>
  		<%while (aTokenKey.hasMoreTokens()) { 
  			String ki = aTokenKey.nextToken();
  			String ki2 = ki;
  			if (aTokenKey.hasMoreTokens()) {
  				ki2=aTokenKey.nextToken();
  			}
  			String ki3 = ki2;
  			if (aTokenKey.hasMoreTokens()) {
  				ki3= "out." + aTokenKey.nextToken();
  			}
  		%>
		<item> <%=ki%> <tag><%=ki3%>='<%=ki2%>';</tag></item>
		<%}%>
  </one-of>
</rule>
</grammar>