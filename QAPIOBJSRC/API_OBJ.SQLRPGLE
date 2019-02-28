**FREE
// NAME API_OBJ
// TYPE *NONE
// SRCF QRPGLESRC
// TEXT API - Gestion des objets
// -------------------------------------------------------------------------
// API de gestion des objets
// Change Library List (QLICHGLL) API
// Change Object Description (QLICOBJD)
// List Objects (QUSLOBJ) API
// Rename Object (QLIRNMO) API
// Retrieve Object Description (QUSROBJD)
// -------------------------------------------------------------------------
// Retrieve Object Description (QUSROBJD) API
dcl-pr RtvObj extpgm('QUSROBJD');
  *n char(1000) options(*varsize); // Receiver  Receiver v
  *n int(10) const; // RcvLen  Length of re
  *n char(8) const; // FmtName  Format name
  *n char(20) const; // ObjName  Object and
  //  Optional 1
  *n char(10) const; // ObjType  Object type
  *n char(1300) options(*varsize:*nopass); // ErrorCode  Error Cod
end-pr;
//  Optional 2
// Auxiliary storage pool (ASP) control  INPUT char(*)
//
// OBJD0100 Format
dcl-ds OBJD0100 qualified;
  RtnSize int(10); // Bytes returned
  AvlSize int(10); // Bytes available
  Name char(10); // Object name
  Lib char(10); // Object library name
  Type char(10); // Object type
  RtnLib char(10); // Return library
  ASPNbr int(10); // Object ASP number
  Owner char(10); // Object owner
  Dommain char(2); // Object domain
  CrtDte char(13); // Creation date and t
  ChgDte char(13); // Object change date
end-ds;

dcl-ds OBJD0200 qualified;
  RtnSize int(10); // Bytes returned
  AvlSize int(10); // Bytes available
  Name char(10); // Object name
  Lib char(10); // Object library name
  Type char(10); // Object type
  RtnLib char(10); // Return library
  ASPNbr int(10); // Object ASP number
  Owner char(10); // Object owner
  Dommain char(2); // Object domain
  CrtDte char(13); // Creation date and t
  ChgDte char(13); // Object change date
  Atr char(10); // Extended object att
  Txt char(50); // Text description
  SrcF char(10); // Source file name
  SRCL char(10); // Source file library
  SRCM char(10); // Source file member
end-ds;

dcl-ds OBJD0300 qualified;
  RtnSize int(10); // Bytes returned
  AvlSize int(10); // Bytes available
  Name char(10); // Object name
  Lib char(10); // Object library name
  Type char(10); // Object type
  RtnLib char(10); // Return library
  ASPNbr int(10); // Object ASP number
  Owner char(10); // Object owner
  Dommain char(2); // Object domain
  CrtDte char(13); // Creation date and t
  ChgDte char(13); // Object change date
  Atr char(10); // Extended object att
  Txt char(50); // Text description
  SrcF char(10); // Source file name
  SRCL char(10); // Source file library
  SRCM char(10); // Source file member
  SrcUpd char(13); // Source file updated
  SveDte char(13); // Object saved date a
  RstDte char(13); // Object restored dat
  CrtUsr char(10); // Creator's user prof
  *n char(8); // System where object
  RzDte char(7); // Reset date
  SavSz int(10); // Save size
  SavSeq int(10); // Save sequence numbe
  SavSto char(10); // Storage
  SavCmd char(10); // Save command
  SavVid char(71); // Save volume ID
  SavDev char(10); // Save device
  SavFnm char(10); // Save file name
  SavFLb char(10); // Save file library n
  SavLbl char(17); // Save label
  SysLvl char(9); // System level
  Compiler char(16); // Compiler
  ObjLvl char(8); // Object level
  UsrChgd char(1); // User changed
  LicPgm char(16); // Licensed program
  Ptf char(10); // Program temporary f
  AApar char(10); // Authorized program
