<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>document</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link href="influence-style.css" type="text/css" rel="stylesheet">
    <script src="influence.js"></script>
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
                              <li><a href="../../myhome/list.html">우리집</a></li>
                              <li><a href="list">이웃집</a></li>
                              <li><a href="../pet-management/mypet/list">내 동물관리</a></li>
                              <li><a href="../../community/notice/list.html">커뮤니티</a></li>
                          </ul>
                    </nav>
                </div>
                <nav class="member-menu">
                    <h1 class="d-none">회원메뉴</h1>
                    <ul>
                      <li><a href="../../mypage/profile/progile-edit.html">MyPage</a></li>
                      <li><a href="../../login">LogOut</a></li>
                  </ul>
                </nav>
            </div>
        
            
        </header>

        <div id="body">
            <div class="float-content">
                <main id="main">

                    <div class="subject"><a href="list"><h1>이웃집</h1></a><span class="recommend"><a href="">둘러보기</a></span></div>
                    <div class="search-form-outline">
                        <div class='search-form'>
                            <input type='search' class='input_search' placeholder="태그 검색"/>
                            <div class="autocom-box"></div>
                            <button type='submit' class='sch_smit'><i class="fas fa-search"></i></button>
                        </div>
                    </div>   
                    
                    <div class="big-box">
                    	<c:forEach var="n" items="${list}">
	                        <div class="mini-box">
	                            <div class="box-img">
	                                <img class="img" src="../images/content-img2.jpg" alt="">
	                            </div>
	                            <div class="d-none hide-box">
	                                <div class="hide-info">
	                                    <div class="box-title">
	                                        <h4>${n.keyword}</h4>
	                                    </div>
	                                    <div class="sub-info">
	                                        <span><fmt:formatDate value="${n.regDate}" pattern="yyyy년 MM월 dd일"/></span>
	                                        <span>·</span>
	                                        <span>20개의 댓글</span>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="popup">	
	                                <div class="overlay"></div>
	                                <div class="content">
	                                    <div class="content-box-img">
	                                        <img class="img" src="../images/content-img2.jpg" alt="">
	                                    </div>
	                                    <div class="close-btn">x</div>
	                                    <div class="main-box">
	                                        <div class="main-box-title">
	                                            <span>${n.keyword}</span>    
	                                        </div>
	                                        
	                                        <div class="main-box-content">
	                                            <div class="user-img-box">
	                                                <img class="user-img" src="../images/user-photo.jpg" alt="">
	                                            </div>
	                                            <div>
	                                                <span class="user-id">${n.userId}</span>
	                                                <span>
	                                                    ${n.content}<br>
	                                                </span>
	                                                <span>
	                                                    <a href="">#산책</a>
	                                                    <a href="">#해운대</a>
	                                                </span>
	                                            </div>
	                                        </div>
	                                        <div class="comment-box">
	                                            <div class="main-box-comment">
	                                                <div class="user-img-box">
	                                                    <img class="user-img" src="../images/girl-img.png" alt="">
	                                                </div>
	                                                <div>
	                                                    <span class="user-id">its_nawon</span>
	                                                    <span>
	                                                        강아지가 너무 귀여워요~
	                                                    </span>
	                                                </div>
	                                            </div>
	                                            <div class="main-box-comment">
	                                                <div class="user-img-box">
	                                                    <img class="user-img" src="../images/girl-img.png" alt="">
	                                                </div>
	                                                <div>
	                                                    <span class="user-id">its_nawon</span>
	                                                    <span>
	                                                        강아지가 너무 귀여워요~
	                                                    </span>
	                                                </div>
	                                            </div>
	                                            <div class="main-box-comment">
	                                                <div class="user-img-box">
	                                                    <img class="user-img" src="../images/girl-img.png" alt="">
	                                                </div>
	                                                <div>
	                                                    <span class="user-id">its_nawon</span>
	                                                    <span>
	                                                        강아지가 너무 귀여워요~
	                                                    </span>
	                                                </div>
	                                            </div>
	                                            <div class="main-box-comment">
	                                                <div class="user-img-box">
	                                                    <img class="user-img" src="../images/girl-img.png" alt="">
	                                                </div>
	                                                <div>
	                                                    <span class="user-id">its_nawon</span>
	                                                    <span>
	                                                        강아지가 너무 귀여워요~
	                                                    </span>
	                                                </div>
	                                            </div>
	                                            <div class="main-box-comment">
	                                                <div class="user-img-box">
	                                                    <img class="user-img" src="../images/girl-img.png" alt="">
	                                                </div>
	                                                <div>
	                                                    <span class="user-id">its_nawon</span>
	                                                    <span>
	                                                        강아지가 너무 귀여워요~
	                                                    </span>
	                                                </div>
	                                            </div>
	                                            <div class="main-box-comment">
	                                                <div class="user-img-box">
	                                                    <img class="user-img" src="../images/girl-img.png" alt="">
	                                                </div>
	                                                <div>
	                                                    <span class="user-id">its_nawon</span>
	                                                    <span>
	                                                        강아지가 너무 귀여워요~
	                                                    </span>
	                                                </div>
	                                            </div>
	                                            <div class="main-box-comment">
	                                                <div class="user-img-box">
	                                                    <img class="user-img" src="../images/girl-img.png" alt="">
	                                                </div>
	                                                <div>
	                                                    <span class="user-id">its_nawon</span>
	                                                    <span>
	                                                        강아지가 너무 귀여워요~
	                                                    </span>
	                                                </div>
	                                            </div>
	                                            <div class="main-box-comment">
	                                                <div class="user-img-box">
	                                                    <img class="user-img" src="../images/girl-img.png" alt="">
	                                                </div>
	                                                <div>
	                                                    <span class="user-id">its_nawon</span>
	                                                    <span>
	                                                        강아지가 너무 귀여워요~
	                                                    </span>
	                                                </div>
	                                            </div>
	                                        </div>
	
	                                        <div class="comment-record">
	                                            <form class="comment-form" action="DiaryComment" method="post">
	                                            	<input type="hidden" name="diaryId" value="${n.id}">
	                                            	<input type="hidden" name="memberId" value="${n.memberId}">
	                                            	<input type="hidden" name="userId" value="${n.userId}">
	                                                <input class="input-comment" name="comment" type="text" placeholder="댓글 달기...">
	                                                <input class="submit-comment" type="submit" value="게시">
	                                            </form>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
						</c:forEach>

                    </div>
                </main>
            </div>
        </div>

        <footer id="footer">footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer</footer>


    </div>
    
</body>
</html>