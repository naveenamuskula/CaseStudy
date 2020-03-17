<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="CaseStudy.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
        <tr>
            <td>
                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="#0099FF" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Home" Height="35px" BackColor="#66FF33" OnClick="Button1_Click" />
            </td>
        </tr>
    
    </table>
</asp:Content>
