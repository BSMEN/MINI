<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
      /* main.css */
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      ul {
        list-style: none;
      }

      a {
        text-decoration: none;
        outline: none;
        color: black;
      }

      header {
        width: 100%;
        height: 100px;
        display: flex;
        /* border: 2px red solid; */
        border-bottom: 2px rgb(231, 231, 231) solid;
        padding: 0 10%;
        align-items: center;
      }

      nav {
        width: 100%;
      }

      nav > ul {
        display: flex;
        gap: 30px;
        font-size: 25px;
      }

      .right {
        margin-left: auto;
      }
      
      /* 회원가입 폼*/
      .container {
        width: 100vw;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
      }
      
       .SignUp {
        border: 2px rgba(0, 0, 0, 0.122) solid;
        width: 30%;
        height: 80%;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding-top: 2%;
        border-radius: 5px;
        margin-top:-80px;
      }
      
      .signUpFormTitle {
        font-size: 30px;
        margin-bottom: 20px;
      }

      .signUpForm {
        display: flex;
        flex-direction: column;
        align-items: center;
        font-size: 15px;
        width: 100%;
        height: 100%;
        padding-top: 3%;
      }

      .signup-div {
      	margin-bottom:10px;
        width: 88%;
        padding: 0px 10px;
      }

      .signupInput {
        margin-top: 10px;
        padding: 18px 15px;
        width: 100%;
        font-size: 20px;
 
      }

      .signupBtn {
        background-color: rgb(71, 148, 255);
        border: none;
        color: white;
        padding: 15px 80px;
        font-size: 23px;
        margin-top: 15px;
        border-radius: 10px;
        width: 80%;
      }
      
      .btn-div{
      	width:100%;
      	margin-left:80px;
      }
      
    </style>
</head>
<body>
      <div class="App">
	    <!-- header 보여주기 -->
	 	<jsp:include page="page/header.jsp" />
	 
	    <!-- content 보여주기 -->
	 	<jsp:include page="page/memberForm.jsp" />
	   </div>
</body>
</html>

