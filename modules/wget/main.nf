process WGET{
    publishDir.sampleDir, mode:"copy"

    input:
    tuple val(sample), path(ftp)

    output:
    tuple val(sample), path("${sample}.fastq")

    script:
    """
    wget $ftp | gzip -d > ${sample}.fastq
    """
}