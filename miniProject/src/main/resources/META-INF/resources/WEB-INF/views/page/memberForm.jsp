<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	
	console.log("hello");
	
	/* 중복 아이디 확인 */
	$("#idDupulicatedcheck").on("click", function(event){
		event.preventDefault(); //새로고침 막기
		
		var userid=$("#userid").val();
		
		// 아이디 입력 여부
		if(userid.trim() === ""){
			$("#idcheck").text("아이디를 입력하세요.");
			return;
		}
		
		// ajax 요청하기
		$.ajax({
			url:"idcheck",
			method:"get",
			dataType:'text',
			data : {
				userid : $("#userid").val()
			}, // 서버에 전달
			success:function(responseText,status , xhr){
				 console.log(responseText, status);
				 $("#idcheck").text(responseText);
			},
			error: function(xhr, status, error) {
                console.log("에러 발생:", error);
            }
		});
		
	});
	
	
	
	/* 비밀번호 일치 확인 */
	$("#password2").on("keyup", function(){
		
		var pw = $("#password").val();
		var pw2 = $("#password2").val();
		
		var mesg ="비밀번호가 일치합니다.";
		if(pw != pw2){
			mesg = "비밀번호가 다릅니다.";
			console.log(mesg);
		}
		
		$("#pwdcheck").text(mesg);
		
	})
	
	
});
</script>

 
    <div class="container">
            <div class="SignUp">
            <h1 class="signUpFormTitle">회원가입</h1>
            <p>스터디 모집</p>
              <form:form  class="signUpForm" method="post" modelAttribute="mem" 
              action="signup">
                <div class="signup-div">
                    <label for="userid">아이디</label>
                    <form:input type="text" path="userid" class="signupInput" id="userid"/>
                  	<button id="idDupulicatedcheck">아이디 중복체크</button>
          
                </div>
                <div>
                <span id="idcheck"></span>
                </div>
                <div class="signup-div">
                    <label for="password">비밀번호</label>
                    <form:input type="password" path="passwd" value="" class="signupInput" id="password"/>
  				
                </div>
                
                <div class="signup-div">
                    <label for="password2">비밀번호 확인</label>
                    <input type="password" name="password2" id="password2"  value=""/>
      
                </div>
    		<div>
    			<span id="pwdcheck"></span>	
    			</div>
                
                
                 <div class="signup-div">
                    <label for="username">닉네임</label>
                    <form:input type="text" path="username" class="signupInput"/>
                 
                </div>
                <div class="btn-div">
                    <button name="login" class="signupBtn" >가입하기</button>
                </div>
               </form:form> 
        </div>
        </div>
