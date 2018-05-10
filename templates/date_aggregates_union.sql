{% for d in dates %}
SELECT COUNT(id) AS number_active_accounts,
       department AS department,
       {{ d[1] }} AS timeperiod
FROM table
WHERE ((start_date < {{ d[1] }}) AND 
	((isnull(end_date) OR (end_date > {{ d[0] }}))
       AND (column = value ))
GROUP BY department
UNION
{% endfor %}