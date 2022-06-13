<%@ Page Title="" Language="C#" MasterPageFile="~/admin_login.Master" AutoEventWireup="true" CodeBehind="urun_ekle.aspx.cs" Inherits="projem23.urun_ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Ürün Kodu</label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Ürün Adı</label>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Kateogori Adı</label>
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                <label>Fiyat</label>
                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
                <div class="form-group">
                <label>Stok</label>
                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
             <div class="form-group">
                <label>Resim</label>
                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
              <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Button" />
            </div>


        </div>
    </form>
</asp:Content>
