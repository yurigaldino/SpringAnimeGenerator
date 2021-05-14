<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <!--        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"> -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,700&display=swap" >
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap">

    </head>
    <header>

        <style>

            body {  

                background:linear-gradient(
                    rgba(30,27,38, 0.95), 
                    rgba(30,27,38, 0.95)),
                    url("${anime.image}");
                background-position: center;
                background-size: cover;
                background-repeat: repeat;
            }

            .container{
                width:100%;
                height:100%;
            }
            .cellphone-container{  
                width:375px;
                height:650px;
                background-color:#1e1b26;
                margin : 60px auto 0 auto;
                box-shadow:5px 5px 115px -14px black;
                border-radius: 4px;
            }
            .menu {
                position: absolute;
                right: 12px;
                top: 6px;
                z-index: 999;
                i {
                    font-size: 40px;
                    color: #fe4141;
                    filter: drop-shadow(4px 4px 10px rgba(0,0,0,.5));
                }
            }
            .movie-img {
                width:100%;
                height:380px;
                background-image: url(${anime.image});
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                z-index:111 !important;
                border-top-left-radius: 4px;
                border-top-right-radius: 4px;
                -webkit-mask-image: -webkit-gradient(linear, left top, left bottom, 
                    color-stop(0.00,  rgba(0,0,0,1)),
                    color-stop(0.35,  rgba(0,0,0,1)),
                    color-stop(0.50,  rgba(0,0,0,1)),
                    color-stop(0.65,  rgba(0,0,0,1)),
                    color-stop(0.85,  rgba(0,0,0,0.6)),
                    color-stop(1.00,  rgba(0,0,0,0)));

                position:relative;

            }

            .movie{
                /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#ffffff+39,1e1b26+53&0+38,1+55 */
                background: -moz-linear-gradient(top,  rgba(255,255,255,0) 38%, rgba(255,255,255,0.06) 39%, rgba(30,27,38,0.88) 53%, rgba(30,27,38,1) 55%); /* FF3.6-15 */
                background: -webkit-linear-gradient(top,  rgba(255,255,255,0) 38%,rgba(255,255,255,0.06) 39%,rgba(30,27,38,0.88) 53%,rgba(30,27,38,1) 55%); /* Chrome10-25,Safari5.1-6 */
                background: linear-gradient(to bottom,  rgba(255,255,255,0) 38%,rgba(255,255,255,0.06) 39%,rgba(30,27,38,0.88) 53%,rgba(30,27,38,1) 55%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00ffffff', endColorstr='#1e1b26',GradientType=0 ); /* IE6-9 */

                position:absolute;
                background-size: contain;
                background-size: cover;
                z-index:1 !important;
                width:375px;
                height:auto;
                display:block;
                border-radius:4px;
            }

            .text-movie-cont{
                padding:0px 12px;
                /*                text-align: justify;*/
            }

            .action-btn{
                text-align:right;
                i{
                    color:#fe4141;
                    font-size:28px;
                    text-align:right;
                }  
            }

            .watch-btn {
                h3{
                    i{
                        font-size:14px;
                        margin-right:2px;
                        position: relative;
                        float: left;
                        line-height: 1;
                    }
                }
                display:block;
                border:1px solid #fe4141;
                border-radius:5px;
                padding:4px;
                width:140px;
            }

            .action-row{
                margin-top:24px;
            }

            .summary-row{margin-top:12px;}

            /* TYPOGRAPHY STARTS */

            /* Fonts */

            h1,h2,h3,h4,h5 {
                font-family: 'Montserrat', sans-serif;
                color: #e7e7e7;
                margin:0px;
            }

            h1 {
                /*                font-size:36px;*/
                font-family: 'Montserrat', sans-serif;
                font-weight:400;
            }

            h3 {
                font-size:14px;
                font-weight:400;
                color:#fe4141;
            }

            h5 {
                font-size:12px;
                font-weight:400;
            }

            .movie-gen{
                margin:0px;
                padding:0px;
            }

            .movie-gen2{
                margin:0px;
                padding:0px;
                margin:0% 0.5% 0.5% 0.5%;
                padding:1%;
                display: block;
            }

            li{
                font-family:'Open Sans', sans-serif;;
                font-size:12px;
                color:rgba(231, 231, 231, 0.6);;
                /*                40%*/
                width:auto;
                display:block;
                float:left;  
                margin-right:6px;
                font-weight:600;
            }

            .movie-likes{
                @extend .movie-gen;
                float:right;
                li{
                    color:#fe4141;
                    &:last-child {
                        margin-right: 0px;
                    }
                    i{
                        font-size:14px;
                        margin-right:4px;
                        position: relative;
                        float: left;
                        line-height: 1;
                    }
                }  
            }

            .movie-details {
                font-family:'Open Sans', sans-serif;
                font-size:12px;
                font-weight:300;
                color:rgba(231, 231, 231, 0.8) 
                    /*                20%*/
                    @extend .elements-distance;
            }

            .movie-description {
                font-family:'Open Sans', sans-serif;;
                font-size:12px;
                font-weight:400;
                color:rgba(231, 231, 231, 0.7); 
                /*                30%*/

                text-align: justify;
                line-height: 1.3;
            }

            /* TYPOGRAPHY ENDS */

            /** GRID STARTS **/

            .thegrid { margin: 0 auto; }

            .elements-distance{margin:0px}

            .mr-grid { width: 100%; }
            .mr-grid:before, .mr-grid:after { content: ""; display: table; }
            .mr-grid:after { clear: both; }
            .mr-grid { *zoom: 1; }

            .col1, .col2, .col3, .col3rest, .col4, .col4rest, .col5, .col5rest, .col6, .col6rest{ 
                margin:0% 0.5% 0.5% 0.5%;
                padding:1%;
                float: left;
                display: block;
            }

            /* Columns match, minus margin sum. E.G. margin-left+margin-right=1%, col2=50%-1% - added padding:1%*/

            .col1 { width: 98%; }
            .col2 { width: 47%; }
            .col3 { width: 30.3333333333%; }
            .col4 { width: 22%; }
            .col5 { width: 17%; }
            .col6 {width:13.6666666667%;}


            /* Columns match with their individual number. E.G. col3+col3rest=full width row */

            .col3rest { width: 63.6666666667%; }
            .col4rest { width: 72%; }
            .col5rest { width: 77%; }
            .col6rest { width: 80.3333333333%;}

            .dribbble-link {
                width: 65px;
                height: 65px;
                position: fixed;
                bottom: 20px;
                right: 20px;
                border-radius: 50px;
            }

            * {
                box-sizing: border-box;
            }

            body {
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .wrapper {
                display: flex;
                justify-content: center;
                position: fixed;
                bottom: 25px;
                right: 25px;
            }

            .cta {
                display: flex;
                padding: 10px 45px;
                text-decoration: none;
                font-family: 'Montserrat', sans-serif;
                font-size: 17px;
                color: white;
                /*Roxo*/
                /*                background: #6225E6;*/
                background: #1e1b26;
                transition: 1s;
                box-shadow: 6px 6px 0 black;
                transform: skewX(-15deg);
            }

            .cta:focus {
                outline: none; 
            }

            .cta:hover {
                transition: 0.5s;
                box-shadow: 10px 10px 0 #FBC638;
            }

            .cta span:nth-child(2) {
                transition: 0.5s;
                margin-right: 0px;
            }

            .cta:hover  span:nth-child(2) {
                transition: 0.5s;
                margin-right: 45px;
            }

            span {
                transform: skewX(15deg) 
            }
            
            .get_random_anime {
                padding-top: 17px;
            }

            span:nth-child(2) {
                width: 20px;
                margin-left: 30px;
                position: relative;
                top: 12%;
            }

            /**************SVG****************/

            path.one {
                transition: 0.4s;
                transform: translateX(-60%);
            }

            path.two {
                transition: 0.5s;
                transform: translateX(-30%);
            }

            .cta:hover path.three {
                animation: color_anim 1s infinite 0.2s;
            }

            .cta:hover path.one {
                transform: translateX(0%);
                animation: color_anim 1s infinite 0.6s;
            }

            .cta:hover path.two {
                transform: translateX(0%);
                animation: color_anim 1s infinite 0.4s;
            }

            /* SVG animations */

            @keyframes color_anim {
                0% {
                    fill: white;
                }
                50% {
                    fill: #FBC638;
                }
                100% {
                    fill: white;
                }
            }
        </style>
    </header>

    <body style=background-color:lightgrey> 
        <div class="container">
            <div class="cellphone-container">    
                <div class="movie">       
                    <div class="movie-img"></div>
                    <div class="text-movie-cont">
                        <div class="mr-grid">
                            <div class="col1">
                                <h1>${anime.title}</h1>
                                <br>
                                <ul class="movie-gen">
                                    <li>${anime.title_jp} (JP)</li>
                                </ul>
                            </div>
                            <br>
                            <ul class="movie-gen2">
                                <li>${anime.airedString} /</li>
                                <li>${anime.rating}</li>
                            </ul>
                        </div>
                        <div class="mr-grid summary-row">
                            <div class="col2">
                                <h5>SUMMARY</h5>
                            </div>
                        </div>
                        <div class="mr-grid">
                            <div class="col1">
                                <p class="movie-description">${anime.synopsis}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrapper">
            <a class="cta" href="/" target="_self">
                <span class="get_random_anime">GET RANDOM ANIME</span>
                <span>
                    <svg width="66px" height="43px" viewBox="0 0 66 43" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <g id="arrow" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <path class="one" d="M40.1543933,3.89485454 L43.9763149,0.139296592 C44.1708311,-0.0518420739 44.4826329,-0.0518571125 44.6771675,0.139262789 L65.6916134,20.7848311 C66.0855801,21.1718824 66.0911863,21.8050225 65.704135,22.1989893 C65.7000188,22.2031791 65.6958657,22.2073326 65.6916762,22.2114492 L44.677098,42.8607841 C44.4825957,43.0519059 44.1708242,43.0519358 43.9762853,42.8608513 L40.1545186,39.1069479 C39.9575152,38.9134427 39.9546793,38.5968729 40.1481845,38.3998695 C40.1502893,38.3977268 40.1524132,38.395603 40.1545562,38.3934985 L56.9937789,21.8567812 C57.1908028,21.6632968 57.193672,21.3467273 57.0001876,21.1497035 C56.9980647,21.1475418 56.9959223,21.1453995 56.9937605,21.1432767 L40.1545208,4.60825197 C39.9574869,4.41477773 39.9546013,4.09820839 40.1480756,3.90117456 C40.1501626,3.89904911 40.1522686,3.89694235 40.1543933,3.89485454 Z" fill="#FFFFFF"></path>
                    <path class="two" d="M20.1543933,3.89485454 L23.9763149,0.139296592 C24.1708311,-0.0518420739 24.4826329,-0.0518571125 24.6771675,0.139262789 L45.6916134,20.7848311 C46.0855801,21.1718824 46.0911863,21.8050225 45.704135,22.1989893 C45.7000188,22.2031791 45.6958657,22.2073326 45.6916762,22.2114492 L24.677098,42.8607841 C24.4825957,43.0519059 24.1708242,43.0519358 23.9762853,42.8608513 L20.1545186,39.1069479 C19.9575152,38.9134427 19.9546793,38.5968729 20.1481845,38.3998695 C20.1502893,38.3977268 20.1524132,38.395603 20.1545562,38.3934985 L36.9937789,21.8567812 C37.1908028,21.6632968 37.193672,21.3467273 37.0001876,21.1497035 C36.9980647,21.1475418 36.9959223,21.1453995 36.9937605,21.1432767 L20.1545208,4.60825197 C19.9574869,4.41477773 19.9546013,4.09820839 20.1480756,3.90117456 C20.1501626,3.89904911 20.1522686,3.89694235 20.1543933,3.89485454 Z" fill="#FFFFFF"></path>
                    <path class="three" d="M0.154393339,3.89485454 L3.97631488,0.139296592 C4.17083111,-0.0518420739 4.48263286,-0.0518571125 4.67716753,0.139262789 L25.6916134,20.7848311 C26.0855801,21.1718824 26.0911863,21.8050225 25.704135,22.1989893 C25.7000188,22.2031791 25.6958657,22.2073326 25.6916762,22.2114492 L4.67709797,42.8607841 C4.48259567,43.0519059 4.17082418,43.0519358 3.97628526,42.8608513 L0.154518591,39.1069479 C-0.0424848215,38.9134427 -0.0453206733,38.5968729 0.148184538,38.3998695 C0.150289256,38.3977268 0.152413239,38.395603 0.154556228,38.3934985 L16.9937789,21.8567812 C17.1908028,21.6632968 17.193672,21.3467273 17.0001876,21.1497035 C16.9980647,21.1475418 16.9959223,21.1453995 16.9937605,21.1432767 L0.15452076,4.60825197 C-0.0425130651,4.41477773 -0.0453986756,4.09820839 0.148075568,3.90117456 C0.150162624,3.89904911 0.152268631,3.89694235 0.154393339,3.89485454 Z" fill="#FFFFFF"></path>
                    </g>
                    </svg>
                </span> 
            </a>
        </div>
    </body>
</html>