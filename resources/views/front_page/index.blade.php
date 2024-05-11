<!doctype html>
<html class="no-js" data-theme="light" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tnews - News & Magazine HTML Template - Home Newspaper</title>
    <meta name="author" content="Tnews">
    <meta name="description" content="Tnews - News & Magazine HTML Template">
    <meta name="keywords" content="Tnews - News & Magazine HTML Template">
    <meta name="robots" content="INDEX,FOLLOW">
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="57x57" href="{{ asset('frontpage/assets/img/favicons/apple-icon-57x57.png') }}">
    <link rel="apple-touch-icon" sizes="60x60" href="{{ asset('frontpage/assets/img/favicons/apple-icon-60x60.png') }}">
    <link rel="apple-touch-icon" sizes="72x72" href="{{ asset('frontpage/assets/img/favicons/apple-icon-72x72.png') }}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('frontpage/assets/img/favicons/apple-icon-76x76.png') }}">
    <link rel="apple-touch-icon" sizes="114x114" href="{{ asset('frontpage/assets/img/favicons/apple-icon-114x114.png') }}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{ asset('frontpage/assets/img/favicons/apple-icon-120x120.png') }}">
    <link rel="apple-touch-icon" sizes="144x144" href="{{ asset('frontpage/assets/img/favicons/apple-icon-144x144.png') }}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{ asset('frontpage/assets/img/favicons/apple-icon-152x152.png') }}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('frontpage/assets/img/favicons/apple-icon-180x180.png') }}">
    <link rel="icon" type="image/png" sizes="192x192" href="{{ asset('frontpage/assets/img/favicons/android-icon-192x192.png') }}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('frontpage/assets/img/favicons/favicon-32x32.png') }}">
    <link rel="icon" type="image/png" sizes="96x96" href="{{ asset('frontpage/assets/img/favicons/favicon-96x96.png') }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('frontpage/assets/img/favicons/favicon-16x16.png') }}">
    <link rel="manifest" href="{{ asset('frontpage/assets/img/favicons/manifest.json') }}">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="{{ asset('frontpage/assets/img/favicons/ms-icon-144x144.png') }}">
    <meta name="theme-color" content="#ffffff">
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@300;400;500;600;700;800;900&amp;family=Poppins:wght@100;200;300;400;500;600;700;800&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('frontpage/assets/css/app.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontpage/assets/css/fontawesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontpage/assets/css/style.css') }}">
</head>
<body>
    {{-- <div class="preloader"><button class="th-btn preloaderCls">Cancel Preloader</button>
        <div class="preloader-inner"><span class="loader"></span></div>
    </div> --}}
    {{-- <div class="popup-subscribe-area">
        <div class="container">
            <div class="popup-subscribe">
                <div class="box-img"><img src="{{ asset('frontpage/assets/img/normal/popup_subscribe.jpg') }}" alt="Image"></div>
    <div class="box-content"><button class="simple-icon popupClose"><i class="fal fa-times"></i></button>
        <div class="widget newsletter-widget footer-widget">
            <h3 class="widget_title">Subscribe</h3>
            <p class="footer-text">Sign up to get update about us. Don't be hasitate your email is safe.</p>
            <form class="newsletter-form"><input class="form-control" type="email" placeholder="Enter Email" required=""> <button type="submit" class="icon-btn"><i class="fa-solid fa-paper-plane"></i></button></form>
            <div class="mt-30"><input type="checkbox" id="destroyPopup"> <label for="destroyPopup">I don't want to see this popup again.</label></div>
        </div>
    </div>
    </div>
    </div>
    </div> --}}
    <div class="sidemenu-wrapper cart-side-menu d-none d-lg-block">
        <div class="sidemenu-content"><button class="closeButton sideMenuCls"><i class="far fa-times"></i></button>
            <div class="widget woocommerce widget_shopping_cart">
                <h3 class="widget_title">Shopping cart</h3>
                <div class="widget_shopping_cart_content">
                    <ul class="woocommerce-mini-cart cart_list product_list_widget">
                        <li class="woocommerce-mini-cart-item mini_cart_item"><a href="#" class="remove remove_from_cart_button"><i class="far fa-times"></i></a> <a href="#"><img src="{{ asset('frontpage/assets/img/product/product_thumb_1_1.png') }}" alt="Cart Image">Car Safety Seat</a> <span class="quantity">1 × <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>940.00</span></span></li>
                        <li class="woocommerce-mini-cart-item mini_cart_item"><a href="#" class="remove remove_from_cart_button"><i class="far fa-times"></i></a> <a href="#"><img src="{{ asset('frontpage/assets/img/product/product_thumb_1_2.png') }}" alt="Cart Image">Bus Safety Hammer</a> <span class="quantity">1 × <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>899.00</span></span></li>
                        <li class="woocommerce-mini-cart-item mini_cart_item"><a href="#" class="remove remove_from_cart_button"><i class="far fa-times"></i></a> <a href="#"><img src="{{ asset('frontpage/assets/img/product/product_thumb_1_3.png') }}" alt="Cart Image">Car Steering Wheel</a> <span class="quantity">1 × <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>756.00</span></span></li>
                        <li class="woocommerce-mini-cart-item mini_cart_item"><a href="#" class="remove remove_from_cart_button"><i class="far fa-times"></i></a> <a href="#"><img src="{{ asset('frontpage/assets/img/product/product_thumb_1_4.png') }}" alt="Cart Image">Transponder Car Key</a> <span class="quantity">1 × <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>723.00</span></span></li>
                        <li class="woocommerce-mini-cart-item mini_cart_item"><a href="#" class="remove remove_from_cart_button"><i class="far fa-times"></i></a> <a href="#"><img src="{{ asset('frontpage/assets/img/product/product_thumb_1_5.png') }}" alt="Cart Image">Safety Hand Glove</a> <span class="quantity">1 × <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>1080.00</span></span></li>
                    </ul>
                    <p class="woocommerce-mini-cart__total total"><strong>Subtotal:</strong> <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>4398.00</span></p>
                    <p class="woocommerce-mini-cart__buttons buttons"><a href="cart.html" class="th-btn wc-forward">View cart</a> <a href="checkout.html" class="th-btn checkout wc-forward">Checkout</a></p>
                </div>
            </div>
        </div>
    </div>
    <div class="sidemenu-wrapper sidemenu-1 d-none d-md-block">
        <div class="sidemenu-content"><button class="closeButton sideMenuCls"><i class="far fa-times"></i></button>
            <div class="widget">
                <div class="th-widget-about">
                    <div class="about-logo"><a href="home-newspaper.html"><img class="light-img" src="{{ asset('frontpage/assets/img/logo-footer-black.svg') }}" alt="Tnews"></a><a href="home-newspaper.html"><img class="dark-img" src="{{ asset('frontpage/assets/img/logo-footer.svg') }}" alt="Tnews"></a></div>
                    <p class="about-text">Magazines cover a wide subjects, including not limited to fashion, lifestyle, health, politics, business, Entertainment, sports, science,</p>
                    <div class="th-social style-black"><a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a> <a href="https://www.twitter.com/"><i class="fab fa-twitter"></i></a> <a href="https://www.linkedin.com/"><i class="fab fa-linkedin-in"></i></a> <a href="https://www.whatsapp.com/"><i class="fab fa-whatsapp"></i></a></div>
                </div>
            </div>
            <div class="widget">
                <h3 class="widget_title">Recent Posts</h3>
                <div class="recent-post-wrap">
                    <div class="recent-post">
                        <div class="media-img"><a href="blog-details.html"><img src="{{ asset('frontpage/assets/img/blog/recent-post-1-1.jpg') }}" alt="Blog Image"></a></div>
                        <div class="media-body">
                            <h4 class="post-title"><a class="hover-line" href="blog-details.html">Fitness: Your journey to Better, stronger you.</a></h4>
                            <div class="recent-post-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>21 June, 2023</a></div>
                        </div>
                    </div>
                    <div class="recent-post">
                        <div class="media-img"><a href="blog-details.html"><img src="{{ asset('frontpage/assets/img/blog/recent-post-1-2.jpg') }}" alt="Blog Image"></a></div>
                        <div class="media-body">
                            <h4 class="post-title"><a class="hover-line" href="blog-details.html">Embrace the game Ignite your sporting</a></h4>
                            <div class="recent-post-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>22 June, 2023</a></div>
                        </div>
                    </div>
                    <div class="recent-post">
                        <div class="media-img"><a href="blog-details.html"><img src="{{ asset('frontpage/assets/img/blog/recent-post-1-3.jpg') }}" alt="Blog Image"></a></div>
                        <div class="media-body">
                            <h4 class="post-title"><a class="hover-line" href="blog-details.html">Revolutionizing lives Through technology</a></h4>
                            <div class="recent-post-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>23 June, 2023</a></div>
                        </div>
                    </div>
                    <div class="recent-post">
                        <div class="media-img"><a href="blog-details.html"><img src="{{ asset('frontpage/assets/img/blog/recent-post-1-4.jpg') }}" alt="Blog Image"></a></div>
                        <div class="media-body">
                            <h4 class="post-title"><a class="hover-line" href="blog-details.html">Enjoy the Virtual Reality embrace the</a></h4>
                            <div class="recent-post-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>25 June, 2023</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="widget newsletter-widget">
                <h3 class="widget_title">Subscribe</h3>
                <p class="footer-text">Sign up to get update about us. Don't be hasitate your email is safe.</p>
                <form class="newsletter-form"><input class="form-control" type="email" placeholder="Enter Email" required=""> <button type="submit" class="icon-btn"><i class="fa-solid fa-paper-plane"></i></button></form>
                <div class="mt-30"><input type="checkbox" id="Agree2"> <label for="Agree2">I have read and accept the <a href="about.html">Terms & Policy</a></label></div>
            </div>
        </div>
    </div>
    <div class="popup-search-box"><button class="searchClose"><i class="fal fa-times"></i></button>
        <form action="#"><input type="text" placeholder="What are you looking for?"> <button type="submit"><i class="fal fa-search"></i></button></form>
    </div>
    <div class="th-menu-wrapper">
        <div class="th-menu-area text-center"><button class="th-menu-toggle"><i class="fal fa-times"></i></button>
            <div class="mobile-logo"><a href="home-newspaper.html"><img src="{{ asset('frontpage/assets/img/logo.svg') }}" alt="Tnews"></a></div>
            <div class="th-mobile-menu">
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
            </div>
        </div>
    </div>
    @include('body.header')

    <div>
        @include('body.braking_news')
    </div>
    <section class="space">
        <div class="container">
            <div class="row">
                <div class="col-xl-3">
                    <div class="row gy-4">
                        <div class="col-xl-12 col-sm-6 border-blog dark-theme img-overlay2">
                            <div class="blog-style3">
                                <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_5_16.jpg') }}" alt="blog image"></div>
                                <div class="blog-content"><a data-theme-color="#00D084" href="blog.html" class="category">Business</a>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Leadership for the People By the people</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>12 Mar, 2023</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12 col-sm-6 border-blog dark-theme img-overlay2">
                            <div class="blog-style3">
                                <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_5_17.jpg') }}" alt="blog image"></div>
                                <div class="blog-content"><a data-theme-color="#4E4BD0" href="blog.html" class="category">Sports</a>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Game on! Stay ahead with Sports updates</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>11 Mar, 2023</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 mt-4 mt-xl-0">
                    <div class="dark-theme img-overlay2">
                        <div class="blog-style3">
                            <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_5_18.jpg') }}" alt="blog image"></div>
                            <div class="blog-content"><a data-theme-color="#FF9500" href="blog.html" class="category">Politics</a>
                                <h3 class="box-title-30"><a class="hover-line" href="blog-details.html">Following the Moon, they are in Close space. choose the best</a></h3>
                                <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>25 Mar, 2023</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 mt-35 mt-xl-0">
                    <div class="nav tab-menu indicator-active" role="tablist"><button class="tab-btn active" id="nav-one-tab" data-bs-toggle="tab" data-bs-target="#nav-one" type="button" role="tab" aria-controls="nav-one" aria-selected="true">Top News</button> <button class="tab-btn" id="nav-two-tab" data-bs-toggle="tab" data-bs-target="#nav-two" type="button" role="tab" aria-controls="nav-two" aria-selected="false">Recent News</button></div>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="nav-one" role="tabpanel" aria-labelledby="nav-one-tab">
                            <div class="row gy-4">
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_1.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#FF9500" href="blog.html" class="category">Politics</a>
                                            <h3 class="box-title-18"><a class="hover-line" href="blog-details.html">Stay informed, Navigate the world</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>30 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_2.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#007BFF" href="blog.html" class="category">Travel</a>
                                            <h3 class="box-title-18"><a class="hover-line" href="blog-details.html">Your beach resort Sanctuary.</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>17 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_3.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#00D084" href="blog.html" class="category">Life Style</a>
                                            <h3 class="box-title-18"><a class="hover-line" href="blog-details.html">Style your life news For modern living</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>19 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_4.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#4E4BD0" href="blog.html" class="category">Sports</a>
                                            <h3 class="box-title-18"><a class="hover-line" href="blog-details.html">Score big with the Latest sports news.</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>29 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="nav-two" role="tabpanel" aria-labelledby="nav-two-tab">
                            <div class="row gy-4">
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_3.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#00D084" href="blog.html" class="category">Life Style</a>
                                            <h3 class="box-title-18"><a class="hover-line" href="blog-details.html">Style your life news For modern living</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>10 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_4.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#4E4BD0" href="blog.html" class="category">Sports</a>
                                            <h3 class="box-title-18"><a class="hover-line" href="blog-details.html">Score big with the Latest sports news.</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>13 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_5.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#868101" href="blog.html" class="category">Action</a>
                                            <h3 class="box-title-18"><a class="hover-line" href="blog-details.html">Adventure awaits, seize the moment</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>18 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_6.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#868101" href="blog.html" class="category">Thriller</a>
                                            <h3 class="box-title-18"><a class="hover-line" href="blog-details.html">brace yourself for thrilling adventure.</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>27 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="">
        <div class="container">
            <div class="row align-items-center">
                <div class="col">
                    <h2 class="sec-title has-line">Trending News</h2>
                </div>
                <div class="col-auto">
                    <div class="sec-btn">
                        <div class="icon-box"><button data-slick-prev="#blog-slide1" class="slick-arrow default"><i class="far fa-arrow-left"></i></button> <button data-slick-next="#blog-slide1" class="slick-arrow default"><i class="far fa-arrow-right"></i></button></div>
                    </div>
                </div>
            </div>
            <div class="row th-carousel" id="blog-slide1" data-slide-show="4" data-lg-slide-show="3" data-md-slide-show="2" data-sm-slide-show="2">
                <div class="col-sm-6 col-xl-4">
                    <div class="blog-style1">
                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_1.jpg') }}" alt="blog image"> <a data-theme-color="#00D084" href="blog.html" class="category">Lifestyle</a></div>
                        <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Balance harmony and joy in Every lifestyle.</a></h3>
                        <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>23 Mar, 2023</a></div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="blog-style1">
                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_2.jpg') }}" alt="blog image"> <a data-theme-color="#FF9500" href="blog.html" class="category">Politics</a></div>
                        <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Power to the people for a Better future!</a></h3>
                        <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>27 Mar, 2023</a></div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="blog-style1">
                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_3.jpg') }}" alt="blog image"> <a data-theme-color="#E7473C" href="blog.html" class="category">Fitness</a></div>
                        <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Fitness the key to vitality and Well-being.</a></h3>
                        <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>21 Mar, 2023</a></div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="blog-style1">
                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_4.jpg') }}" alt="blog image"> <a data-theme-color="#00D084" href="blog.html" class="category">Health</a></div>
                        <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Embrace bump and Victory volleyball style.</a></h3>
                        <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>20 Mar, 2023</a></div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="blog-style1">
                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_5.jpg') }}" alt="blog image"> <a data-theme-color="#FF9500" href="blog.html" class="category">Politics</a></div>
                        <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Leadership for the People By the people</a></h3>
                        <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>17 Mar, 2023</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space">
        <div class="container">
            <div class="row align-items-center">
                <div class="col">
                    <h2 class="sec-title has-line">Technology News</h2>
                </div>
                <div class="col-auto">
                    <div class="sec-btn">
                        <div class="filter-menu filter-menu-active1"><button data-filter=".game" class="tab-btn active" type="button">Games</button> <button data-filter=".robotic" class="tab-btn" type="button">Robotic</button> <button data-filter=".electric" class="tab-btn" type="button">Electric</button></div>
                    </div>
                </div>
            </div>
            <div class="filter-active-cat1">
                <div class="row filter-item active-filter game">
                    <div class="col-xl-6 mb-35 mb-xl-0">
                        <div class="">
                            <div class="blog-style1 style-big">
                                <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_2_2.jpg') }}" alt="blog image"> <a data-theme-color="#007BFF" href="blog.html" class="category">Technology</a></div>
                                <h3 class="box-title-30"><a class="hover-line" href="blog-details.html">Following the Moon, they are in Close space. choose the best</a></h3>
                                <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>15 Mar, 2023</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="row gy-4">
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_7.jpg') }}" alt="blog image"> <a data-theme-color="#007BFF" href="blog.html" class="category">Technology</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Game on! Stay ahead with Sports updates</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>10 Mar, 2023</a></div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_8.jpg') }}" alt="blog image"> <a data-theme-color="#FF9500" href="blog.html" class="category">Electric</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Electrify your world, embrace Sustainable energy.</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>21 Mar, 2023</a></div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_9.jpg') }}" alt="blog image"> <a data-theme-color="#00D084" href="blog.html" class="category">Game</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Level up your world, embrace Gaming passion</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>25 Mar, 2023</a></div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_10.jp') }}g" alt="blog image"> <a data-theme-color="#4E4BD0" href="blog.html" class="category">Robotic</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Robotic precision, shaping a World of possibilities.</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>29 Mar, 2023</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row filter-item robotic">
                    <div class="col-xl-6 mb-35 mb-xl-0">
                        <div class="">
                            <div class="blog-style1 style-big">
                                <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_2_2.jpg') }}" alt="blog image"> <a data-theme-color="#007BFF" href="blog.html" class="category">Technology</a></div>
                                <h3 class="box-title-30"><a class="hover-line" href="blog-details.html">Following the Moon, they are in Close space. choose the best</a></h3>
                                <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>27 Mar, 2023</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="row gy-4">
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_6.jpg') }}" alt="blog image"> <a data-theme-color="#4E4BD0" href="blog.html" class="category">Sports</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Game on! Stay ahead withn Sports updates</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>29 Mar, 2023</a></div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_7.jpg') }}" alt="blog image"> <a data-theme-color="#007BFF" href="blog.html" class="category">Technology</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Game on! Stay ahead with Sports updates</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>26 Mar, 2023</a></div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_8.jpg') }}" alt="blog image"> <a data-theme-color="#FF9500" href="blog.html" class="category">Electric</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Electrify your world, embrace Sustainable energy.</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>23 Mar, 2023</a></div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_9.jpg') }}" alt="blog image"> <a data-theme-color="#00D084" href="blog.html" class="category">Game</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Level up your world, embrace Gaming passion</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>26 Mar, 2023</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row filter-item electric">
                    <div class="col-xl-6 mb-35 mb-xl-0">
                        <div class="">
                            <div class="blog-style1 style-big">
                                <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_2_2.jpg') }}" alt="blog image"> <a data-theme-color="#007BFF" href="blog.html" class="category">Technology</a></div>
                                <h3 class="box-title-30"><a class="hover-line" href="blog-details.html">Following the Moon, they are in Close space. choose the best</a></h3>
                                <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>12 Mar, 2023</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="row gy-4">
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_5.jpg') }}" alt="blog image"> <a data-theme-color="#FF9500" href="blog.html" class="category">Politics</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Leadership for the People By the people</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>12 Mar, 2023</a></div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_6.jpg') }}" alt="blog image"> <a data-theme-color="#4E4BD0" href="blog.html" class="category">Sports</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Game on! Stay ahead withn Sports updates</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>24 Mar, 2023</a></div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_7.jpg') }}" alt="blog image"> <a data-theme-color="#007BFF" href="blog.html" class="category">Technology</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Game on! Stay ahead with Sports updates</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>29 Mar, 2023</a></div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-sm-6 border-blog two-column">
                                <div class="blog-style1">
                                    <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_1_8.jpg') }}" alt="blog image"> <a data-theme-color="#FF9500" href="blog.html" class="category">Electric</a></div>
                                    <h3 class="box-title-22"><a class="hover-line" href="blog-details.html">Electrify your world, embrace Sustainable energy.</a></h3>
                                    <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>28 Mar, 2023</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="container"><a href="https://themeforest.net/user/themeholy/portfolio"><img src="{{ asset('frontpage/assets/img/ads/ads_1.jpg') }}" alt="ads" class="w-100"></a></div>
    <section class="space">
        <div class="container">
            <div class="row">
                <div class="col-xl-8">
                    <h2 class="sec-title has-line">International News</h2>
                    <div class="row gy-4">
                        <div class="col-sm-6 border-blog two-column">
                            <div class="blog-style1">
                                <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_4_1.jpg') }}" alt="blog image"> <a data-theme-color="#FF9500" href="blog.html" class="category">Politics</a></div>
                                <h3 class="box-title-24"><a class="hover-line" href="blog-details.html">Relaxation redefined, your beach Resort sanctuary</a></h3>
                                <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>10 Mar, 2023</a></div>
                            </div>
                        </div>
                        <div class="col-sm-6 border-blog two-column">
                            <div class="blog-style1">
                                <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_4_2.jpg') }}" alt="blog image"> <a data-theme-color="#4E4BD0" href="blog.html" class="category">Sports</a></div>
                                <h3 class="box-title-24"><a class="hover-line" href="blog-details.html">Game on! Embrace the spirit of Competition them</a></h3>
                                <div class="blog-meta"><a href="author.html"><i class="far fa-user"></i>By - Tnews</a> <a href="blog.html"><i class="fal fa-calendar-days"></i>29 Mar, 2023</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 mt-35 mt-xl-0">
                    <div class="nav tab-menu indicator-active" role="tablist"><button class="tab-btn active" id="nav2-one-tab" data-bs-toggle="tab" data-bs-target="#nav2-one" type="button" role="tab" aria-controls="nav2-one" aria-selected="true">Tranding</button> <button class="tab-btn" id="nav2-two-tab" data-bs-toggle="tab" data-bs-target="#nav2-two" type="button" role="tab" aria-controls="nav2-two" aria-selected="false">Recent</button> <button class="tab-btn" id="nav2-three-tab" data-bs-toggle="tab" data-bs-target="#nav2-three" type="button" role="tab" aria-controls="nav2-three" aria-selected="false">Popular</button></div>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="nav2-one" role="tabpanel" aria-labelledby="nav2-one-tab">
                            <div class="row gy-4">
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_2_1.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#4E4BD0" href="blog.html" class="category">Sports</a>
                                            <h3 class="box-title-20"><a class="hover-line" href="blog-details.html">Fast breaks, slam dunks Basketball thrills.</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>14 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_2_2.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#00D084" href="blog.html" class="category">Health</a>
                                            <h3 class="box-title-20"><a class="hover-line" href="blog-details.html">Life, a canvas, paint your Masterpiece.</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>28 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_2_3.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#E7473C" href="blog.html" class="category">Fitness</a>
                                            <h3 class="box-title-20"><a class="hover-line" href="blog-details.html">Fuel your fire, embrace Fitness goals.</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>29 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="nav2-two" role="tabpanel" aria-labelledby="nav2-two-tab">
                            <div class="row gy-4">
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_2_2.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#00D084" href="blog.html" class="category">Health</a>
                                            <h3 class="box-title-20"><a class="hover-line" href="blog-details.html">Life, a canvas, paint your Masterpiece.</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>11 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_2_3.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#E7473C" href="blog.html" class="category">Fitness</a>
                                            <h3 class="box-title-20"><a class="hover-line" href="blog-details.html">Fuel your fire, embrace Fitness goals.</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>30 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_2_4.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#59C2D6" href="blog.html" class="category">Fashion</a>
                                            <h3 class="box-title-20"><a class="hover-line" href="blog-details.html">Fashion is an art, express Yourself beautifully</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>21 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="nav2-three" role="tabpanel" aria-labelledby="nav2-three-tab">
                            <div class="row gy-4">
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_2_3.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#E7473C" href="blog.html" class="category">Fitness</a>
                                            <h3 class="box-title-20"><a class="hover-line" href="blog-details.html">Fuel your fire, embrace Fitness goals.</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>21 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_2_4.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#59C2D6" href="blog.html" class="category">Fashion</a>
                                            <h3 class="box-title-20"><a class="hover-line" href="blog-details.html">Fashion is an art, express Yourself beautifully</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>24 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6 border-blog">
                                    <div class="blog-style2">
                                        <div class="blog-img"><img src="{{ asset('frontpage/assets/img/blog/blog_3_2_5.jpg') }}" alt="blog image"></div>
                                        <div class="blog-content"><a data-theme-color="#E8137D" href="blog.html" class="category">Sports</a>
                                            <h3 class="box-title-20"><a class="hover-line" href="blog-details.html">Tune in, turn up, and let the Music speak</a></h3>
                                            <div class="blog-meta"><a href="blog.html"><i class="fal fa-calendar-days"></i>28 Mar, 2023</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @include('body.latest_video')
    @include('body.popular_news')
    @include('body.feature_posts')
    @include('body.footer')
    <div class="scroll-top"><svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;"></path>
        </svg></div>
    <script src="{{ asset('frontpage/assets/js/vendor/jquery-3.6.0.min.js') }}"></script>
    <script src="{{ asset('frontpage/assets/js/app.min.js') }}"></script>
    <script src="{{ asset('frontpage/assets/js/main.js') }}"></script>
</body>
</html>
