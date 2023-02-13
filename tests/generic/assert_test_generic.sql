{% test assert_test_generic(model, column_name, count) %} 

 select
    {{ column_name }}
 from {{ model }}
 group by 1
 having count(*) > {{ count }}

{% endtest %}