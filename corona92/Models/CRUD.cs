using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace corona92.Models
{
    public class CRUD
    {
        public static string connectionString = "data source=mDESKTOP-O209U5U;Database=covid92;User Id=sa;Password=12345678;";

        public List<CovidCase> getCases()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("SELECT * FROM covidCases", con);
                cmd.CommandType = System.Data.CommandType.Text;

                SqlDataReader rdr = cmd.ExecuteReader();


                List<CovidCase> list = new List<CovidCase>();
                while (rdr.Read())
                {
                    CovidCase cases = new CovidCase();

                    cases.province = rdr["province"].ToString();
                    cases.city = rdr["city"].ToString();
                    cases.latitude = float.Parse(rdr["latitude"].ToString());
                    cases.longitude = float.Parse(rdr["dateOfBirth"].ToString());
                    cases.recovered = int.Parse(rdr["userEmail"].ToString());
                    cases.deaths = int.Parse(rdr["Fname"].ToString());
                    cases.confirmed = int.Parse(rdr["Lname"].ToString());
                    list.Add(cases);
                }
                rdr.Close();
                con.Close();

                return list;
            }

            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                return null;

            }
        }
    }
}
