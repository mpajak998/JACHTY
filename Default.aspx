<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JACHTY_WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron" style="margin: auto; text-align: center; font-family: 'Arial Black'; font-size: 30px; color: #000000; font-variant: normal; text-transform: none; overflow: auto; clip: rect(auto, auto, auto, auto); background-color: #b3ccff;">




        <br />
        WITAJ!<br />
        Na naszej stronie możesz wynająć Jachty<br />
        Kliknij tutaj aby przejść do formularza
                 <p>
                     &nbsp;
        </p>
        <p>
            <asp:Button ID="wynajem_button" runat="server" Height="64px" Text="WYNAJEM" Width="187px" BackColor="Gray" BorderColor="#0066FF" BorderStyle="Solid" Font-Size="X-Large" ForeColor="Black" OnClick="wynajem_button_Click"  />
        </p>


    </div>


   

</asp:Content>
