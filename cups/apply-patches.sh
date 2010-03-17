
set -e -o pipefail

SB_PATCHDIR=${CWD}/patches

zcat ${SB_PATCHDIR}/cups-no-gzip-man.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-multilib.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-serial.patch.gz | patch -p1 -E --backup --verbose
#zcat ${SB_PATCHDIR}/cups-serverbin-compat.patch.gz | patch -p1 -E --backup --verbose
#zcat ${SB_PATCHDIR}/cups-str3448.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-direct-usb.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-lpr-help.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-pid.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-eggcups.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-driverd-timeout.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-usb-paperout.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-res_init.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-uri-compat.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-get-classes.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-avahi.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3382.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3285_v2-str3503.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3390.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3391.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3381.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3399.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3403.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3407.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3418.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-CVE-2009-3553.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3422.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3413.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3439.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3440.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3442.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-negative-snmp-string-length.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-sidechannel-intrs.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-media-empty-warning.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3435.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3436.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3425.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3428.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3431.patch.gz | patch -p1 -E --backup --verbose
#zcat ${SB_PATCHDIR}/cups-gnutls-gcrypt-threads.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3458.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-0755.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3460.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-EAI_AGAIN.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-str3505.patch.gz | patch -p1 -E --backup --verbose
zcat ${SB_PATCHDIR}/cups-CVE-2010-0302.patch.gz | patch -p1 -E --backup --verbose

set +e +o pipefail