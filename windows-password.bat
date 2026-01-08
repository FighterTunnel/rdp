@echo off

net user admin %Password123%
net user administrator %Password123%

del "%~f0"
