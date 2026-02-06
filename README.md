## Data integrate
01_RNA_dataset_integrate.ipynb -- Integrate snRNA-seq data across species  

02_ATAC_dataset_integrate.ipynb -- Integrate snATAC-seq data across species  

03_Correlation_in_RNA_ATAC_level.ipynb -- Related to Figure S3  


## LDSC
01_bed file generate generate.R.txt  --  Create peak input file( BED files) based on cell type  

02_make_annot.sh  --  Creates LDSC annotation files from BED files for chromosomes 1-22  

03_ldsc.sh  -- Run LDSC analysis on each BED file and chromosome (1-22) to calculate LD score  

04_ldsc_files_summary.sh  --  Create LDSC configuration files (all. ldcts)  

05_regression.sh  --  Perform partitioned heritability analysis using LDSC  

06_ending plot.R.txt  --  Plot of LDSC calculation results  


## Other analysis
phastConScore.ipynb -- Related to Figure 2C  

add_p2g.ipynb -- Identify peak-to-gene links among closely related cell types more accurately  

HIC-analysis -- Related to Figure S6G

For code about gkmSVM training and explaining, please see: https://github.com/GreenleafLab/scScalpChromatin/tree/main/GWAS/gkmSVM  
(Greenleaf-nature genetic-Support-Function.R, plotting.R and misc_helper.R are also from DOI: 10.1038/s41588-023-01445-4)
