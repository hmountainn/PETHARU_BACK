<%@page import="com.petharu.web.entity.Weight"%>
<%@page import="com.petharu.web.service.JDBCWeightService"%>
<%@page import="java.util.List" %>
<%@page import="java.sql.Time" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    JDBCWeightService weightservice = new JDBCWeightService();
    List<Weight> list = weightservice.getList();
%>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="table-style.css" type="text/css" rel="stylesheet">
<!--     <script src="table.js"></script> -->
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
                    
                    <div class="record">
                        <h1 class="record-title">전체 체중기록</h1>
                        <div class="petphoto">
                            <ol>
                                <li><a class="img pet1" href="">강아지1</a></li>
                                <li><a class="img pet2 current" href="">강아지2</a></li>
                                <li><a class="img pet3" href="">강아지3</a></li>
                                <li><a class="img pet4" href="">강아지4</a></li>
                            </ol>
                        </div>
    
                        
                        <a href="stats.html"><div class="button">통계보기</div></a>
                        <table class="record-table">
                            <thead>
                                <tr>
                                    <td class="img date">날짜</td>
                                    <td class="img time">시간</td>
                                    <td class="img weight">몸무게</td>
                                </tr>
                            </thead>
                            <tbody class="tbody">
                            <%for(Weight n : list){ %>
                                <tr>
                                	<%
                                		String Datetime = n.getMeasureDatetime();
                                		String date = Datetime.substring(0,10);
                                		String time = Datetime.substring(11,16);
                                		
                               			String hour = time.substring(0,2);
                               			String minute = time.substring(3,5);
                                	%>
                                    <td><a href="revise-form.html"><%=date %></a></td>
                                    <%	
                                    	if(Integer.parseInt(hour)>12){ %>
                                    		<td class="pm"><%=Integer.parseInt(hour)-12%>:<%=minute%> PM</td>
                                    	<%} else{ %>
                                    		<td class="am"><%=hour%>:<%=minute%> AM</td>
                                    	<%}%>
                                    <td><%=n.getKg()%> KG</td>
                                </tr>
                            <%} %>
<!--                                 <tr>
                                    <td><a href="revise-form.html">2021-01-02</a></td>
                                    <td class="pm">5:32 PM</td>
                                    <td>5.05 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="revise-form.html">2021-01-03</a></td>
                                    <td class="am">9:06 AM</td>
                                    <td>4.98 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="revise-form.html">2021-01-03</a></td>
                                    <td class="pm">6:41 PM</td>
                                    <td>4.95 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="revise-form.html">2021-01-04</a></td>
                                    <td class="am">8:40 AM</td>
                                    <td>5.12 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="revise-form.html">2021-01-04</a></td>
                                    <td class="pm">4:23 PM</td>
                                    <td>5.10 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="">2021-01-05</a></td>
                                    <td class="am">9:03 AM</td>
                                    <td>5.05 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="">2021-01-05</a></td>
                                    <td class="pm">5:32 PM</td>
                                    <td>4.98 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="">2021-01-06</a></td>
                                    <td class="am">8:56 AM</td>
                                    <td>5.03 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="">2021-01-06</a></td>
                                    <td class="pm">5:56 PM</td>
                                    <td>5.07 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="">2021-01-06</a></td>
                                    <td class="am">9:15 AM</td>
                                    <td>5.01 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="">2021-01-06</a></td>
                                    <td class="pm">6:03 PM</td>
                                    <td>4.97 KG</td>
                                </tr>
                                <tr>
                                    <td><a href="">2021-01-06</a></td>
                                    <td class="am">8:50 AM</td>
                                    <td>5.13 KG</td>
                                </tr> -->
                            </tbody>
                        </table>
                    </div>
                </main>
            </div>
        </div>

        <!-- <footer id="footer">footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer footer</footer> -->


    </div>
    
</body>
</html>