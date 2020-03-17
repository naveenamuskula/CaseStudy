<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="SearchApplication.aspx.cs" Inherits="CaseStudy.SearchApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
        <tr>
            <td style="font-weight: bold" class="auto-style5">User Search</td>
        </tr>
        <tr>
            <td colspan="4">Use any combination of fields below to search through all customers</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style5"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style5">DOB</td>
        </tr>
        <tr>
            <td class="auto-style5"><asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style5">Application ID</td>
         </tr>
        <tr>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" Text="Search" BackColor="#00CC00" OnClick="Button1_Click" /></td>
        </tr>
        
    </table>
    <asp:GridView ID="GridView1" runat="server" Width="474px" AllowPaging="True" HorizontalAlign="Center" PageSize="2" OnPageIndexChanging="GridView1_PageIndexChanging"></asp:GridView>
</asp:Content>
