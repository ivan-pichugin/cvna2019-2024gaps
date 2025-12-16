WITH gaps AS (
    SELECT
        date::date AS date,
        ticker,
        open,
        close,
        prev_close,
        (open - prev_close) / prev_close AS gap_pct
    FROM (
        SELECT
            *,
            LAG(close) OVER (
                PARTITION BY ticker
                ORDER BY date::date
            ) AS prev_close
        FROM cvna c
    ) t
    WHERE prev_close IS NOT NULL
)
SELECT
    *,
    CASE
        WHEN gap_pct >= 0.03 AND gap_pct < 0.05 THEN '3–5%'
        WHEN gap_pct >= 0.05 AND gap_pct < 0.07 THEN '5–7%'
        WHEN gap_pct >= 0.07 AND gap_pct < 0.10 THEN '7–10%'
        WHEN gap_pct >= 0.10 THEN '>10%'
        ELSE 'below_3%'
    END AS gap_bucket
FROM gaps
WHERE date >= DATE '2019-01-01' and date <  DATE '2025-01-01';
