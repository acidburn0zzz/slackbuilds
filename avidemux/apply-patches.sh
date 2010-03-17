  
SB_PATCHDIR=${CWD}/patches

# Patches from Arch
zcat ${SB_PATCHDIR}/${NAME}-2.5-i18n.patch.gz | patch -p1 -E --backup --verbose || exit 1
zcat ${SB_PATCHDIR}/2.5.1-coreImage-parallel-build.patch.gz | patch -p1 -E --backup --verbose || exit 1
zcat ${SB_PATCHDIR}/${NAME}-2.5.1-build-plugins-fix.patch.gz | patch -p1 -E --backup --verbose || exit 1