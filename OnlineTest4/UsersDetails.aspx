<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UsersDetails.aspx.cs" Inherits="OnlineTest4.WebForm6" %>

<%@ Register Src="~/CustomUserControl/AdminLeftSideBar.ascx" TagPrefix="uc1" TagName="AdminLeftSideBar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderRegion" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRegion" runat="server">

    <uc1:AdminLeftSideBar runat="server" ID="AdminLeftSideBar" />
        <form runat="server">
            <asp:GridView ID="gvUsers" runat="server" AllowPaging="true" PageSize="2" 
                      CssClass="Grid" AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" OnPageIndexChanging="gvUsers_PageIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>

                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br /><br />
        </form>
</asp:Content>
