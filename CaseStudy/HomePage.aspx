<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CaseStudy.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <table align="center">
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="Create Application" BackColor="#66FF33"  OnClick="Button1_Click" /></td>
        </tr>
    <tr>
     <td> <asp:Button ID="Button2" runat="server" Text="Search Application" BackColor="#66FF33" OnClick="Button2_Click" /></td>
    </tr>
</table>
</asp:Content>
