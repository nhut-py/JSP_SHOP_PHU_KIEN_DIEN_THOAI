package org.apache.jsp.views.public_;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import models.Perfume;
import models.Picture;
import java.util.List;
import models.Item;
import java.util.List;
import models.Order;
import models.User;
import util.CategoriesUtil;
import models.CatPerfume;
import java.util.ArrayList;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/templates/public/inc/header.jsp");
    _jspx_dependants.add("/templates/public/inc/library/libraryHeader.jsp");
    _jspx_dependants.add("/templates/public/inc/slide.jsp");
    _jspx_dependants.add("/templates/public/inc/footer.jsp");
    _jspx_dependants.add("/templates/public/inc/library/libraryFooter.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <!-- Mirrored from wow-themes.com/demo/html/perfume/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Aug 2015 06:47:57 GMT -->\n");
      out.write("    <head>\n");
      out.write("        ");
      out.write("\n");
      out.write("    \n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <meta name=\"description\" content=\"\">\n");
      out.write("  <meta name=\"author\" content=\"\">\n");
      out.write("  <title>Shop ph??? ki???n</title>\n");
      out.write("\n");
      out.write("  <link href=\"");
      out.print(request.getContextPath() );
      out.write("/templates/public/css/flaticon.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"");
      out.print(request.getContextPath() );
      out.write("/templates/public/css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"");
      out.print(request.getContextPath() );
      out.write("/templates/public/css/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <link href=\"");
      out.print(request.getContextPath() );
      out.write("/templates/public/css/owl.carousel.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"");
      out.print(request.getContextPath() );
      out.write("/templates/public/css/owl.transitions.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"");
      out.print(request.getContextPath() );
      out.write("/templates/public/js/rs-plugin/css/settings.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <link href=\"");
      out.print(request.getContextPath() );
      out.write("/templates/public/css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"");
      out.print(request.getContextPath() );
      out.write("/templates/public/css/color.css\" rel=\"stylesheet\">\n");
      out.write("  <!-- JQUERY -->\n");
      out.write("    <script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/templates/admin/dist/js/jquery-2.1.1.min.js\"></script>\n");
      out.write("  <!-- paypal -->\n");
      out.write("  <script src=\"https://www.paypal.com/sdk/js?client-id=sb\"></script>\n");
      out.write("\t<script>paypal.Buttons().render('body');</script>\n");
      out.write("\t <!-- paypal -->\n");
      out.write("  <!--[if lt IE 9]>\n");
      out.write("    <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("    <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("  <![endif]-->");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"pageWrap\">\n");
      out.write("\n");
      out.write("            ");

                if (session.getAttribute("userInfor") != null) {
                    User userInfor = (User) session.getAttribute("userInfor");
            
      out.write("\n");
      out.write("            <div class=\"tp-bar\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <ul class=\"tp-links\">\n");
      out.write("                        <li>\n");
      out.write("                            <span class=\"dropBox-btn\">Xin ch??o &nbsp; ");
      out.print(userInfor.getFullname());
      out.write("</span>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <span><a href=\"");
      out.print(request.getContextPath());
      out.write("/views/auth/logout.jsp\">????ng xu???t</a></span>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <!-- /tp-links -->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");

            } else {
            
      out.write("\n");
      out.write("            <div class=\"tp-bar\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <ul class=\"tp-links\">\n");
      out.write("                        <li><span class=\"dropBox-btn\">????ng nh???p <i\n");
      out.write("                                    class=\"caret caret-cut\"></i></span>\n");
      out.write("                            <div class=\"dropBox\">\n");
      out.write("                                <div class=\"box-section\">\n");
      out.write("                                    <h6>B???n ???? c?? t??i kho???n - ????ng nh???p</h6>\n");
      out.write("                                    <form class=\"accounts-form clearfix\" method=\"post\" action=\"");
      out.print(request.getContextPath());
      out.write("/login\">\n");
      out.write("                                        <div class=\"form-left\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" name=\"username\"\n");
      out.write("                                                       placeholder=\"Email Address\" required/>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input type=\"password\" class=\"form-control\" name=\"password\"\n");
      out.write("                                                       placeholder=\"Password\" required/>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <input type=\"submit\" class=\"btn btn-default text-uppercase\"\n");
      out.write("                                               value=\"????ng nh???p\"/>\n");
      out.write("                                    </form>\n");
      out.write("                                    <!-- /accounts-form -->\n");
      out.write("                                    <p class=\"help-block\">\n");
      out.write("                                        <a href=\"#\">Qu??n t??i kho???n?</a>\n");
      out.write("                                    </p>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /box-section -->\n");
      out.write("                                <div class=\"box-section\">\n");
      out.write("                                    <h6>Ch??a c?? t??i kho???n - ????ng k??</h6>\n");
      out.write("                                    <ul class=\"list-1\">\n");
      out.write("                                        <li>T??i mu???n tr??? th??nh kh??ch h??ng vip</li>\n");
      out.write("                                        <li>T??i mu???n thanh to??n nhanh</li>\n");
      out.write("                                    </ul>\n");
      out.write("                                    <form class=\"accounts-form clearfix\" method=\"post\" action=\"");
      out.print(request.getContextPath());
      out.write("/signup\">\n");
      out.write("                                        <div class=\"form-left\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" placeholder=\"H??? v?? t??n\" name=\"fullname\"\n");
      out.write("                                                       required>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" placeholder=\"Email\" name=\"username\"\n");
      out.write("                                                       required>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input type=\"password\" class=\"form-control\" placeholder=\"m???t kh???u\" name=\"password\"\n");
      out.write("                                                       required>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <input type=\"submit\" class=\"btn btn-default text-uppercase\"\n");
      out.write("                                               value=\"????ng k??\">\n");
      out.write("                                    </form>\n");
      out.write("                                    <!-- /accounts-form -->\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /box-section -->\n");
      out.write("                            </div>\n");
      out.write("                            <!-- /dropBox --></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <!-- /tp-links -->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- /tp-bar -->\n");
      out.write("\n");
      out.write("            <div class=\"main-bar\">\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <a href=\"index-2.html\"><img\n");
      out.write("                            src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/images/logi.png\"\n");
      out.write("                            alt=\"perfume\"></a>\n");
      out.write("                </div>\n");
      out.write("                <!-- /logo -->\n");
      out.write("                <div class=\"user-controls-bar\">\n");
      out.write("                    <ul class=\"user-controls\">\n");
      out.write("                        <li><span class=\"site-search-btn dropBox-btn\"><i\n");
      out.write("                                    class=\"flaticon-magnifier56\"></i></span>\n");
      out.write("                            <div class=\"dropBox\">\n");
      out.write("                                <div class=\"box-section\">\n");
      out.write("                                    <form class=\"accounts-form clearfix\">\n");
      out.write("                                        <div class=\"form-left\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input type=\"search\" class=\"form-control\"\n");
      out.write("                                                       placeholder=\"Search Key\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <input type=\"submit\" class=\"btn btn-default text-uppercase\"\n");
      out.write("                                               value=\"T??m ki???m\">\n");
      out.write("                                    </form>\n");
      out.write("                                    <!-- /accounts-form -->\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /box-section -->\n");
      out.write("                            </div>\n");
      out.write("                            <!-- /dropBox --></li>\n");
      out.write("                            ");

                                if (session.getAttribute("order") != null) {
                                    Order order = (Order) session.getAttribute("order");
                                    List<Item> listItem = (List<Item>) order.getItem();
                                    if (listItem.size() > 0) {
                            
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <span class=\"cart-btn dropBox-btn\">\n");
      out.write("                                <i class=\"flaticon-shopping191\"></i>\n");
      out.write("                                ");

                                    int total = 0;
                                    for (Item quantity : listItem) {
                                        int totalFinal = 0;
                                        total += quantity.getQuantity();
                                        totalFinal += total;
                                
      out.write("\n");
      out.write("                                <span class=\"badge\">");
      out.print(totalFinal);
      out.write("</span>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                            </span>\n");
      out.write("                            <div class=\"dropBox\">\n");
      out.write("                                <div class=\"box-section\">\n");
      out.write("                                    <ul class=\"cart-info-list\">\n");
      out.write("                                        ");

                                            for (Item item : listItem) {
                                                Long tong = 0L;
                                                int quanity = item.getQuantity();
                                                Long price = item.getProduct().getMoney();
                                                tong = quanity * price;
                                        
      out.write("\n");
      out.write("                                        <li class=\"cart-item\">\n");
      out.write("                                            <div class=\"cart-item-bx\">\n");
      out.write("                                                <figure>\n");
      out.write("                                                    <img\n");
      out.write("                                                        src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/images/resource/img-1.jpg\"\n");
      out.write("                                                        alt=\"image\">\n");
      out.write("                                                </figure>\n");
      out.write("                                                <div class=\"text\">\n");
      out.write("                                                    <h6>\n");
      out.write("                                                        <a href=\"#\">");
      out.print(item.getProduct().getPerfumes());
      out.write("</a>\n");
      out.write("                                                    </h6>\n");
      out.write("                                                    <p>S??? L?????ng: ");
      out.print(item.getQuantity());
      out.write("</p>\n");
      out.write("                                                    <p>");
      out.print(item.getProduct().getCapacity());
      out.write("</p>\n");
      out.write("                                                    <p>");
      out.print(price);
      out.write(" ??</p>\n");
      out.write("                                                    <p class=\"tot\">");
      out.print(tong);
      out.write(" ??</p>\n");
      out.write("                                                </div>\n");
      out.write("                                                <button type=\"button\" class=\"close\">&times;</button>\n");
      out.write("                                            </div>\n");
      out.write("                                            <!-- /cart-item-bx -->\n");
      out.write("                                        </li>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                    <!--/ cart-info-list -->\n");
      out.write("                                    <a href=\"");
      out.print(request.getContextPath());
      out.write("/order\"\n");
      out.write("                                       class=\"btn btn-dark btn-block dismiss-button\">Gi??? h??ng</a>\n");
      out.write("                                    <p>Giao h??ng mi???n ph?? khi mua t??? tr??n 3 s???n ph???m</p>\n");
      out.write("                                </div>\n");
      out.write("                   \n");
      out.write("                            </div>\n");
      out.write("                            <!-- /dropBox --></li>\n");
      out.write("                            ");

                                    }
                                }
                            
      out.write("\n");
      out.write("\n");
      out.write("                        <li class=\"toggle-menu\">\n");
      out.write("                            <button data-target=\".navbar-collapse\" data-toggle=\"collapse\"\n");
      out.write("                                    class=\"navbar-toggle\" type=\"button\">\n");
      out.write("                                <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span\n");
      out.write("                                    class=\"icon-bar\"></span>\n");
      out.write("                            </button>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <!-- /user-controls -->\n");
      out.write("                </div>\n");
      out.write("                <!-- /user-controls -->\n");
      out.write("\n");
      out.write("                <div class=\"main-nav-bar\">\n");
      out.write("                    <nav class=\"navbar-collapse collapse\">\n");
      out.write("                        <ul class=\"main-nav\">\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/home\">Trang ch???</a></li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"");
      out.print(request.getContextPath());
      out.write("/home\">H??ng</a>\n");
      out.write("                                <ul>\n");
      out.write("                                    ");

                                        if (request.getAttribute("catPFList") != null) {
                                            ArrayList<CatPerfume> catPFList = (ArrayList<CatPerfume>) request.getAttribute("catPFList");
                                            if (catPFList.size() > 0) {
                                                // l???y to??n b??? list, ki???m tra n???u id cha = 0 (c???p cao nh???t) => view ra
                                                for (CatPerfume cat : catPFList) {
                                                    // ki???m tra
                                                    if (cat.getParrent_id() == 0) {
                                    
      out.write("\n");
      out.write("                                    <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/cat?id=");
      out.print(cat.getId());
      out.write('"');
      out.write('>');
      out.print(cat.getCatPerfume());
      out.write("</a>\n");
      out.write("                                        ");

                                                    CategoriesUtil.showBrand(cat.getId(), request, out);
                                                }
                                            }
                                        
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("<!--                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/blog\">Blog</a></li>\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/contact\">Li??n\n");
      out.write("                                    h???</a></li>-->\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                    ");

                            }
                        }
                    
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- /main-nav-bar -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /main-bar -->");
      out.write("\n");
      out.write("<section class=\"section\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        ");
        if (request.getAttribute("perCatList") != null) {
                List<Perfume> perCatList = (List<Perfume>) request.getAttribute("perCatList");
                if (perCatList.size() > 0) {
        
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            ");

                for (Perfume perCat : perCatList) {
            
      out.write("\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("                <div class=\"text-center\">\n");
      out.write("                    <div class=\"ad-box\">\n");
      out.write("                        <div class=\"ad-box-text\">\n");
      out.write("                            <p class=\"text-left\">");
      out.print(perCat.getCatPer().getCatPerfume());
      out.write("</p>\n");
      out.write("                            <h4>");
      out.print(perCat.getPerfumes());
      out.write("</h4>\n");
      out.write("                            <p class=\"text-right\">Khuy???n m??i</p>\n");
      out.write("                            <span class=\"tick\"><i class=\"flaticon-arrowhead7\"></i></span>\n");
      out.write("                        </div><!-- /ad-box-inner -->\n");
      out.write("                        ");

                            if (request.getAttribute("picPerCat" + perCat.getId()) != null) {
                                Picture picPerCat = (Picture) request.getAttribute("picPerCat" + perCat.getId());
                        
      out.write("\n");
      out.write("                        <figure>\n");
      out.write("                            <img src=\"");
      out.print(request.getContextPath());
      out.write("/uploads/images/product/");
      out.print(picPerCat.getPicture());
      out.write("\"alt=\"image\"style=\"width:200px;height:200px;\">\n");
      out.write("                        </figure>\n");
      out.write("                        ");

                        } else {
                        
      out.write("\n");
      out.write("                        <figure>\n");
      out.write("                            <img src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/images/noimage.gif \"alt=\"image\"style=\"width:200px;height:200px;\">\n");
      out.write("                        </figure>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                        <a href=\"");
      out.print(request.getContextPath());
      out.write("/productsingle?id=");
      out.print(perCat.getId());
      out.write("\"></a>\n");
      out.write("                    </div><!-- /ad-box -->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("        ");

                }
            }
        
      out.write("\n");
      out.write("        <div class=\"features-list-box\">\n");
      out.write("            <ul class=\"feautes-list\">\n");
      out.write("                <li><a href=\"javascript:void(0)\">Gi?? Khuy???n m??i</a></li>\n");
      out.write("                <li><a href=\"javascript:void(0)\">??u ????i gi??nh ri??ng b???n</a></li>\n");
      out.write("                <li><a href=\"javascript:void(0)\">Th????ng hi???u ?????c quy???n</a></li>\n");
      out.write("                <li><a href=\"javascript:void(0)\">?????t h??ng l?? c??</a></li>\n");
      out.write("                <li><a href=\"javascript:void(0)\">Ship h??ng nhanh</a></li>\n");
      out.write("            </ul><!-- /features-list -->\n");
      out.write("        </div><!-- /features-list-box -->\n");
      out.write("        ");

            if (request.getAttribute("perfumeList") != null) {
                List<Perfume> perfumeList = (List<Perfume>) request.getAttribute("perfumeList");
                if (perfumeList.size() > 0) {
        
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            ");

                for (Perfume objEVA : perfumeList) {
            
      out.write("\n");
      out.write("            <div class=\"col-sm-6 col-md-3\">\n");
      out.write("                <div class=\"thumbnail thumbnail-product\">\n");
      out.write("                    ");

                        if (request.getAttribute("pic" + objEVA.getId()) != null) {
                            Picture pic = (Picture) request.getAttribute("pic" + objEVA.getId());
                            String picture = pic.getPicture();
                    
      out.write("\n");
      out.write("                    <figure class=\"image-zoom\">\n");
      out.write("                        <img src=\"");
      out.print(request.getContextPath());
      out.write("/uploads/images/product/");
      out.print(picture);
      out.write("\" alt=\"image\" style=\"width:200px;height:250px;\">\n");
      out.write("                    </figure>\n");
      out.write("                    ");

                    } else {
                    
      out.write("\n");
      out.write("                    <figure class=\"image\">\n");
      out.write("                        <img src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/images/noimage.gif\" alt=\"image\">\n");
      out.write("                    </figure>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"caption text-center\">\n");
      out.write("                        <h5><a href=\"");
      out.print(request.getContextPath());
      out.write("/productsingle?id=");
      out.print(objEVA.getId());
      out.write('"');
      out.write('>');
      out.print(objEVA.getPerfumes());
      out.write("</a></h5>\n");
      out.write("                        <div class=\"rating-star\">\n");
      out.write("                            <i class=\"flaticon-favourites7 selected\"></i>\n");
      out.write("                            <i class=\"flaticon-favourites7 selected\"></i>\n");
      out.write("                            <i class=\"flaticon-favourites7 selected\"></i>\n");
      out.write("                            <i class=\"flaticon-favourites7\"></i>\n");
      out.write("                            <i class=\"flaticon-favourites7\"></i>\n");
      out.write("                        </div><!-- /rating-star -->\n");
      out.write("                        <p class=\"prod-price text-primary\">");
      out.print(objEVA.getMoney());
      out.write(" ??</p>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class = \"col-md-5\">\n");
      out.write("                                <button idPro=\"");
      out.print(objEVA.getId());
      out.write("\" id=\"idpro-order\"type=\"button\" class=\"btn btn-info idpro-order\">\n");
      out.write("                                    Gi??? h??ng\n");
      out.write("                                </button>\n");
      out.write("                            </div>\n");
      out.write("                            <div class = \"col-md-5\">\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success\">\n");
      out.write("                                    <a href=\"");
      out.print(request.getContextPath());
      out.write("/addtocart?id=");
      out.print(objEVA.getId());
      out.write("\">Mua ngay</a>\n");
      out.write("                                </button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div><!-- /thumbail -->\n");
      out.write("            </div>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("        ");

                }
            }
        

            if (request.getAttribute("perfumeListView") != null) {
                List<Perfume> perfumeListView = (List<Perfume>) request.getAttribute("perfumeListView");
                if (perfumeListView.size() > 0) {
        
      out.write("\n");
      out.write("        <header class=\"heading\">\n");
      out.write("            <span class=\"caro-prev caro-featured-prev\"><i class=\"flaticon-arrowhead7\"></i></span>\n");
      out.write("            <span class=\"caro-next caro-featured-next\"><i class=\"flaticon-arrow487\"></i></span>\n");
      out.write("            <h4>S???n ph???m n???i b???t</h4>\n");
      out.write("        </header>\n");
      out.write("        ");

            for (Perfume objPFLView : perfumeListView) {
        
      out.write("\n");
      out.write("        <div class=\"carousel-single owl-carousel\" data-trans=\"backSlide\" data-btn-next=\"caro-featured-next\" data-btn-prev=\"caro-featured-prev\">\n");
      out.write("            <div class=\"item\">\n");
      out.write("                <div class=\"featured-box\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-5\">\n");
      out.write("                            ");

                                if (request.getAttribute("picView" + objPFLView.getId()) != null) {
                                    Picture picView = (Picture) request.getAttribute("picView" + objPFLView.getId());
                                    String picV = picView.getPicture();
                            
      out.write("\n");
      out.write("                            <figure class=\"image\">\n");
      out.write("                                <img src=\"../../templates/public/images/iphone14.jpg\" alt=\"image\">\n");
      out.write("                                ");
      out.write("\n");
      out.write("                            </figure>\n");
      out.write("                            ");

                            } else {
                            
      out.write("\n");
      out.write("                            <figure class=\"image\">\n");
      out.write("                                <img src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/images/iphone14.jpg\" alt=\"image\">\n");
      out.write("                                <!--/templates/public/images/noimage.gif-->\n");
      out.write("                            </figure>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-7\">\n");
      out.write("                            <div class=\"text\">\n");
      out.write("                                <p>H??ng: <a href=\"product-single.html\" class=\"text-primary\">");
      out.print(objPFLView.getBrand());
      out.write("</a></p>\n");
      out.write("                                <h4>T??n s???n ph???m: ");
      out.print(objPFLView.getPerfumes());
      out.write("</h4>\n");
      out.write("                                <p><a href=\"");
      out.print(request.getContextPath());
      out.write("/productsingle?id=");
      out.print(objPFLView.getId());
      out.write("\" class=\"read-more text-primary\">Xem th??ng tin</a></p>\n");
      out.write("                                <p><a href=\"#info-1\" data-toggle=\"collapse\">Khi n??o t??i m???i nh???n ???????c h??ng, n???u t??i ?????t ngay b??y gi???? <i class=\"flaticon-small63\"></i></a></p>\n");
      out.write("                                <div id=\"info-1\" class=\"collapse in\">\n");
      out.write("                                    <p>Sau 2 ng??y s??? c?? h??ng</p>\n");
      out.write("                                    <p>Th???i gian ch??? l?? g???n ????ng, ?????c t??nh theo th???i gian giao h??ng tr?????c ???? c???a c??c c??ng ty v???n chuy???n.</p>\n");
      out.write("                                    <a href=\"javascript:void(0)\" idPro=\"");
      out.print(objPFLView.getId());
      out.write("\" class=\"btn btn-default idpro-order\">Th??m v??o gi??? h??ng</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div><!-- /featured-box -->\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");

            }
        

                }
            }
        
      out.write("\n");
      out.write("    </div><!-- /container -->\n");
      out.write("</section><!-- /section -->\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("    document.getElementById(\"home\").classList.add('active-menu');\n");
      out.write("</script>\n");
      out.write("<script>\n");
      out.write("    $(document).on(\"click\", \".idpro-order\", (function () {\n");
      out.write("        var idpro = $(this).attr(\"idpro\");\n");
      out.write("        //l???y d??? li??u\n");
      out.write("        swal.fire({\n");
      out.write("            title: 'Th??m s???n ph???m v??o gi??? h??ng',\n");
      out.write("            text: \"D??? li???u s??? ???????c c???p nh???t!\",\n");
      out.write("            icon: 'warning',\n");
      out.write("            padding: '3em',\n");
      out.write("            showCancelButton: true,\n");
      out.write("            confirmButtonColor: '#3085d6',\n");
      out.write("            cancelButtonColor: '#d33',\n");
      out.write("            confirmButtonText: '?????ng ??!',\n");
      out.write("            cancelButtonText: 'H???y b???',\n");
      out.write("            reverseButtons: true,\n");
      out.write("            customClass: null\n");
      out.write("        }).then((result) => {\n");
      out.write("            if (result.value) {\n");
      out.write("                $.ajax({\n");
      out.write("                    async: false,\n");
      out.write("                    type: \"GET\",\n");
      out.write("                    url: \"");
      out.print(request.getContextPath());
      out.write("/addtocart\",\n");
      out.write("                    data: {id: idpro},\n");
      out.write("                    success: function (data) {\n");
      out.write("                        if (data == false) {\n");
      out.write("                            Swal.fire(\n");
      out.write("                                    'Th??ng B??o!',\n");
      out.write("                                    'Kh??ng th??nh c??ng.',\n");
      out.write("                                    'danger'\n");
      out.write("                                    ).then(function () {\n");
      out.write("                                location.reload();\n");
      out.write("                            })\n");
      out.write("                        } else {\n");
      out.write("                            Swal.fire(\n");
      out.write("                                    'Th??nh c??ng!',\n");
      out.write("                                    'Th??m v??o gi??? h??ng th??nh c??ng.',\n");
      out.write("                                    'success'\n");
      out.write("                                    ).then(function () {\n");
      out.write("                                location.reload();\n");
      out.write("                            })\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    error: function (xhr, ajaxOptions, thrownError) {\n");
      out.write("                        Swal.fire(\n");
      out.write("                                'Th??ng B??o!',\n");
      out.write("                                'Thao t??c kh??ng th??? th???c hi???n.',\n");
      out.write("                                'danger'\n");
      out.write("                                ).then(function () {\n");
      out.write("                            location.reload();\n");
      out.write("                        })\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            } else if (result.dismiss === Swal.DismissReason.cancel) {\n");
      out.write("                swal.fire(\n");
      out.write("                        'Th???t b???i',\n");
      out.write("                        'B???n Ch??a th???c hi???n thao t??c n??y',\n");
      out.write("                        'error'\n");
      out.write("                        )\n");
      out.write("            }\n");
      out.write("        })\n");
      out.write("    }))\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<section class=\"section footer-widgets bg-lighter-grey\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("                <div class=\"widget widget-info\">\n");
      out.write("                    <header class=\"widget-heading-2\">\n");
      out.write("                        <h4><i class=\"flaticon-help\"></i>C??u h???i?</h4>\n");
      out.write("                    </header>\n");
      out.write("                    <p>Li??n h??? ch??ng t??i.</p>\n");
      out.write("                    <nav>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><i class=\"flaticon-phone72\">0394915710</i></li>\n");
      out.write("                            <li><a href=\"#\"><i class=\"flaticon-email15\"></i>nhutnhut.pip@gmail.com</a></li>\n");
      out.write("                            <li><a href=\"#\"><i class=\"flaticon-google125\"></i>B???n c?? mu???n n??i chuy???n tr???c ti???p?</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("                <div class=\"widget widget-info\">\n");
      out.write("                    <header class=\"widget-heading-2\">\n");
      out.write("                        <h4><i class=\"flaticon-shield90\"></i>B???o m???t</h4>\n");
      out.write("                    </header>\n");
      out.write("                    <p>Ch??nh s??ch ????n gi???n.</p>\n");
      out.write("                    <ul class=\"list-2\">\n");
      out.write("                        <li><a href=\"#\">X??c minh t??nh x??c th???c</a></li>\n");
      out.write("                        <li><a href=\"#\">B???o v??? quy???n ri??ng t??</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("                <div class=\"widget widget-info\">\n");
      out.write("                    <header class=\"widget-heading-2\">\n");
      out.write("                        <h4><i class=\"flaticon-shipping\"></i>Giao h??ng</h4>\n");
      out.write("                    </header>\n");
      out.write("                    <p>Mi???n ph?? khi mua 3 S???n ph???m.</p>\n");
      out.write("                    <ul class=\"list-2\">\n");
      out.write("                        <li><a href=\"#\">Bao b?? ?????p</a></li>\n");
      out.write("                        <li><a href=\"#\">Ki???m tra h??ng tr?????c khi nh???n</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("                <div class=\"widget widget-info\">\n");
      out.write("                    <header class=\"widget-heading-2\">\n");
      out.write("                        <h4><i class=\"flaticon-creditcard21\"></i>Thanh to??n</h4>\n");
      out.write("                    </header>\n");
      out.write("                    <ul class=\"list-cards\">\n");
      out.write("                        <li><a href=\"#\"><img src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/images/logo-visa.png\" alt=\"\"></a></li>\n");
      out.write("                        <li><a href=\"#\"><img src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/images/logo-americanexpress.png\" alt=\"\"></a></li>\n");
      out.write("                        <li><a href=\"#\"><img src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/images/logo-mastercard.png\" alt=\"\"></a></li>\n");
      out.write("                        <li><a href=\"#\"><img src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/images/logo-amazon.png\" alt=\"\"></a></li>\n");
      out.write("                        <li><a href=\"#\"><img src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/images/logo-paypal.png\" alt=\"\"></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\t\t\t\t\t\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<footer class=\"site-footer\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <nav>\n");
      out.write("            <ul class=\"footer-links\">\n");
      out.write("                <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/home\">Trang ch???</a></li>\n");
      out.write("                <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/thuong-hieu\">Th????ng hi???u</a></li>\n");
      out.write("                <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/blog\">Blog</a></li>\n");
      out.write("                <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/lien-he\">Li??n h???</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
      out.write("</footer>\n");
      out.write("</div><!-- /pageWrap -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--<div class=\"preloader-container\">\n");
      out.write("    <div id=\"loading-center-absolute\">\n");
      out.write("        <div class=\"object\" id=\"object_one\"></div>\n");
      out.write("        <div class=\"object\" id=\"object_two\"></div>\n");
      out.write("        <div class=\"object\" id=\"object_three\"></div>\n");
      out.write("        <div class=\"object\" id=\"object_four\"></div>\n");
      out.write("        <div class=\"object\" id=\"object_five\"></div>\n");
      out.write("        <div class=\"object\" id=\"object_six\"></div>\n");
      out.write("        <div class=\"object\" id=\"object_seven\"></div>\n");
      out.write("        <div class=\"object\" id=\"object_eight\"></div>\n");
      out.write("        <div class=\"object\" id=\"object_big\"></div>\n");
      out.write("    </div> /loading-center-absolute \n");
      out.write("</div> /preloader-container -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- JavaScript\n");
      out.write("================================================== -->\n");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/js/plugins.js\"></script>\n");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/js/script.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/js/ie10-viewport-bug-workaround.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- revolution slider plugin -->\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/js/rs-plugin/js/jquery.themepunch.tools.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/templates/public/js/rs-plugin/js/jquery.themepunch.revolution.min.js\"></script>\n");
      out.write("<!-- sweetalert -->\n");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/templates/admin/dist/node_modules/sweetalert2/dist/sweetalert2.all.min.js\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("    var revapi;\n");
      out.write("\n");
      out.write("    jQuery(document).ready(function () {\n");
      out.write("\n");
      out.write("        revapi = jQuery('.tp-banner').revolution({\n");
      out.write("\n");
      out.write("            dottedOverlay: \"none\",\n");
      out.write("            delay: 9000,\n");
      out.write("            startwidth: 1170,\n");
      out.write("            startheight: 700,\n");
      out.write("            hideThumbs: 200,\n");
      out.write("\n");
      out.write("            thumbWidth: 100,\n");
      out.write("            thumbHeight: 50,\n");
      out.write("            thumbAmount: 5,\n");
      out.write("\n");
      out.write("            navigationType: \"none\",\n");
      out.write("            navigationArrows: \"solo\",\n");
      out.write("            navigationStyle: \"\",\n");
      out.write("\n");
      out.write("            touchenabled: \"on\",\n");
      out.write("            onHoverStop: \"on\",\n");
      out.write("\n");
      out.write("            swipe_velocity: 0.7,\n");
      out.write("            swipe_min_touches: 1,\n");
      out.write("            swipe_max_touches: 1,\n");
      out.write("            drag_block_vertical: false,\n");
      out.write("\n");
      out.write("            keyboardNavigation: \"on\",\n");
      out.write("\n");
      out.write("            navigationHAlign: \"center\",\n");
      out.write("            navigationVAlign: \"bottom\",\n");
      out.write("            navigationHOffset: 0,\n");
      out.write("            navigationVOffset: 20,\n");
      out.write("\n");
      out.write("            soloArrowLeftHalign: \"left\",\n");
      out.write("            soloArrowLeftValign: \"center\",\n");
      out.write("            soloArrowLeftHOffset: 20,\n");
      out.write("            soloArrowLeftVOffset: 0,\n");
      out.write("\n");
      out.write("            soloArrowRightHalign: \"right\",\n");
      out.write("            soloArrowRightValign: \"center\",\n");
      out.write("            soloArrowRightHOffset: 20,\n");
      out.write("            soloArrowRightVOffset: 0,\n");
      out.write("\n");
      out.write("            shadow: 0,\n");
      out.write("            fullWidth: \"on\",\n");
      out.write("            fullScreen: \"off\",\n");
      out.write("\n");
      out.write("            spinner: \"spinner0\",\n");
      out.write("\n");
      out.write("            stopLoop: \"off\",\n");
      out.write("            stopAfterLoops: -1,\n");
      out.write("            stopAtSlide: -1,\n");
      out.write("\n");
      out.write("            shuffle: \"off\",\n");
      out.write("\n");
      out.write("            forceFullWidth: \"off\",\n");
      out.write("            fullScreenAlignForce: \"off\",\n");
      out.write("            minFullScreenHeight: \"400\",\n");
      out.write("\n");
      out.write("            hideThumbsOnMobile: \"off\",\n");
      out.write("            hideNavDelayOnMobile: 1500,\n");
      out.write("            hideBulletsOnMobile: \"off\",\n");
      out.write("            hideArrowsOnMobile: \"off\",\n");
      out.write("            hideThumbsUnderResolution: 0,\n");
      out.write("\n");
      out.write("            hideSliderAtLimit: 0,\n");
      out.write("            hideCaptionAtLimit: 0,\n");
      out.write("            hideAllCaptionAtLilmit: 0,\n");
      out.write("            startWithSlide: 0,\n");
      out.write("            fullScreenOffsetContainer: \"\"\n");
      out.write("\n");
      out.write("        });\n");
      out.write("\n");
      out.write("    });\n");
      out.write("\n");
      out.write("</script> ");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
