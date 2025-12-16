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
    EXTRACT(YEAR FROM date) AS year,
    COUNT(*) AS num_gaps
FROM gaps
WHERE gap_pct >= 0.03
  AND date >= DATE '2019-01-01'
  AND date < DATE '2025-01-01'
GROUP BY EXTRACT(YEAR FROM date)
ORDER BY year;
