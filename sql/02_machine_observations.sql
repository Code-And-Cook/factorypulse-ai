-- Source: data/raw/ai4i2020.csv
-- Import settings: CSV, header enabled, comma delimiter, all 14 columns.
CREATE TABLE IF NOT EXISTS public.machine_observations (
    observation_id      integer PRIMARY KEY,
    product_id          text NOT NULL,
    product_type        text NOT NULL CHECK (product_type IN ('L', 'M', 'H')),
    air_temp_k          numeric NOT NULL,
    process_temp_k      numeric NOT NULL,
    rotational_speed_rpm integer NOT NULL,
    torque_nm           numeric NOT NULL,
    tool_wear_min       integer NOT NULL,
    machine_failure     smallint NOT NULL CHECK (machine_failure IN (0, 1)),
    twf                 smallint NOT NULL,
    hdf                 smallint NOT NULL,
    pwf                 smallint NOT NULL,
    osf                 smallint NOT NULL,
    rnf                 smallint NOT NULL
);