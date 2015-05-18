<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeaderUC.ascx.cs" Inherits="OnlineTest4.WebUserControl1" %>
<script src="Scripts/jquery-1.9.1.js"></script>
<script src="Scripts/bootstrap.js"></script>
<link href="Content/bootstrap.css" rel="stylesheet" />
<link href="Content/bootstrap-theme.css" rel="stylesheet" />

<header id="HeaderDefault">
    <div id="navbar">
        <div id="nav-belt">
            <img src="ImgHeader2.jpg" style="height:100px; width:100%"/>
        </div>
        <div id="nav-main">

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <ul class="nav navbar-nav">
                        <li class="active"><asp:HyperLink ID="hlHome" runat="server" Text="Home"  NavigateUrl="~/Home.aspx"/></li>
                        <li id="liLogin"><asp:HyperLink ID="hlLogin" runat="server" Text="Login" NavigateUrl="~/Login.aspx"/></li>
                        <li id="liRegister"><asp:HyperLink ID="hlRegister" runat="server" Text="Register" NavigateUrl="~/Register.aspx"/></li>
                        
                        
                        <li class="dropdown" id="UserOPS" runat="server" visible="false">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">User OPS <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="UsersDetails.aspx">View users' details</a></li>
                                <li><a href="ViewTestResults.aspx">View test Results</a></li>
                                <li><a href="UserTests.aspx">View user tests</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>

                        <li class="dropdown" id="TestOPS" runat="server" visible="false">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Test OPS <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="Subjects.aspx">View users' details</a></li>
                                <li><a href="TestPaper.aspx">View test Results</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>

                        <li><asp:HyperLink ID="hlAboutUs" runat="server" Text="About Us" /></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                      <li><a href="#">LogOut</a></li>
                    </ul>

                </div>
            </nav>
        </div>
    </div>
</header>