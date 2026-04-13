CREATE EXTERNAL TABLE demo_loans.BigtableTable
OPTIONS (
  format = 'CLOUD_BIGTABLE',
  uris = ['https://googleapis.com/bigtable/projects/outwaterc-demo1/instances/bt-demo-1/appProfiles/default/tables/loan-info'],
  bigtable_options =
    """
    {
      columnFamilies: [
        {
          "familyId": "loan_detail",
          "type": "STRING",
          "encoding": "BINARY"
        }
      ],
      readRowkeyAsString: true
    }
    """
);