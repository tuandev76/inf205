<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<c:choose>
	<c:when test="${cart.count == 0}">
		<div class="container offset-80">
			<div class="on-duty-box">
				<img src="images/empty-shopping-cart-icon.png" alt="">
				<h1 class="block-title large">Shopping Cart is Empty</h1>
				<div class="description">You have no items in your shopping
					cart.</div>
				<a class="btn btn-default" href="javascript:history.back()">CONTINUE
					SHOPPING </a>
			</div>
		</div>
	</c:when>
	<c:otherwise>
		
			<div class="container offset-18">
				<h1 class="block-title text-inherit large text">Shopping cart</h1>
				<div class="row">
					<div class="col-lg-8">
						<div class="shopping-cart-col">
							<table class="shopping-cart-table">
								<c:forEach var="p" items="${cart.items}">
									<tbody>
										<tr>
											<td>
												<div class="product-image">
													<a href="product.html"> <img
														src="images/products/${p.image}" alt="">
													</a>
												</div>
											</td>
											<td>
												<h5 class="product-title">
													<a href="product.html">${p.name}</a>
												</h5>

											</td>
											<td>
												<div class="product-price unit-price">
													<f:formatNumber value="${p.unitPrice}" type="currency"></f:formatNumber>
												</div>
											</td>

											<td>

												<div class="detach-quantity-desctope">
													<div class="input">
														<label>Qty:</label>
														<div class="style-2 input-counter">

															<input value="${p.quantity}" data-qty-id="${p.id}"
																type="number" size="100" min="0" />

														</div>
													</div>
												</div>
											</td>
											<td>
												<div class="product-price unit-price">
													<f:formatNumber value="${p.discount}" type="currency"></f:formatNumber>
												</div>
											</td>
											<td>
												<div class="product-price subtotal">
													${p.unitPrice*p.quantity*(1-p.discount)}</div>
											</td>
											<td><button class="product-delete icon icon-delete"
													data-remove-id="${p.id}"></button></td>
										</tr>


									</tbody>
								</c:forEach>
							</table>
							<div class="shopping-cart-btns">
								<div class="pull-right">
									<a class="btn-link" href="javascript:history.back()">CONTINUE
										SHOPPING<span class="icon icon-keyboard_arrow_right"></span>
									</a>
									<div class="clearfix visible-xs visible-sm"></div>
									<a class="btn-link" href="cart/clear.php"><span
										class="icon icon-delete"></span>CLEAR SHOPPING CART</a>
								</div>
								<div class="pull-left">
									<a class="btn-link" href="cart/view.php"><span
										class="icon icon-cached color-base"></span>UPDATE CART</a>

								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 shopping-cart-box-aside">


						<div class="shopping-cart-box">
							<table class="table-total">
								<tbody>
									<tr>
										<th class="text-left">SUBTOTAL:</th>
										<td class="text-right">$45</td>
									</tr>
									<tr>
										<th class="text-left">SHIPPING &amp; HANDLING:</th>
										<td class="text-right">$10</td>
									</tr>
								</tbody>
								<tfoot>

									<tr>
										<th>GRAND TOTAL:</th>
										<td id="cart-amt"><f:formatNumber
												value="${sessionScope['scopedTarget.cart'].amount}"
												type="currency" /></td>
									</tr>

								</tfoot>
							</table>
							<a href="user/order/checkout.php" class="btn btn-full icon-btn-left"><span
								class="icon icon-check_circle"></span>PROCEED TO CHECKOUT</a>
						</div>

					</div>
				</div>
			</div>
	
	</c:otherwise>
</c:choose>











