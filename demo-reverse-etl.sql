EXPORT DATA
  OPTIONS (
    uri = "https://bigtable.googleapis.com/projects/outwaterc-demo1/instances/bt-demo-1/appProfiles/default/tables/loan-info",
    format = "CLOUD_BIGTABLE",
      overwrite = TRUE,
      auto_create_column_families = TRUE
  )
  AS
  SELECT
   loan_id AS rowkey,
   STRUCT ( 
     customer_name,
     customer_address,
     customer_city,
     customer_state,
     customer_zip,
     loan_type,
     loan_amount,
     loan_status,
     loan_note_text
   ) AS loan_detail,
  -- Insert your own query here
   From `outwaterc-demo1.demo_loans.loan_records`
