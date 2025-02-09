<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
 <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
  
 <div>
 마이페이지
  <div>
  <label for="username">닉네임</label>
  <input  type="text" name="username" value="${mypage.username}"></input>
  </div>
  
<div>
<label for="userid">아이디</label>
  <input type="text" name="userid" value="${mypage.userid}"></input>
  </div>

