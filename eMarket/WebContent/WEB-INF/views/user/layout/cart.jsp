<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set value="${sessionScope['scopedTarget.cart']}" var="cart" />
<div class="main-parent-cart">
	<div class="cart">
		<div class="dropdown">
			<a class="dropdown-toggle"> <span
				class="icon icon-shopping_basket"></span> <span
				class="badge badge-cart" id="cart-cnt">${cart.count}
			</span>
				<div class="dropdown-label hidden-sm hidden-xs" id="cart-amt" >${cart.amount}</div>
			</a>
			<div class="dropdown-menu slide-from-top">
				<div class="container">
					<div class="top-title">RECENTLY ADDED ITEM(S)</div>
					<a href="#" class="icon icon-close cart-close"></a>
					<ul>
						<li class="item">
							<div class="img">
								<a href="#"><img src="images/product/product-01.jpg" alt="" /></a>
							</div>
							<div class="info">
								<div class="title-col">
									<h2 class="title">
										<a href="#">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
									</h2>
									<div class="details">Black, XL</div>
								</div>
								<div class="price">$45</div>
								<div class="qty">
									<div class="qty-label">Qty:</div>
									<div class="style-2 input-counter">
										<span class="minus-btn"></span> <input type="text" value="1"
											size="5" /> <span class="plus-btn"></span>
									</div>
								</div>
							</div>
							<div class="item-control">
								<div class="delete">
									<a href="#" class="icon icon-delete" title="Delete"></a>
								</div>
								<div class="edit">
									<a href="#" class="icon icon-edit" title="Edit"></a>
								</div>
							</div>
						</li>
						<li class="item">
							<div class="img">
								<a href="#"><img src="images/product/product-01.jpg" alt="" /></a>
							</div>
							<div class="info">
								<div class="title-col">
									<h2 class="title">
										<a href="#">Daisy Street 3/4 Sleeve Panelled Casual Shirt</a>
									</h2>
									<div class="details">Black, XL</div>
								</div>
								<div class="price">$45</div>
								<div class="qty">
									<div class="qty-label">Qty:</div>
									<div class="style-2 input-counter">
										<span class="minus-btn"></span> <input type="text" value="1"
											size="5" /> <span class="plus-btn"></span>
									</div>
								</div>
							</div>
							<div class="item-control">
								<div class="delete">
									<a href="#" class="icon icon-delete" title="Delete"></a>
								</div>
								<div class="edit">
									<a href="#" class="icon icon-edit" title="Edit"></a>
								</div>
							</div>
						</li>
					</ul>
					<h4 class="empty-cart-js hide">Your Cart is Empty</h4>
					<div class="cart-bottom">
						<div class="pull-right">
							<div class="pull-left">
								<div class="cart-total">
									TOTAL: <span> $135.00</span>
								</div>
							</div>
							<a href="checkout.html" class="btn icon-btn-left"><span
								class="icon icon-check_circle"></span>CHECKOUT</a>
						</div>
						<div class="pull-left">
							<a href="cart/view.php" class="btn icon-btn-left"><span
								class="icon icon-shopping_basket"></span>VIEW CART</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

