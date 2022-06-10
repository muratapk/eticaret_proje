<%@ Page Title="" Language="C#" MasterPageFile="~/admin_login.Master" AutoEventWireup="true" CodeBehind="admin_duz.aspx.cs" Inherits="projem23.admin_duz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
         <div class="form-group">
    <label for="exampleInputEmail1">Kullanıcı Adı</label>

      <asp:TextBox ID="users" class="form-control" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Şifre</label>
      <asp:TextBox ID="pass" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
    
  </div>

        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Düzeltme" OnClick="Button1_Click" />

         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <a href="admin_ekle.aspx">Admin Sayfasına Dön</a>

    </form>

</asp:Content>
