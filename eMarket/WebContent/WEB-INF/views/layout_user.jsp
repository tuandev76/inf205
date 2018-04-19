
<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<base href="${pageContext.request.contextPath}/">
<title>StyList - Responsive HTML5 Template</title>

<meta name="keywords" content="HTML5 Template">
<meta name="description" content="StyList - Responsive HTML5 Template">
<meta name="author" content="etheme.com">
<link rel="shortcut icon" href="favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="external/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="external/slick/slick.min.css">
<link rel="stylesheet" type="text/css"
	href="external/rs-plugin/css/settings.min.css" media="screen" />
<link rel="stylesheet" href="css/template.css">
<link rel="stylesheet" href="font/icont-fonts.min.css">
<link href="css/jquery-ui.min.css" rel="stylesheet" />

</head>
<body>
	<div class="loader-wrapper">
		<div class="loader">
			<svg class="circular" viewBox="25 25 50 50">
					<circle class="loader-animation" cx="50" cy="50" r="20" fill="none"
					stroke-width="2" stroke-miterlimit="10" />
				</svg>
		</div>
	</div>
	<jsp:include page="user/layout/navbar.jsp" />
	<header class="no-shadow">
		<!-- mobile-header -->
		<jsp:include page="user/layout/mobileheader.jsp" />
		<!-- /mobile-header -->
		<!-- desktop-header -->
		<div class="desktop-header  header-06">
			<div class="container">

				<div class="pull-right text-right">

					<!-- box-info -->
					<div class="box-info">
						<div class="telephone">
							<span class="icon icon-call"></span>+0868-20-4845
						</div>
						<div class="time">
							Welcome to <span style="color: red">${user.fullname}</span>
						</div>
					</div>
					<!-- /box-info -->

				</div>
			</div>
			<div class="top-line">
				<div class="container">
					<div class="pull-left">
						<!-- logo -->
						<div class="logo">
							<a href="index.html"><img src="images/logo.png" alt="" /></a>
						</div>
						<!-- /logo -->
					</div>
					<div class="pull-right">
						<!-- account -->
						<jsp:include page="user/layout/account.jsp" />
						<!-- /account -->
						<!-- cart -->
						<jsp:include page="user/layout/cart.jsp" />
						<!-- /cart -->
					</div>
				</div>
			</div>
			<!-- /menu -->
			<jsp:include page="user/layout/menu.jsp" />
			<!-- /end menu -->
		</div>
		<!-- /desktop-header -->
		<!-- stuck nav -->
		<div class="stuck-nav">
			<div class="container">
				<div class="pull-left">
					<div class="stuck-menu-parent-box"></div>
				</div>
				<div class="pull-right">
					<div class="stuck-cart-parent-box"></div>
				</div>
			</div>
		</div>
		<!-- /stuck nav -->
	</header>
	<!-- Content -->
	<div id="pageContent">
		<jsp:include page="${param.view}" />
	</div>
	<footer>
		<div class="container-fluid">
			<div class="row">
				<div class="subscribe-box-01">
					<div class="container">
						<div class="row mobile-collapse">
							<h4 class="mobile-collapse_title visible-xs">GET THE LATEST
								NEWS DELIVERED DAILY!</h4>
							<div class="mobile-collapse_content">
								<div class="col-md-12 col-lg-7">
									<div class="title hidden-xs">GET THE LATEST NEWS
										DELIVERED DAILY!</div>
									<p>Give us your email and you will be daily updated with
										the latest events, in detail!</p>
								</div>
								<div class="col-md-12 col-lg-5">
									<form class="form-inline">
										<label class="sr-only" for="email">Email</label> <span
											class="addon-icon"> <span class="icon icon-email"></span>
										</span> <input type="email" class="form-control addon-icon"
											id="email" placeholder="Enter please your e-mail"> <a
											href="#" class="btn btn-inversion">SUBSCRIBE</a>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-content-col">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-3">
						<div class="mobile-collapse">
							<h4 class="mobile-collapse_title visible-xs">FREE SHIPPING</h4>
							<div class="mobile-collapse_content">
								<a href="#" class="services-block"> <span
									class="icon icon-airplanemode_active"></span>
									<div class="title">Free Shipping</div>
									<p>Free on all products</p>
								</a>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="mobile-collapse">
							<h4 class="mobile-collapse_title visible-xs">SECURED
								SHOPPING</h4>
							<div class="mobile-collapse_content">
								<a href="#" class="services-block"> <span
									class="icon icon-security"></span>
									<div class="title">Secured Shopping</div>
									<p>We use the best security features</p>
								</a>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="mobile-collapse">
							<h4 class="mobile-collapse_title visible-xs">FREE RETURNS</h4>
							<div class="mobile-collapse_content">
								<a href="#" class="services-block"> <span
									class="icon icon-assignment_return"></span>
									<div class="title">Free Returns</div>
									<p>Return for free within 30 days</p>
								</a>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="mobile-collapse">
							<h4 class="mobile-collapse_title visible-xs">SUPPORT</h4>
							<div class="mobile-collapse_content">
								<a href="#" class="services-block"> <span
									class="icon icon-headset_mic"></span>
									<div class="title">Support</div>
									<p>Effectiveand Friendly Support</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-12 hidden-xs">
						<div class="row">
							<div class="col-sm-4 col-md-12">
								<div class="footer-logo">
									<a href="index.html"><img src="images/logo.png" alt=""></a>
								</div>
							</div>
							<div class="col-sm-4 col-md-12">
								<div class="social-icon-round">
									<ul>
										<li><a class="icon fa fa-facebook"
											href="http://www.facebook.com/"></a></li>
										<li><a class="icon fa fa-twitter"
											href="http://www.twitter.com/"></a></li>
										<li><a class="icon fa fa-google-plus"
											href="http://www.google.com/"></a></li>
										<li><a class="icon fa fa-instagram"
											href="https://instagram.com/"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-2">
						<div class="mobile-collapse">
							<h4 class="mobile-collapse_title">INFORMATION</h4>
							<div class="mobile-collapse_content">
								<div class="v-links-list">
									<ul>
										<li><a href="#">About Us</a></li>
										<li><a href="#">Customer Service</a></li>
										<li><a href="#">Privacy Policy</a></li>
										<li><a href="#">Site Map</a></li>
										<li><a href="#">Search Terms</a></li>
										<li><a href="#">Advanced Search</a></li>
										<li><a href="#">Orders and Returns</a></li>
										<li><a href="#">Contact Us</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-2">
						<div class="mobile-collapse">
							<h4 class="mobile-collapse_title">WHY BUY FROM US</h4>
							<div class="mobile-collapse_content">
								<div class="v-links-list ">
									<ul>
										<li><a href="#">Shipping & Returns</a></li>
										<li><a href="#">Secure Shopping</a></li>
										<li><a href="#">International Shipping</a></li>
										<li><a href="#">Affiliates</a></li>
										<li><a href="#">Group Sales</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix divider visible-sm"></div>
					<div class="col-sm-6 col-md-2">
						<div class="mobile-collapse">
							<h4 class="mobile-collapse_title">MY ACCOUNT</h4>
							<div class="mobile-collapse_content">
								<div class="v-links-list ">
									<ul>
										<li><a href="#">Sign In</a></li>
										<li><a href="#">View Cart</a></li>
										<li><a href="#">My Wishlist</a></li>
										<li><a href="#">Track My Order</a></li>
										<li><a href="#">Help</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="mobile-collapse">
							<h4 class="mobile-collapse_title">CONTACTS</h4>
							<div class="mobile-collapse_content">
								<div class="list-info">
									<ul>
										<li>Address: 7563 St. Vicent Place, Glasgow</li>
										<li>Phone: +777 2345 7885</li>
										<li>Fax: +777 2345 7886</li>
										<li>Hours: 7 Days a week from 10:00 am</li>
										<li>E-mail: <a href="mailto:info@mydomain.com">info@mydomain.com</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container visible-xs">
				<div class="social-icon-round">
					<ul>
						<li><a class="icon fa fa-facebook"
							href="http://www.facebook.com/"></a></li>
						<li><a class="icon fa fa-twitter"
							href="http://www.twitter.com/"></a></li>
						<li><a class="icon fa fa-google-plus"
							href="http://www.google.com/"></a></li>
						<li><a class="icon fa fa-instagram"
							href="https://instagram.com/"></a></li>
					</ul>
				</div>
			</div>
			<div class="container">
				<div class="pull-right">
					<div class="payment-list">
						<ul>
							<li><a class="icon-01" href="#"></a></li>
							<li><a class="icon-02" href="#"></a></li>
							<li><a class="icon-03" href="#"></a></li>
							<li><a class="icon-04" href="#"></a></li>
							<li><a class="icon-05" href="#"></a></li>
							<li><a class="icon-06" href="#"></a></li>
							<li><a class="icon-07" href="#"></a></li>
							<li><a class="icon-08" href="#"></a></li>
						</ul>
					</div>
				</div>
				<div class="pull-left">
					<div class="box-copyright">
						<a href="index.html">StyList</a> &copy; 2017. <span>All
							Rights Reserved.</span>
					</div>
				</div>
			</div>
		</div>
		<a href="#" class="back-to-top"> <span
			class="icon icon-keyboard_arrow_up"></span> <span class="text">BACK
				TO TOP</span>
		</a>
	</footer>
	<!-- Modal (quickViewModal) -->
	<div class="modal  fade" id="ModalquickView" tabindex="-1"
		role="dialog" aria-label="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content ">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="icon icon-clear"></span>
					</button>
				</div>
				<form>
					<div class="modal-body">
						<!--modal-quick-view-->
						<div class="modal-quick-view">
							<div class="row">
								<div class="col-sm-5 col-lg-6">
									<div class="product-main-image">
										<img src='images/product/product-big-1.jpg' alt="" />
									</div>
								</div>
								<div class="col-sm-7 col-lg-6">
									<div class="product-info">
										<div class="add-info">
											<div class="sku pull-left">
												<span class="font-weight-medium color-defaulttext2">SKU:</span>
												mtk012c
											</div>
											<div class="availability pull-left">
												<span class="font-weight-medium color-defaulttext2">Availability:</span>
												<span class="color-red">In Stock</span> <span
													class="color-base">Out stock</span>
											</div>
										</div>
										<h1 class="title">Daisy Street 3/4 Sleeve Panelled Casual
											Shirt</h1>
										<div class="price">$45</div>
										<div class="description hidden-xs">
											<div class="text">Silver, metallic-blue and
												metallic-lavender silk-blend jacquard, graphic pattern,
												pleated ruffle along collar, long sleeves with
												button-fastening cuffs, buckle-fastening silver skinny belt,
												large pleated rosettes at hips.</div>
										</div>
										<div class="wrapper">
											<div class="title-options">
												Texture <span class="color-required">*</span>
											</div>
											<ul class="options-swatch-texture">
												<li><a href="#"><img
														src="images/custom/texture-img-01.jpg" alt=""></a></li>
												<li><a href="#"><img
														src="images/custom/texture-img-02.jpg" alt=""></a></li>
												<li><a href="#"><img
														src="images/custom/texture-img-03.jpg" alt=""></a></li>
											</ul>
										</div>
										<div class="wrapper">
											<div class="title-options">
												Size <span class="color-required">*</span>
											</div>
											<ul class="tags-list">
												<li><a href="#">XS</a></li>
												<li class="active"><a href="#">S</a></li>
												<li><a href="#">M</a></li>
												<li><a href="#">L</a></li>
											</ul>
										</div>
										<div class="wrapper">
											<div class="pull-left">
												<label class="qty-label">qty</label>
											</div>
											<div class="pull-left">
												<div class="style-2 input-counter">
													<span class="minus-btn"></span> <input type="text"
														value="1" size="5" /> <span class="plus-btn"></span>
												</div>
											</div>
											<div class="pull-left">
												<a href="#" class="btn btn-addtocart"><span
													class="icon icon-shopping_basket"></span>SHOP NOW!</a>
											</div>
										</div>
										<div class="wrapper">
											<div class="pull-left">
												<ul class="product_inside_info_link">
													<li class="text-right"><a href="#"> <span
															class="fa fa-heart-o"></span> <span class="text">ADD
																TO WISHLIST</span>
													</a></li>
													<li class="text-left"><a href="#" class="compare-link">
															<span class="fa fa-balance-scale"></span> <span
															class="text">ADD TO COMPARE</span>
													</a></li>
												</ul>
											</div>
										</div>
										<div class="wrapper">
											<ul class="social-icon-square">
												<li><a class="icon-01" href="#"></a></li>
												<li><a class="icon-02" href="#"></a></li>
												<li><a class="icon-03" href="#"></a></li>
												<li><a class="icon-04" href="#"></a></li>
												<li><a class="icon-05" href="#"></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--/modal-quick-view-->
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- / Modal (quickViewModal) -->
	<!-- Modal (newsletter) -->
	<div class="modal  fade" id="Modalnewsletter" tabindex="-1"
		role="dialog" aria-label="myModalLabel" aria-hidden="true"
		data-pause=2000>
		<div class="modal-dialog modal-md-middle">
			<div class="modal-content ">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="icon icon-clear"></span>
					</button>
					<h4 class="modal-title text-center text-uppercase">
						GET THE LATEST NEWS<br>DELIVERED DAILY!
					</h4>
				</div>
				<form>
					<div class="modal-body">
						<!--modal-add-cart-->
						<div class="modal-newsletter">
							<p>
								Give us your email and you will be daily updated with <br>the
								latest events, in detail!
							</p>
							<div class="subscribe-form">
								<div class="row-subscibe">
									<div class="col-left">
										<div class="input-group">
											<span class="input-group-addon"> <span
												class="icon icon-email"></span>
											</span> <input type="text" class="form-control"
												placeholder="Enter please your e-mail">
										</div>
									</div>
									<div class="col-right">
										<button type="submit" class="btn btn-fill">SUBSCRIBE</button>
									</div>
								</div>
								<div class="checkbox-group form-group-top clearfix">
									<input type="checkbox" id="checkBox1"> <label
										for="checkBox1"> <span class="check"></span> <span
										class="box"></span> Don’t show this popup again
									</label>
								</div>
							</div>
						</div>
						<!--/modal-add-cart-->
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- / Modal (newsletter) -->
	<!-- modalLoginForm-->
	<div class="modal  fade" id="modalLoginForm" tabindex="-1"
		role="dialog" aria-label="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-md-small">
			<div class="modal-content ">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="icon icon-clear"></span>
					</button>
					<h4 class="modal-title text-center text-uppercase">Login form</h4>
				</div>
				<form>
					<div class="modal-body">
						<!--modal-add-login-->
						<div class="modal-login">
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"> <span
										class="icon icon-person_outline"></span>
									</span> <input type="text" id="LoginFormName" class="form-control"
										placeholder="Name:">
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"> <span
										class="icon icon-lock_outline"></span>
									</span> <input type="password" id="LoginFormPass" class="form-control"
										placeholder="Password:">
								</div>
							</div>
							<div class="checkbox-group">
								<input type="checkbox" id="checkBox2"> <label
									for="checkBox2"> <span class="check"></span> <span
									class="box"></span> Remember me
								</label>
							</div>
							<button type="button" class="btn btn-full">SIGN IN</button>
							<button type="button" class="btn btn-full">CREATE AN
								ACCOUNT</button>
							<div class="text-center"></div>
							<div class="social-icon-fill">
								<div>Or sign in with social</div>
								<ul>
									<li><a class="icon bg-facebook fa fa-facebook"
										href="http://www.facebook.com/"></a></li>
									<li><a class="bg-twitter fa fa-twitter"
										href="http://www.twitter.com/"></a></li>
									<li><a class="bg-google-plus fa fa-google-plus"
										href="http://www.google.com/"></a></li>
								</ul>
							</div>
							<ul class="link-functional">
								<li><a href="#">Forgot your username?</a></li>
								<li><a href="#">Forgot your password?</a></li>
							</ul>
						</div>
						<!--/modal-add-login-->
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- /modalLoginForm-->
	<!-- modalAddToCart -->
	<div class="modal  fade" id="modalAddToCart" tabindex="-1"
		role="dialog" aria-label="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content ">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="icon icon-clear"></span>
					</button>
				</div>
				<div class="modal-body">
					<!--  -->
					<div class="modal-add-cart">
						<span class="icon color-base icon-check_circle"></span>
						<p>Added to cart successfully!</p>
						<a class="btn btn-underline color-defaulttext2" href="#">GO TO
							CART</a>
					</div>
					<!-- / -->
				</div>
			</div>
		</div>
	</div>
	<!-- /modalAddToCart -->
	<!-- modalAddToCartProduct -->
	<div class="modal  fade" id="modalAddToCartProduct" tabindex="-1"
		role="dialog" aria-label="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-md">
			<div class="modal-content ">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="icon icon-clear"></span>
					</button>
				</div>
				<div class="modal-body">
					<!--  -->
					<div class="modal-add-cart-product desctope">
						<div class="row">
							<div class="col-sm-6">
								<div class="modal-messages">
									<span class="icon color-base icon-check_circle"></span>
									<p>Product successfully added to your shopping cart</p>
								</div>
								<div class="modal-product">
									<div class="image-box">
										<img src="images/product/product-01.jpg" alt="">
									</div>
									<div class="title">Daisy Street 3/4 Sleeve Panelled
										Casual Shirt</div>
									<div class="description">Black, Xl</div>
									<div class="qty">Qty: 1</div>
								</div>
								<div class="total">
									TOTAL: <span>$135</span>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="cart-item-total">
									<a href="shopping_cart_01.html">
										<div class="cart-item-icon">
											<span class="icon icon-shopping_basket"></span>View Cart
										</div>
									</a>
									<p>
										There are 3 items<br> in your cart
									</p>
								</div>
								<div class="total-product">
									Total products: <span>$245</span>
								</div>
								<div class="total">
									TOTAL: <span>$135</span>
								</div>
								<a href="#" class="btn invert">CONTINUE SHOPPING</a> <a href="#"
									class="btn">PROCEED TO CHECKOUT</a>
							</div>
						</div>
					</div>
					<div class="modal-add-cart-product mobile">
						<div class="modal-messages">
							<span class="icon color-base icon-check_circle"></span>
							<p>Added to cart successfully!</p>
						</div>
						<a href="#" class="btn btn-underline">GO TO CART!</a>
					</div>
					<!-- / -->
				</div>
			</div>
		</div>
	</div>
	<!-- /modalAddToCartProduct -->
	<!-- modalCompare -->
	<div class="modal-compare">
		<div class="container">
			<a href="#" class="icon icon-close button-close"></a>
			<div class="title-top">COMPARE</div>
			<div class="row-content">
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a>
				</div>
			</div>
			<div class="row-button">
				<a href="#" class="clear-all btn btn-lg btn-underline"><span>CLEAR
						ALL</span></a> <a href="#" class="btn btn-inversion btn-compare"><span
					class="fa fa-balance-scale"></span>COMPARE</a>
			</div>
		</div>
	</div>
	<!-- /modalCompare -->
	<!-- modalWishlist -->
	<div class="modal-wishlist">
		<div class="container">
			<a href="#" class="icon icon-close button-close"></a>
			<div class="title-top">MY WISHLIST</div>
			<div class="row-content">
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
				<div class="item">
					<a href="#" class="img"><img
						src="images/product/product-01.jpg" alt="" /></a> <a href="#"
						class="title">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
					<div class="price">$45</div>
					<a href="#" class="icon icon-delete"></a> <a href="#"
						class="icon icon-check icon-check_circle"></a>
				</div>
			</div>
			<div class="row-button">
				<a href="#" class="clear-all btn btn-lg btn-underline"><span>CLEAR
						ALL</span></a>
			</div>
		</div>
	</div>
	<!-- /modalWishlist -->
	<script src="external/jquery/jquery-2.1.4.min.js"></script>
	<script src="external/bootstrap/bootstrap.min.js"></script>
	<script src="external/countdown/jquery.plugin.min.js"></script>
	<script src="external/countdown/jquery.countdown.min.js"></script>
	<script src="external/slick/slick.min.js"></script>
	<script src="external/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script src="external/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script src="external/panelmenu/panelmenu.js"></script>
	<script src="js/quick-view.js"></script>
	<script src="js/main.js"></script>


   <script src="js/jquery.validate.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	
	<script>
		$(function() {
			$("input[type=number]").change(function() {
				var qty = $(this).val();
				var id = $(this).attr("data-qty-id");
				$.ajax({
					url : "cart/update.php",
					data : {
						id : id,
						qty : qty
					},
					dataType : "json",
					success : function(response) {
						$("#cart-cnt").html(response.count + " items");
						$("#cart-amt").html("$" + response.amount);
					}
				});

				var a = $(this).parents("tr").find("td:eq(2)").html();
				var b = $(this).parents("tr").find("td:eq(4)").html();
				var price = parseFloat(a);
				var discount = parseFloat(b);
				var amount = Math.round(qty * price * (1 - discount)*100)/100;
				$(this).parents("tr").find("td:eq(5)").html(amount);
			});

			$("button[data-remove-id]").click(function() {
				var id = $(this).attr("data-remove-id");
				$.ajax({
					url : "cart/remove.php",
					data : {
						id : id
					},
					dataType : "json",
					success : function(response) {
						$("#cart-cnt").html(response.count + " items");
						$("#cart-amt").html("$" + response.amount);
					}
				});
				// Xóa hàng chứa nút xóa
				$(this).parents("tr").remove();

			});
		});
	</script>
	<script>
		$(function() {
			$("[data-add-id]").click(function() {
				var id = $(this).attr("data-add-id");
				$.ajax({
					url : "cart/add.php",
					data : {
						id : id
					},
					dataType : "json",
					success : function(response) {
						$("#cart-cnt").html(response.count);
						$("#cart-amt").html("$" + response.amount);
					}
				});
			});
		});
	</script>


</body>
</html>