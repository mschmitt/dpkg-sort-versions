#!/usr/bin/env bash
set -o errexit

function errorexit() {
	trap - ERR
	printf "Error on line %s\n" "$(caller)"
	exit 1
}
trap errorexit ERR

function dpkg_version_isgreater() {
	local first="${1}"
	local than_second="${2}"
	if dpkg --compare-versions "${first}" gt "${than_second}"
	then
		return 0
	fi
	return 1
}

function sort_by_dpkg_version() {
	declare -a data
	while read -r line
	do
		data+=("${line}")
	done

	local len=${#data[@]}
	for ((i = 0; i<len; i++))
	do
		for ((j = 0; j<len-i-1; j++))
		do
			if dpkg_version_isgreater "${data[j]}" "${data[$((j+1))]}"
			then
				local swapval="${data[j]}"
				data[$j]="${data[$((j+1))]}"
				data[$((j+1))]="${swapval}"
			fi
		done
	done

	for ((i = 0; i<len; i++))
	do
		printf "%s\n" "${data[i]}"
	done
}

printf "Sorted from lowest (oldest) to highest (latest):\n" >&2
sort_by_dpkg_version
