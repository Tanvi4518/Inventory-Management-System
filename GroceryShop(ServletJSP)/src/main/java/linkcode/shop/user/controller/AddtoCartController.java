package linkcode.shop.user.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import linkcode.shop.user.model.Cart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * Servlet implementation class AddtoCartController
 */
public class AddtoCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddtoCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		try(PrintWriter out=response.getWriter()) {
			ArrayList<Cart> cartlist=new ArrayList();
			int id=Integer.parseInt(request.getParameter("id"));
			Cart cm=new Cart();
			cm.setQuantity(1);
			
			HttpSession session=request.getSession();
			ArrayList<Cart> cart_list=(ArrayList<Cart>) session.getAttribute("cart-list");
			if(cart_list==null) {
				cartlist.add(cm);
				session.setAttribute("cart_list", cartlist);
			}
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
