SELECT
    PassengerId     AS passenger_id,
    CAST(Survived AS INT)   AS survived,
    CAST(Pclass AS INT)     AS class,
    Name            AS name,
    Sex             AS sex,
    CAST(Age AS FLOAT)      AS age,
    CAST(Fare AS FLOAT)     AS fare,
    Embarked        AS embarked
FROM {{ ref('titanic') }}
