@echo off
setlocal enabledelayedexpansion
set args=%*
:: replace problem characters in arguments
set args=%args:"='%
set args=%args:(=`(%
set args=%args:)=`)%
set invalid="='
if !args! == !invalid! ( set args= )
powershell -noprofile -ex unrestricted "& 'C:\Users\Jithendhar\scoop\apps\scoop\current\bin\scoop.ps1'  %args%;exit $lastexitcode"
