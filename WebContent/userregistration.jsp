<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="template/header.jsp"></jsp:include>


<center>
<style>
.row{
	margin-left:33%;
	margin-right:33%;
	
}
.optright{
	margin-left:45px; 
}


</style>


  <div id="login-page" class="row">
    <div class="col s12 z-depth-4 card-panel">
      <form class="formValidate" id="formValidate" method="post" action="" novalidate="novalidate" class="col s12">
        <div class="row">
          <div class="input-field col s12 center">
            <h4>Register</h4>
            <p class="center">Join us now!</p>
          </div>
        </div>
       
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person prefix"></i>
            <input name="fname" id="fname" type="text" data-error=".errorTxt2">
            <label for="fname" class="center-align">FirstName</label>
			<div class="errorTxt2"></div>			
          </div>
        </div>
		 <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person prefix"></i>
            <input name="lname" id="lname" type="text" data-error=".errorTxt2">
            <label for="lname" class="center-align">LastName</label>
			<div class="errorTxt2"></div>			
          </div>
        </div>
		 <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
            <input name="uname" id="uname" type="text" data-error=".errorTxt2">
            <label for="uname" class="center-align">Username</label>
			<div class="errorTxt2"></div>			
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <input name="password" id="password" type="password" data-error=".errorTxt3">
            <label for="password">Password</label>
			<div class="errorTxt3"></div>			
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-communication-phone prefix"></i>
            <input name="phone" id="phone" type="number" data-error=".errorTxt4">
            <label for="phone">Phone</label>
			<div class="errorTxt4"></div>			
          </div>
        </div>
		<div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-content-mail prefix"></i>
            <input name="email" id="email" type="text" data-error=".errorTxt4">
            <label for="email">email</label>
			<div class="errorTxt4"></div>			
          </div>
        </div>	
        
        <div class="row margin">
          <div class="input-field col s12">
          <i class="mdi-maps-restaurant-menu prefix"></i>
            <select class="optright">
            	<option value="" selected>Select your canteen</option>
            	<option value="x">x</option>
            	<option value="y">y</option>
            </select>
           
			<div class="errorTxt4"></div>			
          </div>
        </div>







	
        <div class="row">
          <div class="input-field col s12">
			<a href="javascript:void(0);" onclick="document.getElementById('formValidate').submit();" class="btn waves-effect waves-light col s12">Register</a>
          </div>
          <div class="input-field col s12">
            <p class="margin center medium-small sign-up">Already have an account? <a href="login.jsp">Login</a></p>
          </div>
        </div>
      </form>
    </div>
  </div>

</center>

  <!-- ================================================
    Scripts
    ================================================ -->

  <!-- jQuery Library -->
  <script type="text/javascript" src="js/plugins/jquery-1.11.2.min.js"></script>
  <!--materialize js-->
  <script type="text/javascript" src="js/materialize.min.js"></script>
  <!--scrollbar-->
  <script type="text/javascript" src="js/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
     <script type="text/javascript" src="js/plugins/jquery-validation/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/plugins/jquery-validation/additional-methods.min.js"></script>
     
      <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="js/plugins.min.js"></script>
    <!--custom-script.js - Add your own theme custom JS-->
    <script type="text/javascript" src="js/custom-script.js"></script>
    <script type="text/javascript">
    $("#formValidate").validate({
        rules: {
            username: {
                required: true,
                minlength: 5
            },
            name: {
                required: true,
                minlength: 5				
            },
			password: {
				required: true,
				minlength: 5
			},
            phone: {
				required: true,
				minlength: 4
			},
        },
        messages: {
            username: {
                required: "Enter username",
                minlength: "Minimum 5 characters are required."
            },
            name: {
                required: "Enter name",
                minlength: "Minimum 5 characters are required."
            },
			password: {
				required: "Enter password",
				minlength: "Minimum 5 characters are required."
			},
            phone:{
				required: "Specify contact number.",
				minlength: "Minimum 4 characters are required."
			},		
        },
        errorElement : 'div',
        errorPlacement: function(error, element) {
          var placement = $(element).data('error');
          if (placement) {
            $(placement).append(error)
          } else {
            error.insertAfter(element);
          }
        }
     });
    </script>
 <jsp:include page="template/footer.jsp"></jsp:include>
    