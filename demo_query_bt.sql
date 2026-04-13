SELECT
  t.rowkey,
  loan_column.name AS column_name,
  loan_column.cell[OFFSET(0)].value AS latest_value
FROM `outwaterc-demo1.demo_loans.BigtableTable` AS t
LEFT JOIN UNNEST(t.loan_detail.column) AS loan_column
LIMIT 100

