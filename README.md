## About

This is a simple DICOM to NIfTI validator script and dataset based on Siemens XA60 enhanced DICOM images.

## Details

This repository illustrates errors in DICOM image files created by Siemens scanners running software XA60 and XA61. These issues were initially described in dcm2niix issues [870](https://github.com/rordenlab/dcm2niix/issues/870), [870](https://github.com/rordenlab/dcm2niix/issues/879), and [894](https://github.com/rordenlab/dcm2niix/issues/894). These include
 - The first 3D volume of multi-band time series mistakenly reports the single-band [SliceTiming](https://bids-specification.readthedocs.io/en/stable/glossary.html#slicetiming-metadata)
 - For multi-band data the [Parallel Reduction Factor out-of-plane 	(0018,9155)](https://dicom.innolitics.com/ciods/enhanced-mr-image/enhanced-mr-image-multi-frame-functional-groups/52009230/00189115/00189155) reports a value of 1 (suggesting a single-band acquisition).
 - The localizer series uses a single StackID for three orthogonal slice directions.

The included dataset demonstrates all of these features. The code `batch.sh` will use dcm2niix to convert images and validate results. Modern versions (since 10/2024) of dcm2niix include kludges to handle these errors. Note that the demo script ignores localizer scans (`-i y`), so the confusion with stackID is not exhibited.

Data is provided for both Siemens XA60 and XA61 software. For each system, data is acquired with Siemen's own product sequences as well as the [cmrr](https://www.cmrr.umn.edu/multiband/) research sequences. Data is acquired as single-band (sms1 for product, mb1 for cmrr) and different multi-band (sms>1 for product, mb>1 for cmrr) acceleration factors (where the number is the Parallel Reduction Factor out-of-plane). Data is acquired for T2* fMRI sequenes (`bold`) and diffusion (`diff`) sequences. Scans are also acquired with [ParallelReductionFactorInPlane (0018,9069)](https://dicom.innolitics.com/ciods/enhanced-mr-color-image/enhanced-mr-color-image-multi-frame-functional-groups/52009229/00189115/00189069) of 2 (`p2`) or 3 (`p3`).

* XA60 Common Parameters 
  * Manufacturer: Siemens
  * Model: 7T Terra.X

| Series | Sequence name                     |
| ------ | --------------------------------- |
| 2      | PRODUCT_ep2d_bold_p3_sms1         |
| 4      | PRODUCT_ep2d_bold_p3_sms2         |
| 6      | PRODUCT_ep2d_bold_p3_sms5         |
| 8      | cmrr_ep2d_bold_p3_mb1             |
| 10     | cmrr_ep2d_bold_p3_mb2             |
| 12     | cmrr_ep2d_bold_p3_mb5             |
| 14     | PRODUCT_ep2d_diff_p3_mb1          |
| 16     | PRODUCT_ep2d_diff_p3_mb2          |
| 18     | cmrr_ep2d_diff_p3_mb1             |
| 20     | cmrr_ep2d_diff_p3_mb2             |

* XA61 Common Parameters 
  * Manufacturer: Siemens
  * Model: 3T Cima.X

| Series | Sequence name                     |
| ------ | --------------------------------- |
| 2      | PRODUCT_ep2d_bold_p2_sms1         |
| 4      | PRODUCT_ep2d_bold_p2_sms2         |
| 6      | PRODUCT_ep2d_bold_p2_sms5         |
| 8      | cmrr_ep2d_bold_p2_mb1             |
| 10     | cmrr_ep2d_bold_p2_mb2             |
| 12     | cmrr_ep2d_bold_p2_mb5             |
| 16     | cmrr_ep2d_diff_p2_mb1             |
| 18     | cmrr_ep2d_diff_p2_mb2             |


## Running

Assuming that the executable dcm2niix is in your path, you should be able to simply run the script `batch.sh` from the terminal.