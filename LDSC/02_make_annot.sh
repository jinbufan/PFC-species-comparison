#!/usr/bin/bash
cd /data/work/Human/03.LDSC/01-human_specific_peak/01_bed_files/
for i in *.bed
    do
    for j in {1..22}
        do
        /data/work/Human/03.LDSC/ldsc-envs/miniconda3/bin/python /data/work/Human/03.LDSC/ldsc-software/ldsc3/make_annot.py \
        --bed-file ${i} \
        --bimfile /data/work/Human/03.LDSC/ldsc-software/ldsc-ref/1000G_EUR_Phase3_plink/1000G.EUR.QC.${j}.bim \
        --annot-file /data/work/Human/03.LDSC/01-human_specific_peak/02_make_annot/${i}.${j}.annot.gz
        done
done
        