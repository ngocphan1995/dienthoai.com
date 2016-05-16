<style>
    .search
    {
        float: right !important;
                     position: absolute ;
                     top: 15px ;
                     right: 200px ;
                     z-index: 111111111111 !important;
                     color: #fff !important;
    }
   

</style>
<noscript>
<div class="alert alert-danger">{LANG.nojs}</div>
</noscript>
<div class="body-bg">

    <header>
        <div class="container">
            <div id="header" class="row">
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu4">
                    <li><a href="#">Regular link</a></li>
                    <li class="disabled"><a href="#">Disabled link</a></li>
                    <li><a href="#">Another link</a></li>
                </ul>
            </div>
        </div>
    </header>
    <nav class="second-nav" id="menusite">
        <div class="container">
            <div class="row">
                <div class="bg radius-top-left radius-top-right box-shadow ">
                    [MENU_SITE]
                
                <div class="search hidden-xs" style="">

                    <div class="dropdown" id="search-f">

                        <i class="fa fa-search" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></i>
                        <span class="caret"></span>

                        <ul class=" drp-search dropdown-menu" aria-labelledby="dropdownMenu1"  style="width: 400px">
                            <li>
                                <form role="search" method="get" id="yith-ajaxsearchform"  class="yith-ajaxsearchform-container searchform searchform-cats" width="300" height="100">
                                    <fieldset>
                                        <span class="text"><input name="s" id="yith-s" type="text" value="" placeholder="Tìm kiếm…" autocomplete="off" class="form-control" style="width: 200px;float:left;height: 36px" ></span>
                                        <select name="product_cat" id="product_cat" class="cat form-control" >
                                            <option value="0" selected="selected">Tất cả danh mục</option>
                                            <option class="level-0" value="case-iphone">Case iphone</option>
                                            <option class="level-0" value="case-iphone-5">Case iPhone 5</option>
                                            <option class="level-0" value="case-iphone-5s">Case iPhone 5s</option>
                                            <option class="level-0" value="case-iphone-6">Case iPhone 6</option>
                                            <option class="level-0" value="case-iphone-6-plus">Case iPhone 6 Plus</option>
                                        </select>
                                        <span class="button-wrap"><button class="btn" id="yith-searchsubmit" title="Tìm kiếm" type="submit"><i class="fa fa-search"></i></button></span>
                                        <input type="hidden" name="post_type" value="product">
                                    </fieldset>
                                    <div class="autocomplete-suggestions" style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
                                </form></li>
                        </ul>
                    </div>
                </div>
                <div class="dropdown hidden-xs">
                    <div class="shop form-control" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"> <i class="fa fa-shopping-cart"></i>
                        <span class="cart-items"><span class="mobile-hide">0 sản phẩm</span></span>
                        <span class="caret"></span>
                    </div>
                    <ul class="li-shop dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li>Chưa có sản phẩm trong giỏ hàng</li>

                    </ul>
                </div>
                    </div>
            </div>
        </div>
    </nav>
    <nav class="header-nav">
        <div class="container">
            <div class="row">
            <div class="social-icons">
                <div class="row hidden-xs">
                    <span class="welcome-msg" style="font-size: 15px;font-weight: 500"><i class="fa fa-phone"></i> Hotline: 0902 005 101</span>
                    <ul id="dn" class="hidden-xs">
                        <li>
                            <div class="dropdown">
                                <button class="btn  dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <a href="#">ĐĂNG NHẬP/ĐĂNG KÝ</a>
                                    <span class="caret"></span>
                                </button>
                                <ul class="drpform dropdown-menu" aria-labelledby="dropdownMenu1">
                                    <div class="clearfix login-box with_registration">
                                        <div id="customer_login">
                                            <div class="customer-login-box customer-login-box1">

                                                <form method="post" class="login">


                                                    <div class="form-group">
                                                        <label for="username">Tài khoản hoặc địa chị email <span class="required">*</span></label>
                                                        <input type="text" class="form-control" name="username" id="username">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="password">Mật khẩu <span class="required">*</span></label>
                                                        <input class="form-control" type="password" name="password" id="password">
                                                    </div>


                                                    <div class="form-group login-submit">
                                                        <input type="hidden" id="_wpnonce" name="_wpnonce" value="4b857c77e7"><input type="hidden" name="_wp_http_referer" value="/icasestore2/">                                                    
                                                        <input type="submit" class="button btn btn-flat-red button-login" name="login" value="Đăng nhập">
                                                        <p class="lost_password">
                                                            <!--<a href=""></a>-->
                                                            Khách hàng mới ? <a class="signup" href="http://demo.webdungsan.com/icasestore2/profile-2/register">Đăng ký</a>
                                                        </p>
                                                        <!-- <label for="rememberme" class="inline">
                                                             <input name="rememberme" type="checkbox" id="rememberme" value="forever" /> Ghi nhớ                                                    </label> -->
                                                    </div>


                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </ul>
                            </div>
                        </li>
                    </ul>


                    <div id="tip" data-content="">
                        <div class="bg"></div>
                    </div>
                </div>
            </div>
            <div class="list-en hidden-xs" >
                <a href="#">DANH SÁCH ƯA THÍCH</a>
            </div>
        </div>
            </div>
    </nav>
    <div class="wraper">
        <section>
            <div class="container" id="body">
                <nav class="third-nav">
                    <div class="row">
                        <div class="bg">
                            <div class="clearfix">
                                <div class="col-xs-24 col-sm-18 col-md-18">
                                    <!-- BEGIN: breadcrumbs -->
                                    <div class="breadcrumbs-wrap">
                                        <div class="display">
                                            <a class="show-subs-breadcrumbs hidden" href="#" onclick="showSubBreadcrumbs(this, event);"><em class="fa fa-lg fa-angle-right"></em></a>
                                            <ul class="breadcrumbs list-none"></ul>
                                        </div>
                                        <ul class="subs-breadcrumbs"></ul>
                                        <ul class="temp-breadcrumbs hidden">
                                            <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{THEME_SITE_HREF}" itemprop="url" title="{LANG.Home}"><span itemprop="title">{LANG.Home}</span></a></li>
                                            <!-- BEGIN: loop --><li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{BREADCRUMBS.link}" itemprop="url" title="{BREADCRUMBS.title}"><span class="txt" itemprop="title">{BREADCRUMBS.title}</span></a></li><!-- END: loop -->
                                        </ul>
                                    </div>
                                    <!-- END: breadcrumbs -->
                                    <!-- BEGIN: currenttime --><!-- END: currenttime -->
                                </div>
                                <div class="headerSearch col-xs-24 col-sm-6 col-md-6">

                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
                [THEME_ERROR_INFO]