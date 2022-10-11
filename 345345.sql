select DATE_FORMAT(pl.pln_ddate,'%Y-%m-%d') as pln_ddate 
      ,cp.cop_nm
      ,bi.bi_nm
      ,mi.mi_nm
      ,si.si_nm
      ,pl.pln_nmt
  from tb_planning pl
       inner join tb_company cp on pl.loginID = cp.loginID
       inner join tb_sitem si on pl.si_cd = si.si_cd
       inner join tb_mitem mi on si.mi_cd = mi.mi_cd
       inner join tb_bitem bi on si.bi_cd = bi.bi_cd 
       