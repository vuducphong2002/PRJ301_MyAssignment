<%-- 
    Document   : home
    Created on : Oct 17, 2022, 3:12:58 PM
    Author     : sonnt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <style>
        .title {
            color: black;
            display:inline;
            font-size: 36px;
            font-weight: 500;
            margin: 400px;
            background: orange;
            border-radius: 10px;
        </style>
        <body>
            <p class="title">Welcome to FPT University Academic Portal</p><br/>
            <img style="padding-left: 630px;
                 width: 200px;
                 margin-bottom: 50px" src="${pageContext.request.contextPath}/IMG/LogoFPT.png"/><br/>
                <c:if test="${sessionScope.account ne null}">
                    <div style="padding-bottom: 15px;
                    padding-top: 15px;
                    margin-right:1400px;
                    background: orange;
                    text-decoration: none;
                    border-radius: 50px;
                    text-align: center;">


                    Hello ${sessionScope.account.displayname}, click 
                    <a href="logout">here</a> to logout. <br/> 
                </div>
            </c:if>
            <c:if test="${sessionScope.account eq null}">
                click 
                <a href="login">here</a> to login. 
            </c:if>
            <h2>Activities for ${sessionScope.account.displayname}</h2>
            <p>
                <b>Note</b>: These activities do not include extra-curriculum activities, such as
                club activities ...
            </p>
            <div class="home">
                <div style="display: flex">
                        <p>
                            Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br>
                            Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br>
                            Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br>
                            Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br>
                            Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br>
                            Little UK (LUK) thuộc tầng 5 tòa nhà Delta<br/>
                        </p>
                        <img style="width: 180px;
                    height: 180px;
                    padding-left: 800px;" src="${pageContext.request.contextPath}/IMG/myfap.png"/><br/>

                </div>
                <div style="padding-bottom: 15px;
                     padding-top: 15px;
                     margin-right:1400px;
                     background: orange;
                     text-decoration: none;
                     border-radius: 50px;
                     text-align: center;"><a href="http://localhost:9999/MyAssignment/lecturer/timetable?lid=${lecId}">Time Table</a></div>

                <img style="width: 100%;
                     margin-bottom: 50px" src="${pageContext.request.contextPath}/IMG/sinhvien.jpg"/><br/>
                </div>
                <table width="100%" style="border: 1px solid transparent;" id="cssTable">
                <tbody><tr>
                        <td>
                            <div id="ctl00_divSupport">
                                <br>
                                <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span style="color: rgb(34, 34, 34);
                                                                              font-family: arial, sans-serif;
                                                                              font-size: 13.333333969116211px;
                                                                              font-style: normal;
                                                                              font-variant: normal;
                                                                              font-weight: normal;
                                                                              letter-spacing: normal;
                                                                              line-height: normal;
                                                                              orphans: auto;
                                                                              text-align: start;
                                                                              text-indent: 0px;
                                                                              text-transform: none;
                                                                              white-space: normal;
                                                                              widows: auto;
                                                                              word-spacing: 0px;
                                                                              -webkit-text-stroke-width: 0px;
                                                                              background-color: rgb(255, 255, 255);
                                                                              display: inline !important;
                                                                              float: none;">Phòng dịch vụ sinh viên</span>: Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a>.
                                Điện thoại: <span class="style1" style="color: rgb(34, 34, 34);
                                                  font-family: arial, sans-serif;
                                                  font-size: 13.333333969116211px;
                                                  font-style: normal;
                                                  font-variant: normal;
                                                  letter-spacing: normal;
                                                  line-height: normal;
                                                  orphans: auto;
                                                  text-align: start;
                                                  text-indent: 0px;
                                                  text-transform: none;
                                                  white-space: normal;
                                                  widows: auto;
                                                  word-spacing: 0px;
                                                  -webkit-text-stroke-width: 0px;
                                                  background-color: rgb(255, 255, 255);
                                                  display: inline !important;
                                                  float: none;">(024)7308.13.13 </span>
                                <br>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="text-align: center">
                                    © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
                                    <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                                    <span id="ctl00_lblHelpdesk"></span>
                                </p>
                            </td>
                        </tr>
                    </tbody></table>
            </body>
        </html>
