<!-- BEGIN: main -->
<!-- BEGIN: lib -->
<script data-show="after" type="text/javascript" src="{NV_BASE_SITEURL}themes/dienthoai/js/jquery.bxslider.min.js"></script>
<link href="{NV_BASE_SITEURL}themes/dienthoai/css/jquery.bxslider.css" rel="stylesheet" />
<!-- END: lib -->
<script type="text/javascript">
    $(document).ready(function () {
        $('.slider_{BLOCKID}').bxSlider({
            auto:{AUTO},
            mode: '{MODE}',
            speed:{SPEED},
            slideWidth:{WIDTH},
            slideMargin:{MARGIN},
            minSlides:{NUMVIEW},
            maxSlides:{NUMVIEW},
            moveSlides:{MOVE},
            pager:{PAGER},
            adaptiveHeight: true
        });
    });
</script>
<style>
    #tt a:hover
    {
        color:#005580 !important;
    }
    .add-icon
    {
        color:#0088cc;
        border:1px solid #0088cc;
        padding: 4px 9px 5px 8px;
        position: absolute;
        left: 10px;
        bottom: 80px;
    }
    span a:hover
    {
        color:#fff;
        background-color: #0088cc;
    }
    .quickview
    {
        opacity: 0;
        position: absolute;
        right: 0px;
        top: 0px;
        padding-left: 9px;
    }
    .quickview:hover
    {
        opacity: 1;
        color:#fff;
        background-color: #52b9b5;
        width: 100px;
        height: 35px;
        line-height: 33px;
        border: 1px solid #52b9b5;
        text-align: center;
        position: absolute;
        right: 0px;
        top: 0px;
    }
    .quickview:before {
        position: absolute;
        left: -83px;
        right: 0;
        text-indent: 0;
        font-size: 1.1em;
        content: "\f06e";
        display: inline-block;
        font-family: "FontAwesome";
    }
</style>

<div class="slider_{BLOCKID}">
    <!-- BEGIN: items -->
    <div class="slider_{BLOCKID}_item" align="center" style="background-color: #F7F7F7;-moz-box-shadow: 0px 4px 7px #F7F7F7;
         -webkit-box-shadow: 0px 4px 7px #F7F7F7;
         margin-bottom: 20px;border-bottom: 3px solid #e3e4e8;
         border-radius: 4px;">
        <a href="{LINK}" title="{TITLE}"><img src="{SRC_IMG}" width="{WIDTH}" alt="{TITLE}" class="thumbnail" /></a>
        <span style="background-color:#62b959;color:#fff ;position: absolute;
              z-index: 1;
              top: 0.8em;left:0.7em;
              border-radius: 0;
              font-size: 0.8571em;
              padding: 0.5833em 0.6333em;">HOT</span>
        <span ><a  href="#" class="add-icon "><i class="fa fa-shopping-cart"></i></a></span> 
        <div class="quickview " data-id="3518" title="Xem Nhanh">Xem Nhanh</div>
        <p id="tt"><a href="{LINK}" title="{TITLE}" style="color:#414141" >{TITLE0}</a></p>
        <!-- BEGIN: price -->
        <span class="price">
            <!-- BEGIN: discounts -->
            <span class="money show">{PRICE.sale_format} {PRICE.unit}</span>
            <span class="discounts_money">{PRICE.price_format} {PRICE.unit}</span>
            <!-- END: discounts -->

            <!-- BEGIN: no_discounts -->
            <span class="money">{PRICE.price_format} <u>đ</u></span>
            <!-- END: no_discounts -->
        </span>
        <!-- END: price -->
        <!-- BEGIN: contact -->
        <span class="money">{LANG.price_contact}</span>
        <!-- END: contact -->

    </div>
    <!-- END: items -->
</div>

<!-- END: main -->
