
set -e -o pipefail

SB_PATCHDIR=${CWD}/patches

# patch -p0 -E --backup --verbose -i ${SB_PATCHDIR}/${NAME}.patch
zcat ${SB_PATCHDIR}/${NAME}-1.0.22-alsaconf.patch.gz | patch -p0 --verbose --backup --suffix=.orig
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/alsactl-valist.patch

set +e +o pipefail
