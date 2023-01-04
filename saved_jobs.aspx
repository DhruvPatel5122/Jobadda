<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="saved_jobs.aspx.cs" Inherits="saved_jobs" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="My Saved Jobs" Font-Underline="True"></asp:Label>
        </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 89px" DataSourceID="myjob">
        </asp:GridView>
        <asp:SqlDataSource ID="myjob" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Saved_jobs]" DeleteCommand="DELETE FROM [Saved_jobs] WHERE [saved_job_id] = @saved_job_id" InsertCommand="INSERT INTO [Saved_jobs] ([candidate_id], [jobpost_id]) VALUES (@candidate_id, @jobpost_id)" UpdateCommand="UPDATE [Saved_jobs] SET [candidate_id] = @candidate_id, [jobpost_id] = @jobpost_id WHERE [saved_job_id] = @saved_job_id">
            <DeleteParameters>
                <asp:Parameter Name="saved_job_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
                <asp:Parameter Name="saved_job_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button4" runat="server" BackColor="#877361" BorderColor="#FF3300" 
                        Height="34px" Text="Apply for selected Jobs" Width="216px" 
            Font-Bold="True" Font-Size="Large" onclick="Button4_Click" />
        &nbsp;</p>
    </form>
</asp:Content>

