<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle2.aspx.cs" Inherits="SINIFSITEWEB.WebForm21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False">NUMARA</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtSifre2" runat="server" CssClass="form-control">ŞİFRE</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtSifre1" runat="server" CssClass="form-control">ŞİFRE TEKRAR</asp:TextBox>
            </div>
            <br />



        </div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click1" />

    </form>

</asp:Content>
