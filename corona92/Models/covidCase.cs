using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace corona92.Models
{
    public class covidCase
    {
        String province { get; set; }
        String city { get; set; }
        float longitude { get; set; }
        float latitude { get; set; }
        int confirmed { get; set; }
        int  deaths { get; set; }
        int recovered { get; set; }
        public covidCase()
        {

        }
        public covidCase(String _province, String _city, float _longitude, float _latitude,
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
