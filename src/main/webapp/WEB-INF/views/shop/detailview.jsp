<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<style>
@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);

@media ( min-width : 375px) {
	.container {
		max-width: 1280px;
		min-width: 390px;
	}
	html {
		font-size: 12px;
	}
}

@media ( min-width : 1650px) {
	.container {
		max-width: 1280px;
		min-width: 390px;
	}
	html {
		font-size: 16px;
	}
}

* {
	box-sizing: border-box;
}

.container-fluid {
	padding: 0px;
}

.navbar-brand {
	margin: 0px;
	padding: 0px;
	height: 1.875rem;
}

#navparent {
	position: fixed;
	font-size: 0;
	padding-left: 2.5rem;
	padding-right: 2.5rem;
	height: 5rem;
	background-color: white;
	z-index: 5;
}

.navbar {
	height: 5rem;
	padding: 0px;
}

.nav-item {
	padding-left: 20px;
	padding-right: 20px;
}

.nav-link {
	padding: 0px;
	padding-right: 0px;
	padding-left: 0px;
	width: 3.625rem;
	height: 1.5rem;
	/* Button/Button1 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	/* Gray/500 */
	color: #919EAB;
	/* Inside auto layout */
	flex: none;
	order: 0;
	flex-grow: 0;
}

#Exhibition {
	width: 5.938rem;
	height: 1.5rem;
}

#Help {
	width: 2.813rem;
	height: 1.5rem;
}

#Login {
	width: 3.313rem;
	height: 1.5rem;
}

#Signup {
	width: 4.438rem;
	height: 1.5rem;
}

<!--
-->
#goodsparent {
	padding-left: 2.5rem;
	padding-right: 2.5rem;
	position: absolute;
	left: 0rem;
	top: 5rem;
	margin: auto;
	border-radius: 0px;
	/* Rectangle 7 */
	box-sizing: border-box;
	background: #FFFFFF;
	/* Gray/300 */
}

#goodscontainer {
	width: 80rem;
}

#goodscontainer::after {
	display: block;
	clear: both;
	content: "";
}

#btndiv {
	width: 3.75rem;
	height: 3.75rem;
}

#backbtn {
	box-sizing: border-box;
	background: #FFFFFF;
	/* Gray/300 */
	border: 1px solid #DFE3E8;
	border-radius: 50%;
	width: 3.75rem;
	height: 3.75rem;
}

#backbtn>img {
	width: 1rem;
}

#imgdiv {
	width: 34.375rem;
	margin-left: 2.688rem;
	margin-right: 1.5rem;
	margin-bottom: 6.25rem;
}

#img {
	height: 36.375rem;
	width: 36.375rem;
	left: 27.75rem;
	top: 7.5rem;
	border-radius: 1.25rem;
}

.margin1 {
	margin-top: 2.5rem;
	padding: 0rem;
	margin-right: 0px;
}

#container2 {
	padding-left: 2.5rem;
	flex-direction: row;
}

#title {
	/* Headline/H3 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	/* Gray/900 */
	color: #161C24;
	height: 1.5rem;
	margin-bottom: 1rem;
	width: 23.5rem;
}

#price {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1rem;
	line-height: 1.875rem;
	color: #161C24;
	margin-bottom: 2.5rem;
	width: 23.5rem;
}

.payment-area {
	float: right;
	width: 30.5rem;
	position: sticky;
	top: 5rem;
}

.product-area {
	float: left;
	width: 45.353rem;
	padding: 0rem;
}
/* IE */
select::-ms-expand {
	display: none;
}

#select {
	width: 23.5rem;
	height: 3rem;
	line-height: 2.35rem;
	/* 	/* Select Base */ */
	box-sizing: border-box;
	/* 	/* Auto layout */ */
	/* 	display: flex; */
	/* 	flex-direction: row; */
	/* 	align-items: center; */
	/* 	padding: 0.625rem 0.75rem; */
	/* 	gap: 0.625rem; */
	/* 	/* bs-white */ */
	/* 	background: #FFFFFF; */
	border: 0.063rem solid #CFD4D9;
	box-shadow: 0px 0px 0px #CBDAFC;
	border-radius: 0.313rem;
	margin-bottom: 3.75rem;
	color: #637381;
	/* 	 -o-appearance: none; */
	/*   -webkit-appearance: none; */
	/*   -moz-appearance: none; */
	/*   appearance: none; */
	/*     background:url('/images/uparrow.png')  no-repeat 97% 50%/15px auto;  */
	/*   background-size: 0.796rem; */
	/*   padding: 0.3rem 1.875rem 0.3rem 0.6rem; 
/*   border-radius: 0.25rem; */
	/*   outline: 0 none; */
	background: #FFFFFF url('/images/uparrow.png') no-repeat 97% 50%/15px
		auto;
	background-size: 0.796rem;
	padding: 0.3rem 1.875rem 0.3rem 0.6rem;
	border: 0.06rem solid #b8b8b8;
	overflow: hidden;
	font-size: 1rem;
	color: #666666;
}

