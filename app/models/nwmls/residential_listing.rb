
class Nwmls::ResidentialListing < Nwmls::Listing

  CODES = HashWithIndifferentAccess.new(
    ADU: "Approved Accessory Dwelling",
    APS: "Appliances that Stay",
    AR: "Area",
    ARC: "Architecture",
    ASF: "Approximate Square Footage",
    AVDT: "Available Date",
    AllowAVM: "Allow AVM",
    BDC: "Building Condition",
    BDI: "Building Information",
    BDL: "Bedrooms Lower",
    BDM: "Bedrooms Main",
    BDU: "Bedrooms Upper",
    BLD: "Builder",
    BLK: "Block",
    BRM: "Bonus Room Location",
    ProhibitBlogging: "Allow Blog",
    BR: "Bedrooms",
    BREO: "Bank Owned",
    BSM: "Basement",
    BTH: "Bathrooms",
    BUS: "Bus Line Nearby",
    BUSR: "Bus Route Number",
    CDOM: "Cumulative Days on Market",
    CIT: "City",
    CLA: "Co-Listing Agent Number",
    CLO: "Selling Date",
    CMFE: "Common/Community Features",
    COLO: "Co Office",
    COU: "County",
    CTDT: "Contingent Date",
    DD: "Directions",
    DNO: "Den or Office Location",
    DOM: "Days on Market",
    DRM: "Dining Room Location",
    DRP: "Directional Prefix",
    DRS: "Directional Suffix",
    DSR: "Community Name",
    DSRNUM: "Community Number",
    ECRT: "Environmental Cert",
    EFR: "Extra Finished Room Location",
    EL: "Elementary School",
    ENS: "Energy Source",
    ENT: "Entry Location",
    EXT: "Exterior",
    F17: "Form 17",
    FAM: "Family Room Location",
    FBG: "Full Baths Garage",
    FBL: "Full Baths Lower",
    FBM: "Full Baths Main",
    FBT: "Full Bathrooms",
    FBU: "Full Baths Upper",
    FEA: "Interior Features",
    FIN: "Financing",
    QBT: "Quarter Bathrooms",
    FLS: "Floor Covering",
    FND: "Foundation",
    FP: "Fireplaces Total",
    FPL: "Fireplaces Lower",
    FPM: "Fireplaces Main",
    FPU: "Fireplaces Upper",
    GAR: "Total Covered Parking",
    GR: "Parking Type",
    GRDX: "X Coordinate",
    GRDY: "Y Coordinate",
    HBG: "Half Baths Garage",
    HBL: "Half Baths Lower",
    HBM: "Half Baths Main",
    HBT: "Half Bathrooms",
    HBU: "Half Baths Upper",
    HOD: "Annual Association Dues",
    HSN: "House Number",
    HSNA: "Street Number Modifier",
    HTC: "Heating and Cooling",
    INDT: "Inactive Date",
    JH: "Junior High",
    KES: "Kitchen with Eating Space Location",
    KIT: "Kitchen Location",
    LAG: "Listing Agent Number",
    LAT: "Latitude",
    LD: "List Date",
    LDE: "Lot Details",
    LDR: "List Date Received",
    LN: "Listing Number",
    LO: "Listing Office Number",
    LONG: "Longitude",
    LP: "Listing Price",
    LPH: "Listing Price History",
    LRM: "Living Room Location",
    LSD: "Leased Equipment",
    LSF: "Lot Square Footage",
    LSZ: "Lot Dimensions",
    LSZS: "Lot Size Source",
    LT: "Lot Number",
    LTV: "Lot Topography/Vegetation",
    MAP: "Map Page",
    MAPBOOK: "Map Book",
    MBD: "Master Bedroom Location",
    MHM: "Manufactured Home Manufacturer",
    MHN: "Manufactured Home Model Name",
    MHS: "Manufactured Home Serial Number",
    MOR: "Monthly Rent if Rented",
    MR: "Marketing Remarks",
    NC: "New Construction",
    NIA: "Publish To Internet",
    OLP: "Original Price",
    PARQ: "Third Party Approval Required",
    PDR: "Pending Date",
    PIC: "Picture Count",
    PL4: "Zip Plus 4",
    POC: "Power Company",
    POL: "Pool",
    POS: "Possession",
    PRJ: "Project",
    PTO: "Preliminary Title Ordered",
    PTYP: "Property Type",
    TQBT: "Three Quarter Bathrooms",
    RF: "Roof",
    RRM: "Rec Room Location",
    SAG: "Selling Agent Number",
    SAP: "Septic Approved for Number of Bedrooms",
    SCA: "Selling Co Agent Number",
    SCO: "Selling Co Office Number",
    SD: "School District",
    SDT: "Status Date",
    SFF: "Square Footage Finished",
    SFS: "Square Footage Source",
    SFU: "Square Footage Unfinished",
    SH: "Senior High",
    SHOADR: "Show Address to Public",
    SIT: "Site Features",
    SML: "Show Map Link to Public",
    SNR: "Senior Exemption",
    SO: "Selling Office Number",
    SP: "Selling Price",
    SSUF: "Street Suffix",
    ST: "Status",
    STA: "State",
    STR: "Street",
    STY: "Style",
    SWC: "Sewer Company",
    SWR: "Sewer",
    TAX: "Parcel Number",
    TBG: "Three Quarter Baths Garage",
    TBL: "Three Quarter Baths Lower",
    TBM: "Three Quarter Baths Main",
    TBU: "Three Quarter Baths Upper",
    TRM: "Potential Terms",
    TX: "Tax Amount",
    TXY: "Tax Year",
    UD: "Update Date",
    UNT: "Unit",
    UTR: "Utility Room Location",
    VEW: "View",
    VIRT: "Virtual Tour URL",
    WAC: "Water Company",
    WAS: "Water Source",
    WFG: "Waterfront Footage",
    WFT: "Waterfront",
    WHT: "Water Heater Location",
    YBT: "Year Built",
    ZIP: "Zip Code",
    ZJD: "Zoning Jurisdiction",
    ZNC: "Zoning Code"
  )

  acts_as_nwmls_listing :property_type => 'RESI', :attribute_mappings => CODES

end
