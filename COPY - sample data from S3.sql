-- Load sample data from Amazon S3 bucket
COPY dev.public.accounts FROM 's3://<<your_s3_bucket>>/accounts.csv' IAM_ROLE DEFAULT FORMAT AS CSV DELIMITER ',' QUOTE '"' IGNOREHEADER 1 REGION AS '<<your_region>>';
COPY dev.public.customer FROM 's3://<<your_s3_bucket>>/customer.csv' IAM_ROLE DEFAULT FORMAT AS CSV DELIMITER ',' QUOTE '"' IGNOREHEADER 1 REGION AS '<<your_region>>';
COPY dev.public.investments FROM 's3://<<your_s3_bucket>>/investments.csv' IAM_ROLE DEFAULT FORMAT AS CSV DELIMITER ',' QUOTE '"' IGNOREHEADER 1 REGION AS '<<your_region>>';
COPY dev.public.loans FROM 's3://<<your_s3_bucket>>/loans.csv' IAM_ROLE DEFAULT FORMAT AS CSV DELIMITER ',' QUOTE '"' IGNOREHEADER 1 REGION AS '<<your_region>>';
COPY dev.public.orders FROM 's3://<<your_s3_bucket>>/orders.csv' IAM_ROLE DEFAULT FORMAT AS CSV DELIMITER ',' QUOTE '"' IGNOREHEADER 1 REGION AS '<<your_region>>';
COPY dev.public.transactions FROM 's3://<<your_s3_bucket>>/transactions.csv' IAM_ROLE DEFAULT FORMAT AS CSV DELIMITER ',' QUOTE '"' IGNOREHEADER 1 REGION AS '<<your_region>>';
