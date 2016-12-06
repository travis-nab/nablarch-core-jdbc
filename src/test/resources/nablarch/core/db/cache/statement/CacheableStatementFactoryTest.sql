TEST_NO_PARAM =
SELECT
  'HELLO' MSG
FROM CACHE_STATEMENT_TEST_TABLE


TEST_WITH_PARAM =
SELECT
  *
FROM
  CACHE_STATEMENT_TEST_TABLE
WHERE
  COL_NAME_1 = :colName1


TEST_NO_PARAM_NO_CACHE =
SELECT
  'HELLO' MSG
FROM CACHE_STATEMENT_TEST_TABLE

TEST_WITH_PARAM_NO_CACHE =
SELECT
  *
FROM
  CACHE_STATEMENT_TEST_TABLE
WHERE
  COL_NAME_1 = :colName1

TEST_AUTO_PROP =
SELECT
  *
FROM
  CACHE_STATEMENT_TEST_TABLE
WHERE
  COL_NAME_1 = :userId AND
  COL_NAME_2 = :requestId


TEST_VARIABLE =
SELECT
 *
FROM
 CACHE_STATEMENT_TEST_TABLE
WHERE
  $if(colName1){COL_NAME_1 = :colName1}
  AND $if(colName3){COL_NAME_3 = :colName3}

TEST_VARIABLE_NO_CACHE =
SELECT
 *
FROM
 CACHE_STATEMENT_TEST_TABLE
WHERE
  $if(colName1){COL_NAME_1 = :colName1}
  AND $if(colName3){COL_NAME_3 = :colName3}

TEST_LIKE=
SELECT
  *
FROM
  CACHE_STATEMENT_TEST_TABLE
WHERE
  COL_NAME_1 LIKE :%colName1

