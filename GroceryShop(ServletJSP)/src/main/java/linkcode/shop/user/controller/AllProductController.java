package linkcode.shop.user.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import linkcode.shop.user.dao.UserService;
import linkcode.shop.user.daoImpl.ProductDao;
import linkcode.shop.user.daoImpl.UserServiceImpl;
import linkcode.shop.user.model.Product;
import linkcode.shop.user.model.UserRegister;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class AllProductController
 */
public class AllProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String category=request.getParameter("category");
		String price=request.getParameter("price");
		String image=request.getParameter("image");
		
		Product prod=new Product(id,name,category,price,image);
		List<Product> plst=new ArrayList<Product>();
		plst.add(prod);
		ProductDao pd=new ProductDao();
		String msg=pd.registerProduct(plst);
		HttpSession session=request.getSession();
		if(msg.equals("valid"))
		{
			msg="RegisteredSuccessfully!";
		}
		else
		{
			msg="TRYAgain!";
		}
		session.setAttribute("msg", msg);
		response.sendRedirect("ProductAll.jsp");
	}

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
