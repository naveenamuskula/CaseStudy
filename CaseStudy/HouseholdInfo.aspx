<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="HouseholdInfo.aspx.cs" Inherits="CaseStudy.HouseholdInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 150px;
        }
        .auto-style5 {
            width: 114px;
        }
        .auto-style6 {
            height: 23px;
            width: 114px;
        }
        .auto-style7 {
            height: 23px;
            width: 165px;
        }
        .auto-style9 {
            height: 440px;
        }
        .auto-style11 {
            height: 33px;
        }
        .auto-style12 {
            height: 29px;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style14 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style9">
        <tr>
            <td  class="auto-style5" style="font-weight: bold">Create Application</td>
            <td></td>
            <td></td>
            <td style="color: #FF0000">*Required field</td>
        </tr>
        <tr>
            <td>
                Household Member
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" ></asp:Label>First Name</td>
                <td class="auto-style3"><asp:Label ID="Label2" runat="server" Text="M.I"></asp:Label></td>
                <td class="auto-style4"><asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>Last Name</td>
                <td class="auto-style7"><asp:Label ID="Label4" runat="server" Text="Suffix"></asp:Label></td>   
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="-1">Select</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Ms</asp:ListItem>
                </asp:DropDownList>
        </tr>
        <tr>
            <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
                <td>
                    &nbsp;
                </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name"  Font-Bold="True" ForeColor="#FF3300" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Correct First Name" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="TextBox1" ValidationExpression="[a-zA-Z._^%$#!~@,-]+"></asp:RegularExpressionValidator></td>
            
        </tr>
        <tr>
            <td class="auto-style13"><asp:Label ID="Label5" runat="server" Text="*" ForeColor="Red"></asp:Label>Date of Birth(mm/dd/YYYY)</td>
            <td class="auto-style13">
                <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>Gender</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>  
            </td>
            <td class="auto-style11">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Dob"  Font-Bold="True" ForeColor="#FF3300" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></td>
        <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Gender"  Font-Bold="True" ForeColor="#FF3300" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator></td>
     
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
            <td class="auto-style14">
                <asp:Button ID="Button1" runat="server" Text="Add Member" BackColor="#33CC33" OnClick="Button1_Click" /></td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="Button2"  rowspan="2" runat="server" Text="Save and Exit" BackColor="#33CC33" OnClick="Button2_Click" CausesValidation="False" /></td>
        </tr>
    </table>
</asp:Content>
