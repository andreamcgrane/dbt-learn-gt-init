--when dbt executes a test, when any records return that is when the test fails
--write a test for the opposite of what you want
select
    orderid,
    sum(amount) as total_amount
from {{ ref('stg_stripe_payments') }}
group by 1
having total_amount < 0
