<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TestDemo3._1" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>欢迎登陆</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

  </head>

  <body>

    <div class="container">

      <form class="form-signin" runat="server">
        <h2 class="form-signin-heading">欢迎登陆</h2>
        <label for="inputEmail" class="sr-only">邮箱地址</label>
        <input type="email"    name="inputEmail" class="form-control" placeholder="邮箱地址" >
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" name="inputPassword" class="form-control" placeholder="密码" >
  
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
        </div>
         
          <asp:Button ID="Button1" class="btn btn-lg btn-primary btn-block"  runat="server" Text="登陆" OnClick="Button1_Click" />
      </form>

    </div> <!-- /container -->

  </body>
</html>

