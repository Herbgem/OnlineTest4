<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineTest4.WebForm4" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderRegion" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRegion" runat="server">
    <form id="formLogin" runat="server">
        <div id="LoginRegion" style="position:relative; margin:50px auto; display:table">
            <label id="lblUserName">User Name:</label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtUserName" runat="server" />
            <br />
            <br />
            <label id="lblPassword">Password:</label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
            &nbsp;
            <a id="hlRegister" href="Register.aspx">Not a user? Register now!</a>
            <br />
            <br />
            <asp:Label ID="lblWarning" runat="server" ForeColor="Red"/>
        </div>
    </form>
</asp:Content>
