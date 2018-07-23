class Nwmls::VacantLandListing < Nwmls::Listing
  RAW_ATTRIBUTE_NAMES = %w(
    LN
    PTYP
    LAG
    ST
    LP
    LPH
    SP
    OLP
    HSN
    DRP
    STR
    SSUF
    DRS
    UNT
    CIT
    STA
    ZIP
    PL4
    LSF
    UD
    AR
    DSRNUM
    LDR
    LD
    CLO
    LO
    TAX
    MAP
    GRDX
    GRDY
    SAG
    SO
    NIA
    MR
    LONG
    LAT
    PDR
    CLA
    SHOADR
    DD
    AVDT
    INDT
    COU
    CDOM
    CTDT
    DOM
    SCA
    SCO
    VIRT
    SD
    SDT
    FIN
    MAPBOOK
    DSR
    FBT
    TQBT
    HBT
    QBT
    SFS
    LSZS
    HSNA
    COLO
    PIC
    BLK
    EL
    ELE
    ESM
    F17
    GAS
    JH
    LSZ
    LT
    LVL
    PRJ
    PTO
    QTR
    RD
    SAP
    SDA
    SEC
    SEP
    SFA
    SH
    SLP
    SML
    SNR
    SST
    STY
    SUR
    SWR
    TER
    TX
    TXY
    WFG
    WRJ
    ZJD
    ZNR
    ATF
    DOC
    FTR
    GZC
    IMP
    LDE
    POS
    RDI
    RS2
    TPO
    TRM
    VEW
    WFT
    WTR
    CMFE
    PARQ
    BREO
    AllowAVM
    ProhibitBLOG
    ROFR
    SaleType
    AUCTION
  )
  acts_as_nwmls_listing :property_type => 'VACL', :attribute_mappings => RAW_ATTRIBUTE_NAMES
end
