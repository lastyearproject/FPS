<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="template/header1.jsp"></jsp:include>


<center>
<style>
.row{
	margin-top:20px;
}
#login-page{
	margin-left:35%;
	margin-right:35%;
}
</style>
  <div id="login-page" class="row">
    <div class="col s12 z-depth-4 card-panel">
      <form method="post" action="" class="login-form" id="form">
        <div class="row">
          <div class="input-field col s12 center">
            <p class="center login-form-text"><h3>Login</h3> <br><b> Food PreOrdering System</b></p>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
            <input name="username" id="username" type="text">
            <label for="username" class="center-align">Username</label>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <input name="password" id="password" type="password">
            <label for="password">Password</label>
          </div>
        </div>
        <div class="row">
        <input type="submit" name="submit" class="btn waves-effect waves-light col s12" value="submit"/>
			<!-- <a href="javascript:void(0);" onclick="document.getElementById('form').submit();" class="btn waves-effect waves-light col s12">Login</a> -->          </div>
		  		<div class="row">
          <div class="input-field col s6 m6 l6">
            <p class="margin medium-small"><a href="userregister.jsp">Register Now!</a></p>
          </div>         
        </div>
        </div>

      </form>
    </div>
  </div>
</center>

<%@ include file="db.jsp" %>
<%
	if(request.getParameter("submit")!=null){
		if(!request.getParameter("username").isEmpty() && !request.getParameter("password").isEmpty()){
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			String query = "select * from tbladmin where admin_name = '"+username+"' and password = '"+password+"'";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if(rs.next()){
				response.sendRedirect("adminpanel.jsp");
			}
			
		}else{
			out.print("Please enter username and password");
		}
	}
%>
  <!-- ================================================
    Scripts
    ================================================ -->

  <!-- jQuery Library -->
  <script type="text/javascript" src="js/plugins/jquery-1.11.2.min.js"></script>
  <!--materialize js-->
  <script type="text/javascript" src="js/materialize.min.js"></script>
  <!--scrollbar-->
  <script type="text/javascript" src="js/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

      <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="js/plugins.min.js"></script>
    <!--custom-script.js - Add your own theme custom JS-->
    <script type="text/javascript" src="js/custom-script.js"></script>

<jsp:include page="template/footer.jsp"></jsp:include> 