end-ds;
//          OBJD0400 -----------
dcl-ds OBJD0400 qualified;
  RtnSize int(10); // Bytes returned
  AvlSize int(10); // Bytes available
  Name char(10); // Object name
  Lib char(10); // Object library name
  Type char(10); // Object type
  RtnLib char(10); // Return library
  ASPNbr int(10); // Object ASP number
  Owner char(10); // Object owner
  Dommain char(2); // Object domain
  CrtDte char(13); // Creation date and t
  ChgDte char(13); // Object change date
  Atr char(10); // Extended object att
  Txt char(50); // Text description
  SrcF char(10); // Source file name
  SRCL char(10); // Source file library
  SRCM char(10); // Source file member
  SrcUpd char(13); // Source file updated
  SveDte char(13); // Object saved date a
  RstDte char(13); // Object restored dat
  CrtUsr char(10); // Creator's user prof
  *n char(8); // System where object
  RzDte char(7); // Reset date
  SavSz int(10); // Save size
  SavSeq int(10); // Save sequence numbe
  SavSto char(10); // Storage
  SavCmd char(10); // Save command
  SavVid char(71); // Save volume ID
  SavDev char(10); // Save device
  SavFnm char(10); // Save file name
  SavFLb char(10); // Save file library n
  SavLbl char(17); // Save label
  SysLvl char(9); // System level
  Compiler char(16); // Compiler
  ObjLvl char(8); // Object level
  UsrChgd char(1); // User changed
  LicPgm char(16); // Licensed program
  Ptf char(10); // Program temporary f
  AApar char(10); // Authorized program
  UseDte char(7); // Last-used date
  UseInfUpd char(1); // Usage information u
  DayCnt int(10); // Days-used count
  ObjSz int(10); // Object size
  OBjMul int(10); // Object size multipl
  Compress char(1); // Object compression
  PgmChgAlw char(1); // Allow change by pro
  ChdPgm char(1); // Changed by program
  UsrAtt char(10); // User-defined attrib
  OflAsp char(1); // Object overflowed A
  ActSavDte char(13); // Save active date an
  AudVlu char(10); // Object auditing val
  PriGrp char(10); // Primary group
  JrnSts char(1); // Journal status
  JrnNm char(10); // Journal name
  JrnLib char(10); // Journal library nam
  JrnImg char(1); // Journal images
  JrnOmit char(1); // Journal entries to
  JrnStrDte char(13); // Journal start date
  DgtSig char(1); // Digitally signed
  SavUntSiz int(10); // Saved size in units
  SavUntMul int(10); // Saved size multipli
  AspLibNbr int(10); // Library ASP number
  AspDevNm char(10); // Object ASP device n
  AspLibNm char(10); // Library ASP device
  DgtTrust char(1); // Digitally signed by
  DgtMost char(1); // Digitally signed mo
end-ds;


// ------------------------------------------------------------------------
// QUSLOBJ Liste d'objets
// ------------------------------------------------------------------------
dcl-pr QUSLOBJ extpgm('QUSLOBJ');
  *n char(20) const; // Qusname  Qualified u
  *n char(8) const; // Format  Format name
  *n char(20) const; // QObjectName  Object
  //    Optional Parameter Group 1:
  *n char(10) const; // ObjectType  Object t
  //    Optional Parameter Group 2:
  *n char(1200) options(*nopass:*varsize); // ErrorCode  Error Cod
  *n char(1200) options(*nopass:*varsize); // AutControl  Authorit
  //    Optional Parameter Group 3:
  *n char(1200) options(*nopass:*varsize); // SelectControl  Selec
  *n char(1200) options(*nopass:*varsize); // AspControl  Auxiliar
end-pr;

// DS Liste d'objets

//   Input Parameter
dcl-ds OBJLINPUT qualified;
  IOLUsNm char(10); // User space name
  IOLUsLb char(10); // User space library
  IOLFmNm char(8); // Format name
  IOLObNs char(10); // Object name specifi
  IOLObLs char(10); // Object library name
  IOLObTs char(10); // Object type specifi
  *n char(2); // Reserved
  IOLErrCode int(10); // Error code bytes pr
  IOLAuCtLen int(10); // Length of authority
  IOLCallLevel int(10); // Call level
  IOLOfObAu int(10); // Displacement to obj
  IOLNbObAu int(10); // Number of object au
  IOLOfLbAu int(10); // Displacement to lib
  IOLNbLbAu int(10); // Number of library a
  IOLLnSlCf int(10); // Length of selection
  IOLSlOmSt int(10); // Select or omit stat
  IOLOfSts int(10); // Displacement to sta
  IOLNbSts int(10); // Number of statuses
  IOLLnAsp int(10); // Length of ASP contr
  IOLAspDevN char(10); // Auxiliary storage p
  IOLAspSchT char(10); // Auxiliary storage p
  IOLDatas char(32000); // Object authorities
