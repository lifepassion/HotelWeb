<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indextem.aspx.cs" Inherits="TestDemo3.indextem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />


    <title>欢迎进入酒店预订管理系统!</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/templatemo-style.css" />
</head>
<body>
    <form runat="server">
        <div class="container">
            <div class="row">
                <div class="tm-left-right-container">
                    <!-- Left column: logo and menu -->
                    <div class="tm-blue-bg tm-left-column">
                        <div class="tm-logo-div">
                            <!-- 左上角的图标 -->
                            <img src="images/tm-neaty-logo.png" title="Logo" />
                            <h1 class="tm-site-name">酒店预订系统</h1>
                        </div>
                        <nav class="tm-main-nav">
                            <ul class="tm-main-nav-ul">
                                <li class="tm-nav-item">
                                    <a href="#welcome" class="tm-nav-item-link">客房预定</a>
                                </li>

                                <li class="tm-nav-item">
                                    <a href="#galleryone" class="tm-nav-item-link">已定房间</a>
                                </li>
                                <li class="tm-nav-item">
                                    <a href="#myroom" class="tm-nav-item-link">我的房间</a>
                                </li>
                                <li class="tm-nav-item">
                                    <a href="#contact" class="tm-nav-item-link">我的信息</a>
                                </li>

                            </ul>
                        </nav>
                    </div>
            

                    <!-- Right column: content -->
                    <div class="tm-right-column">
                        <!-- 顶部用户信息 -->
                        <!-- 顶部用户信息 -->
                        <span style="float: right">欢迎用户<%Context.Response.Write(Request.Cookies["login_name"].Value); %>[<a href="login.aspx" onclick='delCookie("login_name")'>退出</a>]</span>
                        <div class="tm-content-div">
                            <!-- 欢迎 光临 -->
                            <section id="welcome" class="tm-section">
                                <header>
                                    <h2 class="tm-blue-text tm-welcome-title tm-margin-b-45">欢迎进入酒店客房预订系统！</h2>
                                </header>
                                <p>注：预定的房间请于明天入住并交予押金，否则将清空您的预订信息</p>
                            </section>

                            <!-- 预订 房间-->
                            <section id="about" class="tm-section">
                             
                                    <div class="col-lg-8 col-md-7 col-sm-12 col-xs-12 push-lg-4 push-md-5">
                                        <header>
                                            <h2 class="tm-blue-text tm-section-title tm-margin-b-45">预订您的房间</h2>
                                        </header>
                                        <!--
                                       这里插入房间的详细信息
                                       
                                       -->

                                        <table class="table table-striped">
                                            <tr>
                                                <th>房间号</th>
                                                <th>房间类型</th>
                                                <th>房间价格</th>
                                                <th>房间状态</th>
                                                <th>房间说明</th>
                                                <th>是否预订</th>
                                            </tr>
                                            <%
                                                System.Data.DataSet ds = 数据访问与类库.DBHelper.ExecuteQuery("select * from RoomInfo where RoomStatus='可供'");
                                                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                                                {
                                                    Context.Response.Write("<tr>");

                                                    for (int j = 0; j < 5; j++)
                                                    {
                                                        Context.Response.Write("<td>");
                                                        Context.Response.Write(ds.Tables[0].Rows[i][j].ToString());
                                                        Context.Response.Write("</td>");
                                                    }
                                                    Context.Response.Write("<td>");
                                                    Context.Response.Write("<input type='checkbox' name='checkbox1' value='" + ds.Tables[0].Rows[i][0].ToString() + "' />预定");

                                                    Context.Response.Write("</td>");
                                                    Context.Response.Write("</tr>");
                                                }
                                        %>
                                        </table>

                                   
                                         <center>
                                            <br />
                                            <asp:Button ID="Button1" class="tm-button tm-button-wide" runat="server" Text="提交预订" OnClick="Button1_Click1" />                 
                                         </center>
                                            
                                    </div>

                                   

                            </section>



                            <!-- 取消 预订-->
                            <section id="galleryone" class="tm-section">
                                <header>
                                    <h2 class="tm-blue-text tm-section-title tm-margin-b-30">已预订房间</h2>
                                </header>
                            
                                    <!--
                                    在此插入已预定房间代码块
                                    -->

                                    <table class="table table-striped">
                                        <tr>
                                            <th>房间号</th>
                                            <th>房间类型</th>
                                            <th>房间价格</th>
                                            <th>房间状态</th>
                                            <th>房间说明</th>
                                            <th>是否退订</th>
                                        </tr>
                                        <%
                                            System.Data.DataSet ds2 = 数据访问与类库.DBHelper.ExecuteQuery("select * from RoomInfo where RoomStatus='预定' and RoomNumber in(select RoomNumber from BookInfo where CustomerName='" + Request.Cookies["login_name"].Value + "')");
                                            for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                                            {
                                                Context.Response.Write("<tr>");

                                                for (int j = 0; j < 5; j++)
                                                {
                                                    Context.Response.Write("<td>");
                                                    Context.Response.Write(ds2.Tables[0].Rows[i][j].ToString());
                                                    Context.Response.Write("</td>");
                                                }
                                                Context.Response.Write("<td>");
                                                Context.Response.Write("<input type='checkbox'name=checkbox2 value='" + ds2.Tables[0].Rows[i][0].ToString() + "' />退订");
                                                Context.Response.Write("</td>");
                                                Context.Response.Write("</tr>");
                                            }
                                    %>

                                    </table>
                                         <center>
                                            <br />
                                            <asp:Button ID="Button2" class="tm-button tm-button-wide" runat="server" Text="取消预订" OnClick="Button2_Click" />
                                         </center>
                       
                            </section>

                            <!-- 我的 房间-->
                            <section id="myroom" class="tm-section">
                                <header>
                                    <h2 class="tm-blue-text tm-section-title tm-margin-b-30">我的房间</h2>
                                </header>
                               
                                    <table class="table table-striped">
                                        <tr>
                                            <th>宾客姓名</th>
                                            <th>房间号</th>
                                            <th>已交押金</th>
                                            <th>入住时间</th>
                                            <th>房间类型</th>
                                            <th>房间价格</th>
                                            <th>我的备注</th>
                                        </tr>
                                        <%
                                            System.Data.DataSet myroomDataSet = 数据访问与类库.DBHelper.ExecuteQuery("select CustomerName,RoomNumber,Deposit,CheckInTime,RoomType,RoomPrice,Remarks from CustomerInfo where CustomerName='"
                                                + Request.Cookies["login_name"].Value + "'");
                                            for (int i = 0; i < myroomDataSet.Tables[0].Rows.Count; i++)
                                            {
                                                Context.Response.Write("<tr>");

                                                for (int j = 0; j < 7; j++)
                                                {
                                                    Context.Response.Write("<td>");
                                                    Context.Response.Write(myroomDataSet.Tables[0].Rows[i][j].ToString());
                                                    Context.Response.Write("</td>");
                                                }
                                                Context.Response.Write("</tr>");
                                            }
                                    %>
                                    </table>
                               
                            </section>

                            <!-- 我的 信息 -->
                            <section id="contact" class="tm-section">
                                <header>
                                    <h2 class="tm-blue-text tm-section-title tm-margin-b-30">我的信息</h2>
                                </header>

                                <div class="row">
                                    <div class="col-lg-6">

                                        <div class="form-group">
                                            姓名：<%Context.Response.Write(Request.Cookies["login_name"].Value);%>
                                        </div>
                                        <div class="form-group">
                                            电话：<%System.Data.DataSet webUserDataSet = 数据访问与类库.DBHelper.ExecuteQuery("select * from WebUser where username='" + Request.Cookies["login_name"].Value + "'");
                                                   Response.Write(webUserDataSet.Tables[0].Rows[0][2].ToString());
                                                        %>
                                        </div>
               
            

                                    </div>

                               
                                </div>

                            </section>

                            <!-- 尾部 -->
                            <footer>
                                <p class="tm-copyright-p">
                                    Copyright &copy; <span class="tm-current-year">2017</span> Your Company 
                                
                                | Designed by <a href="#" target="_parent">Life</a>
                                </p>
                            </footer>
                        </div>

                    </div>
                  
                </div>
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </form>
</body>
</html>
