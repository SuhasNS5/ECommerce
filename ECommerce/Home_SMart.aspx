<%@ Page Title="" Language="C#" MasterPageFile="~/SMart.master" AutoEventWireup="true" CodeFile="Home_SMart.aspx.cs" Inherits="Home_SMart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <title>Home-SMart</title>

      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

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


    <%--Product Display--%>
    <div class="py-2">
    <div class="container">
      <div class="row">
        <div class="text-center col-md-12">
          <h1>Our offers</h1>
        </div>
      </div>
      <div class="row d-flex justify-content-center text-center h-50">
        <div class="p-3 col-lg-3 col-md-3" style="">
          <div class="card border-0">
            <div class="card-body p-0"> <img class="img-fluid d-block mb-3 mx-auto rounded"src="../../images/iphone11.jpg" alt="iPhone 11"/>
              <h3 class="mt-3"> <b>iPhone 11</b> </h3>
                <a class="btn btn-primary mt-3" href="#">View now</a>
            </div>
          </div>
        </div>
         <div class="p-3 col-lg-3 col-md-3" style="">
          <div class="card border-0">
            <div class="card-body p-0"> <img class="img-fluid d-block mb-3 mx-auto rounded"src="../../images/iphone11pro.jpg" alt="iPhone 11"/>
              <h3 class="mt-3"> <b>iPhone 11 Pro</b> </h3>
                <a class="btn btn-primary mt-3" href="#">View now</a>
            </div>
          </div>
        </div>
         <div class="p-3 col-lg-3 col-md-3" style="">
          <div class="card border-0">
            <div class="card-body p-0"> <img class="img-fluid d-block mx-auto rounded"src="../../images/iphone11promax.jpg" alt="iPhone 11"/>
              <h3 class="mt-3"> <b>iPhone 11 Pro Max</b> </h3> 
                <a class="btn btn-primary mt-3" href="#">View now</a>             
            </div>
          </div>
        </div>       
      </div>
    </div>
  </div>

             <%-- 4 product container --%>
     <div class="pt-3">
    <div class="container">
      <div class="row">
        <div class="text-center mx-auto col-md-12">
          <h1>Best Sellings</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 p-2">
          <div class="card border-0 bg-none text-center text-light">
            <div class="card-body p-2">
                <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/p1.png" Height="265" Width="200" />
               <a class="btn btn-primary mt-3" href="#">View now</a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 p-2">
          <div class="card border-0 bg-none text-center text-light">
            <div class="card-body p-2">
                  <asp:Image ID="Image2" runat="server"  ImageUrl="~/images/p2.PNG" Height="265" Width="200" />
             <a class="btn btn-primary mt-3" href="#">View now</a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 p-2">
          <div class="card border-0 bg-none text-center text-light">
            <div class="card-body p-2">
                  <asp:Image ID="Image3" runat="server"  ImageUrl="~/images/p3.PNG" Height="265" Width="200" />
              <a class="btn btn-primary mt-3" href="#">View now</a>
            </div>
          </div>
        </div>
          <div class="col-lg-3 p-2">
          <div class="card bg-none border-0 text-center text-light">
            <div class="card-body p-2">
            <asp:Image ID="Image4" runat="server"  ImageUrl="~/images/p4.PNG" Height="265" Width="200" />
                 <a class="btn btn-primary mt-3" href="#">View now</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
         <%-- 4 product container --%>
     <div class="pt-3">
    <div class="container">
      <div class="row">
        <div class="text-center mx-auto col-md-12">
          <h1>Top Offers</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 p-2">
          <div class="card border-0  text-center text-light">
            <div class="card-body p-2">
                          <asp:Image ID="Image9" runat="server"  ImageUrl="~/images/p9.PNG" Height="265" Width="200" href="#" />
                <a class="btn btn-primary mt-3" href="#">Start now</a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 p-2">
          <div class="card border-0 text-center text-light">
            <div class="card-body p-2">
                 <asp:Image ID="Image10" runat="server"  ImageUrl="~/images/p10.PNG" Height="265" Width="200" />
           <a class="btn btn-primary mt-3" href="#">Start now</a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 p-2">
          <div class="card border-0  text-center text-light">
            <div class="card-body p-2">
             
           <asp:Image ID="Image11" runat="server"  ImageUrl="~/images/p11.PNG" Height="265" Width="200" />
                 <a class="btn btn-primary mt-3" href="#">Start now</a>
            </div>
          </div>
        </div>
          <div class="col-lg-3 p-2">
          <div class="card border-0  text-center text-light">
            <div class="card-body p-2">
               <asp:Image ID="Image12" runat="server"  ImageUrl="~/images/p12.PNG" Height="265" Width="200" />
                   <a class="btn btn-primary mt-3" href="#">Start now</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
            <%--4 product container --%>
     <div class="pt-3">
    <div class="container">
      <div class="row">
        <div class="text-center mx-auto col-md-12">
          <h1>Trending this Week</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 p-2">
          <div class="card border-0 bg-none text-center text-light">
            <div class="card-body p-2">
                <asp:Image ID="Image5" runat="server"  ImageUrl="~/images/p5.PNG" Height="265" Width="200" />
               <a class="btn btn-primary mt-3" href="#">View now</a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 p-2">
          <div class="card border-0 bg-none text-center text-light">
            <div class="card-body p-2">
                  <asp:Image ID="Image6" runat="server"  ImageUrl="~/images/p6.PNG" Height="265" Width="200" />
             <a class="btn btn-primary mt-3" href="#">View now</a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 p-2">
          <div class="card border-0 bg-none text-center text-light">
            <div class="card-body p-2">
                  <asp:Image ID="Image7" runat="server"  ImageUrl="~/images/p7.PNG" Height="265" Width="200" />
              <a class="btn btn-primary mt-3" href="#">View now</a>
            </div>
          </div>
        </div>
          <div class="col-lg-3 p-2">
          <div class="card border-0 bg-none text-center text-light">
            <div class="card-body p-2">
            <asp:Image ID="Image8" runat="server"  ImageUrl="~/images/p8.PNG" Height="265" Width="200" />
                 <a class="btn btn-primary mt-3" href="#">View now</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



</asp:Content>
