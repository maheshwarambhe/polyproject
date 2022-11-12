<%@ Page Title="" Language="C#" MasterPageFile="~/prabhatMasterPage.master" AutoEventWireup="true" CodeFile="addalumini.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
            border-left-style: solid;
            border-left-width: 3px;
            border-right: 3px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 3px;
            border-bottom: 3px solid #C0C0C0;
        }
        .style8
        {}
        .style9
        {}
        .style10
        {}
        .style11
        {}
        .style12
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="post">
			<h2 class="title">Add Alumini</h2>
			<div class="entry">
                    <div>
                        <table class="style7">
                            <tr>
                                <td align="center" colspan="3" 
                                    style="background-color: #C0C0C0; color: #000000;">
                                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    Add Form</strong></td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    Enrollment Number</td>
                                <td>
                                    <asp:TextBox ID="enrli" runat="server" CssClass="style10" ValidationGroup="l" 
                                        Width="215px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="enrli" ErrorMessage="Required" ForeColor="Red" 
                                        ValidationGroup="l"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    Full Name</td>
                                <td>
                                    <asp:TextBox ID="fname" runat="server" CssClass="style9" Width="215px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="fname" ErrorMessage="Required" ForeColor="Red" 
                                        ValidationGroup="l"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    Year Of Passsing</td>
                                <td>
                                    <asp:DropDownList ID="year" runat="server" CssClass="style11" Height="20px" 
                                        ValidationGroup="l" Width="108px">
                                        <asp:ListItem>Select_Year</asp:ListItem>
                                        <asp:ListItem>2013</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                                        <asp:ListItem>2015</asp:ListItem>
                                        <asp:ListItem>2016</asp:ListItem>
                                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    Branch</td>
                                <td>
                                    <asp:DropDownList ID="branch" runat="server" ValidationGroup="l">
                                        <asp:ListItem>Select_Branch</asp:ListItem>
                                        <asp:ListItem>Mechanical Engineering</asp:ListItem>
                                        <asp:ListItem>civil Engineering</asp:ListItem>
                                        <asp:ListItem>Electronics &amp; tele Engineering</asp:ListItem>
                                        <asp:ListItem>Computer Engineering</asp:ListItem>
                                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    Email_Id</td>
                                <td>
                                    <asp:TextBox ID="emails" runat="server" CssClass="style12" Width="218px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="emails" ErrorMessage="Required" ForeColor="Red" 
                                        ValidationGroup="l"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="emails" ErrorMessage="incorrect email id" ForeColor="Red" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                        ValidationGroup="l"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" 
                                        Visible="False"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" BorderColor="#999999" CssClass="style8" 
                                        onclick="Button1_Click" Text="Add" ValidationGroup="l" Width="73px" />
                                </td>
                            </tr>
                        </table>
                </div>&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:HyperLink ID="HyperLink7" runat="server" 
                        NavigateUrl="~/admin/ViewAddedA.aspx">View All Added Alumni</asp:HyperLink>
                </p>
			</div>
		</div>
</asp:Content>
