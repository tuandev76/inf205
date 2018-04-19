<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

	<div class="col-lg-12 col-md-12 col-sm-12">
		<div class="carousel-heading">
			<h4>Product</h4>
			<div class="carousel-arrows"></div>
		</div>
		<!-- Product Item -->
		<c:forEach var="p" items="${prods}">
			<div class="col-lg-4 col-md-4 col-sm-4 product">

				<div class="product-image">
					<a href="product/detail/${p.id}.php"><img
						src="images/products/${p.image}" alt="Product1" width=98%
						height="270px" class="product-hover"> </a>
				</div>
				<div class="product-info">
					<h6>
						<a href="product/detail/${p.id}.php">${fn:substring(p.name, 0,20)}</a>
					</h6>
					<span class="price">${p.unitPrice}</span>
					<div class="rating readonly-rating" data-score="4"></div>
				</div>
				<div class="product-actions">
					<span class="add-to-cart"> <span class="action-wrapper">
							<i class="icons icon-basket-2"></i> <span class="action-name"
							data-add-id="${p.id}">Add to cart</span>
					</span>
					</span>
				</div>
			</div>
		</c:forEach>
	</div>
	
