#!/usr/bin/bash
input="/data/work/Human/03.LDSC/01-human_specific_peak/04_ldsc_files/bed_filenames.txt"
while IFS= read -r line
do
    for j in {1..22}
        do
            /data/work/Human/03.LDSC/ldsc-envs/miniconda3/bin/python /data/work/Human/03.LDSC/ldsc-software/ldsc3/ldsc.py \
            --l2 \
            --bfile /data/work/Human/03.LDSC/ldsc-software/ldsc-ref/1000G_EUR_Phase3_plink/1000G.EUR.QC.${j} \
            --annot /data/work/Human/03.LDSC/01-human_specific_peak/02_make_annot/$line.bed.${j}.annot.gz \
            --ld-wind-cm 1 \
            --thin-annot  --out  /data/work/Human/03.LDSC/01-human_specific_peak/03_ldsc/$line.ldsc.${j}
        done
done < "$input"