end-ds;

// Objct list data
dcl-ds OBJL0100 qualified;
  OblName char(10); // Object name used
  ObLLib char(10); // Object library name
  OblTyp char(10); // Object type used
end-ds;
//            OBJL0200  Information de création
dcl-ds OBJL0200 qualified;
  OblName char(10); // Object name used
  ObLLib char(10); // Object library name
  OblTyp char(10); // Object type used
  OblInfSts char(1); // Information status
  ObLXAt char(10); // Extended object att
  OblTxt char(50); // Text description
  ObLUat char(10); // User-defined attrib
  *n char(7); // Reserved
end-ds;
//            OBJL0300  List data section
dcl-ds OBJL0300 qualified;
  OblName char(10); // Object name used
  ObLLib char(10); // Object library name
  OblTyp char(10); // Object type used
  OblInfSts char(1); // Information status
  ObLXAt char(10); // Extended object att
  OblTxt char(50); // Text description
  ObLUat char(10); // User-defined attrib
  *n char(7); // Reserved
  OblAspNb int(10); // Object auxiliary st
  OblObOwn char(10); // Object owner
  ObLObDom char(2); // Object domain
  OblObCrt char(8); // Creation date and t
  OblObChg char(8); // Change date and tim
  ObLStorage char(10); // Storage
  OblZipSts char(1); // Object compression
  OblAllChg char(1); // Allow change by pro
  ObLPgmChg char(1); // Changed by program
  OblObAudi char(1); // Object auditing val
  OblSig char(1); // Digitally signed
  OblSigSys char(1); // Digitally signed by
  ObLSigOnc char(1); // Digitally signed mo
  *n char(2); // Reserved
  OblAspNbr int(10); // Library auxiliary s
end-ds;
//            OBJL0400  Source informations
dcl-ds OBJL0400 qualified;
  OblName char(10); // Object name used
  ObLLib char(10); // Object library name
  OblTyp char(10); // Object type used
  OblInfSts char(1); // Information status
  ObLXAt char(10); // Extended object att
  OblTxt char(50); // Text description
  ObLUat char(10); // User-defined attrib
  *n char(7); // Reserved
  OblAspNb int(10); // Object auxiliary st
  OblObOwn char(10); // Object owner
  ObLObDom char(2); // Object domain
  OblObCrt char(8); // Creation date and t
  OblObChg char(8); // Change date and tim
  ObLStorage char(10); // Storage
  OblZipSts char(1); // Object compression
  OblAllChg char(1); // Allow change by pro
  ObLPgmChg char(1); // Changed by program
  OblObAudi char(1); // Object auditing val
  OblSig char(1); // Digitally signed
  OblSigSys char(1); // Digitally signed by
  ObLSigOnc char(1); // Digitally signed mo
  *n char(2); // Reserved
  OblAspNbr int(10); // Library auxiliary s
  OblSrcF char(10); // Source file name
  OblSrcL char(10); // Source file library
  OblSrcM char(10); // Source file member
  OblSrcUpd char(13); // Source file updated
  OblUsrCrt char(10); // Creator's user prof
  OblSysCrt char(8); // System where object
  OblSysLvl char(9); // System level
  OblCompiler char(16); // Compiler
  OblObLevel char(8); // Object level
  OblUserChg char(1); // User changed
  OblLicPgm char(16); // Licensed program
  OblPTF char(10); // Program temporary f
  OblAlwAPAR char(10); // Authorized program
  OblPrmGrp char(10); // Primary group
  OblAssSpcSz char(4); // Associated space si
  OblSpAlign char(1); // Optimum space align
  *n char(6); // Reserved
