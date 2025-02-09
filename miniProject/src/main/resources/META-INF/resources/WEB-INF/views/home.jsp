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
    </style>
</head>
<body>
      <div class="App">
	    <!-- header 보여주기 -->
	 	<jsp:include page="page/header.jsp" />
	 
	    <!-- content 보여주기 -->
	 	<jsp:include page="page/home.jsp" />
	   </div>
</body>
</html>

