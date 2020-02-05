<%@ Page Title="" Language="C#" MasterPageFile="~/SMart.master" AutoEventWireup="true" CodeFile="SignUp_SMart.aspx.cs" Inherits="SignUp_SMart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <title>Sign Up</title>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%--Sign Up Code--%>
    <div class="py-3 text-left" <%--style="background-image:url(images/cover-moon.svg);background-size:cover;"--%> >
    <div class="container">
      <div class="row">
        <div class="mx-auto col-md-6 col-10 bg-white p-5" style="outline-color:#465466;outline-style:solid;">
          <h1 class="mb-4" style="text-align:center;">Sign Up</h1>
     
    <div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="First Name" ></asp:Label>
        <br />
        <asp:TextBox ID="dbFirstName" runat="server" class="form-control" placeholder="Enter First Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="FNRequiredFieldValidator" runat="server" ControlToValidate="dbFirstName" Display="Dynamic" ErrorMessage="First name is required." Font-Italic="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />


        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <br />
        <asp:TextBox ID="dbLastName" runat="server" class="form-control" placeholder="Enter Last Name"></asp:TextBox>
        <br />

        <asp:Label ID="Label3" runat="server" Text="Mobile Number"></asp:Label>
        <br />
        <asp:TextBox ID="dbPhoneNumber" runat="server" class="form-control" placeholder="Enter Mobile Number" MaxLength="10" TextMode="Phone"></asp:TextBox>
        <asp:RequiredFieldValidator ID="MNRequiredFieldValidator" runat="server" ControlToValidate="dbPhoneNumber" Display="Dynamic" ErrorMessage="Mobile number is required." Font-Italic="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="MNRegularExpressionValidator" runat="server" ControlToValidate="dbPhoneNumber" Display="Dynamic" ErrorMessage="Invalid Mobile Number." Font-Italic="True" Font-Names="Calibri" ForeColor="Red" ValidationExpression="[6-9]\d{9}"></asp:RegularExpressionValidator>
        <br />  

        
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="dbPassword" runat="server" class="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="FWRequiredFieldValidator" runat="server" ControlToValidate="dbPassword" Display="Dynamic" ErrorMessage="Password is required." Font-Italic="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="PWRegularExpressionValidator" runat="server" ControlToValidate="dbPassword" Display="Dynamic" ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" Font-Italic="True" Font-Names="Calibri" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>
        <br /> 
        
   
        <asp:Label ID="Label5" runat="server" Text="Email Address"></asp:Label>
        <br />
        <asp:TextBox ID="dbEmailID" runat="server" class="form-control" placeholder="Enter Email Address"></asp:TextBox>
        <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ControlToValidate="dbEmailID" Display="Dynamic" ErrorMessage="Email address is required." Font-Italic="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="dbEmailID" ErrorMessage="Invalid Email address." Font-Italic="True" Font-Names="Calibri" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br /> 

     
        <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
        <br />
        <asp:TextBox ID="dbAddress" runat="server" class="form-control" placeholder="Enter Address"></asp:TextBox>
        <asp:RequiredFieldValidator ID="ADDRequiredFieldValidator" runat="server" ControlToValidate="dbAddress" Display="Dynamic" ErrorMessage="Address is required." Font-Italic="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

    
        <asp:Label ID="Label7" runat="server" Text="ZipCode"></asp:Label>
        <br />
        <asp:TextBox ID="dbZip" runat="server" Class="form-control" placeholder="ZipCode" MaxLength="6"></asp:TextBox>
        <asp:RequiredFieldValidator ID="ZipRequiredFieldValidator" runat="server" ControlToValidate="dbZip" Display="Dynamic" ErrorMessage="ZipCode is required." Font-Italic="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="ZipRegularExpressionValidator" runat="server" ControlToValidate="dbZip" ErrorMessage="Invalid ZipCode." Font-Italic="True" Font-Names="Calibri" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        <br />
        
      
    <div align="center">
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Sign Up" OnClick="Button1_Click" /></div>
        <br />
        <br />
        <br />
    </div>
   
  </div>
</div>
</div>    
   </div>   

</asp:Content>

