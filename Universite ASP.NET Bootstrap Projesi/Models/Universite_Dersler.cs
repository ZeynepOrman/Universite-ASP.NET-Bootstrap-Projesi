//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Universite_ASP.NET_Bootstrap_Projesi.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;

    public partial class Universite_Dersler
    {
        public int DersNo { get; set; }
        [DisplayName("Ad�")]
        public string DersAdi { get; set; }
        [DisplayName("Kodu")]
        public string DersKodu { get; set; }
        [DisplayName("��retim G�revlisi")]
        public string DersOgretimGorevlisi { get; set; }
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        [DisplayName("Ba�lama Tarihi")]
        public DateTime BaslamaTarihi { get; set; }
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        [DisplayName("Biti� Tarihi")]
        public DateTime BitisTarihi { get; set; }
        public Nullable<int> FakulteBolumNo { get; set; }
        public Nullable<int> OgretimGorevlisiNo { get; set; }
        public Nullable<int> OgrenciNo { get; set; }
    
        public virtual Universite_FakulteBolumleri Universite_FakulteBolumleri { get; set; }
        public virtual Universite_Ogrenciler Universite_Ogrenciler { get; set; }
        public virtual Universite_OgretimGorevlileri Universite_OgretimGorevlileri { get; set; }
    }
}
