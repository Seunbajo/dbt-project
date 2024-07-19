with 

staged as (

select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,

    --amount is tsored in cents, convert it to dollars
    amount / 100 as amount,
    created as created_at

from {{source ('stripe', 'payment')}}

)

select * from staged