package controllers.admins.users;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.CatUserDao;
import daos.UserDao;
import models.CatUser;
import models.User;
import util.StringUtil;


public class AdminEditUserControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminEditUserControllers() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("userInfor") == null) {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}
		// categories user
		CatUserDao catUserDao = new CatUserDao();
		List<CatUser> catUserList = catUserDao.findAll();
		request.setAttribute("catUserList", catUserList);
		// user
		UserDao userDao = new UserDao();
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/error/index.jsp");
			rd.forward(request, response);
			return;
		}
		User viewsEdit = userDao.viewsID(id);
		request.setAttribute("user", viewsEdit);

		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/user/edit.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
                                            HttpSession session = request.getSession();
		if(session.getAttribute("userInfor") == null) {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		// categories user
		CatUserDao catUserDao = new CatUserDao();
		List<CatUser> catUserList = catUserDao.findAll();
		request.setAttribute("catUserList", catUserList);

		//user
		UserDao userDao = new UserDao();                                     
                                            String fullname = request.getParameter("fullname");
		String pass = request.getParameter("password");
		// get data
		int idUser = 0;
		try {
			idUser = Integer.parseInt(request.getParameter("idUser"));
		} catch (NumberFormatException e) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/error/index.jsp");
			rd.forward(request, response);
			return;
		}
		
		int catUser = 0;
		try {
			catUser = Integer.parseInt(request.getParameter("catUser"));
		} catch (NumberFormatException e) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/error/index.jsp");
			rd.forward(request, response);
			return;
		}
		// L??u v??o ?????i t?????ng
		User user = new User(idUser, fullname, new CatUser(catUser));
		request.setAttribute("user", user);
		// check validate
		if("".equals(fullname)) {
			request.setAttribute("err", "Vui l??ng nh???p h??? v?? t??n");
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/user/edit.jsp");
			rd.forward(request, response);
			return;
		}else {
			if("".equals(pass)) {
				request.setAttribute("err", "??...Ch??a nh???p m???t kh???u");
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/user/edit.jsp");
				rd.forward(request, response);
				return;
			}else if(pass.length() < 2){
				request.setAttribute("err", "Ng???n qu??..Nh???p th??m ??i");
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/user/edit.jsp");
				rd.forward(request, response);
				return;
			}
		}
		String password = StringUtil.md5(pass);
		
		if (catUser < 1 ) {
			request.setAttribute("err", "Vui l??ng ch???n lo???i t??i kho???n");
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/user/edit.jsp");
			rd.forward(request, response);
			return;
		}
                
		// th??m v??o database
                                            //set data
		request.setAttribute("fullname", fullname);
		request.setAttribute("catUser", catUser);  
                                            CatUser cat = new CatUser(catUser);
//		User user = new User(fullname,password, cat);
		int edit = userDao.edit(user);
		if(edit > 0) {
			response.sendRedirect(request.getContextPath()+"/admin/user?msg=OK");
			return;
		}
                
	}
protected void doRun(HttpServletRequest request, HttpServletResponse response)
			throws ServletException,IOException {
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/user/edit.jsp");
			rd.forward(request, response);
			return;
}
}
