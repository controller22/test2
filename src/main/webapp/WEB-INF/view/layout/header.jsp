
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Bank 애플리케이션</title>
                <link rel="stylesheet" href="/css/style.css">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
            </head>

            <body>
                <ul>
                    <c:choose>
                        <c:when test="${principal != null}">
                            <li><a href="/logout">로그아웃</a></li>
                            <li><a href="/account">계좌목록</a></li>
                            <li><a href="/account/saveForm">계좌생성</a></li>
                            <li><a href="/account/transferForm">이체하기</a></li>
                            <li><a href="/account/withdrawForm">출금하기</a></li>
                            <li><a href="/account/depositForm">입금하기</a></li>
                        </c:when>

                        <c:otherwise>
                            <li><a href="/loginForm">로그인</a></li>
                            <li><a href="/joinForm">회원가입</a></li>
                            <li><a href="/account/withdrawForm">출금하기</a></li>
                            <li><a href="/account/depositForm">입금하기</a></li>
                        </c:otherwise>
                    </c:choose>


                </ul>