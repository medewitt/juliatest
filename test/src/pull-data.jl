using DataFrames
using CSV
using Gadfly
using Chain
using DataFramesMeta
using RollingFunctions
url = "https://raw.githubusercontent.com/conedatascience/covid-data/master/data/timeseries/nc-cases-by-county.csv"

dat = CSV.read(download(url), DataFrame)
@chain dat begin
    @where in(["Guilford", "Forsyth"]).(:"county")
    @byrow
plot(
x = "date",
y = "cases_daily",
colour = "county",
Geom.point
)

gso = @chain dat begin
    @where in(["Guilford", "Forsyth"]).(:"county")
    @byrow
end

@chain dat begin
    @with(rolling_cases .== rolling(sum, :cases_daily,7))
    all
    @assert
end 

@transform(dat, rolling_cases = rolling(sum, :cases_daily, 7))


