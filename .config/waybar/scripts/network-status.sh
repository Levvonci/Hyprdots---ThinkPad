#!/bin/bash

# Trova l'interfaccia Wi-Fi attiva
INTERFACE=$(nmcli -t -f DEVICE,TYPE,STATE device | awk -F: '$2=="wifi" && $3=="connected" {print $1}')

# Se esiste un'interfaccia Wi-Fi attiva
if [ -n "$INTERFACE" ]; then
    SSID=$(nmcli -t -f GENERAL.CONNECTION device show "$INTERFACE" | cut -d: -f2-)
    if [ -n "$SSID" ]; then
        echo " $SSID"
    else
        echo "󰤮 Nessuna rete"
    fi
else
    echo "󰤮 Disconnesso"
fi

