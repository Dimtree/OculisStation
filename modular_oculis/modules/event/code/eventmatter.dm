/// Event SM that reports misleading information in CIMS and is doomed to explode
/obj/machinery/power/supermatter_crystal/eventmatter
	name = "anomalous supermatter crystal"
	desc = span_danger("\improper Something is very wrong.")
	explosion_power = 3
	warning_channel = RADIO_CHANNEL_COMMON
	delam_priority = 1

/obj/machinery/power/supermatter_crystal/eventmatter/sm_ui_data()
	var/list/data = ..()

	var/list/formatted_gas_percentage = list()
	for (var/datum/gas/gas_path as anything in subtypesof(/datum/gas))
		formatted_gas_percentage[gas_path] = rand(0, 100) / 100
	data["gas_composition"] = formatted_gas_percentage
	data["gas_total_moles"] = rand(1, 2000)
	data["gas_temperature"] = rand(1, 10000)
	data["temp_limit"] = rand(1, 10000)
	data["waste_multiplier"] = rand(0, 20)
	data["absorbed_ratio"] = rand(1, 100) / 100

	data["integrity_factors"] = list()
	data["internal_energy_factors"] = list()
	data["zap_transmission_factors"] = list()
	data["temp_limit_factors"] = list()
	data["waste_multiplier_factors"] = list()
	return data
