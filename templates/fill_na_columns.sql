SELECT id {% for c in columns %}
	{% if c['fill_na'] == True %}
	, CASE WHEN {{ c['col_name'] }} IS NULL
		THEN {{ c['na_value'] }}
    	ELSE {{ c['col_name'] }} END
    	AS {{ c['col_name'] }}
	{% else %}
		, {{ c['col_name'] }}
	{% endif %}
	{% endfor %}
FROM table