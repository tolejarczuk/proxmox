#!/usr/bin/env bash

systemctl stop pve-cluster
systemctl stop corosync
pmxcfs -l
rm -rf /etc/pve/corosync.conf
rm -rf /etc/corosync/*
killall pmxcfs
rm -rf /etc/pve/nodes/*
systemctl start pve-cluster