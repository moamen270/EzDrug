﻿using PharmacyWebAPI.Models.Enums;

namespace PharmacyWebAPI.Models.Dto
{
    public class DrugDetailsGetDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DosageForm DosageForm { get; set; }
        public string DosageStrength { get; set; }
        public string SideEffects { get; set; }
        public string Contraindications { get; set; }
        public string Description { get; set; }
        public PregnancyCategory PregnancyCategory { get; set; }
        public int Stock { get; set; }
        public double Price { get; set; }
        public string ImgURL { get; set; }
        public int ManufacturerId { get; set; }
        public int CategoryId { get; set; }
        public Manufacturer Manufacturer { get; set; }
        public Category Category { get; set; }
    }
}