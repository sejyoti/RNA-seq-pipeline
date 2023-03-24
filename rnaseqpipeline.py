// Define the pipeline script in Nextflow
process rnaseq {
    // Define input parameters
    input:
    file fastq_file

    // Define output file names
    output:
    file 'counts.txt' into counts_ch

    // Define the Docker image to use for the pipeline
    container 'nfcore/rnaseq:2.1'

    // Define the command to run inside the container
    script:
    """
    nextflow run nf-core/rnaseq \
        --reads ${fastq_file} \
        --outdir results \
        -profile docker \
        -resume
    """
}

// Define the input FastQ file
input_fastq = file('<FastQ-file-name>')

// Define the output channels for the pipeline
counts_ch = Channel.fromPath('results/*/quant.sf')

// Run the pipeline for the input FastQ file
rnaseq(input_fastq)
