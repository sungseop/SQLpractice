select vr.loginID
      ,ui.name
      ,vr.vac_type
      ,dc.detail_name
      ,DATE_FORMAT( vr.vac_sdate , '%Y-%m-%d' ) as vac_sdate
      ,DATE_FORMAT( vr.vac_edate , '%Y-%m-%d' ) as vac_edate
      ,DATE_FORMAT( vr.vac_adate , '%Y-%m-%d' ) as vac_adate
      ,ui2.name as vac_bo_name
      ,vr.vac_stat
      ,dc2.detail_name as vac_stat_name
  from tb_vacation_request vr
       inner join tb_detail_code dc on dc.detail_code = vr.vac_type and dc.group_code = 'VACcd'
       inner join tb_detail_code dc2 on dc2.detail_code = vr.vac_stat and dc2.group_code = 'Okcd'
       inner join tb_userinfo ui on ui.loginID = vr.loginID
       left outer join tb_userinfo ui2 on ui2.loginID = vr.vac_bo
 where vr.loginID = '2019001'
   and ui.name like concat ('%', '김', '%')
   and vr.vac_stat = '1'
   and vr.vac_rdate between STR_TO_DATE('2022-07-01', '%Y-%m-%d') and STR_TO_DATE('2022-07-31', '%Y-%m-%d')
       