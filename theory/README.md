## Effect of DFT

To determine the effect of the choice of density functional theory (DFT), the lowest energy transition state conformation (`BCDR`) as judged by B3LYP-D3(BJ)/6-31G\*/PCM(THF) was re-optimized using other DFTs.  The analogous transition states are provided in this folder.  All structures were full optimized using the 6-31G\* basis set with PCM(THF) and verified to have exactly one imaginary frequency.

To calculate the glycosylation KIEs, run the `kie.sh` script.  You will need to change the path to the PyQuiver program.  To calculate the relative energies of the transition states, run the `energy.sh` script.

### Directory Contents

| Filename  | Description |
| ------------- | ------------- |
| `clay_new-glu_gluC6-BCDR-Na2_1Me2O-bisCF3-ts-*-631gd-pcm_thf.out` | S<sub>N</sub>2 transition states calculated using different DFTs |
| `clay_new-glu_gluC6-bisCF3-sm-*-631gd-pcm_thf.out`  | ground state reference structures at corresponding level of theory |
| `kie.sh` | script to generate KIE predictions |
| `kie.csv` | KIE predictions |
| `clay-sn2.config` | PyQuiver configuration file for KIE predictions |
| `geometry.sh` | script to extract geometric parameters |
| `geometry.csv` | geometric parameters across all transition states |
| `analyze2.awk` | supporting script for extraction of geometric parameters |
| `README.md` | this description |
