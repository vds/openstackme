#!/bin/bash
set -ex

virsh net-define cloud.xml
virsh net-autostart cloud
