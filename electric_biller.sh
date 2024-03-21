#!/bin/bash
echo "Enter CustomerID: "
read customer_id

echo "Enter CustomerName: "
read customer_name

echo "Enter UnitConsumed: "
read unit_consumed

if ((unit_consumed <= 120)); then
cost_per_unit=5
elif ((unit_consumed > 120 && unit_consumed <= 199)); then
cost_per_unit=10
elif ((unit_consumed > 199 && unit_consumed < 400)); then
cost_per_unit=15
elif ((unit_consumed >= 400 && unit_consumed < 600)); then
cost_per_unit=18
else
cost_per_unit=20
fi
total_cost=$((unit_consumed * cost_per_unit))

echo "CustomerID: $customer_id"
echo "CustomerName: $customer_name"
echo "UnitConsumed: $unit_consumed"
echo "TotalCost: $total_cost"
