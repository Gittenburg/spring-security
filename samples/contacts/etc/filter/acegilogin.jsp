<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core' %>
<%-- This page will be copied into WAR's root directory if NOT using container adapter --%>

<html>
  <head>
    <title>Login</title>
  </head>

  <body>
    <h1>Login</h1>

	<P>If you've used the standard springsecurity.xml, try these users:
	<P>
	<P>username <b>marissa</b>, password <b>koala</b> (granted ROLE_SUPERVISOR)
	<P>username <b>dianne</b>, password <b>emu</b> (not a supervisor)
	<p>username <b>scott</b>, password <b>wombat</b> (not a supervisor)
	<p>
	
    <%-- this form-login-page form is also used as the 
         form-error-page to ask for a login again.
         --%>
    <c:if test="${not empty param.login_error}">
      <font color="red">
        Your login attempt was not successful, try again.
      </font>
    </c:if>

    <form action="<c:url value='j_acegi_security_check'/>" method="POST">
      <table>
        <tr><td>User:</td><td><input type='text' name='j_username'></td></tr>
        <tr><td>Password:</td><td><input type='password' name='j_password'></td></tr>

        <tr><td colspan='2'><input name="submit" type="submit"></td></tr>
        <tr><td colspan='2'><input name="reset" type="reset"></td></tr>
      </table>

    </form>

  </body>
</html>
