class Nwmls::RentalListing < Nwmls::Listing

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
    XP: 'Expiration Date',
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
    SHOADR: 'Show Address to Public',
    DD: 'Directions',
    AVDT: 'Available Date',
    INDT: 'Inactive Date',
    COU: 'County',
    CDOM: 'Cumulative Days on Market',
    CTD: 'Cats and Dogs',
    CTDT: 'Contingent Date',
    SCA: 'Selling Co Agent Number',
    SCO: 'Selling Co Office Number',
    VIRT: 'Virtual Tour URL',
    SD: 'School District Code',
    SDT: 'Status Date',
    FIN: 'Financing',
    MAPBOOK: 'Map Book',
    DSR: 'Community Name',
    FBT: 'Full Bathrooms',
    TQBT: 'Three Quarter Bathrooms',
    HBT: 'Half Bathrooms',
    QBT: 'Quarter Bathrooms',
    SFS: 'Square Footage Source',
    LSZS: 'Lot Size Source',
    HSNA: 'Street Number Modifier',
    COLO: 'Co Office Number',
    PIC: 'Picture Count',
    BDC: 'Building Condition',
    BLK: 'Block',
    CAP: 'Cap Rate',# - NOI div LP',
    EL: 'Elementary School',
    ELEX: 'Electrical Expenses',
    EXP: 'Expenses',
    F17: 'Form 17',
    FND: 'Foundation',
    GAI: 'Gross Adjusted Income',
    GRM: 'Gross Rent Multiplier',
    GSI: 'Gross Scheduled Income',
    GSP: 'Number of Garage Spaces',
    HET: 'Heating Expenses',
    HOD: 'Annual Association Dues',
    INS: 'Insurance Expenses',
    JH: 'Junior High',
    LSZ: 'Lot Dimensions',
    LT: 'Lot Number',
    NC: 'New Construction',
    NCS: 'Number of Carport Spaces',
    NOI: 'Net Operating Income',
    NOU: 'Number of Units',
    OTX: 'Other Expenses',
    POC: 'Power Company',
    POL: 'Pool',
    PRJ: 'Project',
    PTO: 'Preliminary Title Ordered',
    SAP: 'Septic Approved for Number of Bedrooms',
    SH: 'Senior High',
    SIB: 'Number of Stories in Building',
    SML: 'Show Map Link to Public',
    STY: 'Style',
    SWC: 'Sewer Company',
    TEX: 'Total Expenses',
    TIN: 'Total Monthly Income',
    TSP: 'Total Number of Parking Spaces',
    TX: 'Tax Amount',
    TXY: 'Tax Year',
    UBG: 'Units Below Grade',
    USP: 'Number of Uncovered Spaces',
    VAC: 'Vacancy Rate',
    WAC: 'Water Company',
    WSG: 'Water/Sewer/Garbage',
    ZJD: 'Zoning Jurisdiction',
    AMN: 'Amenities',
    ENS: 'Energy Source',
    EXT: 'Exterior',
    FLS: 'Floor Covering',
    GZC: 'General Zoning Classification',
    HTC: 'Heating and Cooling',
    LDE: 'Lot Details',
    POS: 'Possession',
    RF: 'Roof',
    SIT: 'Site Features',
    SWR: 'Sewer',
    TRM: 'Potential Terms',
    VEW: 'View',
    WAS: 'Water Source',
    WFT: 'Waterfront',
    UN1: 'Description Unit 1',
    BR1: 'Bedrooms Unit 1',
    BA1: 'Bathrooms Unit 1',
    SF1: 'Square Feet Unit 1',
    RN1: 'Rent Unit 1',
    FP1: 'Fireplaces Unit 1',
    WD1: 'Washer/Dryer Unit 1',
    RO1: 'Range/Oven Unit 1',
    FG1: 'Refrigerator Unit 1',
    DW1: 'Dishwasher Unit 1',
    UN2: 'Description Unit 2',
    BR2: 'Bedrooms Unit 2',
    BA2: 'Bathrooms Unit 2',
    SF2: 'Square Feet Unit 2',
    RN2: 'Rent Unit 2',
    FP2: 'Fireplaces Unit 2',
    WD2: 'Washer/Dryer Unit 2',
    RO2: 'Range/Oven Unit 2',
    FG2: 'Refrigerator Unit 2',
    DW2: 'Dishwasher Unit 2',
    UN3: 'Description Unit 3',
    BR3: 'Bedrooms Unit 3',
    BA3: 'Bathrooms Unit 3',
    SF3: 'Square Feet Unit 3',
    RN3: 'Rent Unit 3',
    FP3: 'Fireplaces Unit 3',
    WD3: 'Washer/Dryer Unit 3',
    RO3: 'Range/Oven Unit 3',
    FG3: 'Refrigerator Unit 3',
    DW3: 'Dishwasher Unit 3',
    UN4: 'Description Unit 4',
    BR4: 'Bedrooms Unit 4',
    BA4: 'Bathrooms Unit 4',
    SF4: 'Square Feet Unit 4',
    RN4: 'Rent Unit 4',
    FP4: 'Fireplaces Unit 4',
    WD4: 'Washer/Dryer Unit 4',
    RO4: 'Range/Oven Unit 4',
    FG4: 'Refrigerator Unit 4',
    DW4: 'Dishwasher Unit 4',
    UN5: 'Description Unit 5',
    BR5: 'Bedrooms Unit 5',
    BA5: 'Bathrooms Unit 5',
    SF5: 'Square Feet Unit 5',
    RN5: 'Rent Unit 5',
    FP5: 'Fireplaces Unit 5',
    WD5: 'Washer/Dryer Unit 5',
    RO5: 'Range/Oven Unit 5',
    FG5: 'Refrigerator Unit 5',
    DW5: 'Dishwasher Unit 5',
    UN6: 'Description Unit 6',
    BR6: 'Bedrooms Unit 6',
    BA6: 'Bathrooms Unit 6',
    SF6: 'Square Feet Unit 6',
    RN6: 'Rent Unit 6',
    FP6: 'Fireplaces Unit 6',
    WD6: 'Washer/Dryer Unit 6',
    RO6: 'Range/Oven Unit 6',
    FG6: 'Refrigerator Unit 6',
    DW6: 'Dishwasher Unit 6',
    CLA: 'Co-Listing Agent Number',
    AllowAVM: 'Allow AVM',
    ProhibitBLOG: 'Allow Blog',
    AFR: 'Additional Finished Rooms ',
    APP: 'Appliances Provided',
    DOM: 'Days on Market',
    FP: 'Fireplaces Total',
    FUR: 'Furnished',
    GR: 'Parking Type',
    MIF: 'Move In Funds Required',
    MLT: 'Minimum Rental Terms',
    STO: 'Storage',
    TMC: 'Terms and Conditions',
    TYP: 'Type of Property',
    UTL: 'Included in Rent',
    BSM: 'Basement',
  )
  acts_as_nwmls_listing :property_type => 'RENT', :attribute_mappings => CODES
end
