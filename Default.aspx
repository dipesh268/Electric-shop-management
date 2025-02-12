<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> K&K Electronics</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">   </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>

     <style>
       
     .navbar
     {
         background-color:#A9A9A9;
                        
     }
     
     .body
     {
         
         background-color:#F0FFFF;
         
     }
    
   
                        
        
 
  </style>
  </head>
<body class="body">
    <form id="form1" runat="server">
    <div>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><span>
                
                    <img src="img/logo_1.png" alt="MyEShoppoing" height="30" /></span><b>K & K Electronics</b>
                    </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">

                        <li class="active"><a href="Default.aspx"><B>Home</B></a> </li>
                        
                       <%-- <li><a href="About.aspx"><B>About</B></a> </li>--%>
                        <%--<li><a href="#">Contact US</a> </li>--%>
                        <%--<li><a href="#">Blog-</a> </li>--%>
                        <li class="drodown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><B>Products</B><b
                            class="caret"></b></a>
                            <ul class="dropdown-menu ">
                                
                                <li><a href="Product.aspx">All Products</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="Laptop.aspx">Laptops</a></li>
                                <li><a href="Mobiles.aspx">Mobile</a></li>
                                <li><a href="Laptop.aspx">Televisions</a></li>
                                <li><a href="AC.aspx">Air Conditioners</a></li>
                                <li><a href="HA.aspx">Home Appliances</a></li>
                                <li><a href="KA.aspx">Kitchen Appliances</a></li>
                            </ul>
                        </li>
                        <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                Cart<span class="badge" id="pCount" runat="server"></span>

                            </button>
                        </li>
                        <li id="btnSignUP" runat="server"><a href="SignUp.aspx"><b>SignUp</b></a> </li>
                        <li id="btnSignIN" runat="server"><a href="SignIn.aspx"><b>SignIn</b></a> </li>
                        <li>
                            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn " runat="server"
                                Text="Sign Out" OnClick="btnlogout_Click" />
                        </li>
                        <li>
                        <asp:Button ID="Button1" CssClass ="btn btn-link navbar-btn " runat="server" 
                                Text="" onclick="Button1_Click"  />
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
       <br />
   
    <!---image slider---->
        <div class="container">
            <%--<h2>
                Carousel Example</h2>--%>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                </ol>
                <!-- Wrapper for slides -->
              <div class="carousel-inner">
                    <div class="item active">
                       <img src="img/electric-room/kitchen.webp"  alt="kitchen" style="width: 25%;">
                        <div class="carousel-caption">
                            <h3>
                                Kitchen</h3>
                            <p>
                                50% off</p>
                            <p>
                                <a class="btn btn-lg btn-primary" href="KA.aspx" role="button">Buy Now</a></p>
                        </div>
                    </div>
                    <div class="item">
                    <img src="img/electric-room/home.webp"   alt="Laundry" style="width: 25%;">
                        <div class="carousel-caption">
                            <h3>
                                Home</h3>
                            <p>
                                20% off</p>
                                <p>
                                <a class="btn btn-lg btn-primary" href="HA.aspx" role="button">Buy Now</a></p>
                        </div>
                    </div>
                    <div class="item">
                       <img src="img/electric-room/TV.webp"   alt="office" style="width: 25%;">
                        <div class="carousel-caption">
                            <h3>
                                Televisions</h3>
                            <p>
                                20% off</p>
                                <p>
                                <a class="btn btn-lg btn-primary" href="Televisions.aspx" role="button">Buy Now</a></p>
                        </div>
                    </div>
                    <div class="item">
                    <img src="img/electric-room/AC.webp"   alt="entertainment" style="width: 100%;">
                        <div class="carousel-caption">
                            <h3>
                                Air Contitioners</h3>
                            <p>
                                25% off</p>
                                <p>
                                <a class="btn btn-lg btn-primary" href="AC.aspx" role="button">Buy Now</a></p>
                        </div>
                    </div>
                    <div class="item">
                  <img src="img/electric-room/laptops.webp"  alt="heaters" style="width: 100%;">
                        <div class="carousel-caption">
                            <h3>
                                Laptops</h3>
                            <p>
                                25% off</p>
                                <p>
                                <a class="btn btn-lg btn-primary" href="Laptop.aspx" role="button">Buy Now</a></p>
                        </div>
                    </div>
                    <div class="item">
                 <img src="img/electric-room/mobile.webp"   alt="coolers" style="width: 100%;">
                        <div class="carousel-caption">
                            <h3>
                                Mobile Phones</h3>
                            <p>
                                25% off</p>
                                <p>
                                <a class="btn btn-lg btn-primary" href="Mobiles.aspx" role="button">Buy Now</a></p>
                        </div>
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                </span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                    href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                    </span><span class="sr-only">Next</span> </a>
            </div>
        </div>
        <!---image slider End---->
    </div>
    <!---Middle COntents start---->
    <hr />
    <div class="container center ">
       <div class="row ">
            <div class="col-lg-4">
                <img class="img-circle " src="img/electric-room/mobile_1.webp"  alt="thumb" width="140" height="140" />
                <h2>
                    Mobile</h2>
                <p>
                  
                    <a class="btn btn-default " href="Mobiles.aspx" role="button">View More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle " src="img/electric-room/laptop_1.webp"  alt="thumb" width="140" height="140" />
                <h2>
                    Laptops</h2>
                <p>
                   
                <p>
                    <a class="btn btn-default " href="Laptop.aspx" role="button">View More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle " src="img/electric-room/TV.webp"  alt="thumb" width="140" height="140" />
                <h2>
                    Television</h2>
                <p>
                   
                <p>
                    <a class="btn btn-default " href="Televisions.aspx" role="button">View More &raquo;</a></p>
            </div><br />
            <div class="col-lg-4">
                <img class="img-circle " src="img/electric-room/AC_1.webp"  alt="thumb" width="140" height="140" />
                <h2>
                    Air Conditioners</h2>
                <p>
                   
                <p>

                    <a class="btn btn-default " href="AC.aspx" role="button">View More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle " src="img/electric-room/kitchen.webp"   alt="thumb" width="140" height="140" />
                <h2>
                    Kitchen</h2>
                <p>
                    
                <p>
                    <a class="btn btn-default " href="KA.aspx" role="button">View More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle " src="img/electric-room/home.webp"    alt="thumb" width="140" height="140" />
                <h2>
                    Home Appliances</h2>
                <p>
                   
                <p>
                    <a class="btn btn-default " href="HA.aspx" role="button">View More &raquo;</a></p>
            </div>
        </div>
      <div class="panel panel-primary">
            <div class="panel-heading">
                BLACK FRIDAY DEAL</div>
            <div class="panel-body">
                <div class="row" style="padding-top: 50px">
                    <asp:Repeater ID="rptrProducts" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-3 col-md-3">
                                <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                                    <div class="thumbnail">
                                        <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>"
                                            alt="<%# Eval("ImageName") %>" />
                                        <div class="caption">
                                            <div class="probrand">
                                                <%# Eval ("BrandName") %>
                                            </div>
                                            <div class="proName">
                                                <%# Eval ("PName") %>
                                            </div>
                                            <div class="proPrice">
                                                <span class="proOgPrice">
                                                    <%# Eval ("PPrice","{0:0,00}") %>
                                                </span>
                                                <%# Eval ("PSelPrice","{0:c}") %>
                                                <span class="proPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %>
                                                    off) </span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="panel-footer">
                Buy Mobile and get a gift card</div>
        </div>
    
   <!---Footer COntents Start here---->
    <hr />
    <footer>
           
            <div class ="container ">
              
                <p class ="pull-right "><a href ="Default.aspx">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <%--<p class ="pull-right "><a href="AdminHome.aspx"> Admin Login  </a></p> --%> 
                <p>&copy;2024 K & K Electronics.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="About.aspx">About</a>&middot;<a href ="#">Contact</a>&middot;<a href ="Product.aspx">Products</a> </p>
            </div>

        </footer>
    <!---Footer COntents End---->
    </form>
</body>
</html>
