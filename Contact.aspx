<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="JACHTY_WebForms.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="kontakt">
    <h3>Kontakt:</h3>
    <address>
        Warszawa<br />
        Grochowska, 04-357<br />
        <abbr title="Phone">P:</abbr>
       +48 111 222 333
    </address>

    <address>
        <strong>Pomoc</strong>   <a href="mailto:Support@jachty.com">Support@jachty.com</a><br />
        <strong>Współpraca:</strong> <a href="mailto:Marketing@jachty.com">Marketing@jachty.com</a>
    </address>
        </div>
</asp:Content>
