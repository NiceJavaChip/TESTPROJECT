<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf8"); %>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<head>
<meta charset="UTF-8">
<link href="css/selectmembership.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body style="background-color: #F0ECE3">
<div>
	<header style="position: absolute;">
		<h1 style="margin: 6px;"><a href="javascript:;">BUCKETME</a></h1>
	</header>
	<div>
		<div class="membership-area">	
			<div><p class="title">멤버십을 선택하세요</p></div>
			<div>
				<ul>
					<li class="listimg" style="float: none; font-size: 20px; width: 500px; color: #000B49;">취향에 꼭 맞는 컨텐츠를 추천 해 드립니다.</li>
					<li class="listimg" style="float: none; font-size: 20px; width: 500px; color: #000B49;">멤버십은 언제든지 변경 또는 해지 가능.</li>
				</ul>
			</div>
		
			<ul>
				<li>
					<div class="membership">
						<div class="profile-card">
							<div class="subprofile-card">
								<span style="font-size: 20px; color: black">SD(480p)로 좋은 화질 제공. 스마트폰, 태블릿, 컴퓨터 또는 TV로 시청.</span>
							</div>
							<div class="subprofile-card" style="padding-top: 30px"><span style="font-size: 30px; color: #000B49">동시접속 1명</span></div>
							<div class="subprofile-card" style="padding-top: 20px"><span style="font-size: 30px; color: #000B49">월 9,500원</span></div>											
						</div>
						<div class="selectmembership">
							<div style="font-size: 30px; color: white; margin-top: 8%">베이식</div>											
						</div>
					</div>
				</li>
				<li>
					<div class="membership">
						<div class="profile-card">
							<div class="subprofile-card">
								<span style="font-size: 20px; color: black">풀 HD(1080p)로 뛰어난 화질 제공. 스마트폰, 태블릿, 컴퓨터 또는 TV로 시청.</span>
							</div>
							<div class="subprofile-card" style="padding-top: 30px"><span style="font-size: 30px; color: #000B49">동시접속 2명</span></div>
							<div class="subprofile-card" style="padding-top: 20px"><span style="font-size: 30px; color: #000B49">월 13,500원</span></div>
						</div>
						<div class="selectmembership">
							<!-- <div><span style="font-size: 30px; color: white">스탠다드</span></div>	 -->
							<div style="font-size: 30px; color: white; margin-top: 8%">스탠다드</div>										
						</div>					
					</div>
				</li>
				<li>
					<div class="membership">
						<div class="profile-card">
							<div class="subprofile-card" style="text-align: left">
								<span style="font-size: 20px; color: black">UHD(4K) 및 HDR로 넷플릭스 최고 화질 제공. 스마트폰, 태블릿, 컴퓨터 또는 TV로 시청.</span>
							</div>
							<div class="subprofile-card" style="padding-top: 3px"><span style="font-size: 30px; color: #000B49">동시접속 4명</span></div>
							<div class="subprofile-card" style="padding-top: 20px"><span style="font-size: 30px; color: #000B49">월 17,000원</span></div>
						</div>
						<div class="selectmembership">
							<div style="font-size: 30px; color: white; margin-top: 8%">프리미엄</div>											
						</div>					
					</div>
				</li>				
			</ul>
			
			<div style="text-align:center;">
				<button class="btn1" type="submit">다음</button>
				<button class="btn2" type="submit">취소</button>
			</div>
		</div>
	</div>		
</div>
</body>
	<script type="text/javascript">
	
	////////////////////////////////////////////////////////////
	// 1. 전역변수  //////////////////////////////////////////////
	////////////////////////////////////////////////////////////
	var isClicked1 = 0;// 0은 클릭하지 않은 상태, 1은 클릭한 상태
	var isClicked2 = 0;// 0은 클릭하지 않은 상태, 1은 클릭한 상태
	var isClicked3 = 0;// 0은 클릭하지 않은 상태, 1은 클릭한 상태
	
	var ishoverd = 0;//   0은 mouseout 1은 마우스 mouseover 때,
	
	////////////////////////////////////////////////////////////
	// 2. 초기 이벤트  //////////////////////////////////////////////
	////////////////////////////////////////////////////////////
 		$(document).ready(function() {
 			
			$(".membership").on("click", function() {
				
				$(".membership").css("border","3px solid #000B49");
				
				var index = $(".membership").index(this);
				
				if( index == 0 ) {
					isClicked2 = 0;
					isClicked3 = 0;
					
					if( isClicked1 == 0 ) {// 클릭된 상태인지 확인
						$(this).css("border","3px solid #FF7272");
						isClicked1 = 1;
					} else { // isClicked 값이 1인 상태
						$(this).css("border","3px solid #000B49");
						isClicked1 = 0;
					}
				} else if( index == 1 ) {
					isClicked1 = 0;
					isClicked3 = 0;
					
					if( isClicked2 == 0 ) {// 클릭된 상태인지 확인
						$(this).css("border","3px solid #FF7272");
						isClicked2 = 1;
					} else { // isClicked 값이 1인 상태
						$(this).css("border","3px solid #000B49");
						isClicked2 = 0;
					}
				} else if( index == 2 ) {
					isClicked1 = 0;
					isClicked2 = 0;
					
					if( isClicked3 == 0 ) {// 클릭된 상태인지 확인
						$(this).css("border","3px solid #FF7272");
						isClicked3 = 1;
					} else { // isClicked 값이 1인 상태
						$(this).css("border","3px solid #000B49");
						isClicked3 = 0;
					}
				}
			});
 
 			$(".membership").hover(
				function() {//마우스오버 영역
	 				$(this).css("border", "3px solid #FF7272");// 테두리 표시
	 				
				}, function(){//마우스아웃 영역
					var index = $(".membership").index(this);
					
					if( index == 0 && isClicked1 == 0 ) {// 첫번째 div영역이면서 클릭이 되지 않았을때
						$(this).css("border", "3px solid #000B49");// 테두리를 초기화 해라
					}
				
					if( index == 1 && isClicked2 == 0 ) {// 클릭된 상태인지
						$(this).css("border", "3px solid #000B49");// 테두리 초기화
					}
					
					if( index == 2 && isClicked3 == 0 ) {
						$(this).css("border", "3px solid #000B49");// 테두리 초기화
					}
				}
			);
		});
	</script>
</html>