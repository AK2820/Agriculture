//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ITVidpra_AgriCulture_Project.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_District
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_District()
        {
            this.tbl_Taluka = new HashSet<tbl_Taluka>();
        }
    
        public int D_No { get; set; }
        public string D_Name { get; set; }
        public string D_Code { get; set; }
        public string Administrative_Division { get; set; }
        public Nullable<double> Area { get; set; }
        public string Collector { get; set; }
        public string State { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_Taluka> tbl_Taluka { get; set; }
    }
}
