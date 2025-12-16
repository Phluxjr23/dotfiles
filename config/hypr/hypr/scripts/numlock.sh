#!/bin/bash
if hyprctl devices -j | grep -q '"numLock": true'; then
    echo "NUM LOCK"
fi
