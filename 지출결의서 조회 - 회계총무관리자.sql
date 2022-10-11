select ep.exp_no
      ,DATE_FORMAT(ep.exp_date,'%Y-%m-%d') as exp_date 
      ,DATE_FORMAT(ep.exp_sdate,'%Y-%m-%d') as exp_sdate
      ,ep.loginID
      ,ui.name
      ,ea.acc_nm
      ,ed.dac_nm
      ,dp.dept_name
      ,ep.exp_cost
      ,dc.detail_name as exp_stat
  from tb_expend ep
       inner join tb_userinfo ui on ep.loginID = ui.loginID
       inner join tb_expend_account ea on ep.acc_no = ea.acc_no
       inner join tb_expend_dtlaccount ed on ep.acc_no = ed.acc_no and ep.dac_no = ed.dac_no
       inner join tb_dept dp on ep.dept_cd = dp.dept_cd
       inner join tb_detail_code dc on ep.exp_stat = dc.detail_code and dc.group_code = 'Okcd'
       