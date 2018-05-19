<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>



<!-- Setzte Attribute Page für die navbar -->
<%
  request.setAttribute("page", "login");

  String wrong = (String) session.getAttribute("wrongData");

  if(wrong != null){

    String warning = "<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\"><strong>Username</strong> oder <strong>Passwort</strong> war falsch!"
      + "<button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span>"
      + "</button></div>";

    pageContext.setAttribute("warning", warning);
  }

%>
<t:stdTempl>
  <jsp:attribute name="titleText"> - Login</jsp:attribute>
  <jsp:body>


    <div class="container inForm">

      <div id="login-form">


        <form action="scripts/loginCheck.jsp" method="post" autocomplete="off">
          <div class=" justify-content-lg-center inForm" >
            <!---  <div class="col-12 col-sm-10 col-md-8 ">--->
            <div class="form-group">
              <h2 class="">Anmelden</h2>
            </div>

            <div class="form-group">
              <hr/>
            </div>

            ${warning}

            <!------ Nutzername eingabe ---------->

            <div class="form-group">
              <input type="text" name="user" id="user" class="form-control"
                     placeholder="Nutzername" required>
            </div>

            <!------ Passwort eingabe ---------->

            <div class="form-group">
              <input type="password" name="password" id="password" class="form-control "
                     placeholder="Passwort" required>
            </div>

            <!------ Buttons am Ende ---------->

            <div class="form-group">
              <button type="submit" class="btn btn-block btn-primary" name="signup" id="signup" value="Submit">Login
              </button>
            </div>
            <div class="form-group">
              <hr/>
            </div>
            <div class="form-group">
              <a href="register.jsp" type="button" class="btn btn-block btn-success" name="btn-login">Registrierung</a>
            </div>
          </div>

        </form>
      </div>
    </div>



  </jsp:body>
</t:stdTempl>

<%
  session.removeAttribute("wrongData");
%>
