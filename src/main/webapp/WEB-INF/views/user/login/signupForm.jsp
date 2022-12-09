<%--
  Created by IntelliJ IDEA.
  User: argon
  Date: 2022-12-05
  Time: 오후 3:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>회원가입</title>
    <%@include file="../../common/mainHead.jsp" %>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
          crossorigin="anonymous">

    <script>
        $(document).on('click', '#btnSignup', function(e){
            e.preventDefault();
            $("#form").submit();
        });

        $(document).on('click', '#btnCancle', function(e){
            e.preventDefault();

            $('#userId').val('');
            $('#userName').val('');
            $('#userPw').val('');
            $('#userBrith').val('');
            $('#userEmail').val('');
            $('#userConsent').val(false);
        });

    </script>

</head>
<body>
<%--헤더부분--%>
<%@include file="../../common/header.jsp" %>

<article style="margin-top: 20px">
    <div class="container  col-md-6" role="main">
        <div class="card">
            <div class="card-header">회원가입</div>
            <div class="card-body">
                <form:form name="form" id="form" class="form-signup" role="form" modelAttribute="UserVO" method="post" action="/user/insertUser">
                    <div class="form-group row">
                        <label for="uid" class="col-md-3 col-form-label text-md-right">아이디</label>
                        <div class="col-md-5">
                            <form:input path="userId" id="uid" class="form-control" placeholder="아이디을 입력해 주세요" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="name" class="col-md-3 col-form-label text-md-right">이름</label>
                        <div class="col-md-5">
                            <form:input path="userName" id="name" class="form-control" placeholder="이름을 입력해 주세요" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="name" class="col-md-3 col-form-label text-md-right">닉네임</label>
                        <div class="col-md-5">
                            <form:input path="userNicName" id=" nickame" class="form-control" placeholder="닉네임을 입력해 주세요" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="pwd" class="col-md-3 col-form-label text-md-right">비밀번호</label>
                        <div class="col-md-5">
                            <form:password path="userPw" id="pwd" class="form-control" placeholder="비밀번호를 입력해 주세요" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="pwd" class="col-md-3 col-form-label text-md-right">생년월일</label>
                        <div class="col-md-5">
                            <form:input path="userBirth" id="birth" class="form-control" placeholder="ex)1999-07-17" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="email" class="col-md-3 col-form-label text-md-right">이메일</label>
                        <div class="input-group col-md-7">
                            <div class="input-group-prepend">
                                <span class="input-group-text">@</span>
                            </div>
                            <form:input path="userEmail" id="email" class="form-control" placeholder="이메일을 입력해 주세요" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-5" style="width: 5px">
                            <form:checkbox path="userConsent" id="userConsent" class="form-control" />
                        </div>
                        <label for="userConsent" class="col-md-3 col-form-label text-md-right">수신동의</label>
                    </div>

                </form:form>
            </div>
        </div>
        <div style="margin-top:10px">
            <div style="text-align: right">
                <button type="button" class="btn btn-sm btn-primary" id="btnSignup">회원가입</button>
                <button type="button" class="btn btn-sm btn-primary" id="btnCancel">취소</button>
            </div>
        </div>
    </div>

</article>
</body>
</html>