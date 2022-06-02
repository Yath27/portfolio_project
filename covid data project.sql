Select *
from portfolio_project..covid_data
order by 2,3

-- finding the death rate on each day

select continent, location, date, population, total_cases, total_deaths, (total_deaths/total_cases)*100 as death_rate
from portfolio_project..covid_data
order by 1,2


-- percentage of population infected

select  continent, location, date, population, total_cases, (total_cases/population)*100 as population_infected
from portfolio_project..covid_data
order by 1,2



--countries with highest death count

select location, max(cast(total_deaths AS int)) as total_death_count
from portfolio_project..covid_data
group by location
order by total_death_count desc



-- highest cases of different countries on a single day

select location, max(new_cases) as most_cases
from portfolio_project..covid_data
group by location
order by most_cases desc


-- global death percentage

select sum(new_cases) as total_cases_globally, sum(cast(new_deaths as int)) as total_deaths_globally, 
(sum(cast(new_deaths as int))/sum(new_cases))*100 as global_death_percentage
from portfolio_project..covid_data




