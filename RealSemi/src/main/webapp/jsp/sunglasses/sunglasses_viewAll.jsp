<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
String ctxPath = request.getContextPath();
%>


<jsp:include page="../common/header_meta.jsp" />


<%-- 내가 만든 CSS --%>
<link rel="stylesheet" type="text/css"
	href="<%=ctxPath%>/css/sunglasses/sunglasses_viewAll.css" />

<%-- JavaScript --%>



<title>선글라스 | Gentle Monster</title>
<jsp:include page="../common/header.jsp" />
<script type="text/javascript"
	src="<%=ctxPath%>/js/sunglasses/sunglasses.js"></script>

<%-- 본문 --%>
<!-- Category -->
<div class="category-wrap jsCateWrap">
	<div class="category category--list jsCate">
		<div class="category__wrap relative">
			<div
				class="category__nav category__nav--prev jsCatePrev swiper-button-disabled"
				tabindex="0" role="button" aria-label="Previous slide"
				aria-disabled="true">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24">
					<g id="타원_112" data-name="타원 112"
						transform="translate(24 24) rotate(180)" fill="#fff" stroke="#000"
						stroke-width="1">
						<circle cx="12" cy="12" r="12" stroke="none"></circle>
						<circle cx="12" cy="12" r="11.5" fill="none"></circle>
					</g>
					<path id="패스_133" data-name="패스 133"
						d="M5924.868,4162.23l4.9,4.9-4.9,4.9"
						transform="translate(5939.053 4179.106) rotate(180)" fill="none"
						stroke="#000" stroke-width="2"></path>
				</svg>
			</div>
			<div
				class="category__container swiper-container jsCategory on swiper-container-horizontal"
				data-break="9999">
				<ul class="category__list swiper-wrapper inline text-center"
					style="transform: translate3d(0px, 0px, 0px);">
					<c:if test="${not empty requestScope.allView}">

						<li id="allList"
							class="category__item category__item--View all relative swiper-slide current swiper-slide-visible swiper-slide-active"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/product.gm?categoryId=1&allView=1"
							class="category__link"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/1.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">전체보기</span>
						</a></li>
					</c:if>
					<c:if test="${empty requestScope.allView}">
						<li
							class="category__item category__item--View all relative swiper-slide swiper-slide-visible swiper-slide-active"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/product.gm?categoryId=1&allView=1"
							class="category__link"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/1.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">전체보기</span>
						</a></li>
					</c:if>

					<c:if test="${not empty requestScope.bestSeller}">
						<li
							class="category__item category__item--View all relative swiper-slide swiper-slide-visible current"
							style="width: 98px; border-color: #000;"><a
							href="<%=ctxPath%>/product/category.gm?bestSeller=1&categoryId=1"
							class="category__link" data-category="category"
							data-action="bestsellers"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/2.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">베스트셀러</span>
						</a></li>
					</c:if>
					<c:if test="${empty requestScope.bestSeller}">
						<li
							class="category__item category__item--View all relative swiper-slide swiper-slide-visible"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?bestSeller=1&categoryId=1"
							class="category__link"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/2.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">베스트셀러</span>
						</a></li>
					</c:if>


					<c:if test="${not empty requestScope.isTint}">
						<li
							class="category__item category__item--View all relative current swiper-slide swiper-slide-visible"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?isTint=1&categoryId=1"
							class="category__link"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/3.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">틴트 렌즈</span>
						</a></li>
					</c:if>
					<c:if test="${empty requestScope.isTint}">
						<li
							class="category__item category__item--View all relative swiper-slide swiper-slide-visible"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?isTint=1&categoryId=1"
							class="category__link"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/3.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">틴트 렌즈</span>
						</a></li>
					</c:if>




					<c:if test="${not empty requestScope.isGift}">
						<li
							class="category__item category__item--View all relative current swiper-slide swiper-slide-visible"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?isGift=1&categoryId=1"
							/product/category.gm?isGift=1 " class="category__link"> <span
								class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/4.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">선물추천</span>
						</a></li>
					</c:if>
					<c:if test="${empty requestScope.isGift}">
						<li
							class="category__item category__item--View all relative swiper-slide swiper-slide-visible"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?isGift=1&categoryId=1"
							/product/category.gm?isGift=1 " class="category__link"> <span
								class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/4.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">선물추천</span>
						</a></li>
					</c:if>



					<c:if test="${not empty requestScope.square}">
						<li
							class="category__item category__item--View all relative current swiper-slide swiper-slide-visible"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?square=1&categoryId=1"
							class="category__link" data-category="category"
							data-action="square"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/5.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">사각 프레임</span>
						</a></li>
					</c:if>
					<c:if test="${empty requestScope.square}">
						<li
							class="category__item category__item--View all relative swiper-slide swiper-slide-visible"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?square=1&categoryId=1"
							class="category__link"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/5.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">사각 프레임</span>
						</a></li>
					</c:if>




					<c:if test="${not empty requestScope.cateye}">
						<li
							class="category__item category__item--View all relative swiper-slide swiper-slide-visible current"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?cateye=2&categoryId=1"
							class="category__link"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/6.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">캣아이 프레임</span>
						</a></li>
					</c:if>
					<c:if test="${empty requestScope.cateye}">
						<li
							class="category__item category__item--View all relative swiper-slide swiper-slide-visible"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?cateye=2&categoryId=1"
							class="category__link"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/6.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">캣아이 프레임</span>
						</a></li>
					</c:if>





					<c:if test="${not empty requestScope.round}">
						<li
							class="category__item category__item--View all relative swiper-slide swiper-slide-visible current"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?round=3&categoryId=1"
							class="category__link"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/7.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">원형 프레임</span>
						</a></li>
					</c:if>
					<c:if test="${empty requestScope.round}">
						<li
							class="category__item category__item--View all relative swiper-slide swiper-slide-visible"
							style="width: 98px;"><a
							href="<%=ctxPath%>/product/category.gm?round=3&categoryId=1"
							class="category__link"> <span class="category__thumbnail"><img
									src="<%=ctxPath%>/image/sunglasses/category/7.jpg"
									class="category__img"></span> <span
								class="category__name font--kr font--11 font--md">원형 프레임</span>
						</a></li>
					</c:if>
				</ul>
				<span class="swiper-notification" aria-live="assertive"
					aria-atomic="true"></span> <span class="swiper-notification"
					aria-live="assertive" aria-atomic="true"></span>
			</div>
			<div
				class="category__nav category__nav--next jsCateNext swiper-button-disabled"
				tabindex="0" role="button" aria-label="Next slide"
				aria-disabled="true">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24">
					<g id="타원_111" data-name="타원 111" fill="#fff" stroke="#000"
						stroke-width="1">
						<circle cx="12" cy="12" r="12" stroke="none"></circle>
						<circle cx="12" cy="12" r="11.5" fill="none"></circle>
					</g>
					<path id="패스_132" data-name="패스 132"
						d="M5924.868,4162.23l4.9,4.9-4.9,4.9"
						transform="translate(-5915.053 -4155.106)" fill="none"
						stroke="#000" stroke-width="2"></path>
				</svg>
			</div>
		</div>
	</div>
