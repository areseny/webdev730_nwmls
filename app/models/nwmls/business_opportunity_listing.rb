class Nwmls::BusinessOpportunityListing < Nwmls::Listing

  CODES = HashWithIndifferentAccess.new(
    LN: 'Listing Number',
    PTYP: 'Property Type',
    LAG: 'Listing Agent Number',
    ST: 'Status',
    LP: 'Listing Price',
    LPH: 'Listing Price History',
    SP: 'Selling Price',
    OLP: 'Original Price',
    HSN: 'House Number',
    DRP: 'Directional Prefix',
    STR: 'Street',
    SSUF: 'Street Suffix',
    DRS: 'Directional Suffix',
    UNT: 'Unit',
    CIT: 'City',
    STA: 'State',
    ZIP: 'Zip Code',
    PL4: 'Zip Plus 4',
    LSF: 'Lot Square Footage',
    UD: 'Update Date',
    AR: 'Area',
    DSRNUM: 'Community Number',
    LDR: 'List Date Received',
    LD: 'List Date',
    CLO: 'Selling Date',
    YBT: 'Year Built',
    LO: 'Listing Office Number',
    TAX: 'Parcel Number',
    MAP: 'Map Page',
    GRDX: 'X Coordinate',
    GRDY: 'Y Coordinate',
    SAG: 'Selling Agent Number',
    SO: 'Selling Office Number',
    NIA: 'Publish To Internet',
    MR: 'Marketing Remarks',
    LONG: 'Longitude',
    LAT: 'Latitude',
    PDR: 'Pending Date',
    CLA: 'Co-Listing Agent Number',
    SHOADR: 'Show Address to Public',
    DD: 'Directions',
    AVDT: 'Available Date',
    INDT: 'Inactive Date',
    COU: 'County',
    CDOM: 'Cumulative Days on Market',
    DOM: 'Days on Market',
    CTDT: 'Contingent Date',
    SCA: 'Selling Co Agent Number',
    SCO: 'Selling Co Office Number',
    VIRT: 'Virtual Tour URL',
    SDT: 'Status Date',
    FIN: 'Financing',
    MAPBOOK: 'Map Book',
    DSR: 'Community Name',
    HSNA: 'Street Number Modifier',
    COLO: 'Co Office',
    PIC: 'Picture Count',
    BDC: 'Building Condition',
    BLK: 'Block',
    EMP: 'Number of Employees',
    EQU: 'Equipment',
    EQV: 'Equipment Value',
    F17: 'Form 17',
    FRN: 'Franchise',
    GRS: 'Annual Gross Sales',
    GW: 'Goodwill Value',
    HOD: 'Annual Association Dues',
    HRS: 'Hours of Operation',
    INV: 'Inventory Value',
    LNM: 'Liens/Mortgages',
    LSI: 'Leased Items',
    LT: 'Lot Number',
    NA: 'Business Name',
    NP: 'Net Proceeds',
    PKC: 'Total Covered Parking',
    PKU: 'Total Uncovered Parking',
    PTO: 'Preliminary Title Ordered',
    RES: 'Real Estate Value',
    RNT: 'Annual Rent',
    SIN: 'Signage',
    SML: 'Show Map Link to Public',
    TEXP: 'Annual Expenses',
    TOB: 'Type of Business',
    YRE: 'Year Established',
    YRS: 'Years Current Owner In Business',
    LES: 'Lease Terms',
    LIC: 'Licenses',
    LOC: 'Location',
    MTB: 'Major Type of Business',
    POS: 'Possession',
    RP: 'Real Property',
    TRM: 'Terms',
    PARQ: 'Third Party Required',
    BREO: 'Bank Owned',
    AllowAVM: 'Allow AVM',
    ProhibitBlogging: 'Allow Blog',
  )

  acts_as_nwmls_listing :property_type => 'BUSO', :codes => CODES
end