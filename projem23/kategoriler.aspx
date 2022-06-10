<%@ Page Title="" Language="C#" MasterPageFile="~/admin_login.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="projem23.kategoriler1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-4">
            <form runat="server">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="kategori_adi" class="form-check-control" placeholder="Kategori Adı Girin" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Kaydet" OnClick="Button1_Click" />
                    <asp:GridView ID="GridView1" runat="server" Width="398px" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="kategori_adi" HeaderText="Kategori Adı" />
                            <asp:BoundField DataField="Id" HeaderText="Id" />
                            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="kategoriler_duz.aspx?Id={0}" DataTextField="Id" DataTextFormatString="duzeltme" HeaderText="Düzeltme" Text="Düzelt" />
                            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="kategoriler_sil?Id={0}" DataTextField="Id" DataTextFormatString="silme" HeaderText="Silme" Text="Sil" />
                        </Columns>
                    </asp:GridView>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
