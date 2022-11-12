<%@ Page Title="" Language="C#" MasterPageFile="~/prabhatMasterPage.master" AutoEventWireup="true" CodeFile="Al_Register.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {}
        .style8
        {}
        .style12
        {}
        .style13
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="post">
			<h2 class="title">Alumni</h2>
            <div id = "post";>
                <br />
            <p style="font-size: 14px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Al_login.aspx">Login</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Al_Register.aspx">Register</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/alunini.aspx">View</asp:HyperLink>
                </p>
                    <div class="post">
			<div class="entry">
                    <div>
                        <table class="style7">
                            <tr>
                                <td align="center" colspan="3" 
                                    style="background-color: #C0C0C0; color: #000000;">
                                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registaration 
                                    Form</strong></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="3">
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="enrli" 
                                        ErrorMessage="Email-id not Match you are not Alumni of our College" 
                                        ForeColor="Red" ValidationGroup="ass"></asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    Email_Id/username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td>
                                    <asp:TextBox ID="emails" runat="server" CssClass="style12" Width="218px" 
                                        Height="19px" ValidationGroup="as"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Button ID="Button46" runat="server" onclick="Button46_Click" Text="Check" 
                                        ValidationGroup="as" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="emails" ErrorMessage="Must enter email Id" ForeColor="Red" 
                                        ValidationGroup="as"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    Enrollment Number</td>
                                <td>
                                    <asp:TextBox ID="enrli" runat="server" CssClass="style10" ValidationGroup="ass" 
                                        Width="215px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" 
                                        Visible="False"></asp:Label>
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
                                    <asp:TextBox ID="fname" runat="server" CssClass="style9" Width="215px" 
                                        ReadOnly="True"></asp:TextBox>
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
                                    Year Of Passsing</td>
                                <td>
                                    <asp:TextBox ID="pyear" runat="server" CssClass="style12" Width="218px" 
                                        ReadOnly="True"></asp:TextBox>
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
                                    <asp:TextBox ID="branch" runat="server" CssClass="style12" Width="218px" 
                                        ReadOnly="True"></asp:TextBox>
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
                                    Contact No.</td>
                                <td>
                                    <asp:TextBox ID="contact" runat="server" CssClass="style12" Width="218px" 
                                        ValidationGroup="ass"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="contact" ErrorMessage="Required" ForeColor="Red" 
                                        ValidationGroup="ass"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="contact" ErrorMessage="incorrect contact" ForeColor="Red" 
                                        ValidationExpression="\d{10}" ValidationGroup="ass"></asp:RegularExpressionValidator>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    Address</td>
                                <td>
                                    <asp:TextBox ID="address" runat="server" CssClass="style12" Width="218px" 
                                        TextMode="MultiLine" ValidationGroup="ass"></asp:TextBox>
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
                                    Mother Name</td>
                                <td>
                                    <asp:TextBox ID="mtrname" runat="server" CssClass="style13" Height="25px" 
                                        ValidationGroup="ass" Width="216px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="mtrname" ErrorMessage="Required" ForeColor="Red" 
                                        ValidationGroup="ass"></asp:RequiredFieldValidator>
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
                                    Password</td>
                                <td>
                                    <asp:TextBox ID="pass" runat="server" CssClass="style12" Width="218px" 
                                        TextMode="Password" ValidationGroup="ass"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="pass" ErrorMessage="Required" ForeColor="Red" 
                                        ValidationGroup="ass"></asp:RequiredFieldValidator>
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
                                    Re-Enter Password</td>
                                <td>
                                    <asp:TextBox ID="cpass" runat="server" CssClass="style12" Width="218px" 
                                        Height="23px" TextMode="Password" ValidationGroup="ass"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToCompare="pass" ControlToValidate="cpass" 
                                        ErrorMessage="password must match" ForeColor="Red" ValidationGroup="ass"></asp:CompareValidator>
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
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" BorderColor="#999999" CssClass="style8" 
                                        onclick="Button1_Click" Text="Add" ValidationGroup="ass" Width="73px" />
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
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
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
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                </div>&nbsp;</p>
			</div>
		</div>&nbsp;</p></div>
		</div>
</asp:Content>

