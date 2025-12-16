#!/bin/bash
if hyprctl devices -j | grep -q '"capsLock": true'; then
    echo "CAPS LOCK"
fi
