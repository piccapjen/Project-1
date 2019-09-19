﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Login.aspx.cs" Inherits="Project._02_Web_Page.User_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>國防大學論文審查系統</title>
    <style type="text/css">
        .body {
            font-family: sans-serif; 
            background-image: url('../Image/User_Login_BG.jpg'); 
            background-size: cover; 
            padding: 0px; 
            margin: 0px
        }

        .div {
            position: absolute; 
            top: 50%; 
            left: 50%; 
            transform: translate(-50%,-50%); 
            width: 350px; 
            height: 450px; 
            padding: 80px 40px; 
            box-sizing: border-box; 
            background: rgba(0,0,0,0.5);
        }

        .h2 {
            font-size: x-large; 
            padding: 0; 
            margin: 0; 
            text-align: center; 
            color: rgb(0, 148, 255)
        }

        .lblid, .lblpass {
            font-weight: bold;
            color: #fff;
        }

        .txtid, .txtpass, .btnsubmit {
            width: 100%;
            margin-bottom: 20px;
        }

        .txtid, .txtpass {
            border: none;
            border-bottom: 1px solid #fff;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            background-color: transparent;
        }

        .placeholder {
            color: rgb(0, 148, 255);
        }

        .btnsubmit {
            border: none;
            outline: none;
            height: 40px;
            font-size: 16px;
            color: #fff;
            background-color: rgb(0, 148, 255);
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
        }

        .btnsubmit:hover {
            background-color: rgb(255, 216, 0);
        }

        .btnforget, .btnchange {
            font-size: 16px;
            font-weight: 700;
            text-decoration: none;
            color: #fff;
        }

        .btnforget, .btnchange:hover {
            text-decoration: underline;
        }
    </style>

</head>
<body class="body">
    <div class="div">

        <h2 class="h2">論文審查系統</h2>

        <form id="Login_Form" runat="server" style="height: 316px">
            <asp:Label Text="帳號" CssClass="lblid" runat="server" />
            <asp:TextBox ID="Account_TBX" runat="server" CssClass="txtid" required="帳號為您的學號" placeholder="學號" />
            <asp:Label Text="密碼" CssClass="lblpass" runat="server" />
            <asp:TextBox ID="Password_TBX" runat="server" CssClass="txtpass" required="請填寫密碼" placeholder="********" TextMode="Password" />
            <asp:Button ID="Login_BTN" Text="登入" CssClass="btnsubmit" runat="server" OnClick="Login" />

            <%-- Login_ForgetPassword.aspx & Login_ChangePassword.aspx 尚未建立!! --%>
            <asp:HyperLink ID="HyperLink1" Text="忘記密碼" CssClass="btnforget" runat="server" Target="_self" NavigateUrl="~/Login_ForgetPassword.aspx" />
            <asp:HyperLink ID="HyperLink2" Text="更改密碼" CssClass="btnchange" runat="server" Target="_self" NavigateUrl="~/Login_ChangePassword.aspx" />
            <asp:Label ID="Alert_LB" runat="server"></asp:Label>
        </form>
    </div>
</body>
</html>
