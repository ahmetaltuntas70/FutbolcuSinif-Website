<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="SINIFSITEWEB.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">BASLIK</th>
            <th scope="col">ICERIK</th>
            <th scope="col">OGRETMEN</th>
            <th scope="col">ISLEMLER</th>

        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DUYURUID")%></td>
                        <td><%#Eval("DUYURUBASLIK")%></td>
                        <td><%#Eval("DUYURUICERIK")%></td>
                        <td><%#Eval("DUYURUOGRT")%></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "~/DuyuruSil.aspx?DuyuruID="+Eval("DuyuruID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SIL</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "~/DuyuruGuncelle.aspx?DuyuruID="+Eval("DuyuruID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GUNCELLE</asp:HyperLink>
                        </td>




                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>
