using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.Text.RegularExpressions;

namespace Corporate_Performance_Analyzer
{
    public partial class CreateRatio : System.Web.UI.Page
    {
        System.Data.OleDb.OleDbConnection conn;
        System.Data.OleDb.OleDbCommand cmd;
        String queryStr;
        String constructString;
        String extracted;
        float constructFloat;
        List<float> num_array = new List<float>();
        List<float> den_array = new List<float>();




        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {






            }
        }
        protected void move_to_num(object sender, EventArgs e)
        {
            constructString = FinancialConstructDropDown.SelectedValue;
            //float.TryParse(constructString, out constructFloat);
            extracted = Regex.Match(constructString, @"([-+]?[0-9]*\.?[0-9])").Value;
            constructFloat = float.Parse(extracted, System.Globalization.NumberStyles.Float);
            

            num_array.Add(constructFloat);
            List<string> l2 = num_array.ConvertAll<string>(x => x.ToString());
            foreach (string s in l2)
            {
                numerator_textBox.Text = numerator_textBox.Text + " + " + s;
            }

        }
        protected void delete_num(object sender, EventArgs e)
        {

        }
        protected void move_to_den(object sender, EventArgs e)
        {
            constructString = FinancialConstructDropDown.SelectedValue;
            //float.TryParse(constructString, out constructFloat);
            extracted = Regex.Match(constructString, @"([-+]?[0-9]*\.?[0-9])").Value;
            constructFloat = float.Parse(extracted, System.Globalization.NumberStyles.Float);


            den_array.Add(constructFloat);
            List<string> l2 = den_array.ConvertAll<string>(x => x.ToString());
            foreach (string s in l2)
            {
                denominator_textBox.Text = denominator_textBox.Text + " + " + s;
            }
        }

        protected void delete_den(object sender, EventArgs e)
        {

        }

        protected void construct_add(object sender, EventArgs e)
        {

        }
        private void showRatio()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["CPADataConnectionString"].ToString();
            conn = new System.Data.OleDb.OleDbConnection(connString);
            conn.Open();
            queryStr = "";

            cmd = new System.Data.OleDb.OleDbCommand(queryStr, conn);

            cmd.ExecuteReader();

            conn.Close();

        }
    }
}