<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Validator.aspx.cs" Inherits="WebApplication2.Validator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        th{
            background:#ffd800;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
        <th>
            Username
        </th>
        <td>
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td>
            
           <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txtname" ErrorMessage="Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
            
        </td>
            </tr>
        <tr>
        <th>
            Email
        </th>
        <td>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Username Required"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="reg1" runat="server" ControlToValidate="txemail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ErrorMessage="Format is not correct"></asp:RegularExpressionValidator>
        </td>
            </tr>
        <tr>
        <th>
            Password
        </th>
        <td>
            <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpwd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpwd" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$" ErrorMessage="Format is not correct"></asp:RegularExpressionValidator>
        </td>
        </tr>
        <tr>
        <th>
            Confirm Password
        </th>
        <td>
            <asp:TextBox ID="txtpwd1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd1" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="compare1" runat="server" ControlToCompare=""></asp:CompareValidator>
        </td>
            </tr>
        <tr>
            <asp:Button ID="button1" runat="server" OnClick="Page_Load"/>
        </tr>
    </table>
</asp:Content>
