<img width="6438" height="2169" alt="githubmain" src="https://github.com/user-attachments/assets/2f8e09b6-779b-4d39-b03a-e8c3dca362e4" /> 

# Picro-Sirius Red (PSR) Staining segmentation
`ClusToRa` (Cluster-to-Randomization) is a spatial omics framework that distinguishes organized cellular niches from stochastic proximity by using high-density territory identification and a fixed-position null model. It accurately quantifies cell-type colocalization and recruitment while suppressing density-driven false positives common in conventional analysis methods.
### citation
Githaka J.M., Lerner E.P. (2026). ClusToRa: A niche-centric framework for identifying structural recruitment and infiltration in spatial omics
## Installation Guide 
#### Option 1: `ClusToRa` in MATLAB 
###### Option 1.1 MATLAB online
Clone `ClusToRa` in MATLAB online (_link below_) 
> **Note:** You only need the last command when starting the app in future sessions.
```matlab
%% Confirm you have Git
!git --version

%% Clone ClusToRa repository
!git clone https://github.com/maringa780/ClusToRa.git

%% Start ClusToRa
ClusToRa_startup
```
[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=maringa780/ClusToRa) \
💡**Tip:** If you don’t have a MATLAB license, you can sign up for [MATLAB Online](https://www.mathworks.com/products/matlab-online/matlab-online-versions.html) (Basic), which currently includes 20 free hours per month.
###### Option 1.2 Desktop MATLAB
Open your locally installed MATLAB application and run the same code shown above.
> For local MATLAB, ensure you have the MATLAB toolboxes listed in the dependencies below.

#### Option 2: Install `ClusToRa` as a Standalone Application on Windows/macOS  
> Download `WindowsClusToRa.exe` or `macOSClusToRa.dmg` from the `app` folder
##### Windows
1. Download `WindowsClusToRa.exe`
2. Double-click the installer/application file
3. Follow the on-screen installation prompts
4. Launch `ClusToRa` from the Start Menu or desktop shortcut
> If Windows displays a security warning, click **More info** → **Run anyway**.
##### macOS
1. Download the macOS version `macOSClusToRa.dmg`
2. Open the downloaded `.dmg` or application package
3. Drag `ClusToRa` into the `Applications` folder
4. Open the application from `Applications`
> The first time you open the app, macOS may display a security warning because the app was downloaded from the internet.  
> Go to **System Settings → Privacy & Security** and click **Open Anyway** if needed.

## Running ClusToRa
Start `ClusToRa` as described above. \
The app has three main components — **Analysis**, **Plotting**, and **Differential** — each accessible through its own tab within the app. \
💡**Tip:** Hover your cursor over any section of the app to view helpful information describing that part of the interface and its functionality. 

Below, we use the dataset from Tzouanas _et al._, as analyzed in our cited work, to demonstrate how to navigate and use ClusToRa. Cloning the repository should automatically download the dataset; otherwise, download it manually. Extract the compressed file using: `untar('TzouanasDataset.tar.gz')`.
