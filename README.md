<img width="1511" height="697" alt="image" src="https://github.com/user-attachments/assets/caf0cc4b-841b-4bea-81a3-50e6bdf7adc6" />

# Picro-Sirius Red (PSR) Staining segmentation
`ColorSeg.mlapp` is a custom MATLAB app for segmenting picro-sirius red (PSR) staining in liver FFPE sections as outlined in Shanthi Bhupathi _et al_ (2026). Briefly, tissue boundaries are detected using Otsu’s thresholding method implemented with the `multithresh` function. For PSR stain detection, RGB images are converted to L _a_ b* color space and K-means clustering is performed on the chromaticity channels to group color clusters. Red intensity corresponding to PSR staining is then algorithmically extracted. Morphological operations (`bwmorph`) are applied to the PSR binary images to exclude perivascular staining. The remaining PSR-positive areas within the parenchyma are quantified and expressed as a percentage of total tissue area.
### citation
Shanthi Bhupathi, S., _et al_. (2026). The SCD inhibitor MTI-301 reduces staeyohepatitis and ration of C18:1/C18:0 levels in diet-induced murine models of MASH ([DOI link](#))

# Dependencies

## MATLAB
•_Image Processing Toolbox_ \
•_Mapping Toolbox_ \


