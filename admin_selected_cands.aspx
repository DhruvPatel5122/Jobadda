<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_selected_cands.aspx.cs" Inherits="admin_selected_cands" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Selected Candidates" Font-Underline="True"></asp:Label>
        </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 40px" AutoGenerateColumns="False" DataKeyNames="selected_id" DataSourceID="sccan">
            <Columns>
                <asp:BoundField DataField="selected_id" HeaderText="selected_id" ReadOnly="True" SortExpression="selected_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" SortExpression="candidate_id" />
                <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" SortExpression="jobpost_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sccan" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Selected_candidates]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
    </form>
</asp:Content>

