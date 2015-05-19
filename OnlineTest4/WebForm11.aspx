<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="OnlineTest4.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderRegion" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRegion" runat="server">
    <asp:SqlDataSource runat="server" ID="sqlDataSource1" ConnectionString="<%$ ConnectionStrings:UsersDbConnectionString %>" DeleteCommand="DELETE FROM [Subjects] WHERE [SubjectId] = @SubjectId" InsertCommand="INSERT INTO [Subjects] ([Subject]) VALUES (@Subject)" SelectCommand="SELECT * FROM [Subjects]" UpdateCommand="UPDATE [Subjects] SET [Subject] = @Subject WHERE [SubjectId] = @SubjectId" >
        <DeleteParameters>
            <asp:Parameter Name="SubjectId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Subject" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="SubjectId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <form runat="server" style="position:relative; display:table; margin:0 auto;">
    <div>
        <asp:GridView ID="customGridView" DataSourceID="sqlDataSource1" runat="server" AllowPaging="True" PageSize="3" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="SubjectId" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" >
            <AlternatingRowStyle BackColor="#d72626" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                <asp:BoundField DataField="SubjectId" HeaderText="SubjectId" InsertVisible="False" ReadOnly="True" SortExpression="SubjectId" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
        </form>
    <%--<asp:DataList ID="customeDataList" DataSourceID="sqlDataSource1" runat="server" />--%>
           
</asp:Content>
