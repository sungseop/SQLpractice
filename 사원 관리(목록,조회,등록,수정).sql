select ui.loginID
      ,ui.name
      ,ui.dept_cd
      ,dp.dept_name
      ,dc.detail_name as job_name
      ,DATE_FORMAT( ui.user_date , '%Y-%m-%d' ) user_date
      ,(CASE ui.user_du
        WHEN 'Y' THEN '재직'
        WHEN 'N' THEN '퇴직'
        END) AS user_du
      ,(CASE ui.user_du
        WHEN 'B' THEN 'Y'
        ELSE 'N'
        END) AS user_du2
      ,ui.user_redate
  from tb_userinfo ui
       inner join tb_dept dp on ui.dept_cd = dp.dept_cd
       inner join tb_detail_code dc on dc.detail_code = ui.job_cd and dc.group_code = 'POScd'