<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_unpw.aspx.cs" Inherits="admin_unpw" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Usernames &amp; passwords " 
            Font-Underline="True"></asp:Label>
        </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 57px" 
            AutoGenerateColumns="False" DataKeyNames="username" 
            DataSourceID="login">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
                    SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="login" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
    </form>
</asp:Content>

