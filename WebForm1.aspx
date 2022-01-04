<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JACHTY_WebForms.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style4 {
            height: 140px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 198px;
            height: 56px;
        }
        .auto-style8 {
            height: 56px;
        }
        .auto-style9 {
            width: 198px;
        }
        .auto-style10 {
            width: 198px;
            height: 44px;
        }
        .auto-style11 {
            height: 44px;
        }
        .auto-style12 {
            width: 198px;
            height: 42px;
        }
        .auto-style13 {
            height: 42px;
        }
        .auto-style14 {
            width: 198px;
            height: 40px;
        }
        .auto-style15 {
            height: 40px;
        }
        .auto-style16 {
            width: 198px;
            height: 47px;
        }
        .auto-style17 {
            height: 47px;
        }
        .auto-style18 {
            width: 198px;
            height: 50px;
        }
        .auto-style19 {
            height: 50px;
        }
        .auto-style28 {
            width: 198px;
            height: 24px;
        }
        .auto-style29 {
            height: 24px;
        }
        .auto-style30 {
            width: 198px;
            height: 7px;
        }
        .auto-style31 {
            height: 7px;
        }
        .auto-style32 {
            width: 198px;
            height: 19px;
        }
        .auto-style33 {
            height: 19px;
        }
        .auto-style34 {
            width: 198px;
            height: 25px;
        }
        .auto-style35 {
            height: 25px;
        }
        .auto-style36 {
            width: 198px;
            height: 30px;
        }
        .auto-style37 {
            height: 30px;
        }
        .auto-style38 {
            width: 198px;
            height: 35px;
        }
        .auto-style39 {
            height: 35px;
        }
        .auto-style40 {
            width: 198px;
            height: 43px;
        }
        .auto-style41 {
            height: 43px;
        }
        .auto-style42 {
            width: 198px;
            height: 41px;
        }
        .auto-style43 {
            height: 41px;
        }
        .auto-style44 {
            height: 100%;
            
        }
    </style>
</head>
<body>
        <div class="auto-style44" text-align: center; font-family: 'Arial Black'; font-size: 30px; >

    <form id="form1" >
        <div class="auto-style4">
            <table class="auto-style6" style="font-family: 'Arial Black'; font-size: 17px; color: #000000; position: relative;">
                <tr>
                   

                    <td class="auto-style32">Imię:</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="imie" runat="server" CssClass="auto-style5"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imie" ErrorMessage="Wpisz Imię!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style33"></td>
                </tr>

                
                

                <tr>
                    <td class="auto-style34">Nazwisko:</td>
                    <td class="auto-style35">
                        <asp:TextBox ID="nazwisko" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nazwisko" ErrorMessage="Wpisz Nazwisko!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style35"></td>
                </tr>
                <tr>
                    <td class="auto-style36">Telefon:</td>
                    <td class="auto-style37">
                        <asp:TextBox ID="telefon" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="telefon" ErrorMessage="Wpisz Telefon!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="telefon" ErrorMessage="Niepoprawny numer" ForeColor="#CC00FF" ValidationExpression="\d{9}"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                  <tr>
                    <td class="auto-style36">email:</td>
                    <td class="auto-style37">
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="Wpisz Mail!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Niepoprawny mail" ForeColor="#CC00FF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style38">miasto:</td>
                    <td class="auto-style39">
                        <asp:TextBox ID="miasto" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="miasto" ErrorMessage="Wpisz Miasto!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style40">ulica:</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="ulica" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ulica" ErrorMessage="Wpisz Ulicę!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style42">Kod pocztowy:</td>
                    <td class="auto-style43">
                        <asp:TextBox ID="kod_pocztowy" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="kod_pocztowy" ErrorMessage="Wpisz Kod pocztowy!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style28">Od kiedy chcesz wynająć?</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="odkiedy" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="kalendarz1" runat="server" ImageUrl="~/calendar.jpg" Width="34px" OnClick="kalendarz1_Click"></asp:ImageButton>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="odkiedy" ErrorMessage="Poprawny format daty to: dd.mm.yyyy" ForeColor="Red" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\.(0[1-9]|1[0-2])\.((19|20)\d\d))$"></asp:RegularExpressionValidator>
                        <br />
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px"  Width="200px" onSelectionChanged="Calendar1_SelectionChanged1">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="odkiedy" ErrorMessage="Wybierz datę!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style30">Do kiedy chcesz wynająć?</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="dokiedy" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="kalendarz2" runat="server" ImageUrl="~/calendar.jpg" Width="34px" OnClick="kalendarz2_Click"></asp:ImageButton>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="dokiedy" ErrorMessage="Poprawny format daty to: dd.mm.yyyy" ForeColor="Red" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\.(0[1-9]|1[0-2])\.((19|20)\d\d))$"></asp:RegularExpressionValidator>
                        <br />
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="Calendar2_SelectionChanged">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="dokiedy" ErrorMessage="Wybierz datę!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                   
                    
                </tr>
                <tr>
                    <td class="auto-style7">Wybierz Jacht:</td>
                    <td class="auto-style8">
                        
                        <asp:DropDownList ID="ListaJachty" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nazwa" DataValueField="idJachtu" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JachtyConnectionString %>" SelectCommand="SELECT [idJachtu], [Nazwa] FROM [Jachty]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ListaJachty" ErrorMessage="Wybierz Jacht!" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                    
                </tr>

                 <td class="auto-style9">DANE FIRMY</td>

                 <tr>
                    <td class="auto-style10">Nazwa Firmy:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="Firma_nazwa" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Firma_nazwa" ErrorMessage="Wpisz Nazwę firmy!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>

                <tr>
                    <td class="auto-style12">NIP Firmy:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="Firma_nip" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Firma_nip" ErrorMessage="Wpisz NIP!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>

                <tr>
                    <td class="auto-style14"> Miasto:</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="Firma_miasto" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Firma_miasto" ErrorMessage="Wpisz miasto!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>

                <tr>
                    <td class="auto-style16"> Ulica:</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="Firma_ulica" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="Firma_ulica" ErrorMessage="Wpisz ulicę!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style18"> Kod pocztowy:</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="Firma_kod_pocztowy" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Firma_kod_pocztowy" ErrorMessage="Wpisz kod pocztowy!" ForeColor="Red"></asp:RequiredFieldValidator>
                           </td>
                     </tr>
        <p>
            
            <tr>
            <td class="auto-style9">
              

            </td>
            </tr>
      
        </p>
        
   
       
                 
                    
               
                </table>
           <center><asp:Button ID="zamow" runat="server" Text="Zamów" OnClick="zamow_Click" Height="52px" Width="90px" />  </center> 
        </div>
        <p>
            &nbsp;</p>
        <p>
             &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
             
            
             <p>
                 &nbsp;</p>
        <p>
            &nbsp;</p>
        
  </div>
        
     </form>
    
   
</body>
</html>

    

    

    

</asp:Content>
