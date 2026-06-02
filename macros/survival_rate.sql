{% macro calc_survival_rate(survived_col, total_col) %}
    ROUND(({{ survived_col }} * 100.0) / NULLIF({{ total_col }}, 0), 1)
{% endmacro %}
