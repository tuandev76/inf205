<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12">
			<div class="carousel-heading no-margin">
				<h4>Check Out</h4>
			</div>
			<div class="page-content">
				<span>${message}</span>
			
				<form:form action="user/order/purchase.php" modelAttribute="order">
					<form:hidden path="id" />
					<div class="row">
						<div class="form-group col-sm-4">
							<label>Customer</label>
							<form:input path="customer.id" readonly="true"
								cssClass="form-control" />
						</div>
						<div class="form-group col-sm-4">
							<label>Order Date</label>
							<form:input path="orderDate" readonly="true"
								cssClass="form-control" />
						</div>
						<div class="form-group col-sm-4">
							<label>Require Date</label>
							<form:input path="requireDate" cssClass="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-4">
							<label>Receiver</label>
							<form:input path="receiver" cssClass="form-control" />
						</div>
						<div class="form-group col-sm-4">
							<label>Address</label>
							<form:input path="address" cssClass="form-control" />
						</div>
						<div class="form-group col-sm-4">
							<label>Amount</label>
							<form:input path="amount" readonly="true" cssClass="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-12">
							<label>Notes</label>
							<form:textarea path="description" cssClass="form-control"
								rows="5"></form:textarea>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 align-left">
							<br> <input type="submit" class="orange" value="Purchase">
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
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
						$("#cart-cnt").html(response.count + " items");
						$("#cart-amt").html("$" + response.amount);
					}
				});
			});
		});
	</script>
</body>
</html>