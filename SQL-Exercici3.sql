SELECT count(*) FROM FLIGHTs;
SELECT Origin, avg(arrdelay) as prom_arribades , avg(depdelay) as prom_sortides
FROM FLIGHTs
Group by origin;
SELECT Origin, colyear, colmonth, avg(arrdelay)
FROM FLIGHTs
group by origin, colyear, colmonth;
SELECT Origin,  colyear, colmonth, avg(arrdelay)
FROM FLIGHTs
group by origin, colyear;
SELECT city,  colyear, colmonth, avg(arrdelay)
FROM flights
LEFT JOIN usairports
ON FLIGHTs.Origin = usairports.IATA 
group by origin, colyear;
SELECT UniqueCarrier,  colyear, colmonth, sum(cancelled) as canc
FROM flights
group by UniqueCarrier
order by canc desc;
SELECT Tailnum, sum(distance) as totaldistance
FROM flights
where Tailnum <>''
group by Tailnum
order by totaldistance desc
Limit 10;
SELECT UniqueCarrier, avg(arrdelay) as retard_prom
FROM FLIGHTs
where avg(arrdelay) > 10
group by uniquecarrier



