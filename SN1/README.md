## S<sub>N</sub>1 Files

This folder contains various optimized conformations of the glucose cation
optimized at B3LYP-D3(BJ)/6-31G\*/PCM(THF).  To calculate the expected EIE
for the ionization process, run the `kie.sh` script.  You will need to
change the path to the PyQuiver program.  To calculate the energies of
the cations, run the `energy.sh` script.

### Directory Contents

| Filename  | Description |
| ------------- | ------------- |
| `clay-glucose_cation-*-b3lyp_d3bj-631gd-pcm_thf.out` | optimized glucose cation conformations |
| `clay_new-glu_gluC6-bisCF3-sm-b3lyp_d3bj-631gd-pcm_thf.out`  | ground state reference structure |
| `kie.sh` | script to generate EIE predictions |
| `kie.csv` | KIE predictions |
| `clay-sn1.config` | PyQuiver configuration file for EIE predictions |
| `energy.sh` | script to extract energies of conformations |
| `energy.csv` | energies of glucose cation conformations |
| `analyze.awk` | supporting script for extraction of energies |
| `README.md` | this description |
