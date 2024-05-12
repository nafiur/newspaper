<header class="th-header header-layout1">
    <div class="header-top">
        <div class="container">
            <div class="row justify-content-center justify-content-lg-between align-items-center gy-2">
                <div class="col-auto d-none d-lg-block">
                    <div class="header-links">
                        <ul>
                            <li><i class="fal fa-calendar-days"></i><a href="blog.html">20 August, 2023</a></li>
                            <li><a href="about.html">Privacy Policy</a></li>
                            <li><a href="about.html">Terms & Conditions</a></li>
                            <li><a class="theme-toggler" href="#"><span class="dark"><i class="fas fa-moon"></i>Dark Mode</span> <span class="light"><i class="fas fa-sun-bright"></i>Light Mode</span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-auto">
                    <div class="header-links">
                        <ul>
                            @if (Route::has('login'))
                            @auth
                            <li class="d-none d-sm-inline-block"><i class="far fa-user"></i><a href="{{ route('dashboard') }}">Dashboard</a></li>
                            @else
                            <li class="d-none d-sm-inline-block"><i class="far fa-user"></i><a href="{{ route('login') }}">Login</a></li>
                            <li class="d-none d-sm-inline-block"><i class="far fa-user"></i><a href="{{ route('register') }}">register</a></li>
                            @endauth
                            @endif

                            <li>
                                <div class="social-links"><a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a> <a href="https://www.twitter.com/"><i class="fab fa-twitter"></i></a> <a href="https://www.linkedin.com/"><i class="fab fa-linkedin-in"></i></a> <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a> <a href="https://www.youtube.com/"><i class="fab fa-youtube"></i></a></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-middle">
        <div class="container">
            <div class="row justify-content-center justify-content-lg-between align-items-center">
                <div class="col-auto d-none d-lg-block">
                    <div class="col-auto">
                        <div class="header-logo"><a href="home-newspaper.html"><img class="light-img" src="{{ asset('frontpage/assets/img/logo.svg') }}" alt="Tnews"></a><a href="home-newspaper.html"><img class="dark-img" src="{{ asset('frontpage/assets/img/logo-white.svg') }}" alt="Tnews"></a></div>
                    </div>
                </div>
                <div class="col-lg-8 text-end">
                    <div class="header-ads"><a href="https://themeforest.net/user/themeholy/portfolio"><img class="light-img" src="{{ asset('frontpage/assets/img/ads/ads_banner_1.jpg') }}" alt="ads"> <img class="dark-img" src="{{ asset('frontpage/assets/img/ads/ads_banner_1_dark.jpg') }}" alt="ads"></a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="sticky-wrapper">
        <div class="menu-area">
            <div class="container">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto d-lg-none d-block">
                        <div class="header-logo"><a href="home-newspaper.html"><img src="{{ asset('frontpage/assets/img/logo-white.svg') }}" alt="Tnews"></a></div>
                    </div>
                    <div class="col-auto">
                        <nav class="main-menu d-none d-lg-inline-block">
                            <ul>
                                <li class="menu-item-has-children"><a href="home-newspaper.html">Home</a>
                                    <ul class="sub-menu">
                                        <li><a href="home-newspaper.html">Home Newspaper</a></li>
                                        <li><a href="home-magazine.html">Home Magazine</a></li>
                                        <li><a href="home-sports.html">Home Sports</a></li>
                                        <li><a href="home-movie.html">Home Movie</a></li>
                                        <li><a href="home-gadget.html">Home Gadget</a></li>
                                    </ul>
                                </li>
                                <li><a href="about.html">About Us</a></li>
                                <li class="menu-item-has-children"><a href="#">Category</a>
                                    <ul class="sub-menu">
                                        <li><a href="category.html">Category</a></li>
                                        <li><a href="blog-three-column.html">Three Column</a></li>
                                        <li><a href="blog-three-column-sidebar.html">Three Column Sidebar</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#">Pages</a>
                                    <ul class="sub-menu">
                                        <li class="menu-item-has-children"><a href="#">Shop</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop.html">Shop</a></li>
                                                <li><a href="shop-details.html">Shop Details</a></li>
                                                <li><a href="cart.html">Cart Page</a></li>
                                                <li><a href="checkout.html">Checkout</a></li>
                                                <li><a href="wishlist.html">Wishlist</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="team.html">Team</a></li>
                                        <li><a href="author.html">Author</a></li>
                                        <li><a href="error.html">Error Page</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#">Blog</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog.html">Blog Standard</a></li>
                                        <li><a href="blog-masonary.html">Blog Masonary</a></li>
                                        <li><a href="blog-list.html">Blog List</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                        <li><a href="blog-details-video.html">Blog Details Video</a></li>
                                        <li><a href="blog-details-audio.html">Blog Details Audio</a></li>
                                        <li><a href="blog-details-nosidebar.html">Blog Details Nosidebar</a></li>
                                        <li><a href="blog-details-full-img.html">Blog Details Full Image</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-auto">
                        <div class="header-button"><button type="button" class="simple-icon searchBoxToggler"><i class="far fa-search"></i></button> <button type="button" class="simple-icon d-none d-lg-block cartToggler"><i class="far fa-cart-shopping"></i> <span class="badge">5</span></button> <a href="#" class="icon-btn sideMenuToggler d-none d-lg-block"><i class="far fa-bars"></i></a> <button type="button" class="th-menu-toggle d-block d-lg-none"><i class="far fa-bars"></i></button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
