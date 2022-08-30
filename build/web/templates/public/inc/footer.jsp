<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<section class="section footer-widgets bg-lighter-grey">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="widget widget-info">
                    <header class="widget-heading-2">
                        <h4><i class="flaticon-help"></i>Câu hỏi?</h4>
                    </header>
                    <p>Liên hệ chúng tôi.</p>
                    <nav>
                        <ul>
                            <li><i class="flaticon-phone72">0394915710</i></li>
                            <li><a href="#"><i class="flaticon-email15"></i>nhutnhut.pip@gmail.com</a></li>
                            <li><a href="#"><i class="flaticon-google125"></i>Bạn có muốn nói chuyện trực tiếp?</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="widget widget-info">
                    <header class="widget-heading-2">
                        <h4><i class="flaticon-shield90"></i>Bảo mật</h4>
                    </header>
                    <p>Chính sách đơn giản.</p>
                    <ul class="list-2">
                        <li><a href="#">Xác minh tính xác thực</a></li>
                        <li><a href="#">Bảo vệ quyền riêng tư</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="widget widget-info">
                    <header class="widget-heading-2">
                        <h4><i class="flaticon-shipping"></i>Giao hàng</h4>
                    </header>
                    <p>Miễn phí khi mua 3 Sản phẩm.</p>
                    <ul class="list-2">
                        <li><a href="#">Bao bì đẹp</a></li>
                        <li><a href="#">Kiểm tra hàng trước khi nhận</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="widget widget-info">
                    <header class="widget-heading-2">
                        <h4><i class="flaticon-creditcard21"></i>Thanh toán</h4>
                    </header>
                    <ul class="list-cards">
                        <li><a href="#"><img src="<%=request.getContextPath()%>/templates/public/images/logo-visa.png" alt=""></a></li>
                        <li><a href="#"><img src="<%=request.getContextPath()%>/templates/public/images/logo-americanexpress.png" alt=""></a></li>
                        <li><a href="#"><img src="<%=request.getContextPath()%>/templates/public/images/logo-mastercard.png" alt=""></a></li>
                        <li><a href="#"><img src="<%=request.getContextPath()%>/templates/public/images/logo-amazon.png" alt=""></a></li>
                        <li><a href="#"><img src="<%=request.getContextPath()%>/templates/public/images/logo-paypal.png" alt=""></a></li>
                    </ul>
                </div>					
            </div>
        </div>
    </div>
</section>

<footer class="site-footer">
    <div class="container">
        <nav>
            <ul class="footer-links">
                <li><a href="<%=request.getContextPath()%>/home">Trang chủ</a></li>
                <li><a href="#">Thương hiệu</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Liên hệ</a></li>
            </ul>
        </nav>
    </div>
</footer>
</div><!-- /pageWrap -->


<!--<div class="preloader-container">
    <div id="loading-center-absolute">
        <div class="object" id="object_one"></div>
        <div class="object" id="object_two"></div>
        <div class="object" id="object_three"></div>
        <div class="object" id="object_four"></div>
        <div class="object" id="object_five"></div>
        <div class="object" id="object_six"></div>
        <div class="object" id="object_seven"></div>
        <div class="object" id="object_eight"></div>
        <div class="object" id="object_big"></div>
    </div> /loading-center-absolute 
</div> /preloader-container -->
<%@include file="/templates/public/inc/library/libraryFooter.jsp" %>
</body>
</html>