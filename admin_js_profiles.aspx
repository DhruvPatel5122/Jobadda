<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="admin_js_profiles.aspx.cs" Inherits="admin_js_profiles" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Job seeker Profiles" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        
       <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" 
            DataKeyNames="candidate_id,candidate_edu_id,candidate_prof_id" 
            DataSourceID="SqlDataSource1" style="margin-left: 22px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="candidate_id" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="que_id" HeaderText="que_id" 
                    SortExpression="que_id" />
                <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
                <asp:BoundField DataField="profile_date" HeaderText="profile_date" 
                    SortExpression="profile_date" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" 
                    SortExpression="first_name" />
                <asp:BoundField DataField="middle_name" HeaderText="middle_name" 
                    SortExpression="middle_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" 
                    SortExpression="last_name" />
                <asp:BoundField DataField="candidate_addrs" HeaderText="candidate_addrs" 
                    SortExpression="candidate_addrs" />
                <asp:BoundField DataField="city_id" HeaderText="city_id" 
                    SortExpression="city_id" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                    SortExpression="contact_no" />
                <asp:BoundField DataField="email_id" HeaderText="email_id" 
                    SortExpression="email_id" />
                <asp:BoundField DataField="candidate_edu_id" HeaderText="candidate_edu_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="candidate_edu_id" />
                <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
                <asp:BoundField DataField="per10" HeaderText="per10" SortExpression="per10" />
                <asp:BoundField DataField="per12" HeaderText="per12" SortExpression="per12" />
                <asp:BoundField DataField="graduation" HeaderText="graduation" 
                    SortExpression="graduation" />
                <asp:BoundField DataField="institute_grad" HeaderText="institute_grad" 
                    SortExpression="institute_grad" />
                <asp:BoundField DataField="perc_grad" HeaderText="perc_grad" 
                    SortExpression="perc_grad" />
                <asp:BoundField DataField="post_grad" HeaderText="post_grad" 
                    SortExpression="post_grad" />
                <asp:BoundField DataField="institute_post_grad" 
                    HeaderText="institute_post_grad" SortExpression="institute_post_grad" />
                <asp:BoundField DataField="perc_post_grad" HeaderText="perc_post_grad" 
                    SortExpression="perc_post_grad" />
                <asp:BoundField DataField="dr_phd" HeaderText="dr_phd" 
                    SortExpression="dr_phd" />
                <asp:BoundField DataField="institute_dr_phd" HeaderText="institute_dr_phd" 
                    SortExpression="institute_dr_phd" />
                <asp:BoundField DataField="perc_dr_phd" HeaderText="perc_dr_phd" 
                    SortExpression="perc_dr_phd" />
                <asp:BoundField DataField="certification" HeaderText="certification" 
                    SortExpression="certification" />
                <asp:BoundField DataField="candidate_prof_id" HeaderText="candidate_prof_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="candidate_prof_id" />
                <asp:BoundField DataField="Expr2" HeaderText="Expr2" SortExpression="Expr2" />
                <asp:BoundField DataField="area_id" HeaderText="area_id" 
                    SortExpression="area_id" />
                <asp:BoundField DataField="expr_yrs" HeaderText="expr_yrs" 
                    SortExpression="expr_yrs" />
                <asp:BoundField DataField="expr_mth" HeaderText="expr_mth" 
                    SortExpression="expr_mth" />
                <asp:BoundField DataField="salary" HeaderText="salary" 
                    SortExpression="salary" />
                <asp:BoundField DataField="industry" HeaderText="industry" 
                    SortExpression="industry" />
                <asp:BoundField DataField="ind_role" HeaderText="ind_role" 
                    SortExpression="ind_role" />
                <asp:BoundField DataField="skills" HeaderText="skills" 
                    SortExpression="skills" />
            </Columns>
        </asp:GridView>
     <%-- <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="area_id" DataSourceID="jsprofile">
            <Columns>
                <asp:BoundField DataField="area_id" HeaderText="area_id" InsertVisible="False" ReadOnly="True" SortExpression="area_id" />
                <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id" />
                <asp:BoundField DataField="area_name" HeaderText="area_name" SortExpression="area_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="jsprofile" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Area]"></asp:SqlDataSource>--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs %>" 
            DeleteCommand="DELETE FROM Candidate_basic FROM Candidate_basic INNER JOIN Candidate_education ON Candidate_basic.candidate_id = Candidate_education.candidate_id INNER JOIN Candidate_professional ON Candidate_basic.candidate_id = Candidate_professional.candidate_id" 
            SelectCommand="SELECT Candidate_basic.*, Candidate_education.*, Candidate_professional.* FROM Candidate_basic INNER JOIN Candidate_education ON Candidate_basic.candidate_id = Candidate_education.candidate_id INNER JOIN Candidate_professional ON Candidate_basic.candidate_id = Candidate_professional.candidate_id">
        </asp:SqlDataSource>
    </p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="candidate_id,candidate_edu_id,candidate_prof_id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" InsertVisible="False" ReadOnly="True" SortExpression="candidate_id" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="que_id" HeaderText="que_id" SortExpression="que_id" />
                <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
                <asp:BoundField DataField="profile_date" HeaderText="profile_date" SortExpression="profile_date" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="middle_name" HeaderText="middle_name" SortExpression="middle_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="candidate_addrs" HeaderText="candidate_addrs" SortExpression="candidate_addrs" />
                <asp:BoundField DataField="city_id" HeaderText="city_id" SortExpression="city_id" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                <asp:BoundField DataField="candidate_edu_id" HeaderText="candidate_edu_id" InsertVisible="False" ReadOnly="True" SortExpression="candidate_edu_id" />
                <asp:BoundField DataField="candidate_id1" HeaderText="candidate_id1" SortExpression="candidate_id1" />
                <asp:BoundField DataField="per10" HeaderText="per10" SortExpression="per10" />
                <asp:BoundField DataField="per12" HeaderText="per12" SortExpression="per12" />
                <asp:BoundField DataField="graduation" HeaderText="graduation" SortExpression="graduation" />
                <asp:BoundField DataField="institute_grad" HeaderText="institute_grad" SortExpression="institute_grad" />
                <asp:BoundField DataField="perc_grad" HeaderText="perc_grad" SortExpression="perc_grad" />
                <asp:BoundField DataField="post_grad" HeaderText="post_grad" SortExpression="post_grad" />
                <asp:BoundField DataField="institute_post_grad" HeaderText="institute_post_grad" SortExpression="institute_post_grad" />
                <asp:BoundField DataField="perc_post_grad" HeaderText="perc_post_grad" SortExpression="perc_post_grad" />
                <asp:BoundField DataField="dr_phd" HeaderText="dr_phd" SortExpression="dr_phd" />
                <asp:BoundField DataField="institute_dr_phd" HeaderText="institute_dr_phd" SortExpression="institute_dr_phd" />
                <asp:BoundField DataField="perc_dr_phd" HeaderText="perc_dr_phd" SortExpression="perc_dr_phd" />
                <asp:BoundField DataField="certification" HeaderText="certification" SortExpression="certification" />
                <asp:BoundField DataField="candidate_prof_id" HeaderText="candidate_prof_id" InsertVisible="False" ReadOnly="True" SortExpression="candidate_prof_id" />
                <asp:BoundField DataField="candidate_id2" HeaderText="candidate_id2" SortExpression="candidate_id2" />
                <asp:BoundField DataField="area_id" HeaderText="area_id" SortExpression="area_id" />
                <asp:BoundField DataField="expr_yrs" HeaderText="expr_yrs" SortExpression="expr_yrs" />
                <asp:BoundField DataField="expr_mth" HeaderText="expr_mth" SortExpression="expr_mth" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:BoundField DataField="industry" HeaderText="industry" SortExpression="industry" />
                <asp:BoundField DataField="ind_role" HeaderText="ind_role" SortExpression="ind_role" />
                <asp:BoundField DataField="skills" HeaderText="skills" SortExpression="skills" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT Candidate_basic.*, Candidate_education.*, Candidate_professional.* FROM Candidate_basic INNER JOIN Candidate_education ON Candidate_basic.candidate_id = Candidate_education.candidate_id INNER JOIN Candidate_professional ON Candidate_basic.candidate_id = Candidate_professional.candidate_id"></asp:SqlDataSource>
    <p>
        &nbsp;</p>
    </form>
</asp:Content>

