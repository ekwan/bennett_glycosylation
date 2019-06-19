## Effect of Diffuse Functions

The transition states in the `theory` folder were re-optimized with the `custom` basis.  This basis is the same as 6-31G\*, but with one extra diffuse function on oxygen from 6-31+G\*.  These extra functions were applied to the sulfonate oxygens as well as the alkoxide oxygen.

All structures were full optimized using the 6-31G\* basis set with PCM(THF) and verified to have exactly one imaginary frequency.

To calculate the glycosylation KIEs, run the `kie.sh` script.  You will need to change the path to the PyQuiver program.  To calculate some geometric parameters of the transition structures, run the `geometry.sh` script.

### Directory Contents

| Filename  | Description |
| ------------- | ------------- |
| `clay_new-glu_gluC6-BCDR-Na2_1Me2O-bisCF3-ts-*-custom-pcm_thf.out` | S<sub>N</sub>2 transition states calculated using different DFTs with the `custom` basis set |
| `clay_new-glu_gluC6-bisCF3-*-b1b95-custom-pcm_thf.out`  | ground state reference structures at corresponding level of theory |
| `kie.sh` | script to generate KIE predictions |
| `kie.csv` | KIE predictions |
| `clay-sn2.config` | PyQuiver configuration file for KIE predictions |
| `geometry.sh` | script to extract geometric parameters |
| `geometry.csv` | geometric parameters across all transition states |
| `analyze2.awk` | supporting script for extraction of geometric parameters |
| `README.md` | this description |