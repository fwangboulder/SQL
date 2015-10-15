/*This is the homework 3 for Fang Wang*/
select name, statecode from states;
select name, statecode, population_1950 as populate_1950, population_2010 from counties where name like 'Prince%' order by statecode;

select states.population_2010 as populate_2010 from states,senators where senators.name='Richard Lugar' and senators.statecode=states.statecode;
select count(*) as total_counties_Maryland from (select counties.name from counties, states where counties.statecode=states.statecode and states.name='Maryland') n;
select states.name as state_admitted_last from states order by states.admitted_to_union desc limit 1;

select distinct name from senators where affiliation='D' and name not in (select distinct chairman as name from committees) order by name;
