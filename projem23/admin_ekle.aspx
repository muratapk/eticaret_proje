<%@ Page Title="" Language="C#" MasterPageFile="~/admin_login.Master" AutoEventWireup="true" CodeBehind="admin_ekle.aspx.cs" Inherits="projem23.admin_ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-md-4">
 <form runat="server">
  <div class="form-group">
    <label for="exampleInputEmail1">Kullanıcı Adı</label>

      <asp:TextBox ID="users" class="form-control" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Şifre</label>
      <asp:TextBox ID="pass" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
    
  </div>

     <asp:Panel ID="Panel3" runat="server" Height="115px" Width="453px">
         <div class="form-group">
             <asp:Label ID="Label1" runat="server" Text="Aranacak Admin Numarası"></asp:Label>
             <asp:TextBox ID="aranantxt" CssClass="form-control" runat="server" Width="206px"></asp:TextBox>
         </div>
         <div class="form-control">
               <asp:Button ID="arananbtn" CssClass="btn btn-danger" runat="server" Text="Arama Yap" />
         </div>
        
       
     </asp:Panel>

     <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Kaydet" OnClick="Button1_Click" />
     
     <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="Silme" />
     <asp:Button ID="Button3" runat="server" class="btn btn-danger" Text="Düzeltme" />
     <asp:Button ID="Button4" runat="server" CssClass="btn btn-success" Text="Arama" OnClick="Button4_Click" />
     
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="599px">
         <Columns>
             <asp:BoundField DataField="Id" HeaderText="Sıra No" />
             <asp:BoundField DataField="users" HeaderText="Kullanıcı Adı" />
             <asp:BoundField DataField="pass" HeaderText="Şifre" />
             <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="admin_duz.aspx?Id={0}" DataTextField="Id" DataTextFormatString="Düzeltme" HeaderText="Düzeltme" Text="Düzelt" />
             <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="admin_sil.aspx?Id={0}" DataTextField="Id" DataTextFormatString="Sil" HeaderText="Silme" Text="Sil" />
         </Columns>
         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
         <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
         <RowStyle BackColor="White" ForeColor="#330099" />
         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
         <SortedAscendingCellStyle BackColor="#FEFCEB" />
         <SortedAscendingHeaderStyle BackColor="#AF0101" />
         <SortedDescendingCellStyle BackColor="#F6F0C0" />
         <SortedDescendingHeaderStyle BackColor="#7E0000" />
     </asp:GridView>
     
     <asp:Panel ID="Panel2" runat="server" Height="39px">
     </asp:Panel>
     
</form>

        </div>
    </div>


</asp:Content>
