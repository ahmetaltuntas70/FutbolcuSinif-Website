<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciAnaSayfa.aspx.cs" Inherits="SINIFSITEWEB.WebForm15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False">Toplam Futbolcu Sayısı</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="False">Toplam Öğretmen Sayısı</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="False">Toplam Ders Sayısı</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="False">En Başarılı Ders</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False">Toplam Atılan Mesaj</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="False">Sistemdeki Duyuru Sayısı</asp:TextBox>
            </div>
            <br />



        </div>
        <asp:Button ID="Button1" runat="server" Text="ŞİFRE DEĞİŞTİR"  CssClass="btn btn-primary" OnClick="Button1_Click"/>

    </form>


</asp:Content>
