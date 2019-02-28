**FREE
// ===================================================================
// Test existence objet
// ====================================================================
dcl-proc Exists;
  dcl-pi *n ind;
    Obj char(20) const;
    ObjType char(10) const;
  end-pi;

  //
  /COPY Qapiobjsrc,API_OBJ

  dcl-s ObjL char(20);
  dcl-ds Objd likeds(objd0100);
  dcl-ds ErrDS likeds(errapi);
  ObjL = Obj;
  if %Subst( ObjL : 11 : 10) = *BLANK;
    %Subst( ObjL : 11 : 10) = '*LIBL';
  endif;
  RtvObj( Objd : %len(ObjD) : 'OBJD0100' : Objl : ObjType : ErrDS);
  if ErrDS.ErrRtn > 0;
    return *OFF;
  endif;
  return *ON;
end-proc;
