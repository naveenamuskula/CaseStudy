﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CaseStudy
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class STAGE1Entities : DbContext
    {
        public STAGE1Entities()
            : base("name=STAGE1Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<PopulationCensu> PopulationCensus { get; set; }
    
        public virtual int sp_popcensus()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_popcensus");
        }
    }
}
