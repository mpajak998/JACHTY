using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JACHTY_WebForms
{
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }
        }

        protected void test_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void kalendarz1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("style", "position:absolute");
        }
        protected void kalendarz2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible)
            {
                Calendar2.Visible = false;
            }
            else
            {
                Calendar2.Visible = true;
            }
            Calendar2.Attributes.Add("style", "position:absolute");
        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            odkiedy.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
            Calendar1.Visible = false;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            dokiedy.Text = Calendar2.SelectedDate.ToString("yyyy/MM/dd");
            Calendar2.Visible = false;
        }
        public string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["JachtyConnectionString"].ConnectionString;
            //the "ConnStringName" is the name of your Connection String that was set up from the Web.Config

        }
        protected void zamow_Click(object sender, EventArgs e)
        {

            
                
            
            


            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "INSERT INTO Klienci (idFirmy,Imie,Nazwisko,Telefon,email,miasto,ulica,kod_pocztowy) VALUES (@Return_value2,@Val1,@Val2,@Val3,@Val4,@Val5,@Val6,@Val7)";
            string sql0 = "INSERT INTO Firma (nazwa,nip,miasto,ulica,kod_pocztowy) VALUES (@Val10,@Val11,@Val12,@Val13,@Val14)";
            string sql2 = "select ident_current('Klienci')";
            string sql1 = "INSERT INTO Zamowienia (idKlienta,od_data,do_data,idJachtu) VALUES (@Return_value,@Val7,@Val8,@Val9)";
            string sql3 = "select ident_current('Firma')";

            try
            {

                conn.Open();
                


                SqlCommand cmd0 = new SqlCommand(sql0, conn);
                cmd0.Parameters.AddWithValue("@Val10", Firma_nazwa.Text);
                cmd0.Parameters.AddWithValue("@Val11", Firma_nip.Text);
                cmd0.Parameters.AddWithValue("@Val12", Firma_miasto.Text);
                cmd0.Parameters.AddWithValue("@Val13", Firma_ulica.Text);
                cmd0.Parameters.AddWithValue("@Val14", Firma_kod_pocztowy.Text);
                cmd0.CommandType = CommandType.Text;
                cmd0.ExecuteNonQuery();

                SqlCommand cmd3 = new SqlCommand(sql3, conn);

                cmd3.ExecuteNonQuery();
                int myID2 = Convert.ToInt32(cmd3.ExecuteScalar());


                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Return_Value2", myID2);
                cmd.Parameters.AddWithValue("@Val1", imie.Text);
                cmd.Parameters.AddWithValue("@Val2", nazwisko.Text);
                cmd.Parameters.AddWithValue("@Val3", telefon.Text);
                cmd.Parameters.AddWithValue("@Val4", email.Text);
                cmd.Parameters.AddWithValue("@Val5", miasto.Text);
                cmd.Parameters.AddWithValue("@Val6", ulica.Text);
                cmd.Parameters.AddWithValue("@Val7", kod_pocztowy.Text);


               

                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();




                SqlCommand cmd2 = new SqlCommand(sql2, conn);
              
             
                cmd2.ExecuteNonQuery();
                int myID = Convert.ToInt32(cmd2.ExecuteScalar());






                SqlCommand cmd1 = new SqlCommand(sql1, conn);
                cmd1.Parameters.AddWithValue("@Return_Value", myID);
                cmd1.Parameters.AddWithValue("@Val7", odkiedy.Text);
                cmd1.Parameters.AddWithValue("@Val8", dokiedy.Text);
                cmd1.Parameters.AddWithValue("@Val9", ListaJachty.Text);
                cmd1.CommandType = CommandType.Text;
                cmd1.ExecuteNonQuery();
                

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                conn.Close();
            }

            }

          
        



        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}

