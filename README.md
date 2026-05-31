# Titanic dbt Pipeline

End-to-end dbt project built on the Titanic dataset.

## Stack
- dbt Core 1.10
- DuckDB (local warehouse)

## Models
- `stg_titanic` — cleans raw data, casts types
- `mart_survival_by_class` — survival rate by passenger class

## Tests
- 8 automated data quality tests (not_null, unique, accepted_values)

## How to run
dbt seed
dbt run
dbt test
dbt docs generate && dbt docs serve
