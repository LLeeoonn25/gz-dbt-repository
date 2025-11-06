{% macro margin_percent (columns_name1, columns_name2, macro_var=2) %}
    ROUND(({{columns_name1}} - {{columns_name2}})/{{columns_name1}},{{macro_var}})
{% endmacro %}