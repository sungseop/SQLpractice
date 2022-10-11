select dc.detail_name
      ,vr.loginID
      ,ui.name
      ,DATE_FORMAT(vr.vac_sdate,'%Y-%m-%d') as vac_sdate
      ,DATE_FORMAT(vr.vac_edate,'%Y-%m-%d') as vac_edate
      ,vr.vac_bo
      ,dc2.detail_name as vac_stat
  from tb_vacation_request vr
       inner join tb_detail_code dc on vr.vac_type = dc.detail_code and dc.group_code = 'VACcd'
       inner join tb_userinfo ui on vr.loginID = ui.loginID
       inner join tb_detail_code dc2 on vr.vac_stat = dc2.detail_code and dc2.group_code = 'Okcd'