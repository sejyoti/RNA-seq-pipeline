// Define the project name, author, and date in the main configuration file
params.project_name = "02_input_files_nextflow_pipeline"
params.author = "Sejyoti"
params.date = "2023-02-01"

// Define the executor, queue, memory, and maxForks in the configuration file
process {
  executor = 'slurm'
  queue = 'short'
  memory = '32 GB'
  maxForks = 10
}

// Define the input design file for chip-seq samples
input:
  file 'design.csv' \
    .fromFile() \
    .splitCsv(header: true, sep: ',')

// Define the Nextflow process for running the ChIP-seq pipeline
process run_chipseq {

  // Pull the Docker container for the nf-core/chipseq pipeline
  container 'nfcore/chipseq:1.2.1'

  // Define the input parameters for the pipeline
  input:
    val group, replicate
    path fastq_1
    path? fastq_2
    val antibody
    val control

  // Define the output files for the pipeline
  output:
    path 'results/macs2' into macs2_out
    path 'results/bwa' into bwa_out
    path 'results/qc' into qc_out

  // Define the command to run the pipeline
  """
  nextflow run nf-core/chipseq -r 1.2.1 \
    -profile docker \
    --single_end \
    --input "$design" \
    --fasta "GRCh38.p13.genome.fa" \
    --gtf "gencode.v32.annotation.gtf" \
    --macs_gsize 3.2e9 \
    --blacklist "hg38-blacklist.v2.bed" \
    --email "$params.author@gmail.com" \
    -resume \
    -c nextflow.config
  """
}

// Define the workflow for the pipeline
workflow {
  // Run the ChIP-seq pipeline for each sample in the design file
  run_chipseq(group, replicate, fastq_1, fastq_2, antibody, control)
}