</div>

<!-- Title & Filter -->

<div class="content-top-dummy relative jsContDummy">
	<div class="content-top jsContTop">
		<h1 class="hidden">View All Sunglass Designs</h1>
		<div class="page-title font--kr font--16 font--bd">
			선글라스 / <span id="list-sub-category">전체보기</span> <span
				id="list-total-count">(${fn:length(requestScope.productList)})</span>
		</div>
		<div class="list-btn content-top__right inline float-right">
			<c:if test="${empty requestScope.isCategorySearch}">
				<button data-toggle="modal" data-target="#filterModal" type="button"
					class="filter-toggle inline jsFilterBtn ">
					<span class="filter-toggle__icon relative"> <span
						class="filter-toggle__bar filter-toggle__bar--first"></span> <span
						class="filter-toggle__bar filter-toggle__bar--second"></span>
					</span> <span class="filter-toggle__txt font--kr font--11 font--md"
						data-default="필터" data-close="Filter Close"> </span>
				</button>
			</c:if>
		</div>
	</div>


</div>



<%-- 필터모달 시작 --%>
<!-- Modal -->
<div class="modal fade" id="filterModal">
	<div class="modal-dialog" style="max-width: 1500px;">
		<div class="modal-content">

			<!-- Modal header -->
			<div class="modal-header">
				<h5 class="modal-filter">선글라스 / 전체보기</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<form name="filterFrm">
					<div class="filter-popup__inner">
						<input type="hidden" name="categoryId" value="1" />

						<!-- Filter content -->
						<div class="filter-popup__content clearfix">
							<div class="filter-popup__box float-left relative frame_color"
								role="group" aria-labelledby="frame_color">
								<button type="button"
									class="filter-subject relative jsFilterToggle"
									aria-expanded="false" aria-controls="frame_color-list">
									<div id="frame_color"
										class="filter-subject__txt font--kr font--13 font--md">프레임
										컬러</div>
									<div class="filter-arrow n-arrow n-arrow--down jsFilterArrow"></div>
								</button>
								<div id="frame_color-list" class="filter" style="">
									<ul class="filter__list inline">
										<c:forEach var="frameColorVo"
											items="${requestScope.getFrameColor}" varStatus="status">
											<li class="filter__item filter__item--inline relative">
												<label for="frame_color[]_${status.index}"
												class="filter__label n-label n-label--radio font--kr font--12 font--rg">
													<input type="checkbox" name="frame_color" class="n-radio "
													value="${frameColorVo.frameColorId}"
													id="frame_color[]_${status.index}">
													<div class="input-box-check-layer"></div>${frameColorVo.frameColorKor}
											</label>
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<div class="filter-popup__box float-left relative lens_color"
								role="group" aria-labelledby="lens_color">
								<button type="button"
									class="filter-subject relative jsFilterToggle"
									aria-expanded="false" aria-controls="lens_color-list">
									<div id="lens_color"
										class="filter-subject__txt font--kr font--13 font--md">렌즈
										컬러</div>
									<div class="filter-arrow n-arrow n-arrow--down jsFilterArrow"></div>
								</button>
								<div id="lens_color-list" class="filter" style="">
									<ul class="filter__list inline">
										<c:forEach var="lenseColorVo"
											items="${requestScope.getLenseColor}" varStatus="status">
											<li class="filter__item filter__item--inline relative">
												<label for="lens_color[]_${status.index}"
												class="filter__label n-label n-label--radio font--kr font--12 font--rg">
													<input type="checkbox" name="lens_color" class="n-radio "
													value="${lenseColorVo.lenseColorId}"
													id="lens_color[]_${status.index}">
													<div class="input-box-check-layer"></div>
													${lenseColorVo.lenseColorKor}
											</label>
											</li>
										</c:forEach>

									</ul>
								</div>
							</div>
							<div class="filter-popup__box float-left relative materials"
								role="group" aria-labelledby="materials">
								<button type="button"
									class="filter-subject relative jsFilterToggle"
									aria-expanded="false" aria-controls="materials-list">
									<div id="materials"
										class="filter-subject__txt font--kr font--13 font--md">소재</div>
									<div class="filter-arrow n-arrow n-arrow--down jsFilterArrow"></div>
								</button>
								<div id="materials-list" class="filter" style="">
									<ul class="filter__list inline">
										<c:forEach var="materialVo"
											items="${requestScope.getMaterial}" varStatus="status">
											<li class="filter__item filter__item--inline relative"
												data-category="filter" data-action="소재" data-label="아세테이트">
												<label for="materials[]_${status.index}"
												class="filter__label n-label n-label--radio font--kr font--12 font--rg">
													<input type="checkbox" name="materials" class="n-radio "
													value="${materialVo.materialId}"
													id="materials[]_${status.index}">
													<div class="input-box-check-layer"></div>
													${materialVo.materialName}
											</label>
											</li>
										</c:forEach>


									</ul>
								</div>
							</div>
							<div class="filter-popup__box float-left relative gender"
								role="group" aria-labelledby="gender">
								<button type="button"
									class="filter-subject relative jsFilterToggle"
									aria-expanded="false" aria-controls="gender-list">
									<div id="gender"
										class="filter-subject__txt font--kr font--13 font--md">젠더</div>
									<div class="filter-arrow n-arrow n-arrow--down jsFilterArrow"></div>
								</button>
								<div id="gender-list" class="filter" style="">
									<ul class="filter__list inline">
										<li class="filter__item filter__item--inline relative"
											data-category="filter" data-action="젠더" data-label="남성"><label
											for="gender[]_0"
											class="filter__label n-label n-label--radio font--kr font--12 font--rg">
												<input type="checkbox" name="gender" class="n-radio "
												value="1" id="gender[]_0">
												<div class="input-box-check-layer"></div> 남성
										</label></li>
										<li class="filter__item filter__item--inline relative"
											data-category="filter" data-action="젠더" data-label="여성"><label
											for="gender[]_1"
											class="filter__label n-label n-label--radio font--kr font--12 font--rg">
												<input type="checkbox" name="gender" class="n-radio "
												value="2" id="gender[]_1">
												<div class="input-box-check-layer"></div> 여성
										</label></li>
										<li class="filter__item filter__item--inline relative"
											data-category="filter" data-action="젠더" data-label="유니섹스">
											<label for="gender[]_2"
											class="filter__label n-label n-label--radio font--kr font--12 font--rg">
												<input type="checkbox" name="gender[]" class="n-radio "
												value="3" id="gender[]_2">
												<div class="input-box-check-layer"></div> 유니섹스
										</label>
										</li>
									</ul>
								</div>
							</div>
							<div class="filter-popup__box float-left relative" role="group"
								aria-labelledby="filter_sort">
								<button type="button"
									class="filter-subject relative jsFilterToggle"
									aria-expanded="false" aria-controls="filter_sort-list">
									<div id="filter_sort"
										class="filter-subject__txt font--kr font--13 font--md">정렬</div>
									<div class="filter-arrow n-arrow n-arrow--down jsFilterArrow"></div>
								</button>
								<div id="filter_sort-list" class="filter" style="">
									<ul class="filter__list inline">
										<li class="filter__item filter__item-sort relative"><label
											for="order_newest"
											class="filter__label n-label font--kr font--12 font--rg">
												<input type="radio" name="order"
												class="n-radio n-radio--once " value="registerDay Desc"
												id="order_newest"> <span
												class="filter__checkbox n-checkbox n-checkbox--radio"></span>
												신상품순
										</label></li>
										<li class="filter__item filter__item-sort relative"><label
											for="order_low_price"
											class="filter__label n-label font--kr font--12 font--rg">
												<input type="radio" name="order"
												class="n-radio n-radio--once " value="price Asc"
												id="order_low_price"> <span
												class="filter__checkbox n-checkbox n-checkbox--radio"></span>
												낮은가격순
										</label></li>
										<li class="filter__item filter__item-sort relative"
											data-category="filter" data-action="filter_option_click"
											data-label="높은가격순"><label for="order_high_price"
											class="filter__label n-label font--kr font--12 font--rg">
												<input type="radio" name="order"
												class="n-radio n-radio--once " value="price Desc"
												id="order_high_price"> <span
												class="filter__checkbox n-checkbox n-checkbox--radio"></span>
												높은가격순
										</label></li>

									</ul>

								</div>
							</div>
							<!--// Filter : Sort -->
						</div>
						<!--// Filter content -->
						<div class="filter-popup__bottom inline text-right">
							<button type="button"
								class="filter-btn font--kr font--14 font--bd js-filter-form-reset jsFilterReset">
								초기화 <span
									class="selected-count font--kr js-filter-count jsSelectedCount"></span>
							</button>
							<button type="button" id="filterSubmitBtn"
								class="filter-btn filter-btn--black btn-ui--black gm-component__spinner-container font--kr font--14 font--bd">
								<div class="gm-component__spinner-wrapper">
									<div class="gm-component__spinner dark"></div>
								</div>
								<span class="result-count <?= $font ?> js-filter-result-count">상품보기</span>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<!-- Modal footer -->
		<div class="modal-footer"></div>
	</div>
