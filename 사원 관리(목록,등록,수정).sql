select ui.loginID
      ,ui.dept_cd
      ,dp.dept_name
      ,ui.job_cd
      ,dc.detail_name
      ,ui.name
      ,ifnull(FORMAT(ui.sal_ad, 0),0) as sal_ad
      ,ifnull(FORMAT(ui.sal_bt, 0),0) as sal_bt
      ,ifnull(FORMAT(ui.sal_kuk, 0),0) as sal_kuk
      ,ifnull(FORMAT(ui.sal_kun, 0),0) as sal_kun
      ,ifnull(FORMAT(ui.sal_ko, 0),0) as sal_ko
      ,ifnull(FORMAT(ui.sal_san, 0),0) as sal_san
      ,ifnull(FORMAT(ui.sal_price, 0),0) as sal_price
      ,ifnull(FORMAT(ui.user_reprice, 0),0) as user_reprice
  from tb_userinfo ui
       inner join tb_dept dp on ui.dept_cd = dp.dept_cd
       inner join tb_detail_code dc on ui.job_cd = dc.detail_code and dc.group_code = 'POScd' 