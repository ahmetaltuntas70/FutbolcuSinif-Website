<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="SINIFSITEWEB.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 700px;
            height: 539px;
        }

        .auto-style2 {
            text-align: center;
            color: #FFFFFF;
            font-family: "Segoe Script";
        }

        .auto-style3 {
            color: #FFFFFF;
        }
    </style>

</head>
<body>

    <form id="form1" runat="server" style="background-image: url('head_bot.gif'); height: 625px;">
        <div style="margin: auto" class="auto-style1">
            <h2 class="text-center">&nbsp;</h2>
            <h2 class="auto-style2">FUTBOLCU SINAV NOT SİSTEMİ GİRİŞ </h2>
            <br />
            <br />

            <div style="margin: auto; text-align: center;">
                <asp:Image ID="Image1" runat="server" Height="177px" Width="699px" ImageUrl="~/efsoo3.jpg" />
            </div>
            <br />
            <br />
            <div>

                <div>
                    <asp:Label for="TxtNumara" runat="server" CssClass="auto-style3">Kullanıcı Adı</asp:Label>
                    <strong>
                        <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control"></asp:TextBox>
                    </strong>
                </div>
                <br />
                <div>
                    <asp:Label for="TxtSifre" runat="server" CssClass="auto-style3">Şifre</asp:Label>
                    <strong>
                        <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </strong>
                </div>
                <br />
                <asp:Button ID="Button1" runat="server" Text="FUTBOLCU GİRİŞ" CssClass="btn btn-warning" Width="347px" OnClick="Button1_Click" />

                <asp:Button ID="Button2" runat="server" Text="ANTRENÖR GİRİŞ" CssClass="btn btn-danger" Width="347px" OnClick="Button2_Click" />
                <br />
                <br />
                <strong><em>
                    <asp:Button ID="Button4" runat="server" Text="GALATASARY" CssClass="btn btn-default" Width="700px" OnClick="Button4_Click" Style="font-size: large; font-family: 'Segoe Script'; font-weight: bold; font-style: italic; color: #FF0000; background-color: #FFCC00" />






                </em></strong>






            </div>
        </div>


    </form>

</body>
</html>
