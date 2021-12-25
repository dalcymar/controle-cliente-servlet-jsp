<%-- 
    Document   : clientes
    Created on : 10 de dez de 2021, 22:45:45
    Author     : Dalcimar
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
        
        
        <title>Control de Clientes</title>
    </head>
    <body>
        <!--Cabecario-->
        <jsp:include page="/WEB-INF/paginas/comuns/cabecario.jsp"/>

        <!--Botoes de navegação-->
        <jsp:include page="/WEB-INF/paginas/comuns/botoesNavegacao.jsp"/>

        <!--Listar cliente-->
        <jsp:include page="/WEB-INF/paginas/cliente/listarClientes.jsp"/>

        <!--rodapé-->
        <jsp:include page="/WEB-INF/paginas/comuns/rodape.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
