#!/bin/bash


echo "Welcome to the Bash Scripit"
echo

#checking system uptime
echo "#########"
echo "The Uptime of the system :"
Uptime
echo


#Memory Uilization
echo "#########"
echo "Memory Utilization"
free -m
echo

#Disk Utlization
echo "#############"
echo "Disk Utilization"
df -h
echo 

#List The Used Comands
echo "##################"
echo "list The Details"
ls -la
echo



