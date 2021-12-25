package web;

import dados.ClienteDaoJDBC;
import dominio.Cliente;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author Dalcimar
 */
@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        String action = request.getParameter("action");
        if(action != null) {
        
            switch(action) {
            
                case "editar":
                    this.editarCliente(request, response);
                    break;
                case "eliminar":
                    this.eliminarCliente(request, response);
                    break;
                default: 
                    this.actionDefault(request, response);
            }
        } else {
        
            this.actionDefault(request, response);
        }
        
    }
    
    
    private void actionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
       List<Cliente> clientes = new ClienteDaoJDBC().listar();
        System.out.println("clientes = " + clientes);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("clientes", clientes);
        sesion.setAttribute("totalClientes", clientes.size());
        sesion.setAttribute("saldoTotal", this.calcularSaldoTotal(clientes));
  
        response.sendRedirect("clientes.jsp");
    }
    
    
    private double calcularSaldoTotal(List<Cliente> clientes) {
    
        double saldoTotal = 0;
        
        for(Cliente cliente: clientes) {
        
            saldoTotal += cliente.getSaldo();
        }
        return saldoTotal;
    }
    
    
    private void editarCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        Cliente cliente = new ClienteDaoJDBC().pesquisar(new Cliente(idCliente));
        request.setAttribute("cliente", cliente);
        String jspEditar = "/WEB-INF/paginas/cliente/editarCliente.jsp";
        request.getRequestDispatcher(jspEditar).forward(request, response);
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        String action = request.getParameter("action");
        if(action != null) {
        
            switch(action) {
            
                case "inserir":
                    this.inserirCliente(request, response);
                    break;
                case "modificar":
                    this.modificarCliente(request, response);
                    break;
                default: 
                    this.actionDefault(request, response);
            }
        } else {
        
            this.actionDefault(request, response);
        }
    }
    
    private void inserirCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        String nome = request.getParameter("nome");
        String apelido = request.getParameter("apelido");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        
        double saldo = 0;
        String saldoString = request.getParameter("saldo");
        if(saldoString != null && !"".equals(saldoString)) {
        
            saldo = Double.parseDouble((saldoString));
        }
        
        Cliente cliente = new Cliente(nome, apelido, email, telefone, saldo);
        
        int registrosModificados = new ClienteDaoJDBC().inserir(cliente);
        System.out.println("registrosModificados" + registrosModificados);
        
        this.actionDefault(request, response);
    }
    
    private void modificarCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        
        String nome = request.getParameter("nome");
        String apelido = request.getParameter("apelido");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        
        double saldo = 0;
        String saldoString = request.getParameter("saldo");
        if(saldoString != null && !"".equals(saldoString)) {
        
            saldo = Double.parseDouble((saldoString));
        }
        
        Cliente cliente = new Cliente(idCliente, nome, apelido, email, telefone, saldo);
        
        int registrosModificados = new ClienteDaoJDBC().atualizar(cliente);
        System.out.println("registrosModificados" + registrosModificados);
        
        this.actionDefault(request, response);
    }
    
    private void eliminarCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        
        Cliente cliente = new Cliente(idCliente);
        
        int registrosModificados = new ClienteDaoJDBC().remover(cliente);
        System.out.println("registrosModificados" + registrosModificados);
        
        this.actionDefault(request, response);
    }
}
