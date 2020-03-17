using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace corona92.Models
{
    public class covidCase
    {
        String province;
        String city;
        float longitude, latitude;
        int confirmed, deaths, recovered;

        covidCase(String _province, String _city, float _longitude, float _latitude,
            int _confirmed,int _deaths,int _recoverd)
        {
            province = _province;
            city = _city;
            longitude = _longitude;
            latitude = _latitude;
            confirmed = _confirmed;
            deaths = _deaths;
            recovered = _recoverd;
        }
    }
}
