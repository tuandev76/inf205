
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

	<div class="container hidden-mobile">
		<hr>
	</div>
	<div class="container-fluid ">
		<h1 class="block-title">HÀNG MỚI</h1>
		<div class="row">
			<div
				class="carousel-products-1 carouselTab slick-arrow-top products-mobile-arrow">
				<c:forEach var="spec" items="${specials}" begin="0" end="20">
					<div>
						<div class="product">
							<div class="product_inside">
								<div class="image-box">
									<a href="product/detail/${spec.id}.php"> <img
										src="images/products/${spec.image}" alt="">
									</a>
								</div>
								<h2 class="title">
									<a href="product/detail/${spec.id}.php">${fn:substring(spec.name, 0,19)}</a>
								</h2>

								<div class="price">
									<span class="new-price">${spec.unitPrice} đ</span>
								</div>
								<div class="description">Silver, metallic-blue and
									metallic-lavender silk-blend jacquard, graphic pattern, pleated
									ruffle along collar, long sleeves with button-fastening cuffs,
									buckle-fastening silver skinny belt, large pleated rosettes at
									hips. Dry clean. Zip and hook fastening at back. 100% silk.
									Specialist clean</div>
								<div class="product_inside_hover">
									<div class="product_inside_info">
									<a class="btn btn-product_addtocart" data-add-id="${spec.id}">
											<span class="icon icon-shopping_basket"></span>Thêm vào giỏ hàng
											</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="container hidden-mobile">
		<hr>
	</div>
	<div class="container">
		<div class="row">
			<div class="carousel-brands">
				<c:forEach var="sup" items="${sups}">
					<div>
						<a href="#"> <img src="images/suppliers/${sup.logo}" alt=""></br>${sup.name}
						</a>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<a href="listing-left-column.html" class="home4_banner_big zoom-in">
				<img src="images/custom/promo-img-05.jpg" alt="">
				<div class="box-arrow-bottom-right">
					<div class="animation-hover">
						<div class="svg-icon">
							<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
								viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000"
								xml:space="preserve">
										<path
									d="M234.625,393.808c0,0,86.365,97.951,151.666,151.666s37.917,13.692,37.917,16.852c0,3.16,104.27,73.727,183.263,111.643
											c78.993,37.917,133.761,43.183,168.518,45.289c34.757,2.106,38.97,0,38.97,0s-86.365-4.213-117.963-20.012
											c-31.597-15.799,55.822,15.799,117.963,5.266c62.141-10.532,70.567-22.118,70.567-22.118s-230.659,42.012-409.709-125.394
											s-179.05-175.832-179.05-175.832s52.662,51.609,116.909,50.555c64.247-1.053,85.312-48.449,50.555-58.981
											S217.773,237.929,217.773,237.929s-10.532-12.639-44.236,6.319s-33.704,18.958-33.704,18.958s51.609,78.993,71.62,218.02
											s21.065,182.21,21.065,182.21l15.799-54.768" />
									</svg>
						</div>
						<div class="text">
							StyList over 3000 hours<br> of Hard Work!
						</div>
					</div>
				</div>
				<div class="description">
					<div class="block-table">
						<div class="block-table-cell text-center">
							<p class="color-defaulttext2">Grow your business with</p>
							<div class="title color-defaulttext2">StyList</div>
							<span class="btn btn-lg">SHOP NOW!</span>
						</div>
					</div>
				</div>
			</a>
		</div>
	</div>
	<div class="container">
		<h2 class="block-title">LATEST NEWS</h2>
		<div class="row">
			<div class="carousel-products-mobile blog-thumb-listing">
				<div class="col-xs-6 col-sm-4">
					<div class="blog-thumb">
						<a class="img" href="blog_single_post_01.html"> <img
							src="images/custom/img_03.jpg" alt="">
						</a> <a class="title" href="blog_single_post_01.html">Resposive/Retina
							ready.</a>
						<p class="data">
							by <a href="#">StyList</a> on May <b>9, 2016</b>
						</p>
						<p>The highest responsiveness level. Your website will look
							crisp and amazing on any device. No matter what kind of display
							you are using. Test it.</p>
					</div>
				</div>
				<div class="col-xs-6 col-sm-4">
					<div class="blog-thumb">
						<a class="img" href="blog_single_post_01.html"> <img
							src="images/custom/img_02.jpg" alt="">
						</a> <a class="title" href="blog_single_post_01.html">Top Notch
							SEO perfomance. </a>
						<p class="data">
							by <a href="#">StyList</a> on May <b>9, 2016</b>
						</p>
						<p>The highest responsiveness level. Your website will look
							crisp and amazing on any device. No matter what kind of display
							you are using. Test it.</p>
					</div>
				</div>
				<div class="col-xs-6 col-sm-4">
					<div class="blog-thumb">
						<a class="img" href="blog_single_post_01.html"> <img
							src="images/custom/img_01.jpg" alt="">
						</a> <a class="title" href="blog_single_post_01.html">Fully <br>customizable.
						</a>
						<p class="data">
							by <a href="#">StyList</a> on May <b>9, 2016</b>
						</p>
						<p>The highest responsiveness level. Your website will look
							crisp and amazing on any device. No matter what kind of display
							you are using. Test it.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
