<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminLeftSideBar.ascx.cs" Inherits="OnlineTest4.CustomUserControl.AdminLeftSideBar" %>

<link href="Content/bootstrap.css" rel="stylesheet" />
<link href="Content/bootstrap-theme.css" rel="stylesheet" />

<div id="LeftSideBar" class="borderStyle leftSideBarStyle" runat="server">

    <ul class="nav navbar-default" id="LeftMapList" runat="server">
        <li class="active"><asp:HyperLink ID="ViewUsersDetails" Text="View Users' Details" runat="server" NavigateUrl="~/UsersDetails.aspx" /></li>
        <li><asp:HyperLink ID="HyperLink1" Text="View Test Results" runat="server" NavigateUrl="/Admin/ViewTestResults.aspx" /></li>
        <li><asp:HyperLink ID="hlUserTests" Text="View User Tests" runat="server" NavigateUrl="/Admin/UserTests.aspx" /></li>
        <li><asp:HyperLink ID="HyperLink2" Text="View Subjects" runat="server" NavigateUrl="/Admin/Subjects.aspx" /></li>
        <li><asp:HyperLink ID="HyperLink3" Text="View Test Paper" runat="server" NavigateUrl="/Admin/TestPaper.aspx" /></li>
    </ul>

</div>