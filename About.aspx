<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="JACHTY_WebForms.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    



    
    
    
    
    <div class="row" align="center">
      <div class="col">
        <img src="Northman_1200-021.jpg" style="width: 605px; height: 404px" class="responsive"/>
        <div class="letters"> Northman 1200</div>
       </div>
    <div class="col">
          <img src="Maxus34.jpg" style="width: 605px; height: 404px" alt="dawdaw"/>
        <div class="letters" > Maxus 34</div>
        </div>

        </div>
        </p>
    
  

    <div class="row" align="center">
      <div class="col">
        <img alt="Maxus28" class="modal-lg" src="maxus-28.jpg" style="width: 605px; height: 404px"/>
        <div class="letters"> Maxus 28</div>
       </div>
    <div class="col">
          <img src="Nexus_870_Revo-27.jpg" style="width: 605px; height: 404px" /> 
        <div class="letters"> Nexus Revo</div>
        </div>

        </div>




    
     
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="353px" Width="1780px" style="margin-top: 0px" align="center">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Nazwa" HeaderText="Nazwa" SortExpression="Nazwa" />
                <asp:BoundField DataField="Rok_produkcji" HeaderText="Rok produkcji" SortExpression="Rok_produkcji" />
                <asp:BoundField DataField="Max_liczba_osob" HeaderText="Maksymalna liczba osób" SortExpression="Max_liczba_osob" />
                <asp:BoundField DataField="Silnik" HeaderText="Silnik" SortExpression="Silnik" />
                <asp:BoundField DataField="Cena_za_dzien" HeaderText="Cena za dzień najmu(zł)" SortExpression="Cena_za_dzien" />
                <asp:BoundField DataField="Opis" HeaderText="Opis" SortExpression="Opis" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JachtyConnectionString %>" SelectCommand="SELECT [Nazwa], [Rok_produkcji], [Max_liczba_osob], [Silnik], [Cena_za_dzien], [Opis] FROM [Jachty]"></asp:SqlDataSource>
        
        

</asp:Content>
