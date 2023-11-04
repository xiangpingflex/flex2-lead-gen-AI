WITH deal_info AS 
(
  SELECT 
  OBJECTID AS deal_id,
  OBJECTTYPEID AS deal_type_id,
  PROPERTY_DEALNAME AS deal_name,
  PROPERTY_DEALSTAGE AS deal_stage,
  PROPERTY_DEALTYPE AS deal_type,
  UPDATEDAT AS deal_update_date,
  PROPERTY_UNPARSED_AMOUNT AS deal_amount,
  PROPERTY_CLOSED_LOST_REASON AS deal_closed_lost_reason,
  PROPERTY_CLOSED_WON_REASON AS deal_closed_won_reason,
  PROPERTY_CLOSEDATE AS deal_close_date,
  PROPERTY_UNPARSED_CLOSEDATE AS deal_close_timestamp,
  PROPERTY_CREATEDATE AS deal_create_date,
  PROPERTY_UNPARSED_CREATEDATE AS deal_create_timestamp,
  PROPERTY_UNPARSED_DAYS_TO_CLOSE AS deal_days_to_close,
  PROPERTY_DEAL_SEGMENT AS deal_segment,
  PROPERTY_HOW_DID_PARTNER_HEAR_ABOUT_US_ AS deal_how_did_partner_head_about_us,
  PROPERTY_UNPARSED_HS_CLOSED_AMOUNT AS deal_closed_amount,
  PROPERTY_HS_IS_CLOSED AS deal_is_closed,
  PROPERTY_HS_IS_CLOSED_WON AS deal_is_closed_won,
  PROPERTY_HS_IS_DEAL_SPLIT AS deal_is_split,
  PROPERTY_HS_LASTMODIFIEDDATE AS deal_last_modified_date,
  PROPERTY_UNPARSED_HS_LASTMODIFIEDDATE AS deal_last_modified_timestamp,
  PROPERTY_HUBSPOT_OWNER_ID AS deal_owner_id,
  PROPERTY_HUBSPOT_TEAM_ID AS deal_team_id,
  PROPERTY_UNPARSED_MTV AS deal_MTV,
  PROPERTY_NOTES_LAST_CONTACTED AS deal_notes_last_contacted,
  PROPERTY_UNPARSED_NOTES_LAST_CONTACTED AS deal_notes_last_contacted_timestamp,
  PROPERTY_UNPARSED_NUM_ASSOCIATED_CONTACTS AS deal_num_associated_contacts,
  PROPERTY_PIPELINE AS deal_pipeline,
  PROPERTY_PM_SOFTWARE AS deal_PM_software,
  PROPERTY_PORTFOLIO_TYPE___DEAL AS deal_protfolio_type,
  PROPERTY_RENT_PORTAL AS deal_rent_portal,
  PROPERTY_UNPARSED_UNITS AS deal_units
  FROM HUBSPOT_DB.V2_LIVE.OBJECTS_DEALS
  WHERE INGESTEDAT >= '2023-01-01'
  AND DEAL_TYPE = 'newbusiness'
  LIMIT 10
)

