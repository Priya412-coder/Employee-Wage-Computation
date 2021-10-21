x#!/bin/bash -x

isPartTime=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHr=20;
NumWorkingDay=20;

totalEmpHr=0;
totalWorkingDay=0;

function getWorkingHrs( ) {
 case $1 in
	$isFullTime)
	       workingHrs=8;
		;;
	$isPartTime)
		workingHrs=4;
		;;
	 *)
		workingHrs=0
		;;
 esac

}

while [[ $totalWorkingHrs -lt $maxHrsInMonth &&
		$totalWorkingDay -lt $NumWorkingDay ]]

do
   (( totalWorkingDay++ ))
   getWorkingHrs $((RANDOM%3))
   totalWorkingHours=$((totalWorkingHrs + workingHrs));
done
    totalSalary=$(($totalWorkingHours*$empRatePerHr));
