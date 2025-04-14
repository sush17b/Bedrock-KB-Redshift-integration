-- Create tables
CREATE TABLE public.accounts (
    id integer ENCODE az64,
    account_id integer ENCODE az64,
    customer_id integer ENCODE az64,
    account_type character varying(256) ENCODE lzo,
    opening_date date ENCODE az64,
    balance bigint ENCODE az64,
    currency character varying(256) ENCODE lzo
)
DISTSTYLE AUTO;

CREATE TABLE public.customer (
    id integer ENCODE az64,
    customer_id integer ENCODE az64,
    name character varying(256) ENCODE lzo,
    age integer ENCODE az64,
    gender character varying(256) ENCODE lzo,
    address character varying(256) ENCODE lzo,
    phone character varying(256) ENCODE lzo,
    email character varying(256) ENCODE lzo
)
DISTSTYLE AUTO;
CREATE TABLE public.investments (
    id integer ENCODE az64,
    investment_id integer ENCODE az64,
    customer_id integer ENCODE az64,
    investment_type character varying(256) ENCODE lzo,
    investment_name character varying(256) ENCODE lzo,
    purchase_date date ENCODE az64,
    purchase_price bigint ENCODE az64,
    quantity integer ENCODE az64
)
DISTSTYLE AUTO;

CREATE TABLE public.loans (
    id integer ENCODE az64,
    loan_id integer ENCODE az64,
    customer_id integer ENCODE az64,
    loan_type character varying(256) ENCODE lzo,
    loan_amount bigint ENCODE az64,
    interest_rate integer ENCODE az64,
    start_date date ENCODE az64,
    end_date date ENCODE az64
)
DISTSTYLE AUTO;

CREATE TABLE public.orders (
    id integer ENCODE az64,
    order_id integer ENCODE az64,
    customer_id integer ENCODE az64,
    order_type character varying(256) ENCODE lzo,
    order_date date ENCODE az64,
    investment_id integer ENCODE az64,
    quantity integer ENCODE az64,
    price integer ENCODE az64
)
DISTSTYLE AUTO;

CREATE TABLE public.transactions (
    id integer ENCODE az64,
    transaction_id integer ENCODE az64,
    account_id integer ENCODE az64,
    transaction_type character varying(256) ENCODE lzo,
    transaction_date date ENCODE az64,
    amount integer ENCODE az64,
    description character varying(256) ENCODE lzo
)
DISTSTYLE AUTO;
