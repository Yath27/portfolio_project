--[Q1] Finding the death rate on each day
Select continent, location, date, population, total_cases, total_deaths, (total_deaths/total_cases)*100 as death_rate
from covid_data
order by 1,2


--[Q2] Percentage of population infected
Select  continent, location, date, population, total_cases, (total_cases/population)*100 as population_infected
from covid_data
order by 1,2


--[Q3] Countries with highest death count
Select location, max(cast(total_deaths AS int)) as total_death_count
from covid_data
group by location
order by total_death_count desc


--[Q4] Highest cases of different countries on a single day
Select location, max(new_cases) as most_cases
from covid_data
group by location
order by most_cases desc


--[Q5] Global death percentage
Select sum(new_cases) as total_cases_globally, sum(cast(new_deaths as int)) as total_deaths_globally, 
(sum(cast(new_deaths as int))/sum(new_cases))*100 as global_death_percentage
from covid_data


--[Q6] Total deaths across continents
Select continent, MAX(cast(Total_deaths as int)) as TotalDeathCount
From Covid_data
Where continent is not null 
Group by continent
order by TotalDeathCount desc




