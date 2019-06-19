## S<sub>N</sub>2 Files

This folder contains transition states for the proposed S<sub>N</sub>2-like glycosylation discussed in the paper.  All structures were full optimized at B3LYP-D3(BJ)/6-31G\*/PCM(THF) and verified to have exactly one imaginary frequency. Four letter codes refer to the sugar conformations and relative orientations (please see the SI document for a detailed explanation).

To calculate the glycosylation KIEs, run the `kie.sh` script.  You will need to change the path to the PyQuiver program.  To calculate the relative energies of the transition states, run the `energy.sh` script.

### Directory Contents

| Filename  | Description |
| ------------- | ------------- |
| `clay_new-glu_gluC6-*-Na2_1Me2O-bisCF3-ts-b3lyp_d3bj-631gd-pcm_thf.out` | transition states |
| `clay_new-glu_gluC6-bisCF3-sm-b3lyp_d3bj-631gd-pcm_thf.out`  | ground state reference structure |
| `kie.sh` | script to generate KIE predictions |
| `kie.csv` | KIE predictions |
| `clay-sn2.config` | PyQuiver configuration file for KIE predictions |
| `energy.sh` | script to extract energies of conformations |
| `energy.csv` | energies of glucose cation conformations |
| `analyze2.awk` | supporting script for extraction of energies |
| `README.md` | this description |
