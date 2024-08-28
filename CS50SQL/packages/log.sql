
-- *** The Lost Letter ***

SELECT * FROM scans WHERE package_id = 384;

SELECT type FROM addresses WHERE id = (
    SELECT from_address_id FROM packages WHERE from_address_id = (
        SELECT id FROM addresses
        WHERE address LIKE "900 Somerville Avenue"
    )
);


SELECT address FROM  addresses WHERE id = (
    SELECT address_id FROM scans WHERE package_id = (
    SELECT id FROM packages WHERE from_address_id =(
        SELECT id FROM addresses WHERE address like "900 Somerville Avenue"
    )
) AND
action LIKE "Drop"

);

-- *** The Devious Delivery ***

SELECT type FROM addresses WHERE id =(
    SELECT address_id FROM scans WHERE package_id = (
        SELECT id FROM packages WHERE contents LIKE (
            SELECT contents FROM packages WHERE from_address_id IS NULL
        )
            )
AND
action like "Drop"
);


SELECT contents FROM packages WHERE from_address_id IS NULL;


-- *** The Forgotten Gift ***


SELECT contents FROM packages WHERE from_address_id = (
    SELECT id FROM addresses
    WHERE address like "109 Tileston Street"
);


SELECT name FROM drivers WHERE id = (
    SELECT driver_id FROM scans  WHERE package_id = (
        SELECT id FROM packages WHERE from_address_id = (
            SELECT id FROM addresses
            WHERE address like "109 Tileston Street"
        )

    )
    ORDER BY timestamp DESC LIMIT 1
);
