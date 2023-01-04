<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_saved_cands.aspx.cs" Inherits="admin_saved_cands" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Saved Candidates" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 33px" AutoGenerateColumns="False" DataKeyNames="saved_id" DataSourceID="svcan">
            <Columns>
                <asp:BoundField DataField="saved_id" HeaderText="saved_id" ReadOnly="True" SortExpression="saved_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" SortExpression="candidate_id" />
                <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" SortExpression="jobpost_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="svcan" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Saved_candidates]"></asp:SqlDataSource>
        &nbsp;</p>
    <p>
    </p>
    </form>
</asp:Content>

