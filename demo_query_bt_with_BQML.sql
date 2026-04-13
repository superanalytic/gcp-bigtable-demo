SELECT
  rowkey as loan_number,
  (
    SELECT cell[SAFE_OFFSET(0)].value
    FROM UNNEST(loan_detail.column)
    WHERE name = 'customer_name'
  ) AS customer_name,
  (
    SELECT cell[SAFE_OFFSET(0)].value
    FROM UNNEST(loan_detail.column)
    WHERE name = 'customer_city'
  ) AS customer_city,
  (
    SELECT cell[SAFE_OFFSET(0)].value
    FROM UNNEST(loan_detail.column)
    WHERE name = 'customer_state'
  ) AS customer_state,
   (
    SELECT cell[SAFE_OFFSET(0)].value
    FROM UNNEST(loan_detail.column)
    WHERE name = 'customer_zip'
  ) AS customer_zip,
  (
    SELECT cell[SAFE_OFFSET(0)].value
    FROM UNNEST(loan_detail.column)
    WHERE name = 'loan_amount'
  ) AS loan_amount,
  (
    SELECT cell[SAFE_OFFSET(0)].value
    FROM UNNEST(loan_detail.column)
    WHERE name = 'loan_type'
  ) AS loan_type,
  (
    SELECT cell[SAFE_OFFSET(0)].value
    FROM UNNEST(loan_detail.column)
    WHERE name = 'loan_status'
  ) AS loan_status,
  (
    SELECT cell[SAFE_OFFSET(0)].value
    FROM UNNEST(loan_detail.column)
    WHERE name = 'loan_note_text'
  ) AS loan_note_text,
  (
    AI.CLASSIFY( loan_detail.`column`[SAFE_OFFSET(6)].cell[SAFE_OFFSET(0)].value,
    categories=>["positive", "negative"])
    ) AS sentiment
FROM `outwaterc-demo1.demo_loans.BigtableTable`
LIMIT 100
