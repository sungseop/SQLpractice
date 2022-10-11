select sa.sal_kuk
      ,sa.sal_kun
      ,sa.sal_ko
      ,sa.sal_san
      ,sa.sal_bt
      ,sa.sal_price
      ,sa.sal_ad
  from tb_salary sa
       inner join tb_userinfo ui on sa.loginID = ui.loginID
 where ui.loginID = '2019001'