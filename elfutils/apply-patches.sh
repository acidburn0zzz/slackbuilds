
set -e -o pipefail

SB_PATCHDIR=${CWD}/patches

# patch -p0 -E --backup --verbose -i ${SB_PATCHDIR}/${NAME}.patch
patch -p1 -E --backup --verbose -i ${SB_EPDIR}/${PSRCARCHIVE}

if [ "${SB_COMPAT}" = "YES" ] ;then
  patch -p1 -E --backup --verbose -i ${SB_EPDIR}/${PSRCARCHIVE2}
  sleep 1
  find . \( -name Makefile.in -o -name aclocal.m4 \) -print | xargs touch
  sleep 1
  find . \( -name configure -o -name config.h.in \) -print | xargs touch
  #autoconf -f || exit 1
fi
#sed -i.scanf-m -e 's/%m/%a/' src/addr2line.c tests/line2addr.c || exit 1

patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/elfutils-0.158-mod-e_type.patch
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/elfutils-0.158-CVE-2014-0172.patch

set +e +o pipefail
