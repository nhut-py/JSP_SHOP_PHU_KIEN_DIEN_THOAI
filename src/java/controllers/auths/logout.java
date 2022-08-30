//package controllers.auths;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpSession;
//
//import daos.UserDao;
//import models.User;
//import util.FileUtil;
//import util.StringUtil;
//
///**
// *
// * @author Admin
// */
//public class logout extends HttpServlet {
//    
////    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
////            throws ServletException, IOException {
////        response.setContentType("text/html; charset=UTF-8");
////        PrintWriter out = response.getWriter();
////        try {
////            HttpSession session = request.getSession();
////            session.invalidate();
////            RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/views/public/index.jsp");
////            dispatch.forward(request, response);
////        }
////        finally{
////        out.close();
////        }
//  //  }
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		RequestDispatcher rd = request.getRequestDispatcher("views/auth/login.jsp");
//		rd.forward(request, response);
//	}
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//        response.setContentType("text/html; charset=UTF-8");       
//        PrintWriter out = response.getWriter();
//        try {
//            HttpSession session = request.getSession();
//            session.invalidate();
//            
//        }
//        finally{
//        out.close();
//        }
//    }
//}
