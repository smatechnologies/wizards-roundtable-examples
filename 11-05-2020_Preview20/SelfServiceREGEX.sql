USE OPCON

SELECT REQ.[NAME]
      ,REQ.[DOCUMENTATION]
      ,REQ.[DETAILS]
      ,CATEGORY.NAME
  FROM [dbo].[SERVICE_REQUEST] as REQ
  JOIN [dbo].[SERVICE_REQUEST_CATEGORY] as CATEGORY
   ON CATEGORY.ServiceRequestCategoryId = REQ.SERVICE_REQUEST_CATEGORY_ID
  where details like '%<regExpression>%' and details not like '%<regExpression></regExpression>%'