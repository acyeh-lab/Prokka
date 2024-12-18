# Prokka
The original Prokka github can be found here: "https://github.com/tseemann/prokka".
To annotate genomes, first load prokka:
```
module load prokka/1.14.5-gompi-2020b
```

Then run prokka
```
prokka GCF_XXXXXXX.1.fna --outdir annotation_output --prefix annotated_genome
```

# Prokka Output Files
When annotating a genome with **Prokka**, several output files are generated. Below is an explanation of the files and their purpose.

| **Filename**              | **Description**                                                                 | **Size**       |
|---------------------------|-------------------------------------------------------------------------------|----------------|
| `annotated_genome.err`    | Log file containing **error messages** or warnings from the Prokka run.        | 1.6 MB         |
| `annotated_genome.faa`    | Protein sequences of the predicted **coding sequences (CDS)** in **FASTA** format. | 2.1 MB         |
| `annotated_genome.ffn`    | Nucleotide sequences of the predicted **CDS** regions in **FASTA** format.      | 5.9 MB         |
| `annotated_genome.fna`    | **Input genome sequence** in FASTA format (unchanged).                         | 6.4 MB         |
| `annotated_genome.fsa`    | **Nucleotide sequence** of the annotated genome in **FASTA** format (similar to `.fna`). | 6.4 MB         |
| `annotated_genome.gbk`    | The annotated genome in **GenBank format**, including features like CDS, rRNA, and tRNA. | 12.5 MB        |
| `annotated_genome.gff`    | **General Feature Format (GFF)** file with genome features, gene locations, and annotations. | 7.5 MB         |
| `annotated_genome.log`    | Log file containing detailed **processing steps** and runtime messages.        | 42.9 KB        |
| `annotated_genome.sqn`    | **Sequin file** for submission to **NCBI GenBank**.                            | 18.3 MB        |
| `annotated_genome.tbl`    | Table of features, including gene and CDS annotations. Used for NCBI submission. | 853 KB         |
| `annotated_genome.tsv`    | Tab-separated file summarizing annotation details in a table format.           | 288 KB         |
| `annotated_genome.txt`    | Short **summary file** of the annotation process.                              | 86 bytes       |

## Key Files to Focus On
- **`annotated_genome.gff`**: Main annotation file used for downstream analysis.
- **`annotated_genome.gbk`**: Annotated genome in GenBank format for visualization.
- **`annotated_genome.faa`**: Protein sequences of predicted coding genes.
- **`annotated_genome.ffn`**: Nucleotide sequences of CDS regions.
