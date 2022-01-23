# dbt + Databricks Demo

### Running this project

1. Install dbt 
Install using pip:
```nofmt
pip install dbt-databricks
```

Upgrade to the latest version
```nofmt
pip install --upgrade dbt-databricks
```

2. Clone this repository

3. Change into the dbt_databricks_demo directory from the command line:
```nofmt
cd  dbt_databricks_demo
```
4. Setup a profile called wiki_demo

Create a profiles.yml file with the bellow content, and provide your Databricks SQL endpoint and token. By default, dbt expects the profiles.yml file to be located in the ~/.dbt/ directory.

```nofmt
wiki_demo:
  target: dev
  outputs:
    dev:
      type: databricks
      schema: [database/schema name]
      host: [your.databrickshost.com]
      http_path: [/sql/your/http/path]
      token: [dapiXXXXXXXXXXXXXXXXXXXXXXX]
```

5. Test your profile is setup correctly from the command line:
```nofmt
dbt debug
```
6. Load the wikipedia clickstream raw CSVs demo data set. This materializes the CSVs as delta tables in your target schema. Note that a typical dbt project does not require this step since dbt assumes your raw data is already in your warehouse.
```nofmt
dbt seed
```

7. Run the models:

```nofmt
dbt run
```

8. Test the output of the models:

```nofmt
dbt test
```

9. Generate documentation for the project:

```nofmt
dbt docs generate
```

10. View the docs for the project

```nofmt
dbt docs serve
```


View the documentation for the project:

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- https://github.com/databricks/dbt-databricks
