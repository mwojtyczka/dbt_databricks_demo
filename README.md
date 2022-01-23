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
$cd  dbt_databricks_demo
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


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
- https://github.com/databricks/dbt-databricks
