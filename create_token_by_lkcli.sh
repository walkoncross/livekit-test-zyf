 lk create-token \
    --api-key devkey --api-secret secret \
    --join --room my-room --identity user1 \
    --valid-for 24h >> user1.token

 lk create-token \
    --api-key devkey --api-secret secret \
    --join --room my-room --identity user2 \
    --valid-for 24h >> user2.token

 lk create-token \
    --api-key devkey --api-secret secret \
    --join --room my-room --identity user3 \
    --valid-for 24h >> user3.token