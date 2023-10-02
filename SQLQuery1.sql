with hotels as (
select*
 FROM [project].[dbo].['2018$']
 union
 select*
 FROM [project].[dbo].['2019$']
union
select *
 FROM [project].[dbo].['2020$'])

 select * from hotels
 left join [project].[dbo].[market_segment$]
  on hotels.market_segment = [project].[dbo].[market_segment$].market_segment
 left join [project].[dbo].[meal_cost$]
 on [project].[dbo].[meal_cost$].meal = hotels.meal