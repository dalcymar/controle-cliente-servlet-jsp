<%-- 
    Document   : listarClientes
    Created on : 12 de dez de 2021, 09:36:35
    Author     : Dalcimar
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="pt_BR"/>

<section id="clientes">
    <div class="container-xl">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Lista de Clientes</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="table-dark">
                            <tr>
                                <th>id</th>
                                <th>Nome</th>
                                <th>Saldo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <!--Repetimos cada elemento da lista de clientes-->
                            <c:forEach var="cliente" items="${clientes}" varStatus="status" >
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${cliente.nome} ${cliente.apelido}</td>
                                    <td> <fmt:formatNumber value="${cliente.saldo}" type="currency"/> </td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/ServletControlador?action=editar&idCliente=${cliente.idCliente}"
                                           class="btn btn-secondary">
                                            <span><i class="fas fa-angle-double-right"></i></span> Editar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <!--Inicio Cart�es para mostrar totais-->
            <div class="col-md-3">
                <div class="card text-center bg-danger text-white mb-3">
                    <div class="card-body">
                        <h3>Saldo Totais</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency" />
                        </h4>
                    </div>
                </div>

                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total de Clientes</h3>
                        <h4 class="display-4">
                            <i class="fas fa-users"></i> ${totalClientes}
                        </h4>
                    </div>
                </div>
            </div>
            <!--Fim Cart�es para mostrar totais-->
        </div>
    </div>
</section>

<!-- Adicionar cliente MODAL -->
<jsp:include page="/WEB-INF/paginas/cliente/adicionarCliente.jsp"/>