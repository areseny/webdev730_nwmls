class Nwmls::FarmListing < Nwmls::Listing
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
    BR: 'Bedrooms',
    BTH: 'Bathrooms',
    ASF: 'Approximate Square Footage',
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
    CTDT: 'Contingent Date',
    DOM: 'Days on Market',
    SCA: 'Selling Co Agent Number',
    SCO: 'Selling Co Office Number',
    VIRT: 'Virtual Tour URL',
    SD: 'School District Code',
    SDT: 'Status Date',
    FIN: 'Financing',
    MAPBOOK: 'Map Book',
    DSR: 'Community Name',
    QBT: 'Quarter Bathrooms',
    SFS: 'Square Footage Source',
    LSZS: 'Lot Size Source',
    HSNA: 'Street Number Modifier',
    COLO: 'Co Office Number',
    PIC: 'Picture Count',
    ACC: 'Acreage Comments',
    BCC: 'Barn/Outbuilding Comments',
    BDL: 'Bedrooms Lower',
    BDM: 'Bedrooms main',
    BDU: 'Bedrooms Upper',
    BLK: 'Block',
    BRI: 'Boarding Income',
    BSZ: 'Barn Size',
    CCC: 'Crop & Soil Comments',
    CRI: 'Crop Income',
    EL: 'Elementary School',
    EQI: 'Equity',
    EQV: 'Equipment Value',
    ESM: 'Easements',
    FBL: 'Full Baths Lower',
    FBM: 'Full Baths Main',
    FBT: 'Full Bathrooms',
    FBU: 'Full Baths Upper',
    FP: 'Fireplaces Total',
    GAR: 'Total Covered Parking',
    GSI: 'Gross Scheduled Income',
    HBL: 'Half Baths Lower',
    HBM: 'Half Baths Main',
    HBT: 'Half Bathrooms',
    HBU: 'Half Baths Upper',
    JH: 'Junior High',
    LCC: 'Livestock Comments',
    LSI: 'Lease Income',
    LSZ: 'Lot Dimensions',
    LT: 'Lot Number',
    MHM: 'Manufactured Home Manufacturer',
    MHN: 'Manufactured Home Model Name',
    MHS: 'Manufactured Home Serial Number',
    NC: 'New Construction',
    IRRC: 'Irrigation Comments',
    PRJ: 'Project',
    PSZ: 'Parlor Size',
    PTO: 'Preliminary Title Ordered',
    TQBT: 'Three Quarter Bathrooms',
    QTR: 'Three Quarter Baths Total',
    REM: 'Remodeled',
    SAP: 'Septic Approved for Number of Bedrooms',
    SEC: 'Section/Township/Range',
    SFF: 'Square Footage Finished',
    SFU: 'Square Footage Unfinished',
    SH: 'Senior High',
    SML: 'Show Map Link to Public',
    SNR: 'Senior Exemption',
    SSZ: 'Storage Size',
    STY: 'Style',
    SUR: 'Survey Information',
    TAC: 'Till Acres',
    TBL: 'Three Quarter Baths Lower',
    TBM: 'Three Quarter Baths Main',
    TBU: 'Three Quarter Baths Upper',
    TX: 'Tax Amount',
    TXY: 'Tax Year',
    VCC: 'View Comments',
    WFG: 'Waterfront Footage',
    APS: 'Appliances That Stay',
    ARC: 'Architecture',
    BDI: 'Building Information',
    BFE: 'Barn Features',
    BSM: 'Basement',
    BTP: 'Barn Type',
    ENS: 'Energy Source',
    EQP: 'Equipment Included',
    EXT: 'Exterior',
    F17: 'Form 17',
    FEA: 'Interior Features',
    FEN: 'Fence',
    FND: 'Foundation',
    FTP: 'Farm Type',
    GR: 'Parking Type',
    HTC: 'Heating and Cooling',
    IMP: 'Improvements',
    IRS: 'Irrigation Source',
    ITP: 'Irrigation Type',
    LDE: 'Lot Details',
    LEQ: 'Leased Equipment',
    LTG: 'Leased Terms',
    LTP: 'Livestock Type',
    LTV: 'Lot Topography/Vegetation',
    OUT: 'Outbuildings',
    POS: 'Possession',
    RF: 'Roof',
    STP: 'Soil Type',
    SWR: 'Sewer',
    TRM: 'Potential Terms',
    ECRT: 'Environmental Cert',
    ELEV: 'Elevation',
    PARQ: 'Third Party Approval Required',
    BREO: 'Bank Owned',
    AllowAVM: 'Allow AVM',
    ProhibitBLOG: 'Allow Blog',
  )

  acts_as_nwmls_listing :property_type => 'FARM', :attribute_mappings => CODES
end
