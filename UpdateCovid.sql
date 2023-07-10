Select continent, MAX(Cast(total_deaths as int)) as TotalDeathCount
From UpdatedCD
Where continent IS not NULL
Group by continent
order by TotalDeathCount desc

Select location,population, MAX(total_cases) as HighestInfectionCount, Max((total_cases/population))*100 as PercentPopulationInfected
From UpdatedCD
Group by location , population
order by PercentPopulationInfected desc

 Select location, date, total_cases,new_cases,new_deaths,total_deaths
 From UpdatedCD
 Where location = 'Philippines' and continent is not null
 Order by 1,2 desc

Select date, sum(new_cases) as total_cases ,sum(cast(new_deaths as bigint)) as total_deaths, sum(cast(new_deaths as bigint))/(sum(new_cases))*100 as DeathPercentage
 From UpdatedCD
 Where continent is not null 
 GROUP BY date
 Order by 1,2 

 Select *
 From UpdatedCV