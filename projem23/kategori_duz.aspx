<%@ Page Title="" Language="C#" MasterPageFile="~/admin_login.Master" AutoEventWireup="true" CodeBehind="kategori_duz.aspx.cs" Inherits="projem23.kategori_duz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
         <div class="row">
             <div class="col-md-6">
                  <div class="form-group">
                <label>Kategori Adını Girin</label>
                <asp:TextBox ID="adi" class="form-control" runat="server"></asp:TextBox>

               
            </div>
            <div>
                <asp:Button runat="server" ID="kayit" class="form-control" Text="Kaydet" OnClick="kayit_Click" />
            </div>
             </div>
         </div>

    </form>
   


</asp:Content>
