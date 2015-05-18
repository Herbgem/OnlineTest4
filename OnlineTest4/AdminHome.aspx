<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="OnlineTest4.WebForm3" %>

<%@ Register Src="~/CustomUserControl/AdminLeftSideBar.ascx" TagPrefix="uc1" TagName="AdminLeftSideBar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderRegion" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRegion" runat="server">
    <uc1:AdminLeftSideBar runat="server" ID="AdminLeftSideBar" />
    <div style="display:table; margin:0 auto">
        <h2 style="text-align:center;">You have logged in!!!</h2>
    </div>
</asp:Content>
