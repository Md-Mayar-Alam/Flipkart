<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="header-container">
	<div class="header-mini-container">
		<div class="logo-container">
			<a href="/"><img
				src="https://img1a.flixcart.com/www/linchpin/fk-cp-zion/img/flipkart-plus_4ee2f9.png"
				width="75"> </a>
			<div>
				<a class="explore" href="/plus">Explore <span
					class="explore-plus">Plus</span> <img
					src="https://img1a.flixcart.com/www/linchpin/fk-cp-zion/img/plus_b13a8b.png"
					width="10">
				</a>
			</div>
		</div>

		<div class="search-container">
			<form id="search_form" method="get" action="/search">
				<div class="search">
					<input type="text" class="search-box"
						placeholder="Search for Products, Brands and more">
					<button class="search-button" type="submit">
						<i class="fa fa-search search-icon"></i>
					</button>
				</div>
			</form>
		</div>

		<div class="auth-container">
			<div class="login-container display-auth">
				<a class="same-for-all-auth" href="/login">Login & Signup</a>
			</div>
			<div class="header-more-container display-auth">
				<div class="same-for-all-auth align-in-row">
					<span>More</span>
					<div class="header-more-angle">
						<i class="fa fa-angle-down"></i> <i class="fa fa-angle-up hide"></i>
					</div>
				</div>
			</div>
			<div class="cart-container display-auth">
				<div class="same-for-all-auth">
					<a href="/viewCart" class="align-in-row">
						<div class="shopping-cart">
							<i class="fa fa-shopping-cart"></i>
						</div> <span>Cart</span>
					</a>
				</div>
			</div>

		</div>
	</div>
</div>

<div class="menu-container">
	<div class="menu-bar">
		<ul class="align-in-row justify-space-between">
			<c:forEach var="l1Category" items="${l1CategoryList }" >
				<li class="menu-bar-list">
					<span class="l1-menu-heading">
						${l1Category.l1CategoryName }
						<i class="fa fa-angle-down"></i>
					 	<i class="fa fa-angle-up hide"></i>
					</span>
					
					
					<%-- <c:if test="${not empty l1Category.l2Categories }">
						<ul class="ul-temp">
							<li class="li-temp">
								<ul class="l2-menu hide">
									<c:forEach var="l2Category" items="${l1Category.l2Categories }">
										<li class="menu-heading menu-width">${l2Category.l2CategoryName }
											<c:if test="${not empty l2Category.l3Categories }">
												<ul class="l3-menu">
													<c:forEach var="l3Category" items="${l2Category.l3Categories }">
														<li class="l3-menu-li">${l3Category.l3CategoryName }</li>
													</c:forEach>
												</ul>
											</c:if>
										</li>
									</c:forEach>
								</ul>
							</li>
						</ul>
					</c:if> --%>
					
					<c:if test="${not empty l1Category.l2Categories }">
						<div class="l2-category-container">
							<ul class="l2-menu hide">
								<c:forEach var="l2Category" items="${l1Category.l2Categories }">
									<li class="l2-menu-heading">
										${l2Category.l2CategoryName }
										<c:if test="${not empty l2Category.l3Categories }">
										<ul>
											<c:forEach var="l3Category" items="${l2Category.l3Categories }">
												<li class="l3-menu">${l3Category.l3CategoryName }</li><br>
											</c:forEach>
										</ul>
										</c:if>
									</li>
								</c:forEach>
							</ul>
						</div>
					</c:if>
				</li>
			</c:forEach>
		</ul>
	</div>
 </div>