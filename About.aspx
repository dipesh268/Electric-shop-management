<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<title>About me Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">--%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - K & K Electonics </title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .containerr {
            max-width: 800px;
            margin-top: 50px;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        h11 {
            color: #333;
            font-size: 28px;
            margin-bottom: 20px;
        }
        pp {
            font-size: 16px;
            line-height: 1.6;
            color: #666;
        }
        ull {
            list-style: none;
            padding: 0;
        }
        lii {
            margin-bottom: 10px;
        }
        h22 {
            color: #555;
            font-size: 24px;
            margin-top: 30px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

       

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />

<body>
    <div class="containerr">
        <h1>About Us - K & K Electrinoc</h1>
        <p>Welcome to <span style="color: #e74c3c; font-weight: bold;">K & K Electrinoc</span>! We started our journey in 2010 with a passion for quality products and exceptional customer service. Our founder, Krupal Bodana, envisioned a place where shoppers could find unique items that enhance their lives.</p>
        <p>At <span style="color: #e74c3c; font-weight: bold;">K & K Electrinoc</span>, we offer a curated selection of electronics items. Our mission is to provide stylish and functional products that make everyday life better. Whether you're looking for trendy apparel or practical gadgets, we've got you covered.</p>
        <h2>Meet Our Team</h2>
        <ul>
            <li><span style="color: #3498db; font-weight: bold;">Bodana Krupal</span> - Founder & CEO</li>
            <li><span style="color: #3498db; font-weight: bold;">Khatri Kandarp</span> - Creative Director</li>
            <!-- Add more team members here -->
        </ul>
        <p>Thank you for choosing <span style="color: #e74c3c; font-weight: bold;">K & K Electrinoc</span>. We're excited to serve you!</p>
    </div>
</body>
<footer class="container-fluid text-center">
  <a href="About.aspx" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p> Made By <a href="Default.aspx" title="Visit w3schools">K & K Electronics</a></p>
</footer>


</asp:Content>

