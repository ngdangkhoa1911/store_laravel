<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Store</title>
    <link rel="stylesheet" href="{{URL::asset('public/frontend/css/style.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
</head>
<body>
    <div class="topnav" id="myTopnav">
        <a href="#">Trang chủ</a>
        <a href="#news">Khuyến mãi</a>
        <a href="#contact">Đơn hàng</a>
        <a href="#about">Thông báo</a>
        <a href="#cart">Giỏ hàng</a>
        <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
    </div>
    
    @yield('content')  

    </div>
    <footer class="footer-distributed">
 
        <div class="footer-left">
        
            <h3>Phong<span>Vũ</span></h3>
            
                <p class="footer-links">
                <a href="#">Home</a>
                ·
                <a href="#">Blog</a>
                ·
                <a href="#">Pricing</a>
                ·
                <a href="#">About</a>
                ·
                <a href="#">Faq</a>
                ·
                <a href="#">Contact</a>
                </p>
                
                <p class="footer-company-name">Nguyễn Đăng Khoa &copy; 2021</p>
        </div>
            
        <div class="footer-center">
            
            <div>
                <i class="fa fa-map-marker"></i>
                <p><span>21 Revolution Street</span> Delhi, India</p>
                </div>
                
                <div>
                <i class="fa fa-phone"></i>
                <p>+1 555 123456</p>
                </div>
                
                <div>
                <i class="fa fa-envelope"></i>
                <p><a href="mailto:support@company.com">contact@webdevtrick.com</a></p>
            </div>
            
            </div>
            
            <div class="footer-right">
            
                <p class="footer-company-about">
                <span>About the company</span>
                Web developers &amp; SEO Learner.
                </p>
            
            <div class="footer-icons">
            
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-github" aria-hidden="true"></i></a>
                
            </div>
        
        </div>
        
        </footer>
    <script src="{{URL::asset('public/frontend/js/main.js')}}"></script>
</body>
</html>