<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_applied_jobs.aspx.cs" Inherits="admin_applied_jobs" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Applied Jobs" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 42px" AutoGenerateColumns="False" DataKeyNames="applied_id" DataSourceID="apjob">
            <Columns>
                <asp:BoundField DataField="applied_id" HeaderText="applied_id" ReadOnly="True" SortExpression="applied_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" SortExpression="candidate_id" />
                <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" SortExpression="jobpost_id" />
                <asp:BoundField DataField="applied_date" HeaderText="applied_date" SortExpression="applied_date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="apjob" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Job_applied]"></asp:SqlDataSource>
        &nbsp;</p>
    <p>
    </p>
    </form>
</asp:Content>

