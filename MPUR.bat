node proxy-login-automator.js ^
	-local_host * ^
    -local_port 8080 ^
    -remote_host ultra.marsproxies.com ^
    -remote_port 44443 ^
	-marsproxies_random_session true ^
    -usr USER -pwd PASSWORD