end-ds;
//            OBJL0500   Saves & journalization informations
dcl-ds OBJL0500 qualified;
  OblName char(10); // Object name used
  ObLLib char(10); // Object library name
  OblTyp char(10); // Object type used
  OblInfSts char(1); // Information status
  ObLXAt char(10); // Extended object att
  OblTxt char(50); // Text description
  ObLUat char(10); // User-defined attrib
  *n char(7); // Reserved
  OblAspNb int(10); // Object auxiliary st
  OblObOwn char(10); // Object owner
  ObLObDom char(2); // Object domain
  OblObCrt char(8); // Creation date and t
  OblObChg char(8); // Change date and tim
  ObLStorage char(10); // Storage
  OblZipSts char(1); // Object compression
  OblAllChg char(1); // Allow change by pro
  ObLPgmChg char(1); // Changed by program
  OblObAudi char(1); // Object auditing val
  OblSig char(1); // Digitally signed
  OblSigSys char(1); // Digitally signed by
  ObLSigOnc char(1); // Digitally signed mo
  *n char(2); // Reserved
  OblAspNbr int(10); // Library auxiliary s
  OblSrcF char(10); // Source file name
  OblSrcL char(10); // Source file library
  OblSrcM char(10); // Source file member
  OblSrcUpd char(13); // Source file updated
  OblUsrCrt char(10); // Creator's user prof
  OblSysCrt char(8); // System where object
  OblSysLvl char(9); // System level
  OblCompiler char(16); // Compiler
  OblObLevel char(8); // Object level
  OblUserChg char(1); // User changed
  OblLicPgm char(16); // Licensed program
  OblPTF char(10); // Program temporary f
  OblAlwAPAR char(10); // Authorized program
  OblPrmGrp char(10); // Primary group
  OblAssSpcSz char(4); // Associated space si
  OblSpAlign char(1); // Optimum space align
  *n char(6); // Reserved
  OblSavDte char(8); // Object saved date a
  OblRstDte char(8); // Object restored dat
  OblSavSz int(10); // Save size
  OblSavSzM int(10); // Save size multiplie
  OblSavSeq int(10); // Save sequence numbe
  OblSavCmd char(10); // Save command
  OblSavVolId char(71); // Save volume ID
  OblSavDevice char(10); // Save device
  OblSavFName char(10); // Save file name
  OblSavLName char(10); // Save file library n
  OblSavLbl char(17); // Save label
  OblSavActDte char(8); // Save active date an
  OblJrnSts char(1); // Journal status
  OblJrnName char(10); // Journal name
  OblJrnLib char(10); // Journal library nam
  OblJrnImg char(1); // Journal images
  OblJrnOmit char(1); // Journal entries to
  OblJrnStrDte char(8); // Journal start date
  *n char(13); // Reserved
end-ds;
//            OBJL0600   Usage information
dcl-ds OBJL0600 qualified;
  OblName char(10); // Object name used
  ObLLib char(10); // Object library name
  OblTyp char(10); // Object type used
  OblInfSts char(1); // Information status
  ObLXAt char(10); // Extended object att
  OblTxt char(50); // Text description
  ObLUat char(10); // User-defined attrib
  *n char(7); // Reserved
  OblAspNb int(10); // Object auxiliary st
  OblObOwn char(10); // Object owner
  ObLObDom char(2); // Object domain
  OblObCrt char(8); // Creation date and t
  OblObChg char(8); // Change date and tim
  ObLStorage char(10); // Storage
  OblZipSts char(1); // Object compression
  OblAllChg char(1); // Allow change by pro
  ObLPgmChg char(1); // Changed by program
  OblObAudi char(1); // Object auditing val
  OblSig char(1); // Digitally signed
  OblSigSys char(1); // Digitally signed by
  ObLSigOnc char(1); // Digitally signed mo
  *n char(2); // Reserved
  OblAspNbr int(10); // Library auxiliary s
  OblSrcF char(10); // Source file name
  OblSrcL char(10); // Source file library
  OblSrcM char(10); // Source file member
  OblSrcUpd char(13); // Source file updated
  OblUsrCrt char(10); // Creator's user prof
  OblSysCrt char(8); // System where object
  OblSysLvl char(9); // System level
  OblCompiler char(16); // Compiler
  OblObLevel char(8); // Object level
  OblUserChg char(1); // User changed
  OblLicPgm char(16); // Licensed program
  OblPTF char(10); // Program temporary f
  OblAlwAPAR char(10); // Authorized program
  OblPrmGrp char(10); // Primary group
  OblAssSpcSz char(4); // Associated space si
  OblSpAlign char(1); // Optimum space align
  *n char(6); // Reserved
  OblSavDte char(8); // Object saved date a
  OblRstDte char(8); // Object restored dat
  OblSavSz int(10); // Save size
  OblSavSzM int(10); // Save size multiplie
  OblSavSeq int(10); // Save sequence numbe
  OblSavCmd char(10); // Save command
  OblSavVolId char(71); // Save volume ID
  OblSavDevice char(10); // Save device
  OblSavFName char(10); // Save file name
  OblSavLName char(10); // Save file library n
  OblSavLbl char(17); // Save label
  OblSavActDte char(8); // Save active date an
  OblJrnSts char(1); // Journal status
  OblJrnName char(10); // Journal name
  OblJrnLib char(10); // Journal library nam
  OblJrnImg char(1); // Journal images
  OblJrnOmit char(1); // Journal entries to
  OblJrnStrDte char(8); // Journal start date
  *n char(13); // Reserved
  OblLastUsed char(8); // Last-used date and
  OblRestDte char(8); // Reset date and time
  OblDayUsgCnt int(10); // Days-used count
  OblUpdUsgInf char(1); // Usage information u
  OblObjAspDevN char(10); // Object ASP device n
  OblObjAspDevL char(10); // Library ASP device
  *n char(3); // Reserved
