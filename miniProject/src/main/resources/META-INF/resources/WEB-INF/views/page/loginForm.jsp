<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <div class="container">
      <div class="Login">
        <h1 class="loginFormTitle">Login</h1>
        <form class="LoginForm" action="auth" method="post">
          <div class="input-div">
            <label for="userid">아이디</label> <br />
            <input
              class="loginInput"
              type="text"
              name="userid"
              placeholder="아이디"
            />
          </div>
          <div class="input-div">
            <label for="passwd">비밀번호</label> <br />
            <input
              class="loginInput"
              type="password"
              name="passwd"
              placeholder="비밀번호"
            />
          </div>

          <button name="login" class="loginBtn">로그인</button>
        </form>
      </div>
    </div>