SELECT
deal_id,
deal_type_id,
deal_name,
deal_stage,
deal_type,
deal_update_date,
deal_amount,
deal_closed_lost_reason,
deal_closed_won_reason,
deal_close_date,
deal_close_timestamp,
deal_create_date,
deal_create_timestamp,
deal_days_to_close,
deal_segment,
deal_how_did_partner_head_about_us,
deal_closed_amount,
deal_is_closed,
deal_is_closed_won,
deal_is_split,
deal_last_modified_date,
deal_last_modified_timestamp,
deal_owner_id,
deal_team_id,
deal_MTV,
deal_notes_last_contacted,
deal_notes_last_contacted_timestamp,
deal_num_associated_contacts,
deal_pipeline,
deal_PM_software,
deal_protfolio_type,
deal_rent_portal,
deal_units,
ocom.OBJECTID AS company_id,
ocom.OBJECTTYPEID AS company_object_type_id,
ocom.UPDATEDAT AS company_update_date,
ocom.PROPERTY_ADDRESS AS company_address,
ocom.PROPERTY_ADDRESS2 AS company_address2,
ocom.PROPERTY_UNPARSED_ANNUALREVENUE AS company_annual_revenue,
ocom.PROPERTY_CITY AS company_city,
ocom.PROPERTY_COUNTRY AS company_country,
ocom.PROPERTY_CREATEDATE AS company_create_date,
ocom.PROPERTY_UNPARSED_CREATEDATE AS company_create_timestamp,
ocom.PROPERTY_DESCRIPTION AS company_description,
ocom.PROPERTY_DOMAIN AS company_domain,
ocom.PROPERTY_FACEBOOK_COMPANY_PAGE AS company_facebook_page,
ocom.PROPERTY_FIRST_CONTACT_CREATEDATE AS company_first_contact_date,
ocom.PROPERTY_FOUNDED_YEAR AS company_founded_year,
ocom.PROPERTY_HS_LEAD_STATUS AS company_lead_status,
ocom.PROPERTY_LINKEDIN_COMPANY_PAGE AS company_linkedin_page,
ocom.PROPERTY_LINKEDINBIO AS company_linkedin_bio,
ocom.PROPERTY_NAME AS company_name,
ocom.PROPERTY_UNPARSED_NUM_ASSOCIATED_CONTACTS AS company_num_associated_contacts,
ocom.PROPERTY_UNPARSED_NUM_ASSOCIATED_DEALS AS company_num_associated_deals,
ocom.PROPERTY_UNPARSED_NUMBER_OF_PROPERTIES AS company_num_properties,
ocom.PROPERTY_PHONE AS company_phone,
ocom.PROPERTY_PM_SOFTWARE AS company_pm_software,
ocom.PROPERTY_PORTFOLIO_SUBTYPE AS company_protfolio_subtype,
ocom.PROPERTY_PORTFOLIO_TYPE AS company_protfolio_type,
ocom.PROPERTY_RENT_PORTAL AS company_rent_portal,
ocom.PROPERTY_SEGMENT AS company_segment,
ocom.PROPERTY_STATE AS company_state,
ocom.PROPERTY_TIMEZONE AS company_timezone,
ocom.PROPERTY_UNPARSED_UNITS AS company_units,
ocom.PROPERTY_WEBSITE AS company_website,
ocom.PROPERTY_ZIP AS company_zipcode,
ocon.OBJECTID AS contact_id,
ocon.OBJECTTYPEID AS contact_type_id,
ocon.UPDATEDAT AS contact_update_date,
ocon.PROPERTY_UNPARSED_ASSOCIATEDCOMPANYID AS contact_company_id,
ocon.PROPERTY_ADDRESS AS contact_address,
ocon.PROPERTY_CITY AS contact_city,
ocon.PROPERTY_COMPANY AS contact_company,
ocon.PROPERTY_COUNTRY AS contact_country,
ocon.PROPERTY_CREATEDATE AS contact_create_date,
ocon.PROPERTY_UNPARSED_CREATEDATE AS contact_create_timestamp,
ocon.PROPERTY_EMAIL AS contact_eamil,
ocon.PROPERTY_FIRST_DEAL_CREATED_DATE AS contact_first_deal_create_date,
ocon.PROPERTY_FIRSTNAME AS contact_first_name,
ocon.PROPERTY_HS_ADDITIONAL_EMAILS AS contact_additional_email,
ocon.PROPERTY_HS_EMAIL_DOMAIN AS contact_email_domain,
ocon.PROPERTY_HS_IP_TIMEZONE AS contact_ip_timezone,
ocon.PROPERTY_HS_IS_UNWORKED AS contact_is_unworked,
ocon.PROPERTY_HS_LATEST_SEQUENCE_ENDED_DATE AS contact_latest_sequence_ended_date,
ocon.PROPERTY_UNPARSED_HS_LATEST_SEQUENCE_ENDED_DATE AS contact_latest_sequence_ended_timestamp,
ocon.PROPERTY_HS_LATEST_SEQUENCE_ENROLLED_DATE AS contact_latest_sequence_enrolled_date,
ocon.PROPERTY_UNPARSED_HS_LATEST_SEQUENCE_ENROLLED_DATE AS contact_latest_sequence_entrolled_timestamp,
ocon.PROPERTY_HS_LEAD_STATUS AS contact_lead_status,
ocon.PROPERTY_UNPARSED_HS_SEQUENCES_ENROLLED_COUNT AS contact_sequences_enrolled_count,
ocon.PROPERTY_HS_SEQUENCES_IS_ENROLLED AS contact_sequences_is_enrolled,
ocon.PROPERTY_UNPARSED_HS_TIME_BETWEEN_CONTACT_CREATION_AND_DEAL_CREATION AS contact_time_between_contact_creation_and_deal_creation,
ocon.PROPERTY_HUBSPOT_OWNER_ID AS contact_hubspot_owner_id,
ocon.PROPERTY_HUBSPOT_TEAM_ID AS contact_hubspot_team_id,
ocon.PROPERTY_JOBTITLE AS contact_job_title,
ocon.PROPERTY_LASTMODIFIEDDATE AS contact_last_modified_date,
ocon.PROPERTY_UNPARSED_LASTMODIFIEDDATE AS contact_last_modifed_timestamp,
ocon.PROPERTY_LASTNAME AS contact_last_name,
ocon.PROPERTY_LEAD_SOURCE AS contact_lead_source,
ocon.PROPERTY_LINKEDIN AS contact_linkedin,
ocon.PROPERTY_MOBILEPHONE AS contact_mobile_phone,
ocon.PROPERTY_UNPARSED_NUM_ASSOCIATED_DEALS AS contact_num_associated_deals,
ocon.PROPERTY_UNPARSED_NUM_CONTACTED_NOTES AS contact_num_contacted_notes,
ocon.PROPERTY_PHONE AS contact_phone,
ocon.PROPERTY_STATE AS contact_state,
ocon.PROPERTY_UNPARSED_UNITS AS contact_units,
ocon.PROPERTY_WEBSITE AS contact_website,
ocon.PROPERTY_ZIP AS contact_zipcode,
oe.OBJECTID AS email_id,
oe.OBJECTTYPEID AS email_type,
oe.UPDATEDAT AS email_update_date,
oe.PROPERTY_HS_CREATED_BY AS email_created_by,
oe.PROPERTY_HS_CREATEDATE AS email_created_date,
oe.PROPERTY_UNPARSED_HS_CREATEDATE AS email_created_timestamp,
oe.PROPERTY_HS_EMAIL_FROM_EMAIL AS email_from_email,
oe.PROPERTY_HS_EMAIL_HTML AS email_html,
oe.PROPERTY_HS_EMAIL_SENT_VIA AS email_sent_via,
oe.PROPERTY_HS_EMAIL_STATUS AS email_status,
oe.PROPERTY_HS_EMAIL_SUBJECT AS email_subject,
oe.PROPERTY_HS_EMAIL_TEXT AS email_text,
oe.PROPERTY_HS_EMAIL_TO_EMAIL AS email_to_email,
oe.PROPERTY_HS_ENGAGEMENT_TYPE AS email_engagement_type,
oe.PROPERTY_HS_LASTMODIFIEDDATE AS email_last_modified_date,
oe.PROPERTY_UNPARSED_HS_LASTMODIFIEDDATE AS email_last_modified_timestamp,
oe.PROPERTY_HUBSPOT_OWNER_ID AS email_hubspot_owner_id,
oe.PROPERTY_HUBSPOT_TEAM_ID AS email_hubspot_team_id
FROM deal_info di
LEFT JOIN HUBSPOT_DB.V2_LIVE.ASSOCIATIONS_DEALS_TO_COMPANIES adtc
ON di.deal_id = adtc.DEAL_OBJECTID
LEFT JOIN HUBSPOT_DB.V2_LIVE.OBJECTS_COMPANIES ocom 
ON adtc.COMPANY_OBJECTID = ocom.OBJECTID      
LEFT JOIN HUBSPOT_DB.V2_LIVE.ASSOCIATIONS_CONTACTS_TO_DEALS actd 
ON di.deal_id = actd.DEAL_OBJECTID
LEFT JOIN HUBSPOT_DB.V2_LIVE.OBJECTS_CONTACTS ocon
ON actd.CONTACT_OBJECTID =ocon.OBJECTID 
LEFT JOIN  HUBSPOT_DB.V2_LIVE.ASSOCIATIONS_ENGAGEMENTS_TO_DEALS aetd 
ON di.deal_id = aetd.DEAL_OBJECTID
LEFT JOIN HUBSPOT_DB.V2_LIVE.OBJECTS_ENGAGEMENTS oe
ON aetd.ENGAGEMENT_OBJECTID = oe.OBJECTID 
WHERE oe.PROPERTY_HS_ENGAGEMENT_TYPE = 'EMAIL'