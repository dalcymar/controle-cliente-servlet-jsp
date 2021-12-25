<%-- 
    Document   : botoesNavegacaoEdicoes
    Created on : 14 de dez de 2021, 20:38:41
    Author     : Dalcimar
--%>

<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container-xl">
        <div class="row">
            <div class="col-md-3">
                <a href="index.jsp" class="btn btn-info btn-block">
                    <i class="fas fa-arrow-left"></i>  Tela inicial
                </a>
            </div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-success btn-block">
                    <i class="fas fa-check"></i> Atualizar Cliente
                </button>
            </div>
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/ServletControlador?action=eliminar&idCliente=${cliente.idCliente}" 
                   class="btn btn-danger btn-block">
                    <i class="fas fa-trash"></i> Eliminar Cliente
                </a>
            </div>
        </div>
    </div>
</section>
