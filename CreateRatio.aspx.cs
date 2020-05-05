using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Threading;
using System.Text;

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
            List<string> l2 = num_array.ConvertAll<string>(x => ToLongString(x));
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
            List<string> l2 = den_array.ConvertAll<string>(x => x.ToString("F15").TrimEnd('0'));
            foreach (string s in l2)
            {
                denominator_textBox.Text = denominator_textBox.Text + "+" + s;
            }
        }

        protected void delete_den(object sender, EventArgs e)
        {

        }

        protected void construct_add(object sender, EventArgs e)
        {

        }






        private static string ToLongString(double input)
        {
            string strOrig = input.ToString();
            string str = strOrig.ToUpper();

            // if string representation was collapsed from scientific notation, just return it:
            if (!str.Contains("E")) return strOrig;

            bool negativeNumber = false;

            if (str[0] == '-')
            {
                str = str.Remove(0, 1);
                negativeNumber = true;
            }

            string sep = Thread.CurrentThread.CurrentCulture.NumberFormat.NumberDecimalSeparator;
            char decSeparator = sep.ToCharArray()[0];

            string[] exponentParts = str.Split('E');
            string[] decimalParts = exponentParts[0].Split(decSeparator);

            // fix missing decimal point:
            if (decimalParts.Length == 1) decimalParts = new string[] { exponentParts[0], "0" };

            int exponentValue = int.Parse(exponentParts[1]);

            string newNumber = decimalParts[0] + decimalParts[1];

            string result;

            if (exponentValue > 0)
            {
                result =
                    newNumber +
                    GetZeros(exponentValue - decimalParts[1].Length);
            }
            else // negative exponent
            {
                result =
                    "0" +
                    decSeparator +
                    GetZeros(exponentValue + decimalParts[0].Length) +
                    newNumber;

                result = result.TrimEnd('0');
            }

            if (negativeNumber)
                result = "-" + result;

            return result;
        }

        private static string GetZeros(int zeroCount)
        {
            if (zeroCount < 0)
                zeroCount = Math.Abs(zeroCount);

            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < zeroCount; i++) sb.Append("0");

            return sb.ToString();
        }
    }
}