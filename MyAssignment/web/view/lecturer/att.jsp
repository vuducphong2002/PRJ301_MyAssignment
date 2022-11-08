<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attended</title>

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
            <body>
                <div style="padding-bottom: 15px ;
                padding-top: 15px;
                margin-right:1200px;
                background: orange;
                text-decoration: none;
                box-shadow: 3px 3px 5px 6px #ccc;">
                Take attendance for Group: ${requestScope.ses.group.name} <br/>
                Subject: ${requestScope.ses.group.subject.name} <br/>
                Room: ${requestScope.ses.room.name} <br/>
                Date: ${requestScope.ses.date} - ${requestScope.ses.timeslot.description}<br/>
                Attended: <span style="color: green;"> ${requestScope.ses.attandated?"Yes":"No"} </span>
            </div>
            <div style="margin-top: 25px">
                    <form action="att" method="POST">
                        <input type="hidden" name="sesid" value="${param.id}"/>
                        <table class="table table-sm table-dark" border="1px" style="width: 100%;">
                <tr style="background: #33ccff">
                            <td>No.</td>
                            <td>StudentID</td>
                            <td>Full Name</td>
                            <td>Present</td>
                            <td>Absent</td>
                            <td>Description</td>
                        </tr>
                        <c:forEach items="${requestScope.ses.attandances}" var="a" varStatus="loop">
                            <tr>
                                <td>${loop.index+1}</td>
                                <td>${a.student.id}
                                    <input type="hidden" name="stdid" value="${a.student.id}"/>
                                </td>
                                <td>${a.student.name}</td>
                                <td><input type="radio"
                                           <c:if test="${a.present}">
                                               checked="checked"
                                           </c:if>
                                           name="present${a.student.id}" value="present" /></td>
                                <td><input type="radio"
                                           <c:if test="${!a.present}">
                                               checked="checked"
                                           </c:if>
                                           name="present${a.student.id}" value="absent" /></td>
                                <td><input type="text" name="description${a.student.id}" value="${a.description}" /></td>
                            </tr>   

                        </c:forEach>
                        </div>
                    </table>
                    <input style="margin-top: 20px;background: black;color: white;border-radius: 5px" type="submit" value="Save"/>
                    </form>
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