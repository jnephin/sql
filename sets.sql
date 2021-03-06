-- create sets table

SELECT 
"TRIP"."TRIP_ID",
"TRIP"."TRIP_IOS_ID",
"VESSEL"."VESSEL_NAME",
"FISH"."FE_MAJOR_LEVEL_ID",
"FISH"."FE_END_DEPLOYMENT_TIME",
"FISH"."FE_BEGIN_RETRIEVAL_TIME",
"FISH"."FE_START_LATTITUDE_DEGREE",
"FISH"."FE_START_LATTITUDE_MINUTE",
"FISH"."FE_START_LONGITUDE_DEGREE",
"FISH"."FE_START_LONGITUDE_MINUTE",
"FISH"."FE_END_LATTITUDE_DEGREE",
"FISH"."FE_END_LATTITUDE_MINUTE",
"FISH"."FE_END_LONGITUDE_DEGREE",
"FISH"."FE_END_LONGITUDE_MINUTE",
"FISH"."FE_DISTANCE_TRAVELLED",
"FISH"."FE_BEGINNING_BOTTOM_DEPTH",
"FISH"."FE_END_BOTTOM_DEPTH",
"FISH"."FE_BEGIN_TARGET_DEPTH",
"FISH"."FE_END_TARGET_DEPTH",
"FISH"."FE_TOTAL_CATCH_WEIGHT",
"TRAWL"."TRLSP_MOUTH_OPENING_HEIGHT",
"TRAWL"."TRLSP_MOUTH_OPENING_WIDTH",
"TRAWL"."TRLSP_WARP_LENGTH"
FROM 
"GFBioSQL"."dbo"."B01_TRIP" AS "TRIP"
	JOIN  
	"GFBioSQL"."dbo"."C_Vessels" AS "VESSEL"
		ON 
		"TRIP"."VESSEL_ID" = "VESSEL"."VESSEL_ID" 
	JOIN  
	"GFBioSQL"."dbo"."B02_FISHING_EVENT" AS "FISH"
		ON 
		"TRIP"."TRIP_ID" = "FISH"."TRIP_ID" 
	JOIN
	"GFBioSQL"."dbo"."B02e_Trawl_Specs" AS "TRAWL"
		ON 
		"FISH"."FISHING_EVENT_ID" = "TRAWL"."FISHING_EVENT_ID" 		
WHERE "TRIP"."TRIP_ID" = 00000
ORDER BY "FISH"."FE_MAJOR_LEVEL_ID";
