<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPEhtml>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style>
<style>
body 
{
	font-family: Arial, Helvetica, sans-serif;
}

form 
{
	border: 3px solid #f1f1f1;
}


input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.btn {
background-color: black;
  color: white;
  padding: 12px;
  margin: 5px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  text-decoration: none;
}

button
{
  background-color: black;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
}

button:hover {
  opacity: 0.8;
}

.container
{
	padding: 50px;
}

</style>
</head>
	
<body>
   <div class = "container"; style='width: 100%; text-align: center; padding-top: 100px'>
      <h1>강의 평가</h1>
      <form method="post" action="loginOk">
         <div>
            <label>User ID: </label> <input type='text' name='userid' />
         </div>
         <div>
            <label>Password: </label> <input type='password' name='password' />
         </div>
         <button type='submit'>로그인</button>
         <a class ="btn" href="signup"> 회원가입 </a>
      </form>
   </div>
</body>
</html>