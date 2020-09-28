#!/bin/bash

set -o nounset
set -o errexit


# Make collector script executable
chmod +x "/usr/local/sbin/sim7600_4G_hat_init"

# Shutdown service just in case
systemctl stop sim7600_4G_hat_init.timer || true
systemctl disable sim7600_4G_hat_init.timer

# Enable service and start
systemctl daemon-reload
systemctl enable sim7600_4G_hat_init.timer
systemctl start sim7600_4G_hat_init.timer