# RNA-seq-pipeline
RNA-seq pipeline for a specific FastQ file, using a Docker profile


# nf-core/rnaseq

<img src="https://img.icons8.com/color/48/000000/java-coffee-cup-logo.png"/>
<img src="https://img.icons8.com/color/48/000000/docker.png"/>
<img src="https://www.nextflow.io/img/nextflow_logo_color.svg" height="48" alt="Nextflow">






<img src="https://raw.githubusercontent.com/nf-core/media/master/nf-core-logos/nf-core-rnaseq/nf-core-rnaseq_logo.png" height="48" alt="nf-core RNA-seq">


[![GitHub Workflow Status (Lint) for nf-core/rnaseq](https://img.shields.io/github/workflow/status/nf-core/rnaseq/Lint?label=Lint&logo=github&style=flat-square)](https://github.com/nf-core/rnaseq/actions/workflows/lint.yml)
[![GitHub Workflow Status (Test) for nf-core/rnaseq](https://img.shields.io/github/workflow/status/nf-core/rnaseq/Test?label=Test&logo=github&style=flat-square)](https://github.com/nf-core/rnaseq/actions/workflows/test.yml)
[![GitHub Workflow Status (Build) for nf-core/rnaseq](https://img.shields.io/github/workflow/status/nf-core/rnaseq/Build?label=Build&logo=github&style=flat-square)](https://github.com/nf-core/rnaseq/actions/workflows/build.yml)
[![GitHub Workflow Status (Publish) for nf-core/rnaseq](https://img.shields.io/github/workflow/status/nf-core/rnaseq/Publish?label=Publish&logo=github&style=flat-square)](https://github.com/nf-core/rnaseq/actions/workflows/publish.yml)

nf-core/rnaseq is a Nextflow-based analysis pipeline for RNA-seq data, built using best practices from the nf-core community.

## Usage

To run the pipeline, you will need to have Nextflow and Docker installed on your system. You can then run the following command:

```bash
nextflow run nf-core/rnaseq --reads /path/to/reads --outdir /path/to/output -profile docker


For more information on how to run the pipeline, please refer to the nf-core/rnaseq documentation.



# RNA-seq pipeline using nf-core

This pipeline is based on nf-core RNA-seq, a best-practice pipeline for quality control and quantification of RNA sequencing data. The pipeline uses Nextflow, a workflow tool to run tasks across multiple compute infrastructures in a very portable manner. 

## Installation

To use this pipeline, you will need to have Nextflow and Docker installed on your system. You can install Nextflow by following the instructions on the Nextflow website. Docker can be downloaded from the Docker website.

## Usage

To run the RNA-seq pipeline using this Nextflow script, you can use the following command:

