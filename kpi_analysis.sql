-- ROI per campaign
SELECT
    campaign_id,
    campaign_type,
    revenue,
    cost,
    ROUND((revenue - cost) * 1.0 / cost, 2) AS roi
FROM marketing_campaigns
ORDER BY roi DESC;

-- CTR by campaign type
SELECT
    campaign_type,
    ROUND(1.0 * SUM(clicks) / SUM(impressions), 4) AS ctr
FROM marketing_campaigns
GROUP BY campaign_type;

-- Conversion rate by campaign type
SELECT
    campaign_type,
    ROUND(1.0 * SUM(conversions) / SUM(clicks), 4) AS conversion_rate
FROM marketing_campaigns
GROUP BY campaign_type;
