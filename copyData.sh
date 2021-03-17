#!/bin/bash

source_Dir=/Users/mohamed/Desktop/subjects
target_Dir=/Users/mohamed/Desktop/output

# ./main_mo con01
# mv fs_copy con01

for i in {01..17};

  do echo "con$i";

  mkdir $target_Dir
  mkdir $target_Dir/con$i
  mkdir $target_Dir/con$i/nii

  mri_convert $source_Dir/con$i/mri/benson14_angle.mgz $target_Dir/con$i/nii/benson14_angle.nii.gz
  mri_convert $source_Dir/con$i/mri/benson14_eccen.mgz $target_Dir/con$i/nii/benson14_eccen.nii.gz
  mri_convert $source_Dir/con$i/mri/benson14_sigma.mgz $target_Dir/con$i/nii/benson14_sigma.nii.gz
  mri_convert $source_Dir/con$i/mri/benson14_varea.mgz $target_Dir/con$i/nii/benson14_varea.nii.gz

done



for i in {01..15};
  do echo "con$i";

  mkdir $target_Dir/cat$i
  mkdir $target_Dir/cat$i/nii

  mri_convert $source_Dir/cat$i/mri/benson14_angle.mgz $target_Dir/cat$i/nii/benson14_angle.nii.gz
  mri_convert $source_Dir/cat$i/mri/benson14_eccen.mgz $target_Dir/cat$i/nii/benson14_eccen.nii.gz
  mri_convert $source_Dir/cat$i/mri/benson14_sigma.mgz $target_Dir/cat$i/nii/benson14_sigma.nii.gz
  mri_convert $source_Dir/cat$i/mri/benson14_varea.mgz $target_Dir/cat$i/nii/benson14_varea.nii.gz

done
