/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.CompraDAO;
import ModeloDAO.InventarioDAO;
import ModeloDAO.ProductoDAO;
import ModeloDAO.ProveedorDAO;
import ModeloDAO.QuejaDAO;
import ModeloDAO.UsuarioDAO;
import ModeloDAO.VentaDAO;
import ModeloVO.ComprasVO;
import ModeloVO.InventarioVO;
import ModeloVO.ProductoVO;
import ModeloVO.ProveedorVO;
import ModeloVO.QuejaVO;
import ModeloVO.UsuarioVO;
import ModeloVO.VentasVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author POWER
 */
@WebServlet(name = "Listar", urlPatterns = {"/Listar"})
public class Listar extends HttpServlet {

    UsuarioDAO usuDAO = new UsuarioDAO();
    QuejaDAO queDAO = new QuejaDAO();
    ProveedorDAO proDAO = new ProveedorDAO();
    VentaDAO venDAO = new VentaDAO();
    CompraDAO comDAO = new CompraDAO();
    ProductoDAO  prodcDAO = new ProductoDAO();
    
    InventarioDAO inveDAO = new InventarioDAO();
    
    List usuarios = new ArrayList();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        usuarios = usuDAO.Listar();
        String variable = request.getParameter("variable");
        
        switch(variable){
           case "ListarCompras":
                List<ComprasVO> compras = comDAO.ListarCompras();
                request.setAttribute("compras", compras);
                request.getRequestDispatcher("ListarCompras.jsp").forward(request, response);
                break;
           case "ListarVentas":
                List<VentasVO> ventas = venDAO.ListarVentas();
                request.setAttribute("ventas", ventas);
                request.getRequestDispatcher("ListarVentas.jsp").forward(request, response);
                break;
           case "ListarUsuarios":
                List<UsuarioVO> usuarios = usuDAO.Listar();
                request.setAttribute("usuarios", usuarios);
                request.getRequestDispatcher("ListarUsuarios.jsp").forward(request, response);
                break;
           case "ListarQuejas":
                List<QuejaVO> quejas = queDAO.ListarQuejas();
                request.setAttribute("quejas", quejas);
                request.getRequestDispatcher("ListarQuejas.jsp").forward(request, response);
                break;
           case "ListarProveedores":
                List<ProveedorVO> proveedores = proDAO.ListarProveedores();
                request.setAttribute("proveedores", proveedores);
                request.getRequestDispatcher("ListarProveedores.jsp").forward(request, response);
                break;
           case "ListarInventario":
                List<InventarioVO> inventarios = inveDAO.ListarInventario();
                request.setAttribute("inventarios", inventarios);
                request.getRequestDispatcher("ListarInventarios.jsp").forward(request, response);
                break;
           case"ListarProductos":
               List<ProductoVO> productos = prodcDAO.Listar();
               request.setAttribute("pro", productos);
               request.getRequestDispatcher("ListarProductos2.jsp").forward(request, response);
           case"ListarVentas2":
               List<VentasVO> ventas2 = venDAO.ListarVentas();
               request.setAttribute("ven", ventas2);
               request.getRequestDispatcher("ListarVentas2.jsp").forward(request, response);
        }
        

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