end-ds;
//            OBJL0700  Size information
dcl-ds OBJL0700 qualified;
  OblName char(10); // Object name used
  ObLLib char(10); // Object library name
  OblTyp char(10); // Object type used
  OblInfSts char(1); // Information status
  ObLXAt char(10); // Extended object att
  OblTxt char(50); // Text description
  ObLUat char(10); // User-defined attrib
  *n char(7); // Reserved
  OblAspNb int(10); // Object auxiliary st
  OblObOwn char(10); // Object owner
  ObLObDom char(2); // Object domain
  OblObCrt char(8); // Creation date and t
  OblObChg char(8); // Change date and tim
  ObLStorage char(10); // Storage
  OblZipSts char(1); // Object compression
  OblAllChg char(1); // Allow change by pro
  ObLPgmChg char(1); // Changed by program
  OblObAudi char(1); // Object auditing val
  OblSig char(1); // Digitally signed
  OblSigSys char(1); // Digitally signed by
  ObLSigOnc char(1); // Digitally signed mo
  *n char(2); // Reserved
  OblAspNbr int(10); // Library auxiliary s
  OblSrcF char(10); // Source file name
  OblSrcL char(10); // Source file library
  OblSrcM char(10); // Source file member
  OblSrcUpd char(13); // Source file updated
  OblUsrCrt char(10); // Creator's user prof
  OblSysCrt char(8); // System where object
  OblSysLvl char(9); // System level
  OblCompiler char(16); // Compiler
  OblObLevel char(8); // Object level
  OblUserChg char(1); // User changed
  OblLicPgm char(16); // Licensed program
  OblPTF char(10); // Program temporary f
  OblAlwAPAR char(10); // Authorized program
  OblPrmGrp char(10); // Primary group
  OblAssSpcSz char(4); // Associated space si
  OblSpAlign char(1); // Optimum space align
  *n char(6); // Reserved
  OblSavDte char(8); // Object saved date a
  OblRstDte char(8); // Object restored dat
  OblSavSz int(10); // Save size
  OblSavSzM int(10); // Save size multiplie
  OblSavSeq int(10); // Save sequence numbe
  OblSavCmd char(10); // Save command
  OblSavVolId char(71); // Save volume ID
  OblSavDevice char(10); // Save device
  OblSavFName char(10); // Save file name
  OblSavLName char(10); // Save file library n
  OblSavLbl char(17); // Save label
  OblSavActDte char(8); // Save active date an
  OblJrnSts char(1); // Journal status
  OblJrnName char(10); // Journal name
  OblJrnLib char(10); // Journal library nam
  OblJrnImg char(1); // Journal images
  OblJrnOmit char(1); // Journal entries to
  OblJrnStrDte char(8); // Journal start date
  *n char(13); // Reserved
  OblLastUsed char(8); // Last-used date and
  OblRestDte char(8); // Reset date and time
  OblDayUsgCnt int(10); // Days-used count
  OblUpdUsgInf char(1); // Usage information u
  OblObjAspDevN char(10); // Object ASP device n
  OblObjAspDevL char(10); // Library ASP device
  *n char(3); // Reserved
  OblSize int(10); // Object size
  OblSizeM int(10); // Object size multipl
  OblASPOfl char(1); // Object overflowed A
  *n char(3); // Reserved
