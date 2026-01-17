create table calender(
Date date,
day varchar(50),
weekday varchar(20),
is_weekend varchar(20),
month varchar(20)
)

--table of daily_activity_logs
create table activity(
date date,
Day varchar(50),
activity varchar(100),
category varchar(50),
duration_min int,
value_level varchar(50),
stress_level varchar(50),
energy_after varchar(50)
)

--table of planned vs actual
create table planned_actual(
date date,
planned_activity varchar(100),
status varchar(50),
reason_not_done varchar(100)
)

--create table spending logs
create table spending_logs(
date date,
spend_category varchar(50),
amount int,
linked_reason varchar(100)
)

--EDA
select count(*) from activity
select count(*) from calender
select count(*) from planned_actual
select count(*) from spending_logs

select * from activity
--Identing activities that consumed most of time but delivered low values.
select activity,category,sum(duration_min),value_level
from activity
where value_level = 'Low'
group by activity,category,value_level
order by sum(duration_min) desc

--What activities drained energy of most despite being its “important”?
select activity,category,sum(duration_min)as most_time_take,
value_level,energy_after from activity
where value_level = 'High' and 
energy_after = 'Low'
group by activity,category,value_level,energy_after
order by sum(duration_min) desc

--On which weekdays is productivity naturally higher?
select extract(DOW from date) as week_num,sum(duration_min) as total_time
from activity
where value_level='High'
group by extract(DOW from date),category
order by total_time desc

--What is the real cost of stress (time + money)?
select * from activity
select * from spending_logs


--What is the real cost of stress (time + money)?
--method-1
select s.linked_reason,sum(a.duration_min) as time ,sum(s.amount) as total_spend 
from activity a
join spending_logs s on a.date = s.date
where stress_level ='High'
group by s.linked_reason
order by total_spend desc
--method 2
select distinct 
sum(a.duration_min) over (partition by linked_reason) as stress_spend,
sum(s.amount) over (partition by linked_reason) as amount_spend
from activity a 
join spending_logs s on a.date = s.date
where stress_level ='High'
order by amount_spend desc

--When do I most often break my own plans?
select distinct planned_activity,
count(status) over(partition by planned_activity) 
from planned_actual
where status = 'Missed'
group by planned_activity
order by status desc

--What are the activity I missed and how many times its missed
select distinct planned_activity,
count(status) over(partition by planned_activity) 
from planned_actual
where status = 'Missed'

//Financial planning Activity is missed most of the time need to improve it as it is important 
for palnning and saving + career growth

--When do I most often break my own plans?
select distinct planned_activity,reason_not_done,
count(*) over (partition by planned_activity, reason_not_done) as missed_count
from planned_actual
where status = 'Missed'
order by missed_count desc;

//My reasons are more likely not done due to Unexpected Guests and Health Issues but the 
major cause i see here is I get distracted more often when it come to Improvement,Reading, upskilling
and studies it should be not done in up coming year


--Which reasons are most responsible for missed goals?
select reason_not_done,count(*) as no_of_missed,
rank() over(order by count(*) desc) as rnk
from planned_actual
where status ='Missed'
group by reason_not_done
order by no_of_missed desc

--Which habits quietly improve my day?
select activity,count(*) as frequency,
avg(duration_min) as avg_duration
from activity
where value_level = 'Low'
and energy_after = 'High'
group by activity
having count(*) >= 20
order by frequency desc

\\Thats amazing cleaning,cooking,Gym,officework,morning comute etc imporve your days keep going

-- What percentage of my day actually creates long-term value?
select date,round(100.0 * 
sum(case when value_level = 'High' then duration_min else 0 end)
/ sum(duration_min),2
) as value_percentage
from activity
group by date
order by value_percentage desc;

