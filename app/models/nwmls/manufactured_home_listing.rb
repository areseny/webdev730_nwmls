class Nwmls::ManufacturedHomeListing < Nwmls::Listing
  CODES = HashWithIndifferentAccess.new(
    LO: 'Listing Office Number',
    LD: 'List Date',
    STA: 'State',
    LSD: 'Leased Equipment',
    SPR: 'Space Rent Per Month',
    OTR: 'Other Rooms',
    HTC: 'Heating and Cooling',
    DSR: 'Community Name',
    STY: 'Style',
    ST: 'Status',
    DSRNUM: 'Community Number',
    VEW: 'View',
    CIT: 'City',
    STG: 'Storage Number',
    POC: 'Power Company',
    BR: 'Bedrooms',
    BTH: 'Bathrooms',
    ASF: 'Approximate Square Footage',
    LSZ: 'Lot Dimensions',
    UNT: 'Unit',
    AR: 'Area',
    ENS: 'Energy Source',
    LNI: 'Labor and Industries Inspected',
    LDR: 'List Date Received',
    COLO: 'Co Office',
    ZIP: 'Zip Code',
    LP: 'Listing Price',
    LPH: 'Listing Price History',
    TRM: 'Potential Terms',
    MAPBOOK: 'Map Book',
    HBT: 'Half Bathrooms',
    SCA: 'Selling Co Agent Number',
    SP: 'Selling Price',
    NOH: 'Number of Homes in Park',
    NAS: 'Number of Assigned Spaces',
    LDE: 'Lot Details',
    PIC: 'Picture Count',
    CLO: 'Selling Date',
    SKR: 'Skirting Material',
    DRS: 'Directional Suffix',
    AVDT: 'Available Date',
    LAG: 'Listing Agent Number',
    CTDT: 'Contingent Date',
    CDOM: 'Cumulative Days on Market',
    DOM: 'Days on Market',
    DRP: 'Directional Prefix',
    SCO: 'Selling Co Office Number',
    SD: 'School District',
    WAC: 'Water Company',
    SDT: 'Status Date',
    SFS: 'Square Footage Source',
    FLS: 'Floor Covering',
    MFY: 'Manufactured After 1976',
    EL: 'Elementary School',
    FIN: 'Financing',
    QBT: 'Three Quarter Baths Total',
    HSN: 'House Number',
    FP: 'Fireplaces Total',
    MAP: 'Map Page',
    INDT: 'Inactive Date',
    COU: 'County',
    PKA: 'Park Amenities',
    AGR: 'Age Restrictions',
    BDC: 'Building Condition',
    BUS: 'Bus Line Nearby',
    EXT: 'Exterior',
    FBT: 'Full Bathrooms',
    QBT: 'Quarter Bathrooms',
    GRDY: 'Y Coordinate',
    HSNA: 'Street Number Modifier',
    LAT: 'Latitude',
    LONG: 'Longitude',
    LSF: 'Lot Square Footage',
    LSZS: 'Lot Size Source',
    MGR: 'Manager Contact Information',
    MHF: 'Manufactured Home Features',
    MHN: 'Manufactured Home Model Name',
    MHS: 'Manufactured Home Serial Number',
    MR: 'Marketing Remarks',
    NIA: 'Publish To Internet',
    OLP: 'Original Price',
    PDR: 'Pending Date',
    POS: 'Possession',
    PTYP: 'Property Type',
    TQBT: "Three Quarter Bathrooms",
    RF: 'Roof',
    SH: 'Senior High',
    SHOADR: 'Show Address to Public',
    SML: 'Show Map Link to Public',
    SNR: 'Senior Exemption',
    SO: 'Selling Office Number',
    SRI: 'Space Rent Includes',
    STL: 'Storage Location',
    STR: 'Street',
    SWC: 'Sewer Company',
    TAX: 'Parcel Number',
    TXY: 'Tax Year',
    UCS: 'Unit Can Stay in Park After Sale',
    UD: 'Update Date',
    WAS: 'Water Source',
    YBT: 'Year Built',
    ANC: 'Foundation',
    APS: 'Appliances That Stay',
    DD: 'Directions',
    F17: 'Form 17',
    FAC: 'Free and Clear',
    GRDX: 'X Coordinate',
    JH: 'Junior High',
    LN: 'Listing Number',
    MHM: 'Manufactured Home Manufacturer',
    PKG: 'Parking Types',
    PL4: 'Zip Plus 4',
    PRK: 'Park Name',
    SAG: 'Selling Agent Number',
    SSUF: 'Street Suffix',
    TX: 'Tax Amount',
    VIRT: 'Virtual Tour URL',
    WFT: 'Waterfront',
    WHT: 'Water Heater Location',
    CLA: 'Co-Listing Agent Number',
    CTD: 'Cats and Dogs',
    PAS: 'Park For Sale',
    PARQ: 'Third Party Approval Required',
    BREO: 'Bank Owned',
    AllowAVM: 'Allow AVM',
    ProhibitBLOG: 'Allow Blog',
  )

  acts_as_nwmls_listing :property_type => 'MANU', :attribute_mappings => CODES
end
