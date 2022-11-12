<%@ Page Title="" Language="C#" MasterPageFile="~/prabhatMasterPage.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            position: relative;
            top: -4px;
            left: 3px;
            height: 145px;
            width: 93%;
        }
        .style8
        {}
        .style9
        {
            position: relative;
            height: 180px;
            top: 6px;
            left: 209px;
            width: 46px;
        }
        .style10
        {
            width: 68px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="post">
			<h2 class="title">Welcome to admin Home</h2>
			<div class="entry">
                <asp:HyperLink ID="HyperLink7" runat="server" 
                    NavigateUrl="~/admin/managealunimi.aspx">manage alumini</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink8" runat="server" 
                    NavigateUrl="~/admin/managealunimi.aspx">manage notice board</asp:HyperLink>
			</div>
		</div>
</asp:Content>
