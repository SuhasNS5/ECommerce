<%@ Page Title="" Language="C#" MasterPageFile="~/SMart.master" AutoEventWireup="true" CodeFile="forgot_password.aspx.cs" Inherits="forgot_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div class="py-3 text-center"> <%--style="background-image:url(images/cover-moon.svg);background-size:cover; >--%>
    <div class="container">
      <div class="row">
        <div class="mx-auto col-md-6 col-10 bg-white p-5" style="outline-color:#465466;outline-style:solid;">
          <h1 class="mb-4">Change Password</h1>
          
            <div class="form-group"> 
                <asp:TextBox ID="TextBox1"  class="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
            </div>
            <br />
            <div class="form-group mb-3">
                <asp:TextBox ID="TextBox2" class="form-control" placeholder="Enter Mobile Number" runat="server" TextMode="Phone"></asp:TextBox> 
              </div> 

            <div class="form-group mb-3">
                <asp:TextBox ID="TextBox3" class="form-control" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="FWRequiredFieldValidator" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Password is required." Font-Italic="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="PWRegularExpressionValidator" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" Font-Italic="True" Font-Names="Calibri" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>
              </div> 


              <asp:Button ID="Button1" runat="server" Text="Change Password" class="btn btn-primary" OnClick="Button1_Click"/>
              <br />
            <asp:Label ID="lblMsg" runat="server" style="color:red" Font-Names="Calibri"></asp:Label>
              <br />
              <a href="Login_SMart.aspx">Login</a>
              
           
        </div>
      </div>
    </div>
  </div>

</asp:Content>

