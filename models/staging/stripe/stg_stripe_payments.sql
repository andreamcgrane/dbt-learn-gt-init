select
        id as payment_id,
        orderid,
        paymentmethod,
        status,
        amount / 100 as amount,
        created as created_at

    from raw.stripe.payment