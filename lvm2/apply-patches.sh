  
SB_PATCHDIR=${CWD}/patches

zcat ${SB_PATCHDIR}/cluster-locking-built-in.patch.gz | patch -p1 -E --backup --verbose || exit 1
