#!/bin/bash

set -o nounset
set -o errexit


# Stop and disable service
systemctl stop sim7600_4G_hat_init.timer || true
systemctl disable sim7600_4G_hat_init.timer
systemctl daemon-reload