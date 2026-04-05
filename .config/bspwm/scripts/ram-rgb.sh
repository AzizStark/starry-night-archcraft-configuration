#!/usr/bin/env bash

# ENE DRAM RGB controller script for XPG Lancer DDR5
# Bus: /dev/i2c-15, Hub: 0x77, RAM: 0x70-0x76

BUS=15
HUB=0x77
RAM=0x70  # first stick, try 0x71 if no effect

# Colors (hex)
R=${1:-255}
G=${2:-0}
B=${3:-0}

ene_write_reg() {
    local dev=$1
    local reg=$2
    local val=$3
    # Write register address (16-bit byte-swapped) to reg 0x00
    local reg_swapped=$(( ((reg & 0xFF) << 8) | ((reg >> 8) & 0xFF) ))
    sudo i2cset -y $BUS $dev 0x00 $reg_swapped w
    # Write value to reg 0x01
    sudo i2cset -y $BUS $dev 0x01 $val b
}

# Unlock hub - write quick to 0x77
sudo i2cset -y $BUS $HUB 0x00 0x00 b 2>/dev/null

# Set slot index (slot 0)
ene_write_reg $HUB 0x80F8 0x00

# Set i2c address of RAM stick
ene_write_reg $HUB 0x80F9 $(( RAM << 1 ))

# Now write RGB color to RAM controller
# ENE color registers: 0x8000=R, 0x8001=G, 0x8002=B
ene_write_reg $RAM 0x8000 $R
ene_write_reg $RAM 0x8001 $G
ene_write_reg $RAM 0x8002 $B

echo "Set RAM RGB to R=$R G=$G B=$B"
