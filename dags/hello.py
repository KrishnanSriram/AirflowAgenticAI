from airflow.sdk import dag, task

@dag(schedule="@daily")
def my_first_pipeline():

    @task
    def get_data():
        return [1, 2, 3]

    @task
    def process(numbers):
        return sum(numbers)

    process(get_data())

my_first_pipeline()