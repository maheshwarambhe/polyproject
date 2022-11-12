<%@ Page Title="" Language="C#" MasterPageFile="~/prabhatMasterPage.master" AutoEventWireup="true" CodeFile="aluninihome.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="post">
			<h2 class="title">Welcome to
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                Home page</h2>
            <div id = "post";>
            <P style="color: #800000; font-size: 18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                    ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Profile</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                    ID="LinkButton3" runat="server" onclick="LinkButton3_Click">edit Profile</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/default.aspx">logout</asp:LinkButton>
                </P> 
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="LinqDataSource1" CssClass="style7" Width="506px">
                    <Columns>
                        <asp:BoundField DataField="Full_name" HeaderText="Full_name" ReadOnly="True" 
                            SortExpression="Full_name" />
                        <asp:BoundField DataField="Passing_Year" HeaderText="Passing_Year" 
                            ReadOnly="True" SortExpression="Passing_Year" />
                        <asp:BoundField DataField="status" HeaderText="status" ReadOnly="True" 
                            SortExpression="status" />
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                            SortExpression="Email" />
                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" ReadOnly="True" 
                            SortExpression="contact_no" />
                        <asp:BoundField DataField="Branch" HeaderText="Branch" ReadOnly="True" 
                            SortExpression="Branch" />
                        <asp:BoundField DataField="Address" HeaderText="Address" ReadOnly="True" 
                            SortExpression="Address" />
                        <asp:ImageField>
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="pDataClassesDataContext" EntityTypeName="" 
                    Select="new (Full_name, Passing_Year, status, Email, contact_no, Branch, Address, image_name, image_path, mother_name)" 
                    TableName="alumini_infos" Where="Email == @Email">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="Label1" Name="Email" PropertyName="Text" 
                            Type="String" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </div>
		</div>
</asp:Content>

