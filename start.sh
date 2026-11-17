#!/usr/bin/env bash
cd "$(dirname "$0")"
export AIRFLOW_HOME="$(pwd)/airflow_home"
export AIRFLOW__CORE__DAGS_FOLDER="$(pwd)/dags"
export AIRFLOW__CORE__LOAD_EXAMPLES=False
exec uv run airflow standalone
