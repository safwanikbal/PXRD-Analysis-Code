# PXRD Data Plotting and Peak Visualization (MATLAB)

This repository contains MATLAB code for plotting and visualizing Powder X-Ray Diffraction (PXRD) data. The script supports single and dual dataset plots, allowing users to compare diffraction patterns and analyze intensity peaks over selected 2θ ranges.

## Features

-Plot PXRD intensity vs. 2θ

-Support for single or dual PXRD datasets

-Vertical intensity offset for clear comparison between datasets (if using multiple data sets)

-Adjustable 2θ range for focused peak analysis

## Files

PXRD_Plot_Code.m : Main MATLAB script for loading and plotting PXRD data

Data Requirements

Your PXRD data must be loaded into MATLAB as a structure or table containing:
```
x : 2θ values (degrees)

y : Intensity values (a.u.)

```

For dual plots, a second dataset must contain:

```
x2 : 2θ values

y2 : Intensity values
```

# Usage
# 1. Load Your PXRD Data

In MATLAB, load your data file(s) and assign them to variables used in the script:

```
data =  your PXRD dataset file name
data2 = optional second PXRD dataset name

```

## 2. Define Dataset Names

Specify the names used for labeling plots and legends:
```
DataSetName  = 'Sample 1';
DataSet2Name = 'Sample 2';
```

## 3. Single Dataset Plot

To generate a single PXRD plot, use Section 1 and Section 3 only.
```
plot(x, y, 'LineWidth', 0.1, 'DisplayName', DataSetName)
```

Adjust the viewing range as needed:

```
xlim([10 80])
```
Replace 10 and 80 with desired lower and upper limits

## 4. Dual Dataset Plot

To compare two PXRD patterns, use Sections 1, 2, 3, and 4.

The second dataset is vertically offset to improve readability:
```
y2 = data2.y2 + 5000;
```

Both datasets will be plotted on the same axes with a shared legend.

# Notes

-The intensity offset value (+5000) can be adjusted depending on the relative intensities of your datasets.

-Ensure both datasets use comparable 2θ ranges for meaningful comparison.

-This script is intended for visualization and qualitative peak comparison

-Users may modify axis limits, labels, line widths, and offsets depending on their experimental needs.

# Output

-The script generates a figure displaying:

- PXRD intensity vs. 2θ

- Optional comparison between two datasets

- Legends and axis labels suitable for reports or publications
