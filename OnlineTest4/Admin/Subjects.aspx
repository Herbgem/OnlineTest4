<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="OnlineTest4.WebForm8" %>

<%@ Register Src="~/CustomUserControl/AdminLeftSideBar.ascx" TagPrefix="uc1" TagName="AdminLeftSideBar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderRegion" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRegion" runat="server">
    <uc1:AdminLeftSideBar runat="server" ID="AdminLeftSideBar" />

            <asp:GridView ID="gvUsers" runat="server" AllowPaging="true" PageSize="2" 
                      CssClass="Grid" AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" ShowFooter="true" AutoGenerateColumns="false"
                      OnRowCommand="gvUsers_RowCommand" OnRowCancelingEdit="gvUsers_RowCancelingEdit"
                      OnRowUpdating="gvUsers_RowUpdating" OnRowDeleting="gvUsers_RowDeleting"
                      OnRowEditing="gvUsers_RowEditing" OnSelectedIndexChanging="gvUsers_SelectedIndexChanging" 
                      OnPageIndexChanging="gvUsers_PageIndexChanging"
                      DataKeyNames="SubjectId">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <HeaderTemplate>
                            Actions
                        </HeaderTemplate>

                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="Delete" />
                            <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandName="Edit" />
                            <asp:LinkButton ID="lnkSelect" runat="server" Text="Select" CommandName="Select" />
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:LinkButton ID="lnkUpdate" runat="server" Text="Update" CommandName="Update" />
                            <asp:LinkButton ID="lnkCancel" runat="server" Text="Cancel" CommandName="Cancel" />
                        </EditItemTemplate>

                        <FooterTemplate>
                            <asp:LinkButton ID="linkAddNew" runat="server" Text="Add New" CommandName="AddNew" ValidationGroup="NewSubjectGroup" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="SubjectId">
                           <ItemTemplate>
                               <asp:Label ID="lblSubjectId" runat="server" Text='<%#Eval("SubjectId") %>' />
                               
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:Label ID="lblEditSubjectId" runat="server" Text='<%#Eval("SubjectId") %>' />
                        </EditItemTemplate>

                        <FooterTemplate>

                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Subject name">
                       <ItemTemplate>
                           <asp:Label ID="lblSubjectName" runat="server" Text='<%#Eval("Subject") %>' />
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox ID="txtSubjectname" runat="server" Text='<%#Eval("Subject") %>' />
                    </EditItemTemplate>

                    <FooterTemplate>
                        <asp:TextBox ID="txtNewSubjectName" runat="server" ValidationGroup="NewSubjectGroup" style="text-align:center"/>
                        <asp:RequiredFieldValidator ID="rfvSubjectname" runat="server" Text="*" ErrorMessage="Subject name is missing" ControlToValidate="txtNewSubjectName" ValidationGroup="NewSubjectGroup" />
                    </FooterTemplate>
                </asp:TemplateField>

                </Columns>
            </asp:GridView>
            <br /><br />
        <asp:ValidationSummary ValidationGroup ="NewSubjectGroup" runat="server" Font-Size="Large" ForeColor="Red" CssClass="centerText"/>
            <div>
                <asp:GridView CssClass="Grid" AlternatingRowStyle-CssClass="alt" runat="server" ID="dvQuizRecord" 
                    AutoGenerateEditButton="True" HorizontalAlign="Center" 
                    AutoGenerateColumns="False" DataKeyNames="ID">
                    <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                        <asp:BoundField DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
                        <asp:BoundField DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
                        <asp:BoundField DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
                        <asp:BoundField DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
                        <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                        <asp:BoundField DataField="SubjectId" HeaderText="SubjectId" SortExpression="SubjectId" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UsersDbConnectionString2 %>" SelectCommand="SELECT * FROM [TestPaper]"></asp:SqlDataSource>
            </div>
</asp:Content>
