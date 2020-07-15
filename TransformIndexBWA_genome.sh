
#script genome_prefix

genome_prefix=$1

#index the source genome:
bwa index -p $genome_prefix -a bwtsw $genome_prefix.fa

TransTypes="a2c a2g a2t g2c t2c t2g"

for tt in $TransTypes; do
#transform
$tt.pl $genome_prefix.fa > $genome_prefix.$tt.fa
#indexing
bwa index -p $genome_prefix.$tt -a bwtsw $genome_prefix.$tt.fa
done
