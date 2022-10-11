select an.ant_date
      ,an.ant_no
      ,ep.dac_no
      ,ed.dac_nm
      ,an.loginID
      ,cp.cop_nm
      ,an.ant_spd
      ,an.ant_inc
  from tb_antsl an
       inner join tb_company cp on an.cop_no = cp.cop_no
       inner join tb_expend ep on an.loginID = ep.loginID
       inner join tb_expend_dtlaccount ed on ep.acc_no = ed.acc_no
       