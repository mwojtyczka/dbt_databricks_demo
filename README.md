# dbt + Databricks Demo

### Running this project

### Installation

Install using pip:
```nofmt
pip install dbt-databricks
```

Upgrade to the latest version
```nofmt
pip install --upgrade dbt-databricks
```

### Profile Setup

```nofmt
your_profile_name:
  target: dev
  outputs:
    dev:
      type: databricks
      schema: [database/schema name]
      host: [your.databrickshost.com]
      http_path: [/sql/your/http/path]
      token: [dapiXXXXXXXXXXXXXXXXXXXXXXX]


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
