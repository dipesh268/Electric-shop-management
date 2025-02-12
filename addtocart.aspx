<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addtocart.aspx.cs" Inherits="addtocart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<html>
<head>

<style>
     @import url('https://fonts.googleapis.com/css?family=Quicksand:400,700');
*, ::before, ::after { box-sizing: border-box; }
body{
  font-family:'Quicksand', sans-serif;
  text-align:center;
  line-height:1.5em;
/*   background:#E0E4CC; */
 background: #69d2e7;
background: -moz-linear-gradient(-45deg, #69d2e7 0%, #a7dbd8 25%, #e0e4cc 46%, #e0e4cc 54%, #f38630 75%, #fa6900 100%);
background: -webkit-linear-gradient(-45deg, #69d2e7 0%,#a7dbd8 25%,#e0e4cc 46%,#e0e4cc 54%,#f38630 75%,#fa6900 100%);
background: linear-gradient(135deg, #69d2e7 0%,#a7dbd8 25%,#e0e4cc 46%,#e0e4cc 54%,#f38630 75%,#fa6900 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#69d2e7', endColorstr='#fa6900',GradientType=1 );
}
hr {
  border:none;
  background:#E0E4CC;
  height:1px;
/*   width:60%;
  display:block;
  margin-left:0; */
}
.container {
  max-width: 1000px; 
  margin: 1em auto; 
  background:#FFF; 
  padding:30px;
  border-radius:5px;
}
.productcont {
  display: flex; 
}
.product {
  padding:1em; 
  border:1px solid #E0E4CC; 
  margin-right:1em; 
  border-radius:5px;
}
.cart-container {
  border:1px solid #E0E4CC;
  border-radius:5px;
  margin-top:1em;
  padding:1em;
}
button, input[type="submit"] { 
    border:1px solid #FA6900; 
    color:#fff; 
    background: #F38630; 
    padding:0.6em 1em;
    font-size:1em; 
    line-height:1; 
    border-radius: 1.2em;
    transition: color 0.2s ease-in-out, background 0.2s ease-in-out, border-color 0.2s ease-in-out;
}
button:hover, button:focus, button:active, input[type="submit"]:hover, input[type="submit"]:focus, input[type="submit"]:active {
    background: #A7DBD8;
    border-color:#69D2E7;
    color:#000;
    cursor: pointer;
}
table {
  margin-bottom:1em;
  border-collapse:collapse;
}
table td, table th {
  text-align:left;
  padding:0.25em 1em;
  border-bottom:1px solid #E0E4CC;
}
#carttotals {
  margin-right:0;
  margin-left:auto;
}
.cart-buttons {
  width:auto;
  margin-right:0;
  margin-left:auto;
  display:flex;
  justify-content:flex-end;
  padding:1em 0;
}
#emptycart {
  margin-right:1em;
}
table td:nth-last-child(1) {
  text-align:right;
}
.message {
  border-width: 1px 0px;
  border-style:solid;
  border-color:#A7DBD8;
  color:#679996;
  padding:0.5em 0;
  margin:1em 0;
}
Run Pen


Resources

</style>

</head>
<body>
 <div class="container"> 
   
   <div id="alerts"></div>
<div class="productcont">
        <div class="product">
            <h3 class="productname">Product 1</h3>
            <img src="img/Tv.jpg" / height=100px width=100px>
            <p>Product description excerpt...</p>
            <p class="price">$5.05</p>

           <asp:button runat="server" text="Add to cart"  class="addtocart"/>
            
        </div>
        <div class="product">
            <h3 class="productname">Product 2</h3>
            <img src="img/Phones.jpg" /height=100px width=100px>
            <p>Product description excerpt...</p>
            <p class="price">$8.50</p>
            <asp:button runat="server" text="Add to cart"  class="addtocart"/>
        </div>
        <div class="product">
            <h3 class="productname">Product 3</h3>
            <img src="img/laptop.jpg" /height=100px width=100px>
            <p>Product description excerpt...</p>
            <p class="price">$10.50</p>
            <asp:button runat="server" text="Add to cart"  class="addtocart"/>
        </div>
         <div class="product">
            <h3 class="productname">Product 3</h3>
            <img src="img/laptop.jpg" /height=100px width=100px>
            <p>Product description excerpt...</p>
            <p class="price">$10.50</p>
            <asp:button runat="server" text="Add to cart"  class="addtocart"/>
        </div>
         <div class="product">
            <h3 class="productname">Product 3</h3>
            <img src="img/laptop.jpg" /height=100px width=100px>
            <p>Product description excerpt...</p>
            <p class="price">$10.50</p>
            <asp:button runat="server" text="Add to cart"  class="addtocart"/>
        </div>
        </div>

        
</div>
</body>
</html>
</asp:Content>

