{% macro get_user_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "email", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_string(), "alias": "user_id"},
    {"name": "locale", "datatype": dbt_utils.type_string()},
    {"name": "name", "datatype": dbt_utils.type_string(), "alias": "display_name"},
    {"name": "time_zone", "datatype": dbt_utils.type_string()},
    {"name": "username", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
