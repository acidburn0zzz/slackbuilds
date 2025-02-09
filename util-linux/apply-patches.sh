
set -e -o pipefail

SB_PATCHDIR=${CWD}/patches

# patch -p0 -E --backup --verbose -i ${SB_PATCHDIR}/${NAME}.patch
# Changing the fdisk -l output (this was done prior to util-linux-ng) broke
# our installation scripts, so we have changed the name of partition type
# 83 back to "Linux swap":
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/util-linux-ng.fdisk-no-solaris.diff

# 151635 - makeing /var/log/lastlog
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/2.23-login-lastlog-create.patch

### Upstream Patches
###
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/move_is_mountinfo.patch
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/0001-libmount-FS-id-and-parent-ID-could-be-zero.patch
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/0001-switch_root-verify-initramfs-by-f_type-not-devno.patch

# Set to YES if autogen is needed
SB_AUTOGEN=NO

set +e +o pipefail
