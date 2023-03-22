-- Count number of IPT installations
select 'Sep/10' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2010-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2010-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/11' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2011-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2011-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/11' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2011-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2011-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/12' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2012-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2012-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/12' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2012-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2012-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/13' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2013-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2013-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/13' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2013-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2013-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/14' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2014-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2014-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/14' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2014-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2014-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/15' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2015-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2015-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/15' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2015-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2015-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/16' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2016-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2016-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/16' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2016-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2016-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/17' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2017-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2017-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/17' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2017-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2017-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/18' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2018-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2018-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/18' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2018-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2018-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/19' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2019-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2019-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/19' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2019-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2019-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/20' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2020-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2020-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/20' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2020-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2020-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/21' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2021-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2021-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/21' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2021-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2021-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Mar/22' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2022-03-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2022-03-31 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/22' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2022-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2022-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Jan/23' as "date", count(*)
from installation i
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2023-01-31 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2023-01-31 23:59:59.999999 +00:00')
;




-- Count number of countries where IPT is installed
select 'Sep/10' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2010-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2010-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/11' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2011-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2011-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/12' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2012-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2012-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/13' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2013-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2013-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/14' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2014-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2014-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/15' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2015-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2015-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/16' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2016-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2016-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/17' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2017-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2017-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/18' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2018-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2018-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/19' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2019-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2019-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/20' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2020-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2020-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/21' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2021-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2021-09-30 23:59:59.999999 +00:00')
UNION ALL
select 'Sep/22' as "date", count(distinct o.country) as countries
from installation i
         INNER JOIN organization o ON o.key = i.organization_key
where i.type = 'IPT_INSTALLATION'
  AND i.created <= '2022-09-30 23:59:59.999999 +00:00'
  AND (i.deleted IS NULL OR i.deleted > '2022-09-30 23:59:59.999999 +00:00');


-- Count number of datasets
select '10/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2010-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2010-09-30 23:59:59.999999 +00:00')

UNION ALL

select '11/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2011-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2011-03-31 23:59:59.999999 +00:00')

UNION ALL

select '11/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2011-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2011-09-30 23:59:59.999999 +00:00')

UNION ALL

select '12/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2012-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2012-03-31 23:59:59.999999 +00:00')

UNION ALL

select '12/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2012-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2012-09-30 23:59:59.999999 +00:00')

UNION ALL

select '13/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2013-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2013-03-31 23:59:59.999999 +00:00')

UNION ALL

select '13/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2013-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2013-09-30 23:59:59.999999 +00:00')

UNION ALL

select '14/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2014-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2014-03-31 23:59:59.999999 +00:00')

UNION ALL

select '14/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2014-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2014-09-30 23:59:59.999999 +00:00')

UNION ALL

select '15/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2015-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2015-03-31 23:59:59.999999 +00:00')

UNION ALL

select '15/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2015-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2015-09-30 23:59:59.999999 +00:00')
UNION ALL

select '16/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2016-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2016-03-31 23:59:59.999999 +00:00')

UNION ALL

select '16/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2016-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2016-09-30 23:59:59.999999 +00:00')

UNION ALL

select '17/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2017-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2017-03-31 23:59:59.999999 +00:00')

UNION ALL

select '17/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2017-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2017-09-30 23:59:59.999999 +00:00')

UNION ALL

select '18/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2018-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2018-03-31 23:59:59.999999 +00:00')

UNION ALL

select '18/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2018-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2018-09-30 23:59:59.999999 +00:00')

UNION ALL

select '19/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2019-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2019-03-31 23:59:59.999999 +00:00')

UNION ALL

select '19/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2019-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2019-09-30 23:59:59.999999 +00:00')

UNION ALL

select '20/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2020-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2020-03-31 23:59:59.999999 +00:00')

UNION ALL

select '20/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2020-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2020-09-30 23:59:59.999999 +00:00')

UNION ALL

select '21/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2021-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2021-03-31 23:59:59.999999 +00:00')

UNION ALL

select '21/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2021-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2021-09-30 23:59:59.999999 +00:00')

UNION ALL

select '22/Mar' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2022-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2022-03-31 23:59:59.999999 +00:00')

UNION ALL

select '22/Sep' as "date", count(*)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2022-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2022-09-30 23:59:59.999999 +00:00')
;





-- Count number of publishers
select '10/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2010-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2010-09-30 23:59:59.999999 +00:00')

UNION ALL

select '11/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2011-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2011-03-31 23:59:59.999999 +00:00')

UNION ALL

select '11/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2011-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2011-09-30 23:59:59.999999 +00:00')

UNION ALL

select '12/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2012-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2012-03-31 23:59:59.999999 +00:00')

UNION ALL

select '12/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2012-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2012-09-30 23:59:59.999999 +00:00')

UNION ALL

select '13/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2013-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2013-03-31 23:59:59.999999 +00:00')

UNION ALL

select '13/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2013-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2013-09-30 23:59:59.999999 +00:00')

UNION ALL

select '14/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2014-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2014-03-31 23:59:59.999999 +00:00')

UNION ALL

select '14/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2014-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2014-09-30 23:59:59.999999 +00:00')

UNION ALL

select '15/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2015-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2015-03-31 23:59:59.999999 +00:00')

UNION ALL

select '15/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2015-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2015-09-30 23:59:59.999999 +00:00')
UNION ALL

select '16/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2016-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2016-03-31 23:59:59.999999 +00:00')

UNION ALL

select '16/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2016-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2016-09-30 23:59:59.999999 +00:00')

UNION ALL

select '17/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2017-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2017-03-31 23:59:59.999999 +00:00')

UNION ALL

select '17/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2017-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2017-09-30 23:59:59.999999 +00:00')

UNION ALL

select '18/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2018-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2018-03-31 23:59:59.999999 +00:00')

UNION ALL

select '18/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2018-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2018-09-30 23:59:59.999999 +00:00')

UNION ALL

select '19/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2019-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2019-03-31 23:59:59.999999 +00:00')

UNION ALL

select '19/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2019-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2019-09-30 23:59:59.999999 +00:00')

UNION ALL

select '20/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2020-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2020-03-31 23:59:59.999999 +00:00')

UNION ALL

select '20/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2020-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2020-09-30 23:59:59.999999 +00:00')

UNION ALL

select '21/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2021-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2021-03-31 23:59:59.999999 +00:00')

UNION ALL

select '21/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2021-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2021-09-30 23:59:59.999999 +00:00')

UNION ALL

select '22/Mar' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2022-03-31 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2022-03-31 23:59:59.999999 +00:00')

UNION ALL

select '22/Sep' as "date", count(distinct d.publishing_organization_key)
from dataset d
         inner join installation i on d.installation_key = i.key and i.type = 'IPT_INSTALLATION'
where 1=1
  and d.type = 'SAMPLING_EVENT'
  AND d.created <= '2022-09-30 23:59:59.999999 +00:00'
  AND (d.deleted IS NULL OR d.deleted > '2022-09-30 23:59:59.999999 +00:00')
;
