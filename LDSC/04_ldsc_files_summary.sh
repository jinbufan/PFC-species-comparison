#!/usr/bin/bash
input="/data/work/Human/03.LDSC/01-human_specific_peak/04_ldsc_files/bed_filenames.txt"
while IFS= read -r line
    do
       echo "$line /data/work/Human/03.LDSC/01-human_specific_peak/03_ldsc/$line.ldsc." >> /data/work/Human/03.LDSC/01-human_specific_peak/04_ldsc_files/all.ldcts
    done < "$input"