.select-ul {
	list-style-type: none;
	overflow-x: hidden;
	overflow-y: auto;
	font-size: 1rem;
	color: #666666;
	border: 1px solid #b8b8b8;
	display: none;
	position: absolute;
	top: 12.4rem;
	background: #FFFFFF;
	border-top: none;
	padding: 0px;
	right: 0.8rem;
}

.select-ul li {
	padding: 0.625rem 0 0.625rem 1.125rem;
	width: 23.2rem;
}

.select-ul li:hover {
	background-color: #F4F6F8;
}

#purchasebtn {
	/* Button */
	width: 23.5rem;
	/* Auto layout */
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	/* Gray/900 */
	background: #161C24;
	border-radius: 1.25rem;
	margin-bottom: 0.5rem;
}

#purchasespan {
	width: 4.625rem;
	height: 1.5rem;
	/* Button/Button */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	color: #FFFFFF;
	/* Inside auto layout */
	flex: none;
	order: 0;
	flex-grow: 0;
}

#cartbtn {
	width: 23.5rem;
	/* Auto layout */
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	padding: 1.125rem 1.5rem;
	gap: 0.625;
	background: #FFFFFF;
	border-radius: 1.25rem;
	border: 0px;
}

#cartspan {
	width: 7.188rem;
	height: 1.5rem;
	/* Button/Button */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	/* Gray/900 */
	color: #161C24;
	/* Inside auto layout */
	flex: none;
	order: 0;
	flex-grow: 0;
}

#productdetail {
	width: 23.438rem;
	margin: auto;
	padding: 0px;
}

#margin2 {
	margin-left: 6.26rem;
}

.choose {
	padding: 1.75rem;
	width: 23.5rem;
	height: 8.375rem;
	box-sizing: border-box;
	background: #FFFFFF;
	/* Gray/300 */
	border: 0.06rem solid #DFE3E8;
	border-radius: 20px;
}

#totaldiv {
	margin-top: 0.5rem;
	margin-bottom: 1.25rem;
	/* Rectangle 8 */
	box-sizing: border-box;
	width: 23.5rem;
	height: 5rem;
	/* Gray/100 */
	background: #F9FAFB;
	/* Gray/300 */
	border: 1px solid #DFE3E8;
	border-radius: 1.25rem;
}

#total {
	text-align: right;
	color: #161C24;
}

#totalmoney {
	text-align: right;
	color: #161C24;
	width: 12.5rem;
	text-align: right;
}

.h3 {
	padding: 1.75rem; display : inline-block;
	/* Headline/H3 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	display: inline-block;
}
/* <옵션 내용 */
.h4 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1rem;
	line-height: 1.875rem;
	display: inline-block;
}

.name {
	color: #919EAB;
}

.price {
	width: 12.5rem;
	text-align: right;
}

.cntbtn {
	width: 2.5rem;
	height: 2.5rem;
	border: 0.06rem solid #DFE3E8;
	background: #FFFFFF;
	box-sizing: border-box;
	border-radius: 50%;
}

.cntbtn>img {
	width: 0.656rem;
}

.count {
	width: 3.75rem;
	color: #454F5B;
	display: inline-block;
	text-align: center;
}

.delete {
	color: #161C24;
	display: inline-block;
	height: 1.75rem;
	width: 1.875rem;
	margin-left: 6.675rem; } .body2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;;
	line-height: 1.75rem;
}

.chooseoption {
	color: #637381;
	flex: none;
	order: 0;
	flex-grow: 1;
}
</style>
</head>
<body>
	<header>
		<div class="container-fluid" id=navparent>
			<div class="container">
				<div class="row" id="container1">
					<nav class="navbar navbar-expand-sm bg-light navbar-light">
						<div class="container" id="navparent">
							<a class="navbar-brand" href="#" id="container"
								style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>
							<button class="navbar-toggler" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse justify-content-end"
								id="collapsibleNavbar">
								<ul class="navbar-nav">
									<li class="nav-item"><a id="About" class="nav-link"
										href="#" style="padding-left: 0px; padding-right: 0px;">About</a>
									</li>
									<li class="nav-item"><a id="Exhibition" class="nav-link"
										href="#" style="padding-left: 0px; padding-right: 0px;">Exhibition</a>
									</li>
									<li class="nav-item"><a id="Shop" class="nav-link"
										href="/shop/toShop"
										style="padding-left: 0px; padding-right: 0px;">Shop</a></li>
									<li class="nav-item"><a id="Help" class="nav-link"
										href="#" style="padding-left: 0px; padding-right: 0px;">Help</a>
									</li>
									<li class="nav-item"><a id="Login" class="nav-link"
										href="/member/loginPage"
										style="padding-left: 0px; padding-right: 0px;">Login</a></li>
									<li class="nav-item"><a id="Signup" class="nav-link"
										href="/member/join"
										style="padding-left: 0px; padding-right: 0px;">Sign up</a></li>
									<li class="nav-item"><a id="Admin" class="nav-link"
										href="/admin/adminMain"
										style="padding-left: 0px; padding-right: 0px;">Admin</a></li>
									<li class="nav-item"><a id="Mypage" class="nav-link"
										href="/cart/cartlist"
										style="padding-left: 0px; padding-right: 0px;">cart()</a></li>
									<li class="nav-item"><a id="Mypage" class="nav-link"
										href="/member/mypage"
										style="padding-left: 0px; padding-right: 0px;">mypage</a></li>
								</ul>
							</div>
						</div>
					</nav>

				</div>
			</div>
		</div>
	</header>
	<main>
		<div class="container-fluid" id="goodsparent">
			<div class="container" id="goodscontainer">
				<div class=" payment-area">
					<div class="row" id="margin2">
						<div class="col-12 margin1">

							<!-- 데이터 들어올 곳 -->


							<div class="col-12" id="title">[어쨌든, 사랑] 컨페티 폭죽카드</div>
							<div class="col-12" id="price">7,900원</div>


							<!-- 옵션 리스트 -->
							<div id="select-wrap">
								<div id="select">상품옵션을 선택하세요</div>
								<ul class="select-ul">
									<li>상품옵션을 선택하세요</li>
									<li>로맨틱데이즈</li>
									<li>판타스틱데이즈</li>
									<li>러블리데이즈</li>
								</ul>
							</div>



							<!-- 옵션 선택 -->
							<div class="col-12 choose">
								<span class="h4 name">로맨틱데이즈</span> 
								<span class="h4 price">7,900원</span><br>
								<span><button class="cntbtn">
										<img src="/images/minus.png">
								</button></span> <span class="count body2">1</span> 
								<span><button class="cntbtn">
										<img src="/images/plus.png">
								</button></span> 
								<span class="delete body2">삭제</span>
							</div>



							<div class="col-12 " id="totaldiv">
								<div class="h3" id="tatal">총 결제 금액</div>
								<div class="h3" id="totalmoney">7,900원</div>
							</div>
							
							
							<button id="purchasebtn">
								<span id="purchasespan">구매하기</span>
							</button>
							<button id="cartbtn">
								<span id="cartspan">장바구니 담기</span>
							</button>
						</div>
					</div>
				</div>


				<div class="product-area">
					<div class="row " id="container2">
					
					<!-- 뒤로 가기 버튼 -->
						<div class="col-1 margin1" id="btndiv">
							<button id="backbtn">
								<img src="/images/Vector.png">
							</button>
						</div>
						
					<!-- 상품 이미지 -->	
						<div class="col-3 margin1" id="imgdiv">
							<img src="/images/image 21.png" id="img">
						</div>
						
					<!-- 상품 상세 설명 -->
						<div class="row" id="productdetail">
							<img src="/images/Frame 940.png">
						</div>


					</div>

				</div>


			</div>
		</div>
	</main>
	<script>
	//선택박스 화살표 방향 이미지
	let click = false;
	$("#select").on("click",function(){
		if(click==false){
			$("#select").css({"background":"url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ","background-size": "0.796rem"});
			click = true;
		}else{
			$("#select").css({"background":"url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "0.796rem"});
			click = false;
		}
	});
	//선택박스누를 시 옵션 열기
	$("#select").on("click", function () {
	    $(".select-ul").toggle();
	})
	
	/* 셀렉트 박스 옵션 선택 */
$(".select-ul li").on("click", function () {
    let text = $(this).text();
    $("#select").text(text);
    $(".select-ul").toggle();
})

// /* 셀렉트 박스 이외 선택시 보이지 않게 하기 */
$("body").on("click", function(e){
	if($(".select-ul").css("display") == "block"){
    	if($("#select-wrap").has(e.target).length == 0){
        	$(".select-ul").hide()
        }
    }

})
	</script>
</body>

</html>