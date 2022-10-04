select Q1_2016, Q2_2016 FROM (
  select count(a.trip_id)
  from `bigquery-public-data.san_francisco.bikeshare_trips` a
  full outer join `bigquery-public-data.san_francisco.bikeshare_stations` b
  on a.start_station_id = b.station_id
  where a.start_station_name like '%Redwood City%' and a.subscriber_type = 'Subscriber' and 
  a.start_date between '2016-01-01' and '2016-03-31'
) as Q1_2016, (
  select count(a.trip_id)
  from `bigquery-public-data.san_francisco.bikeshare_trips` a
  full outer join `bigquery-public-data.san_francisco.bikeshare_stations` b
  on a.start_station_id = b.station_id
  where a.start_station_name like '%Redwood City%' and a.subscriber_type = 'Subscriber' and 
  a.start_date between '2016-04-01' and '2016-06-30'
) as Q2_2016