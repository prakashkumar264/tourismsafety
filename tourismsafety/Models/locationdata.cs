using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace tourismsafety.Models
{
   
    public class locationdata
    {
        [Key]
        public int id { get; set; }
        public int locationid { get; set; }
        public int purposeid { get; set; }

        public string locationname { get; set; }
        public string hygieneissues { get; set; }
        public string hygienesolution { get; set; }
        public string foodissues { get; set; }
        public string foodsolution { get; set; }
        public string transportationissues { get; set; }
        public string transportationsolution { get; set; }
        public string beggarsissues { get; set; }
        public string beggarssolution { get; set; }
        public string accomodationissues { get; set; }
        public string accomodationsolution { get; set; }
        public string womensafetyissues { get; set; }
        public string womensafetysolution { get; set; }
        public string miscellaneousissues { get; set; }
        public string miscellaneoussolution { get; set; }
        public string culturalissues { get; set; }
        public string culturalsolution { get; set; }
    }
}