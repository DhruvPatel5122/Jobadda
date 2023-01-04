<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="advance_search.aspx.cs" Inherits="advance_search" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Advance Search" Font-Underline="True"></asp:Label>
        <br />
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Category"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="category" DataTextField="category_name" DataValueField="category_id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="category" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label21" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Area"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="area_name" DataValueField="area_id" DataSourceID="area">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="area" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Area]"></asp:SqlDataSource>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label22" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Post"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="post" DataTextField="post_name" DataValueField="post_id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="post" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Post]"></asp:SqlDataSource>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label23" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Expected Salary"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server">
                    </asp:DropDownList>
                    &nbsp; <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="To"></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Label ID="Label25" runat="server" Font-Size="Small" ForeColor="#877361" 
                        Text=" Rs. per month"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 160px" align="right">
                    <asp:Label ID="Label24" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Location"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label17" runat="server" Font-Size="Small" ForeColor="#877361" 
                        Text="Country"></asp:Label>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="country" DataTextField="country_name" DataValueField="country_id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="country" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label18" runat="server" Font-Size="Small" ForeColor="#877361" 
                        Text="State"></asp:Label>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="state" DataTextField="state_name" DataValueField="state_id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="state" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label19" runat="server" Font-Size="Small" ForeColor="#877361" 
                        Text="City"></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="city" DataTextField="city_name" DataValueField="city_id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="city" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 160px" align="right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 160px" align="right">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp; &nbsp;<asp:Button ID="Button3" runat="server" BackColor="#877361" BorderColor="#FF3300" 
                        Height="28px" Text="Search" Width="123px" 
            Font-Bold="True" Font-Size="Large" onclick="Button3_Click" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 162px" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="area_id" DataSourceID="SqlDataSource3" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="area_id" HeaderText="area_id" InsertVisible="False" ReadOnly="True" SortExpression="area_id" />
                <asp:BoundField DataField="category_name" HeaderText="category_name" SortExpression="category_name" />
                <asp:BoundField DataField="area_name" HeaderText="area_name" SortExpression="area_name" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT Area.area_id, Category.category_name, Area.area_name FROM Area INNER JOIN Category ON Area.category_id = Category.category_id"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button4" runat="server" BackColor="#877361" BorderColor="#FF3300" 
                        Height="34px" Text="Apply for selected Jobs" Width="216px" 
            Font-Bold="True" Font-Size="Large" />
        &nbsp;</p>
    </form>
</asp:Content>

