CREATE TABLE products (
    productName STRING,
    price INT
) WITH (
    'connector' = 'kafka',
    'topic' = 'products',
    'properties.bootstrap.servers' = 'api-0000000000000000000:9092',
    'properties.group.id' = 'warpstream-products',
    'scan.startup.mode' = 'earliest-offset',
    'format' = 'json',
    'json.fail-on-missing-field' = 'false',
    'json.ignore-parse-errors' = 'true'
);