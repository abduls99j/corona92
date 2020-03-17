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

        public List<covidCase> getCases()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("SELECT * FROM covidCases", con);
                cmd.CommandType = System.Data.CommandType.Text;

                SqlDataReader rdr = cmd.ExecuteReader();


                List<covidCase> list = new List<covidCase>();
                while (rdr.Read())
                {
                    covidCase case=

                    case. = rdr["userName"].ToString();
                    user.password = rdr["userPassword"].ToString();
                    user.gender = rdr["gender"].ToString();
                    user.dateOfBirth = rdr["dateOfBirth"].ToString();
                    user.userEmail = rdr["userEmail"].ToString();
                    user.Fname = rdr["Fname"].ToString();
                    user.Lname = rdr["Lname"].ToString();
                    user.userStatus = rdr["userStatus"].ToString();
                    list.Add(user);
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
