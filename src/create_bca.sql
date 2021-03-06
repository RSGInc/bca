USE [bca]
GO
/****** Object:  Schema [bca_abm]    Script Date: 6/28/2018 11:07:01 AM ******/
CREATE SCHEMA [bca_abm]
GO
/****** Object:  Table [dbo].[analysis]    Script Date: 6/28/2018 11:07:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[analysis](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[year_reference] [int] NULL,
	[year_start] [int] NULL,
	[year_intermediate_1] [int] NULL,
	[year_intermediate_2] [int] NULL,
	[year_intermediate_3] [int] NULL,
	[year_intermediate_4] [int] NULL,
	[year_intermediate_5] [int] NULL,
	[year_end] [int] NULL,
	[rate_inflation] [float] NULL,
	[rate_discount] [float] NULL,
	[annualization_factor] [float] NULL,
	[last_update_date] [date] NOT NULL,
	[annual_vot_growth] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[analysis_parameters]    Script Date: 6/28/2018 11:07:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[analysis_parameters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[analysis_id] [int] NOT NULL,
	[comparison_year] [int] NOT NULL,
	[scenario_id_base] [int] NOT NULL,
	[scenario_id_build] [int] NOT NULL,
	[vot_commute] [float] NULL,
	[vot_noncommute] [float] NULL,
	[vot_work] [float] NULL,
	[vot_truck_light] [float] NULL,
	[vot_truck_medium] [float] NULL,
	[vot_truck_heavy] [float] NULL,
	[vor_auto] [float] NULL,
	[vor_work] [float] NULL,
	[vor_truck_light] [float] NULL,
	[vor_truck_medium] [float] NULL,
	[vor_truck_heavy] [float] NULL,
	[vot_uniform] [float] NULL,
	[ovt_weight] [float] NULL,
	[ovt_time_multiplier] [float] NULL,
	[voc_auto] [float] NULL,
	[voc_truck_light] [float] NULL,
	[voc_truck_medium] [float] NULL,
	[voc_truck_heavy] [float] NULL,
	[aoc_auto] [float] NULL,
	[phys_activity_threshold] [float] NULL,
	[cost_phys_activ] [float] NULL,
	[crash_rate_fatal] [float] NULL,
	[crash_rate_injury] [float] NULL,
	[crash_rate_pdo] [float] NULL,
	[crash_fatal_cost] [float] NULL,
	[crash_injury_cost] [float] NULL,
	[crash_pdo_cost] [float] NULL,
	[co2_value] [float] NULL,
	[pm2_5_value] [float] NULL,
	[pm10_value] [float] NULL,
	[nox_value] [float] NULL,
	[rog_value] [float] NULL,
	[so2_value] [float] NULL,
	[co_value] [float] NULL,
	[pm_10_value] [float] NULL,
	[rate_inflation] [float] NULL,
	[rate_discount] [float] NULL,
	[coc_age_thresh] [int] NULL,
	[coc_race_thresh] [int] NULL,
	[coc_hinc_thresh] [int] NULL,
	[coc_poverty_thresh] [float] NULL,
	[coc_hisp_thresh] [int] NULL,
	[rel_ratio] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_analysis_parameters] UNIQUE NONCLUSTERED 
(
	[analysis_id] ASC,
	[comparison_year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [fg_main]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[analysis_parameters_new]    Script Date: 6/28/2018 11:07:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[analysis_parameters_new](
	[analysis_id] [int] NOT NULL,
	[comparison_year] [int] NOT NULL,
	[scenario_id_base] [int] NOT NULL,
	[scenario_id_build] [int] NOT NULL,
	[vot_commute] [float] NULL,
	[vot_noncommute] [float] NULL,
	[vot_work] [float] NULL,
	[vot_truck_light] [float] NULL,
	[vot_truck_medium] [float] NULL,
	[vot_truck_heavy] [float] NULL,
	[vor_auto] [float] NULL,
	[vor_work] [float] NULL,
	[vor_truck_light] [float] NULL,
	[vor_truck_medium] [float] NULL,
	[vor_truck_heavy] [float] NULL,
	[vot_uniform] [float] NULL,
	[ovt_weight] [float] NULL,
	[ovt_time_multiplier] [float] NULL,
	[voc_auto] [float] NULL,
	[voc_truck_light] [float] NULL,
	[voc_truck_medium] [float] NULL,
	[voc_truck_heavy] [float] NULL,
	[aoc_auto] [float] NULL,
	[phys_activity_threshold] [float] NULL,
	[cost_phys_activ] [float] NULL,
	[crash_rate_fatal] [float] NULL,
	[crash_rate_injury] [float] NULL,
	[crash_rate_pdo] [float] NULL,
	[crash_fatal_cost] [float] NULL,
	[crash_injury_cost] [float] NULL,
	[crash_pdo_cost] [float] NULL,
	[co2_value] [float] NULL,
	[pm2_5_value] [float] NULL,
	[pm10_value] [float] NULL,
	[nox_value] [float] NULL,
	[rog_value] [float] NULL,
	[so2_value] [float] NULL,
	[co_value] [float] NULL,
	[pm_10_value] [float] NULL,
	[rate_inflation] [float] NULL,
	[rate_discount] [float] NULL,
	[coc_age_thresh] [int] NULL,
	[coc_race_thresh] [int] NULL,
	[coc_hinc_thresh] [int] NULL,
	[coc_poverty_thresh] [float] NULL,
	[coc_hisp_thresh] [int] NULL,
	[rel_ratio] [float] NULL
) ON [fg_main]
GO
/****** Object:  Table [dbo].[cost_inputs]    Script Date: 6/28/2018 11:07:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cost_inputs](
	[period] [int] NULL,
	[cost_capital] [float] NULL,
	[cost_om] [float] NULL,
	[cost_finance] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emissions]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emissions](
	[SCENARIO_ID] [int] NOT NULL,
	[METRIC_ID] [int] NOT NULL,
	[SEASON] [int] NOT NULL,
	[METRIC_VALUE] [float] NOT NULL,
 CONSTRAINT [PK_EMISSIONS] PRIMARY KEY CLUSTERED 
(
	[SCENARIO_ID] ASC,
	[METRIC_ID] ASC,
	[SEASON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[finance.netcosts]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[finance.netcosts](
	[bca_id] [int] NOT NULL,
	[cost_id] [int] NOT NULL,
	[year] [int] NOT NULL,
	[cost_value] [float] NULL,
 CONSTRAINT [pk_netcosts] PRIMARY KEY CLUSTERED 
(
	[bca_id] ASC,
	[cost_id] ASC,
	[year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[multiyear_final_results]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[multiyear_final_results](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[analysis_id] [int] NOT NULL,
	[bc_ratio] [float] NULL,
	[benefit_npv] [float] NULL,
	[cost_npv] [float] NULL,
	[irr] [float] NULL,
	[net_npv] [float] NULL,
	[toll_revenue_base_npv] [float] NULL,
	[toll_revenue_build_npv] [float] NULL,
	[fare_revenue_base_npv] [float] NULL,
	[fare_revenue_build_npv] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[multiyear_results]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[multiyear_results](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[scenario_id_base] [int] NOT NULL,
	[scenario_id_build] [int] NOT NULL,
	[analysis_id] [int] NOT NULL,
	[comparison_year] [int] NOT NULL,
	[period] [int] NOT NULL,
	[ben_co] [float] NULL,
	[ben_co2] [float] NULL,
	[ben_nox] [float] NULL,
	[ben_pm10] [float] NULL,
	[ben_pm25] [float] NULL,
	[ben_rogs] [float] NULL,
	[ben_so2] [float] NULL,
	[subtotal_ben_emissions] [float] NULL,
	[ben_autos_owned_coc] [float] NULL,
	[ben_autos_owned] [float] NULL,
	[ben_crashcost_fat] [float] NULL,
	[ben_crashcost_inj] [float] NULL,
	[ben_crashcost_pdo] [float] NULL,
	[subtotal_ben_safety] [float] NULL,
	[ben_persons_phys_active_coc] [float] NULL,
	[ben_persons_phys_active] [float] NULL,
	[ben_relcost_auto] [float] NULL,
	[ben_relcost_truck_hvy] [float] NULL,
	[ben_relcost_truck_lht] [float] NULL,
	[ben_relcost_truck_med] [float] NULL,
	[subtotal_ben_reliability] [float] NULL,
	[ben_tt_at_commute] [float] NULL,
	[ben_tt_auto_commute] [float] NULL,
	[ben_tt_transit_commute] [float] NULL,
	[subtotal_ben_tt_commute] [float] NULL,
	[ben_tt_at_noncommute] [float] NULL,
	[ben_tt_auto_noncommute] [float] NULL,
	[ben_tt_transit_noncommute] [float] NULL,
	[subtotal_ben_tt_noncommute] [float] NULL,
	[ben_tt_at_commute_coc] [float] NULL,
	[ben_tt_auto_commute_coc] [float] NULL,
	[ben_tt_transit_commute_coc] [float] NULL,
	[subtotal_ben_tt_commute_coc] [float] NULL,
	[ben_tt_at_noncommute_coc] [float] NULL,
	[ben_tt_auto_noncommute_coc] [float] NULL,
	[ben_tt_transit_noncommute_coc] [float] NULL,
	[subtotal_ben_tt_noncommute_coc] [float] NULL,
	[ben_tt_comm] [float] NULL,
	[ben_tt_truck] [float] NULL,
	[subtotal_ben_freight] [float] NULL,
	[ben_voc_auto] [float] NULL,
	[ben_voc_truck_lht] [float] NULL,
	[ben_voc_truck_med] [float] NULL,
	[ben_voc_truck_hvy] [float] NULL,
	[subtotal_ben_voc] [float] NULL,
	[toll_rev_base] [float] NULL,
	[toll_rev_build] [float] NULL,
	[fare_rev_base] [float] NULL,
	[fare_rev_build] [float] NULL,
	[cost_capital] [float] NULL,
	[cost_om] [float] NULL,
	[cost_finance] [float] NULL,
	[benefit_total_undiscounted] [float] NULL,
	[cost_total_undiscounted] [float] NULL,
	[benefit_total_discounted] [float] NULL,
	[cost_total_discounted] [float] NULL,
	[net_annual_undiscounted] [float] NULL,
	[net_annual_discounted] [float] NULL,
	[toll_rev_base_discounted] [float] NULL,
	[toll_rev_build_discounted] [float] NULL,
	[fare_rev_base_discounted] [float] NULL,
	[fare_rev_build_discounted] [float] NULL,
	[benefit_emissions_discounted] [float] NULL,
	[benefit_autos_owned_discounted] [float] NULL,
	[benefit_safety_discounted] [float] NULL,
	[benefit_phys_active_discounted] [float] NULL,
	[benefit_reliability_discounted] [float] NULL,
	[benefit_tt_commute_discounted] [float] NULL,
	[benefit_tt_noncommute_discounted] [float] NULL,
	[benefit_tt_freight_discounted] [float] NULL,
	[benefit_voc_discounted] [float] NULL,
	[cost_capital_discounted] [float] NULL,
	[cost_om_discounted] [float] NULL,
	[cost_finance_discounted] [float] NULL,
	[benefit_autos_owned_discounted_coc] [float] NULL,
	[benefit_phys_active_discounted_coc] [float] NULL,
	[benefit_tt_commute_discounted_coc] [float] NULL,
	[benefit_tt_noncommute_discounted_coc] [float] NULL,
	[base_tt_person] [float] NULL,
	[base_tt_person_discounted] [float] NULL,
	[build_tt_person] [float] NULL,
	[build_tt_person_discounted] [float] NULL,
	[base_tt_truck_comm] [float] NULL,
	[build_tt_truck_comm] [float] NULL,
	[ratio_tt_person] [float] NULL,
	[ratio_tt_truck_comm] [float] NULL,
	[base_tt_truck_comm_discounted] [float] NULL,
	[build_tt_truck_comm_discounted] [float] NULL,
	[ben_autos_owned_coc_race] [float] NULL,
	[ben_autos_owned_coc_age] [float] NULL,
	[ben_autos_owned_coc_poverty] [float] NULL,
	[ben_persons_phys_active_coc_race] [float] NULL,
	[ben_persons_phys_active_coc_age] [float] NULL,
	[ben_persons_phys_active_coc_poverty] [float] NULL,
	[ben_tt_at_commute_coc_race] [float] NULL,
	[ben_tt_at_commute_coc_age] [float] NULL,
	[ben_tt_at_commute_coc_poverty] [float] NULL,
	[ben_tt_auto_commute_coc_race] [float] NULL,
	[ben_tt_auto_commute_coc_age] [float] NULL,
	[ben_tt_auto_commute_coc_poverty] [float] NULL,
	[ben_tt_transit_commute_coc_race] [float] NULL,
	[ben_tt_transit_commute_coc_age] [float] NULL,
	[ben_tt_transit_commute_coc_poverty] [float] NULL,
	[subtotal_ben_tt_commute_coc_race] [float] NULL,
	[subtotal_ben_tt_commute_coc_age] [float] NULL,
	[subtotal_ben_tt_commute_coc_poverty] [float] NULL,
	[ben_tt_at_noncommute_coc_race] [float] NULL,
	[ben_tt_at_noncommute_coc_age] [float] NULL,
	[ben_tt_at_noncommute_coc_poverty] [float] NULL,
	[ben_tt_auto_noncommute_coc_race] [float] NULL,
	[ben_tt_auto_noncommute_coc_age] [float] NULL,
	[ben_tt_auto_noncommute_coc_poverty] [float] NULL,
	[ben_tt_transit_noncommute_coc_race] [float] NULL,
	[ben_tt_transit_noncommute_coc_age] [float] NULL,
	[ben_tt_transit_noncommute_coc_poverty] [float] NULL,
	[subtotal_ben_tt_noncommute_coc_race] [float] NULL,
	[subtotal_ben_tt_noncommute_coc_age] [float] NULL,
	[subtotal_ben_tt_noncommute_coc_poverty] [float] NULL,
	[benefit_autos_owned_discounted_coc_race] [float] NULL,
	[benefit_autos_owned_discounted_coc_age] [float] NULL,
	[benefit_autos_owned_discounted_coc_poverty] [float] NULL,
	[benefit_phys_active_discounted_coc_race] [float] NULL,
	[benefit_phys_active_discounted_coc_age] [float] NULL,
	[benefit_phys_active_discounted_coc_poverty] [float] NULL,
	[benefit_tt_commute_discounted_coc_race] [float] NULL,
	[benefit_tt_commute_discounted_coc_age] [float] NULL,
	[benefit_tt_commute_discounted_coc_poverty] [float] NULL,
	[benefit_tt_noncommute_discounted_coc_race] [float] NULL,
	[benefit_tt_noncommute_discounted_coc_age] [float] NULL,
	[benefit_tt_noncommute_discounted_coc_poverty] [float] NULL,
	[persons] [int] NULL,
	[persons_coc] [int] NULL,
	[persons_coc_race] [int] NULL,
	[persons_coc_age] [int] NULL,
	[persons_coc_poverty] [int] NULL,
	[base_rel_cost] [float] NULL,
	[build_rel_cost] [float] NULL,
	[base_rel_cost_discounted] [float] NULL,
	[build_rel_cost_discounted] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[regress_scenario_comparison]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regress_scenario_comparison](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[analysis_id] [int] NOT NULL,
	[scenario_year] [int] NOT NULL,
	[scenario_id_base] [int] NOT NULL,
	[scenario_id_build] [int] NOT NULL,
	[vot_commute] [float] NULL,
	[vot_noncommute] [float] NULL,
	[vot_work] [float] NULL,
	[vot_truck_light] [float] NULL,
	[vot_truck_medium] [float] NULL,
	[vot_truck_heavy] [float] NULL,
	[vor_auto] [float] NULL,
	[vor_work] [float] NULL,
	[vor_truck_light] [float] NULL,
	[vor_truck_medium] [float] NULL,
	[vor_truck_heavy] [float] NULL,
	[vot_uniform] [float] NULL,
	[ovt_weight] [float] NULL,
	[ovt_time_multiplier] [float] NULL,
	[voc_auto] [float] NULL,
	[voc_truck_light] [float] NULL,
	[voc_truck_medium] [float] NULL,
	[voc_truck_heavy] [float] NULL,
	[aoc_auto] [float] NULL,
	[phys_activity_threshold] [float] NULL,
	[cost_phys_activ] [float] NULL,
	[crash_rate_fatal] [float] NULL,
	[crash_rate_injury] [float] NULL,
	[crash_rate_pdo] [float] NULL,
	[crash_fatal_cost] [float] NULL,
	[crash_injury_cost] [float] NULL,
	[crash_pdo_cost] [float] NULL,
	[co2_value] [float] NULL,
	[pm2_5_value] [float] NULL,
	[nox_value] [float] NULL,
	[rog_value] [float] NULL,
	[so2_value] [float] NULL,
	[co_value] [float] NULL,
	[pm10_value] [float] NULL,
	[rate_inflation] [float] NULL,
	[rate_discount] [float] NULL,
	[coc_age_thresh] [int] NULL,
	[coc_race_thresh] [int] NULL,
	[coc_hinc_thresh] [int] NULL,
	[coc_poverty_thresh] [float] NULL,
	[coc_hisp_thresh] [int] NULL,
	[rel_ratio] [float] NULL,
	[toll_auto_commute_base] [float] NULL,
	[toll_auto_commute_build] [float] NULL,
	[toll_auto_commute_base_coc] [float] NULL,
	[toll_auto_commute_build_coc] [float] NULL,
	[ben_tt_auto_commute] [float] NULL,
	[ben_tt_equity_auto_commute] [float] NULL,
	[ben_tt_auto_commute_coc] [float] NULL,
	[ben_tt_equity_auto_commute_coc] [float] NULL,
	[toll_auto_noncommute_base] [float] NULL,
	[toll_auto_noncommute_build] [float] NULL,
	[toll_auto_noncommute_base_coc] [float] NULL,
	[toll_auto_noncommute_build_coc] [float] NULL,
	[ben_tt_auto_noncommute] [float] NULL,
	[ben_tt_equity_auto_noncommute] [float] NULL,
	[ben_tt_auto_noncommute_coc] [float] NULL,
	[ben_tt_equity_auto_noncommute_coc] [float] NULL,
	[fare_transit_commute_base] [float] NULL,
	[fare_transit_commute_build] [float] NULL,
	[fare_transit_commute_base_coc] [float] NULL,
	[fare_transit_commute_build_coc] [float] NULL,
	[ben_tt_transit_commute] [float] NULL,
	[ben_tt_equity_transit_commute] [float] NULL,
	[ben_tt_transit_commute_coc] [float] NULL,
	[ben_tt_equity_transit_commute_coc] [float] NULL,
	[fare_transit_noncommute_base] [float] NULL,
	[fare_transit_noncommute_build] [float] NULL,
	[fare_transit_noncommute_base_coc] [float] NULL,
	[fare_transit_noncommute_build_coc] [float] NULL,
	[ben_tt_transit_noncommute] [float] NULL,
	[ben_tt_equity_transit_noncommute] [float] NULL,
	[ben_tt_transit_noncommute_coc] [float] NULL,
	[ben_tt_equity_transit_noncommute_coc] [float] NULL,
	[ben_tt_at_commute] [float] NULL,
	[ben_tt_equity_at_commute] [float] NULL,
	[ben_tt_at_noncommute] [float] NULL,
	[ben_tt_equity_at_noncommute] [float] NULL,
	[ben_tt_at_commute_coc] [float] NULL,
	[ben_tt_equity_at_commute_coc] [float] NULL,
	[ben_tt_at_noncommute_coc] [float] NULL,
	[ben_tt_equity_at_noncommute_coc] [float] NULL,
	[diff_tt_auto_commute] [float] NULL,
	[diff_tt_auto_noncommute] [float] NULL,
	[diff_tt_transit_commute] [float] NULL,
	[diff_tt_transit_noncommute] [float] NULL,
	[diff_toll_commercial] [float] NULL,
	[diff_toll_truck] [float] NULL,
	[ben_tt_comm] [float] NULL,
	[ben_tt_truck] [float] NULL,
	[diff_reliability] [float] NULL,
	[ben_reliability] [float] NULL,
	[diff_autos_owned] [int] NULL,
	[ben_autos_owned] [float] NULL,
	[diff_autos_owned_coc] [int] NULL,
	[ben_autos_owned_coc] [float] NULL,
	[diff_persons_phys_active] [int] NULL,
	[ben_persons_phys_active] [float] NULL,
	[diff_persons_phys_active_coc] [int] NULL,
	[ben_persons_phys_active_coc] [float] NULL,
	[diff_co2] [int] NULL,
	[diff_pm25] [int] NULL,
	[diff_nox] [int] NULL,
	[diff_rogs] [int] NULL,
	[diff_so2] [int] NULL,
	[diff_co] [int] NULL,
	[diff_pm10] [int] NULL,
	[ben_co2] [float] NULL,
	[ben_pm25] [float] NULL,
	[ben_nox] [float] NULL,
	[ben_rogs] [float] NULL,
	[ben_so2] [float] NULL,
	[ben_co] [float] NULL,
	[ben_pm10] [float] NULL,
	[ben_voc_auto] [float] NULL,
	[ben_voc_truck_lht] [float] NULL,
	[ben_voc_truck_med] [float] NULL,
	[ben_voc_truck_hvy] [float] NULL,
	[ben_relcost_auto] [float] NULL,
	[ben_relcost_truck_lht] [float] NULL,
	[ben_relcost_truck_med] [float] NULL,
	[ben_relcost_truck_hvy] [float] NULL,
	[ben_crashcost_pdo] [float] NULL,
	[ben_crashcost_inj] [float] NULL,
	[ben_crashcost_fat] [float] NULL,
	[toll_comm_base] [float] NULL,
	[toll_truck_base] [float] NULL,
	[toll_comm_build] [float] NULL,
	[toll_truck_build] [float] NULL,
	[last_update_date] [date] NOT NULL,
	[base_tt_comm] [float] NULL,
	[build_tt_comm] [float] NULL,
	[base_tt_truck] [float] NULL,
	[build_tt_truck] [float] NULL,
	[base_tt_person] [float] NULL,
	[build_tt_person] [float] NULL,
	[base_cost_persons_phys_active] [float] NULL,
	[build_cost_persons_phys_active] [float] NULL,
	[base_cost_autos_owned] [float] NULL,
	[build_cost_autos_owned] [float] NULL,
	[diff_persons_phys_active_coc_race] [float] NULL,
	[ben_persons_phys_active_coc_race] [float] NULL,
	[diff_persons_phys_active_coc_age] [float] NULL,
	[ben_persons_phys_active_coc_age] [float] NULL,
	[diff_persons_phys_active_coc_poverty] [float] NULL,
	[ben_persons_phys_active_coc_poverty] [float] NULL,
	[ben_autos_owned_coc_race] [float] NULL,
	[ben_autos_owned_coc_age] [float] NULL,
	[ben_autos_owned_coc_poverty] [float] NULL,
	[ben_tt_at_commute_coc_race] [float] NULL,
	[ben_tt_auto_commute_coc_race] [float] NULL,
	[ben_tt_transit_commute_coc_race] [float] NULL,
	[ben_tt_at_noncommute_coc_race] [float] NULL,
	[ben_tt_auto_noncommute_coc_race] [float] NULL,
	[ben_tt_transit_noncommute_coc_race] [float] NULL,
	[ben_tt_at_commute_coc_age] [float] NULL,
	[ben_tt_auto_commute_coc_age] [float] NULL,
	[ben_tt_transit_commute_coc_age] [float] NULL,
	[ben_tt_at_noncommute_coc_age] [float] NULL,
	[ben_tt_auto_noncommute_coc_age] [float] NULL,
	[ben_tt_transit_noncommute_coc_age] [float] NULL,
	[ben_tt_at_commute_coc_poverty] [float] NULL,
	[ben_tt_auto_commute_coc_poverty] [float] NULL,
	[ben_tt_transit_commute_coc_poverty] [float] NULL,
	[ben_tt_at_noncommute_coc_poverty] [float] NULL,
	[ben_tt_auto_noncommute_coc_poverty] [float] NULL,
	[ben_tt_transit_noncommute_coc_poverty] [float] NULL,
	[persons] [int] NULL,
	[persons_coc] [int] NULL,
	[persons_coc_race] [int] NULL,
	[persons_coc_age] [int] NULL,
	[persons_coc_poverty] [int] NULL,
	[base_rel_cost] [float] NULL,
	[build_rel_cost] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[regress_scenario_summary]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regress_scenario_summary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[scenario_id] [int] NOT NULL,
	[analysis_id] [int] NOT NULL,
	[scenario_year] [int] NOT NULL,
	[tot_tt_auto_commute] [float] NOT NULL,
	[tot_tt_auto_noncommute] [float] NOT NULL,
	[tot_tt_transit_commute] [float] NOT NULL,
	[tot_tt_transit_noncommute] [float] NOT NULL,
	[tot_tt_comm] [float] NOT NULL,
	[tot_tt_truck] [float] NOT NULL,
	[rel_cost_auto] [float] NOT NULL,
	[rel_cost_trk_lht] [float] NOT NULL,
	[rel_cost_trk_med] [float] NOT NULL,
	[rel_cost_trk_hvy] [float] NOT NULL,
	[op_cost_auto] [float] NOT NULL,
	[op_cost_trk_lht] [float] NOT NULL,
	[op_cost_trk_med] [float] NOT NULL,
	[op_cost_trk_hvy] [float] NOT NULL,
	[crash_cost_pdo_tot] [float] NOT NULL,
	[crash_cost_inj_tot] [float] NOT NULL,
	[crash_cost_fat_tot] [float] NOT NULL,
	[autos_owned_tot] [int] NOT NULL,
	[autos_owned_coc] [int] NOT NULL,
	[persons_phys_active_tot] [int] NOT NULL,
	[persons_phys_active_coc] [int] NOT NULL,
	[tot_co] [float] NOT NULL,
	[tot_co2] [float] NOT NULL,
	[tot_pm25] [float] NOT NULL,
	[tot_pm10] [float] NOT NULL,
	[tot_nox] [float] NOT NULL,
	[tot_rogs] [float] NOT NULL,
	[tot_so2] [float] NOT NULL,
	[last_update_date] [date] NOT NULL,
	[persons_phys_active_coc_poverty] [int] NOT NULL,
	[persons_phys_active_coc_age] [int] NOT NULL,
	[persons_phys_active_coc_race] [int] NOT NULL,
	[autos_owned_coc_race] [int] NOT NULL,
	[autos_owned_coc_age] [int] NOT NULL,
	[autos_owned_coc_poverty] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scenario_comparison]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scenario_comparison](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[analysis_id] [int] NOT NULL,
	[scenario_year] [int] NOT NULL,
	[scenario_id_base] [int] NOT NULL,
	[scenario_id_build] [int] NOT NULL,
	[vot_commute] [float] NULL,
	[vot_noncommute] [float] NULL,
	[vot_work] [float] NULL,
	[vot_truck_light] [float] NULL,
	[vot_truck_medium] [float] NULL,
	[vot_truck_heavy] [float] NULL,
	[vor_auto] [float] NULL,
	[vor_work] [float] NULL,
	[vor_truck_light] [float] NULL,
	[vor_truck_medium] [float] NULL,
	[vor_truck_heavy] [float] NULL,
	[vot_uniform] [float] NULL,
	[ovt_weight] [float] NULL,
	[ovt_time_multiplier] [float] NULL,
	[voc_auto] [float] NULL,
	[voc_truck_light] [float] NULL,
	[voc_truck_medium] [float] NULL,
	[voc_truck_heavy] [float] NULL,
	[aoc_auto] [float] NULL,
	[phys_activity_threshold] [float] NULL,
	[cost_phys_activ] [float] NULL,
	[crash_rate_fatal] [float] NULL,
	[crash_rate_injury] [float] NULL,
	[crash_rate_pdo] [float] NULL,
	[crash_fatal_cost] [float] NULL,
	[crash_injury_cost] [float] NULL,
	[crash_pdo_cost] [float] NULL,
	[co2_value] [float] NULL,
	[pm2_5_value] [float] NULL,
	[nox_value] [float] NULL,
	[rog_value] [float] NULL,
	[so2_value] [float] NULL,
	[co_value] [float] NULL,
	[pm10_value] [float] NULL,
	[rate_inflation] [float] NULL,
	[rate_discount] [float] NULL,
	[coc_age_thresh] [int] NULL,
	[coc_race_thresh] [int] NULL,
	[coc_hinc_thresh] [int] NULL,
	[coc_poverty_thresh] [float] NULL,
	[coc_hisp_thresh] [int] NULL,
	[rel_ratio] [float] NULL,
	[toll_auto_commute_base] [float] NULL,
	[toll_auto_commute_build] [float] NULL,
	[toll_auto_commute_base_coc] [float] NULL,
	[toll_auto_commute_build_coc] [float] NULL,
	[ben_tt_auto_commute] [float] NULL,
	[ben_tt_equity_auto_commute] [float] NULL,
	[ben_tt_auto_commute_coc] [float] NULL,
	[ben_tt_equity_auto_commute_coc] [float] NULL,
	[toll_auto_noncommute_base] [float] NULL,
	[toll_auto_noncommute_build] [float] NULL,
	[toll_auto_noncommute_base_coc] [float] NULL,
	[toll_auto_noncommute_build_coc] [float] NULL,
	[ben_tt_auto_noncommute] [float] NULL,
	[ben_tt_equity_auto_noncommute] [float] NULL,
	[ben_tt_auto_noncommute_coc] [float] NULL,
	[ben_tt_equity_auto_noncommute_coc] [float] NULL,
	[fare_transit_commute_base] [float] NULL,
	[fare_transit_commute_build] [float] NULL,
	[fare_transit_commute_base_coc] [float] NULL,
	[fare_transit_commute_build_coc] [float] NULL,
	[ben_tt_transit_commute] [float] NULL,
	[ben_tt_equity_transit_commute] [float] NULL,
	[ben_tt_transit_commute_coc] [float] NULL,
	[ben_tt_equity_transit_commute_coc] [float] NULL,
	[fare_transit_noncommute_base] [float] NULL,
	[fare_transit_noncommute_build] [float] NULL,
	[fare_transit_noncommute_base_coc] [float] NULL,
	[fare_transit_noncommute_build_coc] [float] NULL,
	[ben_tt_transit_noncommute] [float] NULL,
	[ben_tt_equity_transit_noncommute] [float] NULL,
	[ben_tt_transit_noncommute_coc] [float] NULL,
	[ben_tt_equity_transit_noncommute_coc] [float] NULL,
	[ben_tt_at_commute] [float] NULL,
	[ben_tt_equity_at_commute] [float] NULL,
	[ben_tt_at_noncommute] [float] NULL,
	[ben_tt_equity_at_noncommute] [float] NULL,
	[ben_tt_at_commute_coc] [float] NULL,
	[ben_tt_equity_at_commute_coc] [float] NULL,
	[ben_tt_at_noncommute_coc] [float] NULL,
	[ben_tt_equity_at_noncommute_coc] [float] NULL,
	[diff_tt_auto_commute] [float] NULL,
	[diff_tt_auto_noncommute] [float] NULL,
	[diff_tt_transit_commute] [float] NULL,
	[diff_tt_transit_noncommute] [float] NULL,
	[diff_toll_commercial] [float] NULL,
	[diff_toll_truck] [float] NULL,
	[ben_tt_comm] [float] NULL,
	[ben_tt_truck] [float] NULL,
	[diff_reliability] [float] NULL,
	[ben_reliability] [float] NULL,
	[diff_autos_owned] [int] NULL,
	[ben_autos_owned] [float] NULL,
	[diff_autos_owned_coc] [int] NULL,
	[ben_autos_owned_coc] [float] NULL,
	[diff_persons_phys_active] [int] NULL,
	[ben_persons_phys_active] [float] NULL,
	[diff_persons_phys_active_coc] [int] NULL,
	[ben_persons_phys_active_coc] [float] NULL,
	[diff_co2] [int] NULL,
	[diff_pm25] [int] NULL,
	[diff_nox] [int] NULL,
	[diff_rogs] [int] NULL,
	[diff_so2] [int] NULL,
	[diff_co] [int] NULL,
	[diff_pm10] [int] NULL,
	[ben_co2] [float] NULL,
	[ben_pm25] [float] NULL,
	[ben_nox] [float] NULL,
	[ben_rogs] [float] NULL,
	[ben_so2] [float] NULL,
	[ben_co] [float] NULL,
	[ben_pm10] [float] NULL,
	[ben_voc_auto] [float] NULL,
	[ben_voc_truck_lht] [float] NULL,
	[ben_voc_truck_med] [float] NULL,
	[ben_voc_truck_hvy] [float] NULL,
	[ben_relcost_auto] [float] NULL,
	[ben_relcost_truck_lht] [float] NULL,
	[ben_relcost_truck_med] [float] NULL,
	[ben_relcost_truck_hvy] [float] NULL,
	[ben_crashcost_pdo] [float] NULL,
	[ben_crashcost_inj] [float] NULL,
	[ben_crashcost_fat] [float] NULL,
	[toll_comm_base] [float] NULL,
	[toll_truck_base] [float] NULL,
	[toll_comm_build] [float] NULL,
	[toll_truck_build] [float] NULL,
	[last_update_date] [date] NOT NULL,
	[base_tt_comm] [float] NULL,
	[build_tt_comm] [float] NULL,
	[base_tt_truck] [float] NULL,
	[build_tt_truck] [float] NULL,
	[base_tt_person] [float] NULL,
	[build_tt_person] [float] NULL,
	[base_cost_persons_phys_active] [float] NULL,
	[build_cost_persons_phys_active] [float] NULL,
	[base_cost_autos_owned] [float] NULL,
	[build_cost_autos_owned] [float] NULL,
	[diff_persons_phys_active_coc_race] [float] NULL,
	[ben_persons_phys_active_coc_race] [float] NULL,
	[diff_persons_phys_active_coc_age] [float] NULL,
	[ben_persons_phys_active_coc_age] [float] NULL,
	[diff_persons_phys_active_coc_poverty] [float] NULL,
	[ben_persons_phys_active_coc_poverty] [float] NULL,
	[ben_autos_owned_coc_race] [float] NULL,
	[ben_autos_owned_coc_age] [float] NULL,
	[ben_autos_owned_coc_poverty] [float] NULL,
	[ben_tt_at_commute_coc_race] [float] NULL,
	[ben_tt_auto_commute_coc_race] [float] NULL,
	[ben_tt_transit_commute_coc_race] [float] NULL,
	[ben_tt_at_noncommute_coc_race] [float] NULL,
	[ben_tt_auto_noncommute_coc_race] [float] NULL,
	[ben_tt_transit_noncommute_coc_race] [float] NULL,
	[ben_tt_at_commute_coc_age] [float] NULL,
	[ben_tt_auto_commute_coc_age] [float] NULL,
	[ben_tt_transit_commute_coc_age] [float] NULL,
	[ben_tt_at_noncommute_coc_age] [float] NULL,
	[ben_tt_auto_noncommute_coc_age] [float] NULL,
	[ben_tt_transit_noncommute_coc_age] [float] NULL,
	[ben_tt_at_commute_coc_poverty] [float] NULL,
	[ben_tt_auto_commute_coc_poverty] [float] NULL,
	[ben_tt_transit_commute_coc_poverty] [float] NULL,
	[ben_tt_at_noncommute_coc_poverty] [float] NULL,
	[ben_tt_auto_noncommute_coc_poverty] [float] NULL,
	[ben_tt_transit_noncommute_coc_poverty] [float] NULL,
	[persons] [int] NULL,
	[persons_coc] [int] NULL,
	[persons_coc_race] [int] NULL,
	[persons_coc_age] [int] NULL,
	[persons_coc_poverty] [int] NULL,
	[base_rel_cost] [float] NULL,
	[build_rel_cost] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uc_scenario_comparison] UNIQUE NONCLUSTERED 
(
	[analysis_id] ASC,
	[scenario_year] ASC,
	[scenario_id_base] ASC,
	[scenario_id_build] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scenario_summary]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scenario_summary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[scenario_id] [int] NOT NULL,
	[analysis_id] [int] NOT NULL,
	[scenario_year] [int] NOT NULL,
	[tot_tt_auto_commute] [float] NOT NULL,
	[tot_tt_auto_noncommute] [float] NOT NULL,
	[tot_tt_transit_commute] [float] NOT NULL,
	[tot_tt_transit_noncommute] [float] NOT NULL,
	[tot_tt_comm] [float] NOT NULL,
	[tot_tt_truck] [float] NOT NULL,
	[rel_cost_auto] [float] NOT NULL,
	[rel_cost_trk_lht] [float] NOT NULL,
	[rel_cost_trk_med] [float] NOT NULL,
	[rel_cost_trk_hvy] [float] NOT NULL,
	[op_cost_auto] [float] NOT NULL,
	[op_cost_trk_lht] [float] NOT NULL,
	[op_cost_trk_med] [float] NOT NULL,
	[op_cost_trk_hvy] [float] NOT NULL,
	[crash_cost_pdo_tot] [float] NOT NULL,
	[crash_cost_inj_tot] [float] NOT NULL,
	[crash_cost_fat_tot] [float] NOT NULL,
	[autos_owned_tot] [int] NOT NULL,
	[autos_owned_coc] [int] NOT NULL,
	[persons_phys_active_tot] [int] NOT NULL,
	[persons_phys_active_coc] [int] NOT NULL,
	[tot_co] [float] NOT NULL,
	[tot_co2] [float] NOT NULL,
	[tot_pm25] [float] NOT NULL,
	[tot_pm10] [float] NOT NULL,
	[tot_nox] [float] NOT NULL,
	[tot_rogs] [float] NOT NULL,
	[tot_so2] [float] NOT NULL,
	[last_update_date] [date] NOT NULL,
	[persons_phys_active_coc_poverty] [int] NOT NULL,
	[persons_phys_active_coc_age] [int] NOT NULL,
	[persons_phys_active_coc_race] [int] NOT NULL,
	[autos_owned_coc_race] [int] NOT NULL,
	[autos_owned_coc_age] [int] NOT NULL,
	[autos_owned_coc_poverty] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uc_scenario_summary] UNIQUE NONCLUSTERED 
(
	[scenario_id] ASC,
	[analysis_id] ASC,
	[scenario_year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[time_period_xref]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[time_period_xref](
	[res2_time_period_id] [int] NOT NULL,
	[res1_time_period_id] [int] NOT NULL,
 CONSTRAINT [pk_timeperiod_xref] PRIMARY KEY CLUSTERED 
(
	[res2_time_period_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[analysis] ADD  DEFAULT ((2010)) FOR [year_reference]
GO
ALTER TABLE [dbo].[analysis] ADD  DEFAULT ((2010)) FOR [year_start]
GO
ALTER TABLE [dbo].[analysis] ADD  DEFAULT ((2080)) FOR [year_end]
GO
ALTER TABLE [dbo].[analysis] ADD  DEFAULT ((0.0)) FOR [rate_inflation]
GO
ALTER TABLE [dbo].[analysis] ADD  DEFAULT ((0.015)) FOR [rate_discount]
GO
ALTER TABLE [dbo].[analysis] ADD  DEFAULT ((250)) FOR [annualization_factor]
GO
ALTER TABLE [dbo].[analysis] ADD  DEFAULT ((1.0)) FOR [annual_vot_growth]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((11.39)) FOR [vot_commute]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((11.39)) FOR [vot_noncommute]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((30)) FOR [vot_work]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((30)) FOR [vot_truck_light]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((30)) FOR [vot_truck_medium]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((43.2)) FOR [vot_truck_heavy]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((8)) FOR [vor_auto]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((30)) FOR [vor_work]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((30)) FOR [vor_truck_light]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((30)) FOR [vor_truck_medium]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((43.2)) FOR [vor_truck_heavy]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((2.2)) FOR [ovt_weight]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((2.2)) FOR [ovt_time_multiplier]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((0.263)) FOR [voc_auto]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((0.346)) FOR [voc_truck_light]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((0.346)) FOR [voc_truck_medium]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((0.346)) FOR [voc_truck_heavy]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((5900)) FOR [aoc_auto]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((22)) FOR [phys_activity_threshold]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((1100)) FOR [cost_phys_activ]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((0.0000017682)) FOR [crash_rate_fatal]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((0.000075332)) FOR [crash_rate_injury]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((0.0001059900)) FOR [crash_rate_pdo]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((8640000)) FOR [crash_fatal_cost]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((406200)) FOR [crash_injury_cost]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((9550)) FOR [crash_pdo_cost]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((51.81)) FOR [co2_value]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((459000)) FOR [pm2_5_value]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((139900)) FOR [pm10_value]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((73000)) FOR [nox_value]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((6365)) FOR [rog_value]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((37900)) FOR [so2_value]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((75)) FOR [co_value]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((139900)) FOR [pm_10_value]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((0.000)) FOR [rate_inflation]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((0.015)) FOR [rate_discount]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((75)) FOR [coc_age_thresh]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((1)) FOR [coc_race_thresh]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((20000)) FOR [coc_hinc_thresh]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((2)) FOR [coc_poverty_thresh]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((1)) FOR [coc_hisp_thresh]
GO
ALTER TABLE [dbo].[analysis_parameters] ADD  DEFAULT ((1)) FOR [rel_ratio]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_co]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_co2]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_nox]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_pm10]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_pm25]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_rogs]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_so2]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_autos_owned_coc]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_autos_owned]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_crashcost_fat]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_crashcost_inj]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_crashcost_pdo]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_persons_phys_active_coc]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_persons_phys_active]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_relcost_auto]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_relcost_truck_hvy]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_relcost_truck_lht]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_relcost_truck_med]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_at_commute]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_auto_commute]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_transit_commute]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_at_noncommute]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_auto_noncommute]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_transit_noncommute]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_at_commute_coc]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_auto_commute_coc]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_transit_commute_coc]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_at_noncommute_coc]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_auto_noncommute_coc]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_transit_noncommute_coc]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_comm]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_tt_truck]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_voc_auto]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_voc_truck_lht]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_voc_truck_med]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [ben_voc_truck_hvy]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [toll_rev_base]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [toll_rev_build]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [fare_rev_base]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  DEFAULT ((0.0)) FOR [fare_rev_build]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_multiyear_results_ratio_tt_person]  DEFAULT ((1.0)) FOR [ratio_tt_person]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_multiyear_results_ratio_tt_truck_comm]  DEFAULT ((1.0)) FOR [ratio_tt_truck_comm]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_autos_owned_coc_race]  DEFAULT ((0.0)) FOR [ben_autos_owned_coc_race]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_autos_owned_coc_age]  DEFAULT ((0.0)) FOR [ben_autos_owned_coc_age]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_autos_owned_coc_poverty]  DEFAULT ((0.0)) FOR [ben_autos_owned_coc_poverty]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_persons_phys_active_coc_race]  DEFAULT ((0.0)) FOR [ben_persons_phys_active_coc_race]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_persons_phys_active_coc_age]  DEFAULT ((0.0)) FOR [ben_persons_phys_active_coc_age]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_persons_phys_active_coc_poverty]  DEFAULT ((0.0)) FOR [ben_persons_phys_active_coc_poverty]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_at_commute_coc_race]  DEFAULT ((0.0)) FOR [ben_tt_at_commute_coc_race]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_at_commute_coc_age]  DEFAULT ((0.0)) FOR [ben_tt_at_commute_coc_age]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_at_commute_coc_poverty]  DEFAULT ((0.0)) FOR [ben_tt_at_commute_coc_poverty]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_auto_commute_coc_race]  DEFAULT ((0.0)) FOR [ben_tt_auto_commute_coc_race]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_auto_commute_coc_age]  DEFAULT ((0.0)) FOR [ben_tt_auto_commute_coc_age]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_auto_commute_coc_poverty]  DEFAULT ((0.0)) FOR [ben_tt_auto_commute_coc_poverty]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_transit_commute_coc_race]  DEFAULT ((0.0)) FOR [ben_tt_transit_commute_coc_race]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_transit_commute_coc_age]  DEFAULT ((0.0)) FOR [ben_tt_transit_commute_coc_age]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_transit_commute_coc_poverty]  DEFAULT ((0.0)) FOR [ben_tt_transit_commute_coc_poverty]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_subtotal_ben_tt_commute_coc_race]  DEFAULT ((0.0)) FOR [subtotal_ben_tt_commute_coc_race]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_subtotal_ben_tt_commute_coc_age]  DEFAULT ((0.0)) FOR [subtotal_ben_tt_commute_coc_age]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_subtotal_ben_tt_commute_coc_poverty]  DEFAULT ((0.0)) FOR [subtotal_ben_tt_commute_coc_poverty]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_at_noncommute_coc_race]  DEFAULT ((0.0)) FOR [ben_tt_at_noncommute_coc_race]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_at_noncommute_coc_age]  DEFAULT ((0.0)) FOR [ben_tt_at_noncommute_coc_age]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_at_noncommute_coc_poverty]  DEFAULT ((0.0)) FOR [ben_tt_at_noncommute_coc_poverty]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_auto_noncommute_coc_race]  DEFAULT ((0.0)) FOR [ben_tt_auto_noncommute_coc_race]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_auto_noncommute_coc_age]  DEFAULT ((0.0)) FOR [ben_tt_auto_noncommute_coc_age]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_auto_noncommute_coc_poverty]  DEFAULT ((0.0)) FOR [ben_tt_auto_noncommute_coc_poverty]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_transit_noncommute_coc_race]  DEFAULT ((0.0)) FOR [ben_tt_transit_noncommute_coc_race]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_transit_noncommute_coc_age]  DEFAULT ((0.0)) FOR [ben_tt_transit_noncommute_coc_age]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_ben_tt_transit_noncommute_coc_poverty]  DEFAULT ((0.0)) FOR [ben_tt_transit_noncommute_coc_poverty]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_subtotal_ben_tt_noncommute_coc_race]  DEFAULT ((0.0)) FOR [subtotal_ben_tt_noncommute_coc_race]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_subtotal_ben_tt_noncommute_coc_age]  DEFAULT ((0.0)) FOR [subtotal_ben_tt_noncommute_coc_age]
GO
ALTER TABLE [dbo].[multiyear_results] ADD  CONSTRAINT [DF_subtotal_ben_tt_noncommute_coc_poverty]  DEFAULT ((0.0)) FOR [subtotal_ben_tt_noncommute_coc_poverty]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((2010)) FOR [scenario_year]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((12.02)) FOR [vot_commute]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((6.01)) FOR [vot_noncommute]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vot_work]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vot_truck_light]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vot_truck_medium]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((43.20)) FOR [vot_truck_heavy]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((8.00)) FOR [vor_auto]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vor_work]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vor_truck_light]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vor_truck_medium]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((43.20)) FOR [vor_truck_heavy]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((2.2)) FOR [ovt_time_multiplier]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((0.263)) FOR [voc_auto]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((0.346)) FOR [voc_truck_light]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((0.346)) FOR [voc_truck_medium]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((0.346)) FOR [voc_truck_heavy]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((5900)) FOR [aoc_auto]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((22)) FOR [phys_activity_threshold]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((1100)) FOR [cost_phys_activ]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((0.0000017682)) FOR [crash_rate_fatal]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((0.000075332)) FOR [crash_rate_injury]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((0.0001059900)) FOR [crash_rate_pdo]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((8640000)) FOR [crash_fatal_cost]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((406200)) FOR [crash_injury_cost]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((9550)) FOR [crash_pdo_cost]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((51.81)) FOR [co2_value]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((459000)) FOR [pm2_5_value]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((7300)) FOR [nox_value]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((6365)) FOR [rog_value]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((37900)) FOR [so2_value]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((1000)) FOR [co_value]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((500)) FOR [pm10_value]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((0.000)) FOR [rate_inflation]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((0.015)) FOR [rate_discount]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((75)) FOR [coc_age_thresh]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((1)) FOR [coc_race_thresh]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((20000)) FOR [coc_hinc_thresh]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((2)) FOR [coc_poverty_thresh]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((1)) FOR [coc_hisp_thresh]
GO
ALTER TABLE [dbo].[regress_scenario_comparison] ADD  DEFAULT ((1)) FOR [rel_ratio]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_auto_commute]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_auto_noncommute]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_transit_commute]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_transit_noncommute]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_comm]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_truck]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [rel_cost_auto]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [rel_cost_trk_lht]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [rel_cost_trk_med]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [rel_cost_trk_hvy]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [op_cost_auto]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [op_cost_trk_lht]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [op_cost_trk_med]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [op_cost_trk_hvy]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [crash_cost_pdo_tot]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [crash_cost_inj_tot]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [crash_cost_fat_tot]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((1)) FOR [autos_owned_tot]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((1)) FOR [autos_owned_coc]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0)) FOR [persons_phys_active_tot]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0)) FOR [persons_phys_active_coc]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_co]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_co2]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_pm25]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_pm10]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_nox]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_rogs]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_so2]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0)) FOR [persons_phys_active_coc_poverty]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0)) FOR [persons_phys_active_coc_age]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((0)) FOR [persons_phys_active_coc_race]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((1)) FOR [autos_owned_coc_race]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((1)) FOR [autos_owned_coc_age]
GO
ALTER TABLE [dbo].[regress_scenario_summary] ADD  DEFAULT ((1)) FOR [autos_owned_coc_poverty]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((2010)) FOR [scenario_year]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((12.02)) FOR [vot_commute]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((6.01)) FOR [vot_noncommute]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vot_work]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vot_truck_light]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vot_truck_medium]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((43.20)) FOR [vot_truck_heavy]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((8.00)) FOR [vor_auto]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vor_work]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vor_truck_light]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((30.00)) FOR [vor_truck_medium]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((43.20)) FOR [vor_truck_heavy]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((2.2)) FOR [ovt_time_multiplier]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((0.263)) FOR [voc_auto]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((0.346)) FOR [voc_truck_light]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((0.346)) FOR [voc_truck_medium]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((0.346)) FOR [voc_truck_heavy]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((5900)) FOR [aoc_auto]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((22)) FOR [phys_activity_threshold]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((1100)) FOR [cost_phys_activ]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((0.0000017682)) FOR [crash_rate_fatal]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((0.000075332)) FOR [crash_rate_injury]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((0.0001059900)) FOR [crash_rate_pdo]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((8640000)) FOR [crash_fatal_cost]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((406200)) FOR [crash_injury_cost]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((9550)) FOR [crash_pdo_cost]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((51.81)) FOR [co2_value]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((459000)) FOR [pm2_5_value]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((7300)) FOR [nox_value]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((6365)) FOR [rog_value]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((37900)) FOR [so2_value]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((1000)) FOR [co_value]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((500)) FOR [pm10_value]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((0.000)) FOR [rate_inflation]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((0.015)) FOR [rate_discount]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((75)) FOR [coc_age_thresh]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((1)) FOR [coc_race_thresh]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((20000)) FOR [coc_hinc_thresh]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((2)) FOR [coc_poverty_thresh]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((1)) FOR [coc_hisp_thresh]
GO
ALTER TABLE [dbo].[scenario_comparison] ADD  DEFAULT ((1)) FOR [rel_ratio]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_auto_commute]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_auto_noncommute]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_transit_commute]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_transit_noncommute]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_comm]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_tt_truck]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [rel_cost_auto]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [rel_cost_trk_lht]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [rel_cost_trk_med]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [rel_cost_trk_hvy]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [op_cost_auto]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [op_cost_trk_lht]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [op_cost_trk_med]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [op_cost_trk_hvy]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [crash_cost_pdo_tot]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [crash_cost_inj_tot]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [crash_cost_fat_tot]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((1)) FOR [autos_owned_tot]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((1)) FOR [autos_owned_coc]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0)) FOR [persons_phys_active_tot]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0)) FOR [persons_phys_active_coc]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_co]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_co2]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_pm25]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_pm10]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_nox]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_rogs]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  DEFAULT ((0.0)) FOR [tot_so2]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  CONSTRAINT [DF_scenario_summary_persons_phys_active_coc_poverty]  DEFAULT ((0)) FOR [persons_phys_active_coc_poverty]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  CONSTRAINT [DF_scenario_summary_persons_phys_active_coc_age]  DEFAULT ((0)) FOR [persons_phys_active_coc_age]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  CONSTRAINT [DF_scenario_summary_persons_phys_active_coc_race]  DEFAULT ((0)) FOR [persons_phys_active_coc_race]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  CONSTRAINT [DF_scenario_summary_autos_owned_coc_race]  DEFAULT ((1)) FOR [autos_owned_coc_race]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  CONSTRAINT [DF_scenario_summary_autos_owned_coc_age]  DEFAULT ((1)) FOR [autos_owned_coc_age]
GO
ALTER TABLE [dbo].[scenario_summary] ADD  CONSTRAINT [DF_scenario_summary_autos_owned_coc_poverty]  DEFAULT ((1)) FOR [autos_owned_coc_poverty]
GO
ALTER TABLE [dbo].[analysis_parameters]  WITH CHECK ADD  CONSTRAINT [FK_analysis_analysis_parameters] FOREIGN KEY([analysis_id])
REFERENCES [dbo].[analysis] ([id])
GO
ALTER TABLE [dbo].[analysis_parameters] CHECK CONSTRAINT [FK_analysis_analysis_parameters]
GO
ALTER TABLE [dbo].[multiyear_final_results]  WITH CHECK ADD FOREIGN KEY([analysis_id])
REFERENCES [dbo].[analysis] ([id])
GO
ALTER TABLE [dbo].[multiyear_results]  WITH CHECK ADD FOREIGN KEY([analysis_id])
REFERENCES [dbo].[analysis] ([id])
GO
ALTER TABLE [dbo].[scenario_comparison]  WITH CHECK ADD FOREIGN KEY([analysis_id])
REFERENCES [dbo].[analysis] ([id])
GO
ALTER TABLE [dbo].[scenario_summary]  WITH CHECK ADD FOREIGN KEY([analysis_id])
REFERENCES [dbo].[analysis] ([id])
GO
/****** Object:  StoredProcedure [dbo].[create_abm_synonyms]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

create proc [dbo].[create_abm_synonyms]
	with execute as caller
as	
BEGIN

	IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'bca_abm')
	BEGIN
		-- use EXEC because TSQL requires the CREATE SCHEMA statement to be in its own batch
		EXEC ('CREATE SCHEMA bca_abm')
	END

	CREATE SYNONYM bca_abm.hwy_skims FOR abm_13_2_3.abm.hwy_skims;
	CREATE SYNONYM bca_abm.trip_agg FOR abm_13_2_3.abm.trip_agg;
	CREATE SYNONYM bca_abm.hh FOR abm_13_2_3.abm.lu_hh;
	CREATE SYNONYM bca_abm.person FOR abm_13_2_3.abm.lu_person;
	CREATE SYNONYM bca_abm.trip_ij FOR abm_13_2_3.abm.trip_ij;
	CREATE SYNONYM bca_abm.tour_ij_person FOR abm_13_2_3.abm.tour_ij_person;
	CREATE SYNONYM bca_abm.transit_tap_walk FOR abm_13_2_3.abm.transit_tap_walk;
	CREATE SYNONYM bca_abm.tour_ij FOR abm_13_2_3.abm.tour_ij;
	CREATE SYNONYM bca_abm.lu_mgra_input FOR abm_13_2_3.abm.lu_mgra_input;
	CREATE SYNONYM bca_abm.transit_tap_skims FOR abm_13_2_3.abm.transit_tap_skims;
	CREATE SYNONYM bca_abm.at_skims FOR abm_13_2_3.abm.at_skims;
	CREATE SYNONYM bca_abm.hwy_flow FOR abm_13_2_3.abm.hwy_flow;
	CREATE SYNONYM bca_abm.hwy_flow_mode FOR abm_13_2_3.abm.hwy_flow_mode;
	CREATE SYNONYM bca_abm.hwy_link_ab_tod FOR abm_13_2_3.abm.hwy_link_ab_tod;
	CREATE SYNONYM bca_abm.hwy_link FOR abm_13_2_3.abm.hwy_link;
	CREATE SYNONYM bca_abm.hwy_link_ab FOR abm_13_2_3.abm.hwy_link_ab;
	CREATE SYNONYM bca_abm.mgra13_xref_taz13 FOR abm_13_2_3.ref.mgra13_xref_taz13;

	CREATE SYNONYM bca_abm.purpose FOR abm_13_2_3.ref.purpose;
	
	-- note that we are using a local table in bca instead of in abm because old abm emissions table has gone walkabout
	CREATE SYNONYM bca_abm.emissions FOR dbo.emissions;
	CREATE SYNONYM bca_abm.time_period_xref FOR dbo.time_period_xref;
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[drop_synonyms]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

create proc [dbo].[drop_synonyms]
	with execute as caller
as	
BEGIN
	set nocount on;

	IF OBJECT_ID('bca_abm.hh', 'sn') IS NOT NULL
		DROP SYNONYM bca_abm.hh;

	IF OBJECT_ID('bca_abm.person', 'sn') IS NOT NULL
		DROP SYNONYM bca_abm.person;

	IF OBJECT_ID('bca_abm.hwy_skims', 'sn') IS NOT NULL
		DROP SYNONYM bca_abm.hwy_skims;

	IF OBJECT_ID('bca_abm.trip_agg', 'sn') IS NOT NULL
		DROP SYNONYM bca_abm.trip_agg;

  	IF OBJECT_ID('bca_abm.trip_ij', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.trip_ij;

  	IF OBJECT_ID('bca_abm.tour_ij_person', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.tour_ij_person;

  	IF OBJECT_ID('bca_abm.transit_tap_walk', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.transit_tap_walk;

  	IF OBJECT_ID('bca_abm.hwy_flow', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.hwy_flow;

  	IF OBJECT_ID('bca_abm.hwy_flow_mode', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.hwy_flow_mode;

  	IF OBJECT_ID('bca_abm.hwy_link_ab_tod', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.hwy_link_ab_tod;

  	IF OBJECT_ID('bca_abm.hwy_link', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.hwy_link;
  		
  	IF OBJECT_ID('bca_abm.hwy_link_ab', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.hwy_link_ab;
  	
  	IF OBJECT_ID('bca_abm.tour_ij', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.tour_ij;

  	IF OBJECT_ID('bca_abm.lu_mgra_input', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.lu_mgra_input;

  	IF OBJECT_ID('bca_abm.mgra13_xref_taz13', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.mgra13_xref_taz13;

  	IF OBJECT_ID('bca_abm.transit_tap_skims', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.transit_tap_skims;

  	IF OBJECT_ID('bca_abm.at_skims', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.at_skims;

 		
  	IF OBJECT_ID('bca_abm.emissions', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.emissions;

  	IF OBJECT_ID('bca_abm.time_period_xref', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.time_period_xref;

  	IF OBJECT_ID('bca_abm.purpose', 'sn') IS NOT NULL
  		DROP SYNONYM bca_abm.purpose;
  		
	IF EXISTS (SELECT * FROM sys.schemas WHERE name = 'bca_abm')
	BEGIN
		-- use EXEC because TSQL requires the CREATE SCHEMA statement to be in its own batch
		EXEC ('DROP SCHEMA bca_abm')
	END

END

GO
/****** Object:  StoredProcedure [dbo].[load_analysis_parameters_and_run_analysis_full]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[load_analysis_parameters_and_run_analysis_full]
(
 @scenario_id SMALLINT
)
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;
DECLARE @overall_start_date DATETIME = GETDATE();

DECLARE @scenario_year SMALLINT;

SELECT @scenario_year = scenario_year        
FROM bca_abm.scenario        
WHERE scenario_id = @scenario_id;  

IF @@ROWCOUNT = 0
BEGIN
	PRINT 'load_analysis_parameters_and_run_analysis_full: bca_abm.scenario table does not contain requested @scenario_id: ' + CAST(@scenario_id AS VARCHAR);
	RAISERROR ('',16,1)	WITH NOWAIT;
	RETURN -1
END

PRINT 'Started load_analysis_parameters_and_run_analysis_full(@scenario_id: ' + CAST(@scenario_id AS VARCHAR) + ', @scenario_year: ' + CAST(@scenario_year AS VARCHAR) + ') at ' + 
	CONVERT(VARCHAR, @overall_start_date, 114);
RAISERROR ('',10,1)	WITH NOWAIT;

/* insert  dbo.finance.netcosts data. This often fails because the 
primary key (bca_id, cost_id, year) already matches but we don't care and catch and ignore.
Note bca_id is the same as analysis_id  */
BEGIN TRY
	BULK INSERT [finance.netcosts]
	/*
	FROM '\\sandag.org\Transdata\rtp\2015rtp\sdf_final\analysis\bca_finance_netcosts.csv'
	FROM '\\NASB8\Shared\Technical Services\Economics\BCA Aug 2015\BCADatabase_Ref_Scripts\bca_finance_netcosts.csv'
	*/
	FROM '\\hana\Transdata\data\bca_inputs\bca_finance_netcosts.csv'
	WITH( FIELDTERMINATOR = ',', firstrow = 2,ROWTERMINATOR = '0x0a')
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() as ErrorLine, ERROR_PROCEDURE() as ErrorProcedure;
	PRINT 'load_analysis_parameters_and_run_analysis_full: BULK INSERT of bca_finance_netcosts.csv failed but that is acceptable';
	RAISERROR ('',10,1)	WITH NOWAIT;
END CATCH;

/* delete if exists because analysis_parameters could have changed since last use */
DROP TABLE IF EXISTS analysis_parameters_new;

/* make an empty table like analysis_parameters */
SELECT *  INTO analysis_parameters_new
FROM analysis_parameters 
WHERE 1=0;

BULK INSERT analysis_parameters_new
/*
FROM '\\sandag.org\Transdata\rtp\2015rtp\sdf_final\analysis\bca_analysis_p.csv'
FROM '\\NASB8\Shared\Technical Services\Economics\BCA Aug 2015\BCADatabase_Ref_Scripts\bca_analysis_p.csv'
*/
FROM '\\hana\Transdata\data\bca_inputs\bca_analysis_p.csv'
WITH( FIELDTERMINATOR = ',', firstrow = 2,ROWTERMINATOR = '0x0a')

/* delete the identity column so will be able to
copy records easily into analysis_parameters */
ALTER TABLE analysis_parameters_new
DROP COLUMN id;

/* replace any negative scenario ids matching year with the newly loaded scenario id */
UPDATE analysis_parameters_new 
SET scenario_id_base = @scenario_id
WHERE scenario_id_base = -1
	AND @scenario_year = comparison_year;

UPDATE analysis_parameters_new 
SET scenario_id_build = @scenario_id
WHERE scenario_id_build = -1
	AND @scenario_year = comparison_year;

PRINT 'load_analysis_parameters_and_run_analysis_full: finished creating analysis_parameters and loading in data from disk';
RAISERROR ('',10,1)	WITH NOWAIT;

DECLARE @cursor CURSOR
DECLARE @analysis_id INT;
DECLARE @scenario_id_base INT;
DECLARE @scenario_id_build INT;
DECLARE @error_string NVARCHAR(MAX);
/* BEFORE LOADING CONFIRM AS MANY FIELDS AS POSSIBLE */
SET @cursor = CURSOR LOCAL
FOR
SELECT analysis_id, scenario_id_base, scenario_id_build
FROM analysis_parameters_new
WHERE @scenario_year = comparison_year
	AND @scenario_id IN (scenario_id_base, scenario_id_build);

OPEN @cursor;

FETCH NEXT FROM @cursor INTO @analysis_id, @scenario_id_base, @scenario_id_build;

WHILE @@FETCH_STATUS = 0
BEGIN
	IF NOT EXISTS (
			SELECT id
			FROM dbo.analysis
			WHERE id = @analysis_id
			)
	BEGIN
		SET @error_string = CAST(SYSDATETIME() AS NVARCHAR) + N'  analysis_id ' + CAST(@analysis_id AS NVARCHAR) + 
			N' does not exist in table dbo.analysis. Check bca_analysis_p.csv';
		RAISERROR (@error_string,16,1) WITH NOWAIT;

		RETURN -1
	END

	IF NOT EXISTS (
			SELECT scenario_id
			FROM bca_abm.scenario
			WHERE scenario_id = @scenario_id_base
			)
	BEGIN
		SET @error_string = CAST(SYSDATETIME() AS NVARCHAR) + N'  scenario_id_base ' + CAST(@scenario_id_base AS NVARCHAR) + 
			N' does not exist in table bca_abm.scenario. Check bca_analysis_p.csv';
		RAISERROR (@error_string,16,1) WITH NOWAIT;

		RETURN -1
	END

	IF NOT EXISTS (
			SELECT scenario_id
			FROM bca_abm.scenario
			WHERE scenario_id = @scenario_id_build
			)
	BEGIN
		SET @error_string = CAST(SYSDATETIME() AS NVARCHAR) + N'  scenario_id_build ' + CAST(@scenario_id_build AS NVARCHAR) + 
			N' does not exist in table bca_abm.scenario. Check bca_analysis_p.csv';
		RAISERROR (@error_string,16,1) WITH NOWAIT;

		RETURN -1
	END

	PRINT 'load_analysis_parameters_and_run_analysis_full: Validated row with @analysis_id: ' + CAST(@analysis_id AS VARCHAR) + ', @scenario_id_base: ' + CAST(@scenario_id_base AS VARCHAR) + ', @scenario_id_build: ' + CAST(@scenario_id_build AS VARCHAR) + '.';
	RAISERROR ('',10,1)	WITH NOWAIT;

	FETCH NEXT FROM @cursor INTO @analysis_id, @scenario_id_base, @scenario_id_build;
END

CLOSE @cursor

DEALLOCATE @cursor

/* COPY ALL NEW RECORDS matching comparison_year and with new @scenario_id INTO ANALYSIS TABLE */
BEGIN TRY
	INSERT INTO analysis_parameters
	SELECT * FROM analysis_parameters_new
	WHERE @scenario_year = comparison_year
		AND @scenario_id IN (scenario_id_base, scenario_id_build);
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() as ErrorLine, ERROR_PROCEDURE() as ErrorProcedure;
	SET @error_string = 'load_analysis_parameters_and_run_analysis_full: Insert of new rows into analysis_parameters failed with message ' + ERROR_MESSAGE();
	RAISERROR (@error_string,16,1) WITH NOWAIT;

	RETURN -1
END CATCH;

/* Call run_analysis_full for each affected_analysis (newly added rows) */
SET @cursor = CURSOR LOCAL
FOR
SELECT analysis_id
FROM analysis_parameters_new	--analysis_parameters_new is safer choice than analysis_parameters since analysis_parameters could contain additional analyses with @scenario_id for @scenario_year
WHERE @scenario_year = comparison_year
	AND @scenario_id IN (scenario_id_base, scenario_id_build);

OPEN @cursor;

FETCH NEXT FROM @cursor INTO @analysis_id;

/* Call run_analysis_full. Note that by supplying optional @scenario_year_forced parameter, run_analyis_full not truly 'full' 
 will only call run_comparison_year for the passed in year */
WHILE @@FETCH_STATUS = 0
BEGIN
	PRINT 'About to call run_analysis_full(@analysis_id: ' + CAST(@analysis_id AS VARCHAR) + ', @scenario_year: ' + CAST(@scenario_year AS VARCHAR) + ') at ' + 
		CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114);
	RAISERROR ('',10,1)	WITH NOWAIT;

	EXEC dbo.run_analysis_full @analysis_id, @scenario_year
	--EXEC dbo.run_emissions_summary @scenario_id, @analysis_id, @scenario_year
	FETCH NEXT FROM @cursor INTO @analysis_id
END

CLOSE @cursor

DEALLOCATE @cursor

PRINT 'Finished load_analysis_parameters_and_run_analysis_full(@scenario_id: ' + CAST(@scenario_id AS VARCHAR) + ', @scenario_year: ' + CAST(@scenario_year AS VARCHAR) + ') at ' + 
	CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114);
RAISERROR ('',10,1)	WITH NOWAIT;

RETURN 0; --success!
GO
/****** Object:  StoredProcedure [dbo].[run_aggregate_toll_comparison]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[run_aggregate_toll_comparison] @analysis_id INT,
	@scenario_year INT,
	@scenario_id_base INT,
	@scenario_id_build INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;

--v5: added mode_id and model_type_id clauses to 'where' to ensure only tolled trips for trucks are summed
-- BUG: there are in fact no records with model_type_id = 6 for mode_id 2 in trip_agg, so these always come out zero
DECLARE @toll_comm_base FLOAT = 0,
	@toll_truck_base FLOAT = 0,
	@toll_comm_build FLOAT = 0,
	@toll_truck_build FLOAT = 0;

--put the skimmed truck tolls on the aggregate trips
--summarize the aggregate tolls by model_type
SELECT trip_agg.model_type_id,
	trip_agg.trips,
	trip_agg.trips * hwy_skims.cost_truck_toll AS toll_subtotal
INTO #aggr_toll_base
FROM bca_abm.trip_agg
INNER JOIN bca_abm.hwy_skims
	ON trip_agg.time_period_id = hwy_skims.time_period_id
		AND trip_agg.dest_geography_zone_id = hwy_skims.dest_geography_zone_id
		AND trip_agg.orig_geography_zone_id = hwy_skims.orig_geography_zone_id
WHERE trip_agg.scenario_id = @scenario_id_base
	--and trip_agg.mode_id = 2
	AND trip_agg.mode_id IN (2, 33, 35, 37)
	AND trip_agg.model_type_id IN (6, 9)
	AND hwy_skims.scenario_id = @scenario_id_base;

SELECT model_type_id,
	sum(trips) AS sumoftrips,
	sum(toll_subtotal) AS sumoftoll_subtotal
INTO #toll_subtotal_base
FROM #aggr_toll_base
GROUP BY model_type_id;

--put the skimmed truck tolls on the aggregate trips
--summarize the aggregate tolls by model_type
SELECT trip_agg.model_type_id,
	trip_agg.trips,
	trip_agg.trips * hwy_skims.cost_truck_toll AS toll_subtotal
INTO #aggr_toll_build
FROM bca_abm.trip_agg
INNER JOIN bca_abm.hwy_skims
	ON trip_agg.time_period_id = hwy_skims.time_period_id
		AND trip_agg.dest_geography_zone_id = hwy_skims.dest_geography_zone_id
		AND trip_agg.orig_geography_zone_id = hwy_skims.orig_geography_zone_id
WHERE trip_agg.scenario_id = @scenario_id_build
	--and trip_agg.mode_id = 2
	AND trip_agg.mode_id IN (2, 33, 35, 37)
	AND trip_agg.model_type_id IN (6, 9)
	AND hwy_skims.scenario_id = @scenario_id_build;

SELECT model_type_id,
	sum(trips) AS sumoftrips,
	sum(toll_subtotal) AS sumoftoll_subtotal
INTO #toll_subtotal_build
FROM #aggr_toll_build
GROUP BY model_type_id;

SELECT @toll_comm_base = sumoftoll_subtotal
FROM #toll_subtotal_base
WHERE model_type_id = 6;

SELECT @toll_truck_base = sumoftoll_subtotal
FROM #toll_subtotal_base
WHERE model_type_id = 9;

SELECT @toll_comm_build = sumoftoll_subtotal
FROM #toll_subtotal_build
WHERE model_type_id = 6;

SELECT @toll_truck_build = sumoftoll_subtotal
FROM #toll_subtotal_build
WHERE model_type_id = 9;

-- select * from #toll_subtotal_base;
-- select * from #toll_subtotal_build;
/*--Update scenario_comparison table*/
BEGIN TRANSACTION

UPDATE scenario_comparison
WITH (SERIALIZABLE)

SET toll_comm_base = @toll_comm_base,
	toll_truck_base = @toll_truck_base,
	toll_comm_build = @toll_comm_build,
	toll_truck_build = @toll_truck_build,
	last_update_date = getdate()
WHERE scenario_id_base = @scenario_id_base
	AND scenario_id_build = @scenario_id_build
	AND analysis_id = @analysis_id
	AND scenario_year = @scenario_year;

IF @@rowcount = 0
	INSERT INTO scenario_comparison (
		scenario_id_base,
		scenario_id_build,
		analysis_id,
		scenario_year,
		toll_comm_base,
		toll_truck_base,
		toll_comm_build,
		toll_truck_build,
		last_update_date
		)
	VALUES (
		@scenario_id_base,
		@scenario_id_build,
		@analysis_id,
		@scenario_year,
		@toll_comm_base,
		@toll_truck_base,
		@toll_comm_build,
		@toll_truck_build,
		getdate()
		);

COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_aggregate_toll_processor]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[run_aggregate_toll_processor] @scenario_id_base INT,
	@scenario_id_build INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;

--set statistics xml on;
DECLARE @start_date DATETIME

SET @start_date = GETDATE();

PRINT 'run_aggregate_toll_comparison starting at ' + CONVERT(VARCHAR, @start_date, 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

EXEC run_aggregate_toll_comparison @analysis_id,
	@scenario_year,
	@scenario_id_base,
	@scenario_id_build

PRINT 'time to run_aggregate_toll_comparison: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		0,
		1
		)
WITH NOWAIT;


GO
/****** Object:  StoredProcedure [dbo].[run_aggregate_trips_comparison]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[run_aggregate_trips_comparison] @analysis_id INT,
	@scenario_id_base INT,
	@scenario_id_build INT,
	@scenario_year INT,
	@vot_commercial FLOAT,
	@vot_truck FLOAT,
	@base_tt_comm FLOAT, --added by JC 2014.10.16
	@build_tt_comm FLOAT, --added by JC 2014.10.16
	@ben_tt_comm FLOAT,
	@base_tt_trk FLOAT, --added by JC 2014.10.16
	@build_tt_trk FLOAT, --added by JC 2014.10.16
	@ben_tt_trk FLOAT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;

BEGIN TRANSACTION

UPDATE scenario_comparison
WITH (SERIALIZABLE)

SET base_tt_comm = @base_tt_comm, --added by JC 2014.10.16
	build_tt_comm = @build_tt_comm, --added by JC 2014.10.16
	ben_tt_comm = @ben_tt_comm,
	base_tt_truck = @base_tt_trk, --added by JC 2014.10.16
	build_tt_truck = @build_tt_trk, --added by JC 2014.10.16
	ben_tt_truck = @ben_tt_trk,
	vot_truck_light = @vot_commercial,
	vot_truck_medium = @vot_truck,
	vot_truck_heavy = @vot_truck,
	last_update_date = getdate()
WHERE scenario_id_base = @scenario_id_base
	AND scenario_id_build = @scenario_id_build
	AND scenario_year = @scenario_year
	AND analysis_id = @analysis_id;

IF @@rowcount = 0
	INSERT INTO scenario_comparison (
		scenario_id_base,
		scenario_id_build,
		analysis_id,
		scenario_year,
		ben_tt_comm,
		ben_tt_truck,
		vot_truck_light,
		vot_truck_medium,
		vot_truck_heavy,
		last_update_date,
		base_tt_comm, --added by JC 2014.10.16
		build_tt_comm, --added by JC 2014.10.16
		base_tt_truck, --added by JC 2014.10.16
		build_tt_truck
		) --added by JC 2014.10.16
	VALUES (
		@scenario_id_base,
		@scenario_id_build,
		@analysis_id,
		@scenario_year,
		@ben_tt_comm,
		@ben_tt_trk,
		@vot_commercial,
		@vot_truck,
		@vot_truck,
		getdate(),
		@base_tt_comm, --added by JC 2014.10.16
		@build_tt_comm, --added by JC 2014.10.16
		@base_tt_trk, --added by JC 2014.10.16
		@build_tt_trk
		);--added by JC 2014.10.16

COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_aggregate_trips_processor]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[run_aggregate_trips_processor] @scenario_id_base INT = 257,
	@scenario_id_build INT = 227,
	@analysis_id INT = 45,
	@scenario_year INT = 2013
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;

DECLARE @overall_start_date DATETIME = GETDATE();

PRINT 'Started run_aggregate_trips_processor: ' + CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

-- if @scenario_id_base = @scenario_id_build
-- begin
-- 	print 'error: scenario_id_base = scenario_id_build';
-- 	return;
-- end   
/*---read necessary parameters analysis_parameters*/
DECLARE @vot_commercial FLOAT,
	@vot_truck FLOAT,
	@base_tt_comm FLOAT, --added by JC 2014.10.16
	@build_tt_comm FLOAT, --added by JC 2014.10.16
	@ben_tt_comm FLOAT,
	@base_tt_trk FLOAT, --added by JC 2014.10.16
	@build_tt_trk FLOAT, --added by JC 2014.10.16
	@ben_tt_trk FLOAT;

SELECT @vot_commercial = ap.vot_truck_light,
	@vot_truck = ap.vot_truck_heavy
FROM analysis_parameters AS ap
WHERE ap.analysis_id = @analysis_id
	AND ap.comparison_year = @scenario_year;

DECLARE @start_date DATETIME

--dbcc dropcleanbuffers;
SET @start_date = GETDATE();

/**
	NOTE Unlike other summary functions, run_aggregate_trips_summary does not write into the scenario_summary table but instead returns six output variables
	**/
EXEC run_aggregate_trips_summary @scenario_id_base,
	@scenario_id_build,
	@scenario_year,
	@vot_commercial,
	@vot_truck,
	@base_tt_comm = @base_tt_comm OUTPUT,
	@build_tt_comm = @build_tt_comm OUTPUT,
	@ben_tt_comm = @ben_tt_comm OUTPUT,
	@base_tt_trk = @base_tt_trk OUTPUT,
	@build_tt_trk = @build_tt_trk OUTPUT,
	@ben_tt_trk = @ben_tt_trk OUTPUT;

PRINT CHAR(9) + 'time to  run_aggregate_trips_summary: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

SET @start_date = GETDATE();

EXEC run_aggregate_trips_comparison @analysis_id,
	@scenario_id_base,
	@scenario_id_build,
	@scenario_year,
	@vot_commercial,
	@vot_truck,
	@base_tt_comm,
	@build_tt_comm,
	@ben_tt_comm,
	@base_tt_trk,
	@build_tt_trk,
	@ben_tt_trk;
	--modified by JC 2014.10.16 modified by JF 101814 (put arguments in same order as they are declared in run_aggregate_trips_comparison header)

PRINT CHAR(9) + 'time to  run_aggregate_trips_comparison: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

PRINT 'Finished run_aggregate_trips_processor ' + CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date
			), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;


GO
/****** Object:  StoredProcedure [dbo].[run_aggregate_trips_summary]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

/**
NOTE Unlike other summary functions, this does not write into the scenario_summary table but instead returns six output variables
**/
CREATE PROCEDURE [dbo].[run_aggregate_trips_summary] @scenario_id_base INT,
	@scenario_id_build INT,
	@scenario_year INT,
	@vot_commercial FLOAT,
	@vot_truck FLOAT,
	@base_tt_comm FLOAT OUTPUT,
	@build_tt_comm FLOAT OUTPUT,
	@ben_tt_comm FLOAT OUTPUT,
	@base_tt_trk FLOAT OUTPUT,
	@build_tt_trk FLOAT OUTPUT,
	@ben_tt_trk FLOAT OUTPUT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;

DECLARE @overall_start_date DATETIME = GETDATE(), @timer DATETIME = GETDATE();

PRINT 'run_aggregate_trips_summary at ' + CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT tazskim_base.time_period_id AS time_period_id,
	tazskim_base.orig_geography_zone_id AS orig_geography_zone_id,
	tazskim_base.dest_geography_zone_id AS dest_geography_zone_id,
	--comm
	tazskim_base.time_drive_alone_free AS time_cm_base,
	tazskim_build.time_drive_alone_free AS time_cm_build,
	tazskim_base.time_drive_alone_toll AS time_cm_toll_base,
	tazskim_build.time_drive_alone_toll AS time_cm_toll_build,
	--truck
	tazskim_base.time_truck_free AS time_tr_base,
	tazskim_build.time_truck_free AS time_tr_build,
	tazskim_base.time_truck_toll AS time_tr_toll_base,
	tazskim_build.time_truck_toll AS time_tr_toll_build
INTO #skim_compare
FROM bca_abm.hwy_skims AS tazskim_base
INNER JOIN bca_abm.hwy_skims AS tazskim_build
	ON tazskim_base.orig_geography_zone_id = tazskim_build.orig_geography_zone_id
		AND tazskim_base.dest_geography_zone_id = tazskim_build.dest_geography_zone_id
		AND tazskim_base.time_period_id = tazskim_build.time_period_id
WHERE tazskim_build.scenario_id = @scenario_id_build
	AND tazskim_base.scenario_id = @scenario_id_base;

PRINT 'finished  SELECT * INTO #skim_compare. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT (
		CASE 
			WHEN scenario_id = @scenario_id_base
				THEN 1
			ELSE 0
			END
		) AS base,
	model_type_id,
	purpose_id,
	time_period_id,
	mode_id,
	orig_geography_zone_id,
	dest_geography_zone_id,
	trips
INTO #aggregate_trips
FROM bca_abm.trip_agg
WHERE scenario_id IN (@scenario_id_build, @scenario_id_base)
	AND trip_agg.model_type_id IN (6, 9);

PRINT 'finished  SELECT * INTO #aggregate_trips. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

-- join in base and build tt skim values from skim_compare
SELECT base,
	model_type_id,
	mode_id,
	aggregate_trips.time_period_id,
	aggregate_trips.orig_geography_zone_id,
	aggregate_trips.dest_geography_zone_id,
	trips,
	-- 2 Auto SOV (Toll)
	-- 33 Light Heavy Duty Truck (Toll)
	-- 35 Medium Heavy Duty Truck (Toll)
	-- 37 Heavy Heavy Duty Truck (Toll)
	(
		CASE 
			WHEN model_type_id = 6
				THEN time_cm_base
			WHEN mode_id IN (2, 33, 35, 37)
				THEN time_tr_toll_base
			ELSE time_tr_base
			END
		) AS base_skim_tt,
	(
		CASE 
			WHEN model_type_id = 6
				THEN time_cm_build
			WHEN mode_id IN (2, 33, 35, 37)
				THEN time_tr_toll_build
			ELSE time_tr_build
			END
		) AS build_skim_tt,
	(
		CASE 
			WHEN model_type_id = 6
				THEN @vot_commercial / 60.0
			ELSE @vot_truck / 60.0
			END
		) AS vot
INTO #aggregate_trips_t
FROM #aggregate_trips aggregate_trips
INNER JOIN #skim_compare skim_compare
	ON aggregate_trips.time_period_id = skim_compare.time_period_id
		AND aggregate_trips.orig_geography_zone_id = skim_compare.orig_geography_zone_id
		AND aggregate_trips.dest_geography_zone_id = skim_compare.dest_geography_zone_id;

PRINT 'finished  SELECT * INTO #aggregate_trips_t. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT base,
	model_type_id,
	mode_id,
	-- time_period_id,
	-- orig_geography_zone_id,
	-- dest_geography_zone_id,
	-- vot,
	trips,
	trips * base_skim_tt * vot AS base_tt,
	-- trips at base impendence
	trips * build_skim_tt * vot AS build_tt -- trips at build impendence
INTO #aggregate_trips_monetized
FROM #aggregate_trips_t;

PRINT 'finished  SELECT * INTO #aggregate_trips_monetized. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT base,
	model_type_id,
	mode_id,
	sum(trips) AS trips,
	sum(base_tt) AS base_tt,
	sum(build_tt) AS build_tt
INTO #sum_aggregate_trips
FROM #aggregate_trips_monetized
GROUP BY model_type_id,
	mode_id,
	base;

PRINT 'finished  SELECT * INTO #sum_aggregate_trips. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT model_type_id,
	mode_id,
	sum(CASE 
			WHEN base = 0
				THEN base_tt
			ELSE 0.0
			END) AS base_tt,
	-- build trips at base impedences
	sum(CASE 
			WHEN base = 0
				THEN build_tt
			ELSE 0.0
			END) AS build_tt,
	-- build trips at build impedences
	sum(0.5 * base_tt) AS base_benefit_tt,
	sum(0.5 * build_tt) AS build_benefit_tt,
	sum(0.5 * (base_tt - build_tt)) AS benefit_tt
INTO #sum_all_compared
FROM #sum_aggregate_trips
GROUP BY model_type_id,
	mode_id;

-- for QA/QC 
SELECT *
FROM #sum_all_compared;

/**
		fill in values for output parameters
		**/
SELECT @base_tt_comm = sum(base_tt),
	@build_tt_comm = sum(build_tt),
	@ben_tt_comm = sum(benefit_tt)
FROM #sum_all_compared
WHERE model_type_id = 6;

SELECT @base_tt_trk = sum(base_tt),
	@build_tt_trk = sum(build_tt),
	@ben_tt_trk = sum(benefit_tt)
FROM #sum_all_compared
WHERE model_type_id = 9;


GO
/****** Object:  StoredProcedure [dbo].[run_analysis_full]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_analysis_full]
(
@analysis_id INT,
@scenario_year_forced INT = null
)
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;

--Validate @analysis_id to avoid later foreign key constraint violations
IF NOT EXISTS (
		SELECT analysis_id
		FROM dbo.analysis_parameters
		WHERE analysis_id = @analysis_id AND ((@scenario_year_forced IS NULL) OR (@scenario_year_forced = comparison_year))
		)
BEGIN
	DECLARE @error_string NVARCHAR(MAX) = CAST(SYSDATETIME() AS NVARCHAR) + N'  Analysis ID ' + CAST(@analysis_id AS NVARCHAR) + 
		N' does not exist in table dbo.analysis_parameters or else @scenario_year_forced (' + CAST(@scenario_year_forced AS NVARCHAR) + N') was passed in but could not be found for that analysis_id. Check analysis_id and scenario_year_forced (if passed) and try again.';

	RAISERROR (
			@error_string,
			16,
			1
			)
	WITH NOWAIT;

	RETURN
END

DECLARE @scenario_year INT -- each analysis is associated with several comparison years; one comparison year is used at a time

--Create cursor; used to step through each comparison year  
DECLARE cur CURSOR LOCAL
FOR
SELECT comparison_year
FROM analysis_parameters
WHERE analysis_id = @analysis_id AND ((@scenario_year_forced IS NULL) OR (@scenario_year_forced = comparison_year))

OPEN cur

FETCH NEXT
FROM cur
INTO @scenario_year

--Run each comparison year in analysis
WHILE @@FETCH_STATUS = 0
BEGIN
	EXECUTE dbo.run_comparison_year @analysis_id,
		@scenario_year

	FETCH NEXT
	FROM cur
	INTO @scenario_year
END

CLOSE cur

DEALLOCATE cur

--Compile multiyear results
EXECUTE dbo.run_multiyear_processor @analysis_id

SELECT *
FROM dbo.multiyear_results
WHERE analysis_id = @analysis_id;


GO
/****** Object:  StoredProcedure [dbo].[run_auto_ownership_comparison]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[run_auto_ownership_comparison] @base_scenario_id INT = 257,
	@build_scenario_id INT = 227,
	@analysis_id INT = 45,
	@scenario_year INT = 2013
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

-- parameter variables
DECLARE @cost FLOAT
DECLARE @threshold FLOAT
DECLARE @threshold_age INT
DECLARE @threshold_race INT

SELECT @cost = aoc_auto,
	@threshold = phys_activity_threshold,
	@threshold_age = coc_age_thresh,
	@threshold_race = coc_race_thresh
FROM analysis_parameters
WHERE analysis_id = @analysis_id
	AND comparison_year = @scenario_year

-- comparison values
SELECT a.autos_owned_tot AS base_autos_owned,
	b.autos_owned_tot AS build_autos_owned,
	a.autos_owned_coc AS base_autos_owned_coc,
	b.autos_owned_coc AS build_autos_owned_coc,
	a.autos_owned_tot - b.autos_owned_tot AS diff_autos_owned,
	a.autos_owned_coc - b.autos_owned_coc AS diff_autos_owned_coc,
	a.autos_owned_coc_race - b.autos_owned_coc_race AS diff_autos_owned_coc_race,
	a.autos_owned_coc_poverty - b.autos_owned_coc_poverty AS diff_autos_owned_coc_poverty,
	a.autos_owned_coc_age - b.autos_owned_coc_age AS diff_autos_owned_coc_age
INTO #a
FROM scenario_summary AS a,
	scenario_summary AS b
WHERE a.analysis_id = @analysis_id
	AND a.scenario_year = @scenario_year
	AND a.scenario_id = @base_scenario_id
	AND b.analysis_id = @analysis_id
	AND b.scenario_year = @scenario_year
	AND b.scenario_id = @build_scenario_id;

SELECT *,
	base_autos_owned * @cost AS base_cost_autos_owned,
	build_autos_owned * @cost AS build_cost_autos_owned,
	-- base_autos_owned_coc * @cost as base_cost_autos_owned_coc,
	-- build_autos_owned_coc * @cost as build_cost_autos_owned_coc,
	diff_autos_owned * @cost AS ben_autos_owned,
	diff_autos_owned_coc * @cost AS ben_autos_owned_coc,
	diff_autos_owned_coc_race * @cost AS ben_autos_owned_coc_race,
	diff_autos_owned_coc_poverty * @cost AS ben_autos_owned_coc_poverty,
	diff_autos_owned_coc_age * @cost AS ben_autos_owned_coc_age
INTO #comparison
FROM #a;

--debugging
SELECT *
FROM #comparison;

-- saves comparisons
BEGIN TRANSACTION

UPDATE scenario_comparison
WITH (SERIALIZABLE)

SET base_cost_autos_owned = b.base_cost_autos_owned,
	build_cost_autos_owned = b.build_cost_autos_owned,
	diff_autos_owned = b.diff_autos_owned,
	diff_autos_owned_coc = b.diff_autos_owned_coc,
	ben_autos_owned = b.ben_autos_owned,
	ben_autos_owned_coc = b.ben_autos_owned_coc,
	ben_autos_owned_coc_race = b.ben_autos_owned_coc_race,
	ben_autos_owned_coc_poverty = b.ben_autos_owned_coc_poverty,
	ben_autos_owned_coc_age = b.ben_autos_owned_coc_age,
	aoc_auto = @cost,
	coc_age_thresh = @threshold_age,
	coc_race_thresh = @threshold_race,
	last_update_date = getdate()
FROM scenario_comparison AS a,
	#comparison AS b
WHERE a.analysis_id = @analysis_id
	AND a.scenario_year = @scenario_year
	AND a.scenario_id_base = @base_scenario_id
	AND a.scenario_id_build = @build_scenario_id

IF @@rowcount = 0
	INSERT INTO scenario_comparison (
		scenario_id_base,
		scenario_id_build,
		analysis_id,
		scenario_year,
		base_cost_autos_owned,
		build_cost_autos_owned,
		diff_autos_owned,
		diff_autos_owned_coc,
		ben_autos_owned,
		ben_autos_owned_coc,
		ben_autos_owned_coc_race,
		ben_autos_owned_coc_poverty,
		ben_autos_owned_coc_age,
		aoc_auto,
		coc_age_thresh,
		coc_race_thresh,
		last_update_date
		)
	SELECT @base_scenario_id,
		@build_scenario_id,
		@analysis_id,
		@scenario_year,
		base_cost_autos_owned,
		build_cost_autos_owned,
		diff_autos_owned,
		diff_autos_owned_coc,
		ben_autos_owned,
		ben_autos_owned_coc,
		ben_autos_owned_coc_race,
		ben_autos_owned_coc_poverty,
		ben_autos_owned_coc_age,
		@cost,
		@threshold_age,
		@threshold_race,
		getdate()
	FROM #comparison

COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_auto_ownership_processor]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[run_auto_ownership_processor] @base_scenario_id INT,
	@build_scenario_id INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

DECLARE @overall_start_date DATETIME = GETDATE(), @timer DATETIME = GETDATE();

PRINT 'Start run_auto_ownership_processor ' + CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

DECLARE @start_date DATETIME

--dbcc dropcleanbuffers;
SET @start_date = GETDATE();

EXEC run_auto_ownership_summary @base_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_auto_ownership_summary base: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SET @start_date = GETDATE();

EXEC run_auto_ownership_summary @build_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_auto_ownership_summary build: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SET @start_date = GETDATE();

EXEC run_auto_ownership_comparison @base_scenario_id,
	@build_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_auto_ownership_comparison: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

PRINT 'Finished run_auto_ownership_processor ' + CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date
			), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();


GO
/****** Object:  StoredProcedure [dbo].[run_auto_ownership_summary]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[run_auto_ownership_summary] @scenario_id INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

--set statistics xml on
DECLARE @coc_age_thresh INT,
	@coc_race_thresh INT,
	@coc_poverty_thresh FLOAT,
	@coc_hisp_thresh INT;

SELECT @coc_age_thresh = coc_age_thresh,
	@coc_race_thresh = coc_race_thresh,
	@coc_poverty_thresh = coc_poverty_thresh,
	@coc_hisp_thresh = coc_hisp_thresh
FROM analysis_parameters
WHERE analysis_id = @analysis_id
	AND comparison_year = @scenario_year

-- auto ownership query
SELECT max(hh.autos) AS autos,
	max(hh.poverty) AS poverty,
	max(p.age) AS age,
	max(p.race_id) AS race_id,
	max(p.hisp_id) AS hisp_id
INTO #auto_households
FROM bca_abm.hh AS hh
INNER JOIN bca_abm.person AS p
	ON hh.lu_hh_id = p.lu_hh_id
WHERE hh.scenario_id = @scenario_id
	AND p.scenario_id = @scenario_id
GROUP BY hh.lu_hh_id;

SELECT autos,
	(
		CASE 
			WHEN poverty < @coc_poverty_thresh
				THEN 1
			ELSE 0
			END
		) AS coc_poverty,
	(
		CASE 
			WHEN age >= @coc_age_thresh
				THEN 1
			ELSE 0
			END
		) AS coc_age,
	(
		CASE 
			WHEN (hisp_id > @coc_hisp_thresh)
				OR (race_id > @coc_race_thresh)
				THEN 1
			ELSE 0
			END
		) AS coc_race,
	(
		CASE 
			WHEN (hisp_id > @coc_hisp_thresh)
				OR (race_id > @coc_race_thresh)
				OR (age >= @coc_age_thresh)
				OR (poverty < @coc_poverty_thresh)
				THEN 1
			ELSE 0
			END
		) AS coc
INTO #auto_households_coc
FROM #auto_households;

SELECT sum(autos) AS autos,
	coc,
	coc_poverty,
	coc_age,
	coc_race,
	count(*) AS households
INTO #auto_summary
FROM #auto_households_coc
GROUP BY coc,
	coc_poverty,
	coc_age,
	coc_race;

SELECT *
FROM #auto_summary
ORDER BY coc,
	coc_poverty,
	coc_age,
	coc_race;

SELECT sum(autos) AS autos_owned_tot,
	sum(autos * coc) AS autos_owned_coc,
	sum(autos * coc_poverty) AS autos_owned_coc_poverty,
	sum(autos * coc_age) AS autos_owned_coc_age,
	sum(autos * coc_race) AS autos_owned_coc_race
INTO #summary
FROM #auto_summary

-- saves summary
BEGIN TRANSACTION

UPDATE scenario_summary
WITH (SERIALIZABLE)

SET autos_owned_tot = isnull(b.autos_owned_tot, 0),
	autos_owned_coc = isnull(b.autos_owned_coc, 0),
	autos_owned_coc_poverty = isnull(b.autos_owned_coc_poverty, 0),
	autos_owned_coc_age = isnull(b.autos_owned_coc_age, 0),
	autos_owned_coc_race = isnull(b.autos_owned_coc_race, 0),
	last_update_date = getdate()
FROM scenario_summary a,
	#summary b
WHERE a.scenario_id = @scenario_id
	AND a.analysis_id = @analysis_id
	AND a.scenario_year = @scenario_year

IF @@rowcount = 0
	INSERT INTO scenario_summary (
		scenario_id,
		analysis_id,
		scenario_year,
		autos_owned_tot,
		autos_owned_coc,
		autos_owned_coc_poverty,
		autos_owned_coc_age,
		autos_owned_coc_race,
		last_update_date
		)
	SELECT @scenario_id,
		@analysis_id,
		@scenario_year,
		isnull(autos_owned_tot, 0),
		isnull(autos_owned_coc, 0),
		isnull(autos_owned_coc_poverty, 0),
		isnull(autos_owned_coc_age, 0),
		isnull(autos_owned_coc_race, 0),
		getdate()
	FROM #summary

COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_comparison_year]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_comparison_year] @analysis_id INT = 45,
	@scenario_year INT = 2013
	WITH EXECUTE AS CALLER
AS
DECLARE @overall_start_date DATETIME = GETDATE();

PRINT 'Started run_comparison_year(@analysis_id: ' + CAST(@analysis_id AS VARCHAR) + ', @scenario_year: ' + CAST(@scenario_year AS VARCHAR) + ') at ' + 
	CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

DECLARE @base_scenario_id INT -- base year		
DECLARE @build_scenario_id INT -- build year	
DECLARE @ref_year INT -- reference (base) year

--look up base and build scenario IDs
SELECT @base_scenario_id = scenario_id_base,
	@build_scenario_id = scenario_id_build
FROM analysis_parameters
WHERE analysis_id = @analysis_id
	AND comparison_year = @scenario_year

--look up reference year
SELECT @ref_year = year_reference
FROM analysis
WHERE id = @analysis_id

--execute stored procedures; some stored procedures aren't called in the reference year
IF @scenario_year <> @ref_year
	EXEC run_emissions_processor @base_scenario_id,
		@build_scenario_id,
		@analysis_id,
		@scenario_year;

IF @scenario_year <> @ref_year
	EXEC run_auto_ownership_processor @base_scenario_id,
		@build_scenario_id,
		@analysis_id,
		@scenario_year;

EXEC run_demographics_processor @base_scenario_id,
	@build_scenario_id,
	@analysis_id,
	@scenario_year

EXEC run_link_processor @base_scenario_id,
	@build_scenario_id,
	@analysis_id,
	@scenario_year

IF @scenario_year <> @ref_year
	EXEC run_physical_activity_processor @base_scenario_id,
		@build_scenario_id,
		@analysis_id,
		@scenario_year

IF @scenario_year <> @ref_year
	EXEC run_aggregate_toll_processor @base_scenario_id,
		@build_scenario_id,
		@analysis_id,
		@scenario_year

EXEC run_aggregate_trips_processor @base_scenario_id,
	@build_scenario_id,
	@analysis_id,
	@scenario_year

EXEC run_person_trip_processor @base_scenario_id,
	@build_scenario_id,
	@analysis_id,
	@scenario_year

PRINT 'Finished run_comparison_year(@analysis_id: ' + CAST(@analysis_id AS VARCHAR) + ', @scenario_year: ' + CAST(@scenario_year AS VARCHAR) + ') at ' + + 
	CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;


GO
/****** Object:  StoredProcedure [dbo].[run_demographics_processor]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_demographics_processor] @base_scenario_id INT,
	@build_scenario_id INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
DECLARE @overall_start_date DATETIME = GETDATE();

PRINT 'Started run_demographics_processor: ' + CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

DECLARE @coc_age_thresh INT,
	@coc_race_thresh INT,
	@coc_poverty_thresh FLOAT,
	@coc_hisp_thresh INT;

SELECT @coc_age_thresh = ap.coc_age_thresh,
	@coc_race_thresh = ap.coc_race_thresh,
	@coc_poverty_thresh = ap.coc_poverty_thresh,
	@coc_hisp_thresh = ap.coc_hisp_thresh
FROM analysis_parameters ap
WHERE ap.analysis_id = @analysis_id
	AND ap.comparison_year = @scenario_year

EXEC run_demographics_summary @base_scenario_id,
	@build_scenario_id,
	@analysis_id,
	@scenario_year,
	@coc_age_thresh,
	@coc_race_thresh,
	@coc_poverty_thresh,
	@coc_hisp_thresh

PRINT 'Finished run_demographics_processor ' + CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date
			), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

GO
/****** Object:  StoredProcedure [dbo].[run_demographics_summary]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_demographics_summary] @base_scenario_id INT,
	@build_scenario_id INT,
	@analysis_id INT,
	@scenario_year INT,
	@coc_age_thresh INT,
	@coc_race_thresh INT,
	@coc_poverty_thresh FLOAT,
	@coc_hisp_thresh INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON
	--set statistics xml on
	-- base and build demographis are the same so just use base_scenario_id
	;

SELECT hh.poverty AS poverty,
	p.age AS age,
	p.race_id AS race_id,
	p.hisp_id AS hisp_id
INTO #persons_demog
FROM bca_abm.hh AS hh
INNER JOIN bca_abm.person AS p
	ON hh.lu_hh_id = p.lu_hh_id
		AND hh.scenario_id = @base_scenario_id
		AND hh.scenario_id = p.scenario_id;

SELECT (
		CASE 
			WHEN poverty < @coc_poverty_thresh
				THEN 1
			ELSE 0
			END
		) AS coc_poverty,
	(
		CASE 
			WHEN age >= @coc_age_thresh
				THEN 1
			ELSE 0
			END
		) AS coc_age,
	(
		CASE 
			WHEN (hisp_id > @coc_hisp_thresh)
				OR (race_id > @coc_race_thresh)
				THEN 1
			ELSE 0
			END
		) AS coc_race,
	(
		CASE 
			WHEN (hisp_id > @coc_hisp_thresh)
				OR (race_id > @coc_race_thresh)
				OR (age >= @coc_age_thresh)
				OR (poverty < @coc_poverty_thresh)
				THEN 1
			ELSE 0
			END
		) AS coc
INTO #persons_demog_coc
FROM #persons_demog;

SELECT count(*) AS persons,
	coc,
	coc_poverty,
	coc_age,
	coc_race
INTO #persons_summary
FROM #persons_demog_coc
GROUP BY coc,
	coc_poverty,
	coc_age,
	coc_race;

SELECT *
FROM #persons_summary
ORDER BY coc,
	coc_poverty,
	coc_age,
	coc_race;

SELECT @base_scenario_id AS base_scenario_id,
	@build_scenario_id AS build_scenario_id,
	sum(persons) AS persons,
	sum(persons * coc) AS persons_coc,
	sum(persons * coc_poverty) AS persons_coc_poverty,
	sum(persons * coc_age) AS persons_coc_age,
	sum(persons * coc_race) AS persons_coc_race
INTO #summary
FROM #persons_summary

-- saves scenario_comparison
BEGIN TRANSACTION

UPDATE scenario_comparison
WITH (SERIALIZABLE)

SET persons = isnull(b.persons, 0),
	persons_coc = isnull(b.persons_coc, 0),
	persons_coc_race = isnull(b.persons_coc_race, 0),
	persons_coc_age = isnull(b.persons_coc_age, 0),
	persons_coc_poverty = isnull(b.persons_coc_poverty, 0),
	coc_age_thresh = @coc_age_thresh,
	coc_race_thresh = @coc_race_thresh,
	coc_poverty_thresh = @coc_poverty_thresh,
	last_update_date = getdate()
FROM scenario_comparison AS a
INNER JOIN #summary b
	ON a.scenario_id_base = b.base_scenario_id
		AND a.scenario_id_build = b.build_scenario_id
		AND a.analysis_id = @analysis_id
		AND a.scenario_year = @scenario_year;

IF @@rowcount = 0
	INSERT INTO scenario_comparison (
		scenario_id_base,
		scenario_id_build,
		analysis_id,
		scenario_year,
		persons,
		persons_coc,
		persons_coc_race,
		persons_coc_age,
		persons_coc_poverty,
		coc_age_thresh,
		coc_race_thresh,
		coc_poverty_thresh,
		last_update_date
		)
	SELECT base_scenario_id,
		build_scenario_id,
		@analysis_id,
		@scenario_year,
		persons,
		persons_coc,
		persons_coc_race,
		persons_coc_age,
		persons_coc_poverty,
		@coc_age_thresh,
		@coc_race_thresh,
		@coc_poverty_thresh,
		getdate()
	FROM #summary

COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_demographics_summary_dfl]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[run_demographics_summary_dfl]
	@base_scenario_id int,
	@build_scenario_id int,
	@analysis_id int,
	@scenario_year int,
	@coc_age_thresh int,
	@coc_race_thresh int,
	@coc_poverty_thresh float,
	@coc_hisp_thresh int
WITH EXECUTE AS CALLER AS
	BEGIN TRANSACTION
	
	UPDATE scenario_comparison WITH (SERIALIZABLE)
	SET persons = ISNULL(h.persons, 0)
		,persons_coc = ISNULL(h.persons_coc, 0)
		,persons_coc_race = ISNULL(h.persons_coc_race, 0)
		,persons_coc_age = ISNULL(h.persons_coc_age, 0)
		,persons_coc_poverty = ISNULL(h.persons_coc_poverty, 0)
		,coc_age_thresh = @coc_age_thresh
		,coc_race_thresh = @coc_race_thresh
		,coc_poverty_thresh = @coc_poverty_thresh
		,last_update_date = GETDATE()
	FROM 
	(
		SELECT COUNT(*) as persons
			,SUM(CASE
					WHEN poverty < @coc_poverty_thresh THEN 1
					ELSE 0
				 END) as persons_coc_poverty
			,SUM(CASE
					WHEN age >= @coc_age_thresh THEN 1
					ELSE 0
				 END) as persons_coc_age
			,SUM(CASE
					WHEN hisp_id > @coc_hisp_thresh or race_id > @coc_race_thresh THEN 1
					ELSE 0
				 END) as persons_coc_race
			,SUM(CASE
					WHEN hisp_id > @coc_hisp_thresh or race_id > @coc_race_thresh or age >= @coc_age_thresh or poverty < @coc_poverty_thresh THEN 1
					ELSE 0
				 END) as persons_coc
		FROM bca_abm.hh as hh
			INNER JOIN bca_abm.person as p
			ON hh.lu_hh_id = p.lu_hh_id 
			AND hh.scenario_id = @base_scenario_id
			AND hh.scenario_id = p.scenario_id
	) h
	WHERE scenario_id_base = @base_scenario_id
	AND scenario_id_build = @build_scenario_id
	AND analysis_id = @analysis_id
	AND scenario_year = @scenario_year
	
	COMMIT TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[run_emissions_comparison]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_emissions_comparison] @base_scenario_id INT,
	@build_scenario_id INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

-- parameter variables
DECLARE @co FLOAT
DECLARE @co2 FLOAT
DECLARE @pm25 FLOAT
DECLARE @pm10 FLOAT
DECLARE @nox FLOAT
DECLARE @rog FLOAT
DECLARE @so2 FLOAT

SELECT @co = co_value,
	@co2 = co2_value,
	@pm25 = pm2_5_value,
	@pm10 = pm10_value,
	@nox = nox_value,
	@rog = rog_value,
	@so2 = so2_value
FROM analysis_parameters
WHERE analysis_id = @analysis_id
	AND comparison_year = @scenario_year

-- comparison values
SELECT a.tot_co - b.tot_co AS diff_co,
	a.tot_co2 - b.tot_co2 AS diff_co2,
	a.tot_pm25 - b.tot_pm25 AS diff_pm25,
	a.tot_pm10 - b.tot_pm10 AS diff_pm10,
	a.tot_nox - b.tot_nox AS diff_nox,
	a.tot_rogs - b.tot_rogs AS diff_rogs,
	a.tot_so2 - b.tot_so2 AS diff_so2
INTO #a
FROM scenario_summary a,
	scenario_summary b
WHERE a.scenario_id = @base_scenario_id
	AND a.scenario_year = @scenario_year
	AND a.analysis_id = @analysis_id
	AND b.scenario_id = @build_scenario_id
	AND b.scenario_year = @scenario_year
	AND b.analysis_id = @analysis_id;

SELECT *,
	diff_co * @co AS ben_co,
	diff_co2 * @co2 AS ben_co2,
	diff_pm25 * @pm25 AS ben_pm25,
	diff_pm10 * @pm10 AS ben_pm10,
	diff_nox * @nox AS ben_nox,
	diff_rogs * @rog AS ben_rogs,
	diff_so2 * @so2 AS ben_so2
INTO #comparison
FROM #a;

-- saves comparisons
BEGIN TRANSACTION

UPDATE scenario_comparison
WITH (SERIALIZABLE)

SET diff_co = b.diff_co,
	diff_co2 = b.diff_co2,
	diff_pm25 = b.diff_pm25,
	diff_pm10 = b.diff_pm10,
	diff_nox = b.diff_nox,
	diff_rogs = b.diff_rogs,
	diff_so2 = b.diff_so2,
	ben_co = b.ben_co,
	ben_co2 = b.ben_co2,
	ben_pm25 = b.ben_pm25,
	ben_pm10 = b.ben_pm10,
	ben_nox = b.ben_nox,
	ben_rogs = b.ben_rogs,
	ben_so2 = b.ben_so2,
	co_value = @co,
	co2_value = @co2,
	pm2_5_value = @pm25,
	pm10_value = @pm10,
	nox_value = @nox,
	rog_value = @rog,
	so2_value = @so2,
	last_update_date = getdate()
FROM scenario_comparison a,
	#comparison b
WHERE a.scenario_id_base = @base_scenario_id
	AND a.scenario_id_build = @build_scenario_id
	AND a.analysis_id = @analysis_id
	AND a.scenario_year = @scenario_year

IF @@rowcount = 0
	INSERT INTO scenario_comparison (
		scenario_id_base,
		scenario_id_build,
		analysis_id,
		scenario_year,
		diff_co,
		diff_co2,
		diff_pm25,
		diff_pm10,
		diff_nox,
		diff_rogs,
		diff_so2,
		ben_co,
		ben_co2,
		ben_pm25,
		ben_pm10,
		ben_nox,
		ben_rogs,
		ben_so2,
		co_value,
		co2_value,
		pm2_5_value,
		pm10_value,
		nox_value,
		rog_value,
		so2_value,
		last_update_date
		)
	SELECT @base_scenario_id,
		@build_scenario_id,
		@analysis_id,
		@scenario_year,
		diff_co,
		diff_co2,
		diff_pm25,
		diff_pm10,
		diff_nox,
		diff_rogs,
		diff_so2,
		ben_co,
		ben_co2,
		ben_pm25,
		ben_pm10,
		ben_nox,
		ben_rogs,
		ben_so2,
		@co,
		@co2,
		@pm25,
		@pm10,
		@nox,
		@rog,
		@so2,
		getdate()
	FROM #comparison

COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_emissions_processor]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_emissions_processor] @base_scenario_id INT,
	@build_scenario_id INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

DECLARE @overall_start_date DATETIME = GETDATE();

PRINT 'Start run_emissions_processor ' + CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

DECLARE @start_date DATETIME

--dbcc dropcleanbuffers;
SET @start_date = GETDATE();

EXEC run_emissions_summary @base_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_emissions_summary base: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

SET @start_date = GETDATE();

EXEC run_emissions_summary @build_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_emissions_summary build: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

SET @start_date = GETDATE();

EXEC run_emissions_comparison @base_scenario_id,
	@build_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_emissions_comparison build: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

PRINT 'Finished run_emissions_processor ' + CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date
			), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

GO
/****** Object:  StoredProcedure [dbo].[run_emissions_summary]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_emissions_summary] @scenario_id INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

--set statistics xml on  
--change log
-- 20150309 JF changed metric_id to emission mapping to match EMFAC 2014 outputs
-- emissions query
SELECT metric_value AS co
INTO #co
FROM bca_abm.emissions
WHERE scenario_id = @scenario_id
	AND metric_id = 1
	AND season = 1;

SELECT metric_value AS co2
INTO #co2
FROM bca_abm.emissions
WHERE scenario_id = @scenario_id
	AND metric_id = 2
	AND season = 1;

SELECT metric_value AS pm25
INTO #pm25
FROM bca_abm.emissions
WHERE scenario_id = @scenario_id
	AND metric_id = 3
	AND season = 1;

SELECT metric_value AS pm10
INTO #pm10
FROM bca_abm.emissions
WHERE scenario_id = @scenario_id
	--and metric_id = 4    [20150309 JF] changed to EMFAC 2014 metric
	AND metric_id = 7
	AND season = 1;

SELECT metric_value AS nox
INTO #nox
FROM bca_abm.emissions
WHERE scenario_id = @scenario_id
	--and metric_id = 5    [20150309 JF] changed to EMFAC 2014 metric
	AND metric_id = 4
	AND season = 1;

SELECT metric_value AS rog
INTO #rog
FROM bca_abm.emissions
WHERE scenario_id = @scenario_id
	--and metric_id = 6    [20150309 JF] changed to EMFAC 2014 metric
	AND metric_id = 5
	AND season = 1;

SELECT metric_value AS so2
INTO #so2
FROM bca_abm.emissions
WHERE scenario_id = @scenario_id
	--and metric_id = 7    [20150309 JF] changed to EMFAC 2014 metric
	AND metric_id = 6
	AND season = 1;

SELECT co,
	co2,
	pm25,
	pm10,
	nox,
	rog,
	so2
INTO #summary
FROM #co
CROSS JOIN #co2
CROSS JOIN #pm25
CROSS JOIN #pm10
CROSS JOIN #nox
CROSS JOIN #rog
CROSS JOIN #so2;

--for debugging and sanity
SELECT *
FROM #summary

-- saves summary
BEGIN TRANSACTION

UPDATE scenario_summary
WITH (SERIALIZABLE)

SET tot_co = co,
	tot_co2 = co2,
	tot_pm25 = pm25,
	tot_pm10 = pm10,
	tot_nox = nox,
	tot_rogs = rog,
	tot_so2 = so2,
	last_update_date = getdate()
FROM scenario_summary a,
	#summary b
WHERE a.scenario_id = @scenario_id
	AND a.analysis_id = @analysis_id
	AND a.scenario_year = @scenario_year

IF @@rowcount = 0
	INSERT INTO scenario_summary (
		scenario_id,
		analysis_id,
		scenario_year,
		tot_co,
		tot_co2,
		tot_pm25,
		tot_pm10,
		tot_nox,
		tot_rogs,
		tot_so2,
		last_update_date
		)
	SELECT @scenario_id,
		@analysis_id,
		@scenario_year,
		co,
		co2,
		pm25,
		pm10,
		nox,
		rog,
		so2,
		getdate()
	FROM #summary

COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_emissions_summary_dfl]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[run_emissions_summary_dfl]
	@scenario_id int,
	@analysis_id int,
	@scenario_year int
WITH EXECUTE AS CALLER
AS
	SET NOCOUNT ON

	--Declare the EMFAC2014 metric IDs
	DECLARE @co_metric_id INT =  1;
	DECLARE @co2_metric_id INT = 2;
	DECLARE @pm25_metric_id INT = 3;
	DECLARE @pm10_metric_id INT = 10;
	DECLARE @nox_metric_id INT = 4;
	DECLARE @rogs_metric_id INT = 5;
	DECLARE @so2_metric_id INT = 6;

	BEGIN TRANSACTION
	
	UPDATE dbo.scenario_summary WITH (SERIALIZABLE)
    SET tot_co = (
			SELECT metric_value AS co
			FROM bca_abm.emissions
			WHERE scenario_id = @scenario_id
			AND metric_id = 1
			AND season = 1)
		,tot_co2 = (
			SELECT metric_value AS co2
			FROM bca_abm.emissions
			WHERE scenario_id = @scenario_id
			AND metric_id = 2
			AND season = 1)
		,tot_pm25 = (
			SELECT metric_value AS pm25
			FROM bca_abm.emissions
			WHERE scenario_id = @scenario_id
			AND metric_id = 3
			AND season = 1)
		,tot_pm10 = (
			SELECT metric_value AS pm10
			FROM bca_abm.emissions
			WHERE scenario_id = @scenario_id
			AND metric_id = 7
			AND season = 1)
		,tot_nox = (
			SELECT metric_value AS nox
			FROM bca_abm.emissions
			WHERE scenario_id = @scenario_id
			AND metric_id = 4
			AND season = 1)		
		,tot_rogs = (
			SELECT metric_value AS rog
			FROM bca_abm.emissions
			WHERE scenario_id = @scenario_id
			AND metric_id = 5
			AND season = 1)		
		,tot_so2 = (
			SELECT metric_value AS so2
			FROM bca_abm.emissions
			WHERE scenario_id = @scenario_id
			AND metric_id = 6
			AND season = 1)		
		,last_update_date = GETDATE()
		WHERE scenario_id = @scenario_id
        AND analysis_id = @analysis_id
        AND scenario_year = @scenario_year;

	COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_link_comparison]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[run_link_comparison] @base_scenario_id INT,
	@build_scenario_id INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

-- parameter variables
DECLARE @reliability_ratio FLOAT
DECLARE @crash_rate_pdo FLOAT
DECLARE @crash_rate_injury FLOAT
DECLARE @crash_rate_fatal FLOAT
DECLARE @crash_pdo_cost FLOAT
DECLARE @crash_injury_cost FLOAT
DECLARE @crash_fatal_cost FLOAT
DECLARE @voc_auto FLOAT
DECLARE @voc_truck_light FLOAT
DECLARE @voc_truck_medium FLOAT
DECLARE @voc_truck_heavy FLOAT
DECLARE @vot_commute FLOAT
DECLARE @vot_noncommute FLOAT
DECLARE @vor_auto FLOAT
DECLARE @vor_truck_light FLOAT
DECLARE @vor_truck_medium FLOAT
DECLARE @vor_truck_heavy FLOAT

SELECT @reliability_ratio = rel_ratio,
	@crash_rate_pdo = crash_rate_pdo,
	@crash_rate_injury = crash_rate_injury,
	@crash_rate_fatal = crash_rate_fatal,
	@crash_pdo_cost = crash_pdo_cost,
	@crash_injury_cost = crash_injury_cost,
	@crash_fatal_cost = crash_fatal_cost,
	@voc_auto = voc_auto,
	@voc_truck_light = voc_truck_light,
	@voc_truck_medium = voc_truck_medium,
	@voc_truck_heavy = voc_truck_heavy,
	@vot_commute = vot_commute,
	@vot_noncommute = vot_noncommute,
	@vor_auto = vor_auto,
	@vor_truck_light = vor_truck_light,
	@vor_truck_medium = vor_truck_medium,
	@vor_truck_heavy = vor_truck_heavy
FROM analysis_parameters
WHERE analysis_id = @analysis_id
	AND comparison_year = @scenario_year

-- comparison values
SELECT a.scenario_id AS base_scenario_id,
	b.scenario_id AS build_scenario_id,
	a.op_cost_auto - b.op_cost_auto AS cost_chg_op_auto,
	a.op_cost_trk_lht - b.op_cost_trk_lht AS cost_chg_op_lht,
	a.op_cost_trk_med - b.op_cost_trk_med AS cost_chg_op_med,
	a.op_cost_trk_hvy - b.op_cost_trk_hvy AS cost_chg_op_hvy,
	a.rel_cost_auto - b.rel_cost_auto AS cost_chg_rel_auto,
	a.rel_cost_trk_lht - b.rel_cost_trk_lht AS cost_chg_rel_trk_lht,
	a.rel_cost_trk_med - b.rel_cost_trk_med AS cost_chg_rel_trk_med,
	a.rel_cost_trk_hvy - b.rel_cost_trk_hvy AS cost_chg_rel_trk_hvy,
	a.crash_cost_pdo_tot - b.crash_cost_pdo_tot AS cost_chg_crash_pdo,
	a.crash_cost_inj_tot - b.crash_cost_inj_tot AS cost_chg_crash_inj,
	a.crash_cost_fat_tot - b.crash_cost_fat_tot AS cost_chg_crash_fat,
	a.rel_cost_auto + a.rel_cost_trk_lht + a.rel_cost_trk_med + a.rel_cost_trk_hvy AS base_rel_cost,
	b.rel_cost_auto + b.rel_cost_trk_lht + b.rel_cost_trk_med + b.rel_cost_trk_hvy AS build_rel_cost
INTO #comparison
FROM scenario_summary a
INNER JOIN scenario_summary b
	ON a.analysis_id = b.analysis_id
		AND a.scenario_year = b.scenario_year
WHERE a.analysis_id = @analysis_id
	AND a.scenario_year = @scenario_year
	AND a.scenario_id = @base_scenario_id
	AND b.scenario_id = @build_scenario_id;

-- saves comparisons
BEGIN TRANSACTION

UPDATE scenario_comparison
WITH (SERIALIZABLE)

SET ben_voc_auto = b.cost_chg_op_auto,
	ben_voc_truck_lht = b.cost_chg_op_lht,
	ben_voc_truck_med = b.cost_chg_op_med,
	ben_voc_truck_hvy = b.cost_chg_op_hvy,
	ben_relcost_auto = b.cost_chg_rel_auto,
	ben_relcost_truck_lht = b.cost_chg_rel_trk_lht,
	ben_relcost_truck_med = b.cost_chg_rel_trk_med,
	ben_relcost_truck_hvy = b.cost_chg_rel_trk_hvy,
	ben_crashcost_pdo = b.cost_chg_crash_pdo,
	ben_crashcost_inj = b.cost_chg_crash_inj,
	ben_crashcost_fat = b.cost_chg_crash_fat,
	base_rel_cost = b.base_rel_cost,
	build_rel_cost = b.build_rel_cost,
	rel_ratio = @reliability_ratio,
	crash_rate_pdo = @crash_rate_pdo,
	crash_rate_injury = @crash_rate_injury,
	crash_rate_fatal = @crash_rate_fatal,
	crash_pdo_cost = @crash_pdo_cost,
	crash_injury_cost = @crash_injury_cost,
	crash_fatal_cost = @crash_fatal_cost,
	voc_auto = @voc_auto,
	voc_truck_light = @voc_truck_light,
	voc_truck_medium = @voc_truck_medium,
	voc_truck_heavy = @voc_truck_heavy,
	vot_commute = @vot_commute,
	vot_noncommute = @vot_noncommute,
	vor_auto = @vor_auto,
	vor_truck_light = @vor_truck_light,
	vor_truck_medium = @vor_truck_medium,
	vor_truck_heavy = @vor_truck_heavy,
	last_update_date = getdate()
FROM scenario_comparison a
INNER JOIN #comparison b
	ON a.scenario_id_base = b.base_scenario_id
		AND a.scenario_id_build = b.build_scenario_id
WHERE a.analysis_id = @analysis_id
	AND a.scenario_year = @scenario_year
	AND a.scenario_id_base = @base_scenario_id
	AND a.scenario_id_build = @build_scenario_id

IF @@rowcount = 0
	INSERT INTO scenario_comparison (
		scenario_id_base,
		scenario_id_build,
		analysis_id,
		scenario_year,
		ben_voc_auto,
		ben_voc_truck_lht,
		ben_voc_truck_med,
		ben_voc_truck_hvy,
		ben_relcost_auto,
		ben_relcost_truck_lht,
		ben_relcost_truck_med,
		ben_relcost_truck_hvy,
		ben_crashcost_pdo,
		ben_crashcost_inj,
		ben_crashcost_fat,
		base_rel_cost,
		build_rel_cost,
		rel_ratio,
		crash_rate_pdo,
		crash_rate_injury,
		crash_rate_fatal,
		crash_pdo_cost,
		crash_injury_cost,
		crash_fatal_cost,
		voc_auto,
		voc_truck_light,
		voc_truck_medium,
		voc_truck_heavy,
		vot_commute,
		vot_noncommute,
		vor_auto,
		vor_truck_light,
		vor_truck_medium,
		vor_truck_heavy,
		last_update_date
		)
	SELECT @base_scenario_id,
		@build_scenario_id,
		@analysis_id,
		@scenario_year,
		cost_chg_op_auto,
		cost_chg_op_lht,
		cost_chg_op_med,
		cost_chg_op_hvy,
		cost_chg_rel_auto,
		cost_chg_rel_trk_lht,
		cost_chg_rel_trk_med,
		cost_chg_rel_trk_hvy,
		cost_chg_crash_pdo,
		cost_chg_crash_inj,
		cost_chg_crash_fat,
		base_rel_cost,
		build_rel_cost,
		@reliability_ratio,
		@crash_rate_pdo,
		@crash_rate_injury,
		@crash_rate_fatal,
		@crash_pdo_cost,
		@crash_injury_cost,
		@crash_fatal_cost,
		@voc_auto,
		@voc_truck_light,
		@voc_truck_medium,
		@voc_truck_heavy,
		@vot_commute,
		@vot_noncommute,
		@vor_auto,
		@vor_truck_light,
		@vor_truck_medium,
		@vor_truck_heavy,
		getdate()
	FROM #comparison

COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_link_processor]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[run_link_processor] @base_scenario_id INT,
	@build_scenario_id INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

DECLARE @overall_start_date DATETIME = GETDATE();

PRINT 'Started run_link_processor: ' + CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

DECLARE @start_date DATETIME

SET @start_date = GETDATE();

EXEC run_link_summary @base_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_link_summary base: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

SET @start_date = GETDATE();

EXEC run_link_summary @build_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_link_summary build: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

SET @start_date = GETDATE();

EXEC run_link_comparison @base_scenario_id,
	@build_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_link_comparison: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

PRINT 'Finished run_link_processor ' + CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date
			), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

GO
/****** Object:  StoredProcedure [dbo].[run_link_summary]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[run_link_summary] @scenario_id INT = 257,
	@analysis_id INT = 45,
	@scenario_year INT = 2013
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

DECLARE @overall_start_date DATETIME = GETDATE(), @timer DATETIME = GETDATE();

PRINT 'run_link_summary at ' + CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

-- parameter variables
DECLARE @reliability_ratio FLOAT
DECLARE @crash_pdo_cost FLOAT
DECLARE @crash_injury_cost FLOAT
DECLARE @crash_fatal_cost FLOAT
DECLARE @crash_rate_pdo FLOAT
DECLARE @crash_rate_injury FLOAT
DECLARE @crash_rate_fatal FLOAT
DECLARE @voc_auto FLOAT
DECLARE @voc_truck_light FLOAT
DECLARE @voc_truck_medium FLOAT
DECLARE @voc_truck_heavy FLOAT
DECLARE @vor_auto FLOAT
DECLARE @vor_truck_light FLOAT
DECLARE @vor_truck_medium FLOAT
DECLARE @vor_truck_heavy FLOAT

SELECT @reliability_ratio = rel_ratio,
	@crash_pdo_cost = crash_pdo_cost,
	@crash_injury_cost = crash_injury_cost,
	@crash_fatal_cost = crash_fatal_cost,
	@crash_rate_pdo = crash_rate_pdo,
	@crash_rate_injury = crash_rate_injury,
	@crash_rate_fatal = crash_rate_fatal,
	@voc_auto = voc_auto,
	@voc_truck_light = voc_truck_light,
	@voc_truck_medium = voc_truck_medium,
	@voc_truck_heavy = voc_truck_heavy,
	@vor_auto = vor_auto,
	@vor_truck_light = vor_truck_light,
	@vor_truck_medium = vor_truck_medium,
	@vor_truck_heavy = vor_truck_heavy
FROM analysis_parameters
WHERE analysis_id = @analysis_id
	AND comparison_year = @scenario_year

-- link query
SELECT hwy_flow.hwy_flow_id,
	hwy_flow.hwy_link_ab_tod_id,
	hwy_flow.TIME,
	hwy_flow.flow,
	(
		CASE 
			WHEN hwy_flow_mode.mode_id BETWEEN 1
					AND 8
				THEN hwy_flow_mode.flow
			ELSE 0
			END
		) AS vol_auto,
	(
		CASE 
			WHEN hwy_flow_mode.mode_id IN (32, 33)
				THEN hwy_flow_mode.flow
			ELSE 0
			END
		) AS vol_trk_lht,
	(
		CASE 
			WHEN hwy_flow_mode.mode_id IN (34, 35)
				THEN hwy_flow_mode.flow
			ELSE 0
			END
		) AS vol_trk_mht,
	(
		CASE 
			WHEN hwy_flow_mode.mode_id IN (36, 37)
				THEN hwy_flow_mode.flow
			ELSE 0
			END
		) AS vol_trk_hht
INTO #hwy_flow_by_mode
FROM bca_abm.hwy_flow AS hwy_flow
LEFT JOIN bca_abm.hwy_flow_mode AS hwy_flow_mode
	ON hwy_flow.hwy_flow_id = hwy_flow_mode.hwy_flow_id
		AND hwy_flow_mode.scenario_id = @scenario_id
WHERE hwy_flow.scenario_id = @scenario_id
	AND hwy_flow.TIME != 0
	--) SELECT COUNT(*) FROM hwy_flow_by_mode
	;

PRINT 'finished  SELECT * INTO #hwy_flow_by_mode. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT hwy_flow_id,
	hwy_link_ab_tod_id,
	max(TIME) AS time_cg,
	max(flow) AS vol_tot,
	sum(vol_auto) AS vol_auto,
	sum(vol_trk_lht) AS vol_trk_lht,
	sum(vol_trk_mht) AS vol_trk_mht,
	sum(vol_trk_hht) AS vol_trk_hht
INTO #hwy_flow
FROM #hwy_flow_by_mode
GROUP BY hwy_flow_id,
	hwy_link_ab_tod_id
	--) SELECT COUNT(*) FROM hwy_flow
	;

PRINT 'finished  SELECT * INTO #hwy_flow. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT #hwy_flow.*,
	hwy_link.length_mile AS length,
	ab_tod.tm AS time_ff,
	hwy_link.length_mile / (ab_tod.tm / 60) AS speed_ff
INTO #a
FROM #hwy_flow
INNER JOIN bca_abm.hwy_link_ab_tod AS ab_tod
	ON #hwy_flow.hwy_link_ab_tod_id = ab_tod.hwy_link_ab_tod_id
INNER JOIN bca_abm.hwy_link_ab AS ab
	ON ab_tod.hwy_link_ab_id = ab.hwy_link_ab_id
INNER JOIN bca_abm.hwy_link AS hwy_link
	ON ab.hwy_link_id = hwy_link.hwy_link_id
WHERE ab_tod.scenario_id = @scenario_id
	AND ab.scenario_id = @scenario_id
	AND hwy_link.scenario_id = @scenario_id
	--) SELECT COUNT(*) FROM a
	;

PRINT 'finished  SELECT * INTO #a. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT *,
	1.0274 * power(time_cg / (time_ff), 1.2204) AS ttim,
	vol_auto * length AS vmt_auto,
	vol_trk_lht * length AS vmt_trk_lht,
	vol_trk_mht * length AS vmt_trk_mht,
	vol_trk_hht * length AS vmt_trk_hht,
	vol_tot * length AS vmt_tot,
	time_cg / time_ff AS tti,
	vol_tot * length * @crash_rate_pdo AS crashes_pdo,
	vol_tot * length * @crash_rate_injury AS crashes_inj,
	vol_tot * length * @crash_rate_fatal AS crashes_fat
INTO #b
FROM #a
	--) SELECT COUNT(*) FROM b
	;

PRINT 'finished  SELECT * INTO #b. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT *,
	CASE 
		WHEN ttim > 3.0
			THEN 3.0
		ELSE ttim
		END AS ttim2,
	vmt_auto * @voc_auto AS auto_op_cost,
	vmt_trk_lht * @voc_truck_light AS trk_op_cost_lht,
	vmt_trk_mht * @voc_truck_medium AS trk_op_cost_med,
	vmt_trk_hht * @voc_truck_heavy AS trk_op_cost_hvy
INTO #c
FROM #b
	--) SELECT COUNT(*) FROM c
	;

PRINT 'finished  SELECT * INTO #c. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT *,
	power(ttim2, 0.8601) AS tti50,
	1 + 2.1406 * log(ttim2) AS tti80
INTO #d
FROM #c;

PRINT 'finished  SELECT * INTO #d. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT *,
	tti50 + @reliability_ratio * (tti80 - tti50) AS ttie
INTO #e
FROM #d;

PRINT 'finished  SELECT * INTO #e. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT *,
	ttie / speed_ff - 1 / speed_ff AS dly_per_mile
INTO #f
FROM #e;

PRINT 'finished  SELECT * INTO #f. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT *,
	(dly_per_mile * vmt_auto) / 60 AS dly_equiv_auto,
	(dly_per_mile * vmt_trk_lht) / 60 AS dly_equiv_trk_lht,
	(dly_per_mile * vmt_trk_mht) / 60 AS dly_equiv_trk_mht,
	(dly_per_mile * vmt_trk_hht) / 60 AS dly_equiv_trk_hht
INTO #g
FROM #f
	--) SELECT COUNT(*) FROM g
	;

PRINT 'finished  SELECT * INTO #g. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT auto_op_cost,
	trk_op_cost_lht,
	trk_op_cost_med,
	trk_op_cost_hvy,
	dly_equiv_auto * @vor_auto AS cost_rel_auto,
	dly_equiv_trk_lht * @vor_truck_light AS cost_rel_trk_lht,
	dly_equiv_trk_mht * @vor_truck_medium AS cost_rel_trk_med,
	dly_equiv_trk_hht * @vor_truck_heavy AS cost_rel_trk_hvy,
	crashes_pdo * @crash_pdo_cost AS cost_crashes_pdo,
	crashes_inj * @crash_injury_cost AS cost_crashes_inj,
	crashes_fat * @crash_fatal_cost AS cost_crashes_fat
INTO #benefits
FROM #g
	--) SELECT COUNT(*) FROM benefits
	;

PRINT 'finished  SELECT * INTO #benefits. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT sum(auto_op_cost) AS op_cost_auto,
	sum(trk_op_cost_lht) AS op_cost_trk_lht,
	sum(trk_op_cost_med) AS op_cost_trk_med,
	sum(trk_op_cost_hvy) AS op_cost_trk_hvy,
	sum(cost_rel_auto) AS rel_cost_auto,
	sum(cost_rel_trk_lht) AS rel_cost_trk_lht,
	sum(cost_rel_trk_med) AS rel_cost_trk_med,
	sum(cost_rel_trk_hvy) AS rel_cost_trk_hvy,
	sum(cost_crashes_pdo) AS crash_cost_pdo_tot,
	sum(cost_crashes_inj) AS crash_cost_inj_tot,
	sum(cost_crashes_fat) AS crash_cost_fat_tot
INTO #summary
FROM #benefits

PRINT 'finished  SELECT * INTO #summary. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT *
FROM #summary

---- saves summary
BEGIN TRANSACTION

UPDATE scenario_summary
WITH (SERIALIZABLE)

SET op_cost_auto = isnull(b.op_cost_auto, 0),
	op_cost_trk_lht = isnull(b.op_cost_trk_lht, 0),
	op_cost_trk_med = isnull(b.op_cost_trk_med, 0),
	op_cost_trk_hvy = isnull(b.op_cost_trk_hvy, 0),
	rel_cost_auto = isnull(b.rel_cost_auto, 0),
	rel_cost_trk_lht = isnull(b.rel_cost_trk_lht, 0),
	rel_cost_trk_med = isnull(b.rel_cost_trk_med, 0),
	rel_cost_trk_hvy = isnull(b.rel_cost_trk_hvy, 0),
	crash_cost_pdo_tot = isnull(b.crash_cost_pdo_tot, 0),
	crash_cost_inj_tot = isnull(b.crash_cost_inj_tot, 0),
	crash_cost_fat_tot = isnull(b.crash_cost_fat_tot, 0),
	last_update_date = getdate()
FROM scenario_summary a,
	#summary b
WHERE a.scenario_id = @scenario_id
	AND a.analysis_id = @analysis_id
	AND a.scenario_year = @scenario_year

IF @@rowcount = 0
	INSERT INTO scenario_summary (
		scenario_id,
		analysis_id,
		scenario_year,
		op_cost_auto,
		op_cost_trk_lht,
		op_cost_trk_med,
		op_cost_trk_hvy,
		rel_cost_auto,
		rel_cost_trk_lht,
		rel_cost_trk_med,
		rel_cost_trk_hvy,
		crash_cost_pdo_tot,
		crash_cost_inj_tot,
		crash_cost_fat_tot,
		last_update_date
		)
	SELECT @scenario_id,
		@analysis_id,
		@scenario_year,
		isnull(op_cost_auto, 0),
		isnull(op_cost_trk_lht, 0),
		isnull(op_cost_trk_med, 0),
		isnull(op_cost_trk_hvy, 0),
		isnull(rel_cost_auto, 0),
		isnull(rel_cost_trk_lht, 0),
		isnull(rel_cost_trk_med, 0),
		isnull(rel_cost_trk_hvy, 0),
		isnull(crash_cost_pdo_tot, 0),
		isnull(crash_cost_inj_tot, 0),
		isnull(crash_cost_fat_tot, 0),
		getdate()
	FROM #summary

COMMIT TRANSACTION

PRINT 'Finished run_link_summary at ' + CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();


GO
/****** Object:  StoredProcedure [dbo].[run_multiyear_processor]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_multiyear_processor] @analysis_id INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;

--v5: Jeff fixed the subtotal_ben_voc problem, search for 'v5' to find comment
/*--for testing 
	if object_id('tempdb..#scenario_comparison', 'u') is not null
	drop table #scenario_comparison;
	go
	if object_id('tempdb..#comparison_years', 'u') is not null
	drop table #comparison_years;
	go
	if object_id('tempdb..#comparison_years_start', 'u') is not null
	drop table #comparison_years_start;
	go
	if object_id('tempdb..#comparison_years_i1', 'u') is not null
	drop table #comparison_years_i1;
	go
	if object_id('tempdb..#comparison_years_i2', 'u') is not null
	drop table #comparison_years_i2;
	go
	if object_id('tempdb..#comparison_years_i3', 'u') is not null
	drop table #comparison_years_i3;
	go
	if object_id('tempdb..#comparison_years_i4', 'u') is not null
	drop table #comparison_years_i4;
	go
	if object_id('tempdb..#comparison_years_i5', 'u') is not null
	drop table #comparison_years_i5;
	go
	if object_id('tempdb..#comparison_years_previous_1', 'u') is not null
	drop table #comparison_years_previous_1;
	go
	if object_id('tempdb..#comparison_years_previous_2', 'u') is not null
	drop table #comparison_years_previous_2;
	go
	if object_id('tempdb..#multiyear_final_results', 'u') is not null
	drop table #multiyear_final_results;
	go
	
	declare @analysis_id int = 2;*/
DECLARE @year_start INT,
	@year_intermediate_1 INT,
	@year_intermediate_2 FLOAT,
	@year_intermediate_3 FLOAT,
	@year_intermediate_4 FLOAT,
	@year_intermediate_5 INT,
	@year_end INT,
	@year_reference INT,
	@rate_discount FLOAT,
	@annualization_factor FLOAT,
	@current_year INT,
	@current_iteration INT = 0,
	@count_scenario_comparison INT = 0,
	@max_scenario_comparison_year INT = 0;

--read analysis fields
SELECT @year_start = year_start,
	@year_intermediate_1 = year_intermediate_1,
	@year_intermediate_2 = year_intermediate_2,
	@year_intermediate_3 = year_intermediate_3,
	@year_intermediate_4 = year_intermediate_4,
	@year_intermediate_5 = year_intermediate_5,
	@year_end = year_end,
	@year_reference = year_reference,
	@rate_discount = rate_discount,
	@annualization_factor = annualization_factor
FROM analysis
WHERE id = @analysis_id;

SET @current_year = @year_start;

SELECT *
INTO #scenario_comparison
FROM scenario_comparison
WHERE analysis_id = @analysis_id
	AND scenario_year IN (@year_start, @year_intermediate_1, @year_intermediate_2, @year_intermediate_3, @year_intermediate_4, @year_intermediate_5
		)
ORDER BY scenario_year

SELECT @count_scenario_comparison = count(*),
	@max_scenario_comparison_year = max(scenario_year)
FROM #scenario_comparison

--Create blank records in multiyear_results for all years from year_start to year_end
BEGIN TRANSACTION

DELETE multiyear_results
WHERE analysis_id = @analysis_id;

WHILE @current_year <= @year_end
BEGIN
	INSERT INTO multiyear_results (
		scenario_id_base,
		scenario_id_build,
		analysis_id,
		comparison_year,
		period
		)
	VALUES (
		CASE 
			WHEN @current_year <= @max_scenario_comparison_year
				THEN - 1
			ELSE - 2
			END,
		CASE 
			WHEN @current_year <= @max_scenario_comparison_year
				THEN - 1
			ELSE - 2
			END,
		@analysis_id,
		@current_year,
		@current_iteration
		);

	SET @current_iteration = @current_iteration + 1;
	SET @current_year = @current_year + 1;
END

COMMIT TRANSACTION

--populate individual benefit columns with annualized results for start_year
-- don't need this for most fields whose values are determined by fact that base and build are the same (so dif is 0 and ratio is 1)
BEGIN TRANSACTION

UPDATE multiyear_results
SET scenario_id_base = sc.scenario_id_base,
	scenario_id_build = sc.scenario_id_build,
	-- these will end up NULL if no start_year run of person_trip_processor (which is their default value so no harm done)
	base_tt_person = @annualization_factor * sc.base_tt_person,
	build_tt_person = @annualization_factor * sc.build_tt_person,
	-- these will end up NULL if no start_year run of aggregate_trips_processor (which is their default value so no harm done)
	base_tt_truck_comm = @annualization_factor * (sc.base_tt_comm + sc.base_tt_truck),
	build_tt_truck_comm = @annualization_factor * (sc.build_tt_comm + sc.build_tt_truck),
	-- these will end up NULL if no start_year run of link_processor
	base_rel_cost = @annualization_factor * sc.base_rel_cost,
	build_rel_cost = @annualization_factor * sc.build_rel_cost,
	-- these will end up NULL if no start_year run of demobraphics_processor
	persons = sc.persons,
	persons_coc = sc.persons_coc,
	persons_coc_race = sc.persons_coc_race,
	persons_coc_age = sc.persons_coc_age,
	persons_coc_poverty = sc.persons_coc_poverty
FROM multiyear_results mr
INNER JOIN #scenario_comparison sc
	ON mr.analysis_id = sc.analysis_id
		AND mr.comparison_year = sc.scenario_year
WHERE mr.analysis_id = @analysis_id
	AND mr.comparison_year = @year_start

COMMIT TRANSACTION

--populate individual benefit columns with annualized results for intermediate years
BEGIN TRANSACTION

UPDATE multiyear_results
SET scenario_id_base = sc.scenario_id_base,
	scenario_id_build = sc.scenario_id_build,
	ben_co = @annualization_factor * sc.ben_co,
	ben_co2 = @annualization_factor * sc.ben_co2,
	ben_nox = @annualization_factor * sc.ben_nox,
	ben_pm10 = @annualization_factor * sc.ben_pm10,
	ben_pm25 = @annualization_factor * sc.ben_pm25,
	ben_rogs = @annualization_factor * sc.ben_rogs,
	ben_so2 = @annualization_factor * sc.ben_so2,
	ben_autos_owned_coc = sc.ben_autos_owned_coc,
	ben_autos_owned = sc.ben_autos_owned,
	ben_crashcost_fat = sc.ben_crashcost_fat,
	ben_crashcost_inj = sc.ben_crashcost_inj,
	ben_crashcost_pdo = sc.ben_crashcost_pdo,
	ben_persons_phys_active_coc = sc.ben_persons_phys_active_coc,
	ben_persons_phys_active = sc.ben_persons_phys_active,
	ben_relcost_auto = @annualization_factor * sc.ben_relcost_auto,
	ben_relcost_truck_hvy = @annualization_factor * sc.ben_relcost_truck_hvy,
	ben_relcost_truck_lht = @annualization_factor * sc.ben_relcost_truck_lht,
	ben_relcost_truck_med = @annualization_factor * sc.ben_relcost_truck_med,
	ben_tt_at_commute = @annualization_factor * sc.ben_tt_at_commute,
	ben_tt_auto_commute = @annualization_factor * sc.ben_tt_auto_commute,
	ben_tt_transit_commute = @annualization_factor * sc.ben_tt_transit_commute,
	ben_tt_at_noncommute = @annualization_factor * sc.ben_tt_at_noncommute,
	ben_tt_auto_noncommute = @annualization_factor * sc.ben_tt_auto_noncommute,
	ben_tt_transit_noncommute = @annualization_factor * sc.ben_tt_transit_noncommute,
	ben_tt_at_commute_coc = @annualization_factor * sc.ben_tt_at_commute_coc,
	ben_tt_auto_commute_coc = @annualization_factor * sc.ben_tt_auto_commute_coc,
	ben_tt_transit_commute_coc = @annualization_factor * sc.ben_tt_transit_commute_coc,
	ben_tt_at_noncommute_coc = @annualization_factor * sc.ben_tt_at_noncommute_coc,
	ben_tt_auto_noncommute_coc = @annualization_factor * sc.ben_tt_auto_noncommute_coc,
	ben_tt_transit_noncommute_coc = @annualization_factor * sc.ben_tt_transit_noncommute_coc,
	ben_tt_comm = @annualization_factor * sc.ben_tt_comm,
	ben_tt_truck = @annualization_factor * sc.ben_tt_truck,
	ben_voc_auto = @annualization_factor * sc.ben_voc_auto,
	ben_voc_truck_lht = @annualization_factor * sc.ben_voc_truck_lht,
	ben_voc_truck_med = @annualization_factor * sc.ben_voc_truck_med,
	ben_voc_truck_hvy = @annualization_factor * sc.ben_voc_truck_hvy,
	toll_rev_base = @annualization_factor * (sc.toll_auto_commute_base + toll_auto_noncommute_base) + toll_comm_base + toll_truck_base,
	toll_rev_build = @annualization_factor * (sc.toll_auto_commute_build + toll_auto_noncommute_build) + toll_comm_build + toll_truck_build,
	fare_rev_base = @annualization_factor * (sc.fare_transit_commute_base + fare_transit_noncommute_base),
	fare_rev_build = @annualization_factor * (sc.fare_transit_commute_build + fare_transit_noncommute_build),
	-- totals_feature
	base_tt_person = @annualization_factor * sc.base_tt_person,
	build_tt_person = @annualization_factor * sc.build_tt_person,
	base_tt_truck_comm = @annualization_factor * (sc.base_tt_comm + sc.base_tt_truck),
	build_tt_truck_comm = @annualization_factor * (sc.build_tt_comm + sc.build_tt_truck),
	ratio_tt_person = sc.build_tt_person / sc.base_tt_person,
	ratio_tt_truck_comm = (sc.build_tt_comm + sc.build_tt_truck) / (sc.base_tt_comm + sc.base_tt_truck),
	base_rel_cost = @annualization_factor * sc.base_rel_cost,
	build_rel_cost = @annualization_factor * sc.build_rel_cost,
	-- coc_detail
	ben_autos_owned_coc_race = sc.ben_autos_owned_coc_race,
	ben_persons_phys_active_coc_race = sc.ben_persons_phys_active_coc_race,
	ben_tt_at_commute_coc_race = @annualization_factor * sc.ben_tt_at_commute_coc_race,
	ben_tt_auto_commute_coc_race = @annualization_factor * sc.ben_tt_auto_commute_coc_race,
	ben_tt_transit_commute_coc_race = @annualization_factor * sc.ben_tt_transit_commute_coc_race,
	ben_tt_at_noncommute_coc_race = @annualization_factor * sc.ben_tt_at_noncommute_coc_race,
	ben_tt_auto_noncommute_coc_race = @annualization_factor * sc.ben_tt_auto_noncommute_coc_race,
	ben_tt_transit_noncommute_coc_race = @annualization_factor * sc.ben_tt_transit_noncommute_coc_race,
	ben_autos_owned_coc_age = sc.ben_autos_owned_coc_age,
	ben_persons_phys_active_coc_age = sc.ben_persons_phys_active_coc_age,
	ben_tt_at_commute_coc_age = @annualization_factor * sc.ben_tt_at_commute_coc_age,
	ben_tt_auto_commute_coc_age = @annualization_factor * sc.ben_tt_auto_commute_coc_age,
	ben_tt_transit_commute_coc_age = @annualization_factor * sc.ben_tt_transit_commute_coc_age,
	ben_tt_at_noncommute_coc_age = @annualization_factor * sc.ben_tt_at_noncommute_coc_age,
	ben_tt_auto_noncommute_coc_age = @annualization_factor * sc.ben_tt_auto_noncommute_coc_age,
	ben_tt_transit_noncommute_coc_age = @annualization_factor * sc.ben_tt_transit_noncommute_coc_age,
	ben_autos_owned_coc_poverty = sc.ben_autos_owned_coc_poverty,
	ben_persons_phys_active_coc_poverty = sc.ben_persons_phys_active_coc_poverty,
	ben_tt_at_commute_coc_poverty = @annualization_factor * sc.ben_tt_at_commute_coc_poverty,
	ben_tt_auto_commute_coc_poverty = @annualization_factor * sc.ben_tt_auto_commute_coc_poverty,
	ben_tt_transit_commute_coc_poverty = @annualization_factor * sc.ben_tt_transit_commute_coc_poverty,
	ben_tt_at_noncommute_coc_poverty = @annualization_factor * sc.ben_tt_at_noncommute_coc_poverty,
	ben_tt_auto_noncommute_coc_poverty = @annualization_factor * sc.ben_tt_auto_noncommute_coc_poverty,
	ben_tt_transit_noncommute_coc_poverty = @annualization_factor * sc.ben_tt_transit_noncommute_coc_poverty,
	persons = sc.persons,
	persons_coc = sc.persons_coc,
	persons_coc_race = sc.persons_coc_race,
	persons_coc_age = sc.persons_coc_age,
	persons_coc_poverty = sc.persons_coc_poverty
FROM multiyear_results mr
INNER JOIN #scenario_comparison sc
	ON mr.analysis_id = sc.analysis_id
		AND mr.comparison_year = sc.scenario_year
WHERE mr.analysis_id = @analysis_id
	AND mr.comparison_year IN (@year_intermediate_1, @year_intermediate_2, @year_intermediate_3, @year_intermediate_4, @year_intermediate_5
		)

-- from cost_inputs update multiyear_results
UPDATE multiyear_results
SET cost_capital = capital.cost_value,
	cost_finance = finance.cost_value,
	cost_om = om.cost_value
FROM multiyear_results mr
INNER JOIN [finance.netcosts] capital
	ON mr.analysis_id = capital.bca_id
		AND mr.comparison_year = capital.year
INNER JOIN [finance.netcosts] finance
	ON mr.analysis_id = finance.bca_id
		AND mr.comparison_year = finance.year
INNER JOIN [finance.netcosts] om
	ON mr.analysis_id = om.bca_id
		AND mr.comparison_year = om.year
WHERE analysis_id = @analysis_id
	AND capital.cost_id = 1
	AND finance.cost_id = 2
	AND om.cost_id = 3;

COMMIT TRANSACTION

-- begin interpolation process
SELECT row_number() OVER (
		ORDER BY comparison_year
		) AS rownum,
	*
INTO #comparison_years
FROM multiyear_results
WHERE analysis_id = @analysis_id
	AND comparison_year IN (@year_start, @year_intermediate_1, @year_intermediate_2, @year_intermediate_3, @year_intermediate_4, @year_intermediate_5
		);

SELECT *
INTO #comparison_years_start
FROM #comparison_years
WHERE rownum = 1;

SELECT *
INTO #comparison_years_i1
FROM #comparison_years
WHERE rownum = 2;

SELECT *
INTO #comparison_years_i2
FROM #comparison_years
WHERE rownum = 3;

SELECT *
INTO #comparison_years_i3
FROM #comparison_years
WHERE rownum = 4;

SELECT *
INTO #comparison_years_i4
FROM #comparison_years
WHERE rownum = 5;

SELECT *
INTO #comparison_years_i5
FROM #comparison_years
WHERE rownum = 6;

BEGIN TRANSACTION

SET @current_year = (
		SELECT TOP 1 comparison_year
		FROM #comparison_years_start
		) + 1;

WHILE @current_year < (
		SELECT TOP 1 comparison_year
		FROM #comparison_years_i1
		)
BEGIN
	UPDATE multiyear_results
	SET ben_co = (
			(
				SELECT TOP 1 ben_co
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_co
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_co
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_co2 = (
			(
				SELECT TOP 1 ben_co2
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_co2
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_co2
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_nox = (
			(
				SELECT TOP 1 ben_nox
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_nox
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_nox
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_pm10 = (
			(
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_pm10
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_pm25 = (
			(
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_pm25
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_rogs = (
			(
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_rogs
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_so2 = (
			(
				SELECT TOP 1 ben_so2
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_so2
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_so2
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc = (
			(
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned = (
			(
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_fat = (
			(
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_fat
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_inj = (
			(
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_inj
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_pdo = (
			(
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_pdo
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active = (
			(
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_auto = (
			(
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_auto
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_hvy = (
			(
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_hvy
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_lht = (
			(
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_lht
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_med = (
			(
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_med
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute = (
			(
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute = (
			(
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute = (
			(
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute = (
			(
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_comm = (
			(
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_truck = (
			(
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_truck
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_auto = (
			(
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_auto
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_lht = (
			(
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_lht
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_med = (
			(
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_med
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_hvy = (
			(
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_hvy
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		toll_rev_base = (
			(
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 toll_rev_base
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		toll_rev_build = (
			(
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 toll_rev_build
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		fare_rev_base = (
			(
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 fare_rev_base
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		fare_rev_build = (
			(
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 fare_rev_build
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		-- totals_feature
		base_tt_person = (
			(
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 base_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_tt_person = (
			(
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 build_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		base_tt_truck_comm = (
			(
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 base_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			), --added by JC 2010.10.20
		build_tt_truck_comm = (
			(
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 build_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			), --added by JC 2010.10.20
		ratio_tt_person = (
			(
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ratio_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ratio_tt_truck_comm = (
			(
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ratio_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		base_rel_cost = (
			(
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 base_rel_cost
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_rel_cost = (
			(
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 build_rel_cost
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		-- coc detail
		ben_autos_owned_coc_race = (
			(
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_race = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc_age = (
			(
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_age = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc_poverty = (
			(
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_poverty = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons = (
			(
				SELECT TOP 1 persons
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 persons
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 persons
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc = (
			(
				SELECT TOP 1 persons_coc
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 persons_coc
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_race = (
			(
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_age = (
			(
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_poverty = (
			(
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_i1
				) - (
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_start
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i1
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_start
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			)
	FROM multiyear_results mr
	WHERE mr.analysis_id = @analysis_id
		AND mr.comparison_year = @current_year;

	SET @current_year += 1;
END;

SET @current_year = (
		SELECT TOP 1 comparison_year
		FROM #comparison_years_i1
		) + 1;

WHILE @current_year < (
		SELECT TOP 1 comparison_year
		FROM #comparison_years_i2
		)
BEGIN
	UPDATE multiyear_results
	SET ben_co = (
			(
				SELECT TOP 1 ben_co
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_co
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_co
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_co2 = (
			(
				SELECT TOP 1 ben_co2
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_co2
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_co2
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_nox = (
			(
				SELECT TOP 1 ben_nox
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_nox
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_nox
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_pm10 = (
			(
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_pm10
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_pm25 = (
			(
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_pm25
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_rogs = (
			(
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_rogs
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_so2 = (
			(
				SELECT TOP 1 ben_so2
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_so2
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_so2
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc = (
			(
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned = (
			(
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_fat = (
			(
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_fat
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_inj = (
			(
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_inj
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_pdo = (
			(
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_pdo
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active = (
			(
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_auto = (
			(
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_auto
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_hvy = (
			(
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_hvy
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_lht = (
			(
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_lht
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_med = (
			(
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_med
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute = (
			(
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute = (
			(
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute = (
			(
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute = (
			(
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_comm = (
			(
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_truck = (
			(
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_truck
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_auto = (
			(
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_auto
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_lht = (
			(
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_lht
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_med = (
			(
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_med
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_hvy = (
			(
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_hvy
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		toll_rev_base = (
			(
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 toll_rev_base
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		toll_rev_build = (
			(
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 toll_rev_build
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		fare_rev_base = (
			(
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 fare_rev_base
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		fare_rev_build = (
			(
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 fare_rev_build
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		-- totals_feature
		base_tt_person = (
			(
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 base_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_tt_person = (
			(
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 build_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		base_tt_truck_comm = (
			(
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 base_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_tt_truck_comm = (
			(
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 build_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ratio_tt_person = (
			(
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ratio_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ratio_tt_truck_comm = (
			(
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ratio_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		base_rel_cost = (
			(
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 base_rel_cost
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_rel_cost = (
			(
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 build_rel_cost
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		-- coc detail
		ben_autos_owned_coc_race = (
			(
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_race = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc_age = (
			(
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_age = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc_poverty = (
			(
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_poverty = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons = (
			(
				SELECT TOP 1 persons
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 persons
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 persons
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc = (
			(
				SELECT TOP 1 persons_coc
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 persons_coc
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_race = (
			(
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_age = (
			(
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_poverty = (
			(
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			)
	FROM multiyear_results mr
	WHERE mr.analysis_id = @analysis_id
		AND mr.comparison_year = @current_year;

	SET @current_year += 1;
END;

SET @current_year = (
		SELECT TOP 1 comparison_year
		FROM #comparison_years_i2
		) + 1;

WHILE @current_year < (
		SELECT TOP 1 comparison_year
		FROM #comparison_years_i3
		)
BEGIN
	UPDATE multiyear_results
	SET ben_co = (
			(
				SELECT TOP 1 ben_co
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_co
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_co
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_co2 = (
			(
				SELECT TOP 1 ben_co2
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_co2
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_co2
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_nox = (
			(
				SELECT TOP 1 ben_nox
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_nox
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_nox
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_pm10 = (
			(
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_pm10
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_pm25 = (
			(
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_pm25
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_rogs = (
			(
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_rogs
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_so2 = (
			(
				SELECT TOP 1 ben_so2
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_so2
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_so2
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc = (
			(
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned = (
			(
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_fat = (
			(
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_fat
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_inj = (
			(
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_inj
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_pdo = (
			(
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_pdo
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active = (
			(
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_auto = (
			(
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_auto
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_hvy = (
			(
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_hvy
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_lht = (
			(
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_lht
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_med = (
			(
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_med
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute = (
			(
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute = (
			(
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute = (
			(
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute = (
			(
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_comm = (
			(
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_truck = (
			(
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_truck
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_auto = (
			(
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_auto
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_lht = (
			(
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_lht
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_med = (
			(
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_med
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_hvy = (
			(
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_hvy
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		toll_rev_base = (
			(
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 toll_rev_base
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		toll_rev_build = (
			(
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 toll_rev_build
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		fare_rev_base = (
			(
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 fare_rev_base
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		fare_rev_build = (
			(
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 fare_rev_build
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		-- totals_feature
		base_tt_person = (
			(
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 base_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_tt_person = (
			(
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 build_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		base_tt_truck_comm = (
			(
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 base_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_tt_truck_comm = (
			(
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 build_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ratio_tt_person = (
			(
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ratio_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ratio_tt_truck_comm = (
			(
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ratio_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		base_rel_cost = (
			(
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 base_rel_cost
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_rel_cost = (
			(
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_i2
				) - (
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_i1
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i2
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i1
							)
						)
				END
			) + (
			SELECT TOP 1 build_rel_cost
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		-- coc detail
		ben_autos_owned_coc_race = (
			(
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_race = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc_age = (
			(
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_age = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc_poverty = (
			(
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_poverty = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons = (
			(
				SELECT TOP 1 persons
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 persons
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 persons
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc = (
			(
				SELECT TOP 1 persons_coc
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 persons_coc
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_race = (
			(
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_age = (
			(
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_poverty = (
			(
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_i3
				) - (
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_i2
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i3
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i2
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			)
	FROM multiyear_results mr
	WHERE mr.analysis_id = @analysis_id
		AND mr.comparison_year = @current_year;

	SET @current_year += 1;
END;

SET @current_year = (
		SELECT TOP 1 comparison_year
		FROM #comparison_years_i3
		) + 1;

WHILE @current_year < (
		SELECT TOP 1 comparison_year
		FROM #comparison_years_i4
		)
BEGIN
	UPDATE multiyear_results
	SET ben_co = (
			(
				SELECT TOP 1 ben_co
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_co
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_co
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_co2 = (
			(
				SELECT TOP 1 ben_co2
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_co2
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_co2
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_nox = (
			(
				SELECT TOP 1 ben_nox
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_nox
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_nox
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_pm10 = (
			(
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_pm10
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_pm25 = (
			(
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_pm25
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_rogs = (
			(
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_rogs
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_so2 = (
			(
				SELECT TOP 1 ben_so2
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_so2
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_so2
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc = (
			(
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned = (
			(
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_fat = (
			(
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_fat
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_inj = (
			(
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_inj
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_pdo = (
			(
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_pdo
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active = (
			(
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_auto = (
			(
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_auto
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_hvy = (
			(
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_hvy
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_lht = (
			(
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_lht
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_med = (
			(
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_med
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute = (
			(
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute = (
			(
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute = (
			(
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute = (
			(
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_comm = (
			(
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_truck = (
			(
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_truck
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_auto = (
			(
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_auto
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_lht = (
			(
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_lht
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_med = (
			(
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_med
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_hvy = (
			(
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_hvy
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		toll_rev_base = (
			(
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 toll_rev_base
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		toll_rev_build = (
			(
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 toll_rev_build
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		fare_rev_base = (
			(
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 fare_rev_base
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		fare_rev_build = (
			(
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 fare_rev_build
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		-- totals_feature
		base_tt_person = (
			(
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 base_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_tt_person = (
			(
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 build_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		base_tt_truck_comm = (
			(
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 base_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_tt_truck_comm = (
			(
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 build_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ratio_tt_person = (
			(
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ratio_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ratio_tt_truck_comm = (
			(
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ratio_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		base_rel_cost = (
			(
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 base_rel_cost
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_rel_cost = (
			(
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 build_rel_cost
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		-- coc detail
		ben_autos_owned_coc_race = (
			(
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_race = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc_age = (
			(
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_age = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc_poverty = (
			(
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_poverty = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons = (
			(
				SELECT TOP 1 persons
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 persons
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 persons
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc = (
			(
				SELECT TOP 1 persons_coc
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 persons_coc
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_race = (
			(
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_age = (
			(
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_poverty = (
			(
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_i4
				) - (
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_i3
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i4
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i3
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			)
	FROM multiyear_results mr
	WHERE mr.analysis_id = @analysis_id
		AND mr.comparison_year = @current_year;

	SET @current_year += 1;
END;

SET @current_year = (
		SELECT TOP 1 comparison_year
		FROM #comparison_years_i4
		) + 1;

WHILE @current_year < (
		SELECT TOP 1 comparison_year
		FROM #comparison_years_i5
		)
BEGIN
	UPDATE multiyear_results
	SET ben_co = (
			(
				SELECT TOP 1 ben_co
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_co
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_co
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_co2 = (
			(
				SELECT TOP 1 ben_co2
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_co2
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_co2
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_nox = (
			(
				SELECT TOP 1 ben_nox
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_nox
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_nox
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_pm10 = (
			(
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_pm10
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_pm25 = (
			(
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_pm25
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_rogs = (
			(
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_rogs
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_so2 = (
			(
				SELECT TOP 1 ben_so2
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_so2
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_so2
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc = (
			(
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned = (
			(
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_fat = (
			(
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_fat
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_inj = (
			(
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_inj
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_crashcost_pdo = (
			(
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_crashcost_pdo
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active = (
			(
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_auto = (
			(
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_auto
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_hvy = (
			(
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_hvy
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_lht = (
			(
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_lht
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_relcost_truck_med = (
			(
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_relcost_truck_med
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute = (
			(
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute = (
			(
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute = (
			(
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute = (
			(
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_comm = (
			(
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_truck = (
			(
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_truck
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_auto = (
			(
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_auto
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_lht = (
			(
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_lht
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_med = (
			(
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_med
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_voc_truck_hvy = (
			(
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_voc_truck_hvy
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		toll_rev_base = (
			(
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 toll_rev_base
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		toll_rev_build = (
			(
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 toll_rev_build
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		fare_rev_base = (
			(
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 fare_rev_base
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		fare_rev_build = (
			(
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 fare_rev_build
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		-- totals_feature
		base_tt_person = (
			(
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 base_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_tt_person = (
			(
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 build_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		base_tt_truck_comm = (
			(
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 base_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_tt_truck_comm = (
			(
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 build_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ratio_tt_person = (
			(
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ratio_tt_person
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ratio_tt_truck_comm = (
			(
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ratio_tt_truck_comm
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		base_rel_cost = (
			(
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 base_rel_cost
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		build_rel_cost = (
			(
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 build_rel_cost
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		-- coc detail
		ben_autos_owned_coc_race = (
			(
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_race = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc_age = (
			(
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_age = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_autos_owned_coc_poverty = (
			(
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_autos_owned_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_persons_phys_active_coc_poverty = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_persons_phys_active_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_commute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_at_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_auto_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		ben_tt_transit_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons = (
			(
				SELECT TOP 1 persons
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 persons
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 persons
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc = (
			(
				SELECT TOP 1 persons_coc
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 persons_coc
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_race = (
			(
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_race
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_age = (
			(
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_age
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			),
		persons_coc_poverty = (
			(
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_i5
				) - (
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_i4
				)
			) / (
			CASE 
				WHEN (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						) = 0
					THEN 1
				ELSE (
						(
							SELECT TOP 1 period
							FROM #comparison_years_i5
							) - (
							SELECT TOP 1 period
							FROM #comparison_years_i4
							)
						)
				END
			) + (
			SELECT TOP 1 persons_coc_poverty
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
				AND period = mr.period - 1
			)
	FROM multiyear_results mr
	WHERE mr.analysis_id = @analysis_id
		AND mr.comparison_year = @current_year;

	SET @current_year += 1;
END;

COMMIT TRANSACTION

-- begin extrapolation process
SELECT *
INTO #comparison_years_previous_1
FROM multiyear_results
WHERE analysis_id = @analysis_id
	AND comparison_year = @max_scenario_comparison_year;

SELECT *
INTO #comparison_years_previous_2
FROM multiyear_results
WHERE analysis_id = @analysis_id
	AND comparison_year = @max_scenario_comparison_year - 1;

BEGIN TRANSACTION

SET @current_year = @max_scenario_comparison_year + 1;

WHILE @current_year <= @year_end
BEGIN
	UPDATE multiyear_results
	SET ben_co = (
			(
				SELECT TOP 1 ben_co
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_co
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_co
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_co2 = (
			(
				SELECT TOP 1 ben_co2
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_co2
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_co2
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_nox = (
			(
				SELECT TOP 1 ben_nox
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_nox
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_nox
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_pm10 = (
			(
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_pm10
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_pm10
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_pm25 = (
			(
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_pm25
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_pm25
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_rogs = (
			(
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_rogs
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_rogs
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_so2 = (
			(
				SELECT TOP 1 ben_so2
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_so2
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_so2
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_autos_owned_coc = (
			(
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_autos_owned_coc
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_autos_owned_coc
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_autos_owned = (
			(
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_autos_owned
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_autos_owned
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_crashcost_fat = (
			(
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_crashcost_fat
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_crashcost_fat
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_crashcost_inj = (
			(
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_crashcost_inj
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_crashcost_inj
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_crashcost_pdo = (
			(
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_crashcost_pdo
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_crashcost_pdo
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_persons_phys_active_coc = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_persons_phys_active_coc
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_persons_phys_active = (
			(
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_persons_phys_active
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_persons_phys_active
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_relcost_auto = (
			(
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_relcost_auto
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_relcost_auto
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_relcost_truck_hvy = (
			(
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_relcost_truck_hvy
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_relcost_truck_lht = (
			(
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_relcost_truck_lht
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_relcost_truck_lht
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_relcost_truck_med = (
			(
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_relcost_truck_med
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_relcost_truck_med
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_at_commute = (
			(
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_at_commute
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_at_commute
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_auto_commute = (
			(
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_auto_commute
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_auto_commute
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_transit_commute = (
			(
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_transit_commute
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_transit_commute
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_at_noncommute = (
			(
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_at_noncommute
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_at_noncommute
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_auto_noncommute = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_auto_noncommute
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_transit_noncommute = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_transit_noncommute
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_at_commute_coc = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_at_commute_coc
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_auto_commute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_auto_commute_coc
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_transit_commute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_transit_commute_coc
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_at_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_at_noncommute_coc
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_auto_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_auto_noncommute_coc
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_transit_noncommute_coc = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_transit_noncommute_coc
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_comm = (
			(
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_comm
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_comm
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_truck = (
			(
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_truck
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_truck
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_voc_auto = (
			(
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_voc_auto
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_voc_auto
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_voc_truck_lht = (
			(
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_voc_truck_lht
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_voc_truck_lht
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_voc_truck_med = (
			(
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_voc_truck_med
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_voc_truck_med
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_voc_truck_hvy = (
			(
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_voc_truck_hvy
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_voc_truck_hvy
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		toll_rev_base = (
			(
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 toll_rev_base
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 toll_rev_base
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		toll_rev_build = (
			(
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 toll_rev_build
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 toll_rev_build
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		fare_rev_base = (
			(
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 fare_rev_base
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 fare_rev_base
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		fare_rev_build = (
			(
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 fare_rev_build
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 fare_rev_build
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		-- totals_feature
		base_tt_person = (
			(
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 base_tt_person
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 base_tt_person
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		build_tt_person = (
			(
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 build_tt_person
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 build_tt_person
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		base_tt_truck_comm = (
			(
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 base_tt_truck_comm
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 base_tt_truck_comm
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		build_tt_truck_comm = (
			(
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 build_tt_truck_comm
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 build_tt_truck_comm
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ratio_tt_person = (
			(
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ratio_tt_person
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ratio_tt_person
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ratio_tt_truck_comm = (
			(
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ratio_tt_truck_comm
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ratio_tt_truck_comm
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		base_rel_cost = (
			(
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 base_rel_cost
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 base_rel_cost
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		build_rel_cost = (
			(
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 build_rel_cost
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 build_rel_cost
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		-- coc detail
		ben_autos_owned_coc_race = (
			(
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_autos_owned_coc_race
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_persons_phys_active_coc_race = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_persons_phys_active_coc_race
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_at_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_at_commute_coc_race
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_auto_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_auto_commute_coc_race
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_transit_commute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_transit_commute_coc_race
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_at_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_at_noncommute_coc_race
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_auto_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_race
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_transit_noncommute_coc_race = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_race
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_autos_owned_coc_age = (
			(
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_autos_owned_coc_age
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_persons_phys_active_coc_age = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_persons_phys_active_coc_age
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_at_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_at_commute_coc_age
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_auto_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_auto_commute_coc_age
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_transit_commute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_transit_commute_coc_age
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_at_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_at_noncommute_coc_age
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_auto_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_age
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_transit_noncommute_coc_age = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_age
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_autos_owned_coc_poverty = (
			(
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_autos_owned_coc_poverty
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_persons_phys_active_coc_poverty = (
			(
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_persons_phys_active_coc_poverty
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_at_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_at_commute_coc_poverty
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_auto_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_auto_commute_coc_poverty
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_transit_commute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_transit_commute_coc_poverty
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_at_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_at_noncommute_coc_poverty
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_auto_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_auto_noncommute_coc_poverty
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		ben_tt_transit_noncommute_coc_poverty = (
			(
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 ben_tt_transit_noncommute_coc_poverty
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		persons = (
			(
				SELECT TOP 1 persons
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 persons
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 persons
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		persons_coc = (
			(
				SELECT TOP 1 persons_coc
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 persons_coc
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 persons_coc
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		persons_coc_race = (
			(
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 persons_coc_race
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 persons_coc_race
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		persons_coc_age = (
			(
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 persons_coc_age
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 persons_coc_age
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			),
		persons_coc_poverty = (
			(
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_previous_1
				) - (
				SELECT TOP 1 persons_coc_poverty
				FROM #comparison_years_previous_2
				) + (
				SELECT TOP 1 persons_coc_poverty
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
					AND period = mr.period - 1
				)
			)
	FROM multiyear_results mr
	WHERE mr.analysis_id = @analysis_id
		AND mr.comparison_year = @current_year;

	SET @current_year += 1;
END;

COMMIT TRANSACTION

BEGIN TRANSACTION

UPDATE multiyear_results
SET ben_tt_at_commute = ben_tt_at_commute * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_auto_commute = ben_tt_auto_commute * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_transit_commute = ben_tt_transit_commute * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_at_noncommute = ben_tt_at_noncommute * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_auto_noncommute = ben_tt_auto_noncommute * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_transit_noncommute = ben_tt_transit_noncommute * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_at_commute_coc = ben_tt_at_commute_coc * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_auto_commute_coc = ben_tt_auto_commute_coc * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_transit_commute_coc = ben_tt_transit_commute_coc * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_at_noncommute_coc = ben_tt_at_noncommute_coc * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_auto_noncommute_coc = ben_tt_auto_noncommute_coc * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_transit_noncommute_coc = ben_tt_transit_noncommute_coc * power(annual_vot_growth, multiyear_results.comparison_year - analysis.
		year_start),
	ben_tt_comm = ben_tt_comm * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_truck = ben_tt_truck * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_at_commute_coc_race = ben_tt_at_commute_coc_race * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_at_commute_coc_age = ben_tt_at_commute_coc_age * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_at_commute_coc_poverty = ben_tt_at_commute_coc_poverty * power(annual_vot_growth, multiyear_results.comparison_year - analysis.
		year_start),
	ben_tt_auto_commute_coc_race = ben_tt_auto_commute_coc_race * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start)
	,
	ben_tt_auto_commute_coc_age = ben_tt_auto_commute_coc_age * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
	ben_tt_auto_commute_coc_poverty = ben_tt_auto_commute_coc_poverty * power(annual_vot_growth, multiyear_results.comparison_year - analysis.
		year_start),
	ben_tt_transit_commute_coc_race = ben_tt_transit_commute_coc_race * power(annual_vot_growth, multiyear_results.comparison_year - analysis.
		year_start),
	ben_tt_transit_commute_coc_age = ben_tt_transit_commute_coc_age * power(annual_vot_growth, multiyear_results.comparison_year - analysis.
		year_start),
	ben_tt_transit_commute_coc_poverty = ben_tt_transit_commute_coc_poverty * power(annual_vot_growth, multiyear_results.comparison_year - analysis
		.year_start),
	ben_tt_at_noncommute_coc_race = ben_tt_at_noncommute_coc_race * power(annual_vot_growth, multiyear_results.comparison_year - analysis.
		year_start),
	ben_tt_at_noncommute_coc_age = ben_tt_at_noncommute_coc_age * power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start)
	,
	ben_tt_at_noncommute_coc_poverty = ben_tt_at_noncommute_coc_poverty * power(annual_vot_growth, multiyear_results.comparison_year - analysis.
		year_start),
	ben_tt_auto_noncommute_coc_race = ben_tt_auto_noncommute_coc_race * power(annual_vot_growth, multiyear_results.comparison_year - analysis.
		year_start),
	ben_tt_auto_noncommute_coc_age = ben_tt_auto_noncommute_coc_age * power(annual_vot_growth, multiyear_results.comparison_year - analysis.
		year_start),
	ben_tt_auto_noncommute_coc_poverty = ben_tt_auto_noncommute_coc_poverty * power(annual_vot_growth, multiyear_results.comparison_year - analysis
		.year_start),
	ben_tt_transit_noncommute_coc_race = ben_tt_transit_noncommute_coc_race * power(annual_vot_growth, multiyear_results.comparison_year - analysis
		.year_start),
	ben_tt_transit_noncommute_coc_age = ben_tt_transit_noncommute_coc_age * power(annual_vot_growth, multiyear_results.comparison_year - analysis.
		year_start),
	ben_tt_transit_noncommute_coc_poverty = ben_tt_transit_noncommute_coc_poverty * power(annual_vot_growth, multiyear_results.comparison_year - 
		analysis.year_start)
FROM multiyear_results
INNER JOIN analysis
	ON multiyear_results.analysis_id = analysis.id
WHERE analysis_id = @analysis_id;

COMMIT TRANSACTION

-- compute the subtotal columns
BEGIN TRANSACTION

UPDATE multiyear_results
SET subtotal_ben_emissions = isnull(ben_co, 0) + isnull(ben_co2, 0) + isnull(ben_nox, 0) + isnull(ben_pm10, 0) + isnull(ben_pm25, 0) + isnull(ben_rogs, 0) + 
	isnull(ben_so2, 0),
	subtotal_ben_safety = isnull(ben_crashcost_fat, 0) + isnull(ben_crashcost_inj, 0) + isnull(ben_crashcost_pdo, 0),
	subtotal_ben_reliability = isnull(ben_relcost_auto, 0) + isnull(ben_relcost_truck_hvy, 0) + isnull(ben_relcost_truck_lht, 0) + isnull(
		ben_relcost_truck_med, 0),
	subtotal_ben_tt_commute = isnull(ben_tt_at_commute, 0) + isnull(ben_tt_auto_commute, 0) + isnull(ben_tt_transit_commute, 0),
	subtotal_ben_tt_noncommute = isnull(ben_tt_at_noncommute, 0) + isnull(ben_tt_auto_noncommute, 0) + isnull(ben_tt_transit_noncommute, 0),
	subtotal_ben_tt_commute_coc = isnull(ben_tt_at_commute_coc, 0) + isnull(ben_tt_auto_commute_coc, 0) + isnull(ben_tt_transit_commute_coc, 0),
	subtotal_ben_tt_noncommute_coc = isnull(ben_tt_at_noncommute_coc, 0) + isnull(ben_tt_auto_noncommute_coc, 0) + isnull(
		ben_tt_transit_noncommute_coc, 0),
	subtotal_ben_tt_commute_coc_race = isnull(ben_tt_at_commute_coc_race, 0) + isnull(ben_tt_auto_commute_coc_race, 0) + isnull(
		ben_tt_transit_commute_coc_race, 0),
	subtotal_ben_tt_noncommute_coc_race = isnull(ben_tt_at_noncommute_coc_race, 0) + isnull(ben_tt_auto_noncommute_coc_race, 0) + isnull(
		ben_tt_transit_noncommute_coc_race, 0),
	subtotal_ben_tt_commute_coc_age = isnull(ben_tt_at_commute_coc_age, 0) + isnull(ben_tt_auto_commute_coc_age, 0) + isnull(
		ben_tt_transit_commute_coc_age, 0),
	subtotal_ben_tt_noncommute_coc_age = isnull(ben_tt_at_noncommute_coc_age, 0) + isnull(ben_tt_auto_noncommute_coc_age, 0) + isnull(
		ben_tt_transit_noncommute_coc_age, 0),
	subtotal_ben_tt_commute_coc_poverty = isnull(ben_tt_at_commute_coc_poverty, 0) + isnull(ben_tt_auto_commute_coc_poverty, 0) + isnull(
		ben_tt_transit_commute_coc_poverty, 0),
	subtotal_ben_tt_noncommute_coc_poverty = isnull(ben_tt_at_noncommute_coc_poverty, 0) + isnull(ben_tt_auto_noncommute_coc_poverty, 0) + isnull(
		ben_tt_transit_noncommute_coc_poverty, 0),
	subtotal_ben_freight = isnull(ben_tt_comm, 0) + isnull(ben_tt_truck, 0),
	subtotal_ben_voc = isnull(ben_voc_auto, 0) + isnull(ben_voc_truck_lht, 0) + isnull(ben_voc_truck_med, 0) + isnull(ben_voc_truck_hvy, 0)
FROM multiyear_results
WHERE analysis_id = @analysis_id;

-- compute yearly analysis columns
UPDATE multiyear_results
SET benefit_total_undiscounted = isnull(subtotal_ben_emissions, 0) + isnull(ben_autos_owned, 0) + isnull(subtotal_ben_safety, 0) + isnull(
		ben_persons_phys_active, 0) + isnull(subtotal_ben_reliability, 0) + isnull(subtotal_ben_tt_commute, 0) + isnull(subtotal_ben_tt_noncommute, 0) 
	+ isnull(subtotal_ben_freight, 0) + isnull(subtotal_ben_voc, 0),
	cost_total_undiscounted = isnull(cost_capital, 0) + isnull(cost_om, 0) + isnull(cost_finance, 0),
	toll_rev_base_discounted = isnull(toll_rev_base, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	toll_rev_build_discounted = isnull(toll_rev_build, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	fare_rev_base_discounted = isnull(fare_rev_base, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	fare_rev_build_discounted = isnull(fare_rev_build, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	-- totals_feature
	base_tt_person_discounted = isnull(base_tt_person, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	build_tt_person_discounted = isnull(build_tt_person, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	base_tt_truck_comm_discounted = isnull(base_tt_truck_comm, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	build_tt_truck_comm_discounted = isnull(build_tt_truck_comm, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	base_rel_cost_discounted = isnull(base_rel_cost, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	build_rel_cost_discounted = isnull(build_rel_cost, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		)
FROM multiyear_results
WHERE analysis_id = @analysis_id;

UPDATE multiyear_results
SET benefit_emissions_discounted = isnull(subtotal_ben_emissions, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_autos_owned_discounted = isnull(ben_autos_owned, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_autos_owned_discounted_coc = isnull(ben_autos_owned_coc, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_safety_discounted = isnull(subtotal_ben_safety, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_phys_active_discounted = isnull(ben_persons_phys_active, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_phys_active_discounted_coc = isnull(ben_persons_phys_active_coc, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_reliability_discounted = isnull(subtotal_ben_reliability, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_commute_discounted = isnull(subtotal_ben_tt_commute, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_commute_discounted_coc = isnull(subtotal_ben_tt_commute_coc, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_noncommute_discounted = isnull(subtotal_ben_tt_noncommute, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_noncommute_discounted_coc = isnull(subtotal_ben_tt_noncommute_coc, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_freight_discounted = isnull(subtotal_ben_freight, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_voc_discounted = isnull(subtotal_ben_voc, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_total_discounted = isnull(benefit_total_undiscounted, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	cost_capital_discounted = isnull(cost_capital, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	cost_om_discounted = isnull(cost_om, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	cost_finance_discounted = isnull(cost_finance, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	cost_total_discounted = isnull(cost_total_undiscounted, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	net_annual_undiscounted = isnull(benefit_total_undiscounted, 0) - isnull(cost_total_undiscounted, 0),
	-- coc detail
	benefit_autos_owned_discounted_coc_race = isnull(ben_autos_owned_coc_race, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_phys_active_discounted_coc_race = isnull(ben_persons_phys_active_coc_race, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_commute_discounted_coc_race = isnull(subtotal_ben_tt_commute_coc_race, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_noncommute_discounted_coc_race = isnull(subtotal_ben_tt_noncommute_coc_race, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_autos_owned_discounted_coc_age = isnull(ben_autos_owned_coc_age, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_phys_active_discounted_coc_age = isnull(ben_persons_phys_active_coc_age, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_commute_discounted_coc_age = isnull(subtotal_ben_tt_commute_coc_age, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_noncommute_discounted_coc_age = isnull(subtotal_ben_tt_noncommute_coc_age, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_autos_owned_discounted_coc_poverty = isnull(ben_autos_owned_coc_poverty, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_phys_active_discounted_coc_poverty = isnull(ben_persons_phys_active_coc_poverty, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_commute_discounted_coc_poverty = isnull(subtotal_ben_tt_commute_coc_poverty, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		),
	benefit_tt_noncommute_discounted_coc_poverty = isnull(subtotal_ben_tt_noncommute_coc_poverty, 0) / (
		CASE 
			WHEN power(1 + @rate_discount, period) = 0
				THEN 1
			ELSE power(1 + @rate_discount, period)
			END
		)
FROM multiyear_results
WHERE analysis_id = @analysis_id;

UPDATE multiyear_results
SET net_annual_discounted = isnull(benefit_total_discounted, 0) - isnull(cost_total_discounted, 0)
FROM multiyear_results
WHERE analysis_id = @analysis_id;

COMMIT TRANSACTION

-- calculate irr
DECLARE @fx FLOAT,
	@fx_der FLOAT,
	@irr_current FLOAT,
	@irr_previous FLOAT,
	@irr FLOAT,
	@irr_estimation FLOAT = 0.00001,
	@guess1 FLOAT = 0.01,
	@guess2 FLOAT = 0.02,
	@npv1 FLOAT,
	@npv2 FLOAT,
	@iteration INT = 0;

--start guessing
SET @npv1 = (
		SELECT sum(net_annual_undiscounted * power(1 + @guess1, - 1 * period))
		FROM multiyear_results
		WHERE analysis_id = @analysis_id
		)
SET @npv2 = (
		SELECT sum(net_annual_undiscounted * power(1 + @guess2, - 1 * period))
		FROM multiyear_results
		WHERE analysis_id = @analysis_id
		)

WHILE (
		(
			@npv1 > 0
			AND @npv2 > 0
			)
		OR (
			@npv1 < 0
			AND @npv2 < 0
			)
		)
	AND @guess1 <= 1
BEGIN
	SET @guess1 += 0.01;
	SET @guess2 += 0.01;
	SET @npv1 = (
			SELECT sum(net_annual_undiscounted * power(1 + @guess1, - 1 * period))
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
			)
	SET @npv2 = (
			SELECT sum(net_annual_undiscounted * power(1 + @guess2, - 1 * period))
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
			)
END

--start the newton formula
IF @guess1 < 1.0 --if the guess was not even valid don't process
BEGIN
	SET @irr_previous = @guess1;
	SET @fx = (
			SELECT sum(net_annual_undiscounted * power(1 + @irr_previous, - 1 * period))
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
			)
	SET @fx_der = (
			SELECT sum((net_annual_undiscounted * (- 1 * period)) * (power(1 + @irr_previous, (- 1 * period) - 1)
						))
			FROM multiyear_results
			WHERE analysis_id = @analysis_id
			)
	SET @irr_current = @irr_previous - CASE 
			WHEN (@fx / @fx_der) = 0
				THEN 0.00001
			ELSE (@fx / @fx_der)
			END;
	SET @irr = @irr_current;

	WHILE (@irr_current - @irr_previous) > @irr_estimation
		AND @fx_der <> 0
	BEGIN
		SET @irr_previous = @irr_current
		SET @fx = (
				SELECT sum(net_annual_undiscounted * power(1 + @irr_previous, - 1 * period))
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
				)
		SET @fx_der = (
				SELECT sum((net_annual_undiscounted * (- 1 * period)) * power(1 + 
							@irr_previous, (- 1 * period) - 1))
				FROM multiyear_results
				WHERE analysis_id = @analysis_id
				)
		SET @irr_current = @irr_previous - CASE 
				WHEN (@fx / @fx_der) = 0
					THEN 0.00001
				ELSE (@fx / @fx_der)
				END;
		SET @irr = @irr_current;
	END
END
ELSE
BEGIN
	SET @irr = - 999999999;
END

-- compute npv, irr, bc ration, ....
SELECT analysis_id,
	sum(benefit_total_discounted) AS benefit_npv,
	sum(cost_total_discounted) AS cost_npv,
	@irr AS irr,
	sum(net_annual_discounted) AS net_npv,
	sum(toll_rev_base_discounted) AS toll_revenue_base_npv,
	sum(toll_rev_build_discounted) AS toll_revenue_build_npv,
	sum(fare_rev_base_discounted) AS fare_revenue_base_npv,
	sum(fare_rev_build_discounted) AS fare_revenue_build_npv
INTO #multiyear_final_results
FROM multiyear_results
WHERE analysis_id = @analysis_id
GROUP BY analysis_id;

BEGIN TRANSACTION

UPDATE multiyear_final_results
SET benefit_npv = mr.benefit_npv,
	cost_npv = mr.cost_npv,
	irr = @irr,
	net_npv = mr.net_npv,
	toll_revenue_base_npv = mr.toll_revenue_base_npv,
	toll_revenue_build_npv = mr.toll_revenue_build_npv,
	fare_revenue_base_npv = mr.fare_revenue_base_npv,
	fare_revenue_build_npv = mr.fare_revenue_build_npv
FROM multiyear_final_results mfr
INNER JOIN #multiyear_final_results AS mr
	ON mfr.analysis_id = mr.analysis_id
WHERE mr.analysis_id = @analysis_id

IF @@ROWCOUNT = 0
	INSERT INTO multiyear_final_results (
		analysis_id,
		benefit_npv,
		cost_npv,
		irr,
		net_npv,
		toll_revenue_base_npv,
		toll_revenue_build_npv,
		fare_revenue_base_npv,
		fare_revenue_build_npv
		)
	SELECT @analysis_id,
		benefit_npv,
		cost_npv,
		irr,
		net_npv,
		toll_revenue_base_npv,
		toll_revenue_build_npv,
		fare_revenue_base_npv,
		fare_revenue_build_npv
	FROM #multiyear_final_results
	WHERE analysis_id = @analysis_id;

UPDATE multiyear_final_results
SET bc_ratio = (
		CASE 
			WHEN cost_npv = 0
				THEN - 999999999
			ELSE benefit_npv / cost_npv
			END
		)
WHERE analysis_id = @analysis_id;

COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_multiyear_processor_dfl]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[run_multiyear_processor_dfl]
	@analysis_id int
	with execute as caller
as
	set nocount on;

	--v5: Jeff fixed the subtotal_ben_voc problem, search for 'v5' to find comment

	/*--for testing 
	if object_id('tempdb..#scenario_comparison', 'u') is not null
	drop table #scenario_comparison;
	go
	if object_id('tempdb..#comparison_years', 'u') is not null
	drop table #comparison_years;
	go
	if object_id('tempdb..#comparison_years_start', 'u') is not null
	drop table #comparison_years_start;
	go
	if object_id('tempdb..#comparison_years_i1', 'u') is not null
	drop table #comparison_years_i1;
	go
	if object_id('tempdb..#comparison_years_i2', 'u') is not null
	drop table #comparison_years_i2;
	go
	if object_id('tempdb..#comparison_years_i3', 'u') is not null
	drop table #comparison_years_i3;
	go
	if object_id('tempdb..#comparison_years_i4', 'u') is not null
	drop table #comparison_years_i4;
	go
	if object_id('tempdb..#comparison_years_i5', 'u') is not null
	drop table #comparison_years_i5;
	go
	if object_id('tempdb..#comparison_years_previous_1', 'u') is not null
	drop table #comparison_years_previous_1;
	go
	if object_id('tempdb..#comparison_years_previous_2', 'u') is not null
	drop table #comparison_years_previous_2;
	go
	if object_id('tempdb..#multiyear_final_results', 'u') is not null
	drop table #multiyear_final_results;
	go
	
	declare @analysis_id int = 2;*/

	declare	@year_start int,
		@year_intermediate_1 int,
		@year_intermediate_2 float,
		@year_intermediate_3 float,
		@year_intermediate_4 float,
		@year_intermediate_5 int,
		@year_end int,
		@year_reference int,
		@rate_discount float,
		@annualization_factor float,
		@current_year int,
		@current_iteration int = 0,
		@count_scenario_comparison int = 0,
		@max_scenario_comparison_year int = 0;

	--read analysis fields

	select @year_start = year_start,
		@year_intermediate_1 = year_intermediate_1,
		@year_intermediate_2 = year_intermediate_2,
		@year_intermediate_3 = year_intermediate_3,
		@year_intermediate_4 = year_intermediate_4,
		@year_intermediate_5 = year_intermediate_5,
		@year_end = year_end,
		@year_reference = year_reference,
		@rate_discount = rate_discount,
		@annualization_factor = annualization_factor
	from analysis
	where id = @analysis_id;

	set @current_year = @year_start;
	
	select *
	into #scenario_comparison
	from scenario_comparison
	where analysis_id = @analysis_id
		and scenario_year in (@year_start, @year_intermediate_1, @year_intermediate_2, @year_intermediate_3, @year_intermediate_4, @year_intermediate_5)
	order by scenario_year

	select @count_scenario_comparison = count(*),
		@max_scenario_comparison_year = max(scenario_year)
	from #scenario_comparison
	
	--Create blank records in multiyear_results for all years from year_start to year_end
	begin tran
		delete multiyear_results
		where analysis_id = @analysis_id;

		while @current_year <= @year_end
			begin
				insert into multiyear_results (
					scenario_id_base,
					scenario_id_build,
					analysis_id,
					comparison_year,
					period)
				values (
					case when @current_year <= @max_scenario_comparison_year then -1 else -2 end,
					case when @current_year <= @max_scenario_comparison_year then -1 else -2 end,
					@analysis_id,
					@current_year,
					@current_iteration
				);
			
				set @current_iteration = @current_iteration + 1;
				set @current_year = @current_year + 1;
			end
	commit tran


	--populate individual benefit columns with annualized results for start_year
	-- don't need this for most fields whose values are determined by fact that base and build are the same (so dif is 0 and ratio is 1)
	begin tran
		update multiyear_results
		set scenario_id_base = sc.scenario_id_base,
			scenario_id_build = sc.scenario_id_build,

			-- these will end up NULL if no start_year run of person_trip_processor (which is their default value so no harm done)
			base_tt_person = @annualization_factor * sc.base_tt_person,
			build_tt_person = @annualization_factor * sc.build_tt_person,

			-- these will end up NULL if no start_year run of aggregate_trips_processor (which is their default value so no harm done)
			base_tt_truck_comm = @annualization_factor * (sc.base_tt_comm + sc.base_tt_truck),
			build_tt_truck_comm = @annualization_factor * (sc.build_tt_comm + sc.build_tt_truck),

			-- these will end up NULL if no start_year run of link_processor
			base_rel_cost = @annualization_factor * sc.base_rel_cost,
			build_rel_cost = @annualization_factor * sc.build_rel_cost,

			-- these will end up NULL if no start_year run of demobraphics_processor
			persons = sc.persons,
			persons_coc = sc.persons_coc,
			persons_coc_race = sc.persons_coc_race,
			persons_coc_age = sc.persons_coc_age,
			persons_coc_poverty = sc.persons_coc_poverty

		from multiyear_results mr
		join #scenario_comparison sc
		on mr.analysis_id = sc.analysis_id
			and mr.comparison_year = sc.scenario_year
		where mr.analysis_id = @analysis_id
			and mr.comparison_year = @year_start

	commit tran

	--populate individual benefit columns with annualized results for intermediate years
	begin tran
		update multiyear_results
		set scenario_id_base = sc.scenario_id_base,
			scenario_id_build = sc.scenario_id_build,
			ben_co = @annualization_factor * sc.ben_co,
			ben_co2 = @annualization_factor * sc.ben_co2,
			ben_nox = @annualization_factor * sc.ben_nox,
			ben_pm10 = @annualization_factor * sc.ben_pm10,
			ben_pm25 = @annualization_factor * sc.ben_pm25,
			ben_rogs = @annualization_factor * sc.ben_rogs,
			ben_so2 = @annualization_factor * sc.ben_so2,
			ben_autos_owned_coc = sc.ben_autos_owned_coc,
			ben_autos_owned = sc.ben_autos_owned,
			ben_crashcost_fat = sc.ben_crashcost_fat,
			ben_crashcost_inj = sc.ben_crashcost_inj,
			ben_crashcost_pdo = sc.ben_crashcost_pdo,
			ben_persons_phys_active_coc = sc.ben_persons_phys_active_coc,
			ben_persons_phys_active = sc.ben_persons_phys_active,
			ben_relcost_auto = @annualization_factor * sc.ben_relcost_auto,
			ben_relcost_truck_hvy = @annualization_factor * sc.ben_relcost_truck_hvy,
			ben_relcost_truck_lht = @annualization_factor * sc.ben_relcost_truck_lht,
			ben_relcost_truck_med = @annualization_factor * sc.ben_relcost_truck_med,
			ben_tt_at_commute = @annualization_factor * sc.ben_tt_at_commute,
			ben_tt_auto_commute = @annualization_factor * sc.ben_tt_auto_commute,
			ben_tt_transit_commute = @annualization_factor * sc.ben_tt_transit_commute,
			ben_tt_at_noncommute = @annualization_factor * sc.ben_tt_at_noncommute,
			ben_tt_auto_noncommute = @annualization_factor * sc.ben_tt_auto_noncommute,
			ben_tt_transit_noncommute = @annualization_factor * sc.ben_tt_transit_noncommute,
			ben_tt_at_commute_coc = @annualization_factor * sc.ben_tt_at_commute_coc,
			ben_tt_auto_commute_coc = @annualization_factor * sc.ben_tt_auto_commute_coc,
			ben_tt_transit_commute_coc = @annualization_factor * sc.ben_tt_transit_commute_coc,
			ben_tt_at_noncommute_coc = @annualization_factor * sc.ben_tt_at_noncommute_coc,
			ben_tt_auto_noncommute_coc = @annualization_factor * sc.ben_tt_auto_noncommute_coc,
			ben_tt_transit_noncommute_coc = @annualization_factor * sc.ben_tt_transit_noncommute_coc,
			ben_tt_comm = @annualization_factor * sc.ben_tt_comm,
			ben_tt_truck = @annualization_factor * sc.ben_tt_truck,
			ben_voc_auto = @annualization_factor * sc.ben_voc_auto,
			ben_voc_truck_lht = @annualization_factor * sc.ben_voc_truck_lht,
			ben_voc_truck_med = @annualization_factor * sc.ben_voc_truck_med,
			ben_voc_truck_hvy = @annualization_factor * sc.ben_voc_truck_hvy,
			toll_rev_base = @annualization_factor * (sc.toll_auto_commute_base + toll_auto_noncommute_base) + toll_comm_base + toll_truck_base,
			toll_rev_build = @annualization_factor * (sc.toll_auto_commute_build + toll_auto_noncommute_build) + toll_comm_build + toll_truck_build,
			fare_rev_base = @annualization_factor * (sc.fare_transit_commute_base + fare_transit_noncommute_base),
			fare_rev_build = @annualization_factor * (sc.fare_transit_commute_build + fare_transit_noncommute_build),

			-- totals_feature
			base_tt_person = @annualization_factor * sc.base_tt_person,
			build_tt_person = @annualization_factor * sc.build_tt_person,
			base_tt_truck_comm = @annualization_factor * (sc.base_tt_comm + sc.base_tt_truck),
			build_tt_truck_comm = @annualization_factor * (sc.build_tt_comm + sc.build_tt_truck),

			ratio_tt_person =  sc.build_tt_person / sc.base_tt_person,
			ratio_tt_truck_comm = (sc.build_tt_comm + sc.build_tt_truck) / (sc.base_tt_comm + sc.base_tt_truck),

			base_rel_cost = @annualization_factor * sc.base_rel_cost,
			build_rel_cost = @annualization_factor * sc.build_rel_cost,

			-- coc_detail
			ben_autos_owned_coc_race = sc.ben_autos_owned_coc_race,
			ben_persons_phys_active_coc_race = sc.ben_persons_phys_active_coc_race,
			ben_tt_at_commute_coc_race = @annualization_factor * sc.ben_tt_at_commute_coc_race,
			ben_tt_auto_commute_coc_race = @annualization_factor * sc.ben_tt_auto_commute_coc_race,
			ben_tt_transit_commute_coc_race = @annualization_factor * sc.ben_tt_transit_commute_coc_race,
			ben_tt_at_noncommute_coc_race = @annualization_factor * sc.ben_tt_at_noncommute_coc_race,
			ben_tt_auto_noncommute_coc_race = @annualization_factor * sc.ben_tt_auto_noncommute_coc_race,
			ben_tt_transit_noncommute_coc_race = @annualization_factor * sc.ben_tt_transit_noncommute_coc_race,

			ben_autos_owned_coc_age = sc.ben_autos_owned_coc_age,
			ben_persons_phys_active_coc_age = sc.ben_persons_phys_active_coc_age,
			ben_tt_at_commute_coc_age = @annualization_factor * sc.ben_tt_at_commute_coc_age,
			ben_tt_auto_commute_coc_age = @annualization_factor * sc.ben_tt_auto_commute_coc_age,
			ben_tt_transit_commute_coc_age = @annualization_factor * sc.ben_tt_transit_commute_coc_age,
			ben_tt_at_noncommute_coc_age = @annualization_factor * sc.ben_tt_at_noncommute_coc_age,
			ben_tt_auto_noncommute_coc_age = @annualization_factor * sc.ben_tt_auto_noncommute_coc_age,
			ben_tt_transit_noncommute_coc_age = @annualization_factor * sc.ben_tt_transit_noncommute_coc_age,

			ben_autos_owned_coc_poverty = sc.ben_autos_owned_coc_poverty,
			ben_persons_phys_active_coc_poverty = sc.ben_persons_phys_active_coc_poverty,
			ben_tt_at_commute_coc_poverty = @annualization_factor * sc.ben_tt_at_commute_coc_poverty,
			ben_tt_auto_commute_coc_poverty = @annualization_factor * sc.ben_tt_auto_commute_coc_poverty,
			ben_tt_transit_commute_coc_poverty = @annualization_factor * sc.ben_tt_transit_commute_coc_poverty,
			ben_tt_at_noncommute_coc_poverty = @annualization_factor * sc.ben_tt_at_noncommute_coc_poverty,
			ben_tt_auto_noncommute_coc_poverty = @annualization_factor * sc.ben_tt_auto_noncommute_coc_poverty,
			ben_tt_transit_noncommute_coc_poverty = @annualization_factor * sc.ben_tt_transit_noncommute_coc_poverty,

			persons = sc.persons,
			persons_coc = sc.persons_coc,
			persons_coc_race = sc.persons_coc_race,
			persons_coc_age = sc.persons_coc_age,
			persons_coc_poverty = sc.persons_coc_poverty

		from multiyear_results mr
		join #scenario_comparison sc
		on mr.analysis_id = sc.analysis_id
			and mr.comparison_year = sc.scenario_year
		where mr.analysis_id = @analysis_id
			and mr.comparison_year in (@year_intermediate_1, @year_intermediate_2, @year_intermediate_3, @year_intermediate_4, @year_intermediate_5)
	

	-- from cost_inputs update multiyear_results
		update multiyear_results
		set cost_capital = capital.cost_value,
			cost_finance = finance.cost_value,
			cost_om = om.cost_value
		from multiyear_results mr 
		join [finance.netcosts] capital
		on mr.analysis_id = capital.bca_id
			and mr.comparison_year = capital.year
		join [finance.netcosts] finance
		on mr.analysis_id = finance.bca_id
			and mr.comparison_year = finance.year
		join [finance.netcosts] om
		on mr.analysis_id = om.bca_id
			and mr.comparison_year = om.year
		where analysis_id = @analysis_id
			and capital.cost_id = 1
			and finance.cost_id = 2
			and om.cost_id = 3;

	commit tran

	-- begin interpolation process

	select row_number() over (order by comparison_year) as rownum, *
	into #comparison_years
	from multiyear_results
	where analysis_id = @analysis_id
		and comparison_year in (@year_start, @year_intermediate_1, @year_intermediate_2, @year_intermediate_3, @year_intermediate_4, @year_intermediate_5);

	select *
	into #comparison_years_start
	from #comparison_years
	where rownum = 1;

	select *
	into #comparison_years_i1
	from #comparison_years
	where rownum = 2;

	select *
	into #comparison_years_i2
	from #comparison_years
	where rownum = 3;

	select *
	into #comparison_years_i3
	from #comparison_years
	where rownum = 4;

	select *
	into #comparison_years_i4
	from #comparison_years
	where rownum = 5;

	select *
	into #comparison_years_i5
	from #comparison_years
	where rownum = 6;

	begin tran
		set @current_year = (select top 1 comparison_year from #comparison_years_start) + 1;
	
		while @current_year < (select top 1 comparison_year from #comparison_years_i1)
			begin
			update multiyear_results
			set	ben_co = ((select top 1 ben_co from #comparison_years_i1)-(select top 1 ben_co from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_co from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_co2 = ((select top 1 ben_co2 from #comparison_years_i1)-(select top 1 ben_co2 from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_co2 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_nox = ((select top 1 ben_nox from #comparison_years_i1)-(select top 1 ben_nox from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_nox from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_pm10 = ((select top 1 ben_pm10 from #comparison_years_i1)-(select top 1 ben_pm10 from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_pm10 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_pm25 = ((select top 1 ben_pm25 from #comparison_years_i1)-(select top 1 ben_pm25 from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_pm25 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_rogs = ((select top 1 ben_rogs from #comparison_years_i1)-(select top 1 ben_rogs from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_rogs from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_so2 = ((select top 1 ben_so2 from #comparison_years_i1)-(select top 1 ben_so2 from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_so2 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_autos_owned_coc = ((select top 1 ben_autos_owned_coc from #comparison_years_i1)-(select top 1 ben_autos_owned_coc from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_autos_owned_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_autos_owned = ((select top 1 ben_autos_owned from #comparison_years_i1)-(select top 1 ben_autos_owned from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_autos_owned from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_fat = ((select top 1 ben_crashcost_fat from #comparison_years_i1)-(select top 1 ben_crashcost_fat from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_crashcost_fat from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_inj = ((select top 1 ben_crashcost_inj from #comparison_years_i1)-(select top 1 ben_crashcost_inj from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_crashcost_inj from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_pdo = ((select top 1 ben_crashcost_pdo from #comparison_years_i1)-(select top 1 ben_crashcost_pdo from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_crashcost_pdo from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc = ((select top 1 ben_persons_phys_active_coc from #comparison_years_i1)-(select top 1 ben_persons_phys_active_coc from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_persons_phys_active_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active = ((select top 1 ben_persons_phys_active from #comparison_years_i1)-(select top 1 ben_persons_phys_active from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_persons_phys_active from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_auto = ((select top 1 ben_relcost_auto from #comparison_years_i1)-(select top 1 ben_relcost_auto from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_relcost_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_hvy = ((select top 1 ben_relcost_truck_hvy from #comparison_years_i1)-(select top 1 ben_relcost_truck_hvy from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_relcost_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_lht = ((select top 1 ben_relcost_truck_lht from #comparison_years_i1)-(select top 1 ben_relcost_truck_lht from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_relcost_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_med = ((select top 1 ben_relcost_truck_med from #comparison_years_i1)-(select top 1 ben_relcost_truck_med from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_relcost_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute = ((select top 1 ben_tt_at_commute from #comparison_years_i1)-(select top 1 ben_tt_at_commute from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_at_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute = ((select top 1 ben_tt_auto_commute from #comparison_years_i1)-(select top 1 ben_tt_auto_commute from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_auto_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute = ((select top 1 ben_tt_transit_commute from #comparison_years_i1)-(select top 1 ben_tt_transit_commute from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_transit_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute = ((select top 1 ben_tt_at_noncommute from #comparison_years_i1)-(select top 1 ben_tt_at_noncommute from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_at_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute = ((select top 1 ben_tt_auto_noncommute from #comparison_years_i1)-(select top 1 ben_tt_auto_noncommute from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_auto_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute = ((select top 1 ben_tt_transit_noncommute from #comparison_years_i1)-(select top 1 ben_tt_transit_noncommute from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_transit_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc = ((select top 1 ben_tt_at_commute_coc from #comparison_years_i1)-(select top 1 ben_tt_at_commute_coc from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_at_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc = ((select top 1 ben_tt_auto_commute_coc from #comparison_years_i1)-(select top 1 ben_tt_auto_commute_coc from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_auto_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc = ((select top 1 ben_tt_transit_commute_coc from #comparison_years_i1)-(select top 1 ben_tt_transit_commute_coc from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_transit_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc = ((select top 1 ben_tt_at_noncommute_coc from #comparison_years_i1)-(select top 1 ben_tt_at_noncommute_coc from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_at_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc = ((select top 1 ben_tt_auto_noncommute_coc from #comparison_years_i1)-(select top 1 ben_tt_auto_noncommute_coc from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_auto_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc = ((select top 1 ben_tt_transit_noncommute_coc from #comparison_years_i1)-(select top 1 ben_tt_transit_noncommute_coc from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_transit_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_comm = ((select top 1 ben_tt_comm from #comparison_years_i1)-(select top 1 ben_tt_comm from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_truck = ((select top 1 ben_tt_truck from #comparison_years_i1)-(select top 1 ben_tt_truck from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_truck from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_auto = ((select top 1 ben_voc_auto from #comparison_years_i1)-(select top 1 ben_voc_auto from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_voc_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_lht = ((select top 1 ben_voc_truck_lht from #comparison_years_i1)-(select top 1 ben_voc_truck_lht from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_voc_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_med = ((select top 1 ben_voc_truck_med from #comparison_years_i1)-(select top 1 ben_voc_truck_med from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_voc_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_hvy = ((select top 1 ben_voc_truck_hvy from #comparison_years_i1)-(select top 1 ben_voc_truck_hvy from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_voc_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				toll_rev_base = ((select top 1 toll_rev_base from #comparison_years_i1)-(select top 1 toll_rev_base from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 toll_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				toll_rev_build = ((select top 1 toll_rev_build from #comparison_years_i1)-(select top 1 toll_rev_build from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 toll_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				fare_rev_base = ((select top 1 fare_rev_base from #comparison_years_i1)-(select top 1 fare_rev_base from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 fare_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				fare_rev_build = ((select top 1 fare_rev_build from #comparison_years_i1)-(select top 1 fare_rev_build from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 fare_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				
				-- totals_feature
				base_tt_person = ((select top 1 base_tt_person from #comparison_years_i1)-(select top 1 base_tt_person from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) 
					+ (select top 1 base_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				build_tt_person = ((select top 1 build_tt_person from #comparison_years_i1)-(select top 1 build_tt_person from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) 
					+ (select top 1 build_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				base_tt_truck_comm = ((select top 1 base_tt_truck_comm from #comparison_years_i1)-(select top 1 base_tt_truck_comm from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) 
					+ (select top 1 base_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),               --added by JC 2010.10.20
				build_tt_truck_comm = ((select top 1 build_tt_truck_comm from #comparison_years_i1)-(select top 1 build_tt_truck_comm from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) 
					+ (select top 1 build_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),           --added by JC 2010.10.20

				ratio_tt_person = ((select top 1 ratio_tt_person from #comparison_years_i1)-(select top 1 ratio_tt_person from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) 
					+ (select top 1 ratio_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				ratio_tt_truck_comm = ((select top 1 ratio_tt_truck_comm from #comparison_years_i1)-(select top 1 ratio_tt_truck_comm from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) 
					+ (select top 1 ratio_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				base_rel_cost = ((select top 1 base_rel_cost from #comparison_years_i1)-(select top 1 base_rel_cost from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) 
					+ (select top 1 base_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),  
				build_rel_cost = ((select top 1 build_rel_cost from #comparison_years_i1)-(select top 1 build_rel_cost from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) 
					+ (select top 1 build_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				-- coc detail
				ben_autos_owned_coc_race = ((select top 1 ben_autos_owned_coc_race from #comparison_years_i1)-(select top 1 ben_autos_owned_coc_race from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_autos_owned_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_race = ((select top 1 ben_persons_phys_active_coc_race from #comparison_years_i1)-(select top 1 ben_persons_phys_active_coc_race from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_persons_phys_active_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_race = ((select top 1 ben_tt_at_commute_coc_race from #comparison_years_i1)-(select top 1 ben_tt_at_commute_coc_race from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_at_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_race = ((select top 1 ben_tt_auto_commute_coc_race from #comparison_years_i1)-(select top 1 ben_tt_auto_commute_coc_race from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_auto_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_race = ((select top 1 ben_tt_transit_commute_coc_race from #comparison_years_i1)-(select top 1 ben_tt_transit_commute_coc_race from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_transit_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_race = ((select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_i1)-(select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_at_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_race = ((select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_i1)-(select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_auto_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_race = ((select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_i1)-(select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_transit_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ben_autos_owned_coc_age = ((select top 1 ben_autos_owned_coc_age from #comparison_years_i1)-(select top 1 ben_autos_owned_coc_age from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_autos_owned_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_age = ((select top 1 ben_persons_phys_active_coc_age from #comparison_years_i1)-(select top 1 ben_persons_phys_active_coc_age from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_persons_phys_active_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_age = ((select top 1 ben_tt_at_commute_coc_age from #comparison_years_i1)-(select top 1 ben_tt_at_commute_coc_age from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_at_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_age = ((select top 1 ben_tt_auto_commute_coc_age from #comparison_years_i1)-(select top 1 ben_tt_auto_commute_coc_age from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_auto_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_age = ((select top 1 ben_tt_transit_commute_coc_age from #comparison_years_i1)-(select top 1 ben_tt_transit_commute_coc_age from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_transit_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_age = ((select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_i1)-(select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_at_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_age = ((select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_i1)-(select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_auto_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_age = ((select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_i1)-(select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_transit_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ben_autos_owned_coc_poverty = ((select top 1 ben_autos_owned_coc_poverty from #comparison_years_i1)-(select top 1 ben_autos_owned_coc_poverty from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_autos_owned_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_poverty = ((select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_i1)-(select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_persons_phys_active_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_poverty = ((select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_i1)-(select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_at_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_poverty = ((select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_i1)-(select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_auto_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_poverty = ((select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_i1)-(select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_transit_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_poverty = ((select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_i1)-(select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_at_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_poverty = ((select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_i1)-(select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_auto_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_poverty = ((select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_i1)-(select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 ben_tt_transit_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				persons = ((select top 1 persons from #comparison_years_i1)-(select top 1 persons from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 persons from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc = ((select top 1 persons_coc from #comparison_years_i1)-(select top 1 persons_coc from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 persons_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_race = ((select top 1 persons_coc_race from #comparison_years_i1)-(select top 1 persons_coc_race from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 persons_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_age = ((select top 1 persons_coc_age from #comparison_years_i1)-(select top 1 persons_coc_age from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 persons_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_poverty = ((select top 1 persons_coc_poverty from #comparison_years_i1)-(select top 1 persons_coc_poverty from #comparison_years_start)) / (case when ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) = 0 then 1 else ((select top 1 period from #comparison_years_i1)-(select top 1 period from #comparison_years_start)) end) + (select top 1 persons_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1)

			from multiyear_results mr
			where mr.analysis_id = @analysis_id
				and mr.comparison_year = @current_year;

			set @current_year += 1;
		end;




		set @current_year = (select top 1 comparison_year from #comparison_years_i1) + 1;
	
		while @current_year < (select top 1 comparison_year from #comparison_years_i2)
			begin
			update multiyear_results
			set ben_co = ((select top 1 ben_co from #comparison_years_i2)-(select top 1 ben_co from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_co from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_co2 = ((select top 1 ben_co2 from #comparison_years_i2)-(select top 1 ben_co2 from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_co2 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_nox = ((select top 1 ben_nox from #comparison_years_i2)-(select top 1 ben_nox from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_nox from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_pm10 = ((select top 1 ben_pm10 from #comparison_years_i2)-(select top 1 ben_pm10 from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_pm10 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_pm25 = ((select top 1 ben_pm25 from #comparison_years_i2)-(select top 1 ben_pm25 from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_pm25 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_rogs = ((select top 1 ben_rogs from #comparison_years_i2)-(select top 1 ben_rogs from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_rogs from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_so2 = ((select top 1 ben_so2 from #comparison_years_i2)-(select top 1 ben_so2 from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_so2 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_autos_owned_coc = ((select top 1 ben_autos_owned_coc from #comparison_years_i2)-(select top 1 ben_autos_owned_coc from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_autos_owned_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_autos_owned = ((select top 1 ben_autos_owned from #comparison_years_i2)-(select top 1 ben_autos_owned from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_autos_owned from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_fat = ((select top 1 ben_crashcost_fat from #comparison_years_i2)-(select top 1 ben_crashcost_fat from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_crashcost_fat from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_inj = ((select top 1 ben_crashcost_inj from #comparison_years_i2)-(select top 1 ben_crashcost_inj from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_crashcost_inj from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_pdo = ((select top 1 ben_crashcost_pdo from #comparison_years_i2)-(select top 1 ben_crashcost_pdo from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_crashcost_pdo from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc = ((select top 1 ben_persons_phys_active_coc from #comparison_years_i2)-(select top 1 ben_persons_phys_active_coc from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_persons_phys_active_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active = ((select top 1 ben_persons_phys_active from #comparison_years_i2)-(select top 1 ben_persons_phys_active from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_persons_phys_active from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_auto = ((select top 1 ben_relcost_auto from #comparison_years_i2)-(select top 1 ben_relcost_auto from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_relcost_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_hvy = ((select top 1 ben_relcost_truck_hvy from #comparison_years_i2)-(select top 1 ben_relcost_truck_hvy from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_relcost_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_lht = ((select top 1 ben_relcost_truck_lht from #comparison_years_i2)-(select top 1 ben_relcost_truck_lht from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_relcost_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_med = ((select top 1 ben_relcost_truck_med from #comparison_years_i2)-(select top 1 ben_relcost_truck_med from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_relcost_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute = ((select top 1 ben_tt_at_commute from #comparison_years_i2)-(select top 1 ben_tt_at_commute from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_at_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute = ((select top 1 ben_tt_auto_commute from #comparison_years_i2)-(select top 1 ben_tt_auto_commute from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_auto_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute = ((select top 1 ben_tt_transit_commute from #comparison_years_i2)-(select top 1 ben_tt_transit_commute from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_transit_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute = ((select top 1 ben_tt_at_noncommute from #comparison_years_i2)-(select top 1 ben_tt_at_noncommute from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_at_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute = ((select top 1 ben_tt_auto_noncommute from #comparison_years_i2)-(select top 1 ben_tt_auto_noncommute from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_auto_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute = ((select top 1 ben_tt_transit_noncommute from #comparison_years_i2)-(select top 1 ben_tt_transit_noncommute from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_transit_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc = ((select top 1 ben_tt_at_commute_coc from #comparison_years_i2)-(select top 1 ben_tt_at_commute_coc from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_at_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc = ((select top 1 ben_tt_auto_commute_coc from #comparison_years_i2)-(select top 1 ben_tt_auto_commute_coc from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_auto_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc = ((select top 1 ben_tt_transit_commute_coc from #comparison_years_i2)-(select top 1 ben_tt_transit_commute_coc from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_transit_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc = ((select top 1 ben_tt_at_noncommute_coc from #comparison_years_i2)-(select top 1 ben_tt_at_noncommute_coc from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_at_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc = ((select top 1 ben_tt_auto_noncommute_coc from #comparison_years_i2)-(select top 1 ben_tt_auto_noncommute_coc from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_auto_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc = ((select top 1 ben_tt_transit_noncommute_coc from #comparison_years_i2)-(select top 1 ben_tt_transit_noncommute_coc from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_transit_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_comm = ((select top 1 ben_tt_comm from #comparison_years_i2)-(select top 1 ben_tt_comm from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_truck = ((select top 1 ben_tt_truck from #comparison_years_i2)-(select top 1 ben_tt_truck from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_truck from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_auto = ((select top 1 ben_voc_auto from #comparison_years_i2)-(select top 1 ben_voc_auto from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_voc_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_lht = ((select top 1 ben_voc_truck_lht from #comparison_years_i2)-(select top 1 ben_voc_truck_lht from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_voc_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_med = ((select top 1 ben_voc_truck_med from #comparison_years_i2)-(select top 1 ben_voc_truck_med from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_voc_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_hvy = ((select top 1 ben_voc_truck_hvy from #comparison_years_i2)-(select top 1 ben_voc_truck_hvy from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_voc_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				toll_rev_base = ((select top 1 toll_rev_base from #comparison_years_i2)-(select top 1 toll_rev_base from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 toll_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				toll_rev_build = ((select top 1 toll_rev_build from #comparison_years_i2)-(select top 1 toll_rev_build from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 toll_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				fare_rev_base = ((select top 1 fare_rev_base from #comparison_years_i2)-(select top 1 fare_rev_base from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 fare_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				fare_rev_build = ((select top 1 fare_rev_build from #comparison_years_i2)-(select top 1 fare_rev_build from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 fare_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				
				-- totals_feature
				base_tt_person = ((select top 1 base_tt_person from #comparison_years_i2)-(select top 1 base_tt_person from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) 
					+ (select top 1 base_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				build_tt_person = ((select top 1 build_tt_person from #comparison_years_i2)-(select top 1 build_tt_person from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) 
					+ (select top 1 build_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				base_tt_truck_comm = ((select top 1 base_tt_truck_comm from #comparison_years_i2)-(select top 1 base_tt_truck_comm from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) 
					+ (select top 1 base_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				build_tt_truck_comm = ((select top 1 build_tt_truck_comm from #comparison_years_i2)-(select top 1 build_tt_truck_comm from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) 
					+ (select top 1 build_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ratio_tt_person = ((select top 1 ratio_tt_person from #comparison_years_i2)-(select top 1 ratio_tt_person from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) 
					+ (select top 1 ratio_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ratio_tt_truck_comm = ((select top 1 ratio_tt_truck_comm from #comparison_years_i2)-(select top 1 ratio_tt_truck_comm from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) 
					+ (select top 1 ratio_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				base_rel_cost = ((select top 1 base_rel_cost from #comparison_years_i2)-(select top 1 base_rel_cost from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) 
					+ (select top 1 base_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				build_rel_cost = ((select top 1 build_rel_cost from #comparison_years_i2)-(select top 1 build_rel_cost from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) 
					+ (select top 1 build_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				-- coc detail
				ben_autos_owned_coc_race = ((select top 1 ben_autos_owned_coc_race from #comparison_years_i2)-(select top 1 ben_autos_owned_coc_race from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_autos_owned_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_race = ((select top 1 ben_persons_phys_active_coc_race from #comparison_years_i2)-(select top 1 ben_persons_phys_active_coc_race from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_persons_phys_active_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_race = ((select top 1 ben_tt_at_commute_coc_race from #comparison_years_i2)-(select top 1 ben_tt_at_commute_coc_race from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_at_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_race = ((select top 1 ben_tt_auto_commute_coc_race from #comparison_years_i2)-(select top 1 ben_tt_auto_commute_coc_race from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_auto_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_race = ((select top 1 ben_tt_transit_commute_coc_race from #comparison_years_i2)-(select top 1 ben_tt_transit_commute_coc_race from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_transit_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_race = ((select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_i2)-(select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_at_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_race = ((select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_i2)-(select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_auto_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_race = ((select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_i2)-(select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_transit_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ben_autos_owned_coc_age = ((select top 1 ben_autos_owned_coc_age from #comparison_years_i2)-(select top 1 ben_autos_owned_coc_age from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_autos_owned_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_age = ((select top 1 ben_persons_phys_active_coc_age from #comparison_years_i2)-(select top 1 ben_persons_phys_active_coc_age from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_persons_phys_active_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_age = ((select top 1 ben_tt_at_commute_coc_age from #comparison_years_i2)-(select top 1 ben_tt_at_commute_coc_age from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_at_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_age = ((select top 1 ben_tt_auto_commute_coc_age from #comparison_years_i2)-(select top 1 ben_tt_auto_commute_coc_age from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_auto_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_age = ((select top 1 ben_tt_transit_commute_coc_age from #comparison_years_i2)-(select top 1 ben_tt_transit_commute_coc_age from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_transit_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_age = ((select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_i2)-(select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_at_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_age = ((select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_i2)-(select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_auto_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_age = ((select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_i2)-(select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_transit_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ben_autos_owned_coc_poverty = ((select top 1 ben_autos_owned_coc_poverty from #comparison_years_i2)-(select top 1 ben_autos_owned_coc_poverty from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_autos_owned_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_poverty = ((select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_i2)-(select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_persons_phys_active_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_poverty = ((select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_i2)-(select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_at_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_poverty = ((select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_i2)-(select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_auto_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_poverty = ((select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_i2)-(select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_transit_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_poverty = ((select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_i2)-(select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_at_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_poverty = ((select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_i2)-(select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_auto_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_poverty = ((select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_i2)-(select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 ben_tt_transit_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				persons = ((select top 1 persons from #comparison_years_i2)-(select top 1 persons from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 persons from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc = ((select top 1 persons_coc from #comparison_years_i2)-(select top 1 persons_coc from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 persons_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_race = ((select top 1 persons_coc_race from #comparison_years_i2)-(select top 1 persons_coc_race from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 persons_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_age = ((select top 1 persons_coc_age from #comparison_years_i2)-(select top 1 persons_coc_age from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 persons_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_poverty = ((select top 1 persons_coc_poverty from #comparison_years_i2)-(select top 1 persons_coc_poverty from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) + (select top 1 persons_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1)

			from multiyear_results mr
			where mr.analysis_id = @analysis_id
				and mr.comparison_year = @current_year;

			set @current_year += 1;
		end;

		set @current_year = (select top 1 comparison_year from #comparison_years_i2) + 1;
	
		while @current_year < (select top 1 comparison_year from #comparison_years_i3)
			begin
			update multiyear_results
			set ben_co = ((select top 1 ben_co from #comparison_years_i3)-(select top 1 ben_co from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_co from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_co2 = ((select top 1 ben_co2 from #comparison_years_i3)-(select top 1 ben_co2 from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_co2 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_nox = ((select top 1 ben_nox from #comparison_years_i3)-(select top 1 ben_nox from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_nox from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_pm10 = ((select top 1 ben_pm10 from #comparison_years_i3)-(select top 1 ben_pm10 from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_pm10 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_pm25 = ((select top 1 ben_pm25 from #comparison_years_i3)-(select top 1 ben_pm25 from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_pm25 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_rogs = ((select top 1 ben_rogs from #comparison_years_i3)-(select top 1 ben_rogs from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_rogs from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_so2 = ((select top 1 ben_so2 from #comparison_years_i3)-(select top 1 ben_so2 from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_so2 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_autos_owned_coc = ((select top 1 ben_autos_owned_coc from #comparison_years_i3)-(select top 1 ben_autos_owned_coc from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_autos_owned_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_autos_owned = ((select top 1 ben_autos_owned from #comparison_years_i3)-(select top 1 ben_autos_owned from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_autos_owned from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_fat = ((select top 1 ben_crashcost_fat from #comparison_years_i3)-(select top 1 ben_crashcost_fat from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_crashcost_fat from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_inj = ((select top 1 ben_crashcost_inj from #comparison_years_i3)-(select top 1 ben_crashcost_inj from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_crashcost_inj from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_pdo = ((select top 1 ben_crashcost_pdo from #comparison_years_i3)-(select top 1 ben_crashcost_pdo from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_crashcost_pdo from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc = ((select top 1 ben_persons_phys_active_coc from #comparison_years_i3)-(select top 1 ben_persons_phys_active_coc from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_persons_phys_active_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active = ((select top 1 ben_persons_phys_active from #comparison_years_i3)-(select top 1 ben_persons_phys_active from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_persons_phys_active from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_auto = ((select top 1 ben_relcost_auto from #comparison_years_i3)-(select top 1 ben_relcost_auto from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_relcost_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_hvy = ((select top 1 ben_relcost_truck_hvy from #comparison_years_i3)-(select top 1 ben_relcost_truck_hvy from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_relcost_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_lht = ((select top 1 ben_relcost_truck_lht from #comparison_years_i3)-(select top 1 ben_relcost_truck_lht from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_relcost_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_med = ((select top 1 ben_relcost_truck_med from #comparison_years_i3)-(select top 1 ben_relcost_truck_med from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_relcost_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute = ((select top 1 ben_tt_at_commute from #comparison_years_i3)-(select top 1 ben_tt_at_commute from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_at_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute = ((select top 1 ben_tt_auto_commute from #comparison_years_i3)-(select top 1 ben_tt_auto_commute from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_auto_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute = ((select top 1 ben_tt_transit_commute from #comparison_years_i3)-(select top 1 ben_tt_transit_commute from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_transit_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute = ((select top 1 ben_tt_at_noncommute from #comparison_years_i3)-(select top 1 ben_tt_at_noncommute from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_at_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute = ((select top 1 ben_tt_auto_noncommute from #comparison_years_i3)-(select top 1 ben_tt_auto_noncommute from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_auto_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute = ((select top 1 ben_tt_transit_noncommute from #comparison_years_i3)-(select top 1 ben_tt_transit_noncommute from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_transit_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc = ((select top 1 ben_tt_at_commute_coc from #comparison_years_i3)-(select top 1 ben_tt_at_commute_coc from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_at_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc = ((select top 1 ben_tt_auto_commute_coc from #comparison_years_i3)-(select top 1 ben_tt_auto_commute_coc from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_auto_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc = ((select top 1 ben_tt_transit_commute_coc from #comparison_years_i3)-(select top 1 ben_tt_transit_commute_coc from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_transit_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc = ((select top 1 ben_tt_at_noncommute_coc from #comparison_years_i3)-(select top 1 ben_tt_at_noncommute_coc from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_at_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc = ((select top 1 ben_tt_auto_noncommute_coc from #comparison_years_i3)-(select top 1 ben_tt_auto_noncommute_coc from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_auto_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc = ((select top 1 ben_tt_transit_noncommute_coc from #comparison_years_i3)-(select top 1 ben_tt_transit_noncommute_coc from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_transit_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_comm = ((select top 1 ben_tt_comm from #comparison_years_i3)-(select top 1 ben_tt_comm from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_truck = ((select top 1 ben_tt_truck from #comparison_years_i3)-(select top 1 ben_tt_truck from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_truck from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_auto = ((select top 1 ben_voc_auto from #comparison_years_i3)-(select top 1 ben_voc_auto from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_voc_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_lht = ((select top 1 ben_voc_truck_lht from #comparison_years_i3)-(select top 1 ben_voc_truck_lht from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_voc_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_med = ((select top 1 ben_voc_truck_med from #comparison_years_i3)-(select top 1 ben_voc_truck_med from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_voc_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_hvy = ((select top 1 ben_voc_truck_hvy from #comparison_years_i3)-(select top 1 ben_voc_truck_hvy from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_voc_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				toll_rev_base = ((select top 1 toll_rev_base from #comparison_years_i3)-(select top 1 toll_rev_base from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 toll_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				toll_rev_build = ((select top 1 toll_rev_build from #comparison_years_i3)-(select top 1 toll_rev_build from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 toll_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				fare_rev_base = ((select top 1 fare_rev_base from #comparison_years_i3)-(select top 1 fare_rev_base from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 fare_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				fare_rev_build = ((select top 1 fare_rev_build from #comparison_years_i3)-(select top 1 fare_rev_build from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 fare_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				
				-- totals_feature
				base_tt_person = ((select top 1 base_tt_person from #comparison_years_i3)-(select top 1 base_tt_person from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) 
					+ (select top 1 base_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				build_tt_person = ((select top 1 build_tt_person from #comparison_years_i3)-(select top 1 build_tt_person from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) 
					+ (select top 1 build_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				base_tt_truck_comm = ((select top 1 base_tt_truck_comm from #comparison_years_i3)-(select top 1 base_tt_truck_comm from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) 
					+ (select top 1 base_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				build_tt_truck_comm = ((select top 1 build_tt_truck_comm from #comparison_years_i3)-(select top 1 build_tt_truck_comm from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) 
					+ (select top 1 build_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 

				ratio_tt_person = ((select top 1 ratio_tt_person from #comparison_years_i3)-(select top 1 ratio_tt_person from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) 
					+ (select top 1 ratio_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				ratio_tt_truck_comm = ((select top 1 ratio_tt_truck_comm from #comparison_years_i3)-(select top 1 ratio_tt_truck_comm from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) 
					+ (select top 1 ratio_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				base_rel_cost = ((select top 1 base_rel_cost from #comparison_years_i2)-(select top 1 base_rel_cost from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) 
					+ (select top 1 base_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				build_rel_cost = ((select top 1 build_rel_cost from #comparison_years_i2)-(select top 1 build_rel_cost from #comparison_years_i1)) / (case when ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) = 0 then 1 else ((select top 1 period from #comparison_years_i2)-(select top 1 period from #comparison_years_i1)) end) 
					+ (select top 1 build_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				-- coc detail
				ben_autos_owned_coc_race = ((select top 1 ben_autos_owned_coc_race from #comparison_years_i3)-(select top 1 ben_autos_owned_coc_race from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_autos_owned_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_race = ((select top 1 ben_persons_phys_active_coc_race from #comparison_years_i3)-(select top 1 ben_persons_phys_active_coc_race from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_persons_phys_active_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_race = ((select top 1 ben_tt_at_commute_coc_race from #comparison_years_i3)-(select top 1 ben_tt_at_commute_coc_race from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_at_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_race = ((select top 1 ben_tt_auto_commute_coc_race from #comparison_years_i3)-(select top 1 ben_tt_auto_commute_coc_race from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_auto_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_race = ((select top 1 ben_tt_transit_commute_coc_race from #comparison_years_i3)-(select top 1 ben_tt_transit_commute_coc_race from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_transit_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_race = ((select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_i3)-(select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_at_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_race = ((select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_i3)-(select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_auto_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_race = ((select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_i3)-(select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_transit_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ben_autos_owned_coc_age = ((select top 1 ben_autos_owned_coc_age from #comparison_years_i3)-(select top 1 ben_autos_owned_coc_age from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_autos_owned_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_age = ((select top 1 ben_persons_phys_active_coc_age from #comparison_years_i3)-(select top 1 ben_persons_phys_active_coc_age from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_persons_phys_active_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_age = ((select top 1 ben_tt_at_commute_coc_age from #comparison_years_i3)-(select top 1 ben_tt_at_commute_coc_age from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_at_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_age = ((select top 1 ben_tt_auto_commute_coc_age from #comparison_years_i3)-(select top 1 ben_tt_auto_commute_coc_age from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_auto_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_age = ((select top 1 ben_tt_transit_commute_coc_age from #comparison_years_i3)-(select top 1 ben_tt_transit_commute_coc_age from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_transit_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_age = ((select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_i3)-(select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_at_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_age = ((select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_i3)-(select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_auto_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_age = ((select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_i3)-(select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_transit_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ben_autos_owned_coc_poverty = ((select top 1 ben_autos_owned_coc_poverty from #comparison_years_i3)-(select top 1 ben_autos_owned_coc_poverty from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_autos_owned_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_poverty = ((select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_i3)-(select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_persons_phys_active_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_poverty = ((select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_i3)-(select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_at_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_poverty = ((select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_i3)-(select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_auto_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_poverty = ((select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_i3)-(select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_transit_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_poverty = ((select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_i3)-(select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_at_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_poverty = ((select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_i3)-(select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_auto_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_poverty = ((select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_i3)-(select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 ben_tt_transit_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				persons = ((select top 1 persons from #comparison_years_i3)-(select top 1 persons from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 persons from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc = ((select top 1 persons_coc from #comparison_years_i3)-(select top 1 persons_coc from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 persons_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_race = ((select top 1 persons_coc_race from #comparison_years_i3)-(select top 1 persons_coc_race from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 persons_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_age = ((select top 1 persons_coc_age from #comparison_years_i3)-(select top 1 persons_coc_age from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 persons_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_poverty = ((select top 1 persons_coc_poverty from #comparison_years_i3)-(select top 1 persons_coc_poverty from #comparison_years_i2)) / (case when ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) = 0 then 1 else ((select top 1 period from #comparison_years_i3)-(select top 1 period from #comparison_years_i2)) end) + (select top 1 persons_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1)

			from multiyear_results mr
			where mr.analysis_id = @analysis_id
				and mr.comparison_year = @current_year;

			set @current_year += 1;
		end;
	
		set @current_year = (select top 1 comparison_year from #comparison_years_i3) + 1;
	
		while @current_year < (select top 1 comparison_year from #comparison_years_i4)
			begin
			update multiyear_results
			set ben_co = ((select top 1 ben_co from #comparison_years_i4)-(select top 1 ben_co from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_co from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_co2 = ((select top 1 ben_co2 from #comparison_years_i4)-(select top 1 ben_co2 from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_co2 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_nox = ((select top 1 ben_nox from #comparison_years_i4)-(select top 1 ben_nox from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_nox from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_pm10 = ((select top 1 ben_pm10 from #comparison_years_i4)-(select top 1 ben_pm10 from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_pm10 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_pm25 = ((select top 1 ben_pm25 from #comparison_years_i4)-(select top 1 ben_pm25 from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_pm25 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_rogs = ((select top 1 ben_rogs from #comparison_years_i4)-(select top 1 ben_rogs from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_rogs from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_so2 = ((select top 1 ben_so2 from #comparison_years_i4)-(select top 1 ben_so2 from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_so2 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_autos_owned_coc = ((select top 1 ben_autos_owned_coc from #comparison_years_i4)-(select top 1 ben_autos_owned_coc from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_autos_owned_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_autos_owned = ((select top 1 ben_autos_owned from #comparison_years_i4)-(select top 1 ben_autos_owned from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_autos_owned from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_fat = ((select top 1 ben_crashcost_fat from #comparison_years_i4)-(select top 1 ben_crashcost_fat from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_crashcost_fat from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_inj = ((select top 1 ben_crashcost_inj from #comparison_years_i4)-(select top 1 ben_crashcost_inj from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_crashcost_inj from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_pdo = ((select top 1 ben_crashcost_pdo from #comparison_years_i4)-(select top 1 ben_crashcost_pdo from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_crashcost_pdo from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc = ((select top 1 ben_persons_phys_active_coc from #comparison_years_i4)-(select top 1 ben_persons_phys_active_coc from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_persons_phys_active_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active = ((select top 1 ben_persons_phys_active from #comparison_years_i4)-(select top 1 ben_persons_phys_active from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_persons_phys_active from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_auto = ((select top 1 ben_relcost_auto from #comparison_years_i4)-(select top 1 ben_relcost_auto from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_relcost_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_hvy = ((select top 1 ben_relcost_truck_hvy from #comparison_years_i4)-(select top 1 ben_relcost_truck_hvy from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_relcost_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_lht = ((select top 1 ben_relcost_truck_lht from #comparison_years_i4)-(select top 1 ben_relcost_truck_lht from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_relcost_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_med = ((select top 1 ben_relcost_truck_med from #comparison_years_i4)-(select top 1 ben_relcost_truck_med from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_relcost_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute = ((select top 1 ben_tt_at_commute from #comparison_years_i4)-(select top 1 ben_tt_at_commute from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_at_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute = ((select top 1 ben_tt_auto_commute from #comparison_years_i4)-(select top 1 ben_tt_auto_commute from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_auto_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute = ((select top 1 ben_tt_transit_commute from #comparison_years_i4)-(select top 1 ben_tt_transit_commute from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_transit_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute = ((select top 1 ben_tt_at_noncommute from #comparison_years_i4)-(select top 1 ben_tt_at_noncommute from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_at_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute = ((select top 1 ben_tt_auto_noncommute from #comparison_years_i4)-(select top 1 ben_tt_auto_noncommute from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_auto_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute = ((select top 1 ben_tt_transit_noncommute from #comparison_years_i4)-(select top 1 ben_tt_transit_noncommute from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_transit_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc = ((select top 1 ben_tt_at_commute_coc from #comparison_years_i4)-(select top 1 ben_tt_at_commute_coc from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_at_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc = ((select top 1 ben_tt_auto_commute_coc from #comparison_years_i4)-(select top 1 ben_tt_auto_commute_coc from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_auto_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc = ((select top 1 ben_tt_transit_commute_coc from #comparison_years_i4)-(select top 1 ben_tt_transit_commute_coc from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_transit_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc = ((select top 1 ben_tt_at_noncommute_coc from #comparison_years_i4)-(select top 1 ben_tt_at_noncommute_coc from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_at_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc = ((select top 1 ben_tt_auto_noncommute_coc from #comparison_years_i4)-(select top 1 ben_tt_auto_noncommute_coc from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_auto_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc = ((select top 1 ben_tt_transit_noncommute_coc from #comparison_years_i4)-(select top 1 ben_tt_transit_noncommute_coc from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_transit_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_comm = ((select top 1 ben_tt_comm from #comparison_years_i4)-(select top 1 ben_tt_comm from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_truck = ((select top 1 ben_tt_truck from #comparison_years_i4)-(select top 1 ben_tt_truck from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_truck from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_auto = ((select top 1 ben_voc_auto from #comparison_years_i4)-(select top 1 ben_voc_auto from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_voc_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_lht = ((select top 1 ben_voc_truck_lht from #comparison_years_i4)-(select top 1 ben_voc_truck_lht from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_voc_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_med = ((select top 1 ben_voc_truck_med from #comparison_years_i4)-(select top 1 ben_voc_truck_med from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_voc_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_hvy = ((select top 1 ben_voc_truck_hvy from #comparison_years_i4)-(select top 1 ben_voc_truck_hvy from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_voc_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				toll_rev_base = ((select top 1 toll_rev_base from #comparison_years_i4)-(select top 1 toll_rev_base from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 toll_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				toll_rev_build = ((select top 1 toll_rev_build from #comparison_years_i4)-(select top 1 toll_rev_build from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 toll_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				fare_rev_base = ((select top 1 fare_rev_base from #comparison_years_i4)-(select top 1 fare_rev_base from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 fare_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				fare_rev_build = ((select top 1 fare_rev_build from #comparison_years_i4)-(select top 1 fare_rev_build from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 fare_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				
				-- totals_feature
				base_tt_person = ((select top 1 base_tt_person from #comparison_years_i4)-(select top 1 base_tt_person from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) 
					+ (select top 1 base_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				build_tt_person = ((select top 1 build_tt_person from #comparison_years_i4)-(select top 1 build_tt_person from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) 
					+ (select top 1 build_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				base_tt_truck_comm = ((select top 1 base_tt_truck_comm from #comparison_years_i4)-(select top 1 base_tt_truck_comm from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) 
					+ (select top 1 base_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				build_tt_truck_comm = ((select top 1 build_tt_truck_comm from #comparison_years_i4)-(select top 1 build_tt_truck_comm from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) 
					+ (select top 1 build_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 

				ratio_tt_person = ((select top 1 ratio_tt_person from #comparison_years_i4)-(select top 1 ratio_tt_person from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) 
					+ (select top 1 ratio_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				ratio_tt_truck_comm = ((select top 1 ratio_tt_truck_comm from #comparison_years_i4)-(select top 1 ratio_tt_truck_comm from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) 
					+ (select top 1 ratio_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				base_rel_cost = ((select top 1 base_rel_cost from #comparison_years_i4)-(select top 1 base_rel_cost from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) 
					+ (select top 1 base_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				build_rel_cost = ((select top 1 build_rel_cost from #comparison_years_i4)-(select top 1 build_rel_cost from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) 
					+ (select top 1 build_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 

				-- coc detail
				ben_autos_owned_coc_race = ((select top 1 ben_autos_owned_coc_race from #comparison_years_i4)-(select top 1 ben_autos_owned_coc_race from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_autos_owned_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_race = ((select top 1 ben_persons_phys_active_coc_race from #comparison_years_i4)-(select top 1 ben_persons_phys_active_coc_race from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_persons_phys_active_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_race = ((select top 1 ben_tt_at_commute_coc_race from #comparison_years_i4)-(select top 1 ben_tt_at_commute_coc_race from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_at_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_race = ((select top 1 ben_tt_auto_commute_coc_race from #comparison_years_i4)-(select top 1 ben_tt_auto_commute_coc_race from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_auto_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_race = ((select top 1 ben_tt_transit_commute_coc_race from #comparison_years_i4)-(select top 1 ben_tt_transit_commute_coc_race from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_transit_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_race = ((select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_i4)-(select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_at_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_race = ((select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_i4)-(select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_auto_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_race = ((select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_i4)-(select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_transit_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ben_autos_owned_coc_age = ((select top 1 ben_autos_owned_coc_age from #comparison_years_i4)-(select top 1 ben_autos_owned_coc_age from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_autos_owned_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_age = ((select top 1 ben_persons_phys_active_coc_age from #comparison_years_i4)-(select top 1 ben_persons_phys_active_coc_age from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_persons_phys_active_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_age = ((select top 1 ben_tt_at_commute_coc_age from #comparison_years_i4)-(select top 1 ben_tt_at_commute_coc_age from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_at_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_age = ((select top 1 ben_tt_auto_commute_coc_age from #comparison_years_i4)-(select top 1 ben_tt_auto_commute_coc_age from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_auto_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_age = ((select top 1 ben_tt_transit_commute_coc_age from #comparison_years_i4)-(select top 1 ben_tt_transit_commute_coc_age from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_transit_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_age = ((select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_i4)-(select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_at_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_age = ((select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_i4)-(select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_auto_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_age = ((select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_i4)-(select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_transit_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ben_autos_owned_coc_poverty = ((select top 1 ben_autos_owned_coc_poverty from #comparison_years_i4)-(select top 1 ben_autos_owned_coc_poverty from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_autos_owned_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_poverty = ((select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_i4)-(select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_persons_phys_active_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_poverty = ((select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_i4)-(select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_at_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_poverty = ((select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_i4)-(select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_auto_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_poverty = ((select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_i4)-(select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_transit_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_poverty = ((select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_i4)-(select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_at_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_poverty = ((select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_i4)-(select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_auto_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_poverty = ((select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_i4)-(select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 ben_tt_transit_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				persons = ((select top 1 persons from #comparison_years_i4)-(select top 1 persons from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 persons from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc = ((select top 1 persons_coc from #comparison_years_i4)-(select top 1 persons_coc from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 persons_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_race = ((select top 1 persons_coc_race from #comparison_years_i4)-(select top 1 persons_coc_race from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 persons_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_age = ((select top 1 persons_coc_age from #comparison_years_i4)-(select top 1 persons_coc_age from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 persons_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_poverty = ((select top 1 persons_coc_poverty from #comparison_years_i4)-(select top 1 persons_coc_poverty from #comparison_years_i3)) / (case when ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) = 0 then 1 else ((select top 1 period from #comparison_years_i4)-(select top 1 period from #comparison_years_i3)) end) + (select top 1 persons_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1)

			from multiyear_results mr
			where mr.analysis_id = @analysis_id
				and mr.comparison_year = @current_year;

			set @current_year += 1;
		end;
	
		set @current_year = (select top 1 comparison_year from #comparison_years_i4) + 1;
	
		while @current_year < (select top 1 comparison_year from #comparison_years_i5)
			begin
			update multiyear_results
			set ben_co = ((select top 1 ben_co from #comparison_years_i5)-(select top 1 ben_co from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_co from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_co2 = ((select top 1 ben_co2 from #comparison_years_i5)-(select top 1 ben_co2 from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_co2 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_nox = ((select top 1 ben_nox from #comparison_years_i5)-(select top 1 ben_nox from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_nox from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_pm10 = ((select top 1 ben_pm10 from #comparison_years_i5)-(select top 1 ben_pm10 from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_pm10 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_pm25 = ((select top 1 ben_pm25 from #comparison_years_i5)-(select top 1 ben_pm25 from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_pm25 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_rogs = ((select top 1 ben_rogs from #comparison_years_i5)-(select top 1 ben_rogs from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_rogs from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_so2 = ((select top 1 ben_so2 from #comparison_years_i5)-(select top 1 ben_so2 from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_so2 from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_autos_owned_coc = ((select top 1 ben_autos_owned_coc from #comparison_years_i5)-(select top 1 ben_autos_owned_coc from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_autos_owned_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_autos_owned = ((select top 1 ben_autos_owned from #comparison_years_i5)-(select top 1 ben_autos_owned from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_autos_owned from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_fat = ((select top 1 ben_crashcost_fat from #comparison_years_i5)-(select top 1 ben_crashcost_fat from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_crashcost_fat from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_inj = ((select top 1 ben_crashcost_inj from #comparison_years_i5)-(select top 1 ben_crashcost_inj from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_crashcost_inj from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_crashcost_pdo = ((select top 1 ben_crashcost_pdo from #comparison_years_i5)-(select top 1 ben_crashcost_pdo from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_crashcost_pdo from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc = ((select top 1 ben_persons_phys_active_coc from #comparison_years_i5)-(select top 1 ben_persons_phys_active_coc from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_persons_phys_active_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active = ((select top 1 ben_persons_phys_active from #comparison_years_i5)-(select top 1 ben_persons_phys_active from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_persons_phys_active from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_auto = ((select top 1 ben_relcost_auto from #comparison_years_i5)-(select top 1 ben_relcost_auto from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_relcost_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_hvy = ((select top 1 ben_relcost_truck_hvy from #comparison_years_i5)-(select top 1 ben_relcost_truck_hvy from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_relcost_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_lht = ((select top 1 ben_relcost_truck_lht from #comparison_years_i5)-(select top 1 ben_relcost_truck_lht from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_relcost_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_relcost_truck_med = ((select top 1 ben_relcost_truck_med from #comparison_years_i5)-(select top 1 ben_relcost_truck_med from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_relcost_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute = ((select top 1 ben_tt_at_commute from #comparison_years_i5)-(select top 1 ben_tt_at_commute from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_at_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute = ((select top 1 ben_tt_auto_commute from #comparison_years_i5)-(select top 1 ben_tt_auto_commute from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_auto_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute = ((select top 1 ben_tt_transit_commute from #comparison_years_i5)-(select top 1 ben_tt_transit_commute from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_transit_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute = ((select top 1 ben_tt_at_noncommute from #comparison_years_i5)-(select top 1 ben_tt_at_noncommute from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_at_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute = ((select top 1 ben_tt_auto_noncommute from #comparison_years_i5)-(select top 1 ben_tt_auto_noncommute from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_auto_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute = ((select top 1 ben_tt_transit_noncommute from #comparison_years_i5)-(select top 1 ben_tt_transit_noncommute from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_transit_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc = ((select top 1 ben_tt_at_commute_coc from #comparison_years_i5)-(select top 1 ben_tt_at_commute_coc from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_at_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc = ((select top 1 ben_tt_auto_commute_coc from #comparison_years_i5)-(select top 1 ben_tt_auto_commute_coc from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_auto_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc = ((select top 1 ben_tt_transit_commute_coc from #comparison_years_i5)-(select top 1 ben_tt_transit_commute_coc from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_transit_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc = ((select top 1 ben_tt_at_noncommute_coc from #comparison_years_i5)-(select top 1 ben_tt_at_noncommute_coc from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_at_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc = ((select top 1 ben_tt_auto_noncommute_coc from #comparison_years_i5)-(select top 1 ben_tt_auto_noncommute_coc from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_auto_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc = ((select top 1 ben_tt_transit_noncommute_coc from #comparison_years_i5)-(select top 1 ben_tt_transit_noncommute_coc from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_transit_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_comm = ((select top 1 ben_tt_comm from #comparison_years_i5)-(select top 1 ben_tt_comm from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_truck = ((select top 1 ben_tt_truck from #comparison_years_i5)-(select top 1 ben_tt_truck from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_truck from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_auto = ((select top 1 ben_voc_auto from #comparison_years_i5)-(select top 1 ben_voc_auto from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_voc_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_lht = ((select top 1 ben_voc_truck_lht from #comparison_years_i5)-(select top 1 ben_voc_truck_lht from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_voc_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_med = ((select top 1 ben_voc_truck_med from #comparison_years_i5)-(select top 1 ben_voc_truck_med from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_voc_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_voc_truck_hvy = ((select top 1 ben_voc_truck_hvy from #comparison_years_i5)-(select top 1 ben_voc_truck_hvy from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_voc_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				toll_rev_base = ((select top 1 toll_rev_base from #comparison_years_i5)-(select top 1 toll_rev_base from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 toll_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				toll_rev_build = ((select top 1 toll_rev_build from #comparison_years_i5)-(select top 1 toll_rev_build from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 toll_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				fare_rev_base = ((select top 1 fare_rev_base from #comparison_years_i5)-(select top 1 fare_rev_base from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 fare_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				fare_rev_build = ((select top 1 fare_rev_build from #comparison_years_i5)-(select top 1 fare_rev_build from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 fare_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				
				-- totals_feature
				base_tt_person = ((select top 1 base_tt_person from #comparison_years_i5)-(select top 1 base_tt_person from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) 
					+ (select top 1 base_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				build_tt_person = ((select top 1 build_tt_person from #comparison_years_i5)-(select top 1 build_tt_person from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) 
					+ (select top 1 build_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				base_tt_truck_comm = ((select top 1 base_tt_truck_comm from #comparison_years_i5)-(select top 1 base_tt_truck_comm from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) 
					+ (select top 1 base_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				build_tt_truck_comm = ((select top 1 build_tt_truck_comm from #comparison_years_i5)-(select top 1 build_tt_truck_comm from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) 
					+ (select top 1 build_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 

				ratio_tt_person = ((select top 1 ratio_tt_person from #comparison_years_i5)-(select top 1 ratio_tt_person from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) 
					+ (select top 1 ratio_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 
				ratio_tt_truck_comm = ((select top 1 ratio_tt_truck_comm from #comparison_years_i5)-(select top 1 ratio_tt_truck_comm from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) 
					+ (select top 1 ratio_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				base_rel_cost = ((select top 1 base_rel_cost from #comparison_years_i5)-(select top 1 base_rel_cost from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) 
					+ (select top 1 base_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				build_rel_cost = ((select top 1 build_rel_cost from #comparison_years_i5)-(select top 1 build_rel_cost from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) 
					+ (select top 1 build_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period-1), 

				-- coc detail
				ben_autos_owned_coc_race = ((select top 1 ben_autos_owned_coc_race from #comparison_years_i5)-(select top 1 ben_autos_owned_coc_race from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_autos_owned_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_race = ((select top 1 ben_persons_phys_active_coc_race from #comparison_years_i5)-(select top 1 ben_persons_phys_active_coc_race from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_persons_phys_active_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_race = ((select top 1 ben_tt_at_commute_coc_race from #comparison_years_i5)-(select top 1 ben_tt_at_commute_coc_race from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_at_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_race = ((select top 1 ben_tt_auto_commute_coc_race from #comparison_years_i5)-(select top 1 ben_tt_auto_commute_coc_race from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_auto_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_race = ((select top 1 ben_tt_transit_commute_coc_race from #comparison_years_i5)-(select top 1 ben_tt_transit_commute_coc_race from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_transit_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_race = ((select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_i5)-(select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_at_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_race = ((select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_i5)-(select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_auto_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_race = ((select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_i5)-(select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_transit_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ben_autos_owned_coc_age = ((select top 1 ben_autos_owned_coc_age from #comparison_years_i5)-(select top 1 ben_autos_owned_coc_age from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_autos_owned_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_age = ((select top 1 ben_persons_phys_active_coc_age from #comparison_years_i5)-(select top 1 ben_persons_phys_active_coc_age from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_persons_phys_active_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_age = ((select top 1 ben_tt_at_commute_coc_age from #comparison_years_i5)-(select top 1 ben_tt_at_commute_coc_age from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_at_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_age = ((select top 1 ben_tt_auto_commute_coc_age from #comparison_years_i5)-(select top 1 ben_tt_auto_commute_coc_age from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_auto_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_age = ((select top 1 ben_tt_transit_commute_coc_age from #comparison_years_i5)-(select top 1 ben_tt_transit_commute_coc_age from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_transit_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_age = ((select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_i5)-(select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_at_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_age = ((select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_i5)-(select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_auto_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_age = ((select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_i5)-(select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_transit_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				ben_autos_owned_coc_poverty = ((select top 1 ben_autos_owned_coc_poverty from #comparison_years_i5)-(select top 1 ben_autos_owned_coc_poverty from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_autos_owned_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_persons_phys_active_coc_poverty = ((select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_i5)-(select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_persons_phys_active_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_commute_coc_poverty = ((select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_i5)-(select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_at_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_commute_coc_poverty = ((select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_i5)-(select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_auto_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_commute_coc_poverty = ((select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_i5)-(select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_transit_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_at_noncommute_coc_poverty = ((select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_i5)-(select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_at_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_auto_noncommute_coc_poverty = ((select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_i5)-(select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_auto_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				ben_tt_transit_noncommute_coc_poverty = ((select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_i5)-(select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 ben_tt_transit_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),

				persons = ((select top 1 persons from #comparison_years_i5)-(select top 1 persons from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 persons from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc = ((select top 1 persons_coc from #comparison_years_i5)-(select top 1 persons_coc from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 persons_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_race = ((select top 1 persons_coc_race from #comparison_years_i5)-(select top 1 persons_coc_race from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 persons_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_age = ((select top 1 persons_coc_age from #comparison_years_i5)-(select top 1 persons_coc_age from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 persons_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period-1),
				persons_coc_poverty = ((select top 1 persons_coc_poverty from #comparison_years_i5)-(select top 1 persons_coc_poverty from #comparison_years_i4)) / (case when ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) = 0 then 1 else ((select top 1 period from #comparison_years_i5)-(select top 1 period from #comparison_years_i4)) end) + (select top 1 persons_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period-1)

			from multiyear_results mr
			where mr.analysis_id = @analysis_id
				and mr.comparison_year = @current_year;

			set @current_year += 1;
		end;
	commit tran

	-- begin extrapolation process
	
	select *
	into #comparison_years_previous_1
	from multiyear_results
	where analysis_id = @analysis_id
		and comparison_year = @max_scenario_comparison_year;

	select *
	into #comparison_years_previous_2
	from multiyear_results
	where analysis_id = @analysis_id
		and comparison_year = @max_scenario_comparison_year - 1;

	begin tran
		set @current_year = @max_scenario_comparison_year + 1;
	
		while @current_year <= @year_end
			begin
			update multiyear_results
			set	ben_co = ((select top 1 ben_co from #comparison_years_previous_1) - (select top 1 ben_co from #comparison_years_previous_2) + (select top 1 ben_co from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_co2 = ((select top 1 ben_co2 from #comparison_years_previous_1) - (select top 1 ben_co2 from #comparison_years_previous_2) + (select top 1 ben_co2 from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_nox = ((select top 1 ben_nox from #comparison_years_previous_1) - (select top 1 ben_nox from #comparison_years_previous_2) + (select top 1 ben_nox from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_pm10 = ((select top 1 ben_pm10 from #comparison_years_previous_1) - (select top 1 ben_pm10 from #comparison_years_previous_2) + (select top 1 ben_pm10 from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_pm25 = ((select top 1 ben_pm25 from #comparison_years_previous_1) - (select top 1 ben_pm25 from #comparison_years_previous_2) + (select top 1 ben_pm25 from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_rogs = ((select top 1 ben_rogs from #comparison_years_previous_1) - (select top 1 ben_rogs from #comparison_years_previous_2) + (select top 1 ben_rogs from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_so2 = ((select top 1 ben_so2 from #comparison_years_previous_1) - (select top 1 ben_so2 from #comparison_years_previous_2) + (select top 1 ben_so2 from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_autos_owned_coc = ((select top 1 ben_autos_owned_coc from #comparison_years_previous_1) - (select top 1 ben_autos_owned_coc from #comparison_years_previous_2) + (select top 1 ben_autos_owned_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_autos_owned = ((select top 1 ben_autos_owned from #comparison_years_previous_1) - (select top 1 ben_autos_owned from #comparison_years_previous_2) + (select top 1 ben_autos_owned from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_crashcost_fat = ((select top 1 ben_crashcost_fat from #comparison_years_previous_1) - (select top 1 ben_crashcost_fat from #comparison_years_previous_2) + (select top 1 ben_crashcost_fat from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_crashcost_inj = ((select top 1 ben_crashcost_inj from #comparison_years_previous_1) - (select top 1 ben_crashcost_inj from #comparison_years_previous_2) + (select top 1 ben_crashcost_inj from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_crashcost_pdo = ((select top 1 ben_crashcost_pdo from #comparison_years_previous_1) - (select top 1 ben_crashcost_pdo from #comparison_years_previous_2) + (select top 1 ben_crashcost_pdo from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_persons_phys_active_coc = ((select top 1 ben_persons_phys_active_coc from #comparison_years_previous_1) - (select top 1 ben_persons_phys_active_coc from #comparison_years_previous_2) + (select top 1 ben_persons_phys_active_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_persons_phys_active = ((select top 1 ben_persons_phys_active from #comparison_years_previous_1) - (select top 1 ben_persons_phys_active from #comparison_years_previous_2) + (select top 1 ben_persons_phys_active from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_relcost_auto = ((select top 1 ben_relcost_auto from #comparison_years_previous_1) - (select top 1 ben_relcost_auto from #comparison_years_previous_2) + (select top 1 ben_relcost_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_relcost_truck_hvy = ((select top 1 ben_relcost_truck_hvy from #comparison_years_previous_1) - (select top 1 ben_relcost_truck_hvy from #comparison_years_previous_2) + (select top 1 ben_relcost_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_relcost_truck_lht = ((select top 1 ben_relcost_truck_lht from #comparison_years_previous_1) - (select top 1 ben_relcost_truck_lht from #comparison_years_previous_2) + (select top 1 ben_relcost_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_relcost_truck_med = ((select top 1 ben_relcost_truck_med from #comparison_years_previous_1) - (select top 1 ben_relcost_truck_med from #comparison_years_previous_2) + (select top 1 ben_relcost_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_at_commute = ((select top 1 ben_tt_at_commute from #comparison_years_previous_1) - (select top 1 ben_tt_at_commute from #comparison_years_previous_2) + (select top 1 ben_tt_at_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_auto_commute = ((select top 1 ben_tt_auto_commute from #comparison_years_previous_1) - (select top 1 ben_tt_auto_commute from #comparison_years_previous_2) + (select top 1 ben_tt_auto_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_transit_commute = ((select top 1 ben_tt_transit_commute from #comparison_years_previous_1) - (select top 1 ben_tt_transit_commute from #comparison_years_previous_2) + (select top 1 ben_tt_transit_commute from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_at_noncommute = ((select top 1 ben_tt_at_noncommute from #comparison_years_previous_1) - (select top 1 ben_tt_at_noncommute from #comparison_years_previous_2) + (select top 1 ben_tt_at_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_auto_noncommute = ((select top 1 ben_tt_auto_noncommute from #comparison_years_previous_1) - (select top 1 ben_tt_auto_noncommute from #comparison_years_previous_2) + (select top 1 ben_tt_auto_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_transit_noncommute = ((select top 1 ben_tt_transit_noncommute from #comparison_years_previous_1) - (select top 1 ben_tt_transit_noncommute from #comparison_years_previous_2) + (select top 1 ben_tt_transit_noncommute from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_at_commute_coc = ((select top 1 ben_tt_at_commute_coc from #comparison_years_previous_1) - (select top 1 ben_tt_at_commute_coc from #comparison_years_previous_2) + (select top 1 ben_tt_at_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_auto_commute_coc = ((select top 1 ben_tt_auto_commute_coc from #comparison_years_previous_1) - (select top 1 ben_tt_auto_commute_coc from #comparison_years_previous_2) + (select top 1 ben_tt_auto_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_transit_commute_coc = ((select top 1 ben_tt_transit_commute_coc from #comparison_years_previous_1) - (select top 1 ben_tt_transit_commute_coc from #comparison_years_previous_2) + (select top 1 ben_tt_transit_commute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_at_noncommute_coc = ((select top 1 ben_tt_at_noncommute_coc from #comparison_years_previous_1) - (select top 1 ben_tt_at_noncommute_coc from #comparison_years_previous_2) + (select top 1 ben_tt_at_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_auto_noncommute_coc = ((select top 1 ben_tt_auto_noncommute_coc from #comparison_years_previous_1) - (select top 1 ben_tt_auto_noncommute_coc from #comparison_years_previous_2) + (select top 1 ben_tt_auto_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_transit_noncommute_coc = ((select top 1 ben_tt_transit_noncommute_coc from #comparison_years_previous_1) - (select top 1 ben_tt_transit_noncommute_coc from #comparison_years_previous_2) + (select top 1 ben_tt_transit_noncommute_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_comm = ((select top 1 ben_tt_comm from #comparison_years_previous_1) - (select top 1 ben_tt_comm from #comparison_years_previous_2) + (select top 1 ben_tt_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_truck = ((select top 1 ben_tt_truck from #comparison_years_previous_1) - (select top 1 ben_tt_truck from #comparison_years_previous_2) + (select top 1 ben_tt_truck from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_voc_auto = ((select top 1 ben_voc_auto from #comparison_years_previous_1) - (select top 1 ben_voc_auto from #comparison_years_previous_2) + (select top 1 ben_voc_auto from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_voc_truck_lht = ((select top 1 ben_voc_truck_lht from #comparison_years_previous_1) - (select top 1 ben_voc_truck_lht from #comparison_years_previous_2) + (select top 1 ben_voc_truck_lht from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_voc_truck_med = ((select top 1 ben_voc_truck_med from #comparison_years_previous_1) - (select top 1 ben_voc_truck_med from #comparison_years_previous_2) + (select top 1 ben_voc_truck_med from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_voc_truck_hvy = ((select top 1 ben_voc_truck_hvy from #comparison_years_previous_1) - (select top 1 ben_voc_truck_hvy from #comparison_years_previous_2) + (select top 1 ben_voc_truck_hvy from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				toll_rev_base = ((select top 1 toll_rev_base from #comparison_years_previous_1) - (select top 1 toll_rev_base from #comparison_years_previous_2) + (select top 1 toll_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				toll_rev_build = ((select top 1 toll_rev_build from #comparison_years_previous_1) - (select top 1 toll_rev_build from #comparison_years_previous_2) + (select top 1 toll_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				fare_rev_base = ((select top 1 fare_rev_base from #comparison_years_previous_1) - (select top 1 fare_rev_base from #comparison_years_previous_2) + (select top 1 fare_rev_base from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				fare_rev_build = ((select top 1 fare_rev_build from #comparison_years_previous_1) - (select top 1 fare_rev_build from #comparison_years_previous_2) + (select top 1 fare_rev_build from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				
				-- totals_feature
				base_tt_person = ((select top 1 base_tt_person from #comparison_years_previous_1) - (select top 1 base_tt_person from #comparison_years_previous_2) 
					+ (select top 1 base_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				build_tt_person = ((select top 1 build_tt_person from #comparison_years_previous_1) - (select top 1 build_tt_person from #comparison_years_previous_2) 
					+ (select top 1 build_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				base_tt_truck_comm = ((select top 1 base_tt_truck_comm from #comparison_years_previous_1) - (select top 1 base_tt_truck_comm from #comparison_years_previous_2) 
					+ (select top 1 base_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				build_tt_truck_comm = ((select top 1 build_tt_truck_comm from #comparison_years_previous_1) - (select top 1 build_tt_truck_comm from #comparison_years_previous_2) 
					+ (select top 1 build_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),

				ratio_tt_person = ((select top 1 ratio_tt_person from #comparison_years_previous_1) - (select top 1 ratio_tt_person from #comparison_years_previous_2) 
					+ (select top 1 ratio_tt_person from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ratio_tt_truck_comm = ((select top 1 ratio_tt_truck_comm from #comparison_years_previous_1) - (select top 1 ratio_tt_truck_comm from #comparison_years_previous_2) 
					+ (select top 1 ratio_tt_truck_comm from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),

				base_rel_cost = ((select top 1 base_rel_cost from #comparison_years_previous_1) - (select top 1 base_rel_cost from #comparison_years_previous_2) 
					+ (select top 1 base_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				build_rel_cost = ((select top 1 build_rel_cost from #comparison_years_previous_1) - (select top 1 build_rel_cost from #comparison_years_previous_2) 
					+ (select top 1 build_rel_cost from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),

				-- coc detail
				ben_autos_owned_coc_race = ((select top 1 ben_autos_owned_coc_race from #comparison_years_previous_1) - (select top 1 ben_autos_owned_coc_race from #comparison_years_previous_2) + (select top 1 ben_autos_owned_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_persons_phys_active_coc_race = ((select top 1 ben_persons_phys_active_coc_race from #comparison_years_previous_1) - (select top 1 ben_persons_phys_active_coc_race from #comparison_years_previous_2) + (select top 1 ben_persons_phys_active_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_at_commute_coc_race = ((select top 1 ben_tt_at_commute_coc_race from #comparison_years_previous_1) - (select top 1 ben_tt_at_commute_coc_race from #comparison_years_previous_2) + (select top 1 ben_tt_at_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_auto_commute_coc_race = ((select top 1 ben_tt_auto_commute_coc_race from #comparison_years_previous_1) - (select top 1 ben_tt_auto_commute_coc_race from #comparison_years_previous_2) + (select top 1 ben_tt_auto_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_transit_commute_coc_race = ((select top 1 ben_tt_transit_commute_coc_race from #comparison_years_previous_1) - (select top 1 ben_tt_transit_commute_coc_race from #comparison_years_previous_2) + (select top 1 ben_tt_transit_commute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_at_noncommute_coc_race = ((select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_previous_1) - (select top 1 ben_tt_at_noncommute_coc_race from #comparison_years_previous_2) + (select top 1 ben_tt_at_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_auto_noncommute_coc_race = ((select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_previous_1) - (select top 1 ben_tt_auto_noncommute_coc_race from #comparison_years_previous_2) + (select top 1 ben_tt_auto_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_transit_noncommute_coc_race = ((select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_previous_1) - (select top 1 ben_tt_transit_noncommute_coc_race from #comparison_years_previous_2) + (select top 1 ben_tt_transit_noncommute_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),

				ben_autos_owned_coc_age = ((select top 1 ben_autos_owned_coc_age from #comparison_years_previous_1) - (select top 1 ben_autos_owned_coc_age from #comparison_years_previous_2) + (select top 1 ben_autos_owned_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_persons_phys_active_coc_age = ((select top 1 ben_persons_phys_active_coc_age from #comparison_years_previous_1) - (select top 1 ben_persons_phys_active_coc_age from #comparison_years_previous_2) + (select top 1 ben_persons_phys_active_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_at_commute_coc_age = ((select top 1 ben_tt_at_commute_coc_age from #comparison_years_previous_1) - (select top 1 ben_tt_at_commute_coc_age from #comparison_years_previous_2) + (select top 1 ben_tt_at_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_auto_commute_coc_age = ((select top 1 ben_tt_auto_commute_coc_age from #comparison_years_previous_1) - (select top 1 ben_tt_auto_commute_coc_age from #comparison_years_previous_2) + (select top 1 ben_tt_auto_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_transit_commute_coc_age = ((select top 1 ben_tt_transit_commute_coc_age from #comparison_years_previous_1) - (select top 1 ben_tt_transit_commute_coc_age from #comparison_years_previous_2) + (select top 1 ben_tt_transit_commute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_at_noncommute_coc_age = ((select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_previous_1) - (select top 1 ben_tt_at_noncommute_coc_age from #comparison_years_previous_2) + (select top 1 ben_tt_at_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_auto_noncommute_coc_age = ((select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_previous_1) - (select top 1 ben_tt_auto_noncommute_coc_age from #comparison_years_previous_2) + (select top 1 ben_tt_auto_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_transit_noncommute_coc_age = ((select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_previous_1) - (select top 1 ben_tt_transit_noncommute_coc_age from #comparison_years_previous_2) + (select top 1 ben_tt_transit_noncommute_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),

				ben_autos_owned_coc_poverty = ((select top 1 ben_autos_owned_coc_poverty from #comparison_years_previous_1) - (select top 1 ben_autos_owned_coc_poverty from #comparison_years_previous_2) + (select top 1 ben_autos_owned_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_persons_phys_active_coc_poverty = ((select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_previous_1) - (select top 1 ben_persons_phys_active_coc_poverty from #comparison_years_previous_2) + (select top 1 ben_persons_phys_active_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_at_commute_coc_poverty = ((select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_previous_1) - (select top 1 ben_tt_at_commute_coc_poverty from #comparison_years_previous_2) + (select top 1 ben_tt_at_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_auto_commute_coc_poverty = ((select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_previous_1) - (select top 1 ben_tt_auto_commute_coc_poverty from #comparison_years_previous_2) + (select top 1 ben_tt_auto_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_transit_commute_coc_poverty = ((select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_previous_1) - (select top 1 ben_tt_transit_commute_coc_poverty from #comparison_years_previous_2) + (select top 1 ben_tt_transit_commute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_at_noncommute_coc_poverty = ((select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_previous_1) - (select top 1 ben_tt_at_noncommute_coc_poverty from #comparison_years_previous_2) + (select top 1 ben_tt_at_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_auto_noncommute_coc_poverty = ((select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_previous_1) - (select top 1 ben_tt_auto_noncommute_coc_poverty from #comparison_years_previous_2) + (select top 1 ben_tt_auto_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				ben_tt_transit_noncommute_coc_poverty = ((select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_previous_1) - (select top 1 ben_tt_transit_noncommute_coc_poverty from #comparison_years_previous_2) + (select top 1 ben_tt_transit_noncommute_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),

				persons = ((select top 1 persons from #comparison_years_previous_1) - (select top 1 persons from #comparison_years_previous_2) + (select top 1 persons from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				persons_coc = ((select top 1 persons_coc from #comparison_years_previous_1) - (select top 1 persons_coc from #comparison_years_previous_2) + (select top 1 persons_coc from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				persons_coc_race = ((select top 1 persons_coc_race from #comparison_years_previous_1) - (select top 1 persons_coc_race from #comparison_years_previous_2) + (select top 1 persons_coc_race from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				persons_coc_age = ((select top 1 persons_coc_age from #comparison_years_previous_1) - (select top 1 persons_coc_age from #comparison_years_previous_2) + (select top 1 persons_coc_age from multiyear_results where analysis_id = @analysis_id and period = mr.period -1)),
				persons_coc_poverty = ((select top 1 persons_coc_poverty from #comparison_years_previous_1) - (select top 1 persons_coc_poverty from #comparison_years_previous_2) + (select top 1 persons_coc_poverty from multiyear_results where analysis_id = @analysis_id and period = mr.period -1))

			from multiyear_results mr
			where mr.analysis_id = @analysis_id
				and mr.comparison_year = @current_year;

			set @current_year += 1;
		end;
	commit tran

	begin tran
 
              update multiyear_results
              set
                     ben_tt_at_commute=ben_tt_at_commute*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_auto_commute=ben_tt_auto_commute*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_transit_commute=ben_tt_transit_commute*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                    
                     ben_tt_at_noncommute=ben_tt_at_noncommute*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_auto_noncommute=ben_tt_auto_noncommute*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_transit_noncommute=ben_tt_transit_noncommute*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                    
                     ben_tt_at_commute_coc=ben_tt_at_commute_coc*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_auto_commute_coc=ben_tt_auto_commute_coc*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_transit_commute_coc=ben_tt_transit_commute_coc*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                    
                     ben_tt_at_noncommute_coc=ben_tt_at_noncommute_coc*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_auto_noncommute_coc=ben_tt_auto_noncommute_coc*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_transit_noncommute_coc=ben_tt_transit_noncommute_coc*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                    
                     ben_tt_comm=ben_tt_comm*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_truck=ben_tt_truck*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_at_commute_coc_race=ben_tt_at_commute_coc_race*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_at_commute_coc_age=ben_tt_at_commute_coc_age*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_at_commute_coc_poverty=ben_tt_at_commute_coc_poverty*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_auto_commute_coc_race=ben_tt_auto_commute_coc_race*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_auto_commute_coc_age=ben_tt_auto_commute_coc_age*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_auto_commute_coc_poverty=ben_tt_auto_commute_coc_poverty*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_transit_commute_coc_race=ben_tt_transit_commute_coc_race*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_transit_commute_coc_age=ben_tt_transit_commute_coc_age*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_transit_commute_coc_poverty=ben_tt_transit_commute_coc_poverty*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                    
                     ben_tt_at_noncommute_coc_race=ben_tt_at_noncommute_coc_race*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_at_noncommute_coc_age=ben_tt_at_noncommute_coc_age*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_at_noncommute_coc_poverty=ben_tt_at_noncommute_coc_poverty*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_auto_noncommute_coc_race=ben_tt_auto_noncommute_coc_race*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_auto_noncommute_coc_age=ben_tt_auto_noncommute_coc_age*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_auto_noncommute_coc_poverty=ben_tt_auto_noncommute_coc_poverty*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_transit_noncommute_coc_race=ben_tt_transit_noncommute_coc_race*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_transit_noncommute_coc_age=ben_tt_transit_noncommute_coc_age*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start),
                     ben_tt_transit_noncommute_coc_poverty=ben_tt_transit_noncommute_coc_poverty*power(annual_vot_growth, multiyear_results.comparison_year - analysis.year_start)
                    
              from multiyear_results join analysis on multiyear_results.analysis_id = analysis.id
              where analysis_id = @analysis_id;       
 
       commit tran


		-- compute the subtotal columns

	begin tran
		update multiyear_results
		set subtotal_ben_emissions = isnull(ben_co,0) + isnull(ben_co2,0) + isnull(ben_nox,0) + isnull(ben_pm10,0) + isnull(ben_pm25,0) + isnull(ben_rogs,0) + isnull(ben_so2,0),
			subtotal_ben_safety = isnull(ben_crashcost_fat,0) + isnull(ben_crashcost_inj,0) + isnull(ben_crashcost_pdo,0),
			subtotal_ben_reliability = isnull(ben_relcost_auto,0) + isnull(ben_relcost_truck_hvy,0) + isnull(ben_relcost_truck_lht,0) + isnull(ben_relcost_truck_med,0),
			subtotal_ben_tt_commute = isnull(ben_tt_at_commute,0) + isnull(ben_tt_auto_commute,0) + isnull(ben_tt_transit_commute,0),
			subtotal_ben_tt_noncommute = isnull(ben_tt_at_noncommute,0) + isnull(ben_tt_auto_noncommute,0) + isnull(ben_tt_transit_noncommute,0),
			subtotal_ben_tt_commute_coc = isnull(ben_tt_at_commute_coc,0) + isnull(ben_tt_auto_commute_coc,0) + isnull(ben_tt_transit_commute_coc,0),
			subtotal_ben_tt_noncommute_coc = isnull(ben_tt_at_noncommute_coc,0) + isnull(ben_tt_auto_noncommute_coc,0) + isnull(ben_tt_transit_noncommute_coc,0),
			subtotal_ben_tt_commute_coc_race = isnull(ben_tt_at_commute_coc_race,0) + isnull(ben_tt_auto_commute_coc_race,0) + isnull(ben_tt_transit_commute_coc_race,0),
			subtotal_ben_tt_noncommute_coc_race = isnull(ben_tt_at_noncommute_coc_race,0) + isnull(ben_tt_auto_noncommute_coc_race,0) + isnull(ben_tt_transit_noncommute_coc_race,0),
			subtotal_ben_tt_commute_coc_age = isnull(ben_tt_at_commute_coc_age,0) + isnull(ben_tt_auto_commute_coc_age,0) + isnull(ben_tt_transit_commute_coc_age,0),
			subtotal_ben_tt_noncommute_coc_age = isnull(ben_tt_at_noncommute_coc_age,0) + isnull(ben_tt_auto_noncommute_coc_age,0) + isnull(ben_tt_transit_noncommute_coc_age,0),
			subtotal_ben_tt_commute_coc_poverty = isnull(ben_tt_at_commute_coc_poverty,0) + isnull(ben_tt_auto_commute_coc_poverty,0) + isnull(ben_tt_transit_commute_coc_poverty,0),
			subtotal_ben_tt_noncommute_coc_poverty = isnull(ben_tt_at_noncommute_coc_poverty,0) + isnull(ben_tt_auto_noncommute_coc_poverty,0) + isnull(ben_tt_transit_noncommute_coc_poverty,0),
			subtotal_ben_freight = isnull(ben_tt_comm,0) + isnull(ben_tt_truck,0),
			subtotal_ben_voc = isnull(ben_voc_auto,0) + isnull(ben_voc_truck_lht,0) + isnull(ben_voc_truck_med,0) + isnull(ben_voc_truck_hvy,0)
		from multiyear_results
		where analysis_id = @analysis_id;

		-- compute yearly analysis columns

		update multiyear_results
		set benefit_total_undiscounted = isnull(subtotal_ben_emissions,0) + isnull(ben_autos_owned,0) + isnull(subtotal_ben_safety,0) + isnull(ben_persons_phys_active,0) + isnull(subtotal_ben_reliability,0) + isnull(subtotal_ben_tt_commute,0) + isnull(subtotal_ben_tt_noncommute,0) + isnull(subtotal_ben_freight,0) + isnull(subtotal_ben_voc,0),
			cost_total_undiscounted = isnull(cost_capital,0) + isnull(cost_om,0) + isnull(cost_finance,0),
			toll_rev_base_discounted = isnull(toll_rev_base,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			toll_rev_build_discounted = isnull(toll_rev_build,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			fare_rev_base_discounted = isnull(fare_rev_base,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			fare_rev_build_discounted = isnull(fare_rev_build,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			
			-- totals_feature
			base_tt_person_discounted = isnull(base_tt_person,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			build_tt_person_discounted = isnull(build_tt_person,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			base_tt_truck_comm_discounted = isnull(base_tt_truck_comm,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			build_tt_truck_comm_discounted = isnull(build_tt_truck_comm,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			base_rel_cost_discounted = isnull(base_rel_cost,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			build_rel_cost_discounted = isnull(build_rel_cost,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end)

		from multiyear_results
		where analysis_id = @analysis_id;

		update multiyear_results
		set 
			benefit_emissions_discounted = isnull(subtotal_ben_emissions,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_autos_owned_discounted = isnull(ben_autos_owned,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_autos_owned_discounted_coc = isnull(ben_autos_owned_coc,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_safety_discounted = isnull(subtotal_ben_safety,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_phys_active_discounted = isnull(ben_persons_phys_active,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_phys_active_discounted_coc = isnull(ben_persons_phys_active_coc,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_reliability_discounted = isnull(subtotal_ben_reliability,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_commute_discounted = isnull(subtotal_ben_tt_commute,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_commute_discounted_coc = isnull(subtotal_ben_tt_commute_coc,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_noncommute_discounted = isnull(subtotal_ben_tt_noncommute,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_noncommute_discounted_coc = isnull(subtotal_ben_tt_noncommute_coc,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_freight_discounted = isnull(subtotal_ben_freight,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_voc_discounted = isnull(subtotal_ben_voc,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_total_discounted = isnull(benefit_total_undiscounted,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			cost_capital_discounted = isnull(cost_capital,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			cost_om_discounted = isnull(cost_om,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			cost_finance_discounted = isnull(cost_finance,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			cost_total_discounted = isnull(cost_total_undiscounted,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			net_annual_undiscounted = isnull(benefit_total_undiscounted,0) - isnull(cost_total_undiscounted,0),
			-- coc detail
			benefit_autos_owned_discounted_coc_race = isnull(ben_autos_owned_coc_race,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_phys_active_discounted_coc_race = isnull(ben_persons_phys_active_coc_race,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_commute_discounted_coc_race = isnull(subtotal_ben_tt_commute_coc_race,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_noncommute_discounted_coc_race = isnull(subtotal_ben_tt_noncommute_coc_race,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),

			benefit_autos_owned_discounted_coc_age = isnull(ben_autos_owned_coc_age,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_phys_active_discounted_coc_age = isnull(ben_persons_phys_active_coc_age,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_commute_discounted_coc_age = isnull(subtotal_ben_tt_commute_coc_age,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_noncommute_discounted_coc_age = isnull(subtotal_ben_tt_noncommute_coc_age,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),

			benefit_autos_owned_discounted_coc_poverty = isnull(ben_autos_owned_coc_poverty,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_phys_active_discounted_coc_poverty = isnull(ben_persons_phys_active_coc_poverty,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_commute_discounted_coc_poverty = isnull(subtotal_ben_tt_commute_coc_poverty,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end),
			benefit_tt_noncommute_discounted_coc_poverty = isnull(subtotal_ben_tt_noncommute_coc_poverty,0)/(case when power(1+@rate_discount, period) = 0 then 1 else power(1+@rate_discount, period) end)

		from multiyear_results
		where analysis_id = @analysis_id;

		update multiyear_results
		set net_annual_discounted = isnull(benefit_total_discounted,0) - isnull(cost_total_discounted,0)
		from multiyear_results
		where analysis_id = @analysis_id;
	commit tran
	
	-- calculate irr

	declare @fx float,
		@fx_der float,
		@irr_current float,
		@irr_previous float,
		@irr float,
		@irr_estimation float = 0.00001,
		@guess1 float = 0.01,
		@guess2 float = 0.02,
		@npv1 float,
		@npv2 float,
		@iteration int = 0;

	--start guessing

	set @npv1 = (
		select sum(net_annual_undiscounted*power(1+@guess1,-1*period))
			from multiyear_results
			where analysis_id = @analysis_id
	)
	set @npv2 = (
		select sum(net_annual_undiscounted*power(1+@guess2,-1*period))
			from multiyear_results
			where analysis_id = @analysis_id
	)

	while ((@npv1 > 0 and @npv2 > 0) or (@npv1 < 0 and @npv2 < 0)) and @guess1 <= 1
	begin
		set @guess1 += 0.01;
		set @guess2 += 0.01;

		set @npv1 = (
			select sum(net_annual_undiscounted*power(1+@guess1,-1*period))
				from multiyear_results
				where analysis_id = @analysis_id
		)
		set @npv2 = (
			select sum(net_annual_undiscounted*power(1+@guess2,-1*period))
				from multiyear_results
				where analysis_id = @analysis_id
		)
	end

	--start the newton formula
	
	if @guess1 < 1.0 --if the guess was not even valid don't process
	begin
		set @irr_previous = @guess1;

		set @fx = (
			select sum(net_annual_undiscounted*power(1+@irr_previous,-1*period))
			from multiyear_results
			where analysis_id = @analysis_id
		)
		set @fx_der = (
			select sum((net_annual_undiscounted *(-1*period)) * (power(1+@irr_previous,(-1*period)-1)))
			from multiyear_results
			where analysis_id = @analysis_id
		)

		set @irr_current = @irr_previous - case when (@fx/@fx_der) = 0 then 0.00001 else (@fx/@fx_der) end;
		set @irr = @irr_current;

		while (@irr_current - @irr_previous) > @irr_estimation and @fx_der <> 0
			begin
				set @irr_previous = @irr_current

				set @fx = (
					select sum(net_annual_undiscounted*power(1+@irr_previous,-1*period))
					from multiyear_results
					where analysis_id = @analysis_id
				)
				set @fx_der = (
					select sum((net_annual_undiscounted *(-1*period)) * power(1+@irr_previous,(-1*period)-1))
					from multiyear_results
					where analysis_id = @analysis_id
				)

				set @irr_current = @irr_previous - case when (@fx/@fx_der) = 0 then 0.00001 else (@fx/@fx_der) end;
				set @irr = @irr_current;

			end
	end
	else
	begin
		set @irr = -999999999;
	end

	-- compute npv, irr, bc ration, ....

	select analysis_id, 
		sum(benefit_total_discounted) as benefit_npv,
		sum(cost_total_discounted)as cost_npv,
		@irr as irr,
		sum(net_annual_discounted) as net_npv,
		sum(toll_rev_base_discounted) as toll_revenue_base_npv,
		sum(toll_rev_build_discounted) as toll_revenue_build_npv,
		sum(fare_rev_base_discounted) as fare_revenue_base_npv,
		sum(fare_rev_build_discounted) as fare_revenue_build_npv
	into #multiyear_final_results
	from multiyear_results
	where analysis_id = @analysis_id
	group by analysis_id;

	begin tran
		update multiyear_final_results
		set benefit_npv = mr.benefit_npv,
			cost_npv = mr.cost_npv,
			irr = @irr,
			net_npv = mr.net_npv,
			toll_revenue_base_npv = mr.toll_revenue_base_npv,
			toll_revenue_build_npv = mr.toll_revenue_build_npv,
			fare_revenue_base_npv = mr.fare_revenue_base_npv,
			fare_revenue_build_npv = mr.fare_revenue_build_npv
		from multiyear_final_results mfr
		join #multiyear_final_results as mr
		on mfr.analysis_id = mr.analysis_id
		where mr.analysis_id = @analysis_id
		if @@ROWCOUNT = 0
			insert into multiyear_final_results (
				analysis_id,
				benefit_npv,
				cost_npv,
				irr,
				net_npv,
				toll_revenue_base_npv,
				toll_revenue_build_npv,
				fare_revenue_base_npv,
				fare_revenue_build_npv	
			)
			select 
				@analysis_id,
				benefit_npv,
				cost_npv,
				irr,
				net_npv,
				toll_revenue_base_npv,
				toll_revenue_build_npv,
				fare_revenue_base_npv,
				fare_revenue_build_npv	
			from #multiyear_final_results
			where analysis_id = @analysis_id;

		update multiyear_final_results
		set bc_ratio = (case when cost_npv = 0 then -999999999 else benefit_npv/cost_npv end)
		where analysis_id = @analysis_id;
	commit tran




GO
/****** Object:  StoredProcedure [dbo].[run_person_trip_processor]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_person_trip_processor] @scenario_id_base INT = 257,
	@scenario_id_build INT = 227,
	@analysis_id INT = 45,
	@scenario_year INT = 2013
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;

DECLARE @overall_start_date DATETIME = GETDATE();

PRINT 'Started run_person_trip_processor: ' + CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

DECLARE @vot_commute FLOAT,
	@vot_noncommute FLOAT,
	@ovt_weight FLOAT,
	@coc_hinc_thresh INT,
	@coc_age_thresh INT,
	@coc_race_thresh INT,
	@coc_poverty_thresh FLOAT,
	@coc_hisp_thresh INT;

SELECT @vot_commute = ap.vot_commute,
	@vot_noncommute = ap.vot_noncommute,
	@ovt_weight = ap.ovt_weight,
	@coc_hinc_thresh = ap.coc_hinc_thresh,
	@coc_age_thresh = ap.coc_age_thresh,
	@coc_race_thresh = ap.coc_race_thresh,
	@coc_poverty_thresh = ap.coc_poverty_thresh,
	@coc_hisp_thresh = ap.coc_hisp_thresh
FROM analysis_parameters ap
WHERE ap.analysis_id = @analysis_id
	AND ap.comparison_year = @scenario_year

EXEC run_person_trip_summary @scenario_id_base,
	@scenario_id_build,
	@analysis_id,
	@scenario_year,
	@vot_commute,
	@vot_noncommute,
	@ovt_weight,
	@coc_hinc_thresh,
	@coc_age_thresh,
	@coc_race_thresh,
	@coc_poverty_thresh,
	@coc_hisp_thresh

PRINT 'Finished run_person_trip_processor ' + CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date
			), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

GO
/****** Object:  StoredProcedure [dbo].[run_person_trip_summary]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_person_trip_summary] @scenario_id_base_in_param INT,
	@scenario_id_build_in_param INT,
	@analysis_id INT,
	@scenario_year INT,
	@vot_commute FLOAT,
	@vot_noncommute FLOAT,
	@ovt_weight FLOAT,
	@coc_hinc_thresh INT,
	@coc_age_thresh INT,
	@coc_race_thresh INT,
	@coc_poverty_thresh FLOAT,
	@coc_hisp_thresh INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

DECLARE @n INT;

PRINT 'copying scenario_id_variables';

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

DECLARE @scenario_id_base INT = @scenario_id_base_in_param;
DECLARE @scenario_id_build INT = @scenario_id_build_in_param;
DECLARE @overall_start_date DATETIME = GETDATE(),
	@timer DATETIME = GETDATE();

PRINT 'Started run_person_trip_summary with  @scenario_id_base=' + CAST(@scenario_id_base AS VARCHAR) + ', @scenario_id_build=' + CAST(
		@scenario_id_build AS VARCHAR) + ', @analysis_id=' + CAST(@analysis_id AS VARCHAR) + ', @scenario_year=' + CAST(@scenario_year AS VARCHAR) + ' ' + 
	CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

DECLARE @auto INT = 1
DECLARE @transit INT = 1
DECLARE @at INT = 1

SELECT a.mode_id,
	e.model_type_id,
	a.orig_geography_zone_id,
	a.dest_geography_zone_id,
	--a.tour_id,
	a.party_size,
	a.board_transit_tap_id,
	a.alight_transit_tap_id,
	p.lu_hh_id,
	b.lu_person_id,
	--case when e.purpose_id = 0 then 0 else 1 end as tour_purpose,
	CASE 
		WHEN purpose.purpose_number = 0
			THEN 0
		ELSE 1
		END AS tour_purpose,
	--f.tod_id,
	f.res1_time_period_id,
	a.inbound,
	e.purpose_id,
	a.time_period_id
INTO #trips_base
FROM bca_abm.trip_ij AS a
INNER JOIN bca_abm.tour_ij_person AS b
	ON a.tour_ij_id = b.tour_ij_id
INNER JOIN bca_abm.person AS p
	ON b.lu_person_id = p.lu_person_id
-- join to tour EXPANDS the base recordset to ONE rec per party_size of TRIP_MICRO_SIMUL
INNER JOIN bca_abm.tour_ij AS e
	ON a.tour_ij_id = e.tour_ij_id
INNER JOIN bca_abm.time_period_xref AS f
	ON a.time_period_id = f.res2_time_period_id
INNER JOIN bca_abm.purpose AS purpose
	ON e.purpose_id = purpose.purpose_id
		AND e.model_type_id = purpose.model_type_id
WHERE a.scenario_id = @scenario_id_base
	AND b.scenario_id = @scenario_id_base
	AND p.scenario_id = @scenario_id_base
	AND e.scenario_id = @scenario_id_base
	AND e.model_type_id IN (0, 1, 3, 5);

PRINT 'finished  SELECT * INTO #trips_base. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
	'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

SELECT t.*,
	CASE 
		WHEN t.mode_id <= 8
			THEN 1 -- auto
		WHEN t.mode_id IN (9, 10)
			THEN 3 -- walk, bike
		WHEN (
				t.mode_id > 10
				AND t.mode_id <= 26
				)
			THEN 2 -- transit
		WHEN t.mode_id = 27
			THEN 1 -- taxi
		ELSE - 1
		END AS mode_bca,
	(
		CASE 
			WHEN hh.poverty < @coc_poverty_thresh
				THEN 1
			ELSE 0
			END
		) AS coc_poverty,
	(
		CASE 
			WHEN p.age >= @coc_age_thresh
				THEN 1
			ELSE 0
			END
		) AS coc_age,
	(
		CASE 
			WHEN (p.hisp_id > @coc_hisp_thresh)
				OR (p.race_id > @coc_race_thresh)
				THEN 1
			ELSE 0
			END
		) AS coc_race,
	(
		CASE 
			WHEN (p.hisp_id > @coc_hisp_thresh)
				OR (p.race_id > @coc_race_thresh)
				OR (p.age >= @coc_age_thresh)
				OR (hh.poverty < @coc_poverty_thresh)
				THEN 1
			ELSE 0
			END
		) AS coc
INTO #trips_demog_base
FROM #trips_base t
INNER JOIN bca_abm.hh AS hh
	ON t.lu_hh_id = hh.lu_hh_id
INNER JOIN bca_abm.person AS p
	ON t.lu_hh_id = p.lu_hh_id
		AND t.lu_person_id = p.lu_person_id
WHERE hh.scenario_id = @scenario_id_base
	AND p.scenario_id = @scenario_id_base;

PRINT 'finished  SELECT * INTO #trips_demog_base. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
	'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

SELECT t.*,
	o.taz_geography_zone_id AS orig_taz,
	d.taz_geography_zone_id AS dest_taz
INTO #base
FROM #trips_demog_base t
LEFT JOIN bca_abm.mgra13_xref_taz13 AS o
	ON t.orig_geography_zone_id = o.mgra_geography_zone_id
LEFT JOIN bca_abm.mgra13_xref_taz13 AS d
	ON t.dest_geography_zone_id = d.mgra_geography_zone_id;

PRINT 'finished  SELECT * INTO #base from #trips_demog_base. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) 
	+ '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

SELECT @n = count(*)
FROM #base;

PRINT '#base count(*) ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
	'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

SELECT a.mode_id,
	e.model_type_id,
	a.orig_geography_zone_id,
	a.dest_geography_zone_id,
	--a.tour_id,
	a.party_size,
	a.board_transit_tap_id,
	a.alight_transit_tap_id,
	p.lu_hh_id,
	b.lu_person_id,
	--case when e.purpose_id = 0 then 0 else 1 end as tour_purpose,
	CASE 
		WHEN purpose.purpose_number = 0
			THEN 0
		ELSE 1
		END AS tour_purpose,
	--f.tod_id,
	f.res1_time_period_id,
	a.inbound,
	e.purpose_id,
	a.time_period_id
INTO #trips_build
FROM bca_abm.trip_ij AS a
INNER JOIN bca_abm.tour_ij_person AS b
	ON a.tour_ij_id = b.tour_ij_id
INNER JOIN bca_abm.person AS p
	ON b.lu_person_id = p.lu_person_id
-- join to tour EXPANDS the base recordset to ONE rec per party_size of TRIP_MICRO_SIMUL
INNER JOIN bca_abm.tour_ij AS e
	ON a.tour_ij_id = e.tour_ij_id
INNER JOIN bca_abm.time_period_xref AS f
	ON a.time_period_id = f.res2_time_period_id
INNER JOIN bca_abm.purpose AS purpose
	ON e.purpose_id = purpose.purpose_id
		AND e.model_type_id = purpose.model_type_id
WHERE a.scenario_id = @scenario_id_build
	AND b.scenario_id = @scenario_id_build
	AND p.scenario_id = @scenario_id_build
	AND e.scenario_id = @scenario_id_build
	AND e.model_type_id IN (0, 1, 3, 5);

PRINT 'finished  SELECT * INTO #trips_build. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
	'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

SELECT t.*,
	CASE 
		WHEN t.mode_id <= 8
			THEN 1 -- auto
		WHEN t.mode_id IN (9, 10)
			THEN 3 -- walk, bike
		WHEN (
				t.mode_id > 10
				AND t.mode_id <= 26
				)
			THEN 2 -- transit
		WHEN t.mode_id = 27
			THEN 1 -- taxi
		ELSE - 1
		END AS mode_bca,
	(
		CASE 
			WHEN hh.poverty < @coc_poverty_thresh
				THEN 1
			ELSE 0
			END
		) AS coc_poverty,
	(
		CASE 
			WHEN p.age >= @coc_age_thresh
				THEN 1
			ELSE 0
			END
		) AS coc_age,
	(
		CASE 
			WHEN (p.hisp_id > @coc_hisp_thresh)
				OR (p.race_id > @coc_race_thresh)
				THEN 1
			ELSE 0
			END
		) AS coc_race,
	(
		CASE 
			WHEN (p.hisp_id > @coc_hisp_thresh)
				OR (p.race_id > @coc_race_thresh)
				OR (p.age >= @coc_age_thresh)
				OR (hh.poverty < @coc_poverty_thresh)
				THEN 1
			ELSE 0
			END
		) AS coc
INTO #trips_demog_build
FROM #trips_build t
INNER JOIN bca_abm.hh AS hh
	ON t.lu_hh_id = hh.lu_hh_id
INNER JOIN bca_abm.person AS p
	ON t.lu_hh_id = p.lu_hh_id
		AND t.lu_person_id = p.lu_person_id
WHERE hh.scenario_id = @scenario_id_base
	AND p.scenario_id = @scenario_id_base;

PRINT 'finished  SELECT * INTO #trips_demog_build. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
	'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

SELECT t.*,
	o.taz_geography_zone_id AS orig_taz,
	d.taz_geography_zone_id AS dest_taz
INTO #build
FROM #trips_demog_build t
LEFT JOIN bca_abm.mgra13_xref_taz13 AS o
	ON t.orig_geography_zone_id = o.mgra_geography_zone_id
LEFT JOIN bca_abm.mgra13_xref_taz13 AS d
	ON t.dest_geography_zone_id = d.mgra_geography_zone_id;

PRINT 'finished  SELECT * INTO #build from #trips_demog_build. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 
		114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

SELECT @n = count(*)
FROM #build;

PRINT '#build count(*) ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
	'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

-- #############################################################################################################
-- auto
-- #############################################################################################################
IF @auto = 1
BEGIN
	SELECT 1 AS base,
		0 AS build,
		mode_id,
		orig_taz,
		dest_taz,
		time_period_id,
		res1_time_period_id,
		party_size,
		coc_poverty,
		coc_age,
		coc_race,
		coc,
		tour_purpose
	INTO #auto
	FROM #base base
	WHERE mode_bca = 1
	
	UNION ALL
	
	SELECT 0 AS base,
		1 AS build,
		mode_id,
		orig_taz,
		dest_taz,
		time_period_id,
		res1_time_period_id,
		party_size,
		coc_poverty,
		coc_age,
		coc_race,
		coc,
		tour_purpose
	FROM #build build
	WHERE mode_bca = 1;

	PRINT 'finished  SELECT * INTO #auto. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = sum(base)
	FROM #auto;

	PRINT '#auto base ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = sum(build)
	FROM #auto;

	PRINT '#auto build ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #auto;

	PRINT '#auto count(*) ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT auto.*,
		--v5.1: made all comparisons explicit
		CASE 
			WHEN auto.mode_id = 1
				THEN -- Auto SOV (Non-Toll)
					base_tazskim.time_drive_alone_free
			WHEN auto.mode_id = 2
				THEN -- Auto SOV (Toll)
					base_tazskim.time_drive_alone_toll
			WHEN auto.mode_id IN (3, 4)
				THEN -- Auto 2 Person (Non-Toll, Non-HOV or HOV)
					base_tazskim.time_hov2_free
			WHEN auto.mode_id = 5
				THEN -- Auto 2 Person (Toll, HOV)
					base_tazskim.time_hov2_toll
			WHEN auto.mode_id IN (6, 7)
				THEN -- Auto 3+ Person (Non-Toll, Non-HOV or HOV)
					base_tazskim.time_hov3_free
			WHEN auto.mode_id = 8
				THEN -- Auto 3+ Person (Toll, HOV)
					base_tazskim.time_hov3_toll
			ELSE - 1
			END AS tt_base,
		--v5.1: made all comparisons explicit
		CASE 
			WHEN auto.mode_id = 1
				THEN 0
			WHEN auto.mode_id = 2
				THEN base_tazskim.cost_drive_alone_toll
			WHEN auto.mode_id IN (3, 4)
				THEN 0
			WHEN auto.mode_id = 5
				THEN base_tazskim.cost_hov2_toll
			WHEN auto.mode_id IN (6, 7)
				THEN 0
			WHEN auto.mode_id = 8
				THEN base_tazskim.cost_hov3_toll
			ELSE - 1
			END AS toll_base,
		--v5.1: made all comparisons explicit
		CASE 
			WHEN auto.mode_id = 1
				THEN build_tazskim.time_drive_alone_free
			WHEN auto.mode_id = 2
				THEN build_tazskim.time_drive_alone_toll
			WHEN auto.mode_id IN (3, 4)
				THEN build_tazskim.time_hov2_free
			WHEN auto.mode_id = 5
				THEN build_tazskim.time_hov2_toll
			WHEN auto.mode_id IN (6, 7)
				THEN build_tazskim.time_hov3_free
			WHEN auto.mode_id = 8
				THEN build_tazskim.time_hov3_toll
			ELSE - 1
			END AS tt_build,
		--v5.1: made all comparisons explicit
		CASE 
			WHEN auto.mode_id = 1
				THEN 0
			WHEN auto.mode_id = 2
				THEN build_tazskim.cost_drive_alone_toll
			WHEN auto.mode_id IN (3, 4)
				THEN 0
			WHEN auto.mode_id = 5
				THEN build_tazskim.cost_hov2_toll
			WHEN auto.mode_id IN (6, 7)
				THEN 0
			WHEN auto.mode_id = 8
				THEN build_tazskim.cost_hov3_toll
			ELSE - 1
			END AS toll_build,
		build_tazskim.cost_drive_alone_toll AS cost_drive_alone_toll,
		build_tazskim.cost_hov2_toll AS cost_hov2_toll,
		build_tazskim.cost_hov3_toll AS cost_hov3_toll
	INTO #auto_taz
	FROM #auto AS auto
	LEFT JOIN bca_abm.hwy_skims AS base_tazskim
		ON auto.orig_taz = base_tazskim.orig_geography_zone_id
			AND auto.dest_taz = base_tazskim.dest_geography_zone_id
			AND auto.res1_time_period_id = base_tazskim.time_period_id
	LEFT JOIN bca_abm.hwy_skims AS build_tazskim
		ON auto.orig_taz = build_tazskim.orig_geography_zone_id
			AND auto.dest_taz = build_tazskim.dest_geography_zone_id
			AND auto.res1_time_period_id = build_tazskim.time_period_id
	WHERE build_tazskim.scenario_id = @scenario_id_build -- BUG this makes it an inner join so why not say so?
		AND base_tazskim.scenario_id = @scenario_id_base -- BUG this makes it an inner join so why not say so?

	-- select distinct mode_id from #auto_taz;
	-- 
	-- select top 100 * from #auto_taz where mode_id in (2,5,8);
	SELECT @n = count(*)
	FROM #auto_taz;

	PRINT '#auto_taz ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT *,
		(
			CASE 
				WHEN tour_purpose = 0
					THEN @vot_commute
				ELSE @vot_noncommute
				END
			) AS vot,
		tt_base / 60.0 AS base_impedence_tt,
		tt_build / 60.0 AS build_impedence_tt
	INTO #auto_benefits_pre
	FROM #auto_taz AS auto_taz;

	PRINT 'finished  SELECT * INTO #auto_benefits_pre. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT *,
		vot * base_impedence_tt * base AS base_monetized_tt,
		-- monetized tt for base scenario trips at base scenario impedence (0 for new trips)
		vot * build_impedence_tt * build AS build_monetized_tt,
		-- monetized tt for build scenario trips at build scenario impedence (0 for dropped trips)
		vot * 0.5 * base_impedence_tt AS base_benefit_tt,
		vot * 0.5 * build_impedence_tt AS build_benefit_tt,
		vot * 0.5 * (base_impedence_tt - build_impedence_tt) AS benefit_tt
	INTO #auto_benefits
	FROM #auto_benefits_pre auto_benefits_pre;

	SELECT @n = count(*)
	FROM #auto_benefits;

	PRINT '#auto_benefits ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT 1 AS mode_bca,
		tour_purpose,
		coc,
		coc_poverty,
		coc_age,
		coc_race,
		sum(base) AS trips_base,
		sum(build) AS trips_build,
		-- since base recordset is now flattened, tolls need to be divided by party_size
		sum(CASE 
				WHEN base * party_size > 0
					THEN (toll_base / party_size)
				ELSE 0
				END) AS toll_base,
		sum(CASE 
				WHEN build * party_size > 0
					THEN (toll_build / party_size)
				ELSE 0
				END) AS toll_build,
		sum(0) AS fare_base,
		sum(0) AS fare_build,
		sum(base_monetized_tt) AS base_monetized_tt,
		sum(build_monetized_tt) AS build_monetized_tt,
		sum(base_benefit_tt) AS base_benefit_tt,
		sum(build_benefit_tt) AS build_benefit_tt,
		sum(benefit_tt) AS benefit_tt
	INTO #auto_benefits_summary
	FROM #auto_benefits auto_benefits
	GROUP BY tour_purpose,
		coc,
		coc_poverty,
		coc_age,
		coc_race;

	--select * from #auto_benefits_summary;
	--return;
	SELECT @n = count(*)
	FROM #auto_benefits_summary;

	PRINT '#auto_benefits_summary ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();
END

-- #############################################################################################################
-- transit
-- #############################################################################################################
IF @transit = 1
BEGIN
	SELECT *
	INTO #transit_base
	FROM #base
	WHERE mode_bca = 2;

	SELECT @n = count(*)
	FROM #transit_base;

	PRINT '#transit_base ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT *
	INTO #transit_build
	FROM #build
	WHERE mode_bca = 2;

	SELECT @n = count(*)
	FROM #transit_build;

	PRINT '#transit_build ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT *,
		-- flag any rows in transit_base that have multiple matches in transit_build so don't create duplicate rows in outer join below
		CASE 
			WHEN (
					SELECT count(*)
					FROM #transit_build AS xbuild
					WHERE xbase.mode_id = xbuild.mode_id
						AND xbase.model_type_id = xbuild.model_type_id
						AND xbase.tour_purpose = xbuild.tour_purpose
						AND xbase.dest_geography_zone_id = xbuild.dest_geography_zone_id
						AND xbase.orig_geography_zone_id = xbuild.orig_geography_zone_id
						AND xbase.lu_person_id = xbuild.lu_person_id
						AND xbase.lu_hh_id = xbuild.lu_hh_id
						AND xbase.purpose_id = xbuild.purpose_id
						AND xbase.time_period_id = xbuild.time_period_id
						AND xbase.inbound = xbuild.inbound
					) > 1
				THEN 1
			ELSE 0
			END AS dupes
	INTO #base_with_dupes
	FROM #transit_base AS xbase;

	PRINT 'finished  SELECT * INTO #base_with_dupes. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT *,
		-- flag any rows in transit_build that have multiple matches in transit_base so don't create duplicate rows in outer join below
		CASE 
			WHEN (
					SELECT count(*)
					FROM #transit_base AS xbase
					WHERE xbase.mode_id = xbuild.mode_id
						AND xbase.model_type_id = xbuild.model_type_id
						AND xbase.tour_purpose = xbuild.tour_purpose
						AND xbase.dest_geography_zone_id = xbuild.dest_geography_zone_id
						AND xbase.orig_geography_zone_id = xbuild.orig_geography_zone_id
						AND xbase.lu_person_id = xbuild.lu_person_id
						AND xbase.lu_hh_id = xbuild.lu_hh_id
						AND xbase.purpose_id = xbuild.purpose_id
						AND xbase.time_period_id = xbuild.time_period_id
						AND xbase.inbound = xbuild.inbound
					) > 1
				THEN - 1
			ELSE 0
			END AS dupes
	INTO #build_with_dupes
	FROM #transit_build AS xbuild;

	PRINT 'finished  SELECT * INTO #build_with_dupes. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	--############################################## end de-duping code
	SELECT COALESCE(base.party_size, 0) AS party_size_base,
		COALESCE(build.party_size, 0) AS party_size_build,
		CASE 
			WHEN base.mode_id IS NULL
				THEN 0
			ELSE 1
			END AS tripflag_base,
		CASE 
			WHEN build.mode_id IS NULL
				THEN 0
			ELSE 1
			END AS tripflag_build,
		COALESCE(build.coc_poverty, base.coc_poverty) AS coc_poverty,
		COALESCE(build.coc_age, base.coc_age) AS coc_age,
		COALESCE(build.coc_race, base.coc_race) AS coc_race,
		COALESCE(build.coc, base.coc) AS coc,
		COALESCE(base.tour_purpose, build.tour_purpose) AS tour_purpose,
		-- use the build time unless dropped (trips match regardless of tod)
		COALESCE(build.res1_time_period_id, base.res1_time_period_id) AS res1_time_period_id,
		-- this is ok as res1_time_period_id will be the same if joining on time_period_id, otherwise need build_tod_id and base_tod_id here and below
		COALESCE(build.orig_taz, base.orig_taz) AS orig_taz,
		COALESCE(build.dest_taz, base.dest_taz) AS dest_taz,
		--   scenario_id_base,
		--   scenario_id_build,
		COALESCE(base.mode_id, build.mode_id) AS mode_id,
		COALESCE(base.board_transit_tap_id, build.board_transit_tap_id) board_tap_base,
		COALESCE(build.board_transit_tap_id, base.board_transit_tap_id) board_tap_build,
		COALESCE(base.alight_transit_tap_id, build.alight_transit_tap_id) alight_tap_base,
		COALESCE(build.alight_transit_tap_id, base.alight_transit_tap_id) alight_tap_build,
		COALESCE(base.dest_geography_zone_id, build.dest_geography_zone_id) AS dest_geography_zone_id,
		base.dupes AS base_dupes,
		build.dupes AS build_dupes
	INTO #transit
	FROM #base_with_dupes base
	FULL JOIN #build_with_dupes build
		ON base.mode_id = build.mode_id
			AND base.model_type_id = build.model_type_id
			AND base.tour_purpose = build.tour_purpose
			AND base.dest_geography_zone_id = build.dest_geography_zone_id
			AND base.orig_geography_zone_id = build.orig_geography_zone_id
			AND base.lu_person_id = build.lu_person_id
			AND base.lu_hh_id = build.lu_hh_id
			AND base.purpose_id = build.purpose_id
			AND base.time_period_id = build.time_period_id
			-- note, need to keep both base and build res1_time_period_id if we don't join on this
			-- and base.trip_id = build.trip_id
			AND base.inbound = build.inbound
			--and base.mode_id = build.mode_id + 1
			AND base.dupes = build.dupes -- don't join any rows that will match dupes
			;

	PRINT 'finished  SELECT * INTO #transit. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = sum(tripflag_base)
	FROM #transit;

	PRINT '#transit sum(tripflag_base) ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 
			114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = sum(tripflag_build)
	FROM #transit;

	PRINT '#transit sum(tripflag_build) ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date)
			, 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = sum(tripflag_build * tripflag_base)
	FROM #transit;

	PRINT '#transit sum(tripflag_build*tripflag_base) ' + FORMAT(@n, N'N0') + ' elapsed: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date
				), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #transit;

	PRINT '#transit count(*) ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	--################################################################################## TEST
	-- select top 1000 * from #transit
	-- where base_dupes=1 or build_dupes=-1
	-- order by orig_taz, dest_taz;
	--################################################################################## TEST
	--handle auto access transit
	SELECT p.*,
		COALESCE(base_tapskim.fare_premium, 0) AS fare_base,
		COALESCE(build_tapskim.fare_premium, 0) AS fare_build,
		COALESCE(base_tapskim.init_wait_premium + base_tapskim.transfer_time_premium + base_tapskim.walk_time_premium, 0) AS ovt_enroute_base,
		COALESCE(CASE 
				WHEN p.mode_id > 10
					AND p.mode_id < 16
					THEN base_tap.time_boarding_actual
				ELSE 0
				END, 0) AS ovt_access_wk_base,
		-- walk-transit         
		COALESCE(base_tap.time_boarding_actual, 0) AS ovt_egress_wk_base,
		COALESCE(base_tapskim.ivt_premium, 0) AS initial_ivt_base,
		COALESCE(build_tapskim.init_wait_premium + build_tapskim.transfer_time_premium + build_tapskim.walk_time_premium, 0) AS ovt_enroute_build,
		COALESCE(CASE 
				WHEN p.mode_id > 10
					AND p.mode_id < 16
					THEN build_tap.time_boarding_actual
				ELSE 0
				END, 0) AS ovt_access_wk_build,
		COALESCE(build_tap.time_boarding_actual, 0) AS ovt_egress_wk_build,
		COALESCE(build_tapskim.ivt_premium, 0) AS initial_ivt_build,
		-- to track success rate of join
		CASE 
			WHEN base_tapskim.orig_transit_tap_id IS NULL
				THEN 0
			ELSE 1
			END AS base_tapskim_flag,
		CASE 
			WHEN build_tapskim.orig_transit_tap_id IS NULL
				THEN 0
			ELSE 1
			END AS build_tapskim_flag,
		CASE 
			WHEN base_tap.transit_tap_id IS NULL
				THEN 0
			ELSE 1
			END AS base_mgra_flag,
		CASE 
			WHEN build_tap.transit_tap_id IS NULL
				THEN 0
			ELSE 1
			END AS build_mgra_flag
	-- BUG - why do we need mgratotap for alight but not for board?
	-- is that what dead code defining board_taz_dr_base was for?
	INTO #transit_tap
	FROM #transit AS p
	LEFT JOIN bca_abm.transit_tap_skims AS base_tapskim
		ON p.board_tap_base = base_tapskim.orig_transit_tap_id
			AND p.alight_tap_base = base_tapskim.dest_transit_tap_id
			AND p.res1_time_period_id = base_tapskim.time_period_id
			AND @scenario_id_base = base_tapskim.scenario_id
	LEFT JOIN bca_abm.transit_tap_skims AS build_tapskim
		ON p.board_tap_build = build_tapskim.orig_transit_tap_id
			AND p.alight_tap_build = build_tapskim.dest_transit_tap_id
			AND p.res1_time_period_id = build_tapskim.time_period_id
			AND @scenario_id_build = build_tapskim.scenario_id
	LEFT JOIN bca_abm.transit_tap_walk AS base_tap
		ON p.dest_geography_zone_id = base_tap.geography_zone_id
			AND p.alight_tap_base = base_tap.transit_tap_id
			AND @scenario_id_base = base_tap.scenario_id
	LEFT JOIN bca_abm.transit_tap_walk AS build_tap
		ON p.dest_geography_zone_id = build_tap.geography_zone_id
			AND p.alight_tap_build = build_tap.transit_tap_id
			AND @scenario_id_build = build_tap.scenario_id;

	PRINT 'finished  SELECT * INTO #transit_tap. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	PRINT 'about to select from #transit_tap. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	DECLARE @sum_base_tapskim_flag INT,
		@sum_build_tapskim_flag INT,
		@sum_base_mgra_flag INT,
		@sum_build_mgra_flag INT;

	SELECT @n = count(*),
		@sum_base_tapskim_flag = sum(base_tapskim_flag),
		@sum_build_tapskim_flag = sum(build_tapskim_flag),
		@sum_base_mgra_flag = sum(base_mgra_flag),
		@sum_build_mgra_flag = sum(build_mgra_flag)
	FROM #transit_tap;

	PRINT '#transit_tap sum(base_tapskim_flag): ' + FORMAT(@sum_base_tapskim_flag, N'N0')
	PRINT '#transit_tap sum(build_tapskim_flag): ' + FORMAT(@sum_build_tapskim_flag, N'N0')
	PRINT '#transit_tap sum(base_mgra_flag): ' + FORMAT(@sum_base_mgra_flag, N'N0')
	PRINT '#transit_tap sum(build_mgra_flag): ' + FORMAT(@sum_build_mgra_flag, N'N0')
	PRINT '#transit_tap count(*) ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #transit_tap
	WHERE ((base_tapskim_flag = 0))
		AND (mode_id <> 26);

	PRINT '#transit_tap no base tapskim ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date)
			, 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #transit_tap
	WHERE ((build_tapskim_flag = 0))
		AND (mode_id <> 26);

	PRINT '#transit_tap no build tapskim ' + FORMAT(@n, N'N0') + ' elapsed: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114)
		;

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	--################################################################################## TEST
	-- select top 1000 * from #transit_tap 
	-- where (
	--   (base_tapskim_flag = 0) or (build_tapskim_flag = 0)
	--   --or (base_mgra_flag = 0) or (build_mgra_flag = 0);
	--   ) 
	-- and (tripflag_base*tripflag_build=1) 
	-- and (mode_id <> 26);
	--################################################################################## TEST
	SELECT transit_tap.*,
		CASE 
			WHEN transit_tap.mode_id BETWEEN 16
					AND 25
				THEN base_tazskim.time_drive_alone_free
			ELSE 0
			END AS ovt_access_dr_base,
		CASE 
			WHEN transit_tap.mode_id BETWEEN 16
					AND 25
				THEN build_tazskim.time_drive_alone_free
			ELSE 0
			END AS ovt_access_dr_build,
		CASE 
			WHEN (transit_tap.initial_ivt_base = 0)
				AND (
					transit_tap.mode_id BETWEEN 11
						AND 15
					OR transit_tap.mode_id = 26
					)
				THEN CASE 
						WHEN (
								base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), - 0.362)
									)
								) <= 4
							THEN 4
						ELSE base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), - 0.362)
								)
						END
			WHEN (transit_tap.initial_ivt_base = 0)
				AND transit_tap.mode_id BETWEEN 16
					AND 25
				THEN CASE 
						WHEN (
								base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), - 0.358)
									)
								) <= 3
							THEN 3
						ELSE base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), - 0.358)
								)
						END
			ELSE transit_tap.initial_ivt_base
			END AS ivt_base,
		CASE 
			WHEN (transit_tap.initial_ivt_build = 0)
				AND (
					transit_tap.mode_id BETWEEN 11
						AND 15
					OR transit_tap.mode_id = 26
					)
				THEN CASE 
						WHEN (
								build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), - 0.362)
									)
								) <= 4
							THEN 4
						ELSE build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), - 0.362)
								)
						END
					--when (transit_tap.initial_ivt_build is null or transit_tap.initial_ivt_build = 1) and transit_tap.mode_id between 16 and 25 then -- BUG? assume 1 should be 0
			WHEN (transit_tap.initial_ivt_build = 0)
				AND transit_tap.mode_id BETWEEN 16
					AND 25
				THEN CASE 
						WHEN (
								build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), - 0.358)
									)
								) <= 3
							THEN 3
						ELSE build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), - 0.358)
								)
						END
			ELSE transit_tap.initial_ivt_build
			END AS ivt_build
		--################################################################################## TEST
		,
		CASE 
			WHEN (
					transit_tap.mode_id BETWEEN 11
						AND 15
					OR transit_tap.mode_id = 26
					)
				THEN CASE 
						WHEN (
								base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), - 0.362)
									)
								) <= 4
							THEN 4
						ELSE base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), - 0.362)
								)
						END
			ELSE CASE 
					WHEN (
							base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), - 0.358)
								)
							) <= 3
						THEN 3
					ELSE base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), - 0.358)
							)
					END
			END AS ivt_base_x,
		CASE 
			WHEN (
					transit_tap.mode_id BETWEEN 11
						AND 15
					OR transit_tap.mode_id = 26
					)
				THEN CASE 
						WHEN (
								build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), - 0.362)
									)
								) <= 4
							THEN 4
						ELSE build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), - 0.362)
								)
						END
			ELSE CASE 
					WHEN (
							build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), - 0.358)
								)
							) <= 3
						THEN 3
					ELSE build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), - 0.358)
							)
					END
			END AS ivt_build_x
	--##################################################################################
	INTO #transit_taz
	FROM #transit_tap AS transit_tap
	LEFT JOIN bca_abm.hwy_skims AS base_tazskim
		ON @scenario_id_base = base_tazskim.scenario_id
			AND transit_tap.orig_taz = base_tazskim.orig_geography_zone_id
			AND transit_tap.dest_taz = base_tazskim.dest_geography_zone_id
			AND transit_tap.res1_time_period_id = base_tazskim.time_period_id
	LEFT JOIN bca_abm.hwy_skims AS build_tazskim
		ON @scenario_id_build = build_tazskim.scenario_id
			AND transit_tap.orig_taz = build_tazskim.orig_geography_zone_id
			AND transit_tap.dest_taz = build_tazskim.dest_geography_zone_id
			AND transit_tap.res1_time_period_id = build_tazskim.time_period_id;

	PRINT 'finished  SELECT * INTO #transit_taz. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #transit_taz;

	PRINT '#transit_taz n=' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	--################################################################################## TEST
	DECLARE @ivt FLOAT;
	DECLARE @ivt_x FLOAT;

	SELECT @n = count(*),
		@ivt = sum(ivt_base),
		@ivt_x = sum(ivt_base_x)
	FROM #transit_taz
	WHERE initial_ivt_base <> 0

	PRINT '#transit_taz base n ' + FORMAT(@n, N'N0') + ' ivt ' + CAST(@ivt AS VARCHAR(26)) + ' ivt_x ' + CAST(@ivt_x AS VARCHAR(26)) + ' elapsed: ' + CONVERT(
			VARCHAR, (GETDATE() - @overall_start_date), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*),
		@ivt = sum(ivt_build),
		@ivt_x = sum(ivt_build_x)
	FROM #transit_taz
	WHERE initial_ivt_build <> 0

	PRINT '#transit_taz build n ' + FORMAT(@n, N'N0') + ' ivt ' + CAST(@ivt AS VARCHAR(26)) + ' ivt_x ' + CAST(@ivt_x AS VARCHAR(26)) + ' elapsed: ' + CONVERT(
			VARCHAR, (GETDATE() - @overall_start_date), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	--################################################################################## 
	SELECT *,
		(
			CASE 
				WHEN tour_purpose = 0
					THEN @vot_commute
				ELSE @vot_noncommute
				END
			) AS vot,
		(tripflag_build + tripflag_base) / 2.0 AS benefit_weight,
		-- -- 0.5 for new and dropped, and 1.0 for existing
		-- tt calculated according to base impedence
		CASE 
			WHEN mode_id = 26
				THEN -- school bus
					ivt_base / 60.0
			ELSE (@ovt_weight * (ovt_access_wk_base + ovt_egress_wk_base + ovt_enroute_base) + ovt_access_dr_base + ivt_base
					) / 60.0
			END AS base_impedence_tt,
		-- tt calculated according to build impedence
		CASE 
			WHEN mode_id = 26
				THEN -- school bus
					ivt_build / 60.0
			ELSE (
					@ovt_weight * (ovt_access_wk_build + ovt_egress_wk_build + ovt_enroute_build) + ovt_access_dr_build + 
					ivt_build
					) / 60.0
			END AS build_impedence_tt
	INTO #transit_benefits_pre
	FROM #transit_taz transit_taz;

	PRINT 'finished  SELECT * INTO #transit_benefits_pre. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114
		);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT *,
		vot * base_impedence_tt * tripflag_base AS base_monetized_tt,
		-- monetized tt for base scenario trips at base scenario impedence (0 for new trips)
		vot * build_impedence_tt * tripflag_build AS build_monetized_tt,
		-- monetized tt for build scenario trips at build scenario impedence (0 for dropped trips)
		vot * benefit_weight * base_impedence_tt AS base_benefit_tt,
		vot * benefit_weight * build_impedence_tt AS build_benefit_tt,
		vot * benefit_weight * (base_impedence_tt - build_impedence_tt) AS benefit_tt
	INTO #transit_benefits
	FROM #transit_benefits_pre transit_benefits_pre;

	PRINT 'finished  SELECT * INTO #transit_benefits. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #transit_benefits;

	PRINT '#transit_benefits n=' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT 2 AS mode_bca,
		tour_purpose,
		coc,
		coc_poverty,
		coc_age,
		coc_race,
		sum(tripflag_base) AS trips_base,
		sum(tripflag_build) AS trips_build,
		sum(0) AS toll_base,
		sum(0) AS toll_build,
		--v5.1: since base trips are flattened must divide fare by partysize in sum
		sum(CASE 
				WHEN party_size_base > 0
					THEN (fare_base / party_size_base)
				ELSE 0
				END) AS fare_base,
		sum(CASE 
				WHEN party_size_build > 0
					THEN (fare_build / party_size_build)
				ELSE 0
				END) AS fare_build,
		sum(base_monetized_tt) AS base_monetized_tt,
		sum(build_monetized_tt) AS build_monetized_tt,
		sum(base_benefit_tt) AS base_benefit_tt,
		sum(build_benefit_tt) AS build_benefit_tt,
		sum(benefit_tt) AS benefit_tt
	INTO #transit_benefits_summary
	FROM #transit_benefits transit_benefits
	GROUP BY tour_purpose,
		coc,
		coc_poverty,
		coc_age,
		coc_race;

	PRINT 'finished  SELECT * INTO #transit_benefits_summary. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date)
			, 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();
		--select * from #transit_benefits_summary;
END

-- #############################################################################################################
-- walk/bike
-- #############################################################################################################
IF @at = 1
BEGIN
	SELECT *,
		1 AS base,
		0 AS build
	INTO #at
	FROM #base --note original #base not #base_with_dupes
	WHERE mode_bca = 3
	
	UNION ALL
	
	SELECT *,
		0 AS base,
		1 AS build
	FROM #build --note original #build not #build_with_dupes
	WHERE mode_bca = 3;

	PRINT 'finished  SELECT * INTO #at. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #at;

	PRINT '#at n=' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT at.*,
		COALESCE(base_at_skims.value, 0) AS time_at_short_base,
		COALESCE(base_at_skims.value, 0) AS time_at_short_build
	INTO #at_mgra
	FROM #at AS at
	-- this has to be a left join because mgratomgra doesn't contain all OD pairs
	LEFT JOIN bca_abm.at_skims AS base_at_skims
		ON @scenario_id_base = base_at_skims.scenario_id
			AND at.orig_geography_zone_id = base_at_skims.orig_geography_zone_id
			AND at.dest_geography_zone_id = base_at_skims.dest_geography_zone_id
			AND at.mode_id = base_at_skims.mode_id
			AND base_at_skims.skim_id = 2 -- time actual
	LEFT JOIN bca_abm.at_skims AS build_at_skims
		ON @scenario_id_build = build_at_skims.scenario_id
			AND at.orig_geography_zone_id = build_at_skims.orig_geography_zone_id
			AND at.dest_geography_zone_id = build_at_skims.dest_geography_zone_id
			AND at.mode_id = build_at_skims.mode_id
			AND build_at_skims.skim_id = 2 -- time actual
			;

	PRINT 'finished  SELECT * INTO #at_mgra. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #at_mgra

	PRINT 'created #at_mgra with ' + FORMAT(@n, N'N0') + ' rows. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 
			114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #at_mgra
	WHERE time_at_short_base > 0;

	PRINT '#at_mgra time_at_short_base ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 
			114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #at_mgra
	WHERE time_at_short_build > 0;

	PRINT '#at_mgra time_at_short_build ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date)
			, 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT at_mgra.*,
		(
			CASE 
				WHEN time_at_short_base > 0
					THEN 0
				ELSE 60.0 * base_tazskim.dist_drive_alone_free / (
						CASE 
							WHEN mode_id = 9
								THEN 3
							ELSE 12
							END
						) -- walk (9) or bike (10)
				END
			) AS time_at_long_base,
		(
			CASE 
				WHEN time_at_short_build > 0
					THEN 0
				ELSE 60.0 * build_tazskim.dist_drive_alone_free / (
						CASE 
							WHEN mode_id = 9
								THEN 3
							ELSE 12
							END
						) -- walk (9) or bike (10)
				END
			) AS time_at_long_build
	INTO #at_taz
	FROM #at_mgra AS at_mgra
	LEFT JOIN bca_abm.hwy_skims AS base_tazskim
		ON base_tazskim.scenario_id = @scenario_id_base
			AND at_mgra.orig_taz = base_tazskim.orig_geography_zone_id
			AND at_mgra.dest_taz = base_tazskim.dest_geography_zone_id
			AND at_mgra.res1_time_period_id = base_tazskim.time_period_id
	LEFT JOIN bca_abm.hwy_skims AS build_tazskim
		ON build_tazskim.scenario_id = @scenario_id_build
			AND at_mgra.orig_taz = build_tazskim.orig_geography_zone_id
			AND at_mgra.dest_taz = build_tazskim.dest_geography_zone_id
			AND at_mgra.res1_time_period_id = build_tazskim.time_period_id;

	PRINT 'finished  SELECT * INTO #at_taz. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #at_taz
	WHERE time_at_long_base > 0;

	PRINT '#at_taz time_at_long_base ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 
			114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #at_taz
	WHERE time_at_long_build > 0;

	PRINT '#at_taz time_at_long_build ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 
			114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #at_taz;

	PRINT '#at_taz ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT *,
		(time_at_short_base + time_at_long_base) / 60.0 AS base_impedence_tt,
		-- tt calculated according to base impedence
		(time_at_short_build + time_at_long_build) / 60.0 AS build_impedence_tt,
		-- tt calculated according to base impedence
		(
			CASE 
				WHEN tour_purpose = 0
					THEN @vot_commute
				ELSE @vot_noncommute
				END
			) AS vot
	INTO #at_benefits_pre
	FROM #at_taz AS at_taz;

	PRINT 'finished  SELECT * INTO ##at_benefits_pre. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT *,
		vot * base_impedence_tt * base AS base_monetized_tt,
		-- monetized tt for base scenario trips at base scenario impedence (0 for new trips)
		vot * build_impedence_tt * build AS build_monetized_tt,
		-- monetized tt for build scenario trips at build scenario impedence (0 for dropped trips)
		vot * 0.5 * base_impedence_tt AS base_benefit_tt,
		vot * 0.5 * build_impedence_tt AS build_benefit_tt,
		vot * 0.5 * (base_impedence_tt - build_impedence_tt) AS benefit_tt
	INTO #at_benefits
	FROM #at_benefits_pre at_benefits_pre;

	PRINT 'finished  SELECT * INTO #at_benefits. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT @n = count(*)
	FROM #at_benefits;

	PRINT '#at_benefits n=' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();

	SELECT 3 AS mode_bca,
		tour_purpose,
		coc,
		coc_poverty,
		coc_age,
		coc_race,
		sum(base) AS trips_base,
		sum(build) AS trips_build,
		sum(0) AS toll_base,
		sum(0) AS toll_build,
		sum(0) AS fare_base,
		sum(0) AS fare_build,
		sum(base_monetized_tt) AS base_monetized_tt,
		sum(build_monetized_tt) AS build_monetized_tt,
		sum(base_benefit_tt) AS base_benefit_tt,
		sum(build_benefit_tt) AS build_benefit_tt,
		sum(benefit_tt) AS benefit_tt
	INTO #at_benefits_summary
	FROM #at_benefits at_benefits
	GROUP BY tour_purpose,
		coc,
		coc_poverty,
		coc_age,
		coc_race;

	SELECT @n = count(*)
	FROM #at_benefits_summary;

	PRINT '#at_benefits_summary n=' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
		'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

	RAISERROR (
			'-',
			10,
			1
			)
	WITH NOWAIT;

	SET @timer = GETDATE();
		--select * from #at_benefits_summary;
END

IF @auto * @transit * @at = 0
	RETURN

SELECT *
INTO #benefits_summary_pre
FROM #auto_benefits_summary

UNION ALL

SELECT *
FROM #transit_benefits_summary

UNION ALL

SELECT *
FROM #at_benefits_summary;

PRINT 'finished  SELECT * INTO #benefits_summary_pre. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
	'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

SELECT *,
	(
		CASE 
			WHEN tour_purpose = 0
				THEN 1
			ELSE 0
			END
		) AS commute,
	(
		CASE 
			WHEN tour_purpose = 1
				THEN 1
			ELSE 0
			END
		) AS non_commute,
	(
		CASE 
			WHEN mode_bca = 1
				THEN 1
			ELSE 0
			END
		) AS auto,
	(
		CASE 
			WHEN mode_bca = 2
				THEN 1
			ELSE 0
			END
		) AS transit,
	(
		CASE 
			WHEN mode_bca = 3
				THEN 1
			ELSE 0
			END
		) AS at
INTO #benefits_summary
FROM #benefits_summary_pre;

PRINT 'finished  SELECT * INTO #benefits_summary. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
	'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

SELECT @n = count(*)
FROM #at_benefits_summary;

PRINT '#benefits_summary n=' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + 
	'. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

-- summary variables
DECLARE @trips_auto_base INT
DECLARE @trips_auto_build INT
DECLARE @trips_transit_base INT
DECLARE @trips_transit_build INT
DECLARE @trips_at_base INT
DECLARE @trips_at_build INT
DECLARE @coc_auto_base INT
DECLARE @coc_auto_build INT
DECLARE @coc_transit_base INT
DECLARE @coc_transit_build INT
DECLARE @coc_at_base INT
DECLARE @coc_at_build INT
DECLARE @ben_tt_at_commute FLOAT
DECLARE @ben_tt_at_commute_coc FLOAT
DECLARE @toll_auto_commute_base FLOAT
DECLARE @toll_auto_commute_build FLOAT
DECLARE @ben_tt_auto_commute FLOAT
DECLARE @toll_auto_commute_base_coc FLOAT
DECLARE @toll_auto_commute_build_coc FLOAT
DECLARE @ben_tt_auto_commute_coc FLOAT
DECLARE @fare_transit_commute_base FLOAT
DECLARE @fare_transit_commute_build FLOAT
DECLARE @ben_tt_transit_commute FLOAT
DECLARE @fare_transit_commute_base_coc FLOAT
DECLARE @fare_transit_commute_build_coc FLOAT
DECLARE @ben_tt_transit_commute_coc FLOAT
DECLARE @ben_tt_at_noncommute FLOAT
DECLARE @ben_tt_at_noncommute_coc FLOAT
DECLARE @toll_auto_noncommute_base FLOAT
DECLARE @toll_auto_noncommute_build FLOAT
DECLARE @ben_tt_auto_noncommute FLOAT
DECLARE @toll_auto_noncommute_base_coc FLOAT
DECLARE @toll_auto_noncommute_build_coc FLOAT
DECLARE @ben_tt_auto_noncommute_coc FLOAT
DECLARE @fare_transit_noncommute_base FLOAT
DECLARE @fare_transit_noncommute_build FLOAT
DECLARE @ben_tt_transit_noncommute FLOAT
DECLARE @fare_transit_noncommute_base_coc FLOAT
DECLARE @fare_transit_noncommute_build_coc FLOAT
DECLARE @ben_tt_transit_noncommute_coc FLOAT
-- benefit_base_feature
DECLARE @base_tt_person FLOAT
DECLARE @build_tt_person FLOAT
-- coc breakdown
DECLARE @ben_tt_at_commute_coc_race FLOAT
DECLARE @ben_tt_auto_commute_coc_race FLOAT
DECLARE @ben_tt_transit_commute_coc_race FLOAT
DECLARE @ben_tt_at_noncommute_coc_race FLOAT
DECLARE @ben_tt_auto_noncommute_coc_race FLOAT
DECLARE @ben_tt_transit_noncommute_coc_race FLOAT
DECLARE @ben_tt_at_commute_coc_age FLOAT
DECLARE @ben_tt_auto_commute_coc_age FLOAT
DECLARE @ben_tt_transit_commute_coc_age FLOAT
DECLARE @ben_tt_at_noncommute_coc_age FLOAT
DECLARE @ben_tt_auto_noncommute_coc_age FLOAT
DECLARE @ben_tt_transit_noncommute_coc_age FLOAT
DECLARE @ben_tt_at_commute_coc_poverty FLOAT
DECLARE @ben_tt_auto_commute_coc_poverty FLOAT
DECLARE @ben_tt_transit_commute_coc_poverty FLOAT
DECLARE @ben_tt_at_noncommute_coc_poverty FLOAT
DECLARE @ben_tt_auto_noncommute_coc_poverty FLOAT
DECLARE @ben_tt_transit_noncommute_coc_poverty FLOAT

SELECT @ben_tt_at_commute = sum(benefit_tt * commute * at),
	@ben_tt_at_commute_coc = sum(benefit_tt * commute * at * coc),
	@toll_auto_commute_base = sum(toll_base * commute * auto),
	@toll_auto_commute_build = sum(toll_build * commute * auto),
	@ben_tt_auto_commute = sum(benefit_tt * commute * auto),
	@toll_auto_commute_base_coc = sum(toll_base * commute * auto * coc),
	@toll_auto_commute_build_coc = sum(toll_build * commute * auto * coc),
	@ben_tt_auto_commute_coc = sum(benefit_tt * commute * auto * coc),
	@fare_transit_commute_base = sum(fare_base * commute * transit),
	@fare_transit_commute_build = sum(fare_build * commute * transit),
	@ben_tt_transit_commute = sum(benefit_tt * commute * transit),
	@fare_transit_commute_base_coc = sum(fare_base * commute * transit * coc),
	@fare_transit_commute_build_coc = sum(fare_build * commute * transit * coc),
	@ben_tt_transit_commute_coc = sum(benefit_tt * commute * transit * coc),
	@ben_tt_at_noncommute = sum(benefit_tt * non_commute * at),
	@ben_tt_at_noncommute_coc = sum(benefit_tt * non_commute * at * coc),
	@toll_auto_noncommute_base = sum(toll_base * non_commute * auto),
	@toll_auto_noncommute_build = sum(toll_build * non_commute * auto),
	@ben_tt_auto_noncommute = sum(benefit_tt * non_commute * auto),
	@toll_auto_noncommute_base_coc = sum(toll_base * non_commute * auto * coc),
	@toll_auto_noncommute_build_coc = sum(toll_build * non_commute * auto * coc),
	@ben_tt_auto_noncommute_coc = sum(benefit_tt * non_commute * auto * coc),
	@fare_transit_noncommute_base = sum(fare_base * non_commute * transit),
	@fare_transit_noncommute_build = sum(fare_build * non_commute * transit),
	@ben_tt_transit_noncommute = sum(benefit_tt * non_commute * transit),
	@fare_transit_noncommute_base_coc = sum(fare_base * non_commute * transit * coc),
	@fare_transit_noncommute_build_coc = sum(fare_build * non_commute * transit * coc),
	@ben_tt_transit_noncommute_coc = sum(benefit_tt * non_commute * transit * coc),
	-- benefit_base_feature
	@base_tt_person = sum(base_benefit_tt),
	@build_tt_person = sum(build_benefit_tt),
	-- coc breakdown
	@ben_tt_at_commute_coc_race = sum(benefit_tt * commute * at * coc_race),
	@ben_tt_auto_commute_coc_race = sum(benefit_tt * commute * auto * coc_race),
	@ben_tt_transit_commute_coc_race = sum(benefit_tt * commute * transit * coc_race),
	@ben_tt_at_noncommute_coc_race = sum(benefit_tt * non_commute * at * coc_race),
	@ben_tt_auto_noncommute_coc_race = sum(benefit_tt * non_commute * auto * coc_race),
	@ben_tt_transit_noncommute_coc_race = sum(benefit_tt * non_commute * transit * coc_race),
	@ben_tt_at_commute_coc_age = sum(benefit_tt * commute * at * coc_age),
	@ben_tt_auto_commute_coc_age = sum(benefit_tt * commute * auto * coc_age),
	@ben_tt_transit_commute_coc_age = sum(benefit_tt * commute * transit * coc_age),
	@ben_tt_at_noncommute_coc_age = sum(benefit_tt * non_commute * at * coc_age),
	@ben_tt_auto_noncommute_coc_age = sum(benefit_tt * non_commute * auto * coc_age),
	@ben_tt_transit_noncommute_coc_age = sum(benefit_tt * non_commute * transit * coc_age),
	@ben_tt_at_commute_coc_poverty = sum(benefit_tt * commute * at * coc_poverty),
	@ben_tt_auto_commute_coc_poverty = sum(benefit_tt * commute * auto * coc_poverty),
	@ben_tt_transit_commute_coc_poverty = sum(benefit_tt * commute * transit * coc_poverty),
	@ben_tt_at_noncommute_coc_poverty = sum(benefit_tt * non_commute * at * coc_poverty),
	@ben_tt_auto_noncommute_coc_poverty = sum(benefit_tt * non_commute * auto * coc_poverty),
	@ben_tt_transit_noncommute_coc_poverty = sum(benefit_tt * non_commute * transit * coc_poverty),
	@trips_auto_base = sum(trips_base * auto),
	@trips_auto_build = sum(trips_build * auto),
	@coc_auto_base = sum(trips_base * auto * coc),
	@coc_auto_build = sum(trips_build * auto * coc),
	@trips_transit_base = sum(trips_base * transit),
	@trips_transit_build = sum(trips_build * transit),
	@coc_transit_base = sum(trips_base * transit * coc),
	@coc_transit_build = sum(trips_build * transit * coc),
	@trips_at_base = sum(trips_base * at),
	@trips_at_build = sum(trips_build * at),
	@coc_at_base = sum(trips_base * at * coc),
	@coc_at_build = sum(trips_build * at * coc)
FROM #benefits_summary;

BEGIN TRANSACTION

UPDATE scenario_comparison
WITH (SERIALIZABLE)

SET scenario_year = @scenario_year,
	ben_tt_at_commute = @ben_tt_at_commute,
	ben_tt_at_commute_coc = @ben_tt_at_commute_coc,
	toll_auto_commute_base = @toll_auto_commute_base,
	toll_auto_commute_build = @toll_auto_commute_build,
	ben_tt_auto_commute = @ben_tt_auto_commute,
	toll_auto_commute_base_coc = @toll_auto_commute_base_coc,
	toll_auto_commute_build_coc = @toll_auto_commute_build_coc,
	ben_tt_auto_commute_coc = @ben_tt_auto_commute_coc,
	fare_transit_commute_base = @fare_transit_commute_base,
	fare_transit_commute_build = @fare_transit_commute_build,
	ben_tt_transit_commute = @ben_tt_transit_commute,
	fare_transit_commute_base_coc = @fare_transit_commute_base_coc,
	fare_transit_commute_build_coc = @fare_transit_commute_build_coc,
	ben_tt_transit_commute_coc = @ben_tt_transit_commute_coc,
	ben_tt_at_noncommute = @ben_tt_at_noncommute,
	ben_tt_at_noncommute_coc = @ben_tt_at_noncommute_coc,
	toll_auto_noncommute_base = @toll_auto_noncommute_base,
	toll_auto_noncommute_build = @toll_auto_noncommute_build,
	ben_tt_auto_noncommute = @ben_tt_auto_noncommute,
	toll_auto_noncommute_base_coc = @toll_auto_noncommute_base_coc,
	toll_auto_noncommute_build_coc = @toll_auto_noncommute_build_coc,
	ben_tt_auto_noncommute_coc = @ben_tt_auto_noncommute_coc,
	fare_transit_noncommute_base = @fare_transit_noncommute_base,
	fare_transit_noncommute_build = @fare_transit_noncommute_build,
	ben_tt_transit_noncommute = @ben_tt_transit_noncommute,
	fare_transit_noncommute_base_coc = @fare_transit_noncommute_base_coc,
	fare_transit_noncommute_build_coc = @fare_transit_noncommute_build_coc,
	ben_tt_transit_noncommute_coc = @ben_tt_transit_noncommute_coc,
	-- benefit_base_feature
	base_tt_person = @base_tt_person,
	build_tt_person = @build_tt_person,
	-- coc breakdown
	ben_tt_at_commute_coc_race = @ben_tt_at_commute_coc_race,
	ben_tt_auto_commute_coc_race = @ben_tt_auto_commute_coc_race,
	ben_tt_transit_commute_coc_race = @ben_tt_transit_commute_coc_race,
	ben_tt_at_noncommute_coc_race = @ben_tt_at_noncommute_coc_race,
	ben_tt_auto_noncommute_coc_race = @ben_tt_auto_noncommute_coc_race,
	ben_tt_transit_noncommute_coc_race = @ben_tt_transit_noncommute_coc_race,
	ben_tt_at_commute_coc_age = @ben_tt_at_commute_coc_age,
	ben_tt_auto_commute_coc_age = @ben_tt_auto_commute_coc_age,
	ben_tt_transit_commute_coc_age = @ben_tt_transit_commute_coc_age,
	ben_tt_at_noncommute_coc_age = @ben_tt_at_noncommute_coc_age,
	ben_tt_auto_noncommute_coc_age = @ben_tt_auto_noncommute_coc_age,
	ben_tt_transit_noncommute_coc_age = @ben_tt_transit_noncommute_coc_age,
	ben_tt_at_commute_coc_poverty = @ben_tt_at_commute_coc_poverty,
	ben_tt_auto_commute_coc_poverty = @ben_tt_auto_commute_coc_poverty,
	ben_tt_transit_commute_coc_poverty = @ben_tt_transit_commute_coc_poverty,
	ben_tt_at_noncommute_coc_poverty = @ben_tt_at_noncommute_coc_poverty,
	ben_tt_auto_noncommute_coc_poverty = @ben_tt_auto_noncommute_coc_poverty,
	ben_tt_transit_noncommute_coc_poverty = @ben_tt_transit_noncommute_coc_poverty,
	vot_commute = @vot_commute,
	vot_noncommute = @vot_noncommute,
	ovt_weight = @ovt_weight,
	coc_hinc_thresh = @coc_hinc_thresh,
	coc_age_thresh = @coc_age_thresh,
	coc_race_thresh = @coc_race_thresh,
	coc_poverty_thresh = @coc_poverty_thresh,
	coc_hisp_thresh = @coc_hisp_thresh,
	last_update_date = getdate()
FROM scenario_comparison AS sc
WHERE sc.scenario_id_base = @scenario_id_base
	AND sc.scenario_id_build = @scenario_id_build
	AND sc.scenario_year = @scenario_year
	AND sc.analysis_id = @analysis_id

IF @@rowcount = 0
	INSERT INTO scenario_comparison (
		scenario_id_base,
		scenario_id_build,
		analysis_id,
		scenario_year,
		ben_tt_at_commute,
		ben_tt_at_commute_coc,
		toll_auto_commute_base,
		toll_auto_commute_build,
		ben_tt_auto_commute,
		toll_auto_commute_base_coc,
		toll_auto_commute_build_coc,
		ben_tt_auto_commute_coc,
		fare_transit_commute_base,
		fare_transit_commute_build,
		ben_tt_transit_commute,
		fare_transit_commute_base_coc,
		fare_transit_commute_build_coc,
		ben_tt_transit_commute_coc,
		ben_tt_at_noncommute,
		ben_tt_at_noncommute_coc,
		toll_auto_noncommute_base,
		toll_auto_noncommute_build,
		ben_tt_auto_noncommute,
		toll_auto_noncommute_base_coc,
		toll_auto_noncommute_build_coc,
		ben_tt_auto_noncommute_coc,
		fare_transit_noncommute_base,
		fare_transit_noncommute_build,
		ben_tt_transit_noncommute,
		fare_transit_noncommute_base_coc,
		fare_transit_noncommute_build_coc,
		ben_tt_transit_noncommute_coc,
		-- benefit_base_feature
		base_tt_person,
		build_tt_person,
		-- coc breakdown
		ben_tt_at_commute_coc_race,
		ben_tt_auto_commute_coc_race,
		ben_tt_transit_commute_coc_race,
		ben_tt_at_noncommute_coc_race,
		ben_tt_auto_noncommute_coc_race,
		ben_tt_transit_noncommute_coc_race,
		ben_tt_at_commute_coc_age,
		ben_tt_auto_commute_coc_age,
		ben_tt_transit_commute_coc_age,
		ben_tt_at_noncommute_coc_age,
		ben_tt_auto_noncommute_coc_age,
		ben_tt_transit_noncommute_coc_age,
		ben_tt_at_commute_coc_poverty,
		ben_tt_auto_commute_coc_poverty,
		ben_tt_transit_commute_coc_poverty,
		ben_tt_at_noncommute_coc_poverty,
		ben_tt_auto_noncommute_coc_poverty,
		ben_tt_transit_noncommute_coc_poverty,
		vot_commute,
		vot_noncommute,
		ovt_weight,
		coc_hinc_thresh,
		coc_age_thresh,
		coc_race_thresh,
		coc_poverty_thresh,
		coc_hisp_thresh,
		last_update_date
		)
	SELECT @scenario_id_base,
		@scenario_id_build,
		@analysis_id,
		@scenario_year,
		@ben_tt_at_commute,
		@ben_tt_at_commute_coc,
		@toll_auto_commute_base,
		@toll_auto_commute_build,
		@ben_tt_auto_commute,
		@toll_auto_commute_base_coc,
		@toll_auto_commute_build_coc,
		@ben_tt_auto_commute_coc,
		@fare_transit_commute_base,
		@fare_transit_commute_build,
		@ben_tt_transit_commute,
		@fare_transit_commute_base_coc,
		@fare_transit_commute_build_coc,
		@ben_tt_transit_commute_coc,
		@ben_tt_at_noncommute,
		@ben_tt_at_noncommute_coc,
		@toll_auto_noncommute_base,
		@toll_auto_noncommute_build,
		@ben_tt_auto_noncommute,
		@toll_auto_noncommute_base_coc,
		@toll_auto_noncommute_build_coc,
		@ben_tt_auto_noncommute_coc,
		@fare_transit_noncommute_base,
		@fare_transit_noncommute_build,
		@ben_tt_transit_noncommute,
		@fare_transit_noncommute_base_coc,
		@fare_transit_noncommute_build_coc,
		@ben_tt_transit_noncommute_coc,
		-- benefit_base_feature
		@base_tt_person,
		@build_tt_person,
		-- coc breakdown
		@ben_tt_at_commute_coc_race,
		@ben_tt_auto_commute_coc_race,
		@ben_tt_transit_commute_coc_race,
		@ben_tt_at_noncommute_coc_race,
		@ben_tt_auto_noncommute_coc_race,
		@ben_tt_transit_noncommute_coc_race,
		@ben_tt_at_commute_coc_age,
		@ben_tt_auto_commute_coc_age,
		@ben_tt_transit_commute_coc_age,
		@ben_tt_at_noncommute_coc_age,
		@ben_tt_auto_noncommute_coc_age,
		@ben_tt_transit_noncommute_coc_age,
		@ben_tt_at_commute_coc_poverty,
		@ben_tt_auto_commute_coc_poverty,
		@ben_tt_transit_commute_coc_poverty,
		@ben_tt_at_noncommute_coc_poverty,
		@ben_tt_auto_noncommute_coc_poverty,
		@ben_tt_transit_noncommute_coc_poverty,
		@vot_commute,
		@vot_noncommute,
		@ovt_weight,
		@coc_hinc_thresh,
		@coc_age_thresh,
		@coc_race_thresh,
		@coc_poverty_thresh,
		@coc_hisp_thresh,
		getdate()

COMMIT TRANSACTION

SELECT @trips_auto_base AS trips_auto_base,
	@trips_auto_build AS trips_auto_build,
	@coc_auto_base AS coc_auto_base,
	@coc_auto_build AS coc_auto_build,
	@trips_transit_base AS trips_transit_base,
	@trips_transit_build AS trips_transit_build,
	@coc_transit_base AS coc_transit_base,
	@coc_transit_build AS coc_transit_build,
	@trips_at_base AS trips_at_base,
	@trips_at_build AS trips_at_build,
	@coc_at_base AS coc_at_base,
	@coc_at_build AS coc_at_build

PRINT 'Run_person_trip_summary finished at ' + CONVERT(VARCHAR, GETDATE(), 114) + ' elapsed: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date
			), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;

SET @timer = GETDATE();

RETURN

GO
/****** Object:  StoredProcedure [dbo].[run_person_trip_summary_benefit]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[run_person_trip_summary_benefit]
  @scenario_id_base int,
  @scenario_id_build int,
  @analysis_id int,
  @scenario_year int,
  @vot_commute float,
  @vot_noncommute float,
  @ovt_weight float,
  @coc_hinc_thresh int,
  @coc_age_thresh int,
  @coc_race_thresh int,
  @coc_poverty_thresh float,
  @coc_hisp_thresh int
  with execute as caller
as
  set nocount on
 
declare @t0 DATETIME = GETDATE();
declare @n int;
print 'run_person_trip_summary'
RAISERROR ('-', 10, 1) WITH NOWAIT;

declare @auto int = 1
declare @transit int = 1
declare @at int = 1


;with 
 trips as (
    select
      a.scenario_id,
      a.mode_id,
      e.model_type_id,      
      a.orig_geography_zone_id,
      a.dest_geography_zone_id,
      --a.tour_id,
      a.party_size,
      a.board_transit_tap_id,
      a.alight_transit_tap_id,          
      p.lu_hh_id,
      b.lu_person_id,
      --case when e.purpose_id = 0 then 0 else 1 end as tour_purpose,
      case when purpose.purpose_number = 0 then 0 else 1 end as tour_purpose,
      --f.tod_id,
      f.res1_time_period_id,

      a.inbound,
      e.purpose_id,
      a.time_period_id

  from
      bca_abm.trip_ij as a
        inner join bca_abm.tour_ij_person as b
          on a.scenario_id = b.scenario_id
            and a.tour_ij_id = b.tour_ij_id 
        inner join bca_abm.person as p
          on b.scenario_id = p.scenario_id
            and b.lu_person_id = p.lu_person_id
        -- join to tour EXPANDS the base recordset to ONE rec per party_size of TRIP_MICRO_SIMUL
        inner join bca_abm.tour_ij as e
          on a.scenario_id = e.scenario_id
          and a.tour_ij_id = e.tour_ij_id
        inner join bca_abm.time_period_xref as f
          on a.time_period_id = f.res2_time_period_id
        inner join bca_abm.purpose as purpose
          on e.purpose_id = purpose.purpose_id
          and e.model_type_id = purpose.model_type_id
    where 
       a.scenario_id = @scenario_id_base
        and e.model_type_id in (0,1,3,5)
  ),
  trips_demog as (
    select t.*,

      case 
        when t.mode_id <= 8 then 1 -- auto
        when (t.mode_id = 9 or t.mode_id = 10) then 3 -- walk, bike
        when (t.mode_id > 10 and t.mode_id <= 26) then 2 -- transit
        when t.mode_id = 27 then 1 -- taxi
        else -1
      end as mode_bca,

      (case when hh.poverty  < @coc_poverty_thresh then 1 else 0 end) as coc_poverty,
      (case when p.age >= @coc_age_thresh then 1 else 0 end) as coc_age,
      (case when( p.hisp_id > @coc_hisp_thresh) 
        or ( p.race_id > @coc_race_thresh) then 1 else 0 end) as coc_race,
      (case when( p.hisp_id > @coc_hisp_thresh) 
        or ( p.race_id > @coc_race_thresh) 
        or (p.age >= @coc_age_thresh) 
        or (hh.poverty  < @coc_poverty_thresh) then 1 else 0 end) as coc

    from trips t
    inner join bca_abm.hh as hh on t.lu_hh_id = hh.lu_hh_id
    inner join bca_abm.person as p  on t.lu_hh_id = p.lu_hh_id and t.lu_person_id = p.lu_person_id 
    where hh.scenario_id = @scenario_id_base
      and p.scenario_id = @scenario_id_base
  )
  select
    t.*,
  	o.taz_geography_zone_id as orig_taz,
  	d.taz_geography_zone_id as dest_taz
  into #base
  from trips_demog t
  left join bca_abm.mgra13_xref_taz13 as o
    on t.orig_geography_zone_id = o.mgra_geography_zone_id
  left join bca_abm.mgra13_xref_taz13 as d
    on t.dest_geography_zone_id = d.mgra_geography_zone_id
		
  select @n = count(*) from #base;
  print '#base ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11));
  RAISERROR ('-', 10, 1) WITH NOWAIT;


;with 
 trips as (
    select
      a.scenario_id,
      a.mode_id,
      e.model_type_id,      
      a.orig_geography_zone_id,
      a.dest_geography_zone_id,
      --a.tour_id,
      a.party_size,
      a.board_transit_tap_id,
      a.alight_transit_tap_id,          
      p.lu_hh_id,
      b.lu_person_id,
      --case when e.purpose_id = 0 then 0 else 1 end as tour_purpose,
      case when purpose.purpose_number = 0 then 0 else 1 end as tour_purpose,
      --f.tod_id,
      f.res1_time_period_id,

      a.inbound,
      e.purpose_id,
      a.time_period_id

  from
      bca_abm.trip_ij as a
        inner join bca_abm.tour_ij_person as b
          on a.scenario_id = b.scenario_id
            and a.tour_ij_id = b.tour_ij_id 
        inner join bca_abm.person as p
          on b.scenario_id = p.scenario_id
            and b.lu_person_id = p.lu_person_id
        -- join to tour EXPANDS the base recordset to ONE rec per party_size of TRIP_MICRO_SIMUL
        inner join bca_abm.tour_ij as e
          on a.scenario_id = e.scenario_id
          and a.tour_ij_id = e.tour_ij_id     
        inner join bca_abm.time_period_xref as f
          on a.time_period_id = f.res2_time_period_id
        inner join bca_abm.purpose as purpose
          on e.purpose_id = purpose.purpose_id
          and e.model_type_id = purpose.model_type_id
    where 
       a.scenario_id = @scenario_id_build
        and e.model_type_id in (0,1,3,5)--0,1,3,5
  ),
  trips_demog as (
    select t.*,

      case 
        when t.mode_id <= 8 then 1 -- auto
        when (t.mode_id = 9 or t.mode_id = 10) then 3 -- walk, bike
        when (t.mode_id > 10 and t.mode_id <= 26) then 2 -- transit
        when t.mode_id = 27 then 1 -- taxi
        else -1
      end as mode_bca,

      (case when hh.poverty  < @coc_poverty_thresh then 1 else 0 end) as coc_poverty,
      (case when p.age >= @coc_age_thresh then 1 else 0 end) as coc_age,
      (case when( p.hisp_id > @coc_hisp_thresh) 
        or ( p.race_id > @coc_race_thresh) then 1 else 0 end) as coc_race,
      (case when( p.hisp_id > @coc_hisp_thresh) 
        or ( p.race_id > @coc_race_thresh) 
        or (p.age >= @coc_age_thresh) 
        or (hh.poverty  < @coc_poverty_thresh) then 1 else 0 end) as coc

    from trips t
    inner join bca_abm.hh as hh on t.lu_hh_id = hh.lu_hh_id
    inner join bca_abm.person as p  on t.lu_hh_id = p.lu_hh_id and t.lu_person_id = p.lu_person_id 
    where hh.scenario_id = @scenario_id_base
      and p.scenario_id = @scenario_id_base
  )
  select
    t.*,
  	o.taz_geography_zone_id as orig_taz,
  	d.taz_geography_zone_id as dest_taz
  into #build
  from trips_demog t
  left join bca_abm.mgra13_xref_taz13 as o
    on t.orig_geography_zone_id = o.mgra_geography_zone_id
  left join bca_abm.mgra13_xref_taz13 as d
    on t.dest_geography_zone_id = d.mgra_geography_zone_id

  select @n = count(*) from #build;
  print '#build ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11));
  RAISERROR ('-', 10, 1) WITH NOWAIT;

-- #############################################################################################################
-- auto
-- #############################################################################################################

IF @auto=1
BEGIN


  ;with 
   unpaired_auto as (
      select
        1 as base,
        0 as build,
        mode_id,
        orig_taz,
        dest_taz,
        time_period_id,
        res1_time_period_id,
        scenario_id,
        party_size,
        coc_poverty,
        coc_age,
        coc_race,
        coc,
        tour_purpose
      from #base
      where mode_bca = 1
      UNION ALL
      select
        0 as base,
        1 as build,
        mode_id,
        orig_taz,
        dest_taz,
        time_period_id,
        res1_time_period_id,
        scenario_id,
        party_size,
        coc_poverty,
        coc_age,
        coc_race,
        coc,
        tour_purpose
      from #build
      where mode_bca = 1
  )
 select * into #auto from unpaired_auto;

  select @n = sum(base) from #auto;
  print '#auto base ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 

  select @n = sum(build) from #auto;
  print '#auto build ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 

  select @n = count(*) from #auto;
  print '#auto ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

  select 
    auto.*,
  --v5.1: made all comparisons explicit
    case 
      when mode_id = 1 then                   -- Auto SOV (Non-Toll)
        base_tazskim.time_drive_alone_free 
      when mode_id = 2 then                   -- Auto SOV (Toll)
        base_tazskim.time_drive_alone_toll 
      when (mode_id = 3 or mode_id = 4) then  -- Auto 2 Person (Non-Toll, Non-HOV or HOV)
        base_tazskim.time_hov2_free 
      when mode_id = 5 then                   -- Auto 2 Person (Toll, HOV)
        base_tazskim.time_hov2_toll
      when (mode_id = 6 or mode_id = 7) then  -- Auto 3+ Person (Non-Toll, Non-HOV or HOV)
        base_tazskim.time_hov3_free 
      when mode_id = 8 then                   -- Auto 3+ Person (Toll, HOV)
        base_tazskim.time_hov3_toll 
      else -1 
    end as tt_base,
  --v5.1: made all comparisons explicit
    case 
      when mode_id = 1 then 
        0
      when mode_id = 2 then 
        base_tazskim.cost_drive_alone_toll 
      when (mode_id = 3 or mode_id = 4) then 
        0
      when mode_id = 5 then 
        base_tazskim.cost_hov2_toll
      when (mode_id = 6 or mode_id = 7) then 
        0
      when mode_id = 8 then 
        base_tazskim.cost_hov3_toll 
      else -1 
    end as toll_base,
  --v5.1: made all comparisons explicit
   case 
     when mode_id = 1 then 
       build_tazskim.time_drive_alone_free 
     when mode_id = 2 then 
       build_tazskim.time_drive_alone_toll 
     when (mode_id = 3 or mode_id = 4) then 
       build_tazskim.time_hov2_free 
     when mode_id = 5 then 
       build_tazskim.time_hov2_toll
     when (mode_id = 6 or mode_id = 7) then 
       build_tazskim.time_hov3_free 
     when mode_id = 8 then 
       build_tazskim.time_hov3_toll 
     else -1 
   end as tt_build,
  --v5.1: made all comparisons explicit
    case 
      when mode_id = 1 then 
        0
      when mode_id = 2 then 
        build_tazskim.cost_drive_alone_toll 
      when (mode_id = 3 or mode_id = 4) then 
        0
      when mode_id = 5 then 
        build_tazskim.cost_hov2_toll
      when (mode_id = 6 or mode_id = 7) then 
        0
      when mode_id = 8 then 
        build_tazskim.cost_hov3_toll 
      else -1 
    end as toll_build
    
    ,base_tazskim.scenario_id as base_scenario_id
    ,build_tazskim.scenario_id as build_scenario_id
    , build_tazskim.cost_drive_alone_toll  as cost_drive_alone_toll
    , build_tazskim.cost_hov2_toll  as cost_hov2_toll
    , build_tazskim.cost_hov3_toll  as cost_hov3_toll
    
  into #auto_taz
  from
    #auto as auto
    left join bca_abm.hwy_skims as base_tazskim
      on auto.orig_taz = base_tazskim.orig_geography_zone_id
        and auto.dest_taz = base_tazskim.dest_geography_zone_id
        and auto.res1_time_period_id = base_tazskim.time_period_id
    left join bca_abm.hwy_skims as build_tazskim
      on auto.orig_taz = build_tazskim.orig_geography_zone_id
        and auto.dest_taz = build_tazskim.dest_geography_zone_id
        and auto.res1_time_period_id = build_tazskim.time_period_id
  where build_tazskim.scenario_id =  @scenario_id_build -- BUG this makes it an inner join so why not say so?
  and  base_tazskim.scenario_id = @scenario_id_base -- BUG this makes it an inner join so why not say so?

-- select distinct mode_id from #auto_taz;
-- 
-- select top 100 * from #auto_taz where mode_id in (2,5,8);

select @n = count(*) from #auto_taz;
print '#auto_taz ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;

 ;with 
  auto_benefits_pre as (
      select
        *,
        (case when tour_purpose = 0 then @vot_commute else @vot_noncommute end) as vot,
        tt_base / 60.0 as base_impedence_tt,
        tt_build / 60.0 as build_impedence_tt
        from #auto_taz as auto_taz
  )
  select
	base, 
	sum(base*base_impedence_tt) base_impedence, 
	sum(build*build_impedence_tt) build_impedence ,
	sum(vot * 0.5 * (base_impedence_tt - build_impedence_tt)) as benefit_tt
  from auto_benefits_pre
  group by base
  
END

-- #############################################################################################################
-- transit
-- #############################################################################################################

IF @transit=1
BEGIN


select * 
into #transit_base 
from #base  
where mode_bca = 2;

select @n = count(*) from #transit_base;
print '#transit_base ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;

select * 
into #transit_build
from #build  
where mode_bca = 2;

select @n = count(*) from #transit_build;
print '#transit_build ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;


  ;with 
  --  base as (
  --     select * from #base 
  --     where mode_bca = 2
  --     ),
  --  build as (
  --     select * from #build
  --     where mode_bca = 2
  -- ),
    --##############################################  begin de-duping code
    base as (
      select *,

      -- flag any rows in transit_base that have multiple matches in transit_build so don't create duplicate rows in outer join below
      case when (select count(*) 
        from #transit_build as xbuild
        where
          xbase.mode_id=xbuild.mode_id
          and xbase.model_type_id=xbuild.model_type_id
          and xbase.tour_purpose = xbuild.tour_purpose
          and xbase.dest_geography_zone_id = xbuild.dest_geography_zone_id
          and xbase.orig_geography_zone_id = xbuild.orig_geography_zone_id
          and xbase.lu_person_id = xbuild.lu_person_id
          and xbase.lu_hh_id = xbuild.lu_hh_id
          and xbase.purpose_id = xbuild.purpose_id
          and xbase.time_period_id = xbuild.time_period_id
          and xbase.inbound = xbuild.inbound
        ) > 1
      then 1 else 0 end as dupes
      from #transit_base as xbase
      ),
    build as (
      select * ,

      -- flag any rows in transit_build that have multiple matches in transit_base so don't create duplicate rows in outer join below
      case when (select count(*) 
        from #transit_base as xbase
        where
          xbase.mode_id=xbuild.mode_id
          and xbase.model_type_id=xbuild.model_type_id
          and xbase.tour_purpose = xbuild.tour_purpose
          and xbase.dest_geography_zone_id = xbuild.dest_geography_zone_id
          and xbase.orig_geography_zone_id = xbuild.orig_geography_zone_id
          and xbase.lu_person_id = xbuild.lu_person_id
          and xbase.lu_hh_id = xbuild.lu_hh_id
          and xbase.purpose_id = xbuild.purpose_id
          and xbase.time_period_id = xbuild.time_period_id
          and xbase.inbound = xbuild.inbound
        ) > 1
      then -1 else 0 end as dupes
      from #transit_build as xbuild
    ),
    --############################################## end de-duping code
    paired_transit as (
    select

      @scenario_id_base as scenario_id_base,
      @scenario_id_build as scenario_id_build,

      COALESCE(base.party_size, 0) as party_size_base,
      COALESCE(build.party_size, 0) as party_size_build,
      case when base.mode_id is null then 0 else 1 end as tripflag_base,
      case when build.mode_id is null then 0 else 1 end as tripflag_build,
      COALESCE(build.coc_poverty, base.coc_poverty) as coc_poverty,
      COALESCE(build.coc_age, base.coc_age) as coc_age,
      COALESCE(build.coc_race, base.coc_race) as coc_race,
      COALESCE(build.coc, base.coc) as coc,
      COALESCE(base.tour_purpose, build.tour_purpose) as tour_purpose,
      -- use the build time unless dropped (trips match regardless of tod)
      COALESCE(build.res1_time_period_id, base.res1_time_period_id) as res1_time_period_id, -- this is ok as res1_time_period_id will be the same if joining on time_period_id, otherwise need build_tod_id and base_tod_id here and below
      COALESCE(build.orig_taz, base.orig_taz) as orig_taz,
      COALESCE(build.dest_taz, base.dest_taz) as dest_taz,
      --   scenario_id_base,
      --   scenario_id_build,
      COALESCE(base.mode_id, build.mode_id) as mode_id,
      COALESCE(base.board_transit_tap_id, build.board_transit_tap_id) board_tap_base,
      COALESCE(build.board_transit_tap_id, base.board_transit_tap_id) board_tap_build,
      COALESCE(base.alight_transit_tap_id, build.alight_transit_tap_id) alight_tap_base,
      COALESCE(build.alight_transit_tap_id, base.alight_transit_tap_id) alight_tap_build,
      COALESCE(base.dest_geography_zone_id, build.dest_geography_zone_id) as dest_geography_zone_id

      ,
      base.dupes as base_dupes,
      build.dupes as build_dupes

    from 
      base
      FULL OUTER JOIN
      build
    on 
      base.mode_id=build.mode_id
      and base.model_type_id=build.model_type_id
      and base.tour_purpose = build.tour_purpose
      and base.dest_geography_zone_id = build.dest_geography_zone_id
      and base.orig_geography_zone_id = build.orig_geography_zone_id
      and base.lu_person_id = build.lu_person_id
      and base.lu_hh_id = build.lu_hh_id

      and base.purpose_id = build.purpose_id
      and base.time_period_id = build.time_period_id -- note, need to keep both base and build res1_time_period_id if we don't join on this
      -- and base.trip_id = build.trip_id
      and base.inbound = build.inbound

      --and base.mode_id = build.mode_id + 1

      and base.dupes=build.dupes -- don't join any rows that will match dupes
  )
  select * into #transit from paired_transit;


select @n = sum(tripflag_base) from #transit;
print '#transit tripflag_base ' +  CAST(@n AS varchar(11));

select @n = sum(tripflag_build) from #transit;
print '#transit tripflag_build ' +  CAST(@n AS varchar(11));

select @n = sum(tripflag_build*tripflag_base) from #transit;
print '#transit existing ' +  CAST(@n AS varchar(11));

select @n = count(*) from #transit;
print '#transit ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;

--################################################################################## TEST
-- select top 1000 * from #transit
-- where base_dupes=1 or build_dupes=-1
-- order by orig_taz, dest_taz;
--################################################################################## TEST

--handle auto access transit
;with 

  transit_tap as (
    select 
      p.*,
      COALESCE(base_tapskim.fare_premium, 0) as fare_base,
      COALESCE(build_tapskim.fare_premium, 0) as fare_build,

      COALESCE(base_tapskim.init_wait_premium + base_tapskim.transfer_time_premium + base_tapskim.walk_time_premium, 0) as ovt_enroute_base,
      COALESCE(case when p.mode_id > 10 and p.mode_id < 16 then base_tap.time_boarding_actual else 0 end, 0) as ovt_access_wk_base,    -- walk-transit         
      COALESCE(base_tap.time_boarding_actual, 0) as ovt_egress_wk_base,
      COALESCE(base_tapskim.ivt_premium, 0) as initial_ivt_base,

      COALESCE(build_tapskim.init_wait_premium + build_tapskim.transfer_time_premium + build_tapskim.walk_time_premium, 0) as ovt_enroute_build,
      COALESCE(case when p.mode_id > 10 and p.mode_id < 16 then build_tap.time_boarding_actual else 0 end, 0) as ovt_access_wk_build,
      COALESCE(build_tap.time_boarding_actual, 0) as ovt_egress_wk_build,
      COALESCE(build_tapskim.ivt_premium, 0) as initial_ivt_build,

      -- to track success rate of join
      case when base_tapskim.orig_transit_tap_id is null then 0 else 1 end as base_tapskim_flag,
      case when build_tapskim.orig_transit_tap_id is null then 0 else 1 end as build_tapskim_flag,
      case when base_tap.transit_tap_id is null then 0 else 1 end as base_mgra_flag,
      case when build_tap.transit_tap_id is null then 0 else 1 end as build_mgra_flag

      -- BUG - why do we need mgratotap for alight but not for board?
      -- is that what dead code defining board_taz_dr_base was for?

    from 
      #transit as p        
        left join bca_abm.transit_tap_skims as base_tapskim
          on p.board_tap_base = base_tapskim.orig_transit_tap_id 
            and p.alight_tap_base = base_tapskim.dest_transit_tap_id 
            and p.res1_time_period_id = base_tapskim.time_period_id
            and p.scenario_id_base = base_tapskim.scenario_id 
        left join bca_abm.transit_tap_skims as build_tapskim
          on p.board_tap_build = build_tapskim.orig_transit_tap_id
            and p.alight_tap_build = build_tapskim.dest_transit_tap_id
            and p.res1_time_period_id = build_tapskim.time_period_id
            and p.scenario_id_build = build_tapskim.scenario_id 
        left join bca_abm.transit_tap_walk as base_tap
          on p.dest_geography_zone_id = base_tap.geography_zone_id
            and p.alight_tap_base = base_tap.transit_tap_id
            and p.scenario_id_base = base_tap.scenario_id
        left join bca_abm.transit_tap_walk as build_tap
          on p.dest_geography_zone_id = build_tap.geography_zone_id
            and p.alight_tap_build = build_tap.transit_tap_id
            and p.scenario_id_build = build_tap.scenario_id
  )
select * into #transit_tap from transit_tap;


select @n = sum(base_tapskim_flag) from #transit_tap; 
print '#transit_tap base_tapskim_flag: ' +  CAST(@n AS varchar(11));
select @n = sum(build_tapskim_flag) from #transit_tap; 
print '#transit_tap build_tapskim_flag: ' +  CAST(@n AS varchar(11));
select @n = sum(base_mgra_flag) from #transit_tap; 
print '#transit_tap base_mgra_flag: ' +  CAST(@n AS varchar(11));
select @n = sum(build_mgra_flag) from #transit_tap; 
print '#transit_tap build_mgra_flag: ' +  CAST(@n AS varchar(11));



select @n = count(*) from #transit_tap;
print '#transit_tap ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;


select @n = count(*) from #transit_tap where ((base_tapskim_flag = 0)) and (mode_id <> 26);
print '#transit_tap no base tapskim ' +  CAST(@n AS varchar(11));
RAISERROR ('-', 10, 1) WITH NOWAIT;


select @n = count(*) from #transit_tap where ((build_tapskim_flag = 0)) and (mode_id <> 26);
print '#transit_tap no build tapskim ' +  CAST(@n AS varchar(11));
RAISERROR ('-', 10, 1) WITH NOWAIT;


--################################################################################## TEST
-- select top 1000 * from #transit_tap 
-- where (
--   (base_tapskim_flag = 0) or (build_tapskim_flag = 0)
--   --or (base_mgra_flag = 0) or (build_mgra_flag = 0);
--   ) 
-- and (tripflag_base*tripflag_build=1) 
-- and (mode_id <> 26);
--################################################################################## TEST

;with
  transit_taz as (
    select       
      transit_tap.*,
      case
        when transit_tap.mode_id between 16 and 25 then
          base_tazskim.time_drive_alone_free 
        else
          0
      end as ovt_access_dr_base,      
      case
        when transit_tap.mode_id between 16 and 25 then
          build_tazskim.time_drive_alone_free 
        else
          0
      end as ovt_access_dr_build,
      case 
        when (transit_tap.initial_ivt_base = 0) and (transit_tap.mode_id between 11 and 15 or transit_tap.mode_id = 26) then 
          case 
            when (base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.362))) <= 4 then
              4 
            else 
              base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.362))
          end
        when (transit_tap.initial_ivt_base = 0) and transit_tap.mode_id between 16 and 25 then 
          case 
            when (base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.358))) <= 3 then
              3 
            else 
              base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.358))
          end
        else 
          transit_tap.initial_ivt_base
      end as ivt_base,
      case 
        when (transit_tap.initial_ivt_build = 0) and (transit_tap.mode_id between 11 and 15 or transit_tap.mode_id = 26) then 
          case 
            when (build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.362))) <= 4 then
              4 
            else 
              build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.362))
          end
        --when (transit_tap.initial_ivt_build is null or transit_tap.initial_ivt_build = 1) and transit_tap.mode_id between 16 and 25 then -- BUG? assume 1 should be 0
        when (transit_tap.initial_ivt_build = 0) and transit_tap.mode_id between 16 and 25 then 
          case 
            when (build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.358))) <= 3 then
              3 
            else 
              build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.358))
          end
        else 
          transit_tap.initial_ivt_build
      end as ivt_build


--################################################################################## TEST
      ,case 
        when (transit_tap.mode_id between 11 and 15 or transit_tap.mode_id = 26) then 
          case 
            when (base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.362))) <= 4 then
              4 
            else 
              base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.362))
          end
        else
          case 
            when (base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.358))) <= 3 then
              3 
            else 
              base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.358))
          end
      end as ivt_base_x,
      case 
        when (transit_tap.mode_id between 11 and 15 or transit_tap.mode_id = 26) then 
          case 
            when (build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.362))) <= 4 then
              4 
            else 
              build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.362))
          end
        else
          case 
            when (build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.358))) <= 3 then
              3 
            else 
              build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.358))
          end
      end as ivt_build_x
--##################################################################################

    from 
      #transit_tap as transit_tap
        left join bca_abm.hwy_skims as base_tazskim
          on transit_tap.res1_time_period_id = base_tazskim.time_period_id
            and transit_tap.dest_taz = base_tazskim.dest_geography_zone_id
            and transit_tap.orig_taz = base_tazskim.orig_geography_zone_id
            and transit_tap.scenario_id_base = base_tazskim.scenario_id
        left join bca_abm.hwy_skims as build_tazskim
          on transit_tap.res1_time_period_id = build_tazskim.time_period_id
            and transit_tap.dest_taz = build_tazskim.dest_geography_zone_id
            and transit_tap.orig_taz = build_tazskim.orig_geography_zone_id      
            and transit_tap.scenario_id_build = build_tazskim.scenario_id
  )
  select * into #transit_taz from transit_taz;

select @n = count(*) from #transit_taz;
print '#transit_taz ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;


--################################################################################## TEST

declare @ivt float;
declare @ivt_x float;


select @n = count(*), @ivt=sum(ivt_base), @ivt_x=sum(ivt_base_x)
from #transit_taz
where initial_ivt_base <> 0

print '#transit_taz base n ' +  CAST(@n AS varchar(11)) + ' ivt ' +  CAST(@ivt AS varchar(26)) + ' ivt_x ' + CAST(@ivt_x AS varchar(26))
RAISERROR ('-', 10, 1) WITH NOWAIT;

select @n = count(*), @ivt=sum(ivt_build), @ivt_x=sum(ivt_build_x)
from #transit_taz
where initial_ivt_build <> 0

print '#transit_taz n ' +  CAST(@n AS varchar(11)) + ' ivt ' +  CAST(@ivt AS varchar(26)) + ' ivt_x ' + CAST(@ivt_x AS varchar(26))
RAISERROR ('-', 10, 1) WITH NOWAIT;

--################################################################################## 



  ;with
    transit_benefits_pre as (
    select      
      *,

      (case when tour_purpose = 0 then @vot_commute else @vot_noncommute end) as vot,

     (tripflag_build + tripflag_base) / 2.0 as benefit_weight, -- -- 0.5 for new and dropped, and 1.0 for existing

      -- tt calculated according to base impedence
      case when mode_id=26 then -- school bus
        ivt_base/60.0
      else
        (@ovt_weight * (ovt_access_wk_base + ovt_egress_wk_base + ovt_enroute_base) + ovt_access_dr_base + ivt_base) / 60.0
      end as base_impedence_tt,

      -- tt calculated according to build impedence
      case when mode_id=26 then -- school bus
        ivt_build/60.0
      else
        (@ovt_weight * (ovt_access_wk_build + ovt_egress_wk_build + ovt_enroute_build) + ovt_access_dr_build + ivt_build) / 60.0
      end as build_impedence_tt

    from
      #transit_taz
  )
    select
		tripflag_build,
		sum(case when party_size_base = 0 then 0 else base_impedence_tt end) base_impedence,
		sum(case when party_size_build = 0 then 0 else build_impedence_tt end) build_impedence,
		sum(vot * benefit_weight * (base_impedence_tt - build_impedence_tt)) as benefit_tt
    from transit_benefits_pre
	group by tripflag_build
  
END

-- #############################################################################################################
-- walk/bike
-- #############################################################################################################

if @at=1
BEGIN

  ;with 
   unpaired_at as (
      select
        *,
        1 as base,
        0 as build
      from #base
      where mode_bca = 3
      UNION ALL
      select
        *,
        0 as base,
        1 as build
      from #build
      where mode_bca = 3
  )
 select
        base,
        build,
        mode_id,
        party_size,
        coc_poverty,
        coc_age,
        coc_race,
        coc,
        tour_purpose,
        orig_taz,
        dest_taz,
        time_period_id,
        res1_time_period_id,
        scenario_id,
        orig_geography_zone_id,
        dest_geography_zone_id,

        @scenario_id_base as scenario_id_base,
        @scenario_id_build as scenario_id_build

  into #at from unpaired_at; 


  select @n = count(*) from #at;
  print '#at ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

--   ;with 
--     at_mgra as (
--       select             
--         at.*,
--         COALESCE(base_mgra.time_actual, 0) as time_at_short_base,
--         COALESCE(build_mgra.time_actual, 0) as time_at_short_build
--       from #at as at
--       -- this has to be a left join because mgratomgra doesn't contain all OD pairs
--       left join bca_abm.mgratomgra as base_mgra
--         on at.scenario_id_base = base_mgra.scenario_id
--           and at.orig_geography_zone_id = base_mgra.orig_mgra
--           and at.dest_geography_zone_id = base_mgra.dest_mgra
--       left join bca_abm.mgratomgra as build_mgra
--         on at.scenario_id_build = build_mgra.scenario_id
--           and at.orig_geography_zone_id = build_mgra.orig_mgra
--           and at.dest_geography_zone_id = build_mgra.dest_mgra
--     )
-- select * into #at_mgra from at_mgra

  ;with 
    at_mgra as (
      select             
        at.*,
        COALESCE(base_at_skims.value, 0) as time_at_short_base,
        COALESCE(base_at_skims.value, 0) as time_at_short_build
      from #at as at
      -- this has to be a left join because mgratomgra doesn't contain all OD pairs
      left join bca_abm.at_skims as base_at_skims
        on at.scenario_id_base = base_at_skims.scenario_id
          and at.orig_geography_zone_id = base_at_skims.orig_geography_zone_id
          and at.dest_geography_zone_id = base_at_skims.dest_geography_zone_id
          and at.mode_id = base_at_skims.mode_id
          and base_at_skims.skim_id = 2 -- time actual
      left join bca_abm.at_skims as build_at_skims
        on at.scenario_id_build = build_at_skims.scenario_id
          and at.orig_geography_zone_id = build_at_skims.orig_geography_zone_id
          and at.dest_geography_zone_id = build_at_skims.dest_geography_zone_id
          and at.mode_id = build_at_skims.mode_id
          and build_at_skims.skim_id = 2 -- time actual
    )
select * into #at_mgra from at_mgra

  select @n = count(*) from #at_mgra where time_at_short_base > 0;
  print '#at_mgra time_at_short_base' +  CAST(@n AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

  select @n = count(*) from #at_mgra where time_at_short_build > 0;
  print '#at_mgra time_at_short_build' +  CAST(@n AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

  select @n = count(*) from #at_mgra;
  print '#at_mgra ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

  ;with
  at_taz as (
    select
      at_mgra.*,    

      (case 
        when time_at_short_base > 0 then 
          0 
        else 
          60.0 * base_tazskim.dist_drive_alone_free 
          / 
          (case when mode_id = 9 then 3 else 12 end) -- walk (9) or bike (10)
      end)  
       as time_at_long_base,

      (case 
        when time_at_short_build > 0 then 
          0 
        else 
          60.0 * build_tazskim.dist_drive_alone_free 
          / 
          (case when mode_id = 9 then 3 else 12 end) -- walk (9) or bike (10)
      end)  
       as time_at_long_build
    from
      #at_mgra as at_mgra
        left join bca_abm.hwy_skims as base_tazskim
          on at_mgra.dest_taz = base_tazskim.dest_geography_zone_id
            and at_mgra.orig_taz = base_tazskim.orig_geography_zone_id
            and at_mgra.res1_time_period_id = base_tazskim.time_period_id
            and at_mgra.scenario_id_base = base_tazskim.scenario_id
        left join bca_abm.hwy_skims as build_tazskim
          on at_mgra.dest_taz = build_tazskim.dest_geography_zone_id
            and at_mgra.orig_taz = build_tazskim.orig_geography_zone_id
            and at_mgra.res1_time_period_id = build_tazskim.time_period_id
            and at_mgra.scenario_id_build = build_tazskim.scenario_id
  )
  select * into #at_taz from at_taz;

select @n = count(*) from #at_taz where time_at_long_base > 0;
print '#at_mgra time_at_long_base' +  CAST(@n AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;

select @n = count(*) from #at_taz where time_at_long_build > 0;
print '#at_mgra time_at_long_build' +  CAST(@n AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;

  select @n = count(*) from #at_taz;
  print '#at_taz ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

  ;with 
  at_benefits_pre as (
      select
        *,
        (time_at_short_base + time_at_long_base)/60.0 as base_impedence_tt, -- tt calculated according to base impedence
        (time_at_short_build + time_at_long_build)/60.0 as build_impedence_tt, -- tt calculated according to base impedence
        (case when tour_purpose = 0 then @vot_commute else @vot_noncommute end) as vot
        from #at_taz as at_taz
  )
    select
		base,
		sum(base*base_impedence_tt) base_impedence, 
		sum(build*build_impedence_tt) build_impedence,
		sum(vot * 0.5 * (base_impedence_tt - build_impedence_tt)) as benefit_tt
      from at_benefits_pre
	  group by base

END


GO
/****** Object:  StoredProcedure [dbo].[run_person_trip_summary_impedence]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[run_person_trip_summary_impedence]
  @scenario_id_base int,
  @scenario_id_build int,
  @analysis_id int,
  @scenario_year int,
  @vot_commute float,
  @vot_noncommute float,
  @ovt_weight float,
  @coc_hinc_thresh int,
  @coc_age_thresh int,
  @coc_race_thresh int,
  @coc_poverty_thresh float,
  @coc_hisp_thresh int
  with execute as caller
as
  set nocount on
 
declare @t0 DATETIME = GETDATE();
declare @n int;
print 'run_person_trip_summary'
RAISERROR ('-', 10, 1) WITH NOWAIT;

declare @auto int = 1
declare @transit int = 1
declare @at int = 1


;with 
 trips as (
    select
      a.scenario_id,
      a.mode_id,
      e.model_type_id,      
      a.orig_geography_zone_id,
      a.dest_geography_zone_id,
      --a.tour_id,
      a.party_size,
      a.board_transit_tap_id,
      a.alight_transit_tap_id,          
      p.lu_hh_id,
      b.lu_person_id,
      --case when e.purpose_id = 0 then 0 else 1 end as tour_purpose,
      case when purpose.purpose_number = 0 then 0 else 1 end as tour_purpose,
      --f.tod_id,
      f.res1_time_period_id,

      a.inbound,
      e.purpose_id,
      a.time_period_id

  from
      bca_abm.trip_ij as a
        inner join bca_abm.tour_ij_person as b
          on a.scenario_id = b.scenario_id
            and a.tour_ij_id = b.tour_ij_id 
        inner join bca_abm.person as p
          on b.scenario_id = p.scenario_id
            and b.lu_person_id = p.lu_person_id
        -- join to tour EXPANDS the base recordset to ONE rec per party_size of TRIP_MICRO_SIMUL
        inner join bca_abm.tour_ij as e
          on a.scenario_id = e.scenario_id
          and a.tour_ij_id = e.tour_ij_id
        inner join bca_abm.time_period_xref as f
          on a.time_period_id = f.res2_time_period_id
        inner join bca_abm.purpose as purpose
          on e.purpose_id = purpose.purpose_id
          and e.model_type_id = purpose.model_type_id
    where 
       a.scenario_id = @scenario_id_base
        and e.model_type_id in (0,1,3,5)
  ),
  trips_demog as (
    select t.*,

      case 
        when t.mode_id <= 8 then 1 -- auto
        when (t.mode_id = 9 or t.mode_id = 10) then 3 -- walk, bike
        when (t.mode_id > 10 and t.mode_id <= 26) then 2 -- transit
        when t.mode_id = 27 then 1 -- taxi
        else -1
      end as mode_bca,

      (case when hh.poverty  < @coc_poverty_thresh then 1 else 0 end) as coc_poverty,
      (case when p.age >= @coc_age_thresh then 1 else 0 end) as coc_age,
      (case when( p.hisp_id > @coc_hisp_thresh) 
        or ( p.race_id > @coc_race_thresh) then 1 else 0 end) as coc_race,
      (case when( p.hisp_id > @coc_hisp_thresh) 
        or ( p.race_id > @coc_race_thresh) 
        or (p.age >= @coc_age_thresh) 
        or (hh.poverty  < @coc_poverty_thresh) then 1 else 0 end) as coc

    from trips t
    inner join bca_abm.hh as hh on t.lu_hh_id = hh.lu_hh_id
    inner join bca_abm.person as p  on t.lu_hh_id = p.lu_hh_id and t.lu_person_id = p.lu_person_id 
    where hh.scenario_id = @scenario_id_base
      and p.scenario_id = @scenario_id_base
  )
  select
    t.*,
  	o.taz_geography_zone_id as orig_taz,
  	d.taz_geography_zone_id as dest_taz
  into #base
  from trips_demog t
  left join bca_abm.mgra13_xref_taz13 as o
    on t.orig_geography_zone_id = o.mgra_geography_zone_id
  left join bca_abm.mgra13_xref_taz13 as d
    on t.dest_geography_zone_id = d.mgra_geography_zone_id
		
  select @n = count(*) from #base;
  print '#base ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11));
  RAISERROR ('-', 10, 1) WITH NOWAIT;


;with 
 trips as (
    select
      a.scenario_id,
      a.mode_id,
      e.model_type_id,      
      a.orig_geography_zone_id,
      a.dest_geography_zone_id,
      --a.tour_id,
      a.party_size,
      a.board_transit_tap_id,
      a.alight_transit_tap_id,          
      p.lu_hh_id,
      b.lu_person_id,
      --case when e.purpose_id = 0 then 0 else 1 end as tour_purpose,
      case when purpose.purpose_number = 0 then 0 else 1 end as tour_purpose,
      --f.tod_id,
      f.res1_time_period_id,

      a.inbound,
      e.purpose_id,
      a.time_period_id

  from
      bca_abm.trip_ij as a
        inner join bca_abm.tour_ij_person as b
          on a.scenario_id = b.scenario_id
            and a.tour_ij_id = b.tour_ij_id 
        inner join bca_abm.person as p
          on b.scenario_id = p.scenario_id
            and b.lu_person_id = p.lu_person_id
        -- join to tour EXPANDS the base recordset to ONE rec per party_size of TRIP_MICRO_SIMUL
        inner join bca_abm.tour_ij as e
          on a.scenario_id = e.scenario_id
          and a.tour_ij_id = e.tour_ij_id     
        inner join bca_abm.time_period_xref as f
          on a.time_period_id = f.res2_time_period_id
        inner join bca_abm.purpose as purpose
          on e.purpose_id = purpose.purpose_id
          and e.model_type_id = purpose.model_type_id
    where 
       a.scenario_id = @scenario_id_build
        and e.model_type_id in (0,1,3,5)--0,1,3,5
  ),
  trips_demog as (
    select t.*,

      case 
        when t.mode_id <= 8 then 1 -- auto
        when (t.mode_id = 9 or t.mode_id = 10) then 3 -- walk, bike
        when (t.mode_id > 10 and t.mode_id <= 26) then 2 -- transit
        when t.mode_id = 27 then 1 -- taxi
        else -1
      end as mode_bca,

      (case when hh.poverty  < @coc_poverty_thresh then 1 else 0 end) as coc_poverty,
      (case when p.age >= @coc_age_thresh then 1 else 0 end) as coc_age,
      (case when( p.hisp_id > @coc_hisp_thresh) 
        or ( p.race_id > @coc_race_thresh) then 1 else 0 end) as coc_race,
      (case when( p.hisp_id > @coc_hisp_thresh) 
        or ( p.race_id > @coc_race_thresh) 
        or (p.age >= @coc_age_thresh) 
        or (hh.poverty  < @coc_poverty_thresh) then 1 else 0 end) as coc

    from trips t
    inner join bca_abm.hh as hh on t.lu_hh_id = hh.lu_hh_id
    inner join bca_abm.person as p  on t.lu_hh_id = p.lu_hh_id and t.lu_person_id = p.lu_person_id 
    where hh.scenario_id = @scenario_id_base
      and p.scenario_id = @scenario_id_base
  )
  select
    t.*,
  	o.taz_geography_zone_id as orig_taz,
  	d.taz_geography_zone_id as dest_taz
  into #build
  from trips_demog t
  left join bca_abm.mgra13_xref_taz13 as o
    on t.orig_geography_zone_id = o.mgra_geography_zone_id
  left join bca_abm.mgra13_xref_taz13 as d
    on t.dest_geography_zone_id = d.mgra_geography_zone_id

  select @n = count(*) from #build;
  print '#build ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11));
  RAISERROR ('-', 10, 1) WITH NOWAIT;

-- #############################################################################################################
-- auto
-- #############################################################################################################

IF @auto=1
BEGIN


  ;with 
   unpaired_auto as (
      select
        1 as base,
        0 as build,
        mode_id,
        orig_taz,
        dest_taz,
        time_period_id,
        res1_time_period_id,
        scenario_id,
        party_size,
        coc_poverty,
        coc_age,
        coc_race,
        coc,
        tour_purpose
      from #base
      where mode_bca = 1
      UNION ALL
      select
        0 as base,
        1 as build,
        mode_id,
        orig_taz,
        dest_taz,
        time_period_id,
        res1_time_period_id,
        scenario_id,
        party_size,
        coc_poverty,
        coc_age,
        coc_race,
        coc,
        tour_purpose
      from #build
      where mode_bca = 1
  )
 select * into #auto from unpaired_auto;

  select @n = sum(base) from #auto;
  print '#auto base ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 

  select @n = sum(build) from #auto;
  print '#auto build ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 

  select @n = count(*) from #auto;
  print '#auto ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

  select 
    auto.*,
  --v5.1: made all comparisons explicit
    case 
      when mode_id = 1 then                   -- Auto SOV (Non-Toll)
        base_tazskim.time_drive_alone_free 
      when mode_id = 2 then                   -- Auto SOV (Toll)
        base_tazskim.time_drive_alone_toll 
      when (mode_id = 3 or mode_id = 4) then  -- Auto 2 Person (Non-Toll, Non-HOV or HOV)
        base_tazskim.time_hov2_free 
      when mode_id = 5 then                   -- Auto 2 Person (Toll, HOV)
        base_tazskim.time_hov2_toll
      when (mode_id = 6 or mode_id = 7) then  -- Auto 3+ Person (Non-Toll, Non-HOV or HOV)
        base_tazskim.time_hov3_free 
      when mode_id = 8 then                   -- Auto 3+ Person (Toll, HOV)
        base_tazskim.time_hov3_toll 
      else -1 
    end as tt_base,
  --v5.1: made all comparisons explicit
    case 
      when mode_id = 1 then 
        0
      when mode_id = 2 then 
        base_tazskim.cost_drive_alone_toll 
      when (mode_id = 3 or mode_id = 4) then 
        0
      when mode_id = 5 then 
        base_tazskim.cost_hov2_toll
      when (mode_id = 6 or mode_id = 7) then 
        0
      when mode_id = 8 then 
        base_tazskim.cost_hov3_toll 
      else -1 
    end as toll_base,
  --v5.1: made all comparisons explicit
   case 
     when mode_id = 1 then 
       build_tazskim.time_drive_alone_free 
     when mode_id = 2 then 
       build_tazskim.time_drive_alone_toll 
     when (mode_id = 3 or mode_id = 4) then 
       build_tazskim.time_hov2_free 
     when mode_id = 5 then 
       build_tazskim.time_hov2_toll
     when (mode_id = 6 or mode_id = 7) then 
       build_tazskim.time_hov3_free 
     when mode_id = 8 then 
       build_tazskim.time_hov3_toll 
     else -1 
   end as tt_build,
  --v5.1: made all comparisons explicit
    case 
      when mode_id = 1 then 
        0
      when mode_id = 2 then 
        build_tazskim.cost_drive_alone_toll 
      when (mode_id = 3 or mode_id = 4) then 
        0
      when mode_id = 5 then 
        build_tazskim.cost_hov2_toll
      when (mode_id = 6 or mode_id = 7) then 
        0
      when mode_id = 8 then 
        build_tazskim.cost_hov3_toll 
      else -1 
    end as toll_build
    
    ,base_tazskim.scenario_id as base_scenario_id
    ,build_tazskim.scenario_id as build_scenario_id
    , build_tazskim.cost_drive_alone_toll  as cost_drive_alone_toll
    , build_tazskim.cost_hov2_toll  as cost_hov2_toll
    , build_tazskim.cost_hov3_toll  as cost_hov3_toll
    
  into #auto_taz
  from
    #auto as auto
    left join bca_abm.hwy_skims as base_tazskim
      on auto.orig_taz = base_tazskim.orig_geography_zone_id
        and auto.dest_taz = base_tazskim.dest_geography_zone_id
        and auto.res1_time_period_id = base_tazskim.time_period_id
    left join bca_abm.hwy_skims as build_tazskim
      on auto.orig_taz = build_tazskim.orig_geography_zone_id
        and auto.dest_taz = build_tazskim.dest_geography_zone_id
        and auto.res1_time_period_id = build_tazskim.time_period_id
  where build_tazskim.scenario_id =  @scenario_id_build -- BUG this makes it an inner join so why not say so?
  and  base_tazskim.scenario_id = @scenario_id_base -- BUG this makes it an inner join so why not say so?

-- select distinct mode_id from #auto_taz;
-- 
-- select top 100 * from #auto_taz where mode_id in (2,5,8);

select @n = count(*) from #auto_taz;
print '#auto_taz ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;

 ;with 
  auto_benefits_pre as (
      select
        *,
        (case when tour_purpose = 0 then @vot_commute else @vot_noncommute end) as vot,
        tt_base / 60.0 as base_impedence_tt,
        tt_build / 60.0 as build_impedence_tt
        from #auto_taz as auto_taz
  )
  select sum(base*base_impedence_tt) base_impedence, sum(build*build_impedence_tt) build_impedence from auto_benefits_pre
  
END

-- #############################################################################################################
-- transit
-- #############################################################################################################

IF @transit=1
BEGIN


select * 
into #transit_base 
from #base  
where mode_bca = 2;

select @n = count(*) from #transit_base;
print '#transit_base ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;

select * 
into #transit_build
from #build  
where mode_bca = 2;

select @n = count(*) from #transit_build;
print '#transit_build ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;


  ;with 
  --  base as (
  --     select * from #base 
  --     where mode_bca = 2
  --     ),
  --  build as (
  --     select * from #build
  --     where mode_bca = 2
  -- ),
    --##############################################  begin de-duping code
    base as (
      select *,

      -- flag any rows in transit_base that have multiple matches in transit_build so don't create duplicate rows in outer join below
      case when (select count(*) 
        from #transit_build as xbuild
        where
          xbase.mode_id=xbuild.mode_id
          and xbase.model_type_id=xbuild.model_type_id
          and xbase.tour_purpose = xbuild.tour_purpose
          and xbase.dest_geography_zone_id = xbuild.dest_geography_zone_id
          and xbase.orig_geography_zone_id = xbuild.orig_geography_zone_id
          and xbase.lu_person_id = xbuild.lu_person_id
          and xbase.lu_hh_id = xbuild.lu_hh_id
          and xbase.purpose_id = xbuild.purpose_id
          and xbase.time_period_id = xbuild.time_period_id
          and xbase.inbound = xbuild.inbound
        ) > 1
      then 1 else 0 end as dupes
      from #transit_base as xbase
      ),
    build as (
      select * ,

      -- flag any rows in transit_build that have multiple matches in transit_base so don't create duplicate rows in outer join below
      case when (select count(*) 
        from #transit_base as xbase
        where
          xbase.mode_id=xbuild.mode_id
          and xbase.model_type_id=xbuild.model_type_id
          and xbase.tour_purpose = xbuild.tour_purpose
          and xbase.dest_geography_zone_id = xbuild.dest_geography_zone_id
          and xbase.orig_geography_zone_id = xbuild.orig_geography_zone_id
          and xbase.lu_person_id = xbuild.lu_person_id
          and xbase.lu_hh_id = xbuild.lu_hh_id
          and xbase.purpose_id = xbuild.purpose_id
          and xbase.time_period_id = xbuild.time_period_id
          and xbase.inbound = xbuild.inbound
        ) > 1
      then -1 else 0 end as dupes
      from #transit_build as xbuild
    ),
    --############################################## end de-duping code
    paired_transit as (
    select

      @scenario_id_base as scenario_id_base,
      @scenario_id_build as scenario_id_build,

      COALESCE(base.party_size, 0) as party_size_base,
      COALESCE(build.party_size, 0) as party_size_build,
      case when base.mode_id is null then 0 else 1 end as tripflag_base,
      case when build.mode_id is null then 0 else 1 end as tripflag_build,
      COALESCE(build.coc_poverty, base.coc_poverty) as coc_poverty,
      COALESCE(build.coc_age, base.coc_age) as coc_age,
      COALESCE(build.coc_race, base.coc_race) as coc_race,
      COALESCE(build.coc, base.coc) as coc,
      COALESCE(base.tour_purpose, build.tour_purpose) as tour_purpose,
      -- use the build time unless dropped (trips match regardless of tod)
      COALESCE(build.res1_time_period_id, base.res1_time_period_id) as res1_time_period_id, -- this is ok as res1_time_period_id will be the same if joining on time_period_id, otherwise need build_tod_id and base_tod_id here and below
      COALESCE(build.orig_taz, base.orig_taz) as orig_taz,
      COALESCE(build.dest_taz, base.dest_taz) as dest_taz,
      --   scenario_id_base,
      --   scenario_id_build,
      COALESCE(base.mode_id, build.mode_id) as mode_id,
      COALESCE(base.board_transit_tap_id, build.board_transit_tap_id) board_tap_base,
      COALESCE(build.board_transit_tap_id, base.board_transit_tap_id) board_tap_build,
      COALESCE(base.alight_transit_tap_id, build.alight_transit_tap_id) alight_tap_base,
      COALESCE(build.alight_transit_tap_id, base.alight_transit_tap_id) alight_tap_build,
      COALESCE(base.dest_geography_zone_id, build.dest_geography_zone_id) as dest_geography_zone_id

      ,
      base.dupes as base_dupes,
      build.dupes as build_dupes

    from 
      base
      FULL OUTER JOIN
      build
    on 
      base.mode_id=build.mode_id
      and base.model_type_id=build.model_type_id
      and base.tour_purpose = build.tour_purpose
      and base.dest_geography_zone_id = build.dest_geography_zone_id
      and base.orig_geography_zone_id = build.orig_geography_zone_id
      and base.lu_person_id = build.lu_person_id
      and base.lu_hh_id = build.lu_hh_id

      and base.purpose_id = build.purpose_id
      and base.time_period_id = build.time_period_id -- note, need to keep both base and build res1_time_period_id if we don't join on this
      -- and base.trip_id = build.trip_id
      and base.inbound = build.inbound

      --and base.mode_id = build.mode_id + 1

      and base.dupes=build.dupes -- don't join any rows that will match dupes
  )
  select * into #transit from paired_transit;


select @n = sum(tripflag_base) from #transit;
print '#transit tripflag_base ' +  CAST(@n AS varchar(11));

select @n = sum(tripflag_build) from #transit;
print '#transit tripflag_build ' +  CAST(@n AS varchar(11));

select @n = sum(tripflag_build*tripflag_base) from #transit;
print '#transit existing ' +  CAST(@n AS varchar(11));

select @n = count(*) from #transit;
print '#transit ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;

--################################################################################## TEST
-- select top 1000 * from #transit
-- where base_dupes=1 or build_dupes=-1
-- order by orig_taz, dest_taz;
--################################################################################## TEST

--handle auto access transit
;with 

  transit_tap as (
    select 
      p.*,
      COALESCE(base_tapskim.fare_premium, 0) as fare_base,
      COALESCE(build_tapskim.fare_premium, 0) as fare_build,

      COALESCE(base_tapskim.init_wait_premium + base_tapskim.transfer_time_premium + base_tapskim.walk_time_premium, 0) as ovt_enroute_base,
      COALESCE(case when p.mode_id > 10 and p.mode_id < 16 then base_tap.time_boarding_actual else 0 end, 0) as ovt_access_wk_base,    -- walk-transit         
      COALESCE(base_tap.time_boarding_actual, 0) as ovt_egress_wk_base,
      COALESCE(base_tapskim.ivt_premium, 0) as initial_ivt_base,

      COALESCE(build_tapskim.init_wait_premium + build_tapskim.transfer_time_premium + build_tapskim.walk_time_premium, 0) as ovt_enroute_build,
      COALESCE(case when p.mode_id > 10 and p.mode_id < 16 then build_tap.time_boarding_actual else 0 end, 0) as ovt_access_wk_build,
      COALESCE(build_tap.time_boarding_actual, 0) as ovt_egress_wk_build,
      COALESCE(build_tapskim.ivt_premium, 0) as initial_ivt_build,

      -- to track success rate of join
      case when base_tapskim.orig_transit_tap_id is null then 0 else 1 end as base_tapskim_flag,
      case when build_tapskim.orig_transit_tap_id is null then 0 else 1 end as build_tapskim_flag,
      case when base_tap.transit_tap_id is null then 0 else 1 end as base_mgra_flag,
      case when build_tap.transit_tap_id is null then 0 else 1 end as build_mgra_flag

      -- BUG - why do we need mgratotap for alight but not for board?
      -- is that what dead code defining board_taz_dr_base was for?

    from 
      #transit as p        
        left join bca_abm.transit_tap_skims as base_tapskim
          on p.board_tap_base = base_tapskim.orig_transit_tap_id 
            and p.alight_tap_base = base_tapskim.dest_transit_tap_id 
            and p.res1_time_period_id = base_tapskim.time_period_id
            and p.scenario_id_base = base_tapskim.scenario_id 
        left join bca_abm.transit_tap_skims as build_tapskim
          on p.board_tap_build = build_tapskim.orig_transit_tap_id
            and p.alight_tap_build = build_tapskim.dest_transit_tap_id
            and p.res1_time_period_id = build_tapskim.time_period_id
            and p.scenario_id_build = build_tapskim.scenario_id 
        left join bca_abm.transit_tap_walk as base_tap
          on p.dest_geography_zone_id = base_tap.geography_zone_id
            and p.alight_tap_base = base_tap.transit_tap_id
            and p.scenario_id_base = base_tap.scenario_id
        left join bca_abm.transit_tap_walk as build_tap
          on p.dest_geography_zone_id = build_tap.geography_zone_id
            and p.alight_tap_build = build_tap.transit_tap_id
            and p.scenario_id_build = build_tap.scenario_id
  )
select * into #transit_tap from transit_tap;


select @n = sum(base_tapskim_flag) from #transit_tap; 
print '#transit_tap base_tapskim_flag: ' +  CAST(@n AS varchar(11));
select @n = sum(build_tapskim_flag) from #transit_tap; 
print '#transit_tap build_tapskim_flag: ' +  CAST(@n AS varchar(11));
select @n = sum(base_mgra_flag) from #transit_tap; 
print '#transit_tap base_mgra_flag: ' +  CAST(@n AS varchar(11));
select @n = sum(build_mgra_flag) from #transit_tap; 
print '#transit_tap build_mgra_flag: ' +  CAST(@n AS varchar(11));



select @n = count(*) from #transit_tap;
print '#transit_tap ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;


select @n = count(*) from #transit_tap where ((base_tapskim_flag = 0)) and (mode_id <> 26);
print '#transit_tap no base tapskim ' +  CAST(@n AS varchar(11));
RAISERROR ('-', 10, 1) WITH NOWAIT;


select @n = count(*) from #transit_tap where ((build_tapskim_flag = 0)) and (mode_id <> 26);
print '#transit_tap no build tapskim ' +  CAST(@n AS varchar(11));
RAISERROR ('-', 10, 1) WITH NOWAIT;


--################################################################################## TEST
-- select top 1000 * from #transit_tap 
-- where (
--   (base_tapskim_flag = 0) or (build_tapskim_flag = 0)
--   --or (base_mgra_flag = 0) or (build_mgra_flag = 0);
--   ) 
-- and (tripflag_base*tripflag_build=1) 
-- and (mode_id <> 26);
--################################################################################## TEST

;with
  transit_taz as (
    select       
      transit_tap.*,
      case
        when transit_tap.mode_id between 16 and 25 then
          base_tazskim.time_drive_alone_free 
        else
          0
      end as ovt_access_dr_base,      
      case
        when transit_tap.mode_id between 16 and 25 then
          build_tazskim.time_drive_alone_free 
        else
          0
      end as ovt_access_dr_build,
      case 
        when (transit_tap.initial_ivt_base = 0) and (transit_tap.mode_id between 11 and 15 or transit_tap.mode_id = 26) then 
          case 
            when (base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.362))) <= 4 then
              4 
            else 
              base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.362))
          end
        when (transit_tap.initial_ivt_base = 0) and transit_tap.mode_id between 16 and 25 then 
          case 
            when (base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.358))) <= 3 then
              3 
            else 
              base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.358))
          end
        else 
          transit_tap.initial_ivt_base
      end as ivt_base,
      case 
        when (transit_tap.initial_ivt_build = 0) and (transit_tap.mode_id between 11 and 15 or transit_tap.mode_id = 26) then 
          case 
            when (build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.362))) <= 4 then
              4 
            else 
              build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.362))
          end
        --when (transit_tap.initial_ivt_build is null or transit_tap.initial_ivt_build = 1) and transit_tap.mode_id between 16 and 25 then -- BUG? assume 1 should be 0
        when (transit_tap.initial_ivt_build = 0) and transit_tap.mode_id between 16 and 25 then 
          case 
            when (build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.358))) <= 3 then
              3 
            else 
              build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.358))
          end
        else 
          transit_tap.initial_ivt_build
      end as ivt_build


--################################################################################## TEST
      ,case 
        when (transit_tap.mode_id between 11 and 15 or transit_tap.mode_id = 26) then 
          case 
            when (base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.362))) <= 4 then
              4 
            else 
              base_tazskim.time_drive_alone_free * (19.700 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.362))
          end
        else
          case 
            when (base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.358))) <= 3 then
              3 
            else 
              base_tazskim.time_drive_alone_free * (12.653 * power(isnull(base_tazskim.dist_drive_alone_free, 0), -0.358))
          end
      end as ivt_base_x,
      case 
        when (transit_tap.mode_id between 11 and 15 or transit_tap.mode_id = 26) then 
          case 
            when (build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.362))) <= 4 then
              4 
            else 
              build_tazskim.time_drive_alone_free * (19.700 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.362))
          end
        else
          case 
            when (build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.358))) <= 3 then
              3 
            else 
              build_tazskim.time_drive_alone_free * (12.653 * power(isnull(build_tazskim.dist_drive_alone_free, 0), -0.358))
          end
      end as ivt_build_x
--##################################################################################

    from 
      #transit_tap as transit_tap
        left join bca_abm.hwy_skims as base_tazskim
          on transit_tap.res1_time_period_id = base_tazskim.time_period_id
            and transit_tap.dest_taz = base_tazskim.dest_geography_zone_id
            and transit_tap.orig_taz = base_tazskim.orig_geography_zone_id
            and transit_tap.scenario_id_base = base_tazskim.scenario_id
        left join bca_abm.hwy_skims as build_tazskim
          on transit_tap.res1_time_period_id = build_tazskim.time_period_id
            and transit_tap.dest_taz = build_tazskim.dest_geography_zone_id
            and transit_tap.orig_taz = build_tazskim.orig_geography_zone_id      
            and transit_tap.scenario_id_build = build_tazskim.scenario_id
  )
  select * into #transit_taz from transit_taz;

select @n = count(*) from #transit_taz;
print '#transit_taz ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;


--################################################################################## TEST

declare @ivt float;
declare @ivt_x float;


select @n = count(*), @ivt=sum(ivt_base), @ivt_x=sum(ivt_base_x)
from #transit_taz
where initial_ivt_base <> 0

print '#transit_taz base n ' +  CAST(@n AS varchar(11)) + ' ivt ' +  CAST(@ivt AS varchar(26)) + ' ivt_x ' + CAST(@ivt_x AS varchar(26))
RAISERROR ('-', 10, 1) WITH NOWAIT;

select @n = count(*), @ivt=sum(ivt_build), @ivt_x=sum(ivt_build_x)
from #transit_taz
where initial_ivt_build <> 0

print '#transit_taz n ' +  CAST(@n AS varchar(11)) + ' ivt ' +  CAST(@ivt AS varchar(26)) + ' ivt_x ' + CAST(@ivt_x AS varchar(26))
RAISERROR ('-', 10, 1) WITH NOWAIT;

--################################################################################## 



  ;with
    transit_benefits_pre as (
    select      
      *,

      (case when tour_purpose = 0 then @vot_commute else @vot_noncommute end) as vot,

     (tripflag_build + tripflag_base) / 2.0 as benefit_weight, -- -- 0.5 for new and dropped, and 1.0 for existing

      -- tt calculated according to base impedence
      case when mode_id=26 then -- school bus
        ivt_base/60.0
      else
        (@ovt_weight * (ovt_access_wk_base + ovt_egress_wk_base + ovt_enroute_base) + ovt_access_dr_base + ivt_base) / 60.0
      end as base_impedence_tt,

      -- tt calculated according to build impedence
      case when mode_id=26 then -- school bus
        ivt_build/60.0
      else
        (@ovt_weight * (ovt_access_wk_build + ovt_egress_wk_build + ovt_enroute_build) + ovt_access_dr_build + ivt_build) / 60.0
      end as build_impedence_tt

    from
      #transit_taz
  )
    select
		sum(case when party_size_base = 0 then 0 else base_impedence_tt end) base_impedence,
		sum(case when party_size_build = 0 then 0 else build_impedence_tt end) build_impedence
    from transit_benefits_pre
  
END

-- #############################################################################################################
-- walk/bike
-- #############################################################################################################

if @at=1
BEGIN

  ;with 
   unpaired_at as (
      select
        *,
        1 as base,
        0 as build
      from #base
      where mode_bca = 3
      UNION ALL
      select
        *,
        0 as base,
        1 as build
      from #build
      where mode_bca = 3
  )
 select
        base,
        build,
        mode_id,
        party_size,
        coc_poverty,
        coc_age,
        coc_race,
        coc,
        tour_purpose,
        orig_taz,
        dest_taz,
        time_period_id,
        res1_time_period_id,
        scenario_id,
        orig_geography_zone_id,
        dest_geography_zone_id,

        @scenario_id_base as scenario_id_base,
        @scenario_id_build as scenario_id_build

  into #at from unpaired_at; 


  select @n = count(*) from #at;
  print '#at ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

--   ;with 
--     at_mgra as (
--       select             
--         at.*,
--         COALESCE(base_mgra.time_actual, 0) as time_at_short_base,
--         COALESCE(build_mgra.time_actual, 0) as time_at_short_build
--       from #at as at
--       -- this has to be a left join because mgratomgra doesn't contain all OD pairs
--       left join bca_abm.mgratomgra as base_mgra
--         on at.scenario_id_base = base_mgra.scenario_id
--           and at.orig_geography_zone_id = base_mgra.orig_mgra
--           and at.dest_geography_zone_id = base_mgra.dest_mgra
--       left join bca_abm.mgratomgra as build_mgra
--         on at.scenario_id_build = build_mgra.scenario_id
--           and at.orig_geography_zone_id = build_mgra.orig_mgra
--           and at.dest_geography_zone_id = build_mgra.dest_mgra
--     )
-- select * into #at_mgra from at_mgra

  ;with 
    at_mgra as (
      select             
        at.*,
        COALESCE(base_at_skims.value, 0) as time_at_short_base,
        COALESCE(base_at_skims.value, 0) as time_at_short_build
      from #at as at
      -- this has to be a left join because mgratomgra doesn't contain all OD pairs
      left join bca_abm.at_skims as base_at_skims
        on at.scenario_id_base = base_at_skims.scenario_id
          and at.orig_geography_zone_id = base_at_skims.orig_geography_zone_id
          and at.dest_geography_zone_id = base_at_skims.dest_geography_zone_id
          and at.mode_id = base_at_skims.mode_id
          and base_at_skims.skim_id = 2 -- time actual
      left join bca_abm.at_skims as build_at_skims
        on at.scenario_id_build = build_at_skims.scenario_id
          and at.orig_geography_zone_id = build_at_skims.orig_geography_zone_id
          and at.dest_geography_zone_id = build_at_skims.dest_geography_zone_id
          and at.mode_id = build_at_skims.mode_id
          and build_at_skims.skim_id = 2 -- time actual
    )
select * into #at_mgra from at_mgra

  select @n = count(*) from #at_mgra where time_at_short_base > 0;
  print '#at_mgra time_at_short_base' +  CAST(@n AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

  select @n = count(*) from #at_mgra where time_at_short_build > 0;
  print '#at_mgra time_at_short_build' +  CAST(@n AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

  select @n = count(*) from #at_mgra;
  print '#at_mgra ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

  ;with
  at_taz as (
    select
      at_mgra.*,    

      (case 
        when time_at_short_base > 0 then 
          0 
        else 
          60.0 * base_tazskim.dist_drive_alone_free 
          / 
          (case when mode_id = 9 then 3 else 12 end) -- walk (9) or bike (10)
      end)  
       as time_at_long_base,

      (case 
        when time_at_short_build > 0 then 
          0 
        else 
          60.0 * build_tazskim.dist_drive_alone_free 
          / 
          (case when mode_id = 9 then 3 else 12 end) -- walk (9) or bike (10)
      end)  
       as time_at_long_build
    from
      #at_mgra as at_mgra
        left join bca_abm.hwy_skims as base_tazskim
          on at_mgra.dest_taz = base_tazskim.dest_geography_zone_id
            and at_mgra.orig_taz = base_tazskim.orig_geography_zone_id
            and at_mgra.res1_time_period_id = base_tazskim.time_period_id
            and at_mgra.scenario_id_base = base_tazskim.scenario_id
        left join bca_abm.hwy_skims as build_tazskim
          on at_mgra.dest_taz = build_tazskim.dest_geography_zone_id
            and at_mgra.orig_taz = build_tazskim.orig_geography_zone_id
            and at_mgra.res1_time_period_id = build_tazskim.time_period_id
            and at_mgra.scenario_id_build = build_tazskim.scenario_id
  )
  select * into #at_taz from at_taz;

select @n = count(*) from #at_taz where time_at_long_base > 0;
print '#at_mgra time_at_long_base' +  CAST(@n AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;

select @n = count(*) from #at_taz where time_at_long_build > 0;
print '#at_mgra time_at_long_build' +  CAST(@n AS varchar(11)); 
RAISERROR ('-', 10, 1) WITH NOWAIT;

  select @n = count(*) from #at_taz;
  print '#at_taz ' +  CAST(@n AS varchar(11)) + ' ' +  CAST(DATEDIFF(millisecond,@t0,GETDATE())/1000.0 AS varchar(11)); 
  RAISERROR ('-', 10, 1) WITH NOWAIT;

  ;with 
  at_benefits_pre as (
      select
        *,
        (time_at_short_base + time_at_long_base)/60.0 as base_impedence_tt, -- tt calculated according to base impedence
        (time_at_short_build + time_at_long_build)/60.0 as build_impedence_tt, -- tt calculated according to base impedence
        (case when tour_purpose = 0 then @vot_commute else @vot_noncommute end) as vot
        from #at_taz as at_taz
  )
    select
		sum(base*base_impedence_tt) base_impedence, 
		sum(build*build_impedence_tt) build_impedence
      from at_benefits_pre

END

GO
/****** Object:  StoredProcedure [dbo].[run_physical_activity_comparison]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_physical_activity_comparison] @base_scenario_id INT,
	@build_scenario_id INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

-- parameter variables
DECLARE @cost FLOAT
DECLARE @threshold FLOAT
DECLARE @threshold_age INT
DECLARE @threshold_race INT
DECLARE @threshold_poverty FLOAT
DECLARE @threshold_hisp INT
DECLARE @threshold_income INT

SELECT @cost = cost_phys_activ,
	@threshold = phys_activity_threshold,
	@threshold_age = coc_age_thresh,
	@threshold_race = coc_race_thresh,
	@threshold_poverty = coc_poverty_thresh,
	@threshold_hisp = coc_hisp_thresh
FROM analysis_parameters
WHERE analysis_id = @analysis_id
	AND comparison_year = @scenario_year

-- comparison values
SELECT a.analysis_id,
	a.scenario_year,
	a.persons_phys_active_tot AS base_persons_phys_active,
	b.persons_phys_active_tot AS build_persons_phys_active,
	b.persons_phys_active_tot - a.persons_phys_active_tot AS diff_persons_phys_active,
	b.persons_phys_active_coc - a.persons_phys_active_coc AS diff_persons_phys_active_coc,
	b.persons_phys_active_coc_poverty - a.persons_phys_active_coc_poverty AS diff_persons_phys_active_coc_poverty,
	b.persons_phys_active_coc_age - a.persons_phys_active_coc_age AS diff_persons_phys_active_coc_age,
	b.persons_phys_active_coc_race - a.persons_phys_active_coc_race AS diff_persons_phys_active_coc_race
INTO #a
FROM scenario_summary AS a,
	scenario_summary AS b
WHERE a.analysis_id = @analysis_id
	AND a.scenario_year = @scenario_year
	AND a.scenario_id = @base_scenario_id
	AND b.analysis_id = @analysis_id
	AND b.scenario_year = @scenario_year
	AND b.scenario_id = @build_scenario_id;

SELECT *,
	base_persons_phys_active * @cost AS base_cost_persons_phys_active,
	build_persons_phys_active * @cost AS build_cost_persons_phys_active,
	diff_persons_phys_active * @cost AS ben_persons_phys_active,
	diff_persons_phys_active_coc * @cost AS ben_persons_phys_active_coc,
	diff_persons_phys_active_coc_poverty * @cost AS ben_persons_phys_active_coc_poverty,
	diff_persons_phys_active_coc_age * @cost AS ben_persons_phys_active_coc_age,
	diff_persons_phys_active_coc_race * @cost AS ben_persons_phys_active_coc_race
INTO #comparison
FROM #a;

-- saves comparisons
BEGIN TRANSACTION

UPDATE scenario_comparison
WITH (SERIALIZABLE)

SET base_cost_persons_phys_active = b.base_cost_persons_phys_active,
	build_cost_persons_phys_active = b.build_cost_persons_phys_active,
	diff_persons_phys_active = b.diff_persons_phys_active,
	diff_persons_phys_active_coc = b.diff_persons_phys_active_coc,
	diff_persons_phys_active_coc_poverty = b.diff_persons_phys_active_coc_poverty,
	diff_persons_phys_active_coc_age = b.diff_persons_phys_active_coc_age,
	diff_persons_phys_active_coc_race = b.diff_persons_phys_active_coc_race,
	ben_persons_phys_active = b.ben_persons_phys_active,
	ben_persons_phys_active_coc = b.ben_persons_phys_active_coc,
	ben_persons_phys_active_coc_poverty = b.ben_persons_phys_active_coc_poverty,
	ben_persons_phys_active_coc_age = b.ben_persons_phys_active_coc_age,
	ben_persons_phys_active_coc_race = b.ben_persons_phys_active_coc_race,
	cost_phys_activ = @cost,
	phys_activity_threshold = @threshold,
	coc_age_thresh = @threshold_age,
	coc_race_thresh = @threshold_race,
	coc_poverty_thresh = @threshold_poverty,
	coc_hisp_thresh = @threshold_hisp,
	last_update_date = getdate()
FROM scenario_comparison AS a,
	#comparison AS b
WHERE a.scenario_id_base = @base_scenario_id
	AND a.scenario_id_build = @build_scenario_id
	AND a.analysis_id = @analysis_id
	AND a.scenario_year = @scenario_year

IF @@rowcount = 0
	INSERT INTO scenario_comparison (
		scenario_id_base,
		scenario_id_build,
		analysis_id,
		scenario_year,
		-- base_persons_phys_active,
		-- build_persons_phys_active,
		base_cost_persons_phys_active,
		build_cost_persons_phys_active,
		diff_persons_phys_active,
		diff_persons_phys_active_coc,
		diff_persons_phys_active_coc_poverty,
		diff_persons_phys_active_coc_age,
		diff_persons_phys_active_coc_race,
		ben_persons_phys_active,
		ben_persons_phys_active_coc,
		ben_persons_phys_active_coc_poverty,
		ben_persons_phys_active_coc_age,
		ben_persons_phys_active_coc_race,
		cost_phys_activ,
		phys_activity_threshold,
		coc_age_thresh,
		coc_race_thresh,
		coc_poverty_thresh,
		coc_hisp_thresh,
		last_update_date
		)
	SELECT @base_scenario_id,
		@build_scenario_id,
		@analysis_id,
		@scenario_year,
		-- base_persons_phys_active,
		-- build_persons_phys_active,
		base_cost_persons_phys_active,
		build_cost_persons_phys_active,
		diff_persons_phys_active,
		diff_persons_phys_active_coc,
		diff_persons_phys_active_coc_poverty,
		diff_persons_phys_active_coc_age,
		diff_persons_phys_active_coc_race,
		ben_persons_phys_active,
		ben_persons_phys_active_coc,
		ben_persons_phys_active_coc_poverty,
		ben_persons_phys_active_coc_age,
		ben_persons_phys_active_coc_race,
		@cost,
		@threshold,
		@threshold_age,
		@threshold_race,
		@threshold_poverty,
		@threshold_hisp,
		getdate()
	FROM #comparison

COMMIT TRANSACTION

GO
/****** Object:  StoredProcedure [dbo].[run_physical_activity_processor]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_physical_activity_processor] @base_scenario_id INT,
	@build_scenario_id INT,
	@analysis_id INT,
	@scenario_year INT
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON

DECLARE @overall_start_date DATETIME = GETDATE();

PRINT 'Started run_physical_activity_processor: ' + CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

DECLARE @start_date DATETIME

--dbcc dropcleanbuffers;
SET @start_date = GETDATE();

EXEC run_physical_activity_summary @base_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_physical_activity_summary base: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

SET @start_date = GETDATE();

EXEC run_physical_activity_summary @build_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_physical_activity_summary build: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

SET @start_date = GETDATE();

EXEC run_physical_activity_comparison @base_scenario_id,
	@build_scenario_id,
	@analysis_id,
	@scenario_year

PRINT CHAR(9) + 'time to  run_physical_activity_comparison: ' + CONVERT(VARCHAR, (GETDATE() - @start_date), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

PRINT 'Finished run_physical_activity_processor ' + CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date
			), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;

GO
/****** Object:  StoredProcedure [dbo].[run_physical_activity_summary]    Script Date: 6/28/2018 11:07:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[run_physical_activity_summary] @scenario_id INT = 257,
	@analysis_id INT = 45,
	@scenario_year INT = 2013
	WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;

--set statistics xml on
DECLARE @overall_start_date DATETIME = GETDATE(), @timer DATETIME = GETDATE();
DECLARE @n INT;

PRINT 'run_physical_activity_summary at ' + CONVERT(VARCHAR, @overall_start_date, 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

DECLARE @threshold FLOAT;
DECLARE @coc_age_thresh INT,
	@coc_race_thresh INT,
	@coc_poverty_thresh FLOAT,
	@coc_hisp_thresh INT;

SELECT @threshold = phys_activity_threshold,
	@coc_age_thresh = coc_age_thresh,
	@coc_race_thresh = coc_race_thresh,
	@coc_poverty_thresh = coc_poverty_thresh,
	@coc_hisp_thresh = coc_hisp_thresh
FROM analysis_parameters
WHERE analysis_id = @analysis_id
	AND comparison_year = @scenario_year;

PRINT '@threshold ' + CAST(@threshold AS VARCHAR(22)) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

-- ###############################################################################
-- walk to transit plus school bus
SELECT t.*,
	persons.lu_person_id
INTO #trips_walk
FROM bca_abm.trip_ij AS t
-- join to tour_ij_person EXPANDS the base recordset to ONE rec per PartySize of trip_ij
INNER JOIN bca_abm.tour_ij_person AS persons
	ON t.tour_ij_id = persons.tour_ij_id
WHERE t.scenario_id = @scenario_id
	AND (
		t.mode_id BETWEEN 11
			AND 15
		OR t.mode_id = 26
		) -- walk to transit plus school bus
	AND persons.scenario_id = @scenario_id;

SELECT lu_person_id,
	isnull(sum(cast(isnull(tap1.time_boarding_actual, 0) AS FLOAT)) + sum(cast(isnull(tap2.time_alighting_actual, 0) AS FLOAT)), 0) AS active_time
INTO #transit_walk
FROM #trips_walk trips
INNER JOIN bca_abm.transit_tap_walk AS tap1
	ON trips.orig_geography_zone_id = tap1.geography_zone_id
		AND trips.board_transit_tap_id = tap1.transit_tap_id
INNER JOIN bca_abm.transit_tap_walk AS tap2
	ON trips.dest_geography_zone_id = tap2.geography_zone_id
		AND trips.alight_transit_tap_id = tap2.transit_tap_id
WHERE trips.scenario_id = @scenario_id
	AND tap1.scenario_id = @scenario_id
	AND tap2.scenario_id = @scenario_id
GROUP BY lu_person_id;

SELECT @n = count(*)
FROM #transit_walk;

PRINT '#transit_walk ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT @n = count(*)
FROM #transit_walk
WHERE active_time > @threshold;

PRINT '#transit_walk active ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

-- ###############################################################################
-- knr and pnr  
SELECT t.*,
	persons.lu_person_id
INTO #trips_xnr
FROM bca_abm.trip_ij AS t
-- join to tour_ij_person EXPANDS the base recordset to ONE rec per PartySize of trip_ij
INNER JOIN bca_abm.tour_ij_person AS persons
	ON t.scenario_id = persons.scenario_id
		AND t.tour_ij_id = persons.tour_ij_id
WHERE t.scenario_id = @scenario_id
	AND (
		t.mode_id BETWEEN 16
			AND 25
		) -- knr and pnr
	AND persons.scenario_id = @scenario_id;

SELECT lu_person_id,
	isnull(sum(CASE 
				-- inbound means towards home (not towards CBD)
				WHEN inbound = 1
					THEN cast(isnull(tap1.time_boarding_actual, 0) AS FLOAT)
				WHEN inbound = 0
					THEN cast(isnull(tap2.time_alighting_actual, 0) AS FLOAT)
				END), 0) AS active_time
INTO #transit_xnr
FROM #trips_xnr trips
LEFT JOIN bca_abm.transit_tap_walk AS tap1
	ON tap1.scenario_id = @scenario_id
		AND trips.orig_geography_zone_id = tap1.geography_zone_id
		AND trips.board_transit_tap_id = tap1.transit_tap_id
LEFT JOIN bca_abm.transit_tap_walk AS tap2
	ON tap2.scenario_id = @scenario_id
		AND trips.dest_geography_zone_id = tap2.geography_zone_id
		AND trips.alight_transit_tap_id = tap2.transit_tap_id
WHERE trips.scenario_id = @scenario_id
GROUP BY lu_person_id;

SELECT @n = count(*)
FROM #transit_xnr;

PRINT '#transit_xnr ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT @n = count(*)
FROM #transit_xnr
WHERE active_time > @threshold;

PRINT '#transit_xnr active ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

-- ###############################################################################
-- walk_and_bike
SELECT persons.lu_person_id,
	sum(trip_time) AS active_time
INTO #walk_and_bike
FROM bca_abm.trip_ij AS t
INNER JOIN bca_abm.tour_ij_person AS persons
	ON t.tour_ij_id = persons.tour_ij_id
WHERE t.scenario_id = @scenario_id
	AND t.mode_id IN (9, 10)
	AND persons.scenario_id = @scenario_id
GROUP BY lu_person_id;

SELECT @n = count(*)
FROM #walk_and_bike;

PRINT '#walk_and_bike ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT @n = sum(active_time)
FROM #walk_and_bike;

PRINT '#walk_and_bike active time ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT @n = count(*)
FROM #walk_and_bike
WHERE active_time > @threshold;

PRINT '#walk_and_bike active ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

-- ###############################################################################
-- active_persons
SELECT *
INTO #all_activity
FROM #transit_walk

UNION ALL

SELECT *
FROM #transit_xnr

UNION ALL

SELECT *
FROM #walk_and_bike;

SELECT lu_person_id,
	sum(active_time) AS active_time
INTO #person_activity
FROM #all_activity
GROUP BY lu_person_id;

SELECT @n = count(*)
FROM #person_activity;

PRINT '#person_activity ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT *
INTO #active_persons
FROM #person_activity
WHERE active_time > @threshold;

SELECT @n = count(*)
FROM #active_persons;

PRINT '#active_persons ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

-- ###############################################################################
-- active_persons_demog
SELECT a.lu_person_id,
	(
		CASE 
			WHEN hh.poverty < @coc_poverty_thresh
				THEN 1
			ELSE 0
			END
		) AS coc_poverty,
	(
		CASE 
			WHEN p.age >= @coc_age_thresh
				THEN 1
			ELSE 0
			END
		) AS coc_age,
	(
		CASE 
			WHEN (p.hisp_id > @coc_hisp_thresh)
				OR (p.race_id > @coc_race_thresh)
				THEN 1
			ELSE 0
			END
		) AS coc_race,
	(
		CASE 
			WHEN (p.hisp_id > @coc_hisp_thresh)
				OR (p.race_id > @coc_race_thresh)
				OR (p.age >= @coc_age_thresh)
				OR (hh.poverty < @coc_poverty_thresh)
				THEN 1
			ELSE 0
			END
		) AS coc,
	a.active_time
INTO #active_persons_demog
FROM #active_persons AS a
LEFT JOIN bca_abm.person AS p
	ON @scenario_id = p.scenario_id
		AND a.lu_person_id = p.lu_person_id
LEFT JOIN bca_abm.hh AS hh
	ON @scenario_id = hh.scenario_id
		AND p.lu_hh_id = hh.lu_hh_id

SELECT @n = count(*)
FROM #active_persons_demog;

PRINT '#active_persons_demog ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

-- ###############################################################################
-- active_persons_demog
SELECT @analysis_id AS analysis_id,
	@scenario_id AS scenario_id,
	count(*) AS persons_phys_active,
	coc,
	coc_poverty,
	coc_age,
	coc_race
INTO #active_persons_summary
FROM #active_persons_demog
GROUP BY coc,
	coc_poverty,
	coc_age,
	coc_race;

SELECT @n = count(*)
FROM #active_persons_summary;

PRINT '#active_persons_summary ' + FORMAT(@n, N'N0') + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date), 114) + '. Time since last print: ' + CONVERT(VARCHAR, (GETDATE() - @timer), 114);

RAISERROR (
		'-',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();

SELECT *
FROM #active_persons_summary
ORDER BY coc,
	coc_poverty,
	coc_age,
	coc_race;

SELECT sum(persons_phys_active) AS persons_phys_active_tot,
	sum(persons_phys_active * coc) AS persons_phys_active_coc,
	sum(persons_phys_active * coc_poverty) AS persons_phys_active_coc_poverty,
	sum(persons_phys_active * coc_age) AS persons_phys_active_coc_age,
	sum(persons_phys_active * coc_race) AS persons_phys_active_coc_race
INTO #summary
FROM #active_persons_summary

SELECT *
FROM #summary

DECLARE @persons_phys_active_tot FLOAT,
	@persons_phys_active_coc FLOAT,
	@persons_phys_active_coc_poverty FLOAT,
	@persons_phys_active_coc_age FLOAT,
	@persons_phys_active_coc_race FLOAT;

SELECT @persons_phys_active_tot = isnull(persons_phys_active_tot, 0),
	@persons_phys_active_coc = isnull(persons_phys_active_coc, 0),
	@persons_phys_active_coc_poverty = isnull(persons_phys_active_coc_poverty, 0),
	@persons_phys_active_coc_age = isnull(persons_phys_active_coc_age, 0),
	@persons_phys_active_coc_race = isnull(persons_phys_active_coc_race, 0)
FROM #summary;

-- saves summary
BEGIN TRANSACTION

UPDATE scenario_summary
WITH (SERIALIZABLE)

SET persons_phys_active_tot = @persons_phys_active_tot,
	persons_phys_active_coc = @persons_phys_active_coc,
	persons_phys_active_coc_poverty = @persons_phys_active_coc_poverty,
	persons_phys_active_coc_age = @persons_phys_active_coc_age,
	persons_phys_active_coc_race = @persons_phys_active_coc_race,
	last_update_date = getdate()
WHERE analysis_id = @analysis_id
	AND scenario_id = @scenario_id
	AND scenario_year = @scenario_year;

IF @@rowcount = 0
	INSERT INTO scenario_summary (
		scenario_id,
		analysis_id,
		scenario_year,
		persons_phys_active_tot,
		persons_phys_active_coc,
		persons_phys_active_coc_poverty,
		persons_phys_active_coc_age,
		persons_phys_active_coc_race,
		last_update_date
		)
	SELECT @scenario_id,
		@analysis_id,
		@scenario_year,
		@persons_phys_active_tot,
		@persons_phys_active_coc,
		@persons_phys_active_coc_poverty,
		@persons_phys_active_coc_age,
		@persons_phys_active_coc_race,
		getdate()
	FROM #summary

COMMIT TRANSACTION

PRINT 'Finished run_physical_activity_summary at ' + CONVERT(VARCHAR, GETDATE(), 114) + '. Elapsed time: ' + CONVERT(VARCHAR, (GETDATE() - @overall_start_date
			), 114);

RAISERROR (
		'',
		10,
		1
		)
WITH NOWAIT;
SET @timer = GETDATE();


GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'There is code that selects from this table with just analysis_id and comparison_year that expect and only handle a single result. Addding this to force this expectation to be met. Should/could be the primary_key. Do NOT add id to this since that will eliminate constraint on analysis_id, comparsion_year uniqueness' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'analysis_parameters', @level2type=N'CONSTRAINT',@level2name=N'IX_analysis_parameters'
GO
