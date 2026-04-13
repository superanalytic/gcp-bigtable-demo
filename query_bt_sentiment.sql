SELECT 
loan_detail.`column`[SAFE_OFFSET(0)].name, loan_detail.`column`[SAFE_OFFSET(0)].cell[SAFE_OFFSET(0)].value,
loan_detail.`column`[SAFE_OFFSET(1)].name, loan_detail.`column`[SAFE_OFFSET(1)].cell[SAFE_OFFSET(0)].value,
loan_detail.`column`[SAFE_OFFSET(2)].name, loan_detail.`column`[SAFE_OFFSET(2)].cell[SAFE_OFFSET(0)].value,
loan_detail.`column`[SAFE_OFFSET(3)].name, loan_detail.`column`[SAFE_OFFSET(3)].cell[SAFE_OFFSET(0)].value,
loan_detail.`column`[SAFE_OFFSET(4)].name, loan_detail.`column`[SAFE_OFFSET(4)].cell[SAFE_OFFSET(0)].value,
loan_detail.`column`[SAFE_OFFSET(5)].name, loan_detail.`column`[SAFE_OFFSET(5)].cell[SAFE_OFFSET(0)].value,
loan_detail.`column`[SAFE_OFFSET(6)].name, loan_detail.`column`[SAFE_OFFSET(6)].cell[SAFE_OFFSET(0)].value,
AI.CLASSIFY( loan_detail.`column`[SAFE_OFFSET(6)].cell[SAFE_OFFSET(0)].value, categories=>["positive", "negative","pending"]) AS sentiment,
loan_detail.`column`[SAFE_OFFSET(7)].name, loan_detail.`column`[SAFE_OFFSET(7)].cell[SAFE_OFFSET(0)].value,
  FROM `outwaterc-demo1.demo_loans.BigtableTable` 
