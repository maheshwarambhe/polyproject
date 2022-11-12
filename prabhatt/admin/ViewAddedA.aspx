<%@ Page Title="" Language="C#" MasterPageFile="~/prabhatMasterPage.master" AutoEventWireup="true" CodeFile="ViewAddedA.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 136px;
        }
        .style8
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="post">
			<h2 class="title">welcome Admin</h2>
            <div class="entry">
            <p>
                <asp:HyperLink ID="HyperLink8" runat="server" 
                    NavigateUrl="~/admin/managealunimi.aspx">Back</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink9" runat="server" 
                    NavigateUrl="~/admin/addalumini.aspx">Add Next</asp:HyperLink>
                </p>
                <div class="style7">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" CssClass="style8" DataSourceID="LinqDataSource1" Height="58px" 
                        Width="675px">
                        <Columns>
                            <asp:BoundField DataField="Enrolment_No" HeaderText="Enrolment_Number" 
                                ReadOnly="True" SortExpression="Enrolment_No" />
                            <asp:BoundField DataField="Full_name" HeaderText="Full Name" ReadOnly="True" 
                                SortExpression="Full_name" />
                            <asp:BoundField DataField="Branch" HeaderText="Branch" ReadOnly="True" 
                                SortExpression="Branch" />
                            <asp:BoundField DataField="Passing_Year" HeaderText="Passing_Year" 
                                ReadOnly="True" SortExpression="Passing_Year" />
                            <asp:BoundField DataField="Email" HeaderText="Email Address" ReadOnly="True" 
                                SortExpression="Email" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                        ContextTypeName="pDataClassesDataContext" EntityTypeName="" 
                        Select="new (Enrolment_No, Full_name, Branch, Passing_Year, Email)" 
                        TableName="alumini_infos">
                    </asp:LinqDataSource>
                    <br />
                    <br />
                    <br />
                </div>
                <p>
                    &nbsp;</p>
			</div>
		</div>
</asp:Content>
