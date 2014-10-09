#!/bin/bash

uwsgi --master --emperor /etc/barbican/vassals --logto /var/log/barbican/barbican-api.log &
tail -f /var/log/barbican/barbican-api.log