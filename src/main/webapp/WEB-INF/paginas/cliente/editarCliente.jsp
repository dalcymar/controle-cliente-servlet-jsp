<%-- 
    Document   : editarCliente
    Created on : 14 de dez de 2021, 20:22:31
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

        <title>Editar Cliente</title>
    </head>
    <body>
        <!--Cabecario-->
        <jsp:include page="/WEB-INF/paginas/comuns/cabecario.jsp"/>

        <form action="${pageContext.request.contextPath}/ServletControlador?action=modificar&idCliente=${cliente.idCliente}" 
              method="POST" class="was-validated">

            <!--Botões de Navegação-->
            <jsp:include page="/WEB-INF/paginas/comuns/botoesNavegacaoEdicoes.jsp"/>

            <section id="details">
                <div class="container-xl">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editar Cliente</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="nome">Nome</label>
                                        <input type="text" class="form-control" name="nome" required value="${cliente.nome}">
                                    </div>
                                    <div class="form-group">
                                        <label for="apelido">Apelido</label>
                                        <input type="text" class="form-control" name="apelido" required value="${cliente.apelido}">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" name="email" required value="${cliente.email}">
                                    </div>
                                    <div class="form-group">
                                        <label for="telefone">Telefone</label>
                                        <input type="tel" class="form-control" name="telefone" required value="${cliente.telefone}">
                                    </div>
                                    <div class="form-group">
                                        <label for="saldo">Saldo</label>
                                        <input type="number" class="form-control" name="saldo" required value="${cliente.saldo}" step="any">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </form>




        <!--rodapé-->
        <jsp:include page="/WEB-INF/paginas/comuns/rodape.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>