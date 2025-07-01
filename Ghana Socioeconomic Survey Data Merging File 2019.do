//// GHANA SOCIOECONOMIC PANEL SURVEY 
clear 
cap log close
set more off
	 cd "C:\Users\RushambwaT\Documents\GHS\GHANA SOCIOECON SURVEY"
	 log using "GHANA_SOCIOECONOMIC_SURVEY-LOGFILE", text replace 
	 use  01b2_roster
	 describe 
duplicates report FPrimary


////Updating with Background File
sort FPrimary
merge m:m FPrimary using "01d_background", update
drop _merge
/// Updating with New Roster
duplicates report FPrimary
sort FPrimary
merge m:m FPrimary using "01b2_newroster.dta", update
drop _merge
///Updating with Preroster file
duplicates report FPrimary
sort FPrimary
merge m:m FPrimary using "01b2_preroster", update
drop _merge

///Updating with Ravens 
duplicates report FPrimary
sort FPrimary
merge m:m FPrimary using "01ei_ravens", update
drop _merge
///Updating with Fluency
sort FPrimary
merge m:m FPrimary using "01eii_fluency", update
drop _merge
///Updating with Maths File
sort FPrimary
merge m:m FPrimary using "01eiii_math", update
drop _merge
///Updating with Nepsy File
sort FPrimary
merge m:m FPrimary using "01eiv_nepsy", update
drop _merge
///Updating with Digitspan
sort FPrimary
merge m:m FPrimary using "01ev_digitspan", update
drop _merge
/// Updating with English file 
sort FPrimary
merge m:m FPrimary using "01evi_english", update
drop _merge
///Updating with Anthropometry
sort FPrimary
merge m:m FPrimary using "01evii_anthropometry", update
drop _merge
/// Updating with Consumption File
sort FPrimary
merge m:m FPrimary using "01eviii_consumption", update
drop _merge
///Updating with Employment Screener
sort FPrimary
merge m:m FPrimary using "01fa_employmentscreener", update
drop _merge
///Updating with Employment Main
sort FPrimary
merge m:m FPrimary using "01fi_employmentmain", update
drop _merge
///Updating with Employment secondary
sort FPrimary
merge m:m FPrimary using "01fii_employmentsecondary", update force
drop _merge
///Update with Unemployed
sort FPrimary
merge m:m FPrimary using "01fiii_unemployed", update force
drop _merge
///Updating with general education
sort FPrimary
merge m:m FPrimary using "01gi_generaleducation", update
drop _merge
///Updating with EdCareer
sort FPrimary
merge m:m FPrimary using "01gii_edcareer", update force 
drop _merge
///Updating with Literacy
sort FPrimary
merge m:m FPrimary using "01giii_literacy", update
drop _merge
///Updating with Immigration file 
sort FPrimary
merge m:m FPrimary using "01hi_immigration", update
drop _merge
///Updating with Migration History File
sort FPrimary
merge m:m FPrimary using "01hii_migrationhistory", update
drop _merge
///Updating with relatives roster
sort FPrimary
merge m:m FPrimary using "02a_nr_relatives_newroster", update
drop _merge
///Updating with relatives preroster
sort FPrimary
merge m:m FPrimary using "02a_nr_relatives_preroster", update
drop _merge
///Updating with Relatives Questions
sort FPrimary
merge m:m FPrimary using "02a_nr_relatives_questions", update
drop _merge
///Relatives Roster 
sort FPrimary
merge m:m FPrimary using "02a_nr_relatives_roster", update
drop _merge
/// Spouses Roster 
sort FPrimary
merge m:m FPrimary using "02b_nr_spouses_newroster", update
drop _merge

sort FPrimary
merge m:m FPrimary using "02b_nr_spouses_preroster", update
drop _merge

sort FPrimary
merge m:m FPrimary using "02b_nr_spouses_questions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "02b_nr_spouses_roster", update
drop _merge

///Updating with Fluency file
sort FPrimary
merge 1:m FPrimary using "", update
drop _merge

//// Updating with Animals file
sort FPrimary
merge m:m FPrimary using "03ai_animalquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "03ai_animalquestions_osp", update
drop _merge

sort FPrimary
merge m:m FPrimary using "03aii_toolquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "03aii_toolquestions_osp", update
drop _merge

sort FPrimary
merge m:m FPrimary using "03aiii_durablegoodquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "03aiii_durablegoodquestions_osp", update
drop _merge

sort FPrimary
merge m:m FPrimary using "03bi_borrowingquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "03bia_borrowingquestions", update
drop _merge
////Updating with Nepsy file
sort FPrimary
merge m:m FPrimary using "03bii_lendingquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "03biii_outtransfersquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "03biv_intransfersquestions", update
drop _merge
////Income Data
sort FPrimary
merge m:m FPrimary using "03biv_intransfersquestions_org", update
drop _merge

sort FPrimary
merge m:m FPrimary using "03bv_savingquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04_plotroster", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04h_agsection", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04i_landtenure", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04j_tracploughuse", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04k_seedquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04l_chemquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04l_inputs", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04m_aglabourquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04n_harvestquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04nn_gatheringquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04o_cropsalesstoresquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "04o_cropsalesstoresservices", update
drop _merge

sort FPrimary
merge m:m FPrimary using "05_bizsection", update
drop _merge

sort FPrimary
merge m:m FPrimary using "05ai_basicinfo", update
drop _merge

sort FPrimary
merge m:m FPrimary using "05aii_assetquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "05aii_assetquestions_osp", update
drop _merge

sort FPrimary
merge m:m FPrimary using "05bi_allemployees", update
drop _merge

sort FPrimary
merge m:m FPrimary using "05bii_fourimportantquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "06a_insurance", update
drop _merge

sort FPrimary
merge m:m FPrimary using "06c_immunization", update
drop _merge

sort FPrimary
merge m:m FPrimary using "06d_dailyliving", update
drop _merge

sort FPrimary
merge m:m FPrimary using "06e_miscellaneous", update
drop _merge

sort FPrimary
merge m:m FPrimary using "06f_past2weeks", update
drop _merge

sort FPrimary
merge m:m FPrimary using "06g_past12months", update
drop _merge

sort FPrimary
merge m:m FPrimary using "07a_fertility", update
drop _merge

sort FPrimary
merge m:m FPrimary using "07b_power", update
drop _merge

sort FPrimary
merge m:m FPrimary using "08a_reprohealth", update
drop _merge

sort FPrimary
merge m:m FPrimary using "08b_power", update
drop _merge

sort FPrimary
merge m:m FPrimary using "09a_youngchildhealth", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10_determine_respondents", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10ai_depression", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10aii_subjectivesocialwelfare", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10aiv_townsend", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10av_trust", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10avi_careforkids", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10avi_timeuseloop", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10bii_riskpreferences", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10c_socialnetworkingquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10di_binteractionsquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10dii_mediaextensionsquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "10diii_volunteer_questions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "11a_foodconsumption_give", update
drop _merge

sort FPrimary
merge m:m FPrimary using "11a_foodconsumption_prod_purch", update
drop _merge

sort FPrimary
merge m:m FPrimary using "11b_clothingquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "11c_otheritems", update
drop _merge

sort FPrimary
merge m:m FPrimary using "11d_fuelconsumptionquestions", update
drop _merge

sort FPrimary
merge m:m FPrimary using "12a_housingcharacteristics1i_rent", update
drop _merge

sort FPrimary
merge m:m FPrimary using "12a_housingcharacteristics1ii_utilities", update
drop _merge

sort FPrimary
merge m:m FPrimary using "12a_housingcharacteristics1iii_structure", update
drop _merge

sort FPrimary
merge m:m FPrimary using "12a_measure", update
drop _merge

sort FPrimary
merge m:m FPrimary using "12a_measurements", update
drop _merge

sort FPrimary
merge m:m FPrimary using "12b_housingcharacteristics2", update
drop _merge

sort FPrimary
merge m:m FPrimary using "commtype", update
drop _merge

sort FPrimary
merge m:m FPrimary using "00_hh_info", update
drop _merge

sort FPrimary
merge m:m FPrimary using "01a_consent", update
drop _merge

////Data Checking
save "Ghana_Panel_Data_2019"

























































































































































































































































































































































































































