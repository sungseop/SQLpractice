select ed.acc_no
      ,ea.acc_nm
      ,ed.dac_no
      ,ed.dac_nm
      ,dc.detail_name as dac_cate
      ,ed.dac_con
      ,ed.dac_stat
  from tb_expend_dtlaccount ed
       inner join tb_expend_account ea on ed.acc_no = ea.acc_no
       inner join tb_detail_code dc on ed.dac_cate = dc.detail_code and dc.group_code = 'acctype'