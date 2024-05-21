@echo off
setlocal enabledelayedexpansion

set "STARTING_PORT=8080"
set "NUM_PROXIES=16"

set /a "ending_port=STARTING_PORT+NUM_PROXIES-1"

for /l %%i in (%STARTING_PORT%,1,%ending_port%) do (
	start cmd /k node proxy-login-automator.js ^
		-local_host * ^
		-local_port %%i ^
		-remote_host ultra.marsproxies.com ^
		-remote_port 44443 ^
		-marsproxies_random_session true ^
		-usr USER -pwd PASSWORD_country-au,nz,sg,hk,mo,tw,kr,jp,us,ca_lifetime-168h
)

endlocal
@echo on
