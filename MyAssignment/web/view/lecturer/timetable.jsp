<%-- 
    Document   : timetable
    Created on : Oct 15, 2022, 9:30:31 AM
    Author     : Ngo Tung Son
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="ulti.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time table</title>
    </head>
    <style>
        .header{
            color: black;
            display:inline;
            font-size: 36px;
            font-weight: 500;
            margin: 500px;
            background: orange;
            border-radius: 10px;

        }
        .title{
            padding-bottom: 40px;
        }
    </style>
    <body>
        <p class="header">Welcome To Your TimeTable</p><br/>
        <img style="padding-left: 630px;width: 200px;margin-bottom: 50px" src="${pageContext.request.contextPath}/IMG/LogoFPT.png"/><br/>
        Lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.name}"/>
        <div class="title">
            <form action="timetable" method="GET">
                <input type="hidden" name="lid" value="${param.lid}"/><br/>
                From: <input type="date" name="from" value="${requestScope.from}"/>
                To: <input type="date" name="to" value="${requestScope.to}"/>
                <input type="submit" value="View"/> 
            </form>
        </div>
        <table border="1px" style="width: 100%">
            <tr>
                <td syt></td>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td style="background: #3399ff;color: black">${d}<br/>${helper.getDayNameofWeek(d)}</td>
                    </c:forEach>
            </tr>
            <c:forEach items="${requestScope.slots}" var="slot">
                <tr>
                    <td style="text-align: center;">${slot.description}</td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td>
                            <c:forEach items="${requestScope.sessions}" var="ses">
                                <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.timeslot.id eq slot.id)}">
                                    <a href="att?id=${ses.id}">${ses.group.name}-${ses.group.subject.name}</a>
                                    <br/>
                                    ${ses.room.name}
                                    <c:if test="${ses.attandated}">
                                        <img src="../img/male-icon.png" alt=""/>
                                        <p style="color: green">(Attended)<p/>
                                    </c:if>
                                    <c:if test="${!ses.attandated}">
                                        <img src="../img/female-icon.png" alt=""/>
                                        <p style="color:  #666666">(Not Yet)<p/>
                                    </c:if>
                                </c:if>

                            </c:forEach>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
            <table width="100%" style="border: 1px solid transparent;" id="cssTable">
                <div id="ctl00_mainContent_divfoot"><ul><li>(<font color="green">attended</font>): ${sessionScope.account.displayname} had attended this activity / ${sessionScope.account.displayname} đã tham gia hoạt động này</li><li>(): no data was given / chưa có dữ liệu</li> </ul></div>
                <tbody><tr>
                        <td>
                            <div id="ctl00_divSupport">
                                <br>
                                <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Phòng dịch vụ sinh viên</span>: Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a>.
                                Điện thoại: <span class="style1" style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">(024)7308.13.13 </span>
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
                </tbody>
            </table>

        </table>
    </body>
</html>
