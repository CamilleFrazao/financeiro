<%-- 
    Document   : index
    Created on : 16/05/2016, 17:31:55
    Author     : john
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
    <%@include file="barra-navegacao.jsp" %>
      
    <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">Receita</div>
                <div class="panel-body">
                    R$ 5.600,00
                </div>        
            </div>

            <div class="panel panel-warning">
                <div class="panel-heading">A pagar</div>
                <div class="panel-body">
                    R$ 1.600,00
                </div>        
            </div>

            <div class="panel panel-danger">
                <div class="panel-heading">Saidas</div>
                <div class="panel-body">
                    R$ 1.000,00
                </div>        
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">Saldo</div>
                <div class="panel-body">
                    R$ 600,00
                </div>        
            </div>
        </div>



        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
