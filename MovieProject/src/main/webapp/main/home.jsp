<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <main class="site-main">
  	 
    <!--================ Hero banner start =================-->
    <section class="hero-banner">
      <div class="container">
        <div class="row no-gutters align-items-center pt-60px">
          <div class="col-5 d-none d-sm-block">
            <div class="hero-banner__img">
              <img class="img-fluid" src="../aroma-master/img/home/hero-banner.png" alt="">
            </div>
          </div>
          <div class="col-sm-7 col-lg-6 offset-lg-1 pl-4 pl-md-5 pl-lg-0">
            <div class="hero-banner__content">
              <h5 style="margin-bottom:20px;">장르별 영화탐색</h5>
              <h1 style="line-height:1.3">당신의 영화취향을<br/>찾아보세요</h1>
              <p>OO은 영화탐색 및 추천 플랫폼입니다.<br/>장르별추천을 통해 당신이 좋아하는 영화를 찾아드립니다</p>
              <a class="button button-hero" href="#">탐색하기</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================ Hero banner start =================-->

    <!-- ================ Best Selling item  carousel ================= --> 
    <section class="section-margin calc-60px">
      <div class="container">
        <div class="section-intro pb-60px">
          <h2><span class="section-intro__style">평점</span>이 높은 영화</h2>
        </div>
        
        <div class="owl-carousel owl-theme" id="bestSellerCarousel">
        
	      <c:forEach var="vo" items="${list }">
	          <div class="card text-center card-product">
	            <div class="card-product__img">
	              <img class="img-fluid" src="${vo.poster }" alt="">
	              <ul class="card-product__imgOverlay">
	                <li><button><i class="ti-search"></i></button></li>
	                <li><button><i class="ti-shopping-cart"></i></button></li>
	                <li><button><i class="ti-heart"></i></button></li>
	              </ul>
	            </div>
	            <div class="card-body">
	              <p>${vo.grade }</p>
	              <h4 class="card-product__title" style="font-size:18px;"><a href="single-product.html">${vo.title }</a></h4>
	              <p class="card-product__price" style="color:#384aeb"><strong>${vo.score}점</strong></p>
	            </div>
	          </div>
	      </c:forEach>
          
        </div>

        
      </div>
    </section>
    <!-- ================ Best Selling item  carousel end ================= --> 
    
    <!-- ================ trending product section start ================= -->  
    <section class="section-margin calc-60px">
      <div class="container">
        <div class="section-intro pb-60px">
          <h2><span class="section-intro__style">마코토</span> 감독의 애니메이션</h2>
        </div>
        <div class="row">
	      <c:forEach var="cvo" items="${clist }">
	          <div class="col-md-6 col-lg-4 col-xl-3">
	            <div class="card text-center card-product">
	              <div class="card-product__img">
	                <img class="card-img" src="${cvo.poster }" alt="">
	                <ul class="card-product__imgOverlay">
	                  <li><button><i class="ti-search"></i></button></li>
	                  <li><button><i class="ti-shopping-cart"></i></button></li>
	                  <li><button><i class="ti-heart"></i></button></li>
	                </ul>
	              </div>
	              <div class="card-body">
	                <p>${cvo.grade }</p>
	                <h4 class="card-product__title" style="font-size:18px;"><a href="#">${cvo.title }</a></h4>
	                <p class="card-product__price" style="color:#384aeb"><strong>${cvo.score}점</strong></p>
	              </div>
	            </div>
	          </div>
         </c:forEach>
          
        </div>
      </div>
    </section>
    <!-- ================ trending product section end ================= -->  


  </main>
</body>
</html>