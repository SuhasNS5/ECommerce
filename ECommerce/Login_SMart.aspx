<%@ Page Title="" Language="C#" MasterPageFile="~/SMart.master" AutoEventWireup="true" CodeFile="Login_SMart.aspx.cs" Inherits="Login_SMart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Login</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--Login Code--%>
    <div class="py-3 text-center" <%--style="background-image:url(images/cover-moon.svg);background-size:cover;--%> >
    <div class="container">
      <div class="row">
        <div class="mx-auto col-md-6 col-10 bg-white p-5" style="outline-color:#465466;outline-style:solid;">
          <h1 class="mb-4">Log in</h1>
          
            <div class="form-group"> 
                <asp:TextBox ID="TextBox1"  class="form-control" placeholder="Enter email" runat="server"></asp:TextBox>
            </div>
            <br />
            <div class="form-group mb-3">
                <asp:TextBox ID="TextBox2" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox> <small class="form-text text-muted text-right">
                <a href="forgot_password.aspx">Forgot Password?</a>
              </small> </div> 
              <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary" OnClick="Button1_Click"/>
              <br />
            <asp:Label ID="lblMsg" runat="server" style="color:red" Font-Names="Calibri"></asp:Label>
              <br />
              
           
              <asp:Button ID="Button2" runat="server" Text="New to SMart? Sign Up" class="btn btn-outline-primary" OnClick="Button2_Click" PostBackUrl="~/SignUp_SMart.aspx"/>
            
          
        </div>
      </div>
    </div>
  </div>

</asp:Content>

