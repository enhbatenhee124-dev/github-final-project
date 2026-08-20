#!/bin/bash
#
# simple-interest.sh
# A simple calculator that computes Simple Interest based on user input.
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "=== Simple Interest Calculator ==="

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo ""
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "Simple Interest  : $simple_interest"
