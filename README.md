<img width="733" height="559" alt="image" src="https://github.com/user-attachments/assets/01b76558-90ad-4fc8-ba18-97e0ae33a718" />

## Picro-Sirius Red (PSR) Staining segmentation
`ColorSeg.mlapp` <sub>is a custom MATLAB app for segmenting picro-sirius red (PSR) staining in liver FFPE sections as outlined in Shanthi Bhupathi _et al_ (2026). Briefly, tissue boundaries are detected using Otsu’s thresholding method implemented with the `multithresh` function. For PSR stain detection, RGB images are converted to L _a_ b* color space and K-means clustering is performed on the chromaticity channels to group color clusters. Red intensity corresponding to PSR staining is then algorithmically extracted. Morphological operations (`bwmorph`) are applied to the PSR binary images to exclude perivascular staining. The remaining PSR-positive areas within the parenchyma are quantified and expressed as a percentage of total tissue area.</sub>
### citation
Shanthi Bhupathi, S., _et al_. (2026). The SCD inhibitor MTI-301 reduces staeyohepatitis and ration of C18:1/C18:0 levels in diet-induced murine models of MASH ([DOI link](https://www.nature.com/articles/s41598-026-54346-x))

### Dependencies

##### MATLAB
•_Image Processing Toolbox_ \
•_Mapping Toolbox_ 


