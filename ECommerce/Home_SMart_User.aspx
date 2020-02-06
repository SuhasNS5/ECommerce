<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home_SMart_User.aspx.cs" Inherits="Home_SMart_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css"/>

      <%--Style for Dropdown--%>
     <style>
       
.dropbtn {
    height:57px;
  background-color: white;
  color: black;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: white;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #f1f1f1;}

 .carousel-inner img {
      width: 100%;
      height: 100%;
  }

  .card{
            display:inline-block;
            top: 107px;
            left: 0px;
        }

        .c
        {
            margin-left:500px;
        }
</style>


</head>
<body>
    <form id="form1" runat="server">


       <%--Navigation Bar--%>
    <div>        
        <nav runat="server" class="navbar navbar-expand-md navbar-light" style="background-color: #465466;" >
    <div class="container"> <asp:Button ID="Button1" runat="server" class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar7"></asp:Button>
        <%--<span class="navbar-toggler-icon"></span>--%>
      
      <div class="collapse navbar-collapse" id="navbar7"> <a class="navbar-brand mb-0 text-white" href="Home_SMart_User.aspx">
          <i class="fa fa-renren" aria-hidden="true"></i>
          <b>SMart</b>
        </a>
        <ul class="navbar-nav mx-auto ">
          <li class="nav-item">  </li>
          <li class="nav-item">  </li>
          <li class="nav-item">  </li>
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item "><%--<i class="fa fa-user fa-lg" aria-hidden="true"></i>--%>  <asp:Label class="nav-link text-white" ID="lblMsg" runat="server" ></asp:Label>
                                                             
          </li>
              
          <li class="nav-item "> <a class="nav-link text-white"  href="UnderConstruction.aspx"><b>Cart</b>
              <i class="fa fa-cart-plus fa-lg" aria-hidden="true"></i>
            </a> </li> 
            &nbsp;&nbsp;

            <li class="nav-item">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" ForeColor="White" OnClick="LinkButton1_Click" PostBackUrl="~/Home_SMart.aspx">Logout</asp:LinkButton> </li>
        </ul>
      </div>
    </div>
  </nav>        
    </div>

         <%--Dropdown--%>
             <nav class="navbar navbar-expand-sm" style="padding:0px; /*background-color: #465466;*/">
       <div style="margin-left:20%;">
          
<div class="nav-item dropdown ">
  <button class="dropbtn">Electronics</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Apple</a>
    <a class="dropdown-item" href="#">Samsung</a>
   <a class="dropdown-item" href="#">OnePlus</a>
    <a class="dropdown-item" href="#">Redmi</a>   
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">TV and Appliances</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">MI TV</a>
    <a class="dropdown-item" href="#">Samsung</a>
    <a class="dropdown-item" href="#">Sony</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Men</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Footwear</a>
    <a class="dropdown-item" href="#">Clothing</a>
    <a class="dropdown-item" href="#">Watches</a>
  </div>
</div>   
<div class="dropdown">
  <button class="dropbtn">Women</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Clothing</a>
    <a class="dropdown-item" href="#">Bags</a>
    <a class="dropdown-item" href="#">Watches</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Baby & Kids</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Toys</a>
    <a class="dropdown-item" href="#">Baby Care</a>
    <a class="dropdown-item" href="#">Kid's Clotihng</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Home & Furniture</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Sofas</a>
    <a class="dropdown-item" href="#">Tables</a>
    <a class="dropdown-item" href="#">Wardrobes</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Sports,Books & More</button>
  <div class="dropdown-content">
    <a class="dropdown-item" href="#">Sports</a>
    <a class="dropdown-item" href="#">Books</a>
    <a class="dropdown-item" href="#">Stationary</a>
  </div>
</div>
</div>
</nav> 
        
         
        <%--Carousel--%>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"> </li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"> </li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"> </li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active"> <img class="d-block img-fluid w-100" src="images/GoHeroPro.jpg" />
                
              </div>
              <div class="carousel-item "> <img class="d-block img-fluid w-100" src="images/Samsung.jpg" />
                
              </div>
              <div class="carousel-item"> <img class="d-block img-fluid w-100" src="images/vivo.jpg" />
              </div>
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
             </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
            </div> 
            
          </div> 
        
       <%--products--%>
              <div class="row " >
        <asp:ListView ID="dlProducts" runat="server" RepeatColumns="4" CellSpacing="3" RepeatLayout="Table" OnSelectedIndexChanged="dlProducts_SelectedIndexChanged">
        <ItemTemplate>
            <%--<div class="container">--%>
                <%--<div class="row">--%>
           <div class="col-lg-3 col-md-4">
                <div class="card border-0" style="margin-bottom: 7%;">
                    <div class="card-body">
                        <div class="row" style="">
                            <div class="text-center mx-auto col-lg-12 col-12">
                                <div class="card-title"><b> <%# Eval("product_name") %></b></div>
                                <asp:Image class="card-img-top" ImageUrl='<%# Eval("img")%>' runat="server" Height="250" Width="250" />
                               
                                <div class="card-footer"><%# Eval("product_Desc") %></div>

                                <asp:Button ID="Button2" class="btn btn-primary mt-3" runat="server" Text="Buy" /> 
                    </div>
                </div>
            </div>
        </div>
               </div>
               <%-- </div>--%>
                <%--</div>--%>
               
        </ItemTemplate>
        </asp:ListView></div>

        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>


         <%--footer--%>
        <div>
      
        <div class="" style="background-color:#465466">
    <div class="container">
        <div class="text-white">
      <div class="row">
        <div class="p-4 col-md-3">
          <h2 class="mb-4">SMart</h2>
          <p>A company for whatever you may need, from Apple to Zipper</p>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4">Mapsite</h2>
          <ul class="list-unstyled"> <a href="#" class="text-white">Home</a> <br> <a href="#" class="text-white">About us</a> <br> <a href="#" class="text-white">Our services</a> <br> <a href="#" class="text-white">Stories</a> </ul>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4">Contact</h2>
          <p> <a href="#" class="text-white">
              <i class="fa d-inline mr-3 text-light fa-phone"></i>1800 5248 9632</a> </p>
          <p> <a href="#" class="text-white">
              <i class="fa d-inline mr-3 text-light fa-envelope-o"></i>info@Smart.com</a> </p>
          <p> <a href="#" class="text-white">
              <i class="fa d-inline mr-3 fa-map-marker text-light"></i>365 MG Road, Bengaluru</a> </p>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4">Follow us</h2>                    
          <div class="row">
            <div class="col-md-12 d-flex align-items-center justify-content-between my-2"> <a href="#">
                <i class="d-block fa fa-facebook-official text-light fa-lg mr-2"></i>
              </a> <a href="#">
                <i class="d-block fa fa-instagram text-light fa-lg mx-2"></i>
              </a> <a href="#">
                <i class="d-block fa fa-google-plus-official text-light fa-lg mx-2"></i>
              </a> <a href="#">
                <i class="d-block fa fa-pinterest-p text-light fa-lg mx-2"></i>
              </a> <a href="#">
                <i class="d-block fa fa-twitter text-light fa-lg ml-2"></i>
              </a> </div>
          </div>
        </div>        
      </div>
     </div>
       <div class="text-white">
      <div class="row">
        <div class="col-md-12 mt-3">
          <p class="text-center">© Copyright 2020 SMart - All rights reserved. </p>
        </div>
      </div>
        </div>
    </div>
  </div>
   
    </div>
    </form>
</body>
</html>
