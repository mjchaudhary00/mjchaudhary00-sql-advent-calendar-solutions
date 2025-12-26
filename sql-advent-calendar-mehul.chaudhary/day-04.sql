-- SQL Advent Calendar - Day 4
-- Title: Energy-Efficient Holiday Decorations
-- Difficulty: easy
--
-- Question:
-- Kevin's trying to decorate the house without sending the electricity bill through the roof. Write a query to find the top 5 most energy-efficient decorations (i.e. lowest cost per hour to operate).
--
-- Kevin's trying to decorate the house without sending the electricity bill through the roof. Write a query to find the top 5 most energy-efficient decorations (i.e. lowest cost per hour to operate).
--

-- Table Schema:
-- Table: hall_decorations
--   decoration_id: INT
--   decoration_name: VARCHAR
--   energy_cost_per_hour: DECIMAL
--

-- My Solution:

-- We want the 5 most energy-efficient decorations.
-- "Energy-efficient" = lowest energy_cost_per_hour.
-- So we simply sort by energy_cost_per_hour in ascending order
-- and pick the first 5 rows.

SELECT
    decoration_id,          -- Unique identifier for each decoration
    decoration_name,        -- Name of the decoration
    energy_cost_per_hour    -- How much electricity it consumes per hour
FROM hall_decorations
ORDER BY energy_cost_per_hour ASC   -- Lowest cost first
LIMIT 5;                             -- Return only top 5 most efficient
