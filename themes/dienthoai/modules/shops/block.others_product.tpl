<!-- BEGIN: main -->
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
        left: 21px;
        bottom: 92px;
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
        right: 3px;
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
<div class="others_product">
    <ul class="row">
        <!-- BEGIN: loop -->
        <li class=" col-xs-24 col-md-8 col-sm-8" style="
            //  margin-left: 15px;
            //padding-left: 0px !important;
           // padding-right: 0px !important;
            float: left;
            list-style: none;
            position: relative;
            //margin-right: 12px;
            ">
            <div class="silde" style=" background-color: rgb(247, 247, 247);margin-left: 10px !important;margin-right: -2px;box-shadow: rgb(247, 247, 247) 0px 4px 7px;
                 margin-bottom: 20px;
                // margin-right: 16px;
                 border-bottom-width: 3px;
                 border-bottom-style: solid;
                 border-bottom-color: rgb(227, 228, 232); border-radius: 4px;">
                <span style="background-color:#62b959;color:#fff ;position: absolute;
                      z-index: 1;
                      top: 0.8em;left:1.7em;
                      border-radius: 0;
                      font-size: 0.8571em;
                      padding: 0.5833em 0.6333em;">HOT</span>
                <span ><a  href="#" class="add-icon "><i class="fa fa-shopping-cart"></i></a></span> 
                <div class="quickview " data-id="3518" title="Xem Nhanh">Xem Nhanh</div>
                <a href="{link}" title="{title}"><img src="{src_img}" alt="{title}" class="img-thumbnail" width="360" /></a>
                <br />
                <a href="{link}" title="{title}">{title}</a>
                <br />
                <!-- BEGIN: price -->
                <span class="price">
                    <!-- BEGIN: discounts -->
                    <span class="money show">{PRICE.sale_format} {PRICE.unit}</span>
                    <span class="discounts_money show">{PRICE.price_format} {PRICE.unit}</span>
                    <!-- END: discounts -->

                    <!-- BEGIN: no_discounts -->
                    <span class="money show">{PRICE.price_format} <u>đ</u></span>
                    <!-- END: no_discounts -->
                </span>
                <!-- END: price -->
                <!-- BEGIN: contact -->
                <span class="money show">{LANG.price_contact}</span>
                <!-- END: contact -->
            </div>
        </li>
        <!-- END: loop -->
    </ul>
</div>
<!-- END: main -->
