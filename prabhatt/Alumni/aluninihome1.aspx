<%@ Page Title="" Language="C#" MasterPageFile="~/prabhatMasterPage.master" AutoEventWireup="true" CodeFile="aluninihome1.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {}
        .style8
        {
            width: 287px;
        }
        .style9
        {
            width: 552px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="post">
			<h2 class="title">Welcome to
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                Home page</h2>
                <P style="color: #800000; font-size: 18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                    ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Profile</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                    ID="LinkButton3" runat="server" onclick="LinkButton3_Click">edit Profile</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/default.aspx">logout</asp:LinkButton>
                </P>
            <table class="style3">
                <tr>
                    <td colspan="3">
                        <strong>Update Form</strong></td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td rowspan="6">
                        <asp:Image ID="Image2" runat="server" CssClass="style7" Height="112px" 
                            Visible="False" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        Contact
                    </td>
                    <td class="style9">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        Address</td>
                    <td class="style9">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        Status</td>
                    <td class="style9">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        Upload Image</td>
                    <td class="style9">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="upload" />
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td class="style9">
                        <br />
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Update" />
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
		</div>
</asp:Content>

