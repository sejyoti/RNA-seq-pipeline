# RNA-seq-pipeline
RNA-seq pipeline for a specific FastQ file, using a Docker profile


# rnaseqpipeline

[![nf-core/rnaseq](https://img.shields.io/badge/nf--core-rnaseq-brightgreen.svg)](https://nf-co.re/rnaseq)
[![Nextflow](https://img.shields.io/badge/nextflow-%E2%89%A520.01.0-brightgreen.svg)](https://www.nextflow.io/)
[![Docker](https://img.shields.io/badge/docker-19.03+-blue.svg)](https://www.docker.com/)
[![Singularity](https://img.shields.io/badge/singularity-3.0+-orange.svg)](https://sylabs.io/guides/3.0/user-guide/quick_start.html)

## Introduction

`rnaseqpipeline` is a Nextflow pipeline for analyzing RNA-seq data. The pipeline uses the `nf-core/rnaseq` pipeline as a base, and adds additional custom steps for specific analyses.

## Installation

1. Install [Nextflow](https://www.nextflow.io/) (version 20.01.0 or later)
2. Install [Docker](https://www.docker.com/) (version 19.03 or later) or [Singularity](https://sylabs.io/guides/3.0/user-guide/quick_start.html) (version 3.0 or later)

## Usage

1. Clone the repository:


2. Edit the `nextflow.config` file to configure the pipeline settings
3. Run the pipeline with Nextflow:


## Contact

For questions or feedback, please contact Sejyoti Chakraborty at sejyotichakraborty@gmail.com.





# nf-core/rnaseq

<img src="https://img.icons8.com/color/48/000000/java-coffee-cup-logo.png"/>
<img src="https://img.icons8.com/color/48/000000/docker.png"/>







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

attached file in the repository


This command will run the pipeline using the `docker` profile, which will automatically download and use the Docker container that contains all of the required software and dependencies.

## Output

The RNA-seq pipeline will generate the following output files:

- Gene-level counts (`counts/counts.genes.txt`)
- Transcript-level counts (`counts/counts.transcripts.txt`)
- Alignment statistics (`results/logs/star_alignment.log`)

## nf-core badges

This pipeline is built using nf-core, which is a framework for building reusable, modular and scalable bioinformatics workflows. nf-core pipelines adhere to a set of community-driven guidelines to ensure reproducibility and usability.

The nf-core community has developed badges that can be added to the README files of pipelines that follow these guidelines. These badges show that the pipeline has passed automated testing, and indicate the quality and stability of the pipeline.

[![nf-core](https://img.shields.io/badge/nf--core-rnaseq-brightgreen.svg)](https://nf-co.re/rnaseq)
[![GitHub Actions CI Status](https://github.com/nf-core/rnaseq/workflows/nf-core%20CI/badge.svg)](https://github.com/nf-core/rnaseq/actions)

The `nf-core/rnaseq` badge indicates that this pipeline is an nf-core RNA-seq pipeline. The `GitHub Actions CI Status` badge indicates the status of the continuous integration (CI) tests for this pipeline.

For more information about nf-core, please visit the [nf-core website](https://nf-co.re/).


