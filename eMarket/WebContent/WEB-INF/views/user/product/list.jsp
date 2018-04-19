<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="container-fluid offset-0">
	<div class="row">
		<div class="slider-revolution revolution-default">
			<div class="tp-banner-container">
				<div class="tp-banner revolution">
					<ul>
						<li data-thumb="images/slides/04/slide-1.jpg"
							data-transition="fade" data-slotamount="1"
							data-masterspeed="1000" data-saveperformance="off"
							data-title="Slide"><img src="images/slides/04/slide-1.jpg"
							alt="slide1" data-bgposition="center center" data-bgfit="cover"
							data-bgrepeat="no-repeat">
							<div class="tp-caption tp-resizeme  lfb stb text-center"
								data-x="center" data-y="center" data-hoffset="0"
								data-voffset="-20" data-speed="600" data-start="900"
								data-easing="Power4.easeOut" data-endeasing="Power4.easeIn"
								data-responsive_offset="on" style="z-index: 2;">
								<div class="tp-caption1-wd-1 color-white">Our Experience
									Gives us the Ability to</div>
								<div class="tp-caption1-wd-2 color-white">
									Create Stunning<br>Webstore
								</div>
								<div class="tp-caption1-wd-3">
									<a href="listing-left-column.html" class="btn btn-lg"
										data-text="Shop now!">SHOP NOW!</a>
								</div>
							</div></li>
						<li data-thumb="images/slides/04/slide-2.jpg"
							data-transition="fade" data-slotamount="1"
							data-masterspeed="1000" data-saveperformance="off"
							data-title="Slide"><img src="images/slides/04/slide-2.jpg"
							alt="slide1" data-bgposition="center center" data-bgfit="cover"
							data-bgrepeat="no-repeat">
							<div class="tp-caption tp-resizeme  lfr str text-right"
								data-x="right" data-y="center" data-voffset="-20"
								data-hoffset="-351" data-speed="600" data-start="900"
								data-easing="Power4.easeOut" data-endeasing="Power4.easeIn"
								data-responsive_offset="on" style="z-index: 2;">
								<div class="tp-caption1-wd-1 color-base">We'll Help to
									Manage</div>
								<div class="tp-caption1-wd-2">
									Your Online<br>Business
								</div>
								<div class="tp-caption1-wd-3">
									<a href="listing-left-column.html" class="btn btn-lg btn-red"
										data-text="Shop now!">SHOP NOW!</a>
								</div>
							</div></li>
						<li data-thumb="images/slides/04/slide-2.jpg"
							data-transition="fade" data-slotamount="1"
							data-masterspeed="1000" data-saveperformance="off"
							data-title="Slide"><img src="images/slides/04/slide-2.jpg"
							alt="slide1" data-bgposition="center center" data-bgfit="cover"
							data-bgrepeat="no-repeat">
							<div class="tp-caption tp-resizeme  lfr str text-right"
								data-x="right" data-y="center" data-voffset="-20"
								data-hoffset="-351" data-speed="600" data-start="900"
								data-easing="Power4.easeOut" data-endeasing="Power4.easeIn"
								data-responsive_offset="on" style="z-index: 2;">
								<div class="tp-caption1-wd-1 color-base">We'll Help to
									Manage</div>
								<div class="tp-caption1-wd-2">
									Your Online<br>Business
								</div>
								<div class="tp-caption1-wd-3">
									<a href="listing-left-column.html" class="btn btn-lg btn-red"
										data-text="Shop now!">SHOP NOW!</a>
								</div>
							</div></li>
						<li data-thumb="images/slides/04/slide-2.jpg"
							data-transition="fade" data-slotamount="1"
							data-masterspeed="1000" data-saveperformance="off"
							data-title="Slide"><img src="images/slides/04/slide-2.jpg"
							alt="slide1" data-bgposition="center center" data-bgfit="cover"
							data-bgrepeat="no-repeat">
							<div class="tp-caption tp-resizeme  lfr str text-right"
								data-x="right" data-y="center" data-voffset="-20"
								data-hoffset="-351" data-speed="600" data-start="900"
								data-easing="Power4.easeOut" data-endeasing="Power4.easeIn"
								data-responsive_offset="on" style="z-index: 2;">
								<div class="tp-caption1-wd-1 color-base">We'll Help to
									Manage</div>
								<div class="tp-caption1-wd-2">
									Your Online<br>Business
								</div>
								<div class="tp-caption1-wd-3">
									<a href="listing-left-column.html" class="btn btn-lg btn-red"
										data-text="Shop now!">SHOP NOW!</a>
								</div>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="product-listing row">
		
			<c:forEach var="p" items="${prods}" begin="0" end="20">
				<div class="col-xs-6 col-sm-4 col-md-4 col-lg-one-fourth">
					<div class="product">
						<div class="product_inside">
							<div class="image-box">
								<a href="product/detail/${p.id}.php"> <img
									src="images/products/${p.image}" alt="">
								</a>
							</div>
							<h2 class="title">
								<a href="product/detail/${p.id}.php">${fn:substring(p.name, 0,19)}</a>
							</h2>

							<div class="price">
								<span class="new-price" ><f:formatNumber
								value="${p.unitPrice}" type="currency"></f:formatNumber> đ</span>
							</div>
							
							<div class="product_inside_hover">
								<div class="product_inside_info">
									<a class="btn btn-product_addtocart" data-add-id="${p.id}"> <span
										class="icon icon-shopping_basket"></span>Thêm vào giỏ hàng
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
