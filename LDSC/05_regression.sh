#!/usr/bin/bash
input="/data/work/Human/03.LDSC/ldsc-software/ldsc-ref/sumstats_v1.list.txt"
while IFS= read -r line
    do
    IFS=$'\t' read -r -a array <<< "$line"
    /data/work/Human/03.LDSC/ldsc-envs/miniconda3/bin/python /data/work/Human/03.LDSC/ldsc-software/ldsc3/ldsc.py  \
        --h2-cts ${array[1]} \
        --ref-ld-chr /data/work/Human/03.LDSC/ldsc-software/ldsc-ref/1000G_EUR_Phase3_baseline/baseline. \
        --out /data/work/Human/03.LDSC/01-human_specific_peak/05_regression/${array[0]}.regressions.out \
        --ref-ld-chr-cts /data/work/Human/03.LDSC/01-human_specific_peak/04_ldsc_files/all.ldcts  \
        --w-ld-chr /data/work/Human/03.LDSC/ldsc-software/ldsc-ref/weights_hm3_no_hla/weights. \
        --frqfile-chr /data/work/Human/03.LDSC/ldsc-software/ldsc-ref/1000G_Phase3_frq/1000G.EUR.QC. 
    done < "$input"