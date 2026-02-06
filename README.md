###################################################
## The following is a description of each script ##
###################################################

## for data integrate
01_RNA_dataset_integrate.ipynb -- Integrate snRNA-seq data across species
02_ATAC_dataset_integrate.ipynb -- Integrate snATAC-seq data across species
03_Correlation_in_RNA_ATAC_level.ipynb -- Related to Figure S3


## for LDSC
01_bed file generate generate.R.txt  --  Create peak input file( BED files) based on cell type
02_make_annot.sh  --  Creates LDSC annotation files from BED files for chromosomes 1-22
03_ldsc.sh  -- Run LDSC analysis on each BED file and chromosome (1-22) to calculate LD score
04_ldsc_files_summary.sh  --  Create LDSC configuration files (all. ldcts)
05_regression.sh  --  Perform partitioned heritability analysis using LDSC  
06_ending plot.R.txt  --  Plot of LDSC calculation results


## other analysis
phastConScore.ipynb -- Related to Figure 2C
add_p2g.ipynb -- Identify peak-to-gene links among closely related cell types more accurately
