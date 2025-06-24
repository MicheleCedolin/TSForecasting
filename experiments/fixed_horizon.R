BASE_DIR <- "TSForecasting"
source(file.path(BASE_DIR, "experiments", "fixed_horizon_functions.R", fsep = "/"))

# Download the .tsf files from https://zenodo.org/communities/forecasting and put them into "tsf_data" folder, before trying the following examples

# Competition datasets - the same horizons expected in the competitions are used
# For global models, lag is chosen as (1.25 * seasonality)
# For multi-seasonal datasets, the seasonality corresponding with the weekly frequency is chosen for lag calculation
# If it was not possible due to computational complexity or short series length, then we consider the seasonality corresponding with daily frequency for lag calculation

#M1
do_fixed_horizon_local_forecasting("m1_yearly", "tbats", "m1_yearly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("m1_yearly", 2, "m1_yearly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

do_fixed_horizon_local_forecasting("m1_quarterly", "tbats", "m1_quarterly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("m1_quarterly", 5, "m1_quarterly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

do_fixed_horizon_local_forecasting("m1_monthly", "tbats", "m1_monthly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("m1_monthly", 15, "m1_monthly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

#M3
do_fixed_horizon_local_forecasting("m3_yearly", "tbats", "m3_yearly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("m3_yearly", 2, "m3_yearly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

do_fixed_horizon_local_forecasting("m3_quarterly", "tbats", "m3_quarterly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("m3_quarterly", 5, "m3_quarterly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

do_fixed_horizon_local_forecasting("m3_monthly", "tbats", "m3_monthly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("m3_monthly", 15, "m3_monthly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

do_fixed_horizon_local_forecasting("m3_other", "tbats", "m3_other_dataset.tsf") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("m3_other", 2, "m3_other_dataset.tsf", "pooled_regression")

#M4
do_fixed_horizon_local_forecasting("m4_weekly", "tbats", "m4_weekly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, dhr_arima, ets, tbats
do_fixed_horizon_global_forecasting("m4_weekly", 65, "m4_weekly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

do_fixed_horizon_local_forecasting("m4_daily", "tbats", "m4_daily_dataset.tsf", "series_name", "start_timestamp") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("m4_daily", 9, "m4_daily_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

do_fixed_horizon_local_forecasting("m4_hourly", "tbats", "m4_hourly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, dhr_arima, ets, tbats
do_fixed_horizon_global_forecasting("m4_hourly", 210, "m4_hourly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

#Tourism
do_fixed_horizon_local_forecasting("tourism_yearly", "tbats", "tourism_yearly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("tourism_yearly", 2, "tourism_yearly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

do_fixed_horizon_local_forecasting("tourism_quarterly", "tbats", "tourism_quarterly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("tourism_quarterly", 5, "tourism_quarterly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

do_fixed_horizon_local_forecasting("tourism_monthly", "tbats", "tourism_monthly_dataset.tsf", "series_name", "start_timestamp") #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("tourism_monthly", 15, "tourism_monthly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp")

#Vehicle Trips
do_fixed_horizon_local_forecasting("vehicle_trips", "tbats", "vehicle_trips_dataset_without_missing_values.tsf", "series_name", "start_timestamp", 30, TRUE) #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("vehicle_trips", 9, "vehicle_trips_dataset_without_missing_values.tsf", "pooled_regression", "series_name", "start_timestamp", 30)

#KDD CUP 2018
do_fixed_horizon_local_forecasting("kdd_cup", "tbats", "kdd_cup_2018_dataset_without_missing_values.tsf", "series_name", "start_timestamp", 168) #ses, theta, dhr_arima, ets, tbats
do_fixed_horizon_global_forecasting("kdd_cup", 210, "kdd_cup_2018_dataset_without_missing_values.tsf", "pooled_regression", "series_name", "start_timestamp", 168)

#NN5
do_fixed_horizon_local_forecasting("nn5_daily", "tbats", "nn5_daily_dataset_without_missing_values.tsf", "series_name", "start_timestamp")
do_fixed_horizon_global_forecasting("nn5_daily", 9, "nn5_daily_dataset_without_missing_values.tsf", "pooled_regression", "series_name", "start_timestamp")

do_fixed_horizon_local_forecasting("nn5_weekly", "tbats", "nn5_weekly_dataset.tsf", "series_name", "start_timestamp", 8) #ses, theta, dhr_arima, ets, tbats
do_fixed_horizon_global_forecasting("nn5_weekly", 65, "nn5_weekly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp", 8)

#Car Parts
do_fixed_horizon_local_forecasting("car_parts", "tbats", "car_parts_dataset_without_missing_values.tsf", "series_name", "start_timestamp", 12, TRUE) #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("car_parts", 15, "car_parts_dataset_without_missing_values.tsf", "pooled_regression", "series_name", "start_timestamp", 12)

#Fred MD
do_fixed_horizon_local_forecasting("fred_md", "tbats", "fred_md_dataset.tsf", "series_name", "start_timestamp", 12) #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("fred_md", 15, "fred_md_dataset.tsf", "pooled_regression", "series_name", "start_timestamp", 12)

#Traffic
do_fixed_horizon_local_forecasting("traffic_weekly", "tbats", "traffic_weekly_dataset.tsf", "series_name", "start_timestamp", 8) #ses, theta, dhr_arima, ets, tbats
do_fixed_horizon_global_forecasting("traffic_weekly", 65, "traffic_weekly_dataset.tsf", "pooled_regression", "series_name", "start_timestamp", 8)

#Hospital
do_fixed_horizon_local_forecasting("hospital", "tbats", "hospital_dataset.tsf", "series_name", "start_timestamp", 12)
do_fixed_horizon_global_forecasting("hospital", 15, "hospital_dataset.tsf", "pooled_regression", "series_name", "start_timestamp", 12)

#COVID19
do_fixed_horizon_local_forecasting("covid_deaths", "tbats", "covid_deaths_dataset.tsf", "series_name", "start_timestamp", 30) #ses, theta, arima, ets, tbats
do_fixed_horizon_global_forecasting("covid_deaths", 9, "covid_deaths_dataset.tsf", "pooled_regression", "series_name", "start_timestamp", 30)