end-ds;

// ---------------------------------------------------------
// Change Object Description (QLICOBJD) API
// ---------------------------------------------------------
dcl-pr ChgObjd extpgm('QLICOBJD');
  *n char(10); // RtnLib
  *n char(20) const; // ObjNm
  *n char(10) const; // ObjType
  *n char(60) const options(*varsize); // ChgInfo
  *n char(32767) options(*varsize); // ErrorCode
end-pr;
//
dcl-ds ObjChgAtr qualified;
  CatrVarLen int(10) pos(1);
  catrVarDta char(316) pos(5);
end-ds;
dcl-ds AtrToChg qualified;
  catrKey int(10);
  catrLen int(10);
  catrDta char(58);
end-ds;
// Key change object description
dcl-c CObjdScrf 1; // Source file
dcl-c CObjdScrDte 2; // Source file last cha
dcl-c CObjdCompiler 3; // Compiler
dcl-c CObjdLvlObj 4; // Object control level
dcl-c CObjdLicPgm 5; // Licensed program
dcl-c CObjdPtfNbr 6; // Program temporary fi
dcl-c CObjdApar 7; // Authorized program a
dcl-c CObjdPgmChg 8; // Allow change by prog
dcl-c CObjdUsrAtr 9; // User-defined attribu
dcl-c CObjdText 10; // Text
dcl-c CObjdDyaCount 11; // Days used count
dcl-c CObjdPrdLID 12; // Product option load
dcl-c CObjdPrdID 13; // Product option ID
dcl-c CObjdComponent 14; // Component ID
dcl-c CObjdLastUsed 15; // Last used date
dcl-c CObjdChgDte 16; // Changed date and tim
dcl-c CObjdDayCount 17; // Member's days used c
// ---------------------------------------------------------
// Rename Object (QLIRNMO) API
// ---------------------------------------------------------
dcl-pr RnmObj extpgm('QLIRNMO');
  *n char(20) const; // FromObj
  *n char(10) const; // Type
  *n char(20) const; // ToObj
  *n char(1) const; // Replace
  *n char(32767) options(*varsize); // ErrorCode
end-pr;
// ---------------------------------------------------------
// Change Library List (QLICHGLL) API
// ---------------------------------------------------------
dcl-pr ChgLibl extpgm('QLICHGLL');
  *n char(11) const; // CurLib
  *n char(11) const; // PrdLib1
  *n char(11) const; // PrdLib2
  *n char(2805) const; // UsrLibl
  *n int(10) const; // NbrLib
  *n char(32767) options(*varsize); // ErrorCode
end-pr;
// ------------------------------------------------------------------------
// Retrieve Library Description (QLIRLIBD) API
// ------------------------------------------------------------------------
dcl-pr RtvLibD extpgm('QLIRLIBD');
  *n char(32765); // RtvLibDta  Receiver
  *n int(10) const; // RtvDtaLen  Length of
  *n char(10) const; // RtvLdName  Library n
  *n char(200) const options(*varsize); // RtvLdAtr  Attributes
  *n char(3200) options(*varsize); // ErorCode  Error code
end-pr;
// Format of Data Returned
dcl-ds RTVL0010 qualified;
  LenRtn int(10);
  LenAvl int(10);
  VarLRtn int(10);
  VarLAvl int(10);
  RtnLibDta char(32765);
end-ds;
// Format for Variable Length Record
dcl-ds RTVL0020 qualified;
  LenRtn int(10);
  KeyId int(10);
  SzFld int(10);
  FldVal char(60);
end-ds;
// Keys
dcl-c LibDType 1; // 10I0 Type of librar
dcl-c LibDASPnb 2; // 10I0 Auxiliary stor
dcl-c LibDCrtAut 3; // 10A  Create authori
dcl-c LibDObjAud 4; // 10A  Create object
dcl-c LibDext 5; // 50A  Text descripti
dcl-c LibDSize 6; // 12A  Library size i
dcl-c LibDNbrObj 7; // 10I  Number of obje
// ------------------------------------------------------------------------
// List Objects (QUSLOBJ) API
// ------------------------------------------------------------------------
dcl-c LibDASPNm 8; // 10A  Auxiliary stor
