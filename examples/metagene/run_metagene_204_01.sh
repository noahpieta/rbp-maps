#!/bin/bash

PEAK=inputs/se_peak_bigbeds/204_01.basedon_204_01.peaks.l2inputnormnew.bed.compressed.bed.p3f3.bed.sorted.bed.bb
CDS=inputs/hg19_v19_cds.HepG2_tpm1.bed
UTR3=inputs/hg19_v19_three_prime_utrs.HepG2_tpm1.bed
UTR5=inputs/hg19_v19_five_prime_utrs.HepG2_tpm1.bed

plot_map \
--peak ${PEAK} \
--event metagene \
--normalization_level 0 \
--annotations ${CDS} ${UTR3} ${UTR5} \
--annotation_type cds 3utr 5utr \
--output 204_01.metagene.svg