</div>


<!-- <메인메뉴> -->
<c:if test="${not empty requestScope.productList}">
	<div id="product-list">

		<ul id="filter-selected-result" class="product-list__wrapper inline"
			role="list" aria-live="polite">
			<c:forEach var="productVo" items="${requestScope.productList}"
				varStatus="status">
				<c:forEach var="count" items="${requestScope.sunglassesCount}"
					varStatus="status2">
					<c:if
						test="${productVo.fk_productGroupId eq count.fk_productGroupId}">
						<li data-id="TW2WM9BHAYSR" role="listitem" data-product-index="44"
							data-list-index="44">
							<div class="product">
								<div class="product-image-swiper swiper"
									data-sub-image="https://www-prd-kr.gentlemonster.com/media/catalog/product/1/1/11001_DE-FI-G2_2.jpg,https://www-prd-kr.gentlemonster.com/media/catalog/product/1/1/11001_DE-FI-G2_3.jpg,https://www-prd-kr.gentlemonster.com/media/catalog/product/1/1/11001_DE-FI-G2_4.jpg">
									<a
										class="product__link product-image-swiper__wrapper swiper-wrapper"
										href="수정필" product-name="${productVo.productName}">
										<div class="product-image-swiper__slide swiper-slide">
											<div class="product__image-wrapper">
												<img data-src="" alt=""
													src="<%=ctxPath%>${productVo.mainImageFile}">
											</div>
										</div>
									</a>
									<div class="product-image-swiper__pagination swiper-pagination"></div>
									<div
										class="product-image-swiper__button product-image-swiper__button--prev swiper-button-prev"
										product-name="${productVo.productName}"
										product-price="${productVo.price}"></div>
									<div
										class="product-image-swiper__button product-image-swiper__button--next swiper-button-next"
										product-name="${productVo.productName}"
										product-price="${productVo.price}"></div>
								</div>
								<div class="product__info relative">
									<div class="clearfix">
										<div class="product__spec float-left">
											<a class="product__link" id="product_TW2WM9BHAYSR" href="수정필"
												product-name="${productVo.productName}"
												product-price="${productVo.price}" data-category="ecommerce"
												data-action="select_item">
												<p class="product__blue-glasses font--kr font--11 font--rg"></p>
												<p class="product__name font--kr font--13 font--bd">${productVo.productName}</p>
												<p class="product__price font--en font--12 font--rg">
													<fmt:formatNumber type="number" maxFractionDigits="3"
														value="${productVo.price}" />
													원
												</p>
												<p class="product__colors">
													+<span class="color-count">${count.count}</span> Colors
												</p>
											</a>
										</div>

										<c:if test="${productVo.isWish eq 1}">
											<button class="product__wish float-right jsBtnWish on"
												onclick="goDelete(${productVo.productDetailId});">
										</c:if>

										<c:if test="${productVo.isWish eq 0}">
											<button class="product__wish float-right jsBtnWish"
												onclick="goAdd(${productVo.productDetailId});">
										</c:if>
										<svg version="1.1" baseProfile="basic" id="레이어_1"
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
											viewBox="0 0 30 30" xml:space="preserve">
								                    <path fill="none" stroke-miterlimit="10"
												d="M27.4,9.4c-0.4-3.3-3.2-5.9-6.6-5.9c-2.5,0-4.6,1.3-5.8,3.3
								                        c-1.2-2-3.3-3.3-5.8-3.3C5.8,3.5,3,6.1,2.6,9.4c-0.1,0.2-0.1,0.5-0.1,0.8C2.5,18,15,25.6,15,25.6S27.5,18,27.5,10.2
								                        C27.5,9.9,27.4,9.6,27.4,9.4z"></path>
								                    </svg>
										</button>

									</div>
									<button class="product__cart font--kr font--14 font--md"
										style="display: none;">쇼핑백에 추가</button>
								</div>
							</div>
						</li>
					</c:if>
				</c:forEach>
			</c:forEach>
		</ul>

		<div class="product-list__loading gm-component__spinner-container">
			<div class="gm-component__spinner-wrapper">
				<div class="gm-component__spinner"></div>
			</div>
		</div>
	</div>
</c:if>

<c:if test="${empty requestScope.productList}">
  등록된 상품이 없습니다.
</c:if>




<jsp:include page="../common/footer.jsp" />