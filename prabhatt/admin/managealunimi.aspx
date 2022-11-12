<%@ Page Title="" Language="C#" MasterPageFile="~/prabhatMasterPage.master" AutoEventWireup="true" CodeFile="managealunimi.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="post">
			<h2 class="title">Alumini managment</h2>
			<div class="entry">
                

			    <asp:HyperLink ID="HyperLink7" runat="server" 
                    NavigateUrl="~/admin/addalumini.aspx">add </asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink8" runat="server" 
                    NavigateUrl="~/admin/editalumini.aspx">update</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink9" runat="server" 
                    NavigateUrl="~/admin/deleteA.aspx">delete</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/admin/ViewA.aspx">view registered Alumni</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink12" runat="server" 
                    NavigateUrl="~/admin/ViewAddedA.aspx">View Added Alumni</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink11" runat="server" 
                    NavigateUrl="~/admin/search.aspx">search</asp:HyperLink>
                <br />
                <br />
                <br />
                

			</div>
		</div>
</asp:Content>
