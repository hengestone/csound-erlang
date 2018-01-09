<CsoundSynthesizer>

<CsInstruments>
     instr 1
kenv    linseg    10000, p3, 0
ar    oscil    kenv, p4, 1
     out    ar
     endin
</CsInstruments>

<CsScore>
f 0 36000
f 1 0 1024 10 1

i 1 0   0.5 387
i 1 0.5 0.5 220
i 1 1   0.5 387
</CsScore>

</CsoundSynthesizer>
