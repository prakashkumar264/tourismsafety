
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using tourismsafety.Models;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace tourismsafety.Context
{
    public class tourismContext : DbContext
    {
        public DbSet<login> login { get; set; }

        public tourismContext() : base("name=conn")
        {
            Database.SetInitializer<tourismContext>(null);
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }

        public System.Data.Entity.DbSet<tourismsafety.Models.feedback> feedbacks { get; set; }

        public System.Data.Entity.DbSet<tourismsafety.Models.smallfeedback> smallfeedbacks { get; set; }

        public System.Data.Entity.DbSet<tourismsafety.Models.locationdata> locationdatas { get; set; }

        
    }
}

