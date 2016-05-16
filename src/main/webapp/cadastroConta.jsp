<%-- 
    Document   : cadastroConta
    Created on : 16/05/2016, 15:38:09
    Author     : camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="barra-navegacao.jsp" %>

        <div class="container">     
            <div class="input-group" style="padding-left: 10%">
                <fieldset>
                    <form class="form-group" action="cadastrarConta" method="POST">
                        Nome: <input class="form-control" name ="nome" type="text"/> <br>
                        Valor: <input class="form-control" name="valor" type="number"/> <br>
                        Vencimento: <input class="form-control" name="vencimento" type="date"/> <br>

                        <input type="checkbox" name="fixa" checked="true"/> Fixa<br/>

                        Nº Parcelas <input class="form-control" type="number" name ="qtdParcela" style="width: 20%" value="1" />
                        <br/><br/>
                        <button class="btn btn-success btn-block" type="submit" >Confirmar</button>
                    </form>
                </fieldset>
            </div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
