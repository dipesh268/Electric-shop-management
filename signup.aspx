<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>SignUp</title>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  
      <style>
       
     .navbar
     {
         background-color:#A9A9A9;
                        
     }
     
     .body
     {
         
         background-color:#F0FFFF;
         
     }
     .right
     {
         margin-left :50px;
         white-space:300px;
     }
     .why
     {
         margin-left:500px;
         margin-top:-364px;
             
          }
    
   
                        
        
 
  </style>
 
</head>
<body class="body">
<div class="right">
     <form id="form1" runat="server">
    <div>
    <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                    <a class="navbar-brand" href="Default.aspx"><span>
                       <img src="img/logo_1.png" alt="MyEShoppoing" height="30" /></span><B>K & K Electronics</B>
                    </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class=""><a href="Default.aspx"><B>Home</B></a> </li>
                        <li><a href="About.aspx"><B>About</B></a> </li>
                       <%-- <li><a href="#"><B>Contact US</B></a> </li>--%>
                        <%--<li><a href="#">Blog-</a> </li>--%>
                        <li class="drodown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><B>Products</B><b
                            class="caret"></b></a>
                            <ul class="dropdown-menu ">
                                
                                <li><a href="Product.aspx">All Products</a></li>
                                <li role="separator" class="divider "></li>
                                <li><a href="Laptop.aspx">Laptops</a></li>
                                <li><a href="Mobiles.aspx">Mobile</a></li>
                                <li><a href="Televisions.aspx">Televisions</a></li>
                                <li><a href="AC.aspx">Air Conditioners</a></li>
                                <li><a href="HA.aspx">Home Appliances</a></li>
                                <li><a href="KA.aspx">Kitchen Appliances</a></li>
                                
                            </ul>
                        </li>
                        
                        <%--<li id="btnSignUP" runat="server"><a href="#">SignUp</a> </li>--%>
                        <li id="btnSignIN" runat="server"><a href="SignIn.aspx"><B>SignIn</B></a> </li>
                       <%-- <li>
                            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn " runat="server"
                                Text="Sign Out" OnClick="btnlogout_Click" />
                        </li>--%>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    
    <!---signup page--->
        <div >
       <div class="container">
            <div class ="form-horizontal ">
                <h2>SignUp Form</h2>
                <hr />
            <label class="">UserName:</label>
            
            <asp:TextBox ID="txtUname" runat="server" Class="form-control" 
                    placeholder="Enter Your UserName" Width="400px"></asp:TextBox>
            


            <label class="">Password:</label>
            
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="form-control" 
                    placeholder="Enter Your password" Width="400px"></asp:TextBox>
           


            <label class="">Confirm Password:</label>
            
            <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" Class="form-control" 
                    placeholder="Enter Your Confirm password" Width="400px"></asp:TextBox>
         

            <label class="">First Name:</label>
     
            <asp:TextBox ID="txtFName" runat="server" Class="form-control" 
                    placeholder="Enter First Name" Width="400px"></asp:TextBox>
            

            <label class="">Last Name:</label>
            
            <asp:TextBox ID="txtLName" runat="server" Class="form-control" 
                    placeholder="Enter Last Name" Width="400px"></asp:TextBox>
            

            <label class="">Address:</label>
           
            <asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine" Class="form-control" 
                    placeholder="Enter Address" Width="400px"></asp:TextBox>
         <div class="why">
            <label class="">City:</label>
         
            <asp:TextBox ID="txtCity" runat="server" Class="form-control" 
                    placeholder="Enter City" Width="400px"></asp:TextBox>
           

            <label class="">pincode:</label>
         
            <asp:TextBox ID="txtpin" runat="server" Class="form-control" 
                    placeholder="Enter Pincode" Width="400px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtpin" ErrorMessage="Enter Pincode" ForeColor="Red" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                    <br />
       

            <label class="">Mobile:</label>
           
            <asp:TextBox ID="txtMobile" runat="server" Class="form-control" 
                    placeholder="Enter Mobile Number" Width="400px"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                 ControlToValidate="txtMobile" ErrorMessage="Enter Mobile" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                 <br
             Email:</label>
      
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" 
                    placeholder="Enter Your Email" Width="400px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Enter Email " ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
          

         
            <label class="">Gender:</label>
          
            <asp:DropDownList ID="DDLGender" runat="server">
            <asp:ListItem Text="Select" Value="0"></asp:ListItem>
            <asp:ListItem Text="Female" Value="1"></asp:ListItem>
            <asp:ListItem Text="Male" Value="2"></asp:ListItem>
             <asp:ListItem Text="Other" Value="3"></asp:ListItem>
            </asp:DropDownList>
            

            
             <br />
            
            <label class="">Entry Date:</label>
            <div class="col-xs-11">
            </div>

             <br />
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Class="form-control" 
                    placeholder="EnterDate" Width="398px"></asp:TextBox>
             <br />
             <br />
             <br />
             <br />
             <br />
            
                 <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" 
                 Text="SignUp" OnClick="txtsignup_Click" Height="40px" Width="100px" />
            &nbsp;<asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
           </div>
           </div>
           </div>
           </div>
         <!---signup page end--->
         <!---Footer COntents Start here---->
    <hr />
    <footer >
            <div class ="container ">
               
                <p class ="pull-right "><a href ="SignIn.aspx">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <%--<p class ="pull-right "><a href="AdminHome.aspx"> Admin Login  </a></p> --%> 
                <p>&copy;2024 K & K Electronics.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Products</a> </p>
            </div>

        </footer>
    <!---Footer COntents End---->

    </form>
</body>
</html>
