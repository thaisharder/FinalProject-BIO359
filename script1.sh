bowtie2 -x ~/Desktop/Thais/Rclass/hpara -1 ./A4_R1.fastq -2 ./A4_R2.fastq -S hpara_aero1.sam -p 2
bowtie2 -x ~/Desktop/Thais/Rclass/hpara -1 ./A9_R1.fastq -2 ./A9_R2.fastq -S hpara_aero2.sam -p 2

bowtie2 -x ~/Desktop/Thais/Rclass/hpara -1 ./B4_R1.fastq -2 ./B4_R2.fastq -S hpara_ana1.sam -p 2
bowtie2 -x ~/Desktop/Thais/Rclass/hpara -1 ./B9_R1.fastq -2 ./B9_R2.fastq -S hpara_ana2.sam -p 2


htseq-count -s no -t CDS -a 1 -m intersection-nonempty -i ID hpara_aero1.sam HP_GCF_000210895.1_ASM21089v1_genomic.gff > aerobic1.count.txt
htseq-count -s no -t CDS -a 1 -m intersection-nonempty -i ID hpara_aero2.sam HP_GCF_000210895.1_ASM21089v1_genomic.gff > aerobic2.count.txt
htseq-count -s no -t CDS -a 1 -m intersection-nonempty -i ID hpara_ana1.sam HP_GCF_000210895.1_ASM21089v1_genomic.gff > anaerobic1.count.txt
htseq-count -s no -t CDS -a 1 -m intersection-nonempty -i ID hpara_ana2.sam HP_GCF_000210895.1_ASM21089v1_genomic.gff > anaerobic2.count.txt
