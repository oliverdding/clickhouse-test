CREATE
    DATABASE IF NOT EXISTS test;

CREATE TABLE IF NOT EXISTS test.column_20
(
    `id`
        String,
    `time`
        DateTime,
    `f1`
        String,
    `f2`
        String,
    `f3`
        String,
    `f4`
        String,
    `f5`
        String,
    `f6`
        String,
    `f7`
        String,
    `f8`
        String,
    `f9`
        String,
    `f11`
        Int64,
    `f12`
        Int64,
    `f13`
        Int64,
    `f14`
        Int64,
    `f15`
        Int64,
    `f16`
        Int64,
    `f17`
        Int64,
    `f18`
        Int64,
    `f19`
        Int64,

    INDEX `id_index` `id` TYPE bloom_filter GRANULARITY 4
) ENGINE = MergeTree()
      PARTITION BY toYYYYMMDD
          (
              `time`
          )
      ORDER BY
          (
           `time`,
           xxHash32
               (
                   `id`
               ))
      SAMPLE BY xxHash32
          (
              `id`
          )
      SETTINGS index_granularity = 8192;

CREATE TABLE IF NOT EXISTS test.column_100
(
    `id`
        String,
    `time`
        DateTime,
    `f1`
        String,
    `f2`
        String,
    `f3`
        String,
    `f4`
        String,
    `f5`
        String,
    `f6`
        String,
    `f7`
        String,
    `f8`
        String,
    `f9`
        String,
    `f11`
        Int64,
    `f12`
        Int64,
    `f13`
        Int64,
    `f14`
        Int64,
    `f15`
        Int64,
    `f16`
        Int64,
    `f17`
        Int64,
    `f18`
        Int64,
    `f19`
        Int64,

    `d1`
        String,
    `d2`
        String,
    `d3`
        String,
    `d4`
        String,
    `d5`
        String,
    `d6`
        String,
    `d7`
        String,
    `d8`
        String,
    `d9`
        String,
    `d10`
        String,
    `d11`
        String,
    `d12`
        String,
    `d13`
        String,
    `d14`
        String,
    `d15`
        String,
    `d16`
        String,
    `d17`
        String,
    `d18`
        String,
    `d19`
        String,
    `d20`
        String,
    `d21`
        String,
    `d22`
        String,
    `d23`
        String,
    `d24`
        String,
    `d25`
        String,
    `d26`
        String,
    `d27`
        String,
    `d28`
        String,
    `d29`
        String,
    `d30`
        String,
    `d31`
        String,
    `d32`
        String,
    `d33`
        String,
    `d34`
        String,
    `d35`
        String,
    `d36`
        String,
    `d37`
        String,
    `d38`
        String,
    `d39`
        String,
    `d40`
        String,
    `v1`
        Int64,
    `v2`
        Int64,
    `v3`
        Int64,
    `v4`
        Int64,
    `v5`
        Int64,
    `v6`
        Int64,
    `v7`
        Int64,
    `v8`
        Int64,
    `v9`
        Int64,
    `v10`
        Int64,
    `v11`
        Int64,
    `v12`
        Int64,
    `v13`
        Int64,
    `v14`
        Int64,
    `v15`
        Int64,
    `v16`
        Int64,
    `v17`
        Int64,
    `v18`
        Int64,
    `v19`
        Int64,
    `v20`
        Int64,
    `v21`
        Int64,
    `v22`
        Int64,
    `v23`
        Int64,
    `v24`
        Int64,
    `v25`
        Int64,
    `v26`
        Int64,
    `v27`
        Int64,
    `v28`
        Int64,
    `v29`
        Int64,
    `v30`
        Int64,
    `v31`
        Int64,
    `v32`
        Int64,
    `v33`
        Int64,
    `v34`
        Int64,
    `v35`
        Int64,
    `v36`
        Int64,
    `v37`
        Int64,
    `v38`
        Int64,
    `v39`
        Int64,
    `v40`
        Int64,

    INDEX `id_index` `id` TYPE bloom_filter GRANULARITY 4
) ENGINE = MergeTree()
      PARTITION BY toYYYYMMDD
          (
              `time`
          )
      ORDER BY
          (
           `time`,
           xxHash32
               (
                   `id`
               ))
      SAMPLE BY xxHash32
          (
              `id`
          )
      SETTINGS index_granularity = 8192;