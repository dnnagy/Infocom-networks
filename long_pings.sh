#!/bin/bash
TSEC1H=3600
TSEC4H=$((4*${TSEC1H}))
TSEC12H=$((12*${TSEC1H}))
TSEC1D=$((24*${TSEC1H}))

UNIHANNOVER="130.75.2.151"
TWWE="www.theworldsworstwebsiteever.com"

nohup ping ${UNIHANNOVER} -w${TSEC1H} > ./unihannover-1h.longpingdata &
nohup ping ${TWWE} -w${TSEC1H} > ./twwe-1h.longpingdata &
nohup ping ${UNIHANNOVER} -w${TSEC4H} > ./unihannover-4h.longpingdata &
nohup ping ${TWWE} -w${TSEC4H} > ./twwe-4h.longpingdata &
nohup ping ${UNIHANNOVER} -w${TSEC12H} > ./unihannover-12h.longpingdata &
nohup ping ${TWWE} -w${TSEC12H} > ./twwe-12h.longpingdata &
nohup ping ${UNIHANNOVER} -w${TSEC1D} > ./unihannover-1d.longpingdata &
nohup ping ${TWWE} -w${TSEC1D} > ./twwe-1d.longpingdata &