<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="form-style.css" type="text/css" rel="stylesheet">
    <!-- <script src="form.js"></script> -->
</head>
<body>
    <div id="root">
        <header id="header">
            <div class="float-content">
                <div class="flex align-center">
                    <a href="" class="logo-title-container">
                        <img src="../../images/logo.png" alt="">
                    </a>
                    <nav class="main-menu">   
                            <h1 class="d-none">메인메뉴</h1>
                            <ul>
                                <li><a>우리집</a></li>
                                <li><a>이웃집</a></li>
                                <li><a>내 동물관리</a></li>
                                <li><a>커뮤니티</a></li>
                            </ul>
                    </nav>
                </div>
                <nav class="member-menu">
                    <h1 class="d-none">회원메뉴</h1>
                    <ul>
                        <li><a href="../../mypage/profile/profile-edit.html">MyPage</a></li>
                        <li><a href="../../login.html">LogOut</a></li>
                    </ul>
                </nav>
            </div>
        
            
        </header>

        <div id="body">
            <div class="float-content">
                <aside id="aside">
                    <nav class="aside-menu">
                        <h1 class="d-none">동물관리메뉴</h1>
                        <ul>
                            <li><a href="../mypet/mypet-list.html">동물 관리</a></li>
                            <li><a class="current-page" href="form.html">체중 관리</a></li>
                            <li><a href="../calendar/calendar.html">일정 관리</a></li>                       
                        </ul>
                    </nav>
                </aside>
                <main id="main">
 					
                    <fieldset class="form">
    
                        <form class="weight-input" action="WeightReg" method="post">
	                        
	                            <h1 class="d-none">펫 선택</h1>
	                            <div class="petphoto">
	                                <ol>
	                                    <li><a class="img pet1 current" href="">강아지1</a></li>
	                                    <li><a class="img pet2" href="">강아지2</a></li>
	                                    <li><a class="img pet3" href="">강아지3</a></li>
	                                    <li><a class="img pet4" href="">강아지4</a></li>
	                                </ol>
	                            </div>
	    						
	                            <div class="record">기록하기</div>
	                            <div class="weight-input-container">
	                                <legend class="d-none">날짜입력</legend>
	                                <label class="img date">날짜</label>
	                                <input class="input-date" type="date" name="date">
	                            </div>
	    
	                            <div class="weight-input-container">
	                                <legend class="d-none">시간입력</legend>
	                                <label class="img time">시간</label>
	                                <input class="input-time" type="time" name="time">
	                            </div>
	    
	                            <div class="weight-input-container">
	                                <legend class="d-none">몸무게 입력</legend>
	                                <label class="img weight">몸무게</label>
	                                <input class="input-weight" type="number" step="0.01" name="kg">
	                            </div>
	    
	                            <div>
	                                <input class="submit" type="submit" value="등록">
	                            </div>
	                        </form>

                    </fieldset>
                </main>
            </div>
        </div>

        <footer id="footer">footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer</footer>


    </div>
    
</body>
</html>