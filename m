Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEA134889D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 06:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24EE26EB1A;
	Thu, 25 Mar 2021 05:42:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DACF76EB1A
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 05:42:34 +0000 (UTC)
Received: from [222.129.33.11] (helo=[192.168.1.10])
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <aaron.ma@canonical.com>)
 id 1lPIlI-00062e-NP; Thu, 25 Mar 2021 05:42:33 +0000
To: lyude@redhat.com, Jani Nikula <jani.nikula@intel.com>
References: <dab3efecceb3e2ad2dc543a7c09fd9de0d55af2d.camel@redhat.com>
From: Aaron Ma <aaron.ma@canonical.com>
Message-ID: <08c1f5e7-dfd2-416a-0c65-bf522dcac6b7@canonical.com>
Date: Thu, 25 Mar 2021 13:42:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <dab3efecceb3e2ad2dc543a7c09fd9de0d55af2d.camel@redhat.com>
Content-Type: multipart/mixed; boundary="------------FC9202B3358A08678C16161C"
Content-Language: en-US
Subject: Re: [Intel-gfx] Regarding the laptop with the BOE panel with ID 2270
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------FC9202B3358A08678C16161C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Lyude,

I have tested this BOE2270 panel which belong to ThinkPad P17, and metion=
 it in
the issue #3158, even with your patch:
"drm/i915/dpcd_bl: Don't try vesa interface unless specified by VBT"

drm-tip with/without "i915.enable_dpcd_backlight=3D3", backlight always c=
an work as expected.
log is attached.

Looks like both of PWM and AUX can work on 5.12-rc kernel, but not sure w=
hich commit
did it.

BR,
Aaron

On 3/25/21 4:58 AM, Lyude Paul wrote:
> Hey Aaron! A while ago you submitted some patches for a machine that ap=
pears to
> have needed the VESA backlight interface in order to control the panel =
backlight
> on it:
>
> https://patchwork.freedesktop.org/patch/394371/
>
> We're currently dealing with a different laptop where the machine adver=
tises
> VESA backlight support, which we end up defaulting to after failing to =
probe for
> the Intel backlight interface, but this backlight interface appears to =
be
> broken:
>
> https://gitlab.freedesktop.org/drm/intel/-/issues/3158
>
> The fix I was hoping to do was to just not attempt probing for the VESA=

> backlight interface, but if we did that then it's possible that the bac=
klight
> controls for the machine you submitted your patch for would stop workin=
g out of
> the box. However, it occurred to me that we never tried the Intel backl=
ight
> interface on your machine - and if it works there, then we'd likely be =
able to
> require the VBT to advertise VESA support before using it and fix the m=
achine in
> the gitlab issue I've linked.
>
> Do you think you could test this for us? If you build the latest kernel=
 from
> drm-tip, the easiest way should be to boot up with
> "i915.enable_dpcd_backlight=3D3" and just see if your backlight control=
s still
> work as expected.


--------------FC9202B3358A08678C16161C
Content-Type: text/x-log; charset=UTF-8;
 name="drm-tip-dpcd-bl-3.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="drm-tip-dpcd-bl-3.log"

[    0.000000] Linux version 5.12.0-rc4+ (u@u-ThinkPad-P17-Gen-1) (gcc (U=
buntu 9.3.0-17ubuntu1~20.04) 9.3.0, GNU ld (GNU Binutils for Ubuntu) 2.34=
) #47 SMP Thu Mar 25 09:59:44 CST 2021
[    0.000000] Command line: BOOT_IMAGE=3D/boot/vmlinuz-s2idle root=3DPAR=
TUUID=3D8a29db6b-cc72-4579-9291-ca3a19a86b25 ro ignore_loglevel debug ini=
tcall_debug no_console_suspend log_buf_len=3D256M rootwait drm.debug=3D0x=
114 module_blacklist=3Dnouveau acpi.dyndbg=3D i915.enable_dpcd_backlight=3D=
3
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   Hygon HygonGenuine
[    0.000000]   Centaur CentaurHauls
[    0.000000]   zhaoxin   Shanghai =20
[    0.000000] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating poi=
nt registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x008: 'MPX bounds regis=
ters'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x010: 'MPX CSR'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x200: 'Protection Keys =
User registers'
[    0.000000] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    0.000000] x86/fpu: xstate_offset[3]:  832, xstate_sizes[3]:   64
[    0.000000] x86/fpu: xstate_offset[4]:  896, xstate_sizes[4]:   64
[    0.000000] x86/fpu: xstate_offset[9]:  960, xstate_sizes[9]:    8
[    0.000000] x86/fpu: Enabled xstate features 0x21f, context size is 96=
8 bytes, using 'compacted' format.
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009efff] usa=
ble
[    0.000000] BIOS-e820: [mem 0x000000000009f000-0x00000000000fffff] res=
erved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x00000000aa5b6fff] usa=
ble
[    0.000000] BIOS-e820: [mem 0x00000000aa5b7000-0x00000000ae794fff] res=
erved
[    0.000000] BIOS-e820: [mem 0x00000000ae795000-0x00000000afb1efff] ACP=
I NVS
[    0.000000] BIOS-e820: [mem 0x00000000afb1f000-0x00000000afc4efff] ACP=
I data
[    0.000000] BIOS-e820: [mem 0x00000000afc4f000-0x00000000afc4ffff] usa=
ble
[    0.000000] BIOS-e820: [mem 0x00000000afc50000-0x00000000b7ffffff] res=
erved
[    0.000000] BIOS-e820: [mem 0x00000000b8000000-0x00000000b8bfffff] usa=
ble
[    0.000000] BIOS-e820: [mem 0x00000000b8c00000-0x00000000be7fffff] res=
erved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000083f7fffff] usa=
ble
[    0.000000] printk: debug: ignoring loglevel setting.
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] e820: update [mem 0x88301018-0x88311057] usable =3D=3D> us=
able
[    0.000000] e820: update [mem 0x88301018-0x88311057] usable =3D=3D> us=
able
[    0.000000] extended physical RAM map:
[    0.000000] reserve setup_data: [mem 0x0000000000000000-0x000000000009=
efff] usable
[    0.000000] reserve setup_data: [mem 0x000000000009f000-0x00000000000f=
ffff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000000100000-0x000000008830=
1017] usable
[    0.000000] reserve setup_data: [mem 0x0000000088301018-0x000000008831=
1057] usable
[    0.000000] reserve setup_data: [mem 0x0000000088311058-0x00000000aa5b=
6fff] usable
[    0.000000] reserve setup_data: [mem 0x00000000aa5b7000-0x00000000ae79=
4fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000ae795000-0x00000000afb1=
efff] ACPI NVS
[    0.000000] reserve setup_data: [mem 0x00000000afb1f000-0x00000000afc4=
efff] ACPI data
[    0.000000] reserve setup_data: [mem 0x00000000afc4f000-0x00000000afc4=
ffff] usable
[    0.000000] reserve setup_data: [mem 0x00000000afc50000-0x00000000b7ff=
ffff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000b8000000-0x00000000b8bf=
ffff] usable
[    0.000000] reserve setup_data: [mem 0x00000000b8c00000-0x00000000be7f=
ffff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000100000000-0x000000083f7f=
ffff] usable
[    0.000000] efi: EFI v2.70 by Lenovo
[    0.000000] efi: TPMFinalLog=3D0xafb17000 SMBIOS=3D0xacbb8000 SMBIOS 3=
=2E0=3D0xacbab000 ACPI=3D0xafc4e000 ACPI 2.0=3D0xafc4e014 MEMATTR=3D0xa70=
36018 ESRT=3D0xab038000 RNG=3D0xacbb9918 TPMEventLog=3D0x896a9018=20
[    0.000000] efi: seeding entropy pool
[    0.000000] random: fast init done
[    0.000000] SMBIOS 3.2.0 present.
[    0.000000] DMI: LENOVO 20SN0SIT14/20SN0SIT14, BIOS N30ET29W (1.12 ) 0=
9/08/2020
[    0.000000] tsc: Detected 2600.000 MHz processor
[    0.000000] tsc: Detected 2599.992 MHz TSC
[    0.000007] e820: update [mem 0x00000000-0x00000fff] usable =3D=3D> re=
served
[    0.000011] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000017] last_pfn =3D 0x83f800 max_arch_pfn =3D 0x400000000
[    0.000187] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- =
WT =20
[    0.001689] last_pfn =3D 0xb8c00 max_arch_pfn =3D 0x400000000
[    0.010220] esrt: Reserving ESRT space from 0x00000000ab038000 to 0x00=
000000ab038100.
[    0.010233] check: Scanning 1 areas for low memory corruption
[    0.010239] Using GB pages for direct mapping
[    0.153972] printk: log_buf_len: 268435456 bytes
[    0.153975] printk: early log buf free: 257528(98%)
[    0.153977] Secure boot disabled
[    0.153988] ACPI: Early table checksum verification disabled
[    0.153992] ACPI: RSDP 0x00000000AFC4E014 000024 (v02 LENOVO)
[    0.153998] ACPI: XSDT 0x00000000AFC4C188 000124 (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154005] ACPI: FACP 0x00000000ACA60000 000114 (v06 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154011] ACPI: DSDT 0x00000000ACA30000 02B975 (v02 LENOVO CML      =
20170001 INTL 20160422)
[    0.154015] ACPI: FACS 0x00000000AF95D000 000040
[    0.154019] ACPI: SSDT 0x00000000ACABC000 0020AE (v02 LENOVO CpuSsdt  =
00003000 INTL 20160527)
[    0.154023] ACPI: SSDT 0x00000000ACABB000 0005A1 (v02 LENOVO CtdpB    =
00001000 INTL 20160527)
[    0.154027] ACPI: SSDT 0x00000000ACA7E000 003A8F (v02 LENOVO DptfTabl =
00001000 INTL 20160527)
[    0.154030] ACPI: SSDT 0x00000000ACA68000 00331E (v02 LENOVO SaSsdt   =
00003000 INTL 20160527)
[    0.154034] ACPI: SSDT 0x00000000ACA65000 002E1C (v02 LENOVO PegSsdt  =
00001000 INTL 20160527)
[    0.154038] ACPI: SSDT 0x00000000ACA64000 00060E (v02 LENOVO Tpm2Tabl =
00001000 INTL 20160527)
[    0.154042] ACPI: TPM2 0x00000000ACA63000 000034 (v04 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154048] ACPI: SSDT 0x00000000ACA61000 0005D8 (v02 LENOVO PerfTune =
00001000 INTL 20160527)
[    0.154051] ACPI: HPET 0x00000000ACA5F000 000038 (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154055] ACPI: APIC 0x00000000ACA5E000 000164 (v03 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154059] ACPI: MCFG 0x00000000ACA5D000 00003C (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154063] ACPI: ECDT 0x00000000ACA5C000 000053 (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154066] ACPI: SSDT 0x00000000ACA2E000 001ED1 (v02 LENOVO CflH_Tbt =
00001000 INTL 20160527)
[    0.154070] ACPI: SSDT 0x00000000ACA2D000 0000A6 (v02 LENOVO PID0Ssdt =
00000010 INTL 20160527)
[    0.154074] ACPI: SSDT 0x00000000ACA29000 003F3D (v02 LENOVO ProjSsdt =
00000010 INTL 20160527)
[    0.154078] ACPI: NHLT 0x00000000ACA28000 00002D (v00 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154082] ACPI: BOOT 0x00000000ACA27000 000028 (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154086] ACPI: SSDT 0x00000000ACA24000 000EF6 (v02 LENOVO UsbCTabl =
00001000 INTL 20160527)
[    0.154089] ACPI: LPIT 0x00000000ACA23000 000094 (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154093] ACPI: WSMT 0x00000000ACA22000 000028 (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154097] ACPI: SSDT 0x00000000ACA1F000 00281B (v02 LENOVO TbtTypeC =
00000000 INTL 20160527)
[    0.154101] ACPI: DBGP 0x00000000ACA1E000 000034 (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154104] ACPI: DBG2 0x00000000ACA1D000 000054 (v00 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154108] ACPI: POAT 0x00000000ACA1C000 000055 (v03 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154112] ACPI: BATB 0x00000000AC83F000 00004A (v02 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154116] ACPI: SSDT 0x00000000AB036000 001D2E (v01 LENOVO NvOptTbl =
00001000 INTL 20160527)
[    0.154119] ACPI: SSDT 0x00000000AB035000 0000AE (v02 LENOVO SgPeg    =
00001000 INTL 20160527)
[    0.154123] ACPI: DMAR 0x00000000ACA26000 0000A8 (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154127] ACPI: BGRT 0x00000000AB034000 000038 (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154131] ACPI: UEFI 0x00000000AF8DF000 00012A (v01 LENOVO TP-N30   =
000010C0 PTEC 00000002)
[    0.154134] ACPI: FPDT 0x00000000AB033000 000044 (v01 LENOVO TP-N30   =
000010C0 PTEC 000010C0)
[    0.154143] ACPI: Local APIC address 0xfee00000
[    0.154446] No NUMA configuration found
[    0.154448] Faking a node at [mem 0x0000000000000000-0x000000083f7ffff=
f]
[    0.154459] NODE_DATA(0) allocated [mem 0x7f77d5000-0x7f77fffff]
[    0.154798] cma: Reserved 32 MiB at 0x0000000100000000
[    0.154843] Zone ranges:
[    0.154844]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.154847]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.154849]   Normal   [mem 0x0000000100000000-0x000000083f7fffff]
[    0.154851]   Device   empty
[    0.154853] Movable zone start for each node
[    0.154858] Early memory node ranges
[    0.154859]   node   0: [mem 0x0000000000001000-0x000000000009efff]
[    0.154861]   node   0: [mem 0x0000000000100000-0x00000000aa5b6fff]
[    0.154862]   node   0: [mem 0x00000000afc4f000-0x00000000afc4ffff]
[    0.154864]   node   0: [mem 0x00000000b8000000-0x00000000b8bfffff]
[    0.154865]   node   0: [mem 0x0000000100000000-0x000000083f7fffff]
[    0.154869] Initmem setup node 0 [mem 0x0000000000001000-0x000000083f7=
fffff]
[    0.154872] On node 0 totalpages: 8300886
[    0.154873]   DMA zone: 64 pages used for memmap
[    0.154875]   DMA zone: 22 pages reserved
[    0.154876]   DMA zone: 3998 pages, LIFO batch:0
[    0.155229]   DMA zone: 28770 pages in unavailable ranges
[    0.155231]   DMA32 zone: 10887 pages used for memmap
[    0.155233]   DMA32 zone: 696760 pages, LIFO batch:63
[    0.159914]   DMA32 zone: 52808 pages in unavailable ranges
[    0.159916]   Normal zone: 118752 pages used for memmap
[    0.159917]   Normal zone: 7600128 pages, LIFO batch:63
[    0.204335]   Normal zone: 2048 pages in unavailable ranges
[    0.204376] Reserving Intel graphics memory at [mem 0xba800000-0xbe7ff=
fff]
[    0.204854] ACPI: PM-Timer IO Port: 0x1808
[    0.204856] ACPI: Local APIC address 0xfee00000
[    0.204864] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.204866] ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
[    0.204867] ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
[    0.204869] ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
[    0.204870] ACPI: LAPIC_NMI (acpi_id[0x05] high edge lint[0x1])
[    0.204871] ACPI: LAPIC_NMI (acpi_id[0x06] high edge lint[0x1])
[    0.204872] ACPI: LAPIC_NMI (acpi_id[0x07] high edge lint[0x1])
[    0.204874] ACPI: LAPIC_NMI (acpi_id[0x08] high edge lint[0x1])
[    0.204875] ACPI: LAPIC_NMI (acpi_id[0x09] high edge lint[0x1])
[    0.204876] ACPI: LAPIC_NMI (acpi_id[0x0a] high edge lint[0x1])
[    0.204877] ACPI: LAPIC_NMI (acpi_id[0x0b] high edge lint[0x1])
[    0.204879] ACPI: LAPIC_NMI (acpi_id[0x0c] high edge lint[0x1])
[    0.204880] ACPI: LAPIC_NMI (acpi_id[0x0d] high edge lint[0x1])
[    0.204881] ACPI: LAPIC_NMI (acpi_id[0x0e] high edge lint[0x1])
[    0.204882] ACPI: LAPIC_NMI (acpi_id[0x0f] high edge lint[0x1])
[    0.204883] ACPI: LAPIC_NMI (acpi_id[0x10] high edge lint[0x1])
[    0.204885] ACPI: LAPIC_NMI (acpi_id[0x11] high edge lint[0x1])
[    0.204886] ACPI: LAPIC_NMI (acpi_id[0x12] high edge lint[0x1])
[    0.204887] ACPI: LAPIC_NMI (acpi_id[0x13] high edge lint[0x1])
[    0.204889] ACPI: LAPIC_NMI (acpi_id[0x14] high edge lint[0x1])
[    0.204922] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI =
0-119
[    0.204926] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.204928] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level=
)
[    0.204931] ACPI: IRQ0 used by override.
[    0.204932] ACPI: IRQ9 used by override.
[    0.204935] Using ACPI (MADT) for SMP configuration information
[    0.204936] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.204949] e820: update [mem 0xa6a37000-0xa6c77fff] usable =3D=3D> re=
served
[    0.204959] TSC deadline timer available
[    0.204960] smpboot: Allowing 12 CPUs, 0 hotplug CPUs
[    0.204975] PM: hibernation: Registered nosave memory: [mem 0x00000000=
-0x00000fff]
[    0.204977] PM: hibernation: Registered nosave memory: [mem 0x0009f000=
-0x000fffff]
[    0.204980] PM: hibernation: Registered nosave memory: [mem 0x88301000=
-0x88301fff]
[    0.204982] PM: hibernation: Registered nosave memory: [mem 0x88311000=
-0x88311fff]
[    0.204984] PM: hibernation: Registered nosave memory: [mem 0xa6a37000=
-0xa6c77fff]
[    0.204986] PM: hibernation: Registered nosave memory: [mem 0xaa5b7000=
-0xae794fff]
[    0.204987] PM: hibernation: Registered nosave memory: [mem 0xae795000=
-0xafb1efff]
[    0.204988] PM: hibernation: Registered nosave memory: [mem 0xafb1f000=
-0xafc4efff]
[    0.204991] PM: hibernation: Registered nosave memory: [mem 0xafc50000=
-0xb7ffffff]
[    0.204993] PM: hibernation: Registered nosave memory: [mem 0xb8c00000=
-0xbe7fffff]
[    0.204994] PM: hibernation: Registered nosave memory: [mem 0xbe800000=
-0xffffffff]
[    0.204996] [mem 0xbe800000-0xffffffff] available for PCI devices
[    0.204998] Booting paravirtualized kernel on bare hardware
[    0.205000] clocksource: refined-jiffies: mask: 0xffffffff max_cycles:=
 0xffffffff, max_idle_ns: 7645519600211568 ns
[    0.205008] setup_percpu: NR_CPUS:8192 nr_cpumask_bits:12 nr_cpu_ids:1=
2 nr_node_ids:1
[    0.205353] percpu: Embedded 56 pages/cpu s192512 r8192 d28672 u262144=

[    0.205361] pcpu-alloc: s192512 r8192 d28672 u262144 alloc=3D1*2097152=

[    0.205364] pcpu-alloc: [0] 00 01 02 03 04 05 06 07 [0] 08 09 10 11 --=
 -- -- --=20
[    0.205402] Built 1 zonelists, mobility grouping on.  Total pages: 817=
1161
[    0.205404] Policy zone: Normal
[    0.205407] Kernel command line: BOOT_IMAGE=3D/boot/vmlinuz-s2idle roo=
t=3DPARTUUID=3D8a29db6b-cc72-4579-9291-ca3a19a86b25 ro ignore_loglevel de=
bug initcall_debug no_console_suspend log_buf_len=3D256M rootwait drm.deb=
ug=3D0x114 module_blacklist=3Dnouveau acpi.dyndbg=3D i915.enable_dpcd_bac=
klight=3D3
[    0.207503] Dentry cache hash table entries: 4194304 (order: 13, 33554=
432 bytes, linear)
[    0.208452] Inode-cache hash table entries: 2097152 (order: 12, 167772=
16 bytes, linear)
[    0.208574] mem auto-init: stack:off, heap alloc:on, heap free:off
[    0.277319] Memory: 31245724K/33203544K available (16394K kernel code,=
 3606K rwdata, 5692K rodata, 2708K init, 5816K bss, 1924792K reserved, 32=
768K cma-reserved)
[    0.277327] random: get_random_u64 called from __kmem_cache_create+0x2=
d/0x430 with crng_init=3D1
[    0.277456] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D12=
, Nodes=3D1
[    0.277469] ftrace: allocating 50252 entries in 197 pages
[    0.296509] ftrace: allocated 197 pages with 4 groups
[    0.296629] rcu: Hierarchical RCU implementation.
[    0.296631] rcu: 	RCU restricting CPUs from NR_CPUS=3D8192 to nr_cpu_i=
ds=3D12.
[    0.296633] 	Rude variant of Tasks RCU enabled.
[    0.296634] 	Tracing variant of Tasks RCU enabled.
[    0.296635] rcu: RCU calculated value of scheduler-enlistment delay is=
 25 jiffies.
[    0.296636] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_i=
ds=3D12
[    0.300820] NR_IRQS: 524544, nr_irqs: 2152, preallocated irqs: 16
[    0.301248] random: crng done (trusting CPU's manufacturer)
[    0.301269] calling  con_init+0x0/0x247 @ 0
[    0.301285] Console: colour dummy device 80x25
[    0.301604] printk: console [tty0] enabled
[    0.301607] initcall con_init+0x0/0x247 returned 0 after 0 usecs
[    0.301612] calling  hvc_console_init+0x0/0x19 @ 0
[    0.301617] initcall hvc_console_init+0x0/0x19 returned 0 after 0 usec=
s
[    0.301622] calling  xen_cons_init+0x0/0x60 @ 0
[    0.301626] initcall xen_cons_init+0x0/0x60 returned 0 after 0 usecs
[    0.301629] calling  univ8250_console_init+0x0/0x2d @ 0
[    0.301636] initcall univ8250_console_init+0x0/0x2d returned 0 after 0=
 usecs
[    0.301641] calling  kgdboc_earlycon_late_init+0x0/0x25 @ 0
[    0.301644] initcall kgdboc_earlycon_late_init+0x0/0x25 returned 0 aft=
er 0 usecs
[    0.301661] ACPI: Core revision 20210105
[    0.302108] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff=
, max_idle_ns: 79635855245 ns
[    0.302199] APIC: Switch to symmetric I/O mode setup
[    0.302202] DMAR: Host address width 39
[    0.302205] DMAR: DRHD base: 0x000000fed90000 flags: 0x0
[    0.302211] DMAR: dmar0: reg_base_addr fed90000 ver 1:0 cap 1c0000c406=
60462 ecap 19e2ff0505e
[    0.302215] DMAR: DRHD base: 0x000000fed91000 flags: 0x1
[    0.302220] DMAR: dmar1: reg_base_addr fed91000 ver 1:0 cap d2008c4066=
0462 ecap f050da
[    0.302223] DMAR: RMRR base: 0x000000ae74f000 end: 0x000000ae76efff
[    0.302226] DMAR: RMRR base: 0x000000ba000000 end: 0x000000be7fffff
[    0.302229] DMAR-IR: IOAPIC id 2 under DRHD base  0xfed91000 IOMMU 1
[    0.302232] DMAR-IR: HPET id 0 under DRHD base 0xfed91000
[    0.302234] DMAR-IR: Queued invalidation will be enabled to support x2=
apic and Intr-remapping.
[    0.304165] DMAR-IR: Enabled IRQ remapping in x2apic mode
[    0.304169] x2apic enabled
[    0.304192] Switched APIC routing to cluster x2apic.
[    0.309577] ..TIMER: vector=3D0x30 apic1=3D0 pin1=3D2 apic2=3D-1 pin2=3D=
-1
[    0.326091] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycle=
s: 0x257a34a6eea, max_idle_ns: 440795264358 ns
[    0.326099] Calibrating delay loop (skipped), value calculated using t=
imer frequency.. 5199.98 BogoMIPS (lpj=3D10399968)
[    0.326104] pid_max: default: 32768 minimum: 301
[    0.328944] LSM: Security Framework initializing
[    0.328956] Yama: becoming mindful.
[    0.328979] AppArmor: AppArmor initialized
[    0.329063] Mount-cache hash table entries: 65536 (order: 7, 524288 by=
tes, linear)
[    0.329110] Mountpoint-cache hash table entries: 65536 (order: 7, 5242=
88 bytes, linear)
[    0.329369] CPU0: Thermal monitoring enabled (TM1)
[    0.329413] process: using mwait in idle threads
[    0.329417] Last level iTLB entries: 4KB 64, 2MB 8, 4MB 8
[    0.329419] Last level dTLB entries: 4KB 64, 2MB 0, 4MB 0, 1GB 4
[    0.329424] Spectre V1 : Mitigation: usercopy/swapgs barriers and __us=
er pointer sanitization
[    0.329428] Spectre V2 : Mitigation: Enhanced IBRS
[    0.329429] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling R=
SB on context switch
[    0.329433] Spectre V2 : mitigation: Enabling conditional Indirect Bra=
nch Prediction Barrier
[    0.329436] Speculative Store Bypass: Mitigation: Speculative Store By=
pass disabled via prctl and seccomp
[    0.329701] Freeing SMP alternatives memory: 44K
[    0.334171] smpboot: Estimated ratio of average max frequency by base =
frequency (times 1024): 1811
[    0.334192] smpboot: CPU0: Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz (=
family: 0x6, model: 0xa5, stepping: 0x2)
[    0.334317] calling  init_hw_perf_events+0x0/0x782 @ 1
[    0.334324] Performance Events: PEBS fmt3+, Skylake events, 32-deep LB=
R, full-width counters, Intel PMU driver.
[    0.334336] ... version:                4
[    0.334337] ... bit width:              48
[    0.334339] ... generic registers:      4
[    0.334340] ... value mask:             0000ffffffffffff
[    0.334342] ... max period:             00007fffffffffff
[    0.334344] ... fixed-purpose events:   3
[    0.334345] ... event mask:             000000070000000f
[    0.334420] initcall init_hw_perf_events+0x0/0x782 returned 0 after 0 =
usecs
[    0.334424] calling  init_real_mode+0x0/0x20a @ 1
[    0.334434] initcall init_real_mode+0x0/0x20a returned 0 after 0 usecs=

[    0.334437] calling  trace_init_perf_perm_irq_work_exit+0x0/0x18 @ 1
[    0.334440] initcall trace_init_perf_perm_irq_work_exit+0x0/0x18 retur=
ned 0 after 0 usecs
[    0.334444] calling  register_nmi_cpu_backtrace_handler+0x0/0x1b @ 1
[    0.334448] initcall register_nmi_cpu_backtrace_handler+0x0/0x1b retur=
ned 0 after 0 usecs
[    0.334451] calling  numachip_system_init+0x0/0x6b @ 1
[    0.334455] initcall numachip_system_init+0x0/0x6b returned 0 after 0 =
usecs
[    0.334458] calling  kvm_setup_vsyscall_timeinfo+0x0/0x128 @ 1
[    0.334462] initcall kvm_setup_vsyscall_timeinfo+0x0/0x128 returned 0 =
after 0 usecs
[    0.334466] calling  spawn_ksoftirqd+0x0/0x3e @ 1
[    0.334485] initcall spawn_ksoftirqd+0x0/0x3e returned 0 after 0 usecs=

[    0.334489] calling  migration_init+0x0/0x39 @ 1
[    0.334492] initcall migration_init+0x0/0x39 returned 0 after 0 usecs
[    0.334495] calling  srcu_bootup_announce+0x0/0x35 @ 1
[    0.334499] rcu: Hierarchical SRCU implementation.
[    0.334501] initcall srcu_bootup_announce+0x0/0x35 returned 0 after 0 =
usecs
[    0.334505] calling  rcu_spawn_core_kthreads+0x0/0x7e @ 1
[    0.334509] initcall rcu_spawn_core_kthreads+0x0/0x7e returned 0 after=
 0 usecs
[    0.334513] calling  rcu_spawn_gp_kthread+0x0/0x138 @ 1
[    0.334528] initcall rcu_spawn_gp_kthread+0x0/0x138 returned 0 after 0=
 usecs
[    0.334532] calling  check_cpu_stall_init+0x0/0x20 @ 1
[    0.334536] initcall check_cpu_stall_init+0x0/0x20 returned 0 after 0 =
usecs
[    0.334540] calling  rcu_sysrq_init+0x0/0x28 @ 1
[    0.334544] initcall rcu_sysrq_init+0x0/0x28 returned 0 after 0 usecs
[    0.334547] calling  trace_init_flags_sys_enter+0x0/0x14 @ 1
[    0.334552] initcall trace_init_flags_sys_enter+0x0/0x14 returned 0 af=
ter 0 usecs
[    0.334556] calling  trace_init_flags_sys_exit+0x0/0x14 @ 1
[    0.334560] initcall trace_init_flags_sys_exit+0x0/0x14 returned 0 aft=
er 0 usecs
[    0.334564] calling  cpu_stop_init+0x0/0x8f @ 1
[    0.334581] initcall cpu_stop_init+0x0/0x8f returned 0 after 0 usecs
[    0.334584] calling  init_kprobes+0x0/0x184 @ 1
[    0.334868] initcall init_kprobes+0x0/0x184 returned 0 after 0 usecs
[    0.334872] calling  init_events+0x0/0x42 @ 1
[    0.334878] initcall init_events+0x0/0x42 returned 0 after 0 usecs
[    0.334881] calling  init_trace_printk+0x0/0x12 @ 1
[    0.334884] initcall init_trace_printk+0x0/0x12 returned 0 after 0 use=
cs
[    0.334887] calling  event_trace_enable_again+0x0/0x44 @ 1
[    0.334891] initcall event_trace_enable_again+0x0/0x44 returned 0 afte=
r 0 usecs
[    0.334894] calling  static_call_init+0x0/0x86 @ 1
[    0.334898] initcall static_call_init+0x0/0x86 returned 0 after 0 usec=
s
[    0.334902] calling  jump_label_init_module+0x0/0x17 @ 1
[    0.334905] initcall jump_label_init_module+0x0/0x17 returned 0 after =
0 usecs
[    0.334909] calling  dynamic_debug_init+0x0/0x1cb @ 1
[    0.334996] initcall dynamic_debug_init+0x0/0x1cb returned 0 after 0 u=
secs
[    0.335000] calling  initialize_ptr_random+0x0/0x50 @ 1
[    0.335009] initcall initialize_ptr_random+0x0/0x50 returned 0 after 0=
 usecs
[    0.335013] calling  efi_memreserve_root_init+0x0/0x2e @ 1
[    0.335017] initcall efi_memreserve_root_init+0x0/0x2e returned 0 afte=
r 0 usecs
[    0.335021] calling  efi_earlycon_remap_fb+0x0/0x57 @ 1
[    0.335025] initcall efi_earlycon_remap_fb+0x0/0x57 returned 0 after 0=
 usecs
[    0.335028] calling  idle_inject_init+0x0/0x17 @ 1
[    0.335046] initcall idle_inject_init+0x0/0x17 returned 0 after 0 usec=
s
[    0.335533] NMI watchdog: Enabled. Permanently consumes one hw-PMU cou=
nter.
[    0.335628] smp: Bringing up secondary CPUs ...
[    0.335720] x86: Booting SMP configuration:
[    0.335723] .... node  #0, CPUs:        #1  #2  #3  #4  #5  #6  #7  #8=
  #9 #10 #11
[    0.342720] smp: Brought up 1 node, 12 CPUs
[    0.342720] smpboot: Max logical packages: 1
[    0.342720] smpboot: Total of 12 processors activated (62399.80 BogoMI=
PS)
[    0.347183] devtmpfs: initialized
[    0.347183] x86/mm: Memory block size: 128MB
[    0.348159] calling  bpf_jit_charge_init+0x0/0x3a @ 1
[    0.348167] initcall bpf_jit_charge_init+0x0/0x3a returned 0 after 0 u=
secs
[    0.348171] calling  ipc_ns_init+0x0/0x45 @ 1
[    0.348177] initcall ipc_ns_init+0x0/0x45 returned 0 after 0 usecs
[    0.348181] calling  init_mmap_min_addr+0x0/0x1b @ 1
[    0.348186] initcall init_mmap_min_addr+0x0/0x1b returned 0 after 0 us=
ecs
[    0.348191] calling  pci_realloc_setup_params+0x0/0x4b @ 1
[    0.348195] initcall pci_realloc_setup_params+0x0/0x4b returned 0 afte=
r 0 usecs
[    0.348200] calling  net_ns_init+0x0/0x116 @ 1
[    0.348213] initcall net_ns_init+0x0/0x116 returned 0 after 0 usecs
[    0.348213] calling  inet_frag_wq_init+0x0/0x42 @ 1
[    0.348213] initcall inet_frag_wq_init+0x0/0x42 returned 0 after 0 use=
cs
[    0.348213] calling  xen_pvh_gnttab_setup+0x0/0x3a @ 1
[    0.348213] initcall xen_pvh_gnttab_setup+0x0/0x3a returned -19 after =
0 usecs
[    0.348213] calling  e820__register_nvs_regions+0x0/0x3d @ 1
[    0.348213] PM: Registering ACPI NVS region [mem 0xae795000-0xafb1efff=
] (20488192 bytes)
[    0.348213] initcall e820__register_nvs_regions+0x0/0x3d returned 0 af=
ter 0 usecs
[    0.348213] calling  cpufreq_register_tsc_scaling+0x0/0x32 @ 1
[    0.348213] initcall cpufreq_register_tsc_scaling+0x0/0x32 returned 0 =
after 0 usecs
[    0.348213] calling  reboot_init+0x0/0x45 @ 1
[    0.348213] initcall reboot_init+0x0/0x45 returned 0 after 0 usecs
[    0.348213] calling  init_lapic_sysfs+0x0/0x29 @ 1
[    0.348213] initcall init_lapic_sysfs+0x0/0x29 returned 0 after 0 usec=
s
[    0.348213] calling  alloc_frozen_cpus+0x0/0x23 @ 1
[    0.348213] initcall alloc_frozen_cpus+0x0/0x23 returned 0 after 0 use=
cs
[    0.348213] calling  cpu_hotplug_pm_sync_init+0x0/0x19 @ 1
[    0.348213] initcall cpu_hotplug_pm_sync_init+0x0/0x19 returned 0 afte=
r 0 usecs
[    0.348213] calling  wq_sysfs_init+0x0/0x30 @ 1
[    0.348213] initcall wq_sysfs_init+0x0/0x30 returned 0 after 0 usecs
[    0.348213] calling  ksysfs_init+0x0/0x9e @ 1
[    0.348213] initcall ksysfs_init+0x0/0x9e returned 0 after 0 usecs
[    0.348213] calling  schedutil_gov_init+0x0/0x17 @ 1
[    0.348213] initcall schedutil_gov_init+0x0/0x17 returned 0 after 0 us=
ecs
[    0.348213] calling  pm_init+0x0/0x79 @ 1
[    0.348213] initcall pm_init+0x0/0x79 returned 0 after 0 usecs
[    0.348213] calling  pm_disk_init+0x0/0x1e @ 1
[    0.348213] initcall pm_disk_init+0x0/0x1e returned 0 after 0 usecs
[    0.348213] calling  swsusp_header_init+0x0/0x31 @ 1
[    0.348213] initcall swsusp_header_init+0x0/0x31 returned 0 after 0 us=
ecs
[    0.348213] calling  em_debug_init+0x0/0x22 @ 1
[    0.348213] initcall em_debug_init+0x0/0x22 returned 0 after 0 usecs
[    0.348213] calling  rcu_set_runtime_mode+0x0/0x1c @ 1
[    0.348213] initcall rcu_set_runtime_mode+0x0/0x1c returned 0 after 0 =
usecs
[    0.348213] calling  init_jiffies_clocksource+0x0/0x1e @ 1
[    0.348213] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffff=
fff, max_idle_ns: 7645041785100000 ns
[    0.348213] initcall init_jiffies_clocksource+0x0/0x1e returned 0 afte=
r 0 usecs
[    0.348213] calling  futex_init+0x0/0x100 @ 1
[    0.348213] futex hash table entries: 4096 (order: 6, 262144 bytes, li=
near)
[    0.348213] initcall futex_init+0x0/0x100 returned 0 after 0 usecs
[    0.348213] calling  cgroup_wq_init+0x0/0x2e @ 1
[    0.348213] initcall cgroup_wq_init+0x0/0x2e returned 0 after 0 usecs
[    0.348213] calling  cgroup1_wq_init+0x0/0x2e @ 1
[    0.348213] initcall cgroup1_wq_init+0x0/0x2e returned 0 after 0 usecs=

[    0.348213] calling  ftrace_mod_cmd_init+0x0/0x12 @ 1
[    0.348213] initcall ftrace_mod_cmd_init+0x0/0x12 returned 0 after 0 u=
secs
[    0.348213] calling  init_wakeup_tracer+0x0/0x32 @ 1
[    0.348213] initcall init_wakeup_tracer+0x0/0x32 returned 0 after 0 us=
ecs
[    0.348213] calling  init_graph_trace+0x0/0x64 @ 1
[    0.348213] initcall init_graph_trace+0x0/0x64 returned 0 after 0 usec=
s
[    0.348213] calling  trace_events_synth_init_early+0x0/0x2c @ 1
[    0.348213] initcall trace_events_synth_init_early+0x0/0x2c returned 0=
 after 0 usecs
[    0.348213] calling  init_kprobe_trace_early+0x0/0x2b @ 1
[    0.348213] initcall init_kprobe_trace_early+0x0/0x2b returned 0 after=
 0 usecs
[    0.348213] calling  init_zero_pfn+0x0/0x3d @ 1
[    0.348213] initcall init_zero_pfn+0x0/0x3d returned 0 after 0 usecs
[    0.348213] calling  mem_cgroup_swap_init+0x0/0x5b @ 1
[    0.348213] initcall mem_cgroup_swap_init+0x0/0x5b returned 0 after 0 =
usecs
[    0.348213] calling  memory_failure_init+0x0/0x9f @ 1
[    0.348213] initcall memory_failure_init+0x0/0x9f returned 0 after 0 u=
secs
[    0.348213] calling  cma_init_reserved_areas+0x0/0x1b2 @ 1
[    0.348213] initcall cma_init_reserved_areas+0x0/0x1b2 returned 0 afte=
r 0 usecs
[    0.348213] calling  fsnotify_init+0x0/0x4e @ 1
[    0.350108] initcall fsnotify_init+0x0/0x4e returned 0 after 3906 usec=
s
[    0.350112] calling  filelock_init+0x0/0x9d @ 1
[    0.350123] initcall filelock_init+0x0/0x9d returned 0 after 0 usecs
[    0.350126] calling  init_script_binfmt+0x0/0x1b @ 1
[    0.350130] initcall init_script_binfmt+0x0/0x1b returned 0 after 0 us=
ecs
[    0.350133] calling  init_elf_binfmt+0x0/0x1b @ 1
[    0.350136] initcall init_elf_binfmt+0x0/0x1b returned 0 after 0 usecs=

[    0.350140] calling  init_compat_elf_binfmt+0x0/0x1b @ 1
[    0.350143] initcall init_compat_elf_binfmt+0x0/0x1b returned 0 after =
0 usecs
[    0.350147] calling  configfs_init+0x0/0x9f @ 1
[    0.350153] initcall configfs_init+0x0/0x9f returned 0 after 0 usecs
[    0.350157] calling  debugfs_init+0x0/0x68 @ 1
[    0.350161] initcall debugfs_init+0x0/0x68 returned 0 after 0 usecs
[    0.350165] calling  tracefs_init+0x0/0x42 @ 1
[    0.350169] initcall tracefs_init+0x0/0x42 returned 0 after 0 usecs
[    0.350173] calling  securityfs_init+0x0/0x73 @ 1
[    0.350186] initcall securityfs_init+0x0/0x73 returned 0 after 0 usecs=

[    0.350189] calling  lockdown_secfs_init+0x0/0x35 @ 1
[    0.350193] initcall lockdown_secfs_init+0x0/0x35 returned 0 after 0 u=
secs
[    0.350196] calling  register_xor_blocks+0x0/0xa3 @ 1
[    0.350199] initcall register_xor_blocks+0x0/0xa3 returned 0 after 0 u=
secs
[    0.350202] calling  prandom_init_early+0x0/0x14b @ 1
[    0.350207] initcall prandom_init_early+0x0/0x14b returned 0 after 0 u=
secs
[    0.350211] calling  pinctrl_init+0x0/0xb3 @ 1
[    0.350214] pinctrl core: initialized pinctrl subsystem
[    0.350225] initcall pinctrl_init+0x0/0xb3 returned 0 after 0 usecs
[    0.350229] calling  gpiolib_dev_init+0x0/0x101 @ 1
[    0.350241] initcall gpiolib_dev_init+0x0/0x101 returned 0 after 0 use=
cs
[    0.350245] calling  virtio_init+0x0/0x30 @ 1
[    0.350253] initcall virtio_init+0x0/0x30 returned 0 after 0 usecs
[    0.350256] calling  regulator_init+0x0/0xa1 @ 1
[    0.350308] initcall regulator_init+0x0/0xa1 returned 0 after 0 usecs
[    0.350313] calling  iommu_init+0x0/0x30 @ 1
[    0.350317] initcall iommu_init+0x0/0x30 returned 0 after 0 usecs
[    0.350319] calling  component_debug_init+0x0/0x22 @ 1
[    0.350323] initcall component_debug_init+0x0/0x22 returned 0 after 0 =
usecs
[    0.350327] calling  early_resume_init+0x0/0x9c @ 1
[    0.350514] PM: RTC time: 05:32:06, date: 2021-03-25
[    0.350517] initcall early_resume_init+0x0/0x9c returned 0 after 0 use=
cs
[    0.350520] calling  opp_debug_init+0x0/0x22 @ 1
[    0.350525] initcall opp_debug_init+0x0/0x22 returned 0 after 0 usecs
[    0.350528] calling  cpufreq_core_init+0x0/0x70 @ 1
[    0.350531] initcall cpufreq_core_init+0x0/0x70 returned 0 after 0 use=
cs
[    0.350534] calling  cpufreq_gov_performance_init+0x0/0x17 @ 1
[    0.350537] initcall cpufreq_gov_performance_init+0x0/0x17 returned 0 =
after 0 usecs
[    0.350541] calling  cpufreq_gov_powersave_init+0x0/0x17 @ 1
[    0.350543] initcall cpufreq_gov_powersave_init+0x0/0x17 returned 0 af=
ter 0 usecs
[    0.350547] calling  cpufreq_gov_userspace_init+0x0/0x17 @ 1
[    0.350549] initcall cpufreq_gov_userspace_init+0x0/0x17 returned 0 af=
ter 0 usecs
[    0.350552] calling  CPU_FREQ_GOV_ONDEMAND_init+0x0/0x17 @ 1
[    0.350555] initcall CPU_FREQ_GOV_ONDEMAND_init+0x0/0x17 returned 0 af=
ter 0 usecs
[    0.350559] calling  CPU_FREQ_GOV_CONSERVATIVE_init+0x0/0x17 @ 1
[    0.350562] initcall CPU_FREQ_GOV_CONSERVATIVE_init+0x0/0x17 returned =
0 after 0 usecs
[    0.350565] calling  cpuidle_init+0x0/0x26 @ 1
[    0.350570] initcall cpuidle_init+0x0/0x26 returned 0 after 0 usecs
[    0.350572] calling  capsule_reboot_register+0x0/0x17 @ 1
[    0.350576] initcall capsule_reboot_register+0x0/0x17 returned 0 after=
 0 usecs
[    0.350580] calling  sock_init+0x0/0xa4 @ 1
[    0.350688] initcall sock_init+0x0/0xa4 returned 0 after 0 usecs
[    0.350693] calling  net_inuse_init+0x0/0x29 @ 1
[    0.350698] initcall net_inuse_init+0x0/0x29 returned 0 after 0 usecs
[    0.350702] calling  net_defaults_init+0x0/0x29 @ 1
[    0.350706] initcall net_defaults_init+0x0/0x29 returned 0 after 0 use=
cs
[    0.350709] calling  init_default_flow_dissectors+0x0/0x55 @ 1
[    0.350714] initcall init_default_flow_dissectors+0x0/0x55 returned 0 =
after 0 usecs
[    0.350718] calling  netpoll_init+0x0/0x2e @ 1
[    0.350723] initcall netpoll_init+0x0/0x2e returned 0 after 0 usecs
[    0.350726] calling  netlink_proto_init+0x0/0x185 @ 1
[    0.350740] NET: Registered protocol family 16
[    0.350750] initcall netlink_proto_init+0x0/0x185 returned 0 after 0 u=
secs
[    0.350754] calling  genl_init+0x0/0x3f @ 1
[    0.350760] initcall genl_init+0x0/0x3f returned 0 after 0 usecs
[    0.350764] calling  tcp_bpf_v4_build_proto+0x0/0x71 @ 1
[    0.350767] initcall tcp_bpf_v4_build_proto+0x0/0x71 returned 0 after =
0 usecs
[    0.350770] calling  udp_bpf_v4_build_proto+0x0/0x3b @ 1
[    0.350772] initcall udp_bpf_v4_build_proto+0x0/0x3b returned 0 after =
0 usecs
[    0.350775] calling  bsp_pm_check_init+0x0/0x19 @ 1
[    0.350779] initcall bsp_pm_check_init+0x0/0x19 returned 0 after 0 use=
cs
[    0.350782] calling  trace_boot_init+0x0/0xde @ 1
[    0.350786] initcall trace_boot_init+0x0/0xde returned 0 after 0 usecs=

[    0.350789] calling  __gnttab_init+0x0/0x40 @ 1
[    0.350793] initcall __gnttab_init+0x0/0x40 returned -19 after 0 usecs=

[    0.350848] calling  irq_sysfs_init+0x0/0x97 @ 1
[    0.350916] initcall irq_sysfs_init+0x0/0x97 returned 0 after 0 usecs
[    0.350921] calling  dma_atomic_pool_init+0x0/0x152 @ 1
[    0.350960] DMA: preallocated 4096 KiB GFP_KERNEL pool for atomic allo=
cations
[    0.350960] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA pool for ato=
mic allocations
[    0.350960] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA32 pool for a=
tomic allocations
[    0.350968] initcall dma_atomic_pool_init+0x0/0x152 returned 0 after 0=
 usecs
[    0.350974] calling  audit_init+0x0/0x175 @ 1
[    0.350980] audit: initializing netlink subsys (disabled)
[    0.350995] initcall audit_init+0x0/0x175 returned 0 after 0 usecs
[    0.350995] audit: type=3D2000 audit(1616650326.048:1): state=3Dinitia=
lized audit_enabled=3D0 res=3D1
[    0.350995] calling  release_early_probes+0x0/0x45 @ 1
[    0.350995] initcall release_early_probes+0x0/0x45 returned 0 after 0 =
usecs
[    0.350995] calling  bdi_class_init+0x0/0x4e @ 1
[    0.350995] initcall bdi_class_init+0x0/0x4e returned 0 after 0 usecs
[    0.350995] calling  mm_sysfs_init+0x0/0x2e @ 1
[    0.350995] initcall mm_sysfs_init+0x0/0x2e returned 0 after 0 usecs
[    0.350995] calling  init_per_zone_wmark_min+0x0/0x7b @ 1
[    0.350995] initcall init_per_zone_wmark_min+0x0/0x7b returned 0 after=
 0 usecs
[    0.350995] calling  mpi_init+0x0/0x6d @ 1
[    0.350995] initcall mpi_init+0x0/0x6d returned 0 after 0 usecs
[    0.350995] calling  kobject_uevent_init+0x0/0x12 @ 1
[    0.350995] initcall kobject_uevent_init+0x0/0x12 returned 0 after 0 u=
secs
[    0.350995] calling  gpiolib_sysfs_init+0x0/0xa6 @ 1
[    0.350995] initcall gpiolib_sysfs_init+0x0/0xa6 returned 0 after 0 us=
ecs
[    0.350995] calling  acpi_gpio_setup_params+0x0/0x6d @ 1
[    0.350995] initcall acpi_gpio_setup_params+0x0/0x6d returned 0 after =
0 usecs
[    0.350995] calling  pcibus_class_init+0x0/0x1e @ 1
[    0.350995] initcall pcibus_class_init+0x0/0x1e returned 0 after 0 use=
cs
[    0.350995] calling  pci_driver_init+0x0/0x27 @ 1
[    0.350995] initcall pci_driver_init+0x0/0x27 returned 0 after 0 usecs=

[    0.350995] calling  rio_bus_init+0x0/0x4b @ 1
[    0.350995] initcall rio_bus_init+0x0/0x4b returned 0 after 0 usecs
[    0.350995] calling  backlight_class_init+0x0/0xad @ 1
[    0.350995] initcall backlight_class_init+0x0/0xad returned 0 after 0 =
usecs
[    0.350995] calling  xenbus_init+0x0/0x2ae @ 1
[    0.350995] initcall xenbus_init+0x0/0x2ae returned -19 after 0 usecs
[    0.350995] calling  tty_class_init+0x0/0x39 @ 1
[    0.350995] initcall tty_class_init+0x0/0x39 returned 0 after 0 usecs
[    0.350995] calling  vtconsole_class_init+0x0/0xdc @ 1
[    0.350995] initcall vtconsole_class_init+0x0/0xdc returned 0 after 0 =
usecs
[    0.350995] calling  serdev_init+0x0/0x22 @ 1
[    0.350995] initcall serdev_init+0x0/0x22 returned 0 after 0 usecs
[    0.350995] calling  iommu_dev_init+0x0/0x1e @ 1
[    0.350995] initcall iommu_dev_init+0x0/0x1e returned 0 after 0 usecs
[    0.350995] calling  mipi_dsi_bus_init+0x0/0x17 @ 1
[    0.350995] initcall mipi_dsi_bus_init+0x0/0x17 returned 0 after 0 use=
cs
[    0.350995] calling  devlink_class_init+0x0/0x4b @ 1
[    0.350995] initcall devlink_class_init+0x0/0x4b returned 0 after 0 us=
ecs
[    0.350995] calling  software_node_init+0x0/0x30 @ 1
[    0.350995] initcall software_node_init+0x0/0x30 returned 0 after 0 us=
ecs
[    0.350995] calling  wakeup_sources_debugfs_init+0x0/0x29 @ 1
[    0.350995] initcall wakeup_sources_debugfs_init+0x0/0x29 returned 0 a=
fter 0 usecs
[    0.350995] calling  wakeup_sources_sysfs_init+0x0/0x35 @ 1
[    0.350995] initcall wakeup_sources_sysfs_init+0x0/0x35 returned 0 aft=
er 0 usecs
[    0.350995] calling  isa_bus_init+0x0/0x44 @ 1
[    0.350995] initcall isa_bus_init+0x0/0x44 returned 0 after 0 usecs
[    0.350995] calling  register_node_type+0x0/0x38 @ 1
[    0.350995] initcall register_node_type+0x0/0x38 returned 0 after 0 us=
ecs
[    0.350995] calling  regmap_initcall+0x0/0x12 @ 1
[    0.350995] initcall regmap_initcall+0x0/0x12 returned 0 after 0 usecs=

[    0.350995] calling  sram_init+0x0/0x19 @ 1
[    0.350995] initcall sram_init+0x0/0x19 returned 0 after 0 usecs
[    0.350995] calling  syscon_init+0x0/0x19 @ 1
[    0.350995] initcall syscon_init+0x0/0x19 returned 0 after 0 usecs
[    0.350995] calling  spi_init+0x0/0xd0 @ 1
[    0.350995] initcall spi_init+0x0/0xd0 returned 0 after 0 usecs
[    0.350995] calling  i2c_init+0x0/0xb9 @ 1
[    0.350995] initcall i2c_init+0x0/0xb9 returned 0 after 0 usecs
[    0.350995] calling  thermal_init+0x0/0xfe @ 1
[    0.350995] thermal_sys: Registered thermal governor 'fair_share'
[    0.350995] thermal_sys: Registered thermal governor 'bang_bang'
[    0.350995] thermal_sys: Registered thermal governor 'step_wise'
[    0.350995] thermal_sys: Registered thermal governor 'user_space'
[    0.350995] thermal_sys: Registered thermal governor 'power_allocator'=

[    0.350995] initcall thermal_init+0x0/0xfe returned 0 after 0 usecs
[    0.350995] calling  eisa_init+0x0/0x31 @ 1
[    0.350995] EISA bus registered
[    0.350995] initcall eisa_init+0x0/0x31 returned 0 after 0 usecs
[    0.350995] calling  init_ladder+0x0/0x2a @ 1
[    0.350995] cpuidle: using governor ladder
[    0.350995] initcall init_ladder+0x0/0x2a returned 0 after 0 usecs
[    0.350995] calling  init_menu+0x0/0x17 @ 1
[    0.350995] cpuidle: using governor menu
[    0.350995] initcall init_menu+0x0/0x17 returned 0 after 0 usecs
[    0.350995] calling  teo_governor_init+0x0/0x17 @ 1
[    0.350995] initcall teo_governor_init+0x0/0x17 returned 0 after 0 use=
cs
[    0.350995] calling  init_haltpoll+0x0/0x26 @ 1
[    0.350995] initcall init_haltpoll+0x0/0x26 returned 0 after 0 usecs
[    0.350995] calling  pcc_init+0x0/0xa4 @ 1
[    0.350995] initcall pcc_init+0x0/0xa4 returned -19 after 0 usecs
[    0.350995] calling  amd_postcore_init+0x0/0x125 @ 1
[    0.350995] initcall amd_postcore_init+0x0/0x125 returned 0 after 0 us=
ecs
[    0.350995] calling  bts_init+0x0/0xc2 @ 1
[    0.350995] initcall bts_init+0x0/0xc2 returned 0 after 0 usecs
[    0.350995] calling  pt_init+0x0/0x36b @ 1
[    0.350995] initcall pt_init+0x0/0x36b returned 0 after 0 usecs
[    0.350995] calling  boot_params_ksysfs_init+0x0/0x295 @ 1
[    0.350995] initcall boot_params_ksysfs_init+0x0/0x295 returned 0 afte=
r 0 usecs
[    0.350995] calling  sbf_init+0x0/0xd9 @ 1
[    0.350995] Simple Boot Flag at 0x47 set to 0x1
[    0.350995] initcall sbf_init+0x0/0xd9 returned 0 after 0 usecs
[    0.350995] calling  arch_kdebugfs_init+0x0/0x22 @ 1
[    0.350995] initcall arch_kdebugfs_init+0x0/0x22 returned 0 after 0 us=
ecs
[    0.350995] calling  intel_pconfig_init+0x0/0xe4 @ 1
[    0.350995] initcall intel_pconfig_init+0x0/0xe4 returned 0 after 0 us=
ecs
[    0.350995] calling  mtrr_if_init+0x0/0x64 @ 1
[    0.350995] initcall mtrr_if_init+0x0/0x64 returned 0 after 0 usecs
[    0.350995] calling  activate_jump_labels+0x0/0x3a @ 1
[    0.350995] initcall activate_jump_labels+0x0/0x3a returned 0 after 0 =
usecs
[    0.350995] calling  ffh_cstate_init+0x0/0x30 @ 1
[    0.350995] initcall ffh_cstate_init+0x0/0x30 returned 0 after 0 usecs=

[    0.350995] calling  activate_jump_labels+0x0/0x3a @ 1
[    0.350995] initcall activate_jump_labels+0x0/0x3a returned 0 after 0 =
usecs
[    0.350995] calling  kvm_alloc_cpumask+0x0/0x9d @ 1
[    0.350995] initcall kvm_alloc_cpumask+0x0/0x9d returned 0 after 0 use=
cs
[    0.350995] calling  gigantic_pages_init+0x0/0x28 @ 1
[    0.350995] initcall gigantic_pages_init+0x0/0x28 returned 0 after 0 u=
secs
[    0.350995] calling  uv_rtc_setup_clock+0x0/0x277 @ 1
[    0.350995] initcall uv_rtc_setup_clock+0x0/0x277 returned -19 after 0=
 usecs
[    0.350995] calling  kcmp_cookies_init+0x0/0x3d @ 1
[    0.350995] initcall kcmp_cookies_init+0x0/0x3d returned 0 after 0 use=
cs
[    0.350995] calling  cryptomgr_init+0x0/0x17 @ 1
[    0.350995] initcall cryptomgr_init+0x0/0x17 returned 0 after 0 usecs
[    0.350995] calling  acpi_pci_init+0x0/0x67 @ 1
[    0.350995] ACPI FADT declares the system doesn't support PCIe ASPM, s=
o disable it
[    0.350995] ACPI: bus type PCI registered
[    0.350995] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.350995] initcall acpi_pci_init+0x0/0x67 returned 0 after 0 usecs
[    0.350995] calling  dma_channel_table_init+0x0/0xd7 @ 1
[    0.350995] initcall dma_channel_table_init+0x0/0xd7 returned 0 after =
0 usecs
[    0.350995] calling  dma_bus_init+0x0/0x108 @ 1
[    0.350995] initcall dma_bus_init+0x0/0x108 returned 0 after 0 usecs
[    0.350995] calling  register_xen_pci_notifier+0x0/0x33 @ 1
[    0.350995] initcall register_xen_pci_notifier+0x0/0x33 returned 0 aft=
er 0 usecs
[    0.350995] calling  xen_pcpu_init+0x0/0xbe @ 1
[    0.350995] initcall xen_pcpu_init+0x0/0xbe returned -19 after 0 usecs=

[    0.350995] calling  iommu_dma_init+0x0/0x30 @ 1
[    0.350995] initcall iommu_dma_init+0x0/0x30 returned 0 after 0 usecs
[    0.350995] calling  dmi_id_init+0x0/0x38b @ 1
[    0.350995] initcall dmi_id_init+0x0/0x38b returned 0 after 0 usecs
[    0.350995] calling  numachip_timer_init+0x0/0x5a @ 1
[    0.350995] initcall numachip_timer_init+0x0/0x5a returned -19 after 0=
 usecs
[    0.350995] calling  ts_dmi_init+0x0/0x6c @ 1
[    0.350995] initcall ts_dmi_init+0x0/0x6c returned 0 after 0 usecs
[    0.350995] calling  pci_arch_init+0x0/0x7b @ 1
[    0.350995] PCI: MMCONFIG for domain 0000 [bus 00-7f] at [mem 0xf00000=
00-0xf7ffffff] (base 0xf0000000)
[    0.350995] PCI: not using MMCONFIG
[    0.350995] PCI: Using configuration type 1 for base access
[    0.350995] initcall pci_arch_init+0x0/0x7b returned 0 after 0 usecs
[    0.350995] calling  init_vdso+0x0/0x25 @ 1
[    0.350995] initcall init_vdso+0x0/0x25 returned 0 after 0 usecs
[    0.350995] calling  sysenter_setup+0x0/0x19 @ 1
[    0.350995] initcall sysenter_setup+0x0/0x19 returned 0 after 0 usecs
[    0.350995] calling  fixup_ht_bug+0x0/0xbf @ 1
[    0.350995] initcall fixup_ht_bug+0x0/0xbf returned 0 after 0 usecs
[    0.350995] calling  topology_init+0x0/0xd1 @ 1
[    0.351365] initcall topology_init+0x0/0xd1 returned 0 after 0 usecs
[    0.351370] calling  intel_epb_init+0x0/0x74 @ 1
[    0.351379] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
[    0.351387] initcall intel_epb_init+0x0/0x74 returned 0 after 0 usecs
[    0.351387] calling  mtrr_init_finialize+0x0/0x47 @ 1
[    0.351387] initcall mtrr_init_finialize+0x0/0x47 returned 0 after 0 u=
secs
[    0.351387] calling  eisa_bus_probe+0x0/0x51 @ 1
[    0.351387] initcall eisa_bus_probe+0x0/0x51 returned 0 after 0 usecs
[    0.351387] calling  uid_cache_init+0x0/0x9a @ 1
[    0.351387] initcall uid_cache_init+0x0/0x9a returned 0 after 0 usecs
[    0.351387] calling  param_sysfs_init+0x0/0x1ea @ 1
[    0.355156] initcall param_sysfs_init+0x0/0x1ea returned 0 after 3906 =
usecs
[    0.355161] calling  user_namespace_sysctl_init+0x0/0x39 @ 1
[    0.355172] initcall user_namespace_sysctl_init+0x0/0x39 returned 0 af=
ter 0 usecs
[    0.355176] calling  proc_schedstat_init+0x0/0x2a @ 1
[    0.355181] initcall proc_schedstat_init+0x0/0x2a returned 0 after 0 u=
secs
[    0.355184] calling  pm_sysrq_init+0x0/0x1e @ 1
[    0.355195] initcall pm_sysrq_init+0x0/0x1e returned 0 after 0 usecs
[    0.355198] calling  create_proc_profile+0x0/0xf0 @ 1
[    0.355202] initcall create_proc_profile+0x0/0xf0 returned 0 after 0 u=
secs
[    0.355205] calling  crash_save_vmcoreinfo_init+0x0/0x74c @ 1
[    0.355236] initcall crash_save_vmcoreinfo_init+0x0/0x74c returned 0 a=
fter 0 usecs
[    0.355239] calling  crash_notes_memory_init+0x0/0x3e @ 1
[    0.355244] initcall crash_notes_memory_init+0x0/0x3e returned 0 after=
 0 usecs
[    0.355247] calling  cgroup_sysfs_init+0x0/0x1e @ 1
[    0.355251] initcall cgroup_sysfs_init+0x0/0x1e returned 0 after 0 use=
cs
[    0.355254] calling  cgroup_namespaces_init+0x0/0xd @ 1
[    0.355257] initcall cgroup_namespaces_init+0x0/0xd returned 0 after 0=
 usecs
[    0.355260] calling  user_namespaces_init+0x0/0x32 @ 1
[    0.355266] initcall user_namespaces_init+0x0/0x32 returned 0 after 0 =
usecs
[    0.355269] calling  init_optprobes+0x0/0x1f @ 1
[    0.355272] Kprobes globally optimized
[    0.355274] initcall init_optprobes+0x0/0x1f returned 0 after 0 usecs
[    0.355276] calling  hung_task_init+0x0/0x60 @ 1
[    0.355282] initcall hung_task_init+0x0/0x60 returned 0 after 0 usecs
[    0.355282] calling  send_signal_irq_work_init+0x0/0x5b @ 1
[    0.355282] initcall send_signal_irq_work_init+0x0/0x5b returned 0 aft=
er 0 usecs
[    0.355282] calling  dev_map_init+0x0/0x52 @ 1
[    0.355282] initcall dev_map_init+0x0/0x52 returned 0 after 0 usecs
[    0.355282] calling  cpu_map_init+0x0/0x46 @ 1
[    0.355282] initcall cpu_map_init+0x0/0x46 returned 0 after 0 usecs
[    0.355282] calling  netns_bpf_init+0x0/0x17 @ 1
[    0.355282] initcall netns_bpf_init+0x0/0x17 returned 0 after 0 usecs
[    0.355282] calling  stack_map_init+0x0/0x60 @ 1
[    0.355282] initcall stack_map_init+0x0/0x60 returned 0 after 0 usecs
[    0.355282] calling  oom_init+0x0/0x35 @ 1
[    0.355282] initcall oom_init+0x0/0x35 returned 0 after 0 usecs
[    0.355282] calling  default_bdi_init+0x0/0xb7 @ 1
[    0.355282] initcall default_bdi_init+0x0/0xb7 returned 0 after 0 usec=
s
[    0.355282] calling  cgwb_init+0x0/0x2e @ 1
[    0.355282] initcall cgwb_init+0x0/0x2e returned 0 after 0 usecs
[    0.355282] calling  percpu_enable_async+0x0/0x14 @ 1
[    0.355282] initcall percpu_enable_async+0x0/0x14 returned 0 after 0 u=
secs
[    0.355282] calling  kcompactd_init+0x0/0xa3 @ 1
[    0.355282] initcall kcompactd_init+0x0/0xa3 returned 0 after 0 usecs
[    0.355282] calling  init_user_reserve+0x0/0x50 @ 1
[    0.355282] initcall init_user_reserve+0x0/0x50 returned 0 after 0 use=
cs
[    0.355282] calling  init_admin_reserve+0x0/0x50 @ 1
[    0.355282] initcall init_admin_reserve+0x0/0x50 returned 0 after 0 us=
ecs
[    0.355282] calling  init_reserve_notifier+0x0/0x24 @ 1
[    0.355282] initcall init_reserve_notifier+0x0/0x24 returned 0 after 0=
 usecs
[    0.355282] calling  swap_init_sysfs+0x0/0x6f @ 1
[    0.355282] initcall swap_init_sysfs+0x0/0x6f returned 0 after 0 usecs=

[    0.355282] calling  swapfile_init+0x0/0xa1 @ 1
[    0.355282] initcall swapfile_init+0x0/0xa1 returned 0 after 0 usecs
[    0.355282] calling  hugetlb_init+0x0/0x4c7 @ 1
[    0.355282] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pag=
es
[    0.355282] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pag=
es
[    0.355282] initcall hugetlb_init+0x0/0x4c7 returned 0 after 0 usecs
[    0.355282] calling  ksm_init+0x0/0x1a5 @ 1
[    0.355282] initcall ksm_init+0x0/0x1a5 returned 0 after 0 usecs
[    0.355282] calling  hugepage_init+0x0/0x169 @ 1
[    0.355282] initcall hugepage_init+0x0/0x169 returned 0 after 0 usecs
[    0.355282] calling  mem_cgroup_init+0x0/0x12f @ 1
[    0.355282] initcall mem_cgroup_init+0x0/0x12f returned 0 after 0 usec=
s
[    0.355282] calling  page_idle_init+0x0/0x38 @ 1
[    0.355282] initcall page_idle_init+0x0/0x38 returned 0 after 0 usecs
[    0.355282] calling  io_wq_init+0x0/0x3a @ 1
[    0.355282] initcall io_wq_init+0x0/0x3a returned 0 after 0 usecs
[    0.355282] calling  sel_ib_pkey_init+0x0/0x3b @ 1
[    0.355282] initcall sel_ib_pkey_init+0x0/0x3b returned 0 after 0 usec=
s
[    0.355282] calling  seqiv_module_init+0x0/0x17 @ 1
[    0.355282] initcall seqiv_module_init+0x0/0x17 returned 0 after 0 use=
cs
[    0.355282] calling  dh_init+0x0/0x20 @ 1
[    0.355282] initcall dh_init+0x0/0x20 returned 0 after 0 usecs
[    0.355282] calling  rsa_init+0x0/0x50 @ 1
[    0.355282] initcall rsa_init+0x0/0x50 returned 0 after 0 usecs
[    0.355282] calling  hmac_module_init+0x0/0x17 @ 1
[    0.355282] initcall hmac_module_init+0x0/0x17 returned 0 after 0 usec=
s
[    0.355282] calling  crypto_null_mod_init+0x0/0x72 @ 1
[    0.355282] initcall crypto_null_mod_init+0x0/0x72 returned 0 after 0 =
usecs
[    0.355282] calling  md5_mod_init+0x0/0x17 @ 1
[    0.355282] initcall md5_mod_init+0x0/0x17 returned 0 after 0 usecs
[    0.355282] calling  sha1_generic_mod_init+0x0/0x17 @ 1
[    0.355282] initcall sha1_generic_mod_init+0x0/0x17 returned 0 after 0=
 usecs
[    0.355282] calling  sha256_generic_mod_init+0x0/0x1c @ 1
[    0.355282] initcall sha256_generic_mod_init+0x0/0x1c returned 0 after=
 0 usecs
[    0.355282] calling  sha512_generic_mod_init+0x0/0x1c @ 1
[    0.355282] initcall sha512_generic_mod_init+0x0/0x1c returned 0 after=
 0 usecs
[    0.355282] calling  blake2b_mod_init+0x0/0x1c @ 1
[    0.355282] initcall blake2b_mod_init+0x0/0x1c returned 0 after 0 usec=
s
[    0.355282] calling  crypto_ecb_module_init+0x0/0x17 @ 1
[    0.355282] initcall crypto_ecb_module_init+0x0/0x17 returned 0 after =
0 usecs
[    0.355282] calling  crypto_cbc_module_init+0x0/0x17 @ 1
[    0.355282] initcall crypto_cbc_module_init+0x0/0x17 returned 0 after =
0 usecs
[    0.355282] calling  crypto_cts_module_init+0x0/0x17 @ 1
[    0.355282] initcall crypto_cts_module_init+0x0/0x17 returned 0 after =
0 usecs
[    0.355282] calling  xts_module_init+0x0/0x17 @ 1
[    0.355282] initcall xts_module_init+0x0/0x17 returned 0 after 0 usecs=

[    0.355282] calling  crypto_ctr_module_init+0x0/0x1c @ 1
[    0.355282] initcall crypto_ctr_module_init+0x0/0x1c returned 0 after =
0 usecs
[    0.355282] calling  crypto_gcm_module_init+0x0/0x6f @ 1
[    0.355282] initcall crypto_gcm_module_init+0x0/0x6f returned 0 after =
0 usecs
[    0.355282] calling  aes_init+0x0/0x17 @ 1
[    0.355282] initcall aes_init+0x0/0x17 returned 0 after 0 usecs
[    0.355282] calling  deflate_mod_init+0x0/0x49 @ 1
[    0.355282] initcall deflate_mod_init+0x0/0x49 returned 0 after 0 usec=
s
[    0.355282] calling  crc32c_mod_init+0x0/0x17 @ 1
[    0.355282] initcall crc32c_mod_init+0x0/0x17 returned 0 after 0 usecs=

[    0.355282] calling  crct10dif_mod_init+0x0/0x17 @ 1
[    0.355282] initcall crct10dif_mod_init+0x0/0x17 returned 0 after 0 us=
ecs
[    0.355282] calling  lzo_mod_init+0x0/0x44 @ 1
[    0.355282] initcall lzo_mod_init+0x0/0x44 returned 0 after 0 usecs
[    0.355282] calling  lzorle_mod_init+0x0/0x44 @ 1
[    0.355282] initcall lzorle_mod_init+0x0/0x44 returned 0 after 0 usecs=

[    0.355282] calling  xxhash_mod_init+0x0/0x17 @ 1
[    0.355282] initcall xxhash_mod_init+0x0/0x17 returned 0 after 0 usecs=

[    0.355282] calling  drbg_init+0x0/0x89 @ 1
[    0.355282] initcall drbg_init+0x0/0x89 returned 0 after 0 usecs
[    0.355282] calling  ghash_mod_init+0x0/0x17 @ 1
[    0.355282] initcall ghash_mod_init+0x0/0x17 returned 0 after 0 usecs
[    0.355282] calling  init_bio+0x0/0x8d @ 1
[    0.355282] initcall init_bio+0x0/0x8d returned 0 after 0 usecs
[    0.355282] calling  blk_settings_init+0x0/0x2f @ 1
[    0.355282] initcall blk_settings_init+0x0/0x2f returned 0 after 0 use=
cs
[    0.355282] calling  blk_ioc_init+0x0/0x2f @ 1
[    0.355282] initcall blk_ioc_init+0x0/0x2f returned 0 after 0 usecs
[    0.355282] calling  blk_mq_init+0x0/0xbd @ 1
[    0.355282] initcall blk_mq_init+0x0/0xbd returned 0 after 0 usecs
[    0.355282] calling  genhd_device_init+0x0/0x67 @ 1
[    0.355282] initcall genhd_device_init+0x0/0x67 returned 0 after 0 use=
cs
[    0.355282] calling  blkcg_init+0x0/0x2e @ 1
[    0.355282] initcall blkcg_init+0x0/0x2e returned 0 after 0 usecs
[    0.355282] calling  bio_crypt_ctx_init+0x0/0x61 @ 1
[    0.355282] initcall bio_crypt_ctx_init+0x0/0x61 returned 0 after 0 us=
ecs
[    0.355282] calling  raid6_select_algo+0x0/0x30d @ 1
[    0.422099] raid6: avx2x4   gen() 28947 MB/s
[    0.490099] raid6: avx2x4   xor() 13144 MB/s
[    0.558098] raid6: avx2x2   gen() 29098 MB/s
[    0.626098] raid6: avx2x2   xor() 17305 MB/s
[    0.694100] raid6: avx2x1   gen() 24630 MB/s
[    0.762099] raid6: avx2x1   xor() 14473 MB/s
[    0.830101] raid6: sse2x4   gen() 11700 MB/s
[    0.898101] raid6: sse2x4   xor()  6449 MB/s
[    0.966099] raid6: sse2x2   gen() 11870 MB/s
[    1.034101] raid6: sse2x2   xor()  7227 MB/s
[    1.102100] raid6: sse2x1   gen()  9963 MB/s
[    1.170099] raid6: sse2x1   xor()  5093 MB/s
[    1.170101] raid6: using algorithm avx2x2 gen() 29098 MB/s
[    1.170103] raid6: .... xor() 17305 MB/s, rmw enabled
[    1.170105] raid6: using avx2x2 recovery algorithm
[    1.170107] initcall raid6_select_algo+0x0/0x30d returned 0 after 7968=
75 usecs
[    1.170112] calling  irq_poll_setup+0x0/0x71 @ 1
[    1.170119] initcall irq_poll_setup+0x0/0x71 returned 0 after 0 usecs
[    1.170119] calling  sx150x_init+0x0/0x19 @ 1
[    1.170130] initcall sx150x_init+0x0/0x19 returned 0 after 0 usecs
[    1.170130] calling  byt_gpio_init+0x0/0x19 @ 1
[    1.170138] initcall byt_gpio_init+0x0/0x19 returned 0 after 0 usecs
[    1.170142] calling  chv_pinctrl_init+0x0/0x19 @ 1
[    1.170149] initcall chv_pinctrl_init+0x0/0x19 returned 0 after 0 usec=
s
[    1.170153] calling  gpiolib_debugfs_init+0x0/0x29 @ 1
[    1.170165] initcall gpiolib_debugfs_init+0x0/0x29 returned 0 after 0 =
usecs
[    1.170169] calling  palmas_gpio_init+0x0/0x19 @ 1
[    1.170175] initcall palmas_gpio_init+0x0/0x19 returned 0 after 0 usec=
s
[    1.170179] calling  rc5t583_gpio_init+0x0/0x19 @ 1
[    1.170185] initcall rc5t583_gpio_init+0x0/0x19 returned 0 after 0 use=
cs
[    1.170189] calling  tps6586x_gpio_init+0x0/0x19 @ 1
[    1.170195] initcall tps6586x_gpio_init+0x0/0x19 returned 0 after 0 us=
ecs
[    1.170199] calling  tps65910_gpio_init+0x0/0x19 @ 1
[    1.170205] initcall tps65910_gpio_init+0x0/0x19 returned 0 after 0 us=
ecs
[    1.170209] calling  pwm_debugfs_init+0x0/0x29 @ 1
[    1.170214] initcall pwm_debugfs_init+0x0/0x29 returned 0 after 0 usec=
s
[    1.170218] calling  pwm_sysfs_init+0x0/0x1e @ 1
[    1.170227] initcall pwm_sysfs_init+0x0/0x1e returned 0 after 0 usecs
[    1.170231] calling  pci_slot_init+0x0/0x40 @ 1
[    1.170236] initcall pci_slot_init+0x0/0x40 returned 0 after 0 usecs
[    1.170239] calling  fbmem_init+0x0/0xe7 @ 1
[    1.170262] fbcon: Taking over console
[    1.170269] initcall fbmem_init+0x0/0xe7 returned 0 after 0 usecs
[    1.170271] calling  scan_for_dmi_ipmi+0x0/0x262 @ 1
[    1.170272] initcall scan_for_dmi_ipmi+0x0/0x262 returned 0 after 0 us=
ecs
[    1.170274] calling  acpi_init+0x0/0x48d @ 1
[    1.170296] ACPI: Added _OSI(Module Device)
[    1.170298] ACPI: Added _OSI(Processor Device)
[    1.170300] ACPI: Added _OSI(3.0 _SCP Extensions)
[    1.170302] ACPI: Added _OSI(Processor Aggregator Device)
[    1.170304] ACPI: Added _OSI(Linux-Dell-Video)
[    1.170306] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    1.170308] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[    1.246396] ACPI: 15 ACPI AML tables successfully acquired and loaded
[    1.247814] ACPI: EC: EC started
[    1.247816] ACPI: EC: interrupt blocked
[    1.249420] ACPI: EC: EC_CMD/EC_SC=3D0x66, EC_DATA=3D0x62
[    1.249423] ACPI: EC: Boot ECDT EC used to handle transactions
[    1.251510] ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
[    1.325955] ACPI: Dynamic OEM Table Load:
[    1.325970] ACPI: SSDT 0xFFFF8CE18363D100 0000FC (v02 PmRef  Cpu0Psd  =
00003000 INTL 20160527)
[    1.327208] ACPI: \_SB_.PR00: _OSC native thermal LVT Acked
[    1.328519] ACPI: Dynamic OEM Table Load:
[    1.328531] ACPI: SSDT 0xFFFF8CE183646800 000400 (v02 PmRef  Cpu0Cst  =
00003001 INTL 20160527)
[    1.329909] ACPI: Dynamic OEM Table Load:
[    1.329921] ACPI: SSDT 0xFFFF8CE183615800 0005FD (v02 PmRef  Cpu0Ist  =
00003000 INTL 20160527)
[    1.331424] ACPI: Dynamic OEM Table Load:
[    1.331434] ACPI: SSDT 0xFFFF8CE183638C00 00016C (v02 PmRef  Cpu0Hwp  =
00003000 INTL 20160527)
[    1.332723] ACPI: Dynamic OEM Table Load:
[    1.332736] ACPI: SSDT 0xFFFF8CE183634000 000BEA (v02 PmRef  HwpLvt   =
00003000 INTL 20160527)
[    1.334346] ACPI: Dynamic OEM Table Load:
[    1.334357] ACPI: SSDT 0xFFFF8CE183617000 000778 (v02 PmRef  ApIst    =
00003000 INTL 20160527)
[    1.335876] ACPI: Dynamic OEM Table Load:
[    1.335886] ACPI: SSDT 0xFFFF8CE183642400 0003D7 (v02 PmRef  ApHwp    =
00003000 INTL 20160527)
[    1.337400] ACPI: Dynamic OEM Table Load:
[    1.337411] ACPI: SSDT 0xFFFF8CE183635000 000D22 (v02 PmRef  ApPsd    =
00003000 INTL 20160527)
[    1.339816] ACPI: Dynamic OEM Table Load:
[    1.339827] ACPI: SSDT 0xFFFF8CE183641C00 0003CA (v02 PmRef  ApCst    =
00003000 INTL 20160527)
[    1.346525] ACPI: Interpreter enabled
[    1.346582] ACPI: (supports S0 S3 S4 S5)
[    1.346585] ACPI: Using IOAPIC for interrupt routing
[    1.346629] PCI: MMCONFIG for domain 0000 [bus 00-7f] at [mem 0xf00000=
00-0xf7ffffff] (base 0xf0000000)
[    1.348006] PCI: MMCONFIG at [mem 0xf0000000-0xf7ffffff] reserved in A=
CPI motherboard resources
[    1.348020] PCI: Using host bridge windows from ACPI; if necessary, us=
e "pci=3Dnocrs" and report a bug
[    1.348588] ACPI: Enabled 11 GPEs in block 00 to 7F
[    1.350885] ACPI: PM: Power Resource [PG00] (on)
[    1.351347] ACPI: PM: Power Resource [PG01] (on)
[    1.351802] ACPI: PM: Power Resource [PG02] (on)
[    1.355112] ACPI: PM: Power Resource [PUBS] (on)
[    1.359414] ACPI: PM: Power Resource [BTPR] (on)
[    1.360564] ACPI: PM: Power Resource [USBC] (on)
[    1.361121] ACPI: PM: Power Resource [PXP] (on)
[    1.365637] ACPI: PM: Power Resource [PXP] (on)
[    1.375146] ACPI: PM: Power Resource [V0PR] (on)
[    1.375380] ACPI: PM: Power Resource [V1PR] (on)
[    1.375605] ACPI: PM: Power Resource [V2PR] (on)
[    1.377175] ACPI: PM: Power Resource [WRST] (on)
[    1.381096] ACPI: PM: Power Resource [PIN] (off)
[    1.381128] ACPI: PM: Power Resource [PINP] (off)
[    1.381806] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-7e])
[    1.381817] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM Cl=
ockPM Segments MSI HPX-Type3]
[    1.387301] acpi PNP0A08:00: _OSC: platform does not support [AER]
[    1.389988] acpi PNP0A08:00: _OSC: OS now controls [PCIeHotplug SHPCHo=
tplug PME PCIeCapability LTR]
[    1.389992] acpi PNP0A08:00: FADT indicates ASPM is unsupported, using=
 BIOS configuration
[    1.393516] PCI host bridge to bus 0000:00
[    1.393520] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 wind=
ow]
[    1.393523] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff wind=
ow]
[    1.393526] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bf=
fff window]
[    1.393528] pci_bus 0000:00: root bus resource [mem 0xbe800000-0xeffff=
fff window]
[    1.393531] pci_bus 0000:00: root bus resource [mem 0x4000000000-0x7ff=
fffffff window]
[    1.393534] pci_bus 0000:00: root bus resource [mem 0xfc800000-0xfe7ff=
fff window]
[    1.393537] pci_bus 0000:00: root bus resource [bus 00-7e]
[    1.393557] pci 0000:00:00.0: calling  quirk_mmio_always_on+0x0/0x20 @=
 1
[    1.393563] pci 0000:00:00.0: quirk_mmio_always_on+0x0/0x20 took 0 use=
cs
[    1.393567] pci 0000:00:00.0: [8086:9b54] type 00 class 0x060000
[    1.393591] pci 0000:00:00.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.393597] pci 0000:00:00.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.394859] pci 0000:00:01.0: calling  quirk_cmd_compl+0x0/0x70 @ 1
[    1.394865] pci 0000:00:01.0: quirk_cmd_compl+0x0/0x70 took 0 usecs
[    1.394868] pci 0000:00:01.0: calling  quirk_no_aersid+0x0/0x30 @ 1
[    1.394874] pci 0000:00:01.0: quirk_no_aersid+0x0/0x30 took 0 usecs
[    1.394878] pci 0000:00:01.0: [8086:1901] type 01 class 0x060400
[    1.394908] pci 0000:00:01.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.394913] pci 0000:00:01.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.394917] pci 0000:00:01.0: calling  pci_fixup_transparent_bridge+0x=
0/0x20 @ 1
[    1.394923] pci 0000:00:01.0: pci_fixup_transparent_bridge+0x0/0x20 to=
ok 0 usecs
[    1.394943] pci 0000:00:01.0: PME# supported from D0 D3hot D3cold
[    1.396337] pci 0000:00:02.0: [8086:9bc4] type 00 class 0x030000
[    1.396348] pci 0000:00:02.0: reg 0x10: [mem 0x6040000000-0x6040ffffff=
 64bit]
[    1.396356] pci 0000:00:02.0: reg 0x18: [mem 0x4000000000-0x400fffffff=
 64bit pref]
[    1.396361] pci 0000:00:02.0: reg 0x20: [io  0x4000-0x403f]
[    1.396379] pci 0000:00:02.0: calling  efifb_fixup_resources+0x0/0xf0 =
@ 1
[    1.396385] pci 0000:00:02.0: BAR 2: assigned to efifb
[    1.396387] pci 0000:00:02.0: efifb_fixup_resources+0x0/0xf0 took 0 us=
ecs
[    1.396390] pci 0000:00:02.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.396395] pci 0000:00:02.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.397701] pci 0000:00:04.0: [8086:1903] type 00 class 0x118000
[    1.397712] pci 0000:00:04.0: reg 0x10: [mem 0x6041110000-0x6041117fff=
 64bit]
[    1.397733] pci 0000:00:04.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.397739] pci 0000:00:04.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.399108] pci 0000:00:08.0: [8086:1911] type 00 class 0x088000
[    1.399118] pci 0000:00:08.0: reg 0x10: [mem 0x6041128000-0x6041128fff=
 64bit]
[    1.399138] pci 0000:00:08.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.399144] pci 0000:00:08.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.400451] pci 0000:00:12.0: [8086:06f9] type 00 class 0x118000
[    1.400469] pci 0000:00:12.0: reg 0x10: [mem 0x6041127000-0x6041127fff=
 64bit]
[    1.400505] pci 0000:00:12.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.400510] pci 0000:00:12.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.401831] pci 0000:00:14.0: [8086:06ed] type 00 class 0x0c0330
[    1.401848] pci 0000:00:14.0: reg 0x10: [mem 0x6041100000-0x604110ffff=
 64bit]
[    1.401886] pci 0000:00:14.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.401891] pci 0000:00:14.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.401925] pci 0000:00:14.0: PME# supported from D3hot D3cold
[    1.403305] pci 0000:00:14.2: [8086:06ef] type 00 class 0x050000
[    1.403325] pci 0000:00:14.2: reg 0x10: [mem 0x6041120000-0x6041121fff=
 64bit]
[    1.403337] pci 0000:00:14.2: reg 0x18: [mem 0x6041126000-0x6041126fff=
 64bit]
[    1.403364] pci 0000:00:14.2: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.403369] pci 0000:00:14.2: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.404705] pci 0000:00:14.3: [8086:06f0] type 00 class 0x028000
[    1.404791] pci 0000:00:14.3: reg 0x10: [mem 0x604111c000-0x604111ffff=
 64bit]
[    1.404906] pci 0000:00:14.3: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.404912] pci 0000:00:14.3: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.405033] pci 0000:00:14.3: PME# supported from D0 D3hot D3cold
[    1.406460] pci 0000:00:15.0: [8086:06e8] type 00 class 0x0c8000
[    1.406502] pci 0000:00:15.0: reg 0x10: [mem 0x6041125000-0x6041125fff=
 64bit]
[    1.406584] pci 0000:00:15.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.406590] pci 0000:00:15.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.408027] pci 0000:00:15.1: [8086:06e9] type 00 class 0x0c8000
[    1.408076] pci 0000:00:15.1: reg 0x10: [mem 0x6041124000-0x6041124fff=
 64bit]
[    1.408184] pci 0000:00:15.1: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.408190] pci 0000:00:15.1: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.409640] pci 0000:00:16.0: [8086:06e0] type 00 class 0x078000
[    1.409661] pci 0000:00:16.0: reg 0x10: [mem 0x6041123000-0x6041123fff=
 64bit]
[    1.409703] pci 0000:00:16.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.409709] pci 0000:00:16.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.409749] pci 0000:00:16.0: PME# supported from D3hot
[    1.411164] pci 0000:00:1c.0: calling  quirk_cmd_compl+0x0/0x70 @ 1
[    1.411169] pci 0000:00:1c.0: quirk_cmd_compl+0x0/0x70 took 0 usecs
[    1.411173] pci 0000:00:1c.0: calling  quirk_no_aersid+0x0/0x30 @ 1
[    1.411177] pci 0000:00:1c.0: quirk_no_aersid+0x0/0x30 took 0 usecs
[    1.411182] pci 0000:00:1c.0: [8086:06b8] type 01 class 0x060400
[    1.411232] pci 0000:00:1c.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.411237] pci 0000:00:1c.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.411242] pci 0000:00:1c.0: calling  pci_fixup_transparent_bridge+0x=
0/0x20 @ 1
[    1.411247] pci 0000:00:1c.0: pci_fixup_transparent_bridge+0x0/0x20 to=
ok 0 usecs
[    1.412494] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    1.412526] pci 0000:00:1c.0: PTM enabled (root), 4ns granularity
[    1.412724] pci 0000:00:1c.6: calling  quirk_cmd_compl+0x0/0x70 @ 1
[    1.412730] pci 0000:00:1c.6: quirk_cmd_compl+0x0/0x70 took 0 usecs
[    1.412733] pci 0000:00:1c.6: calling  quirk_no_aersid+0x0/0x30 @ 1
[    1.412738] pci 0000:00:1c.6: quirk_no_aersid+0x0/0x30 took 0 usecs
[    1.412742] pci 0000:00:1c.6: [8086:06be] type 01 class 0x060400
[    1.412793] pci 0000:00:1c.6: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.412798] pci 0000:00:1c.6: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.412803] pci 0000:00:1c.6: calling  pci_fixup_transparent_bridge+0x=
0/0x20 @ 1
[    1.412808] pci 0000:00:1c.6: pci_fixup_transparent_bridge+0x0/0x20 to=
ok 0 usecs
[    1.412854] pci 0000:00:1c.6: PME# supported from D0 D3hot D3cold
[    1.412884] pci 0000:00:1c.6: PTM enabled (root), 4ns granularity
[    1.414255] pci 0000:00:1c.7: calling  quirk_cmd_compl+0x0/0x70 @ 1
[    1.414261] pci 0000:00:1c.7: quirk_cmd_compl+0x0/0x70 took 0 usecs
[    1.414264] pci 0000:00:1c.7: calling  quirk_no_aersid+0x0/0x30 @ 1
[    1.414269] pci 0000:00:1c.7: quirk_no_aersid+0x0/0x30 took 0 usecs
[    1.414273] pci 0000:00:1c.7: [8086:06bf] type 01 class 0x060400
[    1.414325] pci 0000:00:1c.7: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.414330] pci 0000:00:1c.7: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.414335] pci 0000:00:1c.7: calling  pci_fixup_transparent_bridge+0x=
0/0x20 @ 1
[    1.414340] pci 0000:00:1c.7: pci_fixup_transparent_bridge+0x0/0x20 to=
ok 0 usecs
[    1.414386] pci 0000:00:1c.7: PME# supported from D0 D3hot D3cold
[    1.414415] pci 0000:00:1c.7: PTM enabled (root), 4ns granularity
[    1.415787] pci 0000:00:1d.0: calling  quirk_cmd_compl+0x0/0x70 @ 1
[    1.415793] pci 0000:00:1d.0: quirk_cmd_compl+0x0/0x70 took 0 usecs
[    1.415796] pci 0000:00:1d.0: calling  quirk_no_aersid+0x0/0x30 @ 1
[    1.415801] pci 0000:00:1d.0: quirk_no_aersid+0x0/0x30 took 0 usecs
[    1.415805] pci 0000:00:1d.0: [8086:06b0] type 01 class 0x060400
[    1.415861] pci 0000:00:1d.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.415866] pci 0000:00:1d.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.415870] pci 0000:00:1d.0: calling  pci_fixup_transparent_bridge+0x=
0/0x20 @ 1
[    1.415875] pci 0000:00:1d.0: pci_fixup_transparent_bridge+0x0/0x20 to=
ok 0 usecs
[    1.415925] pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
[    1.415958] pci 0000:00:1d.0: PTM enabled (root), 4ns granularity
[    1.417359] pci 0000:00:1f.0: [8086:068e] type 00 class 0x060100
[    1.417429] pci 0000:00:1f.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.417435] pci 0000:00:1f.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.418805] pci 0000:00:1f.3: [8086:06c8] type 00 class 0x040380
[    1.418839] pci 0000:00:1f.3: reg 0x10: [mem 0x6041118000-0x604111bfff=
 64bit]
[    1.418877] pci 0000:00:1f.3: reg 0x20: [mem 0x6041000000-0x60410fffff=
 64bit]
[    1.418900] pci 0000:00:1f.3: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.418905] pci 0000:00:1f.3: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.418970] pci 0000:00:1f.3: PME# supported from D3hot D3cold
[    1.420365] pci 0000:00:1f.4: [8086:06a3] type 00 class 0x0c0500
[    1.420390] pci 0000:00:1f.4: reg 0x10: [mem 0x6041122000-0x60411220ff=
 64bit]
[    1.420419] pci 0000:00:1f.4: reg 0x20: [io  0xefa0-0xefbf]
[    1.420450] pci 0000:00:1f.4: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.420455] pci 0000:00:1f.4: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.421797] pci 0000:00:1f.5: [8086:06a4] type 00 class 0x0c8000
[    1.421814] pci 0000:00:1f.5: reg 0x10: [mem 0xfe010000-0xfe010fff]
[    1.421870] pci 0000:00:1f.5: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.421875] pci 0000:00:1f.5: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.423148] pci 0000:00:1f.6: calling  quirk_f0_vpd_link+0x0/0x60 @ 1
[    1.423154] pci 0000:00:1f.6: quirk_f0_vpd_link+0x0/0x60 took 0 usecs
[    1.423157] pci 0000:00:1f.6: [8086:0d4d] type 00 class 0x020000
[    1.423195] pci 0000:00:1f.6: reg 0x10: [mem 0xee480000-0xee49ffff]
[    1.423298] pci 0000:00:1f.6: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.423303] pci 0000:00:1f.6: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.423366] pci 0000:00:1f.6: PME# supported from D0 D3hot D3cold
[    1.424711] pci 0000:01:00.0: [10de:1fb8] type 00 class 0x030000
[    1.424735] pci 0000:01:00.0: reg 0x10: [mem 0xed000000-0xedffffff]
[    1.424755] pci 0000:01:00.0: reg 0x14: [mem 0xc0000000-0xcfffffff 64b=
it pref]
[    1.424775] pci 0000:01:00.0: reg 0x1c: [mem 0xd0000000-0xd1ffffff 64b=
it pref]
[    1.424789] pci 0000:01:00.0: reg 0x24: [io  0x3000-0x307f]
[    1.424802] pci 0000:01:00.0: reg 0x30: [mem 0xfff80000-0xffffffff pre=
f]
[    1.424829] pci 0000:01:00.0: calling  quirk_nvidia_hda+0x0/0x60 @ 1
[    1.424836] pci 0000:01:00.0: quirk_nvidia_hda+0x0/0x60 took 0 usecs
[    1.424839] pci 0000:01:00.0: calling  efifb_fixup_resources+0x0/0xf0 =
@ 1
[    1.424843] pci 0000:01:00.0: efifb_fixup_resources+0x0/0xf0 took 0 us=
ecs
[    1.424905] pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
[    1.425064] pci 0000:01:00.1: [10de:10fa] type 00 class 0x040300
[    1.425085] pci 0000:01:00.1: reg 0x10: [mem 0xee000000-0xee003fff]
[    1.425306] pci 0000:00:01.0: PCI bridge to [bus 01]
[    1.425310] pci 0000:00:01.0:   bridge window [io  0x3000-0x3fff]
[    1.425314] pci 0000:00:01.0:   bridge window [mem 0xed000000-0xee0fff=
ff]
[    1.425318] pci 0000:00:01.0:   bridge window [mem 0xc0000000-0xd1ffff=
ff 64bit pref]
[    1.425394] pci 0000:04:00.0: calling  quirk_cmd_compl+0x0/0x70 @ 1
[    1.425398] pci 0000:04:00.0: quirk_cmd_compl+0x0/0x70 took 0 usecs
[    1.425401] pci 0000:04:00.0: calling  quirk_no_aersid+0x0/0x30 @ 1
[    1.425406] pci 0000:04:00.0: quirk_no_aersid+0x0/0x30 took 0 usecs
[    1.425410] pci 0000:04:00.0: [8086:15ea] type 01 class 0x060400
[    1.425466] pci 0000:04:00.0: enabling Extended Tags
[    1.425494] pci 0000:04:00.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.425499] pci 0000:04:00.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.425503] pci 0000:04:00.0: calling  pci_fixup_transparent_bridge+0x=
0/0x20 @ 1
[    1.425508] pci 0000:04:00.0: pci_fixup_transparent_bridge+0x0/0x20 to=
ok 0 usecs
[    1.425592] pci 0000:04:00.0: supports D1 D2
[    1.425594] pci 0000:04:00.0: PME# supported from D0 D1 D2 D3hot D3col=
d
[    1.425687] pci 0000:04:00.0: PTM enabled, 4ns granularity
[    1.425775] pci 0000:00:1c.0: PCI bridge to [bus 04-51]
[    1.425781] pci 0000:00:1c.0:   bridge window [mem 0xd4000000-0xec1fff=
ff]
[    1.425787] pci 0000:00:1c.0:   bridge window [mem 0x6000000000-0x603f=
ffffff 64bit pref]
[    1.425865] pci 0000:05:00.0: calling  quirk_cmd_compl+0x0/0x70 @ 1
[    1.425870] pci 0000:05:00.0: quirk_cmd_compl+0x0/0x70 took 0 usecs
[    1.425873] pci 0000:05:00.0: calling  quirk_no_aersid+0x0/0x30 @ 1
[    1.425878] pci 0000:05:00.0: quirk_no_aersid+0x0/0x30 took 0 usecs
[    1.425882] pci 0000:05:00.0: [8086:15ea] type 01 class 0x060400
[    1.425940] pci 0000:05:00.0: enabling Extended Tags
[    1.425968] pci 0000:05:00.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.425973] pci 0000:05:00.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.425977] pci 0000:05:00.0: calling  pci_fixup_transparent_bridge+0x=
0/0x20 @ 1
[    1.425982] pci 0000:05:00.0: pci_fixup_transparent_bridge+0x0/0x20 to=
ok 0 usecs
[    1.426066] pci 0000:05:00.0: supports D1 D2
[    1.426068] pci 0000:05:00.0: PME# supported from D0 D1 D2 D3hot D3col=
d
[    1.426200] pci 0000:05:01.0: calling  quirk_cmd_compl+0x0/0x70 @ 1
[    1.426205] pci 0000:05:01.0: quirk_cmd_compl+0x0/0x70 took 0 usecs
[    1.426208] pci 0000:05:01.0: calling  quirk_no_aersid+0x0/0x30 @ 1
[    1.426213] pci 0000:05:01.0: quirk_no_aersid+0x0/0x30 took 0 usecs
[    1.426217] pci 0000:05:01.0: [8086:15ea] type 01 class 0x060400
[    1.426276] pci 0000:05:01.0: enabling Extended Tags
[    1.426306] pci 0000:05:01.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.426311] pci 0000:05:01.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.426316] pci 0000:05:01.0: calling  pci_fixup_transparent_bridge+0x=
0/0x20 @ 1
[    1.426320] pci 0000:05:01.0: pci_fixup_transparent_bridge+0x0/0x20 to=
ok 0 usecs
[    1.426403] pci 0000:05:01.0: supports D1 D2
[    1.426405] pci 0000:05:01.0: PME# supported from D0 D1 D2 D3hot D3col=
d
[    1.426534] pci 0000:05:02.0: calling  quirk_cmd_compl+0x0/0x70 @ 1
[    1.426539] pci 0000:05:02.0: quirk_cmd_compl+0x0/0x70 took 0 usecs
[    1.426541] pci 0000:05:02.0: calling  quirk_no_aersid+0x0/0x30 @ 1
[    1.426546] pci 0000:05:02.0: quirk_no_aersid+0x0/0x30 took 0 usecs
[    1.426550] pci 0000:05:02.0: [8086:15ea] type 01 class 0x060400
[    1.426609] pci 0000:05:02.0: enabling Extended Tags
[    1.426636] pci 0000:05:02.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.426641] pci 0000:05:02.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.426646] pci 0000:05:02.0: calling  pci_fixup_transparent_bridge+0x=
0/0x20 @ 1
[    1.426650] pci 0000:05:02.0: pci_fixup_transparent_bridge+0x0/0x20 to=
ok 0 usecs
[    1.426732] pci 0000:05:02.0: supports D1 D2
[    1.426734] pci 0000:05:02.0: PME# supported from D0 D1 D2 D3hot D3col=
d
[    1.426880] pci 0000:05:04.0: calling  quirk_cmd_compl+0x0/0x70 @ 1
[    1.426885] pci 0000:05:04.0: quirk_cmd_compl+0x0/0x70 took 0 usecs
[    1.426888] pci 0000:05:04.0: calling  quirk_no_aersid+0x0/0x30 @ 1
[    1.426892] pci 0000:05:04.0: quirk_no_aersid+0x0/0x30 took 0 usecs
[    1.426897] pci 0000:05:04.0: [8086:15ea] type 01 class 0x060400
[    1.426954] pci 0000:05:04.0: enabling Extended Tags
[    1.426985] pci 0000:05:04.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.426990] pci 0000:05:04.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.426994] pci 0000:05:04.0: calling  pci_fixup_transparent_bridge+0x=
0/0x20 @ 1
[    1.426999] pci 0000:05:04.0: pci_fixup_transparent_bridge+0x0/0x20 to=
ok 0 usecs
[    1.427082] pci 0000:05:04.0: supports D1 D2
[    1.427084] pci 0000:05:04.0: PME# supported from D0 D1 D2 D3hot D3col=
d
[    1.427223] pci 0000:04:00.0: PCI bridge to [bus 05-51]
[    1.427233] pci 0000:04:00.0:   bridge window [mem 0xd4000000-0xec1fff=
ff]
[    1.427240] pci 0000:04:00.0:   bridge window [mem 0x6000000000-0x603f=
ffffff 64bit pref]
[    1.427311] pci 0000:06:00.0: [8086:15eb] type 00 class 0x088000
[    1.427329] pci 0000:06:00.0: reg 0x10: [mem 0xec100000-0xec13ffff]
[    1.427339] pci 0000:06:00.0: reg 0x14: [mem 0xec140000-0xec140fff]
[    1.427387] pci 0000:06:00.0: enabling Extended Tags
[    1.427414] pci 0000:06:00.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.427419] pci 0000:06:00.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.427508] pci 0000:06:00.0: supports D1 D2
[    1.427510] pci 0000:06:00.0: PME# supported from D0 D1 D2 D3hot D3col=
d
[    1.427644] pci 0000:05:00.0: PCI bridge to [bus 06]
[    1.427654] pci 0000:05:00.0:   bridge window [mem 0xec100000-0xec1fff=
ff]
[    1.427703] pci 0000:05:01.0: PCI bridge to [bus 07-2b]
[    1.427712] pci 0000:05:01.0:   bridge window [mem 0xe0100000-0xec0fff=
ff]
[    1.427720] pci 0000:05:01.0:   bridge window [mem 0x6020000000-0x603f=
ffffff 64bit pref]
[    1.427807] pci 0000:2c:00.0: [8086:15ec] type 00 class 0x0c0330
[    1.427830] pci 0000:2c:00.0: reg 0x10: [mem 0xe0000000-0xe000ffff]
[    1.427909] pci 0000:2c:00.0: enabling Extended Tags
[    1.427941] pci 0000:2c:00.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.427946] pci 0000:2c:00.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.428046] pci 0000:2c:00.0: supports D1 D2
[    1.428047] pci 0000:2c:00.0: PME# supported from D0 D1 D2 D3hot D3col=
d
[    1.428145] pci 0000:2c:00.0: 8.000 Gb/s available PCIe bandwidth, lim=
ited by 2.5 GT/s PCIe x4 link at 0000:05:02.0 (capable of 31.504 Gb/s wit=
h 8.0 GT/s PCIe x4 link)
[    1.428224] pci 0000:05:02.0: PCI bridge to [bus 2c]
[    1.428233] pci 0000:05:02.0:   bridge window [mem 0xe0000000-0xe00fff=
ff]
[    1.428283] pci 0000:05:04.0: PCI bridge to [bus 2d-51]
[    1.428293] pci 0000:05:04.0:   bridge window [mem 0xd4000000-0xdfffff=
ff]
[    1.428300] pci 0000:05:04.0:   bridge window [mem 0x6000000000-0x601f=
ffffff 64bit pref]
[    1.428507] pci 0000:53:00.0: [8086:7560] type 00 class 0x0d4000
[    1.428530] pci 0000:53:00.0: reg 0x10: [mem 0xee300000-0xee300fff 64b=
it]
[    1.428544] pci 0000:53:00.0: reg 0x18: [mem 0xee301000-0xee3010ff 64b=
it]
[    1.428588] pci 0000:53:00.0: calling  quirk_igfx_skip_te_disable+0x0/=
0x60 @ 1
[    1.428593] pci 0000:53:00.0: quirk_igfx_skip_te_disable+0x0/0x60 took=
 0 usecs
[    1.428767] pci 0000:53:00.0: PME# supported from D0 D3hot D3cold
[    1.429033] pci 0000:00:1c.6: PCI bridge to [bus 53]
[    1.429039] pci 0000:00:1c.6:   bridge window [mem 0xee300000-0xee3fff=
ff]
[    1.429116] pci 0000:54:00.0: [10ec:525a] type 00 class 0xff0000
[    1.429142] pci 0000:54:00.0: reg 0x14: [mem 0xee200000-0xee200fff]
[    1.429259] pci 0000:54:00.0: supports D1 D2
[    1.429261] pci 0000:54:00.0: PME# supported from D1 D2 D3hot D3cold
[    1.429421] pci 0000:00:1c.7: PCI bridge to [bus 54]
[    1.429426] pci 0000:00:1c.7:   bridge window [mem 0xee200000-0xee2fff=
ff]
[    1.429502] pci 0000:55:00.0: [15b7:5006] type 00 class 0x010802
[    1.429524] pci 0000:55:00.0: reg 0x10: [mem 0xee100000-0xee103fff 64b=
it]
[    1.429554] pci 0000:55:00.0: reg 0x20: [mem 0xee104000-0xee1040ff 64b=
it]
[    1.429756] pci 0000:00:1d.0: PCI bridge to [bus 55]
[    1.429761] pci 0000:00:1d.0:   bridge window [mem 0xee100000-0xee1fff=
ff]
[    1.434546] ACPI: EC: interrupt unblocked
[    1.434550] ACPI: EC: event unblocked
[    1.434565] ACPI: EC: EC_CMD/EC_SC=3D0x66, EC_DATA=3D0x62
[    1.434568] ACPI: EC: GPE=3D0x16
[    1.434570] ACPI: \_SB_.PCI0.LPCB.EC__: Boot ECDT EC initialization co=
mplete
[    1.434573] ACPI: \_SB_.PCI0.LPCB.EC__: EC: Used to handle transaction=
s and events
[    1.434622] initcall acpi_init+0x0/0x48d returned 0 after 257812 usecs=

[    1.434627] calling  adxl_init+0x0/0x196 @ 1
[    1.434634] initcall adxl_init+0x0/0x196 returned -19 after 0 usecs
[    1.434637] calling  pnp_init+0x0/0x17 @ 1
[    1.434645] initcall pnp_init+0x0/0x17 returned 0 after 0 usecs
[    1.434649] calling  balloon_init+0x0/0x13c @ 1
[    1.434653] initcall balloon_init+0x0/0x13c returned -19 after 0 usecs=

[    1.434657] calling  xen_setup_shutdown_event+0x0/0x40 @ 1
[    1.434661] initcall xen_setup_shutdown_event+0x0/0x40 returned -19 af=
ter 0 usecs
[    1.434664] calling  xenbus_probe_backend_init+0x0/0x73 @ 1
[    1.434672] initcall xenbus_probe_backend_init+0x0/0x73 returned 0 aft=
er 0 usecs
[    1.434676] calling  xenbus_probe_frontend_init+0x0/0x57 @ 1
[    1.434683] initcall xenbus_probe_frontend_init+0x0/0x57 returned 0 af=
ter 0 usecs
[    1.434687] calling  xen_acpi_pad_init+0x0/0x49 @ 1
[    1.434691] initcall xen_acpi_pad_init+0x0/0x49 returned -19 after 0 u=
secs
[    1.434695] calling  init+0x0/0x8b @ 1
[    1.434699] initcall init+0x0/0x8b returned -19 after 0 usecs
[    1.434702] calling  misc_init+0x0/0xca @ 1
[    1.434709] initcall misc_init+0x0/0xca returned 0 after 0 usecs
[    1.434712] calling  tpm_init+0x0/0xf6 @ 1
[    1.434726] initcall tpm_init+0x0/0xf6 returned 0 after 0 usecs
[    1.434726] calling  iommu_subsys_init+0x0/0x54 @ 1
[    1.434726] iommu: Default domain type: Translated=20
[    1.434726] initcall iommu_subsys_init+0x0/0x54 returned 0 after 0 use=
cs
[    1.434726] calling  vga_arb_device_init+0x0/0x277 @ 1
[    1.434726] pci 0000:00:02.0: vgaarb: VGA device added: decodes=3Dio+m=
em,owns=3Dmem,locks=3Dnone
[    1.434726] pci 0000:01:00.0: vgaarb: VGA device added: decodes=3Dio+m=
em,owns=3Dnone,locks=3Dnone
[    1.434726] pci 0000:00:02.0: vgaarb: no bridge control possible
[    1.434726] pci 0000:01:00.0: vgaarb: bridge control possible
[    1.434726] pci 0000:00:02.0: vgaarb: setting as boot device
[    1.434726] vgaarb: loaded
[    1.434726] initcall vga_arb_device_init+0x0/0x277 returned 0 after 0 =
usecs
[    1.434726] calling  cn_init+0x0/0xe0 @ 1
[    1.434726] initcall cn_init+0x0/0xe0 returned 0 after 0 usecs
[    1.434726] calling  pm860x_i2c_init+0x0/0x35 @ 1
[    1.434726] initcall pm860x_i2c_init+0x0/0x35 returned 0 after 0 usecs=

[    1.434726] calling  wm8400_driver_init+0x0/0x35 @ 1
[    1.434726] initcall wm8400_driver_init+0x0/0x35 returned 0 after 0 us=
ecs
[    1.434726] calling  wm831x_i2c_init+0x0/0x35 @ 1
[    1.434726] initcall wm831x_i2c_init+0x0/0x35 returned 0 after 0 usecs=

[    1.434726] calling  wm831x_spi_init+0x0/0x2d @ 1
[    1.434726] initcall wm831x_spi_init+0x0/0x2d returned 0 after 0 usecs=

[    1.434726] calling  wm8350_i2c_init+0x0/0x19 @ 1
[    1.434726] initcall wm8350_i2c_init+0x0/0x19 returned 0 after 0 usecs=

[    1.434726] calling  tps65910_i2c_init+0x0/0x19 @ 1
[    1.434726] initcall tps65910_i2c_init+0x0/0x19 returned 0 after 0 use=
cs
[    1.434726] calling  tps80031_init+0x0/0x19 @ 1
[    1.434726] initcall tps80031_init+0x0/0x19 returned 0 after 0 usecs
[    1.434726] calling  ezx_pcap_init+0x0/0x19 @ 1
[    1.434726] initcall ezx_pcap_init+0x0/0x19 returned 0 after 0 usecs
[    1.434726] calling  da903x_init+0x0/0x19 @ 1
[    1.434726] initcall da903x_init+0x0/0x19 returned 0 after 0 usecs
[    1.434726] calling  da9052_spi_init+0x0/0x35 @ 1
[    1.434726] initcall da9052_spi_init+0x0/0x35 returned 0 after 0 usecs=

[    1.434726] calling  da9052_i2c_init+0x0/0x35 @ 1
[    1.434726] initcall da9052_i2c_init+0x0/0x35 returned 0 after 0 usecs=

[    1.434726] calling  lp8788_init+0x0/0x19 @ 1
[    1.434726] initcall lp8788_init+0x0/0x19 returned 0 after 0 usecs
[    1.434726] calling  da9055_i2c_init+0x0/0x35 @ 1
[    1.434726] initcall da9055_i2c_init+0x0/0x35 returned 0 after 0 usecs=

[    1.434726] calling  max77843_i2c_init+0x0/0x19 @ 1
[    1.434726] initcall max77843_i2c_init+0x0/0x19 returned 0 after 0 use=
cs
[    1.434726] calling  max8925_i2c_init+0x0/0x35 @ 1
[    1.434726] initcall max8925_i2c_init+0x0/0x35 returned 0 after 0 usec=
s
[    1.434726] calling  max8997_i2c_init+0x0/0x19 @ 1
[    1.434726] initcall max8997_i2c_init+0x0/0x19 returned 0 after 0 usec=
s
[    1.434726] calling  max8998_i2c_init+0x0/0x19 @ 1
[    1.434726] initcall max8998_i2c_init+0x0/0x19 returned 0 after 0 usec=
s
[    1.434726] calling  ab3100_i2c_init+0x0/0x19 @ 1
[    1.434726] initcall ab3100_i2c_init+0x0/0x19 returned 0 after 0 usecs=

[    1.434726] calling  tps6586x_init+0x0/0x19 @ 1
[    1.434726] initcall tps6586x_init+0x0/0x19 returned 0 after 0 usecs
[    1.434726] calling  tps65090_init+0x0/0x19 @ 1
[    1.434726] initcall tps65090_init+0x0/0x19 returned 0 after 0 usecs
[    1.434726] calling  aat2870_init+0x0/0x19 @ 1
[    1.434726] initcall aat2870_init+0x0/0x19 returned 0 after 0 usecs
[    1.434726] calling  palmas_i2c_init+0x0/0x19 @ 1
[    1.434726] initcall palmas_i2c_init+0x0/0x19 returned 0 after 0 usecs=

[    1.434726] calling  rc5t583_i2c_init+0x0/0x19 @ 1
[    1.434726] initcall rc5t583_i2c_init+0x0/0x19 returned 0 after 0 usec=
s
[    1.434726] calling  sec_pmic_init+0x0/0x19 @ 1
[    1.434726] initcall sec_pmic_init+0x0/0x19 returned 0 after 0 usecs
[    1.434726] calling  as3711_i2c_init+0x0/0x19 @ 1
[    1.434726] initcall as3711_i2c_init+0x0/0x19 returned 0 after 0 usecs=

[    1.434726] calling  libnvdimm_init+0x0/0x49 @ 1
[    1.434726] initcall libnvdimm_init+0x0/0x49 returned 0 after 0 usecs
[    1.434726] calling  dax_core_init+0x0/0xc9 @ 1
[    1.434726] initcall dax_core_init+0x0/0xc9 returned 0 after 0 usecs
[    1.434726] calling  dma_buf_init+0x0/0xcf @ 1
[    1.434726] initcall dma_buf_init+0x0/0xcf returned 0 after 0 usecs
[    1.434726] calling  dma_heap_init+0x0/0x80 @ 1
[    1.434726] initcall dma_heap_init+0x0/0x80 returned 0 after 0 usecs
[    1.434726] calling  init_scsi+0x0/0x8d @ 1
[    1.434726] SCSI subsystem initialized
[    1.434726] initcall init_scsi+0x0/0x8d returned 0 after 0 usecs
[    1.434726] calling  ata_init+0x0/0x33c @ 1
[    1.434726] libata version 3.00 loaded.
[    1.434726] initcall ata_init+0x0/0x33c returned 0 after 0 usecs
[    1.434726] calling  phy_init+0x0/0x2c8 @ 1
[    1.434726] initcall phy_init+0x0/0x2c8 returned 0 after 0 usecs
[    1.434726] calling  usb_common_init+0x0/0x27 @ 1
[    1.434726] initcall usb_common_init+0x0/0x27 returned 0 after 0 usecs=

[    1.434726] calling  usb_init+0x0/0x13d @ 1
[    1.434726] ACPI: bus type USB registered
[    1.434726] usbcore: registered new interface driver usbfs
[    1.434726] usbcore: registered new interface driver hub
[    1.434726] usbcore: registered new device driver usb
[    1.434726] initcall usb_init+0x0/0x13d returned 0 after 0 usecs
[    1.434726] calling  xdbc_init+0x0/0x158 @ 1
[    1.434726] initcall xdbc_init+0x0/0x158 returned 0 after 0 usecs
[    1.434726] calling  usb_roles_init+0x0/0x35 @ 1
[    1.434726] initcall usb_roles_init+0x0/0x35 returned 0 after 0 usecs
[    1.434726] calling  serio_init+0x0/0x33 @ 1
[    1.434726] initcall serio_init+0x0/0x33 returned 0 after 0 usecs
[    1.434726] calling  input_init+0x0/0x109 @ 1
[    1.434726] initcall input_init+0x0/0x109 returned 0 after 0 usecs
[    1.434726] calling  rtc_init+0x0/0x52 @ 1
[    1.434726] initcall rtc_init+0x0/0x52 returned 0 after 0 usecs
[    1.434726] calling  dw_i2c_init_driver+0x0/0x19 @ 1
[    1.434726] initcall dw_i2c_init_driver+0x0/0x19 returned 0 after 0 us=
ecs
[    1.434726] calling  pps_init+0x0/0xb5 @ 1
[    1.434726] pps_core: LinuxPPS API ver. 1 registered
[    1.434726] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolf=
o Giometti <giometti@linux.it>
[    1.434726] initcall pps_init+0x0/0xb5 returned 0 after 0 usecs
[    1.434726] calling  ptp_init+0x0/0xa4 @ 1
[    1.434726] PTP clock support registered
[    1.434726] initcall ptp_init+0x0/0xa4 returned 0 after 0 usecs
[    1.434726] calling  power_supply_class_init+0x0/0x45 @ 1
[    1.434726] initcall power_supply_class_init+0x0/0x45 returned 0 after=
 0 usecs
[    1.434726] calling  hwmon_init+0x0/0xf6 @ 1
[    1.434726] initcall hwmon_init+0x0/0xf6 returned 0 after 0 usecs
[    1.434726] calling  md_init+0x0/0x164 @ 1
[    1.434726] initcall md_init+0x0/0x164 returned 0 after 0 usecs
[    1.434726] calling  edac_init+0x0/0x7b @ 1
[    1.434726] EDAC MC: Ver: 3.0.0
[    1.434726] initcall edac_init+0x0/0x7b returned 0 after 0 usecs
[    1.434726] calling  mmc_init+0x0/0x40 @ 1
[    1.434726] initcall mmc_init+0x0/0x40 returned 0 after 0 usecs
[    1.434726] calling  leds_init+0x0/0x41 @ 1
[    1.434726] initcall leds_init+0x0/0x41 returned 0 after 0 usecs
[    1.434726] calling  dmi_init+0x0/0x123 @ 1
[    1.434726] initcall dmi_init+0x0/0x123 returned 0 after 0 usecs
[    1.434726] calling  efisubsys_init+0x0/0x4f8 @ 1
[    1.434726] Registered efivars operations
[    1.434726] initcall efisubsys_init+0x0/0x4f8 returned 0 after 0 usecs=

[    1.434726] calling  intel_scu_ipc_init+0x0/0x1e @ 1
[    1.434726] initcall intel_scu_ipc_init+0x0/0x1e returned 0 after 0 us=
ecs
[    1.434726] calling  remoteproc_init+0x0/0x35 @ 1
[    1.434726] initcall remoteproc_init+0x0/0x35 returned 0 after 0 usecs=

[    1.434726] calling  devfreq_init+0x0/0xd8 @ 1
[    1.434726] initcall devfreq_init+0x0/0xd8 returned 0 after 0 usecs
[    1.434726] calling  devfreq_event_init+0x0/0x54 @ 1
[    1.434726] initcall devfreq_event_init+0x0/0x54 returned 0 after 0 us=
ecs
[    1.434726] calling  devfreq_simple_ondemand_init+0x0/0x17 @ 1
[    1.434726] initcall devfreq_simple_ondemand_init+0x0/0x17 returned 0 =
after 0 usecs
[    1.434726] calling  devfreq_performance_init+0x0/0x17 @ 1
[    1.434726] initcall devfreq_performance_init+0x0/0x17 returned 0 afte=
r 0 usecs
[    1.434726] calling  devfreq_powersave_init+0x0/0x17 @ 1
[    1.434726] initcall devfreq_powersave_init+0x0/0x17 returned 0 after =
0 usecs
[    1.434726] calling  devfreq_userspace_init+0x0/0x17 @ 1
[    1.434726] initcall devfreq_userspace_init+0x0/0x17 returned 0 after =
0 usecs
[    1.434726] calling  devfreq_passive_init+0x0/0x17 @ 1
[    1.434726] initcall devfreq_passive_init+0x0/0x17 returned 0 after 0 =
usecs
[    1.434726] calling  vme_init+0x0/0x17 @ 1
[    1.434726] initcall vme_init+0x0/0x17 returned 0 after 0 usecs
[    1.434726] calling  ras_init+0x0/0x15 @ 1
[    1.434726] initcall ras_init+0x0/0x15 returned 0 after 0 usecs
[    1.434726] calling  nvmem_init+0x0/0x17 @ 1
[    1.434726] initcall nvmem_init+0x0/0x17 returned 0 after 0 usecs
[    1.434726] calling  proto_init+0x0/0x17 @ 1
[    1.434726] initcall proto_init+0x0/0x17 returned 0 after 0 usecs
[    1.434726] calling  net_dev_init+0x0/0x246 @ 1
[    1.434726] initcall net_dev_init+0x0/0x246 returned 0 after 0 usecs
[    1.434726] calling  neigh_init+0x0/0x8a @ 1
[    1.434726] initcall neigh_init+0x0/0x8a returned 0 after 0 usecs
[    1.434726] calling  fib_notifier_init+0x0/0x17 @ 1
[    1.434726] initcall fib_notifier_init+0x0/0x17 returned 0 after 0 use=
cs
[    1.434726] calling  fib_rules_init+0x0/0xb7 @ 1
[    1.434726] initcall fib_rules_init+0x0/0xb7 returned 0 after 0 usecs
[    1.434726] calling  init_cgroup_netprio+0x0/0x19 @ 1
[    1.434726] initcall init_cgroup_netprio+0x0/0x19 returned 0 after 0 u=
secs
[    1.434726] calling  bpf_lwt_init+0x0/0x1c @ 1
[    1.434726] initcall bpf_lwt_init+0x0/0x1c returned 0 after 0 usecs
[    1.434726] calling  devlink_init+0x0/0x2d @ 1
[    1.434726] initcall devlink_init+0x0/0x2d returned 0 after 0 usecs
[    1.434726] calling  pktsched_init+0x0/0x118 @ 1
[    1.434726] initcall pktsched_init+0x0/0x118 returned 0 after 0 usecs
[    1.434726] calling  tc_filter_init+0x0/0x105 @ 1
[    1.434726] initcall tc_filter_init+0x0/0x105 returned 0 after 0 usecs=

[    1.434726] calling  tc_action_init+0x0/0x5a @ 1
[    1.434726] initcall tc_action_init+0x0/0x5a returned 0 after 0 usecs
[    1.434726] calling  ethnl_init+0x0/0x5d @ 1
[    1.434726] initcall ethnl_init+0x0/0x5d returned 0 after 0 usecs
[    1.434726] calling  nexthop_init+0x0/0xde @ 1
[    1.434726] initcall nexthop_init+0x0/0xde returned 0 after 0 usecs
[    1.434726] calling  cipso_v4_init+0x0/0x69 @ 1
[    1.434726] initcall cipso_v4_init+0x0/0x69 returned 0 after 0 usecs
[    1.434726] calling  wireless_nlevent_init+0x0/0x44 @ 1
[    1.434726] initcall wireless_nlevent_init+0x0/0x44 returned 0 after 0=
 usecs
[    1.434726] calling  netlbl_init+0x0/0x7e @ 1
[    1.434726] NetLabel: Initializing
[    1.434726] NetLabel:  domain hash size =3D 128
[    1.434726] NetLabel:  protocols =3D UNLABELED CIPSOv4 CALIPSO
[    1.434726] NetLabel:  unlabeled traffic allowed by default
[    1.434726] initcall netlbl_init+0x0/0x7e returned 0 after 0 usecs
[    1.434726] calling  rfkill_init+0x0/0x11f @ 1
[    1.434726] initcall rfkill_init+0x0/0x11f returned 0 after 0 usecs
[    1.434726] calling  ncsi_init_netlink+0x0/0x17 @ 1
[    1.434726] initcall ncsi_init_netlink+0x0/0x17 returned 0 after 0 use=
cs
[    1.434726] calling  pci_subsys_init+0x0/0x68 @ 1
[    1.434726] PCI: Using ACPI for IRQ routing
[    1.442767] PCI: pci_cache_line_size set to 64 bytes
[    1.443237] e820: reserve RAM buffer [mem 0x0009f000-0x0009ffff]
[    1.443240] e820: reserve RAM buffer [mem 0x88301018-0x8bffffff]
[    1.443242] e820: reserve RAM buffer [mem 0xa6a37000-0xa7ffffff]
[    1.443244] e820: reserve RAM buffer [mem 0xaa5b7000-0xabffffff]
[    1.443246] e820: reserve RAM buffer [mem 0xafc50000-0xafffffff]
[    1.443248] e820: reserve RAM buffer [mem 0xb8c00000-0xbbffffff]
[    1.443250] e820: reserve RAM buffer [mem 0x83f800000-0x83fffffff]
[    1.443253] initcall pci_subsys_init+0x0/0x68 returned 0 after 11718 u=
secs
[    1.443257] calling  watchdog_init+0x0/0x8f @ 1
[    1.446105] initcall watchdog_init+0x0/0x8f returned 0 after 0 usecs
[    1.446108] calling  pci_eisa_init_early+0x0/0x112 @ 1
[    1.446116] initcall pci_eisa_init_early+0x0/0x112 returned 0 after 0 =
usecs
[    1.446175] calling  nmi_warning_debugfs+0x0/0x2c @ 1
[    1.446180] initcall nmi_warning_debugfs+0x0/0x2c returned 0 after 0 u=
secs
[    1.446183] calling  save_microcode_in_initrd+0x0/0x99 @ 1
[    1.446193] initcall save_microcode_in_initrd+0x0/0x99 returned 0 afte=
r 0 usecs
[    1.446197] calling  hpet_late_init+0x0/0x382 @ 1
[    1.446212] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0, 0, 0, 0, 0
[    1.446219] hpet0: 8 comparators, 64-bit 24.000000 MHz counter
[    1.448280] initcall hpet_late_init+0x0/0x382 returned 0 after 0 usecs=

[    1.448284] calling  init_amd_nbs+0x0/0x125 @ 1
[    1.448293] initcall init_amd_nbs+0x0/0x125 returned 0 after 0 usecs
[    1.448296] calling  iomem_init_inode+0x0/0x8c @ 1
[    1.448309] initcall iomem_init_inode+0x0/0x8c returned 0 after 0 usec=
s
[    1.448313] calling  clocksource_done_booting+0x0/0x47 @ 1
[    1.448336] clocksource: Switched to clocksource tsc-early
[    1.448340] initcall clocksource_done_booting+0x0/0x47 returned 0 afte=
r 7 usecs
[    1.448344] calling  tracer_init_tracefs+0x0/0x2a4 @ 1
[    1.455154] initcall tracer_init_tracefs+0x0/0x2a4 returned 0 after 88=
28 usecs
[    1.455164] calling  init_trace_printk_function_export+0x0/0x2d @ 1
[    1.455169] initcall init_trace_printk_function_export+0x0/0x2d return=
ed 0 after 1 usecs
[    1.455173] calling  init_graph_tracefs+0x0/0x2d @ 1
[    1.455179] initcall init_graph_tracefs+0x0/0x2d returned 0 after 1 us=
ecs
[    1.455184] calling  trace_events_synth_init+0x0/0x4c @ 1
[    1.455193] initcall trace_events_synth_init+0x0/0x4c returned 0 after=
 4 usecs
[    1.455198] calling  bpf_event_init+0x0/0x14 @ 1
[    1.455203] initcall bpf_event_init+0x0/0x14 returned 0 after 0 usecs
[    1.455208] calling  init_kprobe_trace+0x0/0x180 @ 1
[    1.455215] initcall init_kprobe_trace+0x0/0x180 returned 0 after 1 us=
ecs
[    1.455220] calling  init_dynamic_event+0x0/0x3e @ 1
[    1.455226] initcall init_dynamic_event+0x0/0x3e returned 0 after 0 us=
ecs
[    1.455231] calling  init_uprobe_trace+0x0/0x61 @ 1
[    1.455238] initcall init_uprobe_trace+0x0/0x61 returned 0 after 1 use=
cs
[    1.455243] calling  bpf_init+0x0/0x6c @ 1
[    1.455251] initcall bpf_init+0x0/0x6c returned 0 after 3 usecs
[    1.455256] calling  init_pipe_fs+0x0/0x4f @ 1
[    1.455280] initcall init_pipe_fs+0x0/0x4f returned 0 after 19 usecs
[    1.455286] calling  cgroup_writeback_init+0x0/0x2b @ 1
[    1.455295] initcall cgroup_writeback_init+0x0/0x2b returned 0 after 4=
 usecs
[    1.455300] calling  inotify_user_setup+0x0/0xc1 @ 1
[    1.455307] initcall inotify_user_setup+0x0/0xc1 returned 0 after 3 us=
ecs
[    1.455312] calling  eventpoll_init+0x0/0xca @ 1
[    1.455330] initcall eventpoll_init+0x0/0xca returned 0 after 13 usecs=

[    1.455335] calling  anon_inode_init+0x0/0x5e @ 1
[    1.455347] initcall anon_inode_init+0x0/0x5e returned 0 after 7 usecs=

[    1.455352] calling  init_dax_wait_table+0x0/0x39 @ 1
[    1.455387] initcall init_dax_wait_table+0x0/0x39 returned 0 after 30 =
usecs
[    1.455393] calling  proc_locks_init+0x0/0x2d @ 1
[    1.455400] initcall proc_locks_init+0x0/0x2d returned 0 after 1 usecs=

[    1.455405] calling  iomap_init+0x0/0x26 @ 1
[    1.455432] initcall iomap_init+0x0/0x26 returned 0 after 21 usecs
[    1.455437] calling  dquot_init+0x0/0x115 @ 1
[    1.455442] VFS: Disk quotas dquot_6.6.0
[    1.455462] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 by=
tes)
[    1.455466] initcall dquot_init+0x0/0x115 returned 0 after 23 usecs
[    1.455472] calling  quota_init+0x0/0x29 @ 1
[    1.455483] initcall quota_init+0x0/0x29 returned 0 after 6 usecs
[    1.455488] calling  proc_cmdline_init+0x0/0x27 @ 1
[    1.455498] initcall proc_cmdline_init+0x0/0x27 returned 0 after 4 use=
cs
[    1.455504] calling  proc_consoles_init+0x0/0x2a @ 1
[    1.455509] initcall proc_consoles_init+0x0/0x2a returned 0 after 0 us=
ecs
[    1.455514] calling  proc_cpuinfo_init+0x0/0x24 @ 1
[    1.455520] initcall proc_cpuinfo_init+0x0/0x24 returned 0 after 0 use=
cs
[    1.455525] calling  proc_devices_init+0x0/0x2a @ 1
[    1.455531] initcall proc_devices_init+0x0/0x2a returned 0 after 0 use=
cs
[    1.455536] calling  proc_interrupts_init+0x0/0x2a @ 1
[    1.455541] initcall proc_interrupts_init+0x0/0x2a returned 0 after 0 =
usecs
[    1.455547] calling  proc_loadavg_init+0x0/0x27 @ 1
[    1.455552] initcall proc_loadavg_init+0x0/0x27 returned 0 after 0 use=
cs
[    1.455557] calling  proc_meminfo_init+0x0/0x27 @ 1
[    1.455562] initcall proc_meminfo_init+0x0/0x27 returned 0 after 0 use=
cs
[    1.455568] calling  proc_stat_init+0x0/0x24 @ 1
[    1.455573] initcall proc_stat_init+0x0/0x24 returned 0 after 0 usecs
[    1.455578] calling  proc_uptime_init+0x0/0x27 @ 1
[    1.455583] initcall proc_uptime_init+0x0/0x27 returned 0 after 0 usec=
s
[    1.455588] calling  proc_version_init+0x0/0x27 @ 1
[    1.455594] initcall proc_version_init+0x0/0x27 returned 0 after 0 use=
cs
[    1.455599] calling  proc_softirqs_init+0x0/0x27 @ 1
[    1.455605] initcall proc_softirqs_init+0x0/0x27 returned 0 after 0 us=
ecs
[    1.455610] calling  proc_kcore_init+0x0/0x116 @ 1
[    1.455623] initcall proc_kcore_init+0x0/0x116 returned 0 after 8 usec=
s
[    1.455629] calling  vmcore_init+0x0/0x16e @ 1
[    1.455634] initcall vmcore_init+0x0/0x16e returned 0 after 0 usecs
[    1.455639] calling  proc_kmsg_init+0x0/0x27 @ 1
[    1.455644] initcall proc_kmsg_init+0x0/0x27 returned 0 after 0 usecs
[    1.455649] calling  proc_page_init+0x0/0x5b @ 1
[    1.455656] initcall proc_page_init+0x0/0x5b returned 0 after 2 usecs
[    1.455660] calling  proc_boot_config_init+0x0/0x8a @ 1
[    1.455666] initcall proc_boot_config_init+0x0/0x8a returned 0 after 0=
 usecs
[    1.455671] calling  init_ramfs_fs+0x0/0x17 @ 1
[    1.455677] initcall init_ramfs_fs+0x0/0x17 returned 0 after 0 usecs
[    1.455682] calling  init_hugetlbfs_fs+0x0/0x127 @ 1
[    1.455705] initcall init_hugetlbfs_fs+0x0/0x127 returned 0 after 18 u=
secs
[    1.455710] calling  tomoyo_initerface_init+0x0/0x182 @ 1
[    1.455714] initcall tomoyo_initerface_init+0x0/0x182 returned 0 after=
 0 usecs
[    1.455719] calling  aa_create_aafs+0x0/0x3ac @ 1
[    1.455798] AppArmor: AppArmor Filesystem Enabled
[    1.455801] initcall aa_create_aafs+0x0/0x3ac returned 0 after 76 usec=
s
[    1.455806] calling  safesetid_init_securityfs+0x0/0x98 @ 1
[    1.455811] initcall safesetid_init_securityfs+0x0/0x98 returned 0 aft=
er 0 usecs
[    1.455816] calling  blk_scsi_ioctl_init+0x0/0x3b8 @ 1
[    1.455822] initcall blk_scsi_ioctl_init+0x0/0x3b8 returned 0 after 0 =
usecs
[    1.455827] calling  dynamic_debug_init_control+0x0/0x81 @ 1
[    1.455836] initcall dynamic_debug_init_control+0x0/0x81 returned 0 af=
ter 3 usecs
[    1.455843] calling  simplefb_init+0x0/0x19 @ 1
[    1.455868] initcall simplefb_init+0x0/0x19 returned 0 after 18 usecs
[    1.455873] calling  acpi_event_init+0x0/0x35 @ 1
[    1.455882] initcall acpi_event_init+0x0/0x35 returned 0 after 4 usecs=

[    1.455888] calling  pnp_system_init+0x0/0x17 @ 1
[    1.455897] initcall pnp_system_init+0x0/0x17 returned 0 after 3 usecs=

[    1.455903] calling  pnpacpi_init+0x0/0x6f @ 1
[    1.455908] pnp: PnP ACPI init
[    1.456082] system 00:00: [mem 0x40000000-0x403fffff] could not be res=
erved
[    1.456094] system 00:00: Plug and Play ACPI device, IDs PNP0c02 (acti=
ve)
[    1.456504] system 00:01: [io  0x1800-0x18fe] has been reserved
[    1.456510] system 00:01: [mem 0xfd000000-0xfd69ffff] has been reserve=
d
[    1.456515] system 00:01: [mem 0xfd6c0000-0xfd6cffff] has been reserve=
d
[    1.456520] system 00:01: [mem 0xfd6f0000-0xfdffffff] has been reserve=
d
[    1.456525] system 00:01: [mem 0xfe000000-0xfe01ffff] could not be res=
erved
[    1.456530] system 00:01: [mem 0xfe200000-0xfe7fffff] has been reserve=
d
[    1.456535] system 00:01: [mem 0xff000000-0xffffffff] has been reserve=
d
[    1.456542] system 00:01: Plug and Play ACPI device, IDs PNP0c02 (acti=
ve)
[    1.457012] system 00:02: [io  0x2000-0x20fe] has been reserved
[    1.457021] system 00:02: Plug and Play ACPI device, IDs PNP0c02 (acti=
ve)
[    1.457653] system 00:03: [io  0x0680-0x069f] has been reserved
[    1.457659] system 00:03: [io  0x164e-0x164f] has been reserved
[    1.457667] system 00:03: Plug and Play ACPI device, IDs PNP0c02 (acti=
ve)
[    1.457740] pnp 00:04: Plug and Play ACPI device, IDs PNP0b00 (active)=

[    1.457890] system 00:05: [io  0x1854-0x1857] has been reserved
[    1.457899] system 00:05: Plug and Play ACPI device, IDs INT3f0d PNP0c=
02 (active)
[    1.457932] pnp 00:06: Plug and Play ACPI device, IDs LEN0071 PNP0303 =
(active)
[    1.457959] pnp 00:07: Plug and Play ACPI device, IDs LEN2066 PNP0f13 =
(active)
[    1.458075] system 00:08: [io  0x1800-0x189f] could not be reserved
[    1.458081] system 00:08: [io  0x0800-0x087f] has been reserved
[    1.458085] system 00:08: [io  0x0880-0x08ff] has been reserved
[    1.458090] system 00:08: [io  0x0900-0x097f] has been reserved
[    1.458094] system 00:08: [io  0x0980-0x09ff] has been reserved
[    1.458104] system 00:08: [io  0x0a00-0x0a7f] has been reserved
[    1.458109] system 00:08: [io  0x0a80-0x0aff] has been reserved
[    1.458113] system 00:08: [io  0x0b00-0x0b7f] has been reserved
[    1.458117] system 00:08: [io  0x0b80-0x0bff] has been reserved
[    1.458121] system 00:08: [io  0x15e0-0x15ef] has been reserved
[    1.458126] system 00:08: [io  0x1600-0x167f] could not be reserved
[    1.458130] system 00:08: [io  0x1640-0x165f] could not be reserved
[    1.458135] system 00:08: [mem 0xf0000000-0xf7ffffff] has been reserve=
d
[    1.458140] system 00:08: [mem 0xfed10000-0xfed13fff] has been reserve=
d
[    1.458145] system 00:08: [mem 0xfed18000-0xfed18fff] has been reserve=
d
[    1.458150] system 00:08: [mem 0xfed19000-0xfed19fff] has been reserve=
d
[    1.458154] system 00:08: [mem 0xfeb00000-0xfebfffff] has been reserve=
d
[    1.458159] system 00:08: [mem 0xfed20000-0xfed3ffff] has been reserve=
d
[    1.458164] system 00:08: [mem 0xfed90000-0xfed93fff] could not be res=
erved
[    1.458172] system 00:08: Plug and Play ACPI device, IDs PNP0c02 (acti=
ve)
[    1.458935] system 00:09: [mem 0xfed10000-0xfed17fff] could not be res=
erved
[    1.458941] system 00:09: [mem 0xfed18000-0xfed18fff] has been reserve=
d
[    1.458946] system 00:09: [mem 0xfed19000-0xfed19fff] has been reserve=
d
[    1.458950] system 00:09: [mem 0xf0000000-0xf7ffffff] has been reserve=
d
[    1.458955] system 00:09: [mem 0xfed20000-0xfed3ffff] has been reserve=
d
[    1.458959] system 00:09: [mem 0xfed90000-0xfed93fff] could not be res=
erved
[    1.458964] system 00:09: [mem 0xfed45000-0xfed8ffff] has been reserve=
d
[    1.458969] system 00:09: [mem 0xfee00000-0xfeefffff] has been reserve=
d
[    1.458976] system 00:09: Plug and Play ACPI device, IDs PNP0c02 (acti=
ve)
[    1.459311] system 00:0a: [mem 0xfe038000-0xfe038fff] has been reserve=
d
[    1.459320] system 00:0a: Plug and Play ACPI device, IDs PNP0c02 (acti=
ve)
[    1.460122] system 00:0b: [mem 0x00000000-0x0009ffff] could not be res=
erved
[    1.460129] system 00:0b: [mem 0x000c0000-0x000c3fff] could not be res=
erved
[    1.460134] system 00:0b: [mem 0x000c8000-0x000cbfff] could not be res=
erved
[    1.460138] system 00:0b: [mem 0x000d0000-0x000d3fff] could not be res=
erved
[    1.460142] system 00:0b: [mem 0x000d8000-0x000dbfff] could not be res=
erved
[    1.460147] system 00:0b: [mem 0x000e0000-0x000e3fff] could not be res=
erved
[    1.460151] system 00:0b: [mem 0x000e8000-0x000ebfff] could not be res=
erved
[    1.460156] system 00:0b: [mem 0x000f0000-0x000fffff] could not be res=
erved
[    1.460160] system 00:0b: [mem 0x00100000-0xbe7fffff] could not be res=
erved
[    1.460165] system 00:0b: [mem 0xfec00000-0xfed3ffff] could not be res=
erved
[    1.460170] system 00:0b: [mem 0xfed4c000-0xffffffff] could not be res=
erved
[    1.460177] system 00:0b: Plug and Play ACPI device, IDs PNP0c01 (acti=
ve)
[    1.460321] pnp: PnP ACPI: found 12 devices
[    1.460325] initcall pnpacpi_init+0x0/0x6f returned 0 after 4313 usecs=

[    1.460333] calling  chr_dev_init+0x0/0xab @ 1
[    1.461873] initcall chr_dev_init+0x0/0xab returned 0 after 1498 usecs=

[    1.461879] calling  firmware_class_init+0x0/0x100 @ 1
[    1.461890] initcall firmware_class_init+0x0/0x100 returned 0 after 4 =
usecs
[    1.461895] calling  map_properties+0x0/0x52c @ 1
[    1.461901] initcall map_properties+0x0/0x52c returned 0 after 0 usecs=

[    1.461906] calling  init_acpi_pm_clocksource+0x0/0xdb @ 1
[    1.466401] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff,=
 max_idle_ns: 2085701024 ns
[    1.466407] initcall init_acpi_pm_clocksource+0x0/0xdb returned 0 afte=
r 4390 usecs
[    1.466412] calling  powercap_init+0x0/0x270 @ 1
[    1.466439] initcall powercap_init+0x0/0x270 returned 0 after 22 usecs=

[    1.466443] calling  sysctl_core_init+0x0/0x31 @ 1
[    1.466459] initcall sysctl_core_init+0x0/0x31 returned 0 after 12 use=
cs
[    1.466463] calling  eth_offload_init+0x0/0x19 @ 1
[    1.466467] initcall eth_offload_init+0x0/0x19 returned 0 after 0 usec=
s
[    1.466471] calling  ipv4_offload_init+0x0/0x79 @ 1
[    1.466476] initcall ipv4_offload_init+0x0/0x79 returned 0 after 0 use=
cs
[    1.466480] calling  inet_init+0x0/0x283 @ 1
[    1.466498] NET: Registered protocol family 2
[    1.466677] tcp_listen_portaddr_hash hash table entries: 16384 (order:=
 6, 262144 bytes, linear)
[    1.466856] TCP established hash table entries: 262144 (order: 9, 2097=
152 bytes, linear)
[    1.467140] TCP bind hash table entries: 65536 (order: 8, 1048576 byte=
s, linear)
[    1.467216] TCP: Hash tables configured (established 262144 bind 65536=
)
[    1.467332] MPTCP token hash table entries: 32768 (order: 7, 786432 by=
tes, linear)
[    1.467439] UDP hash table entries: 16384 (order: 7, 524288 bytes, lin=
ear)
[    1.467530] UDP-Lite hash table entries: 16384 (order: 7, 524288 bytes=
, linear)
[    1.467616] initcall inet_init+0x0/0x283 returned 0 after 1105 usecs
[    1.467622] calling  af_unix_init+0x0/0x57 @ 1
[    1.467626] NET: Registered protocol family 1
[    1.467630] initcall af_unix_init+0x0/0x57 returned 0 after 5 usecs
[    1.467633] calling  ipv6_offload_init+0x0/0x84 @ 1
[    1.467636] initcall ipv6_offload_init+0x0/0x84 returned 0 after 0 use=
cs
[    1.467639] calling  vlan_offload_init+0x0/0x25 @ 1
[    1.467642] initcall vlan_offload_init+0x0/0x25 returned 0 after 0 use=
cs
[    1.467645] calling  xsk_init+0x0/0xc3 @ 1
[    1.467648] NET: Registered protocol family 44
[    1.467651] initcall xsk_init+0x0/0xc3 returned 0 after 2 usecs
[    1.467654] calling  pcibios_assign_resources+0x0/0xcd @ 1
[    1.467658] pci 0000:01:00.0: can't claim BAR 6 [mem 0xfff80000-0xffff=
ffff pref]: no compatible bridge window
[    1.467667] pci 0000:05:01.0: bridge window [io  0x1000-0x0fff] to [bu=
s 07-2b] add_size 1000
[    1.467672] pci 0000:05:04.0: bridge window [io  0x1000-0x0fff] to [bu=
s 2d-51] add_size 1000
[    1.467676] pci 0000:04:00.0: bridge window [io  0x1000-0x0fff] to [bu=
s 05-51] add_size 2000
[    1.467680] pci 0000:00:1c.0: bridge window [io  0x1000-0x0fff] to [bu=
s 04-51] add_size 3000
[    1.467688] pci 0000:00:1c.0: BAR 13: assigned [io  0x5000-0x7fff]
[    1.467693] pci 0000:01:00.0: BAR 6: assigned [mem 0xee080000-0xee0fff=
ff pref]
[    1.467697] pci 0000:00:01.0: PCI bridge to [bus 01]
[    1.467700] pci 0000:00:01.0:   bridge window [io  0x3000-0x3fff]
[    1.467703] pci 0000:00:01.0:   bridge window [mem 0xed000000-0xee0fff=
ff]
[    1.467706] pci 0000:00:01.0:   bridge window [mem 0xc0000000-0xd1ffff=
ff 64bit pref]
[    1.467712] pci 0000:04:00.0: BAR 13: assigned [io  0x5000-0x6fff]
[    1.467715] pci 0000:05:01.0: BAR 13: assigned [io  0x5000-0x5fff]
[    1.467718] pci 0000:05:04.0: BAR 13: assigned [io  0x6000-0x6fff]
[    1.467721] pci 0000:05:00.0: PCI bridge to [bus 06]
[    1.467730] pci 0000:05:00.0:   bridge window [mem 0xec100000-0xec1fff=
ff]
[    1.467739] pci 0000:05:01.0: PCI bridge to [bus 07-2b]
[    1.467743] pci 0000:05:01.0:   bridge window [io  0x5000-0x5fff]
[    1.467748] pci 0000:05:01.0:   bridge window [mem 0xe0100000-0xec0fff=
ff]
[    1.467753] pci 0000:05:01.0:   bridge window [mem 0x6020000000-0x603f=
ffffff 64bit pref]
[    1.467761] pci 0000:05:02.0: PCI bridge to [bus 2c]
[    1.467767] pci 0000:05:02.0:   bridge window [mem 0xe0000000-0xe00fff=
ff]
[    1.467776] pci 0000:05:04.0: PCI bridge to [bus 2d-51]
[    1.467779] pci 0000:05:04.0:   bridge window [io  0x6000-0x6fff]
[    1.467785] pci 0000:05:04.0:   bridge window [mem 0xd4000000-0xdfffff=
ff]
[    1.467789] pci 0000:05:04.0:   bridge window [mem 0x6000000000-0x601f=
ffffff 64bit pref]
[    1.467797] pci 0000:04:00.0: PCI bridge to [bus 05-51]
[    1.467800] pci 0000:04:00.0:   bridge window [io  0x5000-0x6fff]
[    1.467806] pci 0000:04:00.0:   bridge window [mem 0xd4000000-0xec1fff=
ff]
[    1.467810] pci 0000:04:00.0:   bridge window [mem 0x6000000000-0x603f=
ffffff 64bit pref]
[    1.467817] pci 0000:00:1c.0: PCI bridge to [bus 04-51]
[    1.467820] pci 0000:00:1c.0:   bridge window [io  0x5000-0x7fff]
[    1.467824] pci 0000:00:1c.0:   bridge window [mem 0xd4000000-0xec1fff=
ff]
[    1.467828] pci 0000:00:1c.0:   bridge window [mem 0x6000000000-0x603f=
ffffff 64bit pref]
[    1.467834] pci 0000:00:1c.6: PCI bridge to [bus 53]
[    1.467838] pci 0000:00:1c.6:   bridge window [mem 0xee300000-0xee3fff=
ff]
[    1.467845] pci 0000:00:1c.7: PCI bridge to [bus 54]
[    1.467849] pci 0000:00:1c.7:   bridge window [mem 0xee200000-0xee2fff=
ff]
[    1.467856] pci 0000:00:1d.0: PCI bridge to [bus 55]
[    1.467860] pci 0000:00:1d.0:   bridge window [mem 0xee100000-0xee1fff=
ff]
[    1.467868] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    1.467871] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    1.467873] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff win=
dow]
[    1.467876] pci_bus 0000:00: resource 7 [mem 0xbe800000-0xefffffff win=
dow]
[    1.467878] pci_bus 0000:00: resource 8 [mem 0x4000000000-0x7fffffffff=
 window]
[    1.467881] pci_bus 0000:00: resource 9 [mem 0xfc800000-0xfe7fffff win=
dow]
[    1.467883] pci_bus 0000:01: resource 0 [io  0x3000-0x3fff]
[    1.467886] pci_bus 0000:01: resource 1 [mem 0xed000000-0xee0fffff]
[    1.467888] pci_bus 0000:01: resource 2 [mem 0xc0000000-0xd1ffffff 64b=
it pref]
[    1.467891] pci_bus 0000:04: resource 0 [io  0x5000-0x7fff]
[    1.467893] pci_bus 0000:04: resource 1 [mem 0xd4000000-0xec1fffff]
[    1.467895] pci_bus 0000:04: resource 2 [mem 0x6000000000-0x603fffffff=
 64bit pref]
[    1.467898] pci_bus 0000:05: resource 0 [io  0x5000-0x6fff]
[    1.467900] pci_bus 0000:05: resource 1 [mem 0xd4000000-0xec1fffff]
[    1.467902] pci_bus 0000:05: resource 2 [mem 0x6000000000-0x603fffffff=
 64bit pref]
[    1.467905] pci_bus 0000:06: resource 1 [mem 0xec100000-0xec1fffff]
[    1.467907] pci_bus 0000:07: resource 0 [io  0x5000-0x5fff]
[    1.467910] pci_bus 0000:07: resource 1 [mem 0xe0100000-0xec0fffff]
[    1.467912] pci_bus 0000:07: resource 2 [mem 0x6020000000-0x603fffffff=
 64bit pref]
[    1.467914] pci_bus 0000:2c: resource 1 [mem 0xe0000000-0xe00fffff]
[    1.467917] pci_bus 0000:2d: resource 0 [io  0x6000-0x6fff]
[    1.467919] pci_bus 0000:2d: resource 1 [mem 0xd4000000-0xdfffffff]
[    1.467921] pci_bus 0000:2d: resource 2 [mem 0x6000000000-0x601fffffff=
 64bit pref]
[    1.467924] pci_bus 0000:53: resource 1 [mem 0xee300000-0xee3fffff]
[    1.467926] pci_bus 0000:54: resource 1 [mem 0xee200000-0xee2fffff]
[    1.467928] pci_bus 0000:55: resource 1 [mem 0xee100000-0xee1fffff]
[    1.468078] initcall pcibios_assign_resources+0x0/0xcd returned 0 afte=
r 411 usecs
[    1.468083] calling  pci_apply_final_quirks+0x0/0x136 @ 1
[    1.468094] pci 0000:00:02.0: calling  pci_fixup_video+0x0/0xe0 @ 1
[    1.468099] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0=
x000c0000-0x000dffff]
[    1.468102] pci 0000:00:02.0: pci_fixup_video+0x0/0xe0 took 4 usecs
[    1.468114] pci 0000:00:14.0: calling  quirk_usb_early_handoff+0x0/0x6=
40 @ 1
[    1.468399] pci 0000:00:14.0: quirk_usb_early_handoff+0x0/0x640 took 2=
72 usecs
[    1.468510] pci 0000:00:1f.6: calling  quirk_e100_interrupt+0x0/0x160 =
@ 1
[    1.468515] pci 0000:00:1f.6: quirk_e100_interrupt+0x0/0x160 took 0 us=
ecs
[    1.468532] pci 0000:01:00.0: calling  nv_msi_ht_cap_quirk_leaf+0x0/0x=
30 @ 1
[    1.468546] pci 0000:01:00.0: nv_msi_ht_cap_quirk_leaf+0x0/0x30 took 8=
 usecs
[    1.468550] pci 0000:01:00.0: calling  pci_fixup_video+0x0/0xe0 @ 1
[    1.468554] pci 0000:01:00.0: pci_fixup_video+0x0/0xe0 took 0 usecs
[    1.468559] pci 0000:01:00.1: calling  nv_msi_ht_cap_quirk_leaf+0x0/0x=
30 @ 1
[    1.468571] pci 0000:01:00.1: nv_msi_ht_cap_quirk_leaf+0x0/0x30 took 7=
 usecs
[    1.468575] pci 0000:01:00.1: calling  quirk_gpu_hda+0x0/0x20 @ 1
[    1.468596] pci 0000:01:00.1: D0 power state depends on 0000:01:00.0
[    1.468601] pci 0000:01:00.1: quirk_gpu_hda+0x0/0x20 took 21 usecs
[    1.468624] pci 0000:2c:00.0: calling  quirk_usb_early_handoff+0x0/0x6=
40 @ 1
[    1.469146] pci 0000:2c:00.0: quirk_usb_early_handoff+0x0/0x640 took 5=
04 usecs
[    1.469288] PCI: CLS 0 bytes, default 64
[    1.469290] initcall pci_apply_final_quirks+0x0/0x136 returned 0 after=
 1173 usecs
[    1.469295] calling  acpi_reserve_resources+0x0/0xf0 @ 1
[    1.469299] initcall acpi_reserve_resources+0x0/0xf0 returned 0 after =
1 usecs
[    1.469302] calling  populate_rootfs+0x0/0x110 @ 1
[    1.469345] initcall populate_rootfs+0x0/0x110 returned 0 after 37 use=
cs
[    1.469349] calling  pci_iommu_init+0x0/0x44 @ 1
[    1.469356] DMAR: Intel-IOMMU force enabled due to platform opt in
[    1.469374] DMAR: No ATSR found
[    1.469376] DMAR: No SATC found
[    1.469378] DMAR: IOMMU feature fl1gp_support inconsistent
[    1.469379] DMAR: IOMMU feature pgsel_inv inconsistent
[    1.469380] DMAR: IOMMU feature nwfs inconsistent
[    1.469382] DMAR: IOMMU feature pasid inconsistent
[    1.469384] DMAR: IOMMU feature eafs inconsistent
[    1.469385] DMAR: IOMMU feature prs inconsistent
[    1.469387] DMAR: IOMMU feature nest inconsistent
[    1.469388] DMAR: IOMMU feature mts inconsistent
[    1.469389] DMAR: IOMMU feature sc_support inconsistent
[    1.469391] DMAR: IOMMU feature dev_iotlb_support inconsistent
[    1.469393] DMAR: dmar0: Using Queued invalidation
[    1.469397] DMAR: dmar1: Using Queued invalidation
[    1.469670] pci 0000:00:00.0: Adding to iommu group 0
[    1.469689] pci 0000:00:01.0: Adding to iommu group 1
[    1.469700] pci 0000:00:02.0: Adding to iommu group 2
[    1.469710] pci 0000:00:04.0: Adding to iommu group 3
[    1.469720] pci 0000:00:08.0: Adding to iommu group 4
[    1.469734] pci 0000:00:12.0: Adding to iommu group 5
[    1.469752] pci 0000:00:14.0: Adding to iommu group 6
[    1.469762] pci 0000:00:14.2: Adding to iommu group 6
[    1.469774] pci 0000:00:14.3: Adding to iommu group 7
[    1.469793] pci 0000:00:15.0: Adding to iommu group 8
[    1.469807] pci 0000:00:15.1: Adding to iommu group 8
[    1.469821] pci 0000:00:16.0: Adding to iommu group 9
[    1.469837] pci 0000:00:1c.0: Adding to iommu group 10
[    1.469856] pci 0000:00:1c.6: Adding to iommu group 11
[    1.469868] pci 0000:00:1c.7: Adding to iommu group 12
[    1.469879] pci 0000:00:1d.0: Adding to iommu group 13
[    1.469911] pci 0000:00:1f.0: Adding to iommu group 14
[    1.469922] pci 0000:00:1f.3: Adding to iommu group 14
[    1.469933] pci 0000:00:1f.4: Adding to iommu group 14
[    1.469943] pci 0000:00:1f.5: Adding to iommu group 14
[    1.469954] pci 0000:00:1f.6: Adding to iommu group 14
[    1.469959] pci 0000:01:00.0: Adding to iommu group 1
[    1.469963] pci 0000:01:00.1: Adding to iommu group 1
[    1.469979] pci 0000:04:00.0: Adding to iommu group 15
[    1.469993] pci 0000:05:00.0: Adding to iommu group 16
[    1.470004] pci 0000:05:01.0: Adding to iommu group 17
[    1.470019] pci 0000:05:02.0: Adding to iommu group 18
[    1.470033] pci 0000:05:04.0: Adding to iommu group 19
[    1.470049] pci 0000:06:00.0: Adding to iommu group 20
[    1.470062] pci 0000:2c:00.0: Adding to iommu group 21
[    1.470081] pci 0000:53:00.0: Adding to iommu group 22
[    1.470093] pci 0000:54:00.0: Adding to iommu group 23
[    1.470115] pci 0000:55:00.0: Adding to iommu group 24
[    1.470619] DMAR: Intel(R) Virtualization Technology for Directed I/O
[    1.470622] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    1.470624] software IO TLB: mapped [mem 0x00000000a132d000-0x00000000=
a532d000] (64MB)
[    1.470627] initcall pci_iommu_init+0x0/0x44 returned 0 after 1243 use=
cs
[    1.470631] calling  ir_dev_scope_init+0x0/0x3e @ 1
[    1.470635] initcall ir_dev_scope_init+0x0/0x3e returned 0 after 0 use=
cs
[    1.470694] calling  ia32_binfmt_init+0x0/0x19 @ 1
[    1.470700] initcall ia32_binfmt_init+0x0/0x19 returned 0 after 1 usec=
s
[    1.470704] calling  amd_uncore_init+0x0/0x317 @ 1
[    1.470707] initcall amd_uncore_init+0x0/0x317 returned -19 after 0 us=
ecs
[    1.470711] calling  amd_ibs_init+0x0/0x1d0 @ 1
[    1.470714] initcall amd_ibs_init+0x0/0x1d0 returned -19 after 0 usecs=

[    1.470718] calling  amd_iommu_pc_init+0x0/0x246 @ 1
[    1.470721] initcall amd_iommu_pc_init+0x0/0x246 returned -19 after 0 =
usecs
[    1.470725] calling  msr_init+0x0/0x5b @ 1
[    1.470734] initcall msr_init+0x0/0x5b returned 0 after 5 usecs
[    1.470737] calling  intel_uncore_init+0x0/0x3d2 @ 1
[    1.470813] resource sanity check: requesting [mem 0xfed10000-0xfed15f=
ff], which spans more than pnp 00:08 [mem 0xfed10000-0xfed13fff]
[    1.470817] caller snb_uncore_imc_init_box+0x7a/0xc0 mapping multiple =
BARs
[    1.470951] initcall intel_uncore_init+0x0/0x3d2 returned 0 after 205 =
usecs
[    1.470956] calling  register_kernel_offset_dumper+0x0/0x20 @ 1
[    1.470962] initcall register_kernel_offset_dumper+0x0/0x20 returned 0=
 after 1 usecs
[    1.470965] calling  i8259A_init_ops+0x0/0x29 @ 1
[    1.470968] initcall i8259A_init_ops+0x0/0x29 returned 0 after 0 usecs=

[    1.470971] calling  init_tsc_clocksource+0x0/0xbe @ 1
[    1.470975] initcall init_tsc_clocksource+0x0/0xbe returned 0 after 0 =
usecs
[    1.470979] calling  add_rtc_cmos+0x0/0xb9 @ 1
[    1.470982] initcall add_rtc_cmos+0x0/0xb9 returned 0 after 0 usecs
[    1.470986] calling  i8237A_init_ops+0x0/0x41 @ 1
[    1.470997] initcall i8237A_init_ops+0x0/0x41 returned -19 after 8 use=
cs
[    1.471001] calling  umwait_init+0x0/0x79 @ 1
[    1.471004] initcall umwait_init+0x0/0x79 returned -19 after 0 usecs
[    1.471008] calling  ioapic_init_ops+0x0/0x19 @ 1
[    1.471024] initcall ioapic_init_ops+0x0/0x19 returned 0 after 12 usec=
s
[    1.471027] calling  register_e820_pmem+0x0/0x4b @ 1
[    1.471033] initcall register_e820_pmem+0x0/0x4b returned 0 after 2 us=
ecs
[    1.471037] calling  add_pcspkr+0x0/0x70 @ 1
[    1.471059] initcall add_pcspkr+0x0/0x70 returned 0 after 18 usecs
[    1.471063] calling  start_periodic_check_for_corruption+0x0/0x40 @ 1
[    1.471069] check: Scanning for low memory corruption every 60 seconds=

[    1.471071] initcall start_periodic_check_for_corruption+0x0/0x40 retu=
rned 0 after 2 usecs
[    1.471076] calling  sysfb_init+0x0/0x9f @ 1
[    1.471098] initcall sysfb_init+0x0/0x9f returned 0 after 18 usecs
[    1.471103] calling  audit_classes_init+0x0/0xb4 @ 1
[    1.471109] initcall audit_classes_init+0x0/0xb4 returned 0 after 2 us=
ecs
[    1.471113] calling  pt_dump_init+0x0/0x4e @ 1
[    1.471117] initcall pt_dump_init+0x0/0x4e returned 0 after 0 usecs
[    1.471122] calling  crc32c_intel_mod_init+0x0/0x5c @ 1
[    1.471159] initcall crc32c_intel_mod_init+0x0/0x5c returned 0 after 3=
3 usecs
[    1.471162] calling  iosf_mbi_init+0x0/0xa4 @ 1
[    1.471180] initcall iosf_mbi_init+0x0/0xa4 returned 0 after 14 usecs
[    1.471184] calling  proc_execdomains_init+0x0/0x27 @ 1
[    1.471190] initcall proc_execdomains_init+0x0/0x27 returned 0 after 3=
 usecs
[    1.471193] calling  register_warn_debugfs+0x0/0x29 @ 1
[    1.471197] initcall register_warn_debugfs+0x0/0x29 returned 0 after 0=
 usecs
[    1.471200] calling  cpuhp_sysfs_init+0x0/0x8b @ 1
[    1.471223] initcall cpuhp_sysfs_init+0x0/0x8b returned 0 after 18 use=
cs
[    1.471226] calling  ioresources_init+0x0/0x4f @ 1
[    1.471231] initcall ioresources_init+0x0/0x4f returned 0 after 1 usec=
s
[    1.471234] calling  init_sched_debug_procfs+0x0/0x34 @ 1
[    1.471238] initcall init_sched_debug_procfs+0x0/0x34 returned 0 after=
 0 usecs
[    1.471242] calling  psi_proc_init+0x0/0x6c @ 1
[    1.471247] initcall psi_proc_init+0x0/0x6c returned 0 after 1 usecs
[    1.471251] calling  snapshot_device_init+0x0/0x17 @ 1
[    1.471272] initcall snapshot_device_init+0x0/0x17 returned 0 after 17=
 usecs
[    1.471276] calling  irq_gc_init_ops+0x0/0x19 @ 1
[    1.471280] initcall irq_gc_init_ops+0x0/0x19 returned 0 after 0 usecs=

[    1.471284] calling  irq_pm_init_ops+0x0/0x19 @ 1
[    1.471288] initcall irq_pm_init_ops+0x0/0x19 returned 0 after 0 usecs=

[    1.471291] calling  klp_init+0x0/0x2e @ 1
[    1.471296] initcall klp_init+0x0/0x2e returned 0 after 1 usecs
[    1.471300] calling  timekeeping_init_ops+0x0/0x19 @ 1
[    1.471304] initcall timekeeping_init_ops+0x0/0x19 returned 0 after 0 =
usecs
[    1.471308] calling  init_clocksource_sysfs+0x0/0x29 @ 1
[    1.471333] initcall init_clocksource_sysfs+0x0/0x29 returned 0 after =
20 usecs
[    1.471338] calling  init_timer_list_procfs+0x0/0x37 @ 1
[    1.471343] initcall init_timer_list_procfs+0x0/0x37 returned 0 after =
0 usecs
[    1.471347] calling  alarmtimer_init+0x0/0xe4 @ 1
[    1.471362] initcall alarmtimer_init+0x0/0xe4 returned 0 after 10 usec=
s
[    1.471366] calling  init_posix_timers+0x0/0x2f @ 1
[    1.471371] initcall init_posix_timers+0x0/0x2f returned 0 after 0 use=
cs
[    1.471375] calling  clockevents_init_sysfs+0x0/0xc4 @ 1
[    1.471467] initcall clockevents_init_sysfs+0x0/0xc4 returned 0 after =
86 usecs
[    1.471472] calling  proc_dma_init+0x0/0x27 @ 1
[    1.471476] initcall proc_dma_init+0x0/0x27 returned 0 after 0 usecs
[    1.471478] calling  proc_modules_init+0x0/0x24 @ 1
[    1.471481] initcall proc_modules_init+0x0/0x24 returned 0 after 0 use=
cs
[    1.471484] calling  kallsyms_init+0x0/0x27 @ 1
[    1.471487] initcall kallsyms_init+0x0/0x27 returned 0 after 0 usecs
[    1.471489] calling  pid_namespaces_init+0x0/0x45 @ 1
[    1.471499] initcall pid_namespaces_init+0x0/0x45 returned 0 after 6 u=
secs
[    1.471502] calling  audit_watch_init+0x0/0x3f @ 1
[    1.471505] initcall audit_watch_init+0x0/0x3f returned 0 after 0 usec=
s
[    1.471508] calling  audit_fsnotify_init+0x0/0x3f @ 1
[    1.471510] initcall audit_fsnotify_init+0x0/0x3f returned 0 after 0 u=
secs
[    1.471513] calling  audit_tree_init+0x0/0x73 @ 1
[    1.471516] initcall audit_tree_init+0x0/0x73 returned 0 after 0 usecs=

[    1.471519] calling  seccomp_sysctl_init+0x0/0x31 @ 1
[    1.471525] initcall seccomp_sysctl_init+0x0/0x31 returned 0 after 2 u=
secs
[    1.471528] calling  utsname_sysctl_init+0x0/0x19 @ 1
[    1.471540] initcall utsname_sysctl_init+0x0/0x19 returned 0 after 9 u=
secs
[    1.471543] calling  init_tracepoints+0x0/0x31 @ 1
[    1.471546] initcall init_tracepoints+0x0/0x31 returned 0 after 0 usec=
s
[    1.471549] calling  stack_trace_init+0x0/0xa9 @ 1
[    1.471556] initcall stack_trace_init+0x0/0xa9 returned 0 after 3 usec=
s
[    1.471559] calling  init_mmio_trace+0x0/0x12 @ 1
[    1.471563] initcall init_mmio_trace+0x0/0x12 returned 0 after 1 usecs=

[    1.471566] calling  init_blk_tracer+0x0/0x56 @ 1
[    1.471574] initcall init_blk_tracer+0x0/0x56 returned 0 after 4 usecs=

[    1.471577] calling  perf_event_sysfs_init+0x0/0x86 @ 1
[    1.471752] initcall perf_event_sysfs_init+0x0/0x86 returned 0 after 1=
67 usecs
[    1.471757] calling  system_trusted_keyring_init+0x0/0xfc @ 1
[    1.471760] Initialise system trusted keyrings
[    1.471775] initcall system_trusted_keyring_init+0x0/0xfc returned 0 a=
fter 14 usecs
[    1.471779] calling  blacklist_init+0x0/0xa3 @ 1
[    1.471783] Key type blacklist registered
[    1.471786] initcall blacklist_init+0x0/0xa3 returned 0 after 3 usecs
[    1.471790] calling  kswapd_init+0x0/0x6f @ 1
[    1.471811] initcall kswapd_init+0x0/0x6f returned 0 after 17 usecs
[    1.471814] calling  extfrag_debug_init+0x0/0x5c @ 1
[    1.471820] initcall extfrag_debug_init+0x0/0x5c returned 0 after 2 us=
ecs
[    1.471824] calling  mm_compute_batch_init+0x0/0x24 @ 1
[    1.471829] initcall mm_compute_batch_init+0x0/0x24 returned 0 after 0=
 usecs
[    1.471832] calling  slab_proc_init+0x0/0x27 @ 1
[    1.471837] initcall slab_proc_init+0x0/0x27 returned 0 after 0 usecs
[    1.471841] calling  workingset_init+0x0/0x97 @ 1
[    1.471845] workingset: timestamp_bits=3D36 max_order=3D23 bucket_orde=
r=3D0
[    1.471848] initcall workingset_init+0x0/0x97 returned 0 after 3 usecs=

[    1.471852] calling  proc_vmalloc_init+0x0/0x35 @ 1
[    1.471856] initcall proc_vmalloc_init+0x0/0x35 returned 0 after 0 use=
cs
[    1.471860] calling  procswaps_init+0x0/0x24 @ 1
[    1.471864] initcall procswaps_init+0x0/0x24 returned 0 after 1 usecs
[    1.471867] calling  init_frontswap+0x0/0x98 @ 1
[    1.471872] initcall init_frontswap+0x0/0x98 returned 0 after 3 usecs
[    1.471875] calling  slab_sysfs_init+0x0/0xf8 @ 1
[    1.472896] initcall slab_sysfs_init+0x0/0xf8 returned 0 after 994 use=
cs
[    1.472901] calling  init_cleancache+0x0/0x8e @ 1
[    1.472907] initcall init_cleancache+0x0/0x8e returned 0 after 3 usecs=

[    1.472910] calling  init_zbud+0x0/0x25 @ 1
[    1.472912] zbud: loaded
[    1.472917] initcall init_zbud+0x0/0x25 returned 0 after 3 usecs
[    1.472920] calling  zs_init+0x0/0x7c @ 1
[    1.472935] initcall zs_init+0x0/0x7c returned 0 after 13 usecs
[    1.472939] calling  fcntl_init+0x0/0x2f @ 1
[    1.472943] initcall fcntl_init+0x0/0x2f returned 0 after 1 usecs
[    1.472946] calling  proc_filesystems_init+0x0/0x27 @ 1
[    1.472950] initcall proc_filesystems_init+0x0/0x27 returned 0 after 0=
 usecs
[    1.472953] calling  start_dirtytime_writeback+0x0/0x2f @ 1
[    1.472957] initcall start_dirtytime_writeback+0x0/0x2f returned 0 aft=
er 0 usecs
[    1.472961] calling  blkdev_init+0x0/0x26 @ 1
[    1.472969] initcall blkdev_init+0x0/0x26 returned 0 after 5 usecs
[    1.472973] calling  dio_init+0x0/0x32 @ 1
[    1.472990] initcall dio_init+0x0/0x32 returned 0 after 13 usecs
[    1.472994] calling  dnotify_init+0x0/0x7e @ 1
[    1.473012] initcall dnotify_init+0x0/0x7e returned 0 after 14 usecs
[    1.473015] calling  fanotify_user_setup+0x0/0xa1 @ 1
[    1.473036] initcall fanotify_user_setup+0x0/0xa1 returned 0 after 16 =
usecs
[    1.473040] calling  userfaultfd_init+0x0/0x33 @ 1
[    1.473053] initcall userfaultfd_init+0x0/0x33 returned 0 after 10 use=
cs
[    1.473057] calling  aio_setup+0x0/0x7e @ 1
[    1.473070] initcall aio_setup+0x0/0x7e returned 0 after 10 usecs
[    1.473074] calling  io_uring_init+0x0/0x32 @ 1
[    1.473078] initcall io_uring_init+0x0/0x32 returned 0 after 1 usecs
[    1.473082] calling  mbcache_init+0x0/0x36 @ 1
[    1.473098] initcall mbcache_init+0x0/0x36 returned 0 after 12 usecs
[    1.473102] calling  init_devpts_fs+0x0/0x31 @ 1
[    1.473110] initcall init_devpts_fs+0x0/0x31 returned 0 after 4 usecs
[    1.473114] calling  ext4_init_fs+0x0/0x1bc @ 1
[    1.473214] initcall ext4_init_fs+0x0/0x1bc returned 0 after 93 usecs
[    1.473218] calling  journal_init+0x0/0x133 @ 1
[    1.473254] initcall journal_init+0x0/0x133 returned 0 after 31 usecs
[    1.473259] calling  init_squashfs_fs+0x0/0x75 @ 1
[    1.473275] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    1.473276] initcall init_squashfs_fs+0x0/0x75 returned 0 after 13 use=
cs
[    1.473280] calling  init_fat_fs+0x0/0x54 @ 1
[    1.473305] initcall init_fat_fs+0x0/0x54 returned 0 after 20 usecs
[    1.473309] calling  init_vfat_fs+0x0/0x17 @ 1
[    1.473313] initcall init_vfat_fs+0x0/0x17 returned 0 after 0 usecs
[    1.473317] calling  ecryptfs_init+0x0/0x1b5 @ 1
[    1.473411] initcall ecryptfs_init+0x0/0x1b5 returned 0 after 88 usecs=

[    1.473416] calling  init_nls_cp437+0x0/0x19 @ 1
[    1.473420] initcall init_nls_cp437+0x0/0x19 returned 0 after 0 usecs
[    1.473424] calling  init_nls_iso8859_1+0x0/0x19 @ 1
[    1.473428] initcall init_nls_iso8859_1+0x0/0x19 returned 0 after 0 us=
ecs
[    1.473432] calling  fuse_init+0x0/0x1b5 @ 1
[    1.473435] fuse: init (API version 7.33)
[    1.473480] initcall fuse_init+0x0/0x1b5 returned 0 after 43 usecs
[    1.473485] calling  efivarfs_init+0x0/0x29 @ 1
[    1.473489] initcall efivarfs_init+0x0/0x29 returned 0 after 0 usecs
[    1.473493] calling  ipc_init+0x0/0x2a @ 1
[    1.473500] initcall ipc_init+0x0/0x2a returned 0 after 3 usecs
[    1.473504] calling  ipc_sysctl_init+0x0/0x19 @ 1
[    1.473514] initcall ipc_sysctl_init+0x0/0x19 returned 0 after 5 usecs=

[    1.473518] calling  init_mqueue_fs+0x0/0xe7 @ 1
[    1.473548] initcall init_mqueue_fs+0x0/0xe7 returned 0 after 25 usecs=

[    1.473552] calling  key_proc_init+0x0/0x69 @ 1
[    1.473557] initcall key_proc_init+0x0/0x69 returned 0 after 1 usecs
[    1.473562] calling  selinux_nf_ip_init+0x0/0x51 @ 1
[    1.473564] initcall selinux_nf_ip_init+0x0/0x51 returned 0 after 0 us=
ecs
[    1.473567] calling  init_sel_fs+0x0/0x12c @ 1
[    1.473569] initcall init_sel_fs+0x0/0x12c returned 0 after 0 usecs
[    1.473572] calling  selnl_init+0x0/0x7c @ 1
[    1.473576] initcall selnl_init+0x0/0x7c returned 0 after 2 usecs
[    1.473579] calling  sel_netif_init+0x0/0x3f @ 1
[    1.473581] initcall sel_netif_init+0x0/0x3f returned 0 after 0 usecs
[    1.473584] calling  sel_netnode_init+0x0/0x3b @ 1
[    1.473587] initcall sel_netnode_init+0x0/0x3b returned 0 after 0 usec=
s
[    1.473589] calling  sel_netport_init+0x0/0x3b @ 1
[    1.473592] initcall sel_netport_init+0x0/0x3b returned 0 after 0 usec=
s
[    1.473594] calling  aurule_init+0x0/0x30 @ 1
[    1.473597] initcall aurule_init+0x0/0x30 returned 0 after 0 usecs
[    1.473599] calling  init_smk_fs+0x0/0x117 @ 1
[    1.473602] initcall init_smk_fs+0x0/0x117 returned 0 after 0 usecs
[    1.473605] calling  smack_nf_ip_init+0x0/0x2e @ 1
[    1.473607] initcall smack_nf_ip_init+0x0/0x2e returned 0 after 0 usec=
s
[    1.473610] calling  apparmor_nf_ip_init+0x0/0x37 @ 1
[    1.473647] initcall apparmor_nf_ip_init+0x0/0x37 returned 0 after 33 =
usecs
[    1.473650] calling  platform_keyring_init+0x0/0x2f @ 1
[    1.473656] integrity: Platform Keyring initialized
[    1.473658] initcall platform_keyring_init+0x0/0x2f returned 0 after 4=
 usecs
[    1.473661] calling  crypto_algapi_init+0x0/0x12 @ 1
[    1.473665] initcall crypto_algapi_init+0x0/0x12 returned 0 after 0 us=
ecs
[    1.473668] calling  jent_mod_init+0x0/0x35 @ 1
[    1.482488] initcall jent_mod_init+0x0/0x35 returned 0 after 8610 usec=
s
[    1.482492] calling  calibrate_xor_blocks+0x0/0x12d @ 1
[    1.482495] xor: automatically using best checksumming function   avx =
     =20
[    1.482498] initcall calibrate_xor_blocks+0x0/0x12d returned 0 after 2=
 usecs
[    1.482501] calling  asymmetric_key_init+0x0/0x17 @ 1
[    1.482504] Key type asymmetric registered
[    1.482506] initcall asymmetric_key_init+0x0/0x17 returned 0 after 1 u=
secs
[    1.482509] calling  x509_key_init+0x0/0x17 @ 1
[    1.482513] Asymmetric key parser 'x509' registered
[    1.482515] initcall x509_key_init+0x0/0x17 returned 0 after 2 usecs
[    1.482518] calling  proc_genhd_init+0x0/0x47 @ 1
[    1.482522] initcall proc_genhd_init+0x0/0x47 returned 0 after 1 usecs=

[    1.482525] calling  bsg_init+0x0/0x159 @ 1
[    1.482532] Block layer SCSI generic (bsg) driver version 0.4 loaded (=
major 244)
[    1.482534] initcall bsg_init+0x0/0x159 returned 0 after 5 usecs
[    1.482538] calling  throtl_init+0x0/0x42 @ 1
[    1.482565] initcall throtl_init+0x0/0x42 returned 0 after 23 usecs
[    1.482568] calling  ioc_init+0x0/0x17 @ 1
[    1.482574] initcall ioc_init+0x0/0x17 returned 0 after 3 usecs
[    1.482578] calling  deadline_init+0x0/0x17 @ 1
[    1.482581] io scheduler mq-deadline registered
[    1.482583] initcall deadline_init+0x0/0x17 returned 0 after 1 usecs
[    1.482586] calling  btree_module_init+0x0/0x2a @ 1
[    1.482592] initcall btree_module_init+0x0/0x2a returned 0 after 1 use=
cs
[    1.482595] calling  crc_t10dif_mod_init+0x0/0x51 @ 1
[    1.482614] initcall crc_t10dif_mod_init+0x0/0x51 returned 0 after 15 =
usecs
[    1.482618] calling  libcrc32c_mod_init+0x0/0x2b @ 1
[    1.482622] initcall libcrc32c_mod_init+0x0/0x2b returned 0 after 0 us=
ecs
[    1.482625] calling  percpu_counter_startup+0x0/0x56 @ 1
[    1.482688] initcall percpu_counter_startup+0x0/0x56 returned 0 after =
57 usecs
[    1.482692] calling  digsig_init+0x0/0x3e @ 1
[    1.482697] initcall digsig_init+0x0/0x3e returned 0 after 1 usecs
[    1.482700] calling  sg_pool_init+0x0/0xb5 @ 1
[    1.482725] initcall sg_pool_init+0x0/0xb5 returned 0 after 21 usecs
[    1.482729] calling  phy_core_init+0x0/0x50 @ 1
[    1.482735] initcall phy_core_init+0x0/0x50 returned 0 after 2 usecs
[    1.482739] calling  amd_gpio_driver_init+0x0/0x19 @ 1
[    1.482758] initcall amd_gpio_driver_init+0x0/0x19 returned 0 after 14=
 usecs
[    1.482762] calling  crystalcove_gpio_driver_init+0x0/0x19 @ 1
[    1.482773] initcall crystalcove_gpio_driver_init+0x0/0x19 returned 0 =
after 6 usecs
[    1.482778] calling  tps68470_gpio_driver_init+0x0/0x19 @ 1
[    1.482788] initcall tps68470_gpio_driver_init+0x0/0x19 returned 0 aft=
er 5 usecs
[    1.482792] calling  crystalcove_pwm_driver_init+0x0/0x19 @ 1
[    1.482801] initcall crystalcove_pwm_driver_init+0x0/0x19 returned 0 a=
fter 4 usecs
[    1.482805] calling  pwm_lpss_driver_pci_init+0x0/0x20 @ 1
[    1.482818] initcall pwm_lpss_driver_pci_init+0x0/0x20 returned 0 afte=
r 8 usecs
[    1.482822] calling  pwm_lpss_driver_platform_init+0x0/0x19 @ 1
[    1.482834] initcall pwm_lpss_driver_platform_init+0x0/0x19 returned 0=
 after 7 usecs
[    1.482839] calling  pcie_portdrv_init+0x0/0x4f @ 1
[    1.483019] pcieport 0000:00:01.0: PME: Signaling with IRQ 122
[    1.483120] pcieport 0000:00:1c.0: PME: Signaling with IRQ 123
[    1.483143] pcieport 0000:00:1c.0: pciehp: Slot #0 AttnBtn- PwrCtrl- M=
RL- AttnInd- PwrInd- HotPlug+ Surprise+ Interlock- NoCompl+ IbPresDis- LL=
ActRep+
[    1.483408] pcieport 0000:00:1c.6: PME: Signaling with IRQ 124
[    1.483645] pcieport 0000:00:1c.7: PME: Signaling with IRQ 125
[    1.483868] pcieport 0000:00:1d.0: PME: Signaling with IRQ 126
[    1.484418] pcieport 0000:05:01.0: pciehp: Slot #1 AttnBtn- PwrCtrl- M=
RL- AttnInd- PwrInd- HotPlug+ Surprise+ Interlock- NoCompl+ IbPresDis- LL=
ActRep+
[    1.484854] pcieport 0000:05:04.0: pciehp: Slot #4 AttnBtn- PwrCtrl- M=
RL- AttnInd- PwrInd- HotPlug+ Surprise+ Interlock- NoCompl+ IbPresDis- LL=
ActRep+
[    1.485000] initcall pcie_portdrv_init+0x0/0x4f returned 0 after 2106 =
usecs
[    1.485007] calling  pci_proc_init+0x0/0x71 @ 1
[    1.485033] initcall pci_proc_init+0x0/0x71 returned 0 after 21 usecs
[    1.485038] calling  pci_hotplug_init+0x0/0x3a @ 1
[    1.485042] initcall pci_hotplug_init+0x0/0x3a returned 0 after 0 usec=
s
[    1.485046] calling  shpcd_init+0x0/0x62 @ 1
[    1.485060] shpchp: Standard Hot Plug PCI Controller Driver version: 0=
=2E4
[    1.485062] initcall shpcd_init+0x0/0x62 returned 0 after 11 usecs
[    1.485067] calling  pci_ep_cfs_init+0x0/0xdb @ 1
[    1.485084] initcall pci_ep_cfs_init+0x0/0xdb returned 0 after 14 usec=
s
[    1.485087] calling  pci_epc_init+0x0/0x47 @ 1
[    1.485092] initcall pci_epc_init+0x0/0x47 returned 0 after 2 usecs
[    1.485094] calling  pci_epf_init+0x0/0x33 @ 1
[    1.485100] initcall pci_epf_init+0x0/0x33 returned 0 after 3 usecs
[    1.485103] calling  dw_plat_pcie_driver_init+0x0/0x19 @ 1
[    1.485111] initcall dw_plat_pcie_driver_init+0x0/0x19 returned 0 afte=
r 5 usecs
[    1.485114] calling  imsttfb_init+0x0/0x121 @ 1
[    1.485124] initcall imsttfb_init+0x0/0x121 returned 0 after 7 usecs
[    1.485127] calling  asiliantfb_init+0x0/0x3b @ 1
[    1.485135] initcall asiliantfb_init+0x0/0x3b returned 0 after 5 usecs=

[    1.485138] calling  vesafb_driver_init+0x0/0x19 @ 1
[    1.485146] initcall vesafb_driver_init+0x0/0x19 returned 0 after 5 us=
ecs
[    1.485149] calling  efifb_driver_init+0x0/0x19 @ 1
[    1.485160] efifb: probing for efifb
[    1.485171] efifb: framebuffer at 0x4000000000, using 32400k, total 32=
400k
[    1.485174] efifb: mode is 3840x2160x32, linelength=3D15360, pages=3D1=

[    1.485177] efifb: scrolling: redraw
[    1.485178] efifb: Truecolor: size=3D8:8:8:8, shift=3D24:16:8:0
[    1.485245] Console: switching to colour frame buffer device 240x67
[    1.500118] fb0: EFI VGA frame buffer device
[    1.500174] initcall efifb_driver_init+0x0/0x19 returned 0 after 14669=
 usecs
[    1.500254] calling  intel_idle_init+0x0/0x7f3 @ 1
[    1.500605] Monitor-Mwait will be used to enter C-1 state
[    1.500677] Monitor-Mwait will be used to enter C-2 state
[    1.500743] Monitor-Mwait will be used to enter C-3 state
[    1.500807] ACPI: \_SB_.PR00: Found 3 idle states
[    1.501233] initcall intel_idle_init+0x0/0x7f3 returned 0 after 902 us=
ecs
[    1.501326] calling  ged_driver_init+0x0/0x19 @ 1
[    1.501402] initcall ged_driver_init+0x0/0x19 returned 0 after 12 usec=
s
[    1.501488] calling  acpi_ac_init+0x0/0xa8 @ 1
[    1.501990] ACPI: AC: AC Adapter [AC] (on-line)
[    1.502077] initcall acpi_ac_init+0x0/0xa8 returned 0 after 517 usecs
[    1.502172] calling  acpi_button_driver_init+0x0/0x58 @ 1
[    1.502284] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PN=
P0C0E:00/input/input0
[    1.502406] ACPI: button: Sleep Button [SLPB]
[    1.502487] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0=
C0D:00/input/input1
[    1.502597] ACPI: button: Lid Switch [LID]
[    1.502671] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/in=
put/input2
[    1.502772] ACPI: button: Power Button [PWRF]
[    1.502834] initcall acpi_button_driver_init+0x0/0x58 returned 0 after=
 583 usecs
[    1.502919] calling  acpi_fan_driver_init+0x0/0x19 @ 1
[    1.502990] initcall acpi_fan_driver_init+0x0/0x19 returned 0 after 10=
 usecs
[    1.503070] calling  acpi_processor_driver_init+0x0/0xbc @ 1
[    1.503287] smpboot: Estimated ratio of average max frequency by base =
frequency (times 1024): 1811
[    1.505685] initcall acpi_processor_driver_init+0x0/0xbc returned 0 af=
ter 2485 usecs
[    1.505776] calling  acpi_thermal_init+0x0/0x87 @ 1
[    1.509465] thermal LNXTHERM:00: registered as thermal_zone0
[    1.509533] ACPI: thermal: Thermal Zone [THM0] (77 C)
[    1.509621] initcall acpi_thermal_init+0x0/0x87 returned 0 after 3699 =
usecs
[    1.509707] calling  hmat_init+0x0/0x2ac @ 1
[    1.509759] initcall hmat_init+0x0/0x2ac returned 0 after 0 usecs
[    1.509829] calling  acpi_battery_init+0x0/0x3e @ 1
[    1.509889] initcall acpi_battery_init+0x0/0x3e returned 0 after 2 use=
cs
[    1.509996] calling  acpi_hed_driver_init+0x0/0x17 @ 1
[    1.510092] initcall acpi_hed_driver_init+0x0/0x17 returned 0 after 23=
 usecs
[    1.510179] calling  bgrt_init+0x0/0xc3 @ 1
[    1.510243] initcall bgrt_init+0x0/0xc3 returned 0 after 13 usecs
[    1.510341] calling  acpi_aml_init+0x0/0xcc @ 1
[    1.510403] initcall acpi_aml_init+0x0/0xcc returned 0 after 2 usecs
[    1.510476] calling  erst_init+0x0/0x309 @ 1
[    1.510527] initcall erst_init+0x0/0x309 returned 0 after 0 usecs
[    1.513928] calling  ghes_init+0x0/0xf9 @ 1
[    1.517341] initcall ghes_init+0x0/0xf9 returned -19 after 0 usecs
[    1.520716] calling  intel_crc_pmic_opregion_driver_init+0x0/0x19 @ 1
[    1.524059] initcall intel_crc_pmic_opregion_driver_init+0x0/0x19 retu=
rned 0 after 10 usecs
[    1.527377] calling  intel_chtcrc_pmic_opregion_driver_init+0x0/0x19 @=
 1
[    1.530722] initcall intel_chtcrc_pmic_opregion_driver_init+0x0/0x19 r=
eturned 0 after 7 usecs
[    1.534160] calling  intel_xpower_pmic_opregion_driver_init+0x0/0x19 @=
 1
[    1.537573] initcall intel_xpower_pmic_opregion_driver_init+0x0/0x19 r=
eturned 0 after 8 usecs
[    1.539359] ACPI: battery: Slot [BAT0] (battery present)
[    1.541274] calling  intel_bxtwc_pmic_opregion_driver_init+0x0/0x19 @ =
1
[    1.549581] initcall intel_bxtwc_pmic_opregion_driver_init+0x0/0x19 re=
turned 0 after 9 usecs
[    1.552826] calling  intel_cht_wc_pmic_opregion_driver_init+0x0/0x19 @=
 1
[    1.556105] initcall intel_cht_wc_pmic_opregion_driver_init+0x0/0x19 r=
eturned 0 after 7 usecs
[    1.559375] calling  chtdc_ti_pmic_opregion_driver_init+0x0/0x19 @ 1
[    1.562640] initcall chtdc_ti_pmic_opregion_driver_init+0x0/0x19 retur=
ned 0 after 5 usecs
[    1.565920] calling  tps68470_pmic_opregion_driver_init+0x0/0x19 @ 1
[    1.569179] initcall tps68470_pmic_opregion_driver_init+0x0/0x19 retur=
ned 0 after 5 usecs
[    1.572458] calling  gpio_clk_driver_init+0x0/0x19 @ 1
[    1.575723] initcall gpio_clk_driver_init+0x0/0x19 returned 0 after 5 =
usecs
[    1.578991] calling  plt_clk_driver_init+0x0/0x19 @ 1
[    1.582255] initcall plt_clk_driver_init+0x0/0x19 returned 0 after 5 u=
secs
[    1.585510] calling  fch_clk_driver_init+0x0/0x19 @ 1
[    1.588753] initcall fch_clk_driver_init+0x0/0x19 returned 0 after 4 u=
secs
[    1.592001] calling  virtio_mmio_init+0x0/0x19 @ 1
[    1.595240] initcall virtio_mmio_init+0x0/0x19 returned 0 after 8 usec=
s
[    1.598463] calling  virtio_pci_driver_init+0x0/0x20 @ 1
[    1.601677] initcall virtio_pci_driver_init+0x0/0x20 returned 0 after =
10 usecs
[    1.604889] calling  virtio_balloon_driver_init+0x0/0x17 @ 1
[    1.608199] initcall virtio_balloon_driver_init+0x0/0x17 returned 0 af=
ter 108 usecs
[    1.611460] calling  xenbus_probe_initcall+0x0/0x5c @ 1
[    1.614747] initcall xenbus_probe_initcall+0x0/0x5c returned 0 after 0=
 usecs
[    1.618033] calling  xenbus_init+0x0/0x40 @ 1
[    1.621294] initcall xenbus_init+0x0/0x40 returned -19 after 0 usecs
[    1.624568] calling  xenbus_backend_init+0x0/0x49 @ 1
[    1.627851] initcall xenbus_backend_init+0x0/0x49 returned -19 after 0=
 usecs
[    1.631126] calling  hyper_sysfs_init+0x0/0x187 @ 1
[    1.634403] initcall hyper_sysfs_init+0x0/0x187 returned -19 after 0 u=
secs
[    1.637674] calling  hypervisor_subsys_init+0x0/0x2a @ 1
[    1.640935] initcall hypervisor_subsys_init+0x0/0x2a returned -19 afte=
r 0 usecs
[    1.644181] calling  platform_driver_init+0x0/0x20 @ 1
[    1.647412] initcall platform_driver_init+0x0/0x20 returned 0 after 18=
 usecs
[    1.650643] calling  xen_late_init_mcelog+0x0/0x63 @ 1
[    1.653792] initcall xen_late_init_mcelog+0x0/0x63 returned -19 after =
0 usecs
[    1.656930] calling  xen_acpi_processor_init+0x0/0x1c4 @ 1
[    1.660037] initcall xen_acpi_processor_init+0x0/0x1c4 returned -19 af=
ter 0 usecs
[    1.663140] calling  brcm_rescal_reset_driver_init+0x0/0x19 @ 1
[    1.666247] initcall brcm_rescal_reset_driver_init+0x0/0x19 returned 0=
 after 9 usecs
[    1.669349] calling  n_null_init+0x0/0x24 @ 1
[    1.672429] initcall n_null_init+0x0/0x24 returned 0 after 0 usecs
[    1.675484] calling  pty_init+0x0/0x347 @ 1
[    1.678585] initcall pty_init+0x0/0x347 returned 0 after 98 usecs
[    1.681579] calling  sysrq_init+0x0/0x68 @ 1
[    1.684560] initcall sysrq_init+0x0/0x68 returned 0 after 2 usecs
[    1.687538] calling  xen_hvc_init+0x0/0x25f @ 1
[    1.690481] initcall xen_hvc_init+0x0/0x25f returned -19 after 0 usecs=

[    1.693418] calling  serial8250_init+0x0/0x164 @ 1
[    1.696368] Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
[    1.701009] initcall serial8250_init+0x0/0x164 returned 0 after 4532 u=
secs
[    1.704041] calling  serial_pci_driver_init+0x0/0x20 @ 1
[    1.707067] initcall serial_pci_driver_init+0x0/0x20 returned 0 after =
23 usecs
[    1.710072] calling  max310x_uart_init+0x0/0x34 @ 1
[    1.713080] initcall max310x_uart_init+0x0/0x34 returned 0 after 9 use=
cs
[    1.716088] calling  sccnxp_uart_driver_init+0x0/0x19 @ 1
[    1.719096] initcall sccnxp_uart_driver_init+0x0/0x19 returned 0 after=
 9 usecs
[    1.722121] calling  init_kgdboc+0x0/0x71 @ 1
[    1.725145] initcall init_kgdboc+0x0/0x71 returned 0 after 20 usecs
[    1.728181] calling  ttyprintk_init+0x0/0x100 @ 1
[    1.731268] initcall ttyprintk_init+0x0/0x100 returned 0 after 60 usec=
s
[    1.734315] calling  init+0x0/0x10c @ 1
[    1.737339] initcall init+0x0/0x10c returned 0 after 10 usecs
[    1.740386] calling  hpet_init+0x0/0x70 @ 1
[    1.743567] initcall hpet_init+0x0/0x70 returned 0 after 171 usecs
[    1.746590] calling  hwrng_modinit+0x0/0x87 @ 1
[    1.749662] initcall hwrng_modinit+0x0/0x87 returned 0 after 56 usecs
[    1.752708] calling  agp_init+0x0/0x2c @ 1
[    1.755712] Linux agpgart interface v0.103
[    1.758674] initcall agp_init+0x0/0x2c returned 0 after 2892 usecs
[    1.761679] calling  agp_amd64_mod_init+0x0/0x26 @ 1
[    1.764673] initcall agp_amd64_mod_init+0x0/0x26 returned -19 after 12=
 usecs
[    1.767665] calling  agp_intel_init+0x0/0x2f @ 1
[    1.770626] initcall agp_intel_init+0x0/0x2f returned 0 after 10 usecs=

[    1.773602] calling  agp_via_init+0x0/0x2f @ 1
[    1.776568] initcall agp_via_init+0x0/0x2f returned 0 after 9 usecs
[    1.779544] calling  init_tis+0x0/0xdd @ 1
[    1.784255] tpm_tis NTC0702:00: 2.0 TPM (device-id 0xFC, rev-id 1)
[    1.799718] initcall init_tis+0x0/0xdd returned 0 after 16835 usecs
[    1.802711] calling  crb_acpi_driver_init+0x0/0x17 @ 1
[    1.805741] initcall crb_acpi_driver_init+0x0/0x17 returned 0 after 54=
 usecs
[    1.808738] calling  cn_proc_init+0x0/0x3f @ 1
[    1.811739] initcall cn_proc_init+0x0/0x3f returned 0 after 1 usecs
[    1.814720] calling  _nvm_misc_init+0x0/0x17 @ 1
[    1.817805] initcall _nvm_misc_init+0x0/0x17 returned 0 after 104 usec=
s
[    1.820806] calling  topology_sysfs_init+0x0/0x32 @ 1
[    1.823860] initcall topology_sysfs_init+0x0/0x32 returned 0 after 56 =
usecs
[    1.826856] calling  cacheinfo_sysfs_init+0x0/0x32 @ 1
[    1.830799] initcall cacheinfo_sysfs_init+0x0/0x32 returned 0 after 92=
6 usecs
[    1.833794] calling  devcoredump_init+0x0/0x1e @ 1
[    1.836798] initcall devcoredump_init+0x0/0x1e returned 0 after 5 usec=
s
[    1.839796] calling  loop_init+0x0/0x140 @ 1
[    1.844757] loop: module loaded
[    1.847717] initcall loop_init+0x0/0x140 returned 0 after 4772 usecs
[    1.850729] calling  xlblk_init+0x0/0x13a @ 1
[    1.853711] initcall xlblk_init+0x0/0x13a returned -19 after 0 usecs
[    1.856719] calling  htcpld_core_init+0x0/0x32 @ 1
[    1.859719] initcall htcpld_core_init+0x0/0x32 returned -19 after 23 u=
secs
[    1.862726] calling  tps65912_i2c_driver_init+0x0/0x19 @ 1
[    1.865703] initcall tps65912_i2c_driver_init+0x0/0x19 returned 0 afte=
r 3 usecs
[    1.868703] calling  tps65912_spi_driver_init+0x0/0x19 @ 1
[    1.871662] initcall tps65912_spi_driver_init+0x0/0x19 returned 0 afte=
r 3 usecs
[    1.874643] calling  tps68470_driver_init+0x0/0x19 @ 1
[    1.877591] initcall tps68470_driver_init+0x0/0x19 returned 0 after 3 =
usecs
[    1.880563] calling  twl_driver_init+0x0/0x19 @ 1
[    1.883508] initcall twl_driver_init+0x0/0x19 returned 0 after 4 usecs=

[    1.886459] calling  twl4030_audio_driver_init+0x0/0x19 @ 1
[    1.889403] initcall twl4030_audio_driver_init+0x0/0x19 returned 0 aft=
er 6 usecs
[    1.892370] calling  twl6040_driver_init+0x0/0x19 @ 1
[    1.895310] initcall twl6040_driver_init+0x0/0x19 returned 0 after 3 u=
secs
[    1.898262] calling  da9063_i2c_driver_init+0x0/0x19 @ 1
[    1.901212] initcall da9063_i2c_driver_init+0x0/0x19 returned 0 after =
2 usecs
[    1.904178] calling  max14577_i2c_init+0x0/0x19 @ 1
[    1.907142] initcall max14577_i2c_init+0x0/0x19 returned 0 after 2 use=
cs
[    1.910109] calling  max77693_i2c_driver_init+0x0/0x19 @ 1
[    1.913066] initcall max77693_i2c_driver_init+0x0/0x19 returned 0 afte=
r 2 usecs
[    1.916023] calling  adp5520_driver_init+0x0/0x19 @ 1
[    1.918947] initcall adp5520_driver_init+0x0/0x19 returned 0 after 2 u=
secs
[    1.921863] calling  intel_soc_pmic_i2c_driver_init+0x0/0x19 @ 1
[    1.924815] initcall intel_soc_pmic_i2c_driver_init+0x0/0x19 returned =
0 after 2 usecs
[    1.927761] calling  cht_wc_driver_init+0x0/0x19 @ 1
[    1.930700] initcall cht_wc_driver_init+0x0/0x19 returned 0 after 2 us=
ecs
[    1.933633] calling  e820_pmem_driver_init+0x0/0x19 @ 1
[    1.936593] initcall e820_pmem_driver_init+0x0/0x19 returned 0 after 7=
 usecs
[    1.939525] calling  system_heap_create+0x0/0x70 @ 1
[    1.942525] initcall system_heap_create+0x0/0x70 returned 0 after 61 u=
secs
[    1.945461] calling  add_default_cma_heap+0x0/0xc0 @ 1
[    1.948469] initcall add_default_cma_heap+0x0/0xc0 returned 0 after 55=
 usecs
[    1.951416] calling  udmabuf_dev_init+0x0/0x17 @ 1
[    1.954402] initcall udmabuf_dev_init+0x0/0x17 returned 0 after 54 use=
cs
[    1.957338] calling  init_sd+0x0/0x19a @ 1
[    1.960287] initcall init_sd+0x0/0x19a returned 0 after 12 usecs
[    1.963240] calling  init_sr+0x0/0x50 @ 1
[    1.966175] initcall init_sr+0x0/0x50 returned 0 after 2 usecs
[    1.969100] calling  init_sg+0x0/0x1cd @ 1
[    1.972017] initcall init_sg+0x0/0x1cd returned 0 after 7 usecs
[    1.974930] calling  nvme_core_init+0x0/0x14b @ 1
[    1.978043] initcall nvme_core_init+0x0/0x14b returned 0 after 215 use=
cs
[    1.980979] calling  nvme_init+0x0/0x20 @ 1
[    1.983981] nvme nvme0: pci function 0000:55:00.0
[    1.986908] initcall nvme_init+0x0/0x20 returned 0 after 2964 usecs
[    1.989919] calling  ahci_pci_driver_init+0x0/0x20 @ 1
[    1.992945] initcall ahci_pci_driver_init+0x0/0x20 returned 0 after 27=
 usecs
[    1.996007] calling  ahci_driver_init+0x0/0x19 @ 1
[    1.998952] initcall ahci_driver_init+0x0/0x19 returned 0 after 28 use=
cs
[    2.000552] nvme nvme0: 12/0/0 default/read/poll queues
[    2.002585] calling  piix_init+0x0/0x2e @ 1
[    2.008966]  nvme0n1: p1 p2 p3 p4 p5 p6 p7
[    2.009320] initcall piix_init+0x0/0x2e returned 0 after 36 usecs
[    2.016879] calling  sis_pci_driver_init+0x0/0x20 @ 1
[    2.019814] initcall sis_pci_driver_init+0x0/0x20 returned 0 after 14 =
usecs
[    2.022743] calling  ata_generic_pci_driver_init+0x0/0x20 @ 1
[    2.025660] initcall ata_generic_pci_driver_init+0x0/0x20 returned 0 a=
fter 9 usecs
[    2.028603] calling  net_olddevs_init+0x0/0x60 @ 1
[    2.031507] initcall net_olddevs_init+0x0/0x60 returned 0 after 2 usec=
s
[    2.034425] calling  blackhole_netdev_init+0x0/0x81 @ 1
[    2.037321] initcall blackhole_netdev_init+0x0/0x81 returned 0 after 6=
 usecs
[    2.040255] calling  phy_module_init+0x0/0x1e @ 1
[    2.043162] initcall phy_module_init+0x0/0x1e returned 0 after 4 usecs=

[    2.046076] calling  fixed_mdio_bus_init+0x0/0xfb @ 1
[    2.049068] libphy: Fixed MDIO Bus: probed
[    2.051960] initcall fixed_mdio_bus_init+0x0/0xfb returned 0 after 289=
6 usecs
[    2.054910] calling  tun_init+0x0/0xaa @ 1
[    2.057824] tun: Universal TUN/TAP device driver, 1.6
[    2.060841] initcall tun_init+0x0/0xaa returned 0 after 2946 usecs
[    2.063792] calling  ppp_init+0x0/0x113 @ 1
[    2.066733] PPP generic driver version 2.4.2
[    2.069728] initcall ppp_init+0x0/0x113 returned 0 after 2924 usecs
[    2.072718] calling  netif_init+0x0/0x6b @ 1
[    2.075674] initcall netif_init+0x0/0x6b returned -19 after 0 usecs
[    2.078661] calling  vfio_init+0x0/0x1aa @ 1
[    2.081670] VFIO - User Level meta-driver version: 0.3
[    2.084644] initcall vfio_init+0x0/0x1aa returned 0 after 2964 usecs
[    2.087637] calling  vfio_virqfd_init+0x0/0x38 @ 1
[    2.090723] initcall vfio_virqfd_init+0x0/0x38 returned 0 after 100 us=
ecs
[    2.093697] calling  vfio_iommu_type1_init+0x0/0x17 @ 1
[    2.096704] initcall vfio_iommu_type1_init+0x0/0x17 returned 0 after 0=
 usecs
[    2.099683] calling  vfio_pci_init+0x0/0x188 @ 1
[    2.102667] initcall vfio_pci_init+0x0/0x188 returned 0 after 11 usecs=

[    2.105633] calling  cdrom_init+0x0/0x12 @ 1
[    2.108615] initcall cdrom_init+0x0/0x12 returned 0 after 10 usecs
[    2.111592] calling  dwc2_platform_driver_init+0x0/0x19 @ 1
[    2.114598] initcall dwc2_platform_driver_init+0x0/0x19 returned 0 aft=
er 9 usecs
[    2.117575] calling  ehci_hcd_init+0x0/0xb6 @ 1
[    2.120564] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver=

[    2.123567] initcall ehci_hcd_init+0x0/0xb6 returned 0 after 2932 usec=
s
[    2.126591] calling  ehci_pci_init+0x0/0x6e @ 1
[    2.129557] ehci-pci: EHCI PCI platform driver
[    2.132541] initcall ehci_pci_init+0x0/0x6e returned 0 after 2914 usec=
s
[    2.135537] calling  ehci_platform_init+0x0/0x51 @ 1
[    2.138531] ehci-platform: EHCI generic platform driver
[    2.141526] initcall ehci_platform_init+0x0/0x51 returned 0 after 2924=
 usecs
[    2.144569] calling  ohci_hcd_mod_init+0x0/0x85 @ 1
[    2.147585] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    2.150625] initcall ohci_hcd_mod_init+0x0/0x85 returned 0 after 2969 =
usecs
[    2.153679] calling  ohci_pci_init+0x0/0x6e @ 1
[    2.156731] ohci-pci: OHCI PCI platform driver
[    2.159772] initcall ohci_pci_init+0x0/0x6e returned 0 after 2970 usec=
s
[    2.162855] calling  ohci_platform_init+0x0/0x51 @ 1
[    2.165931] ohci-platform: OHCI generic platform driver
[    2.169026] initcall ohci_platform_init+0x0/0x51 returned 0 after 3022=
 usecs
[    2.172168] calling  uhci_hcd_init+0x0/0x112 @ 1
[    2.175301] uhci_hcd: USB Universal Host Controller Interface driver
[    2.178467] initcall uhci_hcd_init+0x0/0x112 returned 0 after 3091 use=
cs
[    2.181654] calling  xhci_hcd_init+0x0/0x29 @ 1
[    2.184816] initcall xhci_hcd_init+0x0/0x29 returned 0 after 0 usecs
[    2.187986] calling  kgdbdbgp_start_thread+0x0/0x55 @ 1
[    2.191143] initcall kgdbdbgp_start_thread+0x0/0x55 returned 0 after 0=
 usecs
[    2.194309] calling  i8042_init+0x0/0x48a @ 1
[    2.197490] i8042: PNP: PS/2 Controller [PNP0303:KBD,PNP0f13:MOU] at 0=
x60,0x64 irq 1,12
[    2.202634] serio: i8042 KBD port at 0x60,0x64 irq 1
[    2.205853] serio: i8042 AUX port at 0x60,0x64 irq 12
[    2.209068] initcall i8042_init+0x0/0x48a returned 0 after 11330 usecs=

[    2.212277] calling  mousedev_init+0x0/0x8b @ 1
[    2.215613] mousedev: PS/2 mouse device common for all mice
[    2.218822] initcall mousedev_init+0x0/0x8b returned 0 after 3266 usec=
s
[    2.222050] calling  evdev_init+0x0/0x17 @ 1
[    2.225374] initcall evdev_init+0x0/0x17 returned 0 after 85 usecs
[    2.228599] calling  atkbd_init+0x0/0x2c @ 1
[    2.231812] initcall atkbd_init+0x0/0x2c returned 0 after 8 usecs
[    2.235013] calling  elants_i2c_driver_init+0x0/0x19 @ 1
[    2.238270] initcall elants_i2c_driver_init+0x0/0x19 returned 0 after =
32 usecs
[    2.241489] calling  uinput_misc_init+0x0/0x17 @ 1
[    2.244851] initcall uinput_misc_init+0x0/0x17 returned 0 after 132 us=
ecs
[    2.245414] input: AT Translated Set 2 keyboard as /devices/platform/i=
8042/serio0/input/input3
[    2.248064] calling  cmos_init+0x0/0x75 @ 1
[    2.254623] rtc_cmos 00:04: RTC can wake from S4
[    2.258793] rtc_cmos 00:04: registered as rtc0
[    2.262255] rtc_cmos 00:04: setting system clock to 2021-03-25T05:32:0=
8 UTC (1616650328)
[    2.265506] rtc_cmos 00:04: alarms up to one month, y3k, 242 bytes nvr=
am, hpet irqs
[    2.268765] initcall cmos_init+0x0/0x75 returned 0 after 13833 usecs
[    2.272031] calling  i2c_dev_init+0x0/0xc6 @ 1
[    2.275284] i2c /dev entries driver
[    2.278528] initcall i2c_dev_init+0x0/0xc6 returned 0 after 3168 usecs=

[    2.281808] calling  mt6323_pwrc_driver_init+0x0/0x19 @ 1
[    2.285083] initcall mt6323_pwrc_driver_init+0x0/0x19 returned 0 after=
 10 usecs
[    2.288378] calling  restart_poweroff_driver_init+0x0/0x19 @ 1
[    2.291666] initcall restart_poweroff_driver_init+0x0/0x19 returned 0 =
after 6 usecs
[    2.294956] calling  thermal_throttle_init_device+0x0/0x47 @ 1
[    2.298857] initcall thermal_throttle_init_device+0x0/0x47 returned 0 =
after 615 usecs
[    2.302144] calling  watchdog_gov_noop_register+0x0/0x17 @ 1
[    2.305426] initcall watchdog_gov_noop_register+0x0/0x17 returned 0 af=
ter 0 usecs
[    2.308720] calling  dm_init+0x0/0x51 @ 1
[    2.312025] device-mapper: uevent: version 1.0.3
[    2.315383] device-mapper: ioctl: 4.44.0-ioctl (2021-02-01) initialise=
d: dm-devel@redhat.com
[    2.318732] initcall dm_init+0x0/0x51 returned 0 after 6576 usecs
[    2.322074] calling  virtual_eisa_root_init+0x0/0x51 @ 1
[    2.325451] platform eisa.0: Probing EISA bus 0
[    2.328793] platform eisa.0: EISA: Cannot allocate resource for mainbo=
ard
[    2.332163] platform eisa.0: Cannot allocate resource for EISA slot 1
[    2.335506] platform eisa.0: Cannot allocate resource for EISA slot 2
[    2.338806] platform eisa.0: Cannot allocate resource for EISA slot 3
[    2.342052] platform eisa.0: Cannot allocate resource for EISA slot 4
[    2.345276] platform eisa.0: Cannot allocate resource for EISA slot 5
[    2.348471] platform eisa.0: Cannot allocate resource for EISA slot 6
[    2.351613] platform eisa.0: Cannot allocate resource for EISA slot 7
[    2.354712] platform eisa.0: Cannot allocate resource for EISA slot 8
[    2.357767] platform eisa.0: EISA: Detected 0 cards
[    2.360788] initcall virtual_eisa_root_init+0x0/0x51 returned 0 after =
34522 usecs
[    2.363844] calling  intel_pstate_init+0x0/0x578 @ 1
[    2.366885] intel_pstate: Intel P-state driver initializing
[    2.371024] intel_pstate: HWP enabled
[    2.372764] initcall intel_pstate_init+0x0/0x578 returned 0 after 5742=
 usecs
[    2.374577] calling  ledtrig_disk_init+0x0/0x59 @ 1
[    2.376338] initcall ledtrig_disk_init+0x0/0x59 returned 0 after 2 use=
cs
[    2.378090] calling  ledtrig_mtd_init+0x0/0x33 @ 1
[    2.379831] initcall ledtrig_mtd_init+0x0/0x33 returned 0 after 0 usec=
s
[    2.381569] calling  ledtrig_cpu_init+0x0/0xe1 @ 1
[    2.383529] ledtrig-cpu: registered to indicate activity on CPUs
[    2.385126] initcall ledtrig_cpu_init+0x0/0xe1 returned 0 after 1789 u=
secs
[    2.386967] calling  ledtrig_panic_init+0x0/0x3e @ 1
[    2.388539] initcall ledtrig_panic_init+0x0/0x3e returned 0 after 0 us=
ecs
[    2.390122] calling  efivars_sysfs_init+0x0/0x30 @ 1
[    2.391774] EFI Variables Facility v0.08 2004-May-17
[    2.421997] initcall efivars_sysfs_init+0x0/0x30 returned 0 after 2951=
5 usecs
[    2.423845] calling  esrt_sysfs_init+0x0/0x2e9 @ 1
[    2.425661] initcall esrt_sysfs_init+0x0/0x2e9 returned 0 after 20 use=
cs
[    2.427435] calling  efi_mokvar_sysfs_init+0x0/0x184 @ 1
[    2.429241] initcall efi_mokvar_sysfs_init+0x0/0x184 returned -2 after=
 0 usecs
[    2.431001] calling  pmc_core_driver_init+0x0/0x19 @ 1
[    2.432728] intel_pmc_core INT33A1:00:  initialized
[    2.434349] initcall pmc_core_driver_init+0x0/0x19 returned 0 after 16=
14 usecs
[    2.436039] calling  pmc_core_platform_init+0x0/0x96 @ 1
[    2.437801] initcall pmc_core_platform_init+0x0/0x96 returned -19 afte=
r 24 usecs
[    2.439561] calling  intel_scu_pci_driver_init+0x0/0x20 @ 1
[    2.441324] initcall intel_scu_pci_driver_init+0x0/0x20 returned 0 aft=
er 5 usecs
[    2.443101] calling  pmc_atom_init+0x0/0x289 @ 1
[    2.444882] initcall pmc_atom_init+0x0/0x289 returned -19 after 3 usec=
s
[    2.446687] calling  extcon_class_init+0x0/0x1d @ 1
[    2.448438] initcall extcon_class_init+0x0/0x1d returned 0 after 1 use=
cs
[    2.450232] calling  icc_init+0x0/0x6a @ 1
[    2.452009] initcall icc_init+0x0/0x6a returned 0 after 1 usecs
[    2.453788] calling  sock_diag_init+0x0/0x35 @ 1
[    2.455563] initcall sock_diag_init+0x0/0x35 returned 0 after 9 usecs
[    2.457330] calling  init_net_drop_monitor+0x0/0xfa @ 1
[    2.459095] drop_monitor: Initializing network drop monitor service
[    2.460866] initcall init_net_drop_monitor+0x0/0xfa returned 0 after 1=
729 usecs
[    2.462632] calling  blackhole_init+0x0/0x17 @ 1
[    2.464408] initcall blackhole_init+0x0/0x17 returned 0 after 0 usecs
[    2.466193] calling  gre_offload_init+0x0/0x53 @ 1
[    2.467980] initcall gre_offload_init+0x0/0x53 returned 0 after 0 usec=
s
[    2.469751] calling  bpfilter_sockopt_init+0x0/0x3d @ 1
[    2.471507] initcall bpfilter_sockopt_init+0x0/0x3d returned 0 after 0=
 usecs
[    2.473257] calling  sysctl_ipv4_init+0x0/0x53 @ 1
[    2.474152] tsc: Refined TSC clocksource calibration: 2592.000 MHz
[    2.475049] initcall sysctl_ipv4_init+0x0/0x53 returned 0 after 25 use=
cs
[    2.476787] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x2=
55cb6cc5db, max_idle_ns: 440795203504 ns
[    2.478538] calling  cubictcp_register+0x0/0x5e @ 1
[    2.482727] initcall cubictcp_register+0x0/0x5e returned 0 after 0 use=
cs
[    2.485016] calling  inet6_init+0x0/0x39a @ 1
[    2.487308] clocksource: Switched to clocksource tsc
[    2.487370] NET: Registered protocol family 10
[    2.492190] Segment Routing with IPv6
[    2.493854] initcall inet6_init+0x0/0x39a returned 0 after 6400 usecs
[    2.495543] calling  packet_init+0x0/0x82 @ 1
[    2.497211] NET: Registered protocol family 17
[    2.498872] initcall packet_init+0x0/0x82 returned 0 after 1621 usecs
[    2.500548] calling  strp_dev_init+0x0/0x38 @ 1
[    2.502361] initcall strp_dev_init+0x0/0x38 returned 0 after 109 usecs=

[    2.504077] calling  dcbnl_init+0x0/0x53 @ 1
[    2.505781] initcall dcbnl_init+0x0/0x53 returned 0 after 0 usecs
[    2.507574] calling  init_dns_resolver+0x0/0xe3 @ 1
[    2.509363] Key type dns_resolver registered
[    2.511157] initcall init_dns_resolver+0x0/0xe3 returned 0 after 1755 =
usecs
[    2.512937] calling  pm_check_save_msr+0x0/0x40 @ 1
[    2.514772] initcall pm_check_save_msr+0x0/0x40 returned 0 after 0 use=
cs
[    2.516532] calling  mcheck_init_device+0x0/0x149 @ 1
[    2.519127] initcall mcheck_init_device+0x0/0x149 returned 0 after 756=
 usecs
[    2.520919] calling  dev_mcelog_init_device+0x0/0xd3 @ 1
[    2.522837] initcall dev_mcelog_init_device+0x0/0xd3 returned 0 after =
77 usecs
[    2.524637] calling  tboot_late_init+0x0/0x391 @ 1
[    2.526452] initcall tboot_late_init+0x0/0x391 returned 0 after 0 usec=
s
[    2.528226] calling  mcheck_late_init+0x0/0x7c @ 1
[    2.529991] initcall mcheck_late_init+0x0/0x7c returned 0 after 5 usec=
s
[    2.531810] calling  severities_debugfs_init+0x0/0x2f @ 1
[    2.533583] initcall severities_debugfs_init+0x0/0x2f returned 0 after=
 0 usecs
[    2.535413] calling  microcode_init+0x0/0x221 @ 1
[    2.537209] microcode: sig=3D0xa0652, pf=3D0x20, revision=3D0xc8
[    2.539390] microcode: Microcode Update Driver: v2.2.
[    2.539391] initcall microcode_init+0x0/0x221 returned 0 after 2173 us=
ecs
[    2.543019] calling  resctrl_late_init+0x0/0x674 @ 1
[    2.544783] initcall resctrl_late_init+0x0/0x674 returned -19 after 0 =
usecs
[    2.546602] calling  hpet_insert_resource+0x0/0x29 @ 1
[    2.548375] initcall hpet_insert_resource+0x0/0x29 returned 0 after 0 =
usecs
[    2.550197] calling  update_mp_table+0x0/0x514 @ 1
[    2.551962] initcall update_mp_table+0x0/0x514 returned 0 after 0 usec=
s
[    2.553722] calling  lapic_insert_resource+0x0/0x4c @ 1
[    2.555544] initcall lapic_insert_resource+0x0/0x4c returned 0 after 0=
 usecs
[    2.557303] calling  print_ipi_mode+0x0/0x32 @ 1
[    2.559086] IPI shorthand broadcast: enabled
[    2.560827] initcall print_ipi_mode+0x0/0x32 returned 0 after 1700 use=
cs
[    2.562650] calling  print_ICs+0x0/0x196 @ 1
[    2.564408] initcall print_ICs+0x0/0x196 returned 0 after 0 usecs
[    2.566203] calling  create_tlb_single_page_flush_ceiling+0x0/0x2e @ 1=

[    2.567976] initcall create_tlb_single_page_flush_ceiling+0x0/0x2e ret=
urned 0 after 1 usecs
[    2.569731] calling  pat_memtype_list_init+0x0/0x3a @ 1
[    2.571537] initcall pat_memtype_list_init+0x0/0x3a returned 0 after 0=
 usecs
[    2.573297] calling  create_init_pkru_value+0x0/0x2e @ 1
[    2.575105] initcall create_init_pkru_value+0x0/0x2e returned 0 after =
0 usecs
[    2.576866] calling  init_oops_id+0x0/0x40 @ 1
[    2.578682] initcall init_oops_id+0x0/0x40 returned 0 after 0 usecs
[    2.580452] calling  reboot_ksysfs_init+0x0/0x55 @ 1
[    2.582256] initcall reboot_ksysfs_init+0x0/0x55 returned 0 after 2 us=
ecs
[    2.584003] calling  sched_clock_init_late+0x0/0x7d @ 1
[    2.585744] sched_clock: Marking stable (2581370124, 883910)->(2589259=
439, -7005405)
[    2.587688] initcall sched_clock_init_late+0x0/0x7d returned 0 after 1=
898 usecs
[    2.589463] calling  sched_init_debug+0x0/0x43 @ 1
[    2.591289] initcall sched_init_debug+0x0/0x43 returned 0 after 1 usec=
s
[    2.593073] calling  cpu_latency_qos_init+0x0/0x3f @ 1
[    2.594934] initcall cpu_latency_qos_init+0x0/0x3f returned 0 after 43=
 usecs
[    2.596706] calling  pm_debugfs_init+0x0/0x29 @ 1
[    2.598514] initcall pm_debugfs_init+0x0/0x29 returned 0 after 0 usecs=

[    2.600279] calling  printk_late_init+0x0/0x122 @ 1
[    2.602014] initcall printk_late_init+0x0/0x122 returned 0 after 0 use=
cs
[    2.603760] calling  init_srcu_module_notifier+0x0/0x31 @ 1
[    2.605493] initcall init_srcu_module_notifier+0x0/0x31 returned 0 aft=
er 0 usecs
[    2.607264] calling  swiotlb_create_debugfs+0x0/0x58 @ 1
[    2.608986] initcall swiotlb_create_debugfs+0x0/0x58 returned 0 after =
1 usecs
[    2.610751] calling  tk_debug_sleep_time_init+0x0/0x29 @ 1
[    2.612486] initcall tk_debug_sleep_time_init+0x0/0x29 returned 0 afte=
r 0 usecs
[    2.614249] calling  debugfs_kprobe_init+0x0/0xab @ 1
[    2.615967] initcall debugfs_kprobe_init+0x0/0xab returned 0 after 1 u=
secs
[    2.617692] calling  taskstats_init+0x0/0x40 @ 1
[    2.619420] registered taskstats version 1
[    2.621123] initcall taskstats_init+0x0/0x40 returned 0 after 1665 use=
cs
[    2.622899] calling  init_hwlat_tracer+0x0/0xb8 @ 1
[    2.624627] initcall init_hwlat_tracer+0x0/0xb8 returned 0 after 3 use=
cs
[    2.626369] calling  kdb_ftrace_register+0x0/0x32 @ 1
[    2.628093] initcall kdb_ftrace_register+0x0/0x32 returned 0 after 0 u=
secs
[    2.629835] calling  bpf_map_iter_init+0x0/0x31 @ 1
[    2.631599] initcall bpf_map_iter_init+0x0/0x31 returned 0 after 0 use=
cs
[    2.633320] calling  task_iter_init+0x0/0x69 @ 1
[    2.635086] initcall task_iter_init+0x0/0x69 returned 0 after 0 usecs
[    2.636816] calling  bpf_prog_iter_init+0x0/0x21 @ 1
[    2.638579] initcall bpf_prog_iter_init+0x0/0x21 returned 0 after 0 us=
ecs
[    2.640301] calling  init_trampolines+0x0/0x26 @ 1
[    2.642016] initcall init_trampolines+0x0/0x26 returned 0 after 0 usec=
s
[    2.643729] calling  load_system_certificate_list+0x0/0xf8 @ 1
[    2.645447] Loading compiled-in X.509 certificates
[    2.647839] Loaded X.509 cert 'Build time autogenerated kernel key: f2=
4955cff5ef79f46b51c68e3db85e997131e46c'
[    2.649614] initcall load_system_certificate_list+0x0/0xf8 returned 0 =
after 4068 usecs
[    2.651457] calling  fault_around_debugfs+0x0/0x29 @ 1
[    2.653247] initcall fault_around_debugfs+0x0/0x29 returned 0 after 0 =
usecs
[    2.655065] calling  max_swapfiles_check+0x0/0xd @ 1
[    2.656849] initcall max_swapfiles_check+0x0/0xd returned 0 after 0 us=
ecs
[    2.658680] calling  init_zswap+0x0/0x474 @ 1
[    2.660636] zswap: loaded using pool lzo/zbud
[    2.662686] initcall init_zswap+0x0/0x474 returned 0 after 2183 usecs
[    2.664476] calling  split_huge_pages_debugfs+0x0/0x29 @ 1
[    2.666300] initcall split_huge_pages_debugfs+0x0/0x29 returned 0 afte=
r 0 usecs
[    2.668077] calling  check_early_ioremap_leak+0x0/0x3f @ 1
[    2.669841] initcall check_early_ioremap_leak+0x0/0x3f returned 0 afte=
r 0 usecs
[    2.671670] calling  set_hardened_usercopy+0x0/0x2b @ 1
[    2.673439] initcall set_hardened_usercopy+0x0/0x2b returned 1 after 0=
 usecs
[    2.675275] calling  fscrypt_init+0x0/0x89 @ 1
[    2.677125] Key type ._fscrypt registered
[    2.678945] Key type .fscrypt registered
[    2.680690] Key type fscrypt-provisioning registered
[    2.682492] initcall fscrypt_init+0x0/0x89 returned 0 after 5316 usecs=

[    2.684241] calling  fsverity_init+0x0/0x63 @ 1
[    2.686001] initcall fsverity_init+0x0/0x63 returned 0 after 13 usecs
[    2.687814] calling  init_btrfs_fs+0x0/0x149 @ 1
[    2.689851] Btrfs loaded, crc32c=3Dcrc32c-intel, zoned=3Dyes
[    2.691642] initcall init_btrfs_fs+0x0/0x149 returned 0 after 2050 use=
cs
[    2.693408] calling  pstore_init+0x0/0x62 @ 1
[    2.695222] initcall pstore_init+0x0/0x62 returned 0 after 0 usecs
[    2.696965] calling  init_root_keyring+0x0/0x14 @ 1
[    2.698782] initcall init_root_keyring+0x0/0x14 returned 0 after 5 use=
cs
[    2.700534] calling  init_trusted+0x0/0x148 @ 1
[    2.702295] Key type trusted registered
[    2.704038] initcall init_trusted+0x0/0x148 returned 0 after 1704 usec=
s
[    2.705785] calling  init_encrypted+0x0/0xd9 @ 1
[    2.707996] Key type encrypted registered
[    2.709719] initcall init_encrypted+0x0/0xd9 returned 0 after 2115 use=
cs
[    2.711504] calling  init_profile_hash+0x0/0x88 @ 1
[    2.713221] AppArmor: AppArmor sha1 policy hashing enabled
[    2.715038] initcall init_profile_hash+0x0/0x88 returned 0 after 1775 =
usecs
[    2.716778] calling  integrity_fs_init+0x0/0x54 @ 1
[    2.718559] initcall integrity_fs_init+0x0/0x54 returned 0 after 1 use=
cs
[    2.720296] calling  load_uefi_certs+0x0/0x310 @ 1
[    2.722737] integrity: Loading X.509 certificate: UEFI:db
[    2.724529] integrity: Loaded X.509 cert 'Lenovo Ltd.: ThinkPad Produc=
t CA 2012: 838b1f54c1550463f45f98700640f11069265949'
[    2.726387] integrity: Loading X.509 certificate: UEFI:db
[    2.728461] integrity: Loaded X.509 cert 'Lenovo UEFI CA 2014: 4b91a68=
732eaefdd2c8ffffc6b027ec3449e9c8f'
[    2.730374] integrity: Loading X.509 certificate: UEFI:db
[    2.732203] integrity: Loaded X.509 cert 'Microsoft Corporation UEFI C=
A 2011: 13adbf4309bd82709c8cd54f316ed522988a1bd4'
[    2.734073] integrity: Loading X.509 certificate: UEFI:db
[    2.735976] integrity: Loaded X.509 cert 'Microsoft Windows Production=
 PCA 2011: a92902398e16c49778cd90f99e4f9ae17c55af53'
[    2.739116] integrity: Loading X.509 certificate: UEFI:MokListRT
[    2.741064] integrity: Loaded X.509 cert 'SomeOrg: shim: a01ee84e9b37a=
ce407961cc468c5909447878469'
[    2.743051] integrity: Loading X.509 certificate: UEFI:MokListRT
[    2.745397] integrity: Loaded X.509 cert 'Canonical Ltd. Master Certif=
icate Authority: ad91990bc22ab1f517048c23b6655a268e345a63'
[    2.747436] initcall load_uefi_certs+0x0/0x310 returned 0 after 24812 =
usecs
[    2.749429] calling  init_ima+0x0/0xbf @ 1
[    2.751478] ima: Allocated hash algorithm: sha1
[    2.784872] ima: No architecture policies found
[    2.786847] initcall init_ima+0x0/0xbf returned 0 after 34542 usecs
[    2.788817] calling  init_evm+0x0/0xf8 @ 1
[    2.790744] evm: Initialising EVM extended attributes:
[    2.792689] evm: security.selinux
[    2.794643] evm: security.SMACK64
[    2.796583] evm: security.SMACK64EXEC
[    2.798520] evm: security.SMACK64TRANSMUTE
[    2.800444] evm: security.SMACK64MMAP
[    2.802358] evm: security.apparmor
[    2.804239] evm: security.ima
[    2.806087] evm: security.capability
[    2.807880] evm: HMAC attrs: 0x1
[    2.809658] initcall init_evm+0x0/0xf8 returned 0 after 18470 usecs
[    2.811458] calling  blk_timeout_init+0x0/0x18 @ 1
[    2.813244] initcall blk_timeout_init+0x0/0x18 returned 0 after 0 usec=
s
[    2.815062] calling  prandom_init_late+0x0/0x2c @ 1
[    2.816848] initcall prandom_init_late+0x0/0x2c returned 0 after 0 use=
cs
[    2.818661] calling  init_error_injection+0x0/0x71 @ 1
[    2.820848] initcall init_error_injection+0x0/0x71 returned 0 after 11=
2 usecs
[    2.822664] calling  pci_resource_alignment_sysfs_init+0x0/0x1e @ 1
[    2.824478] initcall pci_resource_alignment_sysfs_init+0x0/0x1e return=
ed 0 after 2 usecs
[    2.826314] calling  pci_sysfs_init+0x0/0x65 @ 1
[    2.828913] initcall pci_sysfs_init+0x0/0x65 returned 0 after 787 usec=
s
[    2.830705] calling  bert_init+0x0/0x22a @ 1
[    2.832504] initcall bert_init+0x0/0x22a returned 0 after 0 usecs
[    2.834298] calling  clk_debug_init+0x0/0x11b @ 1
[    2.836086] initcall clk_debug_init+0x0/0x11b returned 0 after 3 usecs=

[    2.837886] calling  setup_vcpu_hotplug_event+0x0/0x31 @ 1
[    2.839723] initcall setup_vcpu_hotplug_event+0x0/0x31 returned -19 af=
ter 0 usecs
[    2.841532] calling  boot_wait_for_devices+0x0/0x30 @ 1
[    2.843346] initcall boot_wait_for_devices+0x0/0x30 returned -19 after=
 0 usecs
[    2.845169] calling  dmar_free_unused_resources+0x0/0xb8 @ 1
[    2.846989] initcall dmar_free_unused_resources+0x0/0xb8 returned 0 af=
ter 0 usecs
[    2.848827] calling  sync_state_resume_initcall+0x0/0x20 @ 1
[    2.850637] initcall sync_state_resume_initcall+0x0/0x20 returned 0 af=
ter 0 usecs
[    2.852448] calling  deferred_probe_initcall+0x0/0xa0 @ 1
[    2.854280] initcall deferred_probe_initcall+0x0/0xa0 returned 0 after=
 9 usecs
[    2.856096] calling  late_resume_init+0x0/0x109 @ 1
[    2.857918] PM:   Magic number: 13:864:517
[    2.859778] acpi LNXPOWER:01: hash matches
[    2.861601] initcall late_resume_init+0x0/0x109 returned 0 after 3597 =
usecs
[    2.863415] calling  genpd_power_off_unused+0x0/0x83 @ 1
[    2.865235] initcall genpd_power_off_unused+0x0/0x83 returned 0 after =
0 usecs
[    2.867063] calling  genpd_debug_init+0x0/0x76 @ 1
[    2.868874] initcall genpd_debug_init+0x0/0x76 returned 0 after 1 usec=
s
[    2.870680] calling  hmem_init+0x0/0x2c @ 1
[    2.872489] initcall hmem_init+0x0/0x2c returned 0 after 3 usecs
[    2.874282] calling  sync_debugfs_init+0x0/0x60 @ 1
[    2.876079] initcall sync_debugfs_init+0x0/0x60 returned 0 after 2 use=
cs
[    2.877878] calling  charger_manager_init+0x0/0x98 @ 1
[    2.879826] initcall charger_manager_init+0x0/0x98 returned 0 after 16=
1 usecs
[    2.881615] calling  dm_init_init+0x0/0x605 @ 1
[    2.883365] initcall dm_init_init+0x0/0x605 returned 0 after 0 usecs
[    2.885107] calling  acpi_cpufreq_init+0x0/0x2d3 @ 1
[    2.886839] initcall acpi_cpufreq_init+0x0/0x2d3 returned -17 after 0 =
usecs
[    2.888539] calling  powernowk8_init+0x0/0x170 @ 1
[    2.890226] initcall powernowk8_init+0x0/0x170 returned -19 after 0 us=
ecs
[    2.892155] calling  pcc_cpufreq_init+0x0/0x512 @ 1
[    2.893833] initcall pcc_cpufreq_init+0x0/0x512 returned -17 after 0 u=
secs
[    2.895475] calling  centrino_init+0x0/0x30 @ 1
[    2.897076] initcall centrino_init+0x0/0x30 returned -19 after 0 usecs=

[    2.898665] calling  edd_init+0x0/0x2c1 @ 1
[    2.900229] initcall edd_init+0x0/0x2c1 returned -19 after 0 usecs
[    2.901754] calling  firmware_memmap_init+0x0/0x38 @ 1
[    2.903285] initcall firmware_memmap_init+0x0/0x38 returned 0 after 10=
 usecs
[    2.904819] calling  register_update_efi_random_seed+0x0/0x24 @ 1
[    2.906369] initcall register_update_efi_random_seed+0x0/0x24 returned=
 0 after 0 usecs
[    2.907911] calling  efi_shutdown_init+0x0/0x42 @ 1
[    2.909443] initcall efi_shutdown_init+0x0/0x42 returned 0 after 0 use=
cs
[    2.911031] calling  efi_rci2_sysfs_init+0x0/0x29a @ 1
[    2.912568] initcall efi_rci2_sysfs_init+0x0/0x29a returned 0 after 0 =
usecs
[    2.914125] calling  efi_earlycon_unmap_fb+0x0/0x2e @ 1
[    2.915705] initcall efi_earlycon_unmap_fb+0x0/0x2e returned 0 after 0=
 usecs
[    2.917297] calling  itmt_legacy_init+0x0/0x51 @ 1
[    2.918896] initcall itmt_legacy_init+0x0/0x51 returned -19 after 0 us=
ecs
[    2.920520] calling  cec_init+0x0/0x189 @ 1
[    2.922161] RAS: Correctable Errors collector initialized.
[    2.923831] initcall cec_init+0x0/0x189 returned 0 after 1634 usecs
[    2.925514] calling  bpf_sockmap_iter_init+0x0/0x23 @ 1
[    2.927185] initcall bpf_sockmap_iter_init+0x0/0x23 returned 0 after 0=
 usecs
[    2.928851] calling  bpf_sk_storage_map_iter_init+0x0/0x23 @ 1
[    2.930533] initcall bpf_sk_storage_map_iter_init+0x0/0x23 returned 0 =
after 0 usecs
[    2.932215] calling  tcp_congestion_default+0x0/0x1e @ 1
[    2.933898] initcall tcp_congestion_default+0x0/0x1e returned 0 after =
0 usecs
[    2.935581] calling  pci_mmcfg_late_insert_resources+0x0/0x51 @ 1
[    2.937277] initcall pci_mmcfg_late_insert_resources+0x0/0x51 returned=
 0 after 0 usecs
[    2.938958] calling  software_resume+0x0/0x170 @ 1
[    2.940648] initcall software_resume+0x0/0x170 returned -2 after 0 use=
cs
[    2.942329] calling  latency_fsnotify_init+0x0/0x3d @ 1
[    2.944017] initcall latency_fsnotify_init+0x0/0x3d returned 0 after 1=
 usecs
[    2.945688] calling  trace_eval_sync+0x0/0x1c @ 1
[    2.947386] initcall trace_eval_sync+0x0/0x1c returned 0 after 1 usecs=

[    2.949070] calling  clear_boot_tracer+0x0/0x2e @ 1
[    2.950758] initcall clear_boot_tracer+0x0/0x2e returned 0 after 0 use=
cs
[    2.952439] calling  tracing_set_default_clock+0x0/0x67 @ 1
[    2.954133] initcall tracing_set_default_clock+0x0/0x67 returned 0 aft=
er 0 usecs
[    2.955825] calling  acpi_gpio_handle_deferred_request_irqs+0x0/0x88 @=
 1
[    2.957521] initcall acpi_gpio_handle_deferred_request_irqs+0x0/0x88 r=
eturned 0 after 2 usecs
[    2.959210] calling  clk_disable_unused+0x0/0x107 @ 1
[    2.960911] initcall clk_disable_unused+0x0/0x107 returned 0 after 0 u=
secs
[    2.962604] calling  regulator_init_complete+0x0/0x2a @ 1
[    2.964291] initcall regulator_init_complete+0x0/0x2a returned 0 after=
 0 usecs
[    2.965998] md: Waiting for all devices to be available before autodet=
ect
[    2.967701] md: If you don't use raid, use raid=3Dnoautodetect
[    2.969401] md: Autodetecting RAID arrays.
[    2.971087] md: autorun ...
[    2.972773] md: ... autorun DONE.
[    2.985458] EXT4-fs (nvme0n1p6): mounted filesystem with ordered data =
mode. Opts: (null). Quota mode: none.
[    2.987164] VFS: Mounted root (ext4 filesystem) readonly on device 259=
:6.
[    2.991891] devtmpfs: mounted
[    2.994429] Freeing unused decrypted memory: 2036K
[    2.996349] Freeing unused kernel image (initmem) memory: 2708K
[    2.998105] Write protecting the kernel read-only data: 24576k
[    3.000329] Freeing unused kernel image (text/rodata gap) memory: 2036=
K
[    3.002275] Freeing unused kernel image (rodata/data gap) memory: 452K=

[    3.011675] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    3.013405] Run /sbin/init as init process
[    3.015139]   with arguments:
[    3.016838]     /sbin/init
[    3.018542]   with environment:
[    3.020210]     HOME=3D/
[    3.021868]     TERM=3Dlinux
[    3.023506]     BOOT_IMAGE=3D/boot/vmlinuz-s2idle
[    3.083153] calling  init_autofs_fs+0x0/0x2f [autofs4] @ 1
[    3.084916] initcall init_autofs_fs+0x0/0x2f [autofs4] returned 0 afte=
r 97 usecs
[    3.086700] systemd[1]: Inserted module 'autofs4'
[    3.091973] calling  xt_init+0x0/0x1000 [x_tables] @ 1
[    3.093617] initcall xt_init+0x0/0x1000 [x_tables] returned 0 after 0 =
usecs
[    3.096890] calling  ip_tables_init+0x0/0x1000 [ip_tables] @ 1
[    3.098544] initcall ip_tables_init+0x0/0x1000 [ip_tables] returned 0 =
after 2 usecs
[    3.161913] systemd[1]: systemd 245.4-4ubuntu3.3 running in system mod=
e. (+PAM +AUDIT +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTS=
ETUP +GCRYPT +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD +IDN2 =
-IDN +PCRE2 default-hierarchy=3Dhybrid)
[    3.165925] systemd[1]: No virtualization found in DMI
[    3.167931] systemd[1]: No virtualization found in CPUID
[    3.169887] systemd[1]: Virtualization XEN not found, /proc/xen does n=
ot exist
[    3.171850] systemd[1]: This platform does not support /proc/device-tr=
ee
[    3.190396] systemd[1]: UML virtualization not found in /proc/cpuinfo.=

[    3.192211] systemd[1]: This platform does not support /proc/sysinfo
[    3.194024] systemd[1]: Found VM virtualization none
[    3.195835] systemd[1]: Detected architecture x86-64.
[    3.197761] systemd[1]: Mounting cgroup to /sys/fs/cgroup/cpu,cpuacct =
of type cgroup with options cpu,cpuacct.
[    3.199833] systemd[1]: Mounting cgroup to /sys/fs/cgroup/freezer of t=
ype cgroup with options freezer.
[    3.201800] systemd[1]: Mounting cgroup to /sys/fs/cgroup/memory of ty=
pe cgroup with options memory.
[    3.204066] systemd[1]: Mounting cgroup to /sys/fs/cgroup/rdma of type=
 cgroup with options rdma.
[    3.206107] systemd[1]: Mounting cgroup to /sys/fs/cgroup/cpuset of ty=
pe cgroup with options cpuset.
[    3.222415] systemd[1]: Mounting cgroup to /sys/fs/cgroup/blkio of typ=
e cgroup with options blkio.
[    3.224492] systemd[1]: Mounting cgroup to /sys/fs/cgroup/pids of type=
 cgroup with options pids.
[    3.226365] systemd[1]: Mounting cgroup to /sys/fs/cgroup/net_cls,net_=
prio of type cgroup with options net_cls,net_prio.
[    3.228276] systemd[1]: Mounting cgroup to /sys/fs/cgroup/perf_event o=
f type cgroup with options perf_event.
[    3.230257] systemd[1]: Mounting cgroup to /sys/fs/cgroup/hugetlb of t=
ype cgroup with options hugetlb.
[    3.232170] systemd[1]: Mounting cgroup to /sys/fs/cgroup/devices of t=
ype cgroup with options devices.
[    3.240847] systemd[1]: Set hostname to <u-ThinkPad-P17-Gen-1>.
[    3.243109] systemd[1]: Successfully added address 127.0.0.1 to loopba=
ck interface
[    3.245177] systemd[1]: Successfully added address ::1 to loopback int=
erface
[    3.247314] systemd[1]: Successfully brought loopback interface up
[    3.249457] systemd[1]: Setting 'fs/file-max' to '9223372036854775807'=
=2E
[    3.252150] systemd[1]: Found cgroup2 on /sys/fs/cgroup/unified, unifi=
ed hierarchy for systemd controller
[    3.254327] systemd[1]: Found cgroup2 on /sys/fs/cgroup/unified, unifi=
ed hierarchy for systemd controller
[    3.256498] systemd[1]: Unified cgroup hierarchy is located at /sys/fs=
/cgroup/unified. Controllers are on legacy hierarchies.
[    3.259951] systemd[1]: Got EBADF when using BPF_F_ALLOW_MULTI, which =
indicates it is supported. Yay!
[    3.262169] systemd[1]: Controller 'cpu' supported: yes
[    3.264312] systemd[1]: Controller 'cpuacct' supported: yes
[    3.266493] systemd[1]: Controller 'cpuset' supported: no
[    3.268665] systemd[1]: Controller 'io' supported: no
[    3.270810] systemd[1]: Controller 'blkio' supported: yes
[    3.272962] systemd[1]: Controller 'memory' supported: yes
[    3.275072] systemd[1]: Controller 'devices' supported: yes
[    3.277219] systemd[1]: Controller 'pids' supported: yes
[    3.279351] systemd[1]: Controller 'bpf-firewall' supported: yes
[    3.281440] systemd[1]: Controller 'bpf-devices' supported: yes
[    3.283559] systemd[1]: Set up TFD_TIMER_CANCEL_ON_SET timerfd.
[    3.285741] systemd[1]: Enabling (yes) showing of status (commandline)=
=2E
[    3.288746] systemd[1]: Successfully forked off '(sd-executor)' as PID=
 208.
[    3.291049] systemd[208]: Successfully forked off '(direxec)' as PID 2=
09.
[    3.293080] systemd[208]: Successfully forked off '(direxec)' as PID 2=
11.
[    3.295262] systemd[208]: Successfully forked off '(direxec)' as PID 2=
13.
[    3.297315] systemd[208]: Successfully forked off '(direxec)' as PID 2=
16.
[    3.299950] systemd[208]: Successfully forked off '(direxec)' as PID 2=
17.
[    3.300013] systemd-bless-boot-generator[216]: Skipping generator, not=
 booted with boot counting in effect.
[    3.302958] systemd[208]: Successfully forked off '(direxec)' as PID 2=
18.
[    3.307736] systemd[208]: Successfully forked off '(direxec)' as PID 2=
20.
[    3.310929] systemd-fstab-generator[220]: Parsing /etc/fstab...
[    3.310983] systemd[208]: Successfully forked off '(direxec)' as PID 2=
21.
[    3.313653] systemd-fstab-generator[220]: Found entry what=3D/dev/disk=
/by-uuid/db2d3e8f-d35e-4bbf-967b-a758ff2da7a1 where=3D/ type=3Dext4 makef=
s=3Dno growfs=3Dno noauto=3Dno nofail=3Dno
[    3.315462] systemd[208]: Successfully forked off '(direxec)' as PID 2=
22.
[    3.318384] systemd-gpt-auto-generator[222]: Disabling root partition =
auto-detection, root=3D is defined.
[    3.318404] systemd-gpt-auto-generator[222]: Failed to chase block dev=
ice '/', ignoring: No such file or directory
[    3.318499] systemd-gpt-auto-generator[222]: nvme0n1p6: Root device /d=
ev/nvme0n1.
[    3.319358] systemd-fstab-generator[220]: Found entry what=3D/dev/disk=
/by-uuid/00FC-9BCE where=3D/boot/efi type=3Dvfat makefs=3Dno growfs=3Dno =
noauto=3Dno nofail=3Dno
[    3.320689] systemd[208]: Successfully forked off '(direxec)' as PID 2=
23.
[    3.323103] systemd-gpt-auto-generator[222]: Waiting for device (paren=
t + 7 partitions) to appear...
[    3.323125] systemd-hibernate-resume-generator[223]: Not running in an=
 initrd, quitting.
[    3.323863] systemd-fstab-generator[220]: Found entry what=3D/dev/disk=
/by-uuid/f76ad904-8756-4825-b018-dc4e118ffbf9 where=3D/home type=3Dext4 m=
akefs=3Dno growfs=3Dno noauto=3Dno nofail=3Dno
[    3.324443] systemd-gpt-auto-generator[222]: "/boot" already populated=
, ignoring.
[    3.325561] systemd[208]: Successfully forked off '(direxec)' as PID 2=
24.
[    3.328005] systemd-rc-local-generator[224]: /etc/rc.local does not ex=
ist, skipping.
[    3.328367] systemd-fstab-generator[220]: Found entry what=3D/swapfile=
 where=3Dnone type=3Dswap makefs=3Dno growfs=3Dno noauto=3Dno nofail=3Dno=

[    3.330650] systemd[208]: Successfully forked off '(direxec)' as PID 2=
25.
[    3.353323] systemd[208]: Successfully forked off '(direxec)' as PID 2=
26.
[    3.356684] systemd[208]: Successfully forked off '(direxec)' as PID 2=
27.
[    3.360016] systemd-sysv-generator[227]: Native unit for keyboard-setu=
p.service already exists, skipping.
[    3.360058] systemd[208]: Successfully forked off '(direxec)' as PID 2=
28.
[    3.363815] systemd-sysv-generator[227]: Native unit for uuidd.service=
 already exists, skipping.
[    3.366183] systemd[208]: /usr/lib/systemd/system-generators/friendly-=
recovery succeeded.
[    3.368963] systemd-sysv-generator[227]: Native unit for procps.servic=
e already exists, skipping.
[    3.370976] systemd[208]: /usr/lib/systemd/system-generators/systemd-r=
un-generator succeeded.
[    3.373519] systemd-sysv-generator[227]: Native unit for irqbalance.se=
rvice already exists, skipping.
[    3.375793] systemd[208]: /usr/lib/systemd/system-generators/systemd-g=
etty-generator succeeded.
[    3.378528] systemd-sysv-generator[227]: Native unit for network-manag=
er.service already exists, skipping.
[    3.380657] systemd[208]: /usr/lib/systemd/system-generators/netplan s=
ucceeded.
[    3.383146] systemd-sysv-generator[227]: Native unit for hwclock.servi=
ce already exists, skipping.
[    3.385572] systemd[208]: /usr/lib/systemd/system-generators/systemd-h=
ibernate-resume-generator succeeded.
[    3.388055] systemd-sysv-generator[227]: Native unit for x11-common.se=
rvice already exists, skipping.
[    3.393018] systemd-sysv-generator[227]: Native unit for rsync.service=
 already exists, skipping.
[    3.395726] systemd-sysv-generator[227]: Native unit for ssh.service a=
lready exists, skipping.
[    3.398003] systemd-sysv-generator[227]: Native unit for acpid.service=
 already exists, skipping.
[    3.400381] systemd-sysv-generator[227]: Native unit for pppd-dns.serv=
ice already exists, skipping.
[    3.402753] systemd-sysv-generator[227]: Cannot find unit grub-common.=
service.
[    3.405150] systemd-sysv-generator[227]: Native unit for plymouth-log.=
service already exists, skipping.
[    3.407574] systemd-sysv-generator[227]: Native unit for kerneloops.se=
rvice already exists, skipping.
[    3.409922] systemd-sysv-generator[227]: Native unit for bluetooth.ser=
vice already exists, skipping.
[    3.412713] systemd-sysv-generator[227]: Native unit for cups.service =
already exists, skipping.
[    3.415218] systemd-sysv-generator[227]: Native unit for kmod.service =
already exists, skipping.
[    3.417490] systemd-sysv-generator[227]: Native unit for saned.service=
 already exists, skipping.
[    3.419842] systemd-sysv-generator[227]: Native unit for alsa-utils.se=
rvice already exists, skipping.
[    3.422262] systemd-sysv-generator[227]: Native unit for udev.service =
already exists, skipping.
[    3.424720] systemd-sysv-generator[227]: Native unit for spice-vdagent=
=2Eservice already exists, skipping.
[    3.427129] systemd-sysv-generator[227]: Native unit for dbus.service =
already exists, skipping.
[    3.429468] systemd-sysv-generator[227]: Native unit for speech-dispat=
cher.service already exists, skipping.
[    3.431847] systemd-sysv-generator[227]: Native unit for anacron.servi=
ce already exists, skipping.
[    3.434203] systemd-sysv-generator[227]: Native unit for whoopsie.serv=
ice already exists, skipping.
[    3.436634] systemd-sysv-generator[227]: Native unit for apparmor.serv=
ice already exists, skipping.
[    3.439032] systemd-sysv-generator[227]: Native unit for console-setup=
=2Eservice already exists, skipping.
[    3.441352] systemd-sysv-generator[227]: Native unit for cups-browsed.=
service already exists, skipping.
[    3.443767] systemd-sysv-generator[227]: Native unit for ufw.service a=
lready exists, skipping.
[    3.446067] systemd-sysv-generator[227]: Cannot find unit apport.servi=
ce.
[    3.448850] systemd-sysv-generator[227]: Native unit for rsyslog.servi=
ce already exists, skipping.
[    3.451347] systemd-sysv-generator[227]: Native unit for gdm3.service =
already exists, skipping.
[    3.453672] systemd-sysv-generator[227]: Native unit for pulseaudio-en=
able-autospawn.service already exists, skipping.
[    3.456189] systemd-sysv-generator[227]: Native unit for plymouth.serv=
ice already exists, skipping.
[    3.458604] systemd-sysv-generator[227]: Native unit for openvpn.servi=
ce already exists, skipping.
[    3.461275] systemd-sysv-generator[227]: Native unit for unattended-up=
grades.service already exists, skipping.
[    3.463771] systemd-sysv-generator[227]: Native unit for avahi-daemon.=
service already exists, skipping.
[    3.466261] systemd-sysv-generator[227]: Native unit for cron.service =
already exists, skipping.
[    3.468900] systemd-sysv-generator[227]: Ignoring S01rsync symlink in =
rc2.d, not generating rsync.service.
[    3.471346] systemd-sysv-generator[227]: Ignoring S01pulseaudio-enable=
-autospawn symlink in rc2.d, not generating pulseaudio-enable-autospawn.s=
ervice.
[    3.473783] systemd-sysv-generator[227]: Ignoring S01rsyslog symlink i=
n rc2.d, not generating rsyslog.service.
[    3.476233] systemd-sysv-generator[227]: Ignoring S01kerneloops symlin=
k in rc2.d, not generating kerneloops.service.
[    3.478682] systemd-sysv-generator[227]: Ignoring S01irqbalance symlin=
k in rc2.d, not generating irqbalance.service.
[    3.481143] systemd-sysv-generator[227]: Ignoring S01cron symlink in r=
c2.d, not generating cron.service.
[    3.483526] systemd-sysv-generator[227]: Ignoring S01gdm3 symlink in r=
c2.d, not generating gdm3.service.
[    3.485855] systemd-sysv-generator[227]: Ignoring S01anacron symlink i=
n rc2.d, not generating anacron.service.
[    3.488189] systemd-sysv-generator[227]: Ignoring S01dbus symlink in r=
c2.d, not generating dbus.service.
[    3.490486] systemd-sysv-generator[227]: Ignoring S01openvpn symlink i=
n rc2.d, not generating openvpn.service.
[    3.492776] systemd-sysv-generator[227]: Ignoring S01acpid symlink in =
rc2.d, not generating acpid.service.
[    3.495042] systemd-sysv-generator[227]: Ignoring S01spice-vdagent sym=
link in rc2.d, not generating spice-vdagent.service.
[    3.497278] systemd-sysv-generator[227]: Ignoring S01bluetooth symlink=
 in rc2.d, not generating bluetooth.service.
[    3.499508] systemd-sysv-generator[227]: Ignoring S01ssh symlink in rc=
2.d, not generating ssh.service.
[    3.501700] systemd-sysv-generator[227]: Ignoring S01console-setup.sh =
symlink in rc2.d, not generating console-setup.service.
[    3.503848] systemd-sysv-generator[227]: Ignoring S01uuidd symlink in =
rc2.d, not generating uuidd.service.
[    3.505939] systemd-sysv-generator[227]: Ignoring S01avahi-daemon syml=
ink in rc2.d, not generating avahi-daemon.service.
[    3.508039] systemd-sysv-generator[227]: Ignoring S01unattended-upgrad=
es symlink in rc2.d, not generating unattended-upgrades.service.
[    3.510162] systemd-sysv-generator[227]: Ignoring S01plymouth symlink =
in rc2.d, not generating plymouth.service.
[    3.512257] systemd-sysv-generator[227]: Ignoring S01cups-browsed syml=
ink in rc2.d, not generating cups-browsed.service.
[    3.514349] systemd-sysv-generator[227]: Ignoring S01whoopsie symlink =
in rc2.d, not generating whoopsie.service.
[    3.516440] systemd-sysv-generator[227]: Ignoring S01saned symlink in =
rc2.d, not generating saned.service.
[    3.518564] systemd-sysv-generator[227]: Ignoring S01cups symlink in r=
c2.d, not generating cups.service.
[    3.520737] systemd-sysv-generator[227]: Ignoring S01rsync symlink in =
rc3.d, not generating rsync.service.
[    3.522877] systemd-sysv-generator[227]: Ignoring S01pulseaudio-enable=
-autospawn symlink in rc3.d, not generating pulseaudio-enable-autospawn.s=
ervice.
[    3.525011] systemd-sysv-generator[227]: Ignoring S01rsyslog symlink i=
n rc3.d, not generating rsyslog.service.
[    3.527131] systemd-sysv-generator[227]: Ignoring S01kerneloops symlin=
k in rc3.d, not generating kerneloops.service.
[    3.529256] systemd-sysv-generator[227]: Ignoring S01irqbalance symlin=
k in rc3.d, not generating irqbalance.service.
[    3.531382] systemd-sysv-generator[227]: Ignoring S01cron symlink in r=
c3.d, not generating cron.service.
[    3.533448] systemd-sysv-generator[227]: Ignoring S01gdm3 symlink in r=
c3.d, not generating gdm3.service.
[    3.535494] systemd-sysv-generator[227]: Ignoring S01anacron symlink i=
n rc3.d, not generating anacron.service.
[    3.537515] systemd-sysv-generator[227]: Ignoring S01dbus symlink in r=
c3.d, not generating dbus.service.
[    3.539566] systemd-sysv-generator[227]: Ignoring S01openvpn symlink i=
n rc3.d, not generating openvpn.service.
[    3.541575] systemd-sysv-generator[227]: Ignoring S01acpid symlink in =
rc3.d, not generating acpid.service.
[    3.543562] systemd-sysv-generator[227]: Ignoring S01spice-vdagent sym=
link in rc3.d, not generating spice-vdagent.service.
[    3.545534] systemd-sysv-generator[227]: Ignoring S01bluetooth symlink=
 in rc3.d, not generating bluetooth.service.
[    3.547523] systemd-sysv-generator[227]: Ignoring S01ssh symlink in rc=
3.d, not generating ssh.service.
[    3.549521] systemd-sysv-generator[227]: Ignoring S01console-setup.sh =
symlink in rc3.d, not generating console-setup.service.
[    3.551547] systemd-sysv-generator[227]: Ignoring S01uuidd symlink in =
rc3.d, not generating uuidd.service.
[    3.553587] systemd-sysv-generator[227]: Ignoring S01avahi-daemon syml=
ink in rc3.d, not generating avahi-daemon.service.
[    3.555637] systemd-sysv-generator[227]: Ignoring S01unattended-upgrad=
es symlink in rc3.d, not generating unattended-upgrades.service.
[    3.557693] systemd-sysv-generator[227]: Ignoring S01plymouth symlink =
in rc3.d, not generating plymouth.service.
[    3.559751] systemd-sysv-generator[227]: Ignoring S01cups-browsed syml=
ink in rc3.d, not generating cups-browsed.service.
[    3.561816] systemd-sysv-generator[227]: Ignoring S01whoopsie symlink =
in rc3.d, not generating whoopsie.service.
[    3.563896] systemd-sysv-generator[227]: Ignoring S01saned symlink in =
rc3.d, not generating saned.service.
[    3.566002] systemd-sysv-generator[227]: Ignoring S01cups symlink in r=
c3.d, not generating cups.service.
[    3.568172] systemd-sysv-generator[227]: Ignoring S01rsync symlink in =
rc4.d, not generating rsync.service.
[    3.570294] systemd-sysv-generator[227]: Ignoring S01pulseaudio-enable=
-autospawn symlink in rc4.d, not generating pulseaudio-enable-autospawn.s=
ervice.
[    3.572462] systemd-sysv-generator[227]: Ignoring S01rsyslog symlink i=
n rc4.d, not generating rsyslog.service.
[    3.574635] systemd-sysv-generator[227]: Ignoring S01kerneloops symlin=
k in rc4.d, not generating kerneloops.service.
[    3.576804] systemd-sysv-generator[227]: Ignoring S01irqbalance symlin=
k in rc4.d, not generating irqbalance.service.
[    3.578968] systemd-sysv-generator[227]: Ignoring S01cron symlink in r=
c4.d, not generating cron.service.
[    3.581136] systemd-sysv-generator[227]: Ignoring S01gdm3 symlink in r=
c4.d, not generating gdm3.service.
[    3.583303] systemd-sysv-generator[227]: Ignoring S01anacron symlink i=
n rc4.d, not generating anacron.service.
[    3.585478] systemd-sysv-generator[227]: Ignoring S01dbus symlink in r=
c4.d, not generating dbus.service.
[    3.587656] systemd-sysv-generator[227]: Ignoring S01openvpn symlink i=
n rc4.d, not generating openvpn.service.
[    3.589842] systemd-sysv-generator[227]: Ignoring S01acpid symlink in =
rc4.d, not generating acpid.service.
[    3.592048] systemd-sysv-generator[227]: Ignoring S01spice-vdagent sym=
link in rc4.d, not generating spice-vdagent.service.
[    3.594251] systemd-sysv-generator[227]: Ignoring S01bluetooth symlink=
 in rc4.d, not generating bluetooth.service.
[    3.596478] systemd-sysv-generator[227]: Ignoring S01ssh symlink in rc=
4.d, not generating ssh.service.
[    3.598717] systemd-sysv-generator[227]: Ignoring S01console-setup.sh =
symlink in rc4.d, not generating console-setup.service.
[    3.600959] systemd-sysv-generator[227]: Ignoring S01uuidd symlink in =
rc4.d, not generating uuidd.service.
[    3.603209] systemd-sysv-generator[227]: Ignoring S01avahi-daemon syml=
ink in rc4.d, not generating avahi-daemon.service.
[    3.605454] systemd-sysv-generator[227]: Ignoring S01unattended-upgrad=
es symlink in rc4.d, not generating unattended-upgrades.service.
[    3.607738] systemd-sysv-generator[227]: Ignoring S01plymouth symlink =
in rc4.d, not generating plymouth.service.
[    3.610011] systemd-sysv-generator[227]: Ignoring S01cups-browsed syml=
ink in rc4.d, not generating cups-browsed.service.
[    3.612281] systemd-sysv-generator[227]: Ignoring S01whoopsie symlink =
in rc4.d, not generating whoopsie.service.
[    3.614565] systemd-sysv-generator[227]: Ignoring S01saned symlink in =
rc4.d, not generating saned.service.
[    3.616843] systemd-sysv-generator[227]: Ignoring S01cups symlink in r=
c4.d, not generating cups.service.
[    3.619139] systemd-sysv-generator[227]: Ignoring S01rsync symlink in =
rc5.d, not generating rsync.service.
[    3.621379] systemd-sysv-generator[227]: Ignoring S01pulseaudio-enable=
-autospawn symlink in rc5.d, not generating pulseaudio-enable-autospawn.s=
ervice.
[    3.623689] systemd-sysv-generator[227]: Ignoring S01rsyslog symlink i=
n rc5.d, not generating rsyslog.service.
[    3.625979] systemd-sysv-generator[227]: Ignoring S01kerneloops symlin=
k in rc5.d, not generating kerneloops.service.
[    3.628303] systemd-sysv-generator[227]: Ignoring S01irqbalance symlin=
k in rc5.d, not generating irqbalance.service.
[    3.630608] systemd-sysv-generator[227]: Ignoring S01cron symlink in r=
c5.d, not generating cron.service.
[    3.632923] systemd-sysv-generator[227]: Ignoring S01gdm3 symlink in r=
c5.d, not generating gdm3.service.
[    3.635202] systemd-sysv-generator[227]: Ignoring S01anacron symlink i=
n rc5.d, not generating anacron.service.
[    3.637490] systemd-sysv-generator[227]: Ignoring S01dbus symlink in r=
c5.d, not generating dbus.service.
[    3.639775] systemd-sysv-generator[227]: Ignoring S01openvpn symlink i=
n rc5.d, not generating openvpn.service.
[    3.642050] systemd-sysv-generator[227]: Ignoring S01acpid symlink in =
rc5.d, not generating acpid.service.
[    3.644318] systemd-sysv-generator[227]: Ignoring S01spice-vdagent sym=
link in rc5.d, not generating spice-vdagent.service.
[    3.646579] systemd-sysv-generator[227]: Ignoring S01bluetooth symlink=
 in rc5.d, not generating bluetooth.service.
[    3.648851] systemd-sysv-generator[227]: Ignoring S01ssh symlink in rc=
5.d, not generating ssh.service.
[    3.651129] systemd-sysv-generator[227]: Ignoring S01console-setup.sh =
symlink in rc5.d, not generating console-setup.service.
[    3.653391] systemd-sysv-generator[227]: Ignoring S01uuidd symlink in =
rc5.d, not generating uuidd.service.
[    3.655645] systemd-sysv-generator[227]: Ignoring S01avahi-daemon syml=
ink in rc5.d, not generating avahi-daemon.service.
[    3.657906] systemd-sysv-generator[227]: Ignoring S01unattended-upgrad=
es symlink in rc5.d, not generating unattended-upgrades.service.
[    3.660185] systemd-sysv-generator[227]: Ignoring S01plymouth symlink =
in rc5.d, not generating plymouth.service.
[    3.662496] systemd-sysv-generator[227]: Ignoring S01cups-browsed syml=
ink in rc5.d, not generating cups-browsed.service.
[    3.664776] systemd-sysv-generator[227]: Ignoring S01whoopsie symlink =
in rc5.d, not generating whoopsie.service.
[    3.667080] systemd-sysv-generator[227]: Ignoring S01saned symlink in =
rc5.d, not generating saned.service.
[    3.669363] systemd-sysv-generator[227]: Ignoring S01cups symlink in r=
c5.d, not generating cups.service.
[    3.671643] systemd-sysv-generator[227]: Loading SysV script /etc/init=
=2Ed/grub-common
[    3.674012] systemd-sysv-generator[227]: Loading SysV script /etc/init=
=2Ed/apport
[    3.676648] systemd[208]: /usr/lib/systemd/system-generators/systemd-s=
ysv-generator succeeded.
[    3.678889] systemd[208]: /usr/lib/systemd/system-generators/systemd-b=
less-boot-generator succeeded.
[    3.681079] systemd[208]: /usr/lib/systemd/system-generators/systemd-s=
ystem-update-generator succeeded.
[    3.683285] systemd[208]: /usr/lib/systemd/system-generators/systemd-g=
pt-auto-generator succeeded.
[    3.685459] systemd[208]: /usr/lib/systemd/system-generators/systemd-c=
ryptsetup-generator succeeded.
[    3.687707] systemd[208]: /usr/lib/systemd/system-generators/systemd-f=
stab-generator succeeded.
[    3.690209] systemd[208]: /usr/lib/systemd/system-generators/systemd-v=
eritysetup-generator succeeded.
[    3.692430] systemd[208]: /usr/lib/systemd/system-generators/systemd-d=
ebug-generator succeeded.
[    3.694655] systemd[208]: /usr/lib/systemd/system-generators/openvpn-g=
enerator succeeded.
[    3.696892] systemd[208]: /usr/lib/systemd/system-generators/systemd-r=
c-local-generator succeeded.
[    3.699294] systemd[1]: (sd-executor) succeeded.
[    3.701548] systemd[1]: Looking for unit files in (higher priority fir=
st):
[    3.703737] systemd[1]: 	/etc/systemd/system.control
[    3.705840] systemd[1]: 	/run/systemd/system.control
[    3.707941] systemd[1]: 	/run/systemd/transient
[    3.709982] systemd[1]: 	/run/systemd/generator.early
[    3.712133] systemd[1]: 	/etc/systemd/system
[    3.714157] systemd[1]: 	/etc/systemd/system.attached
[    3.716223] systemd[1]: 	/run/systemd/system
[    3.718273] systemd[1]: 	/run/systemd/system.attached
[    3.720353] systemd[1]: 	/run/systemd/generator
[    3.722389] systemd[1]: 	/usr/local/lib/systemd/system
[    3.724477] systemd[1]: 	/lib/systemd/system
[    3.726555] systemd[1]: 	/usr/lib/systemd/system
[    3.728612] systemd[1]: 	/run/systemd/generator.late
[    3.731437] systemd[1]: unit_file_build_name_map: alias: /etc/systemd/=
system/dbus-org.freedesktop.Avahi.service =E2=86=92 avahi-daemon.service
[    3.733588] systemd[1]: unit_file_build_name_map: alias: /etc/systemd/=
system/dbus-fi.w1.wpa_supplicant1.service =E2=86=92 wpa_supplicant.servic=
e
[    3.735805] systemd[1]: unit_file_build_name_map: alias: /etc/systemd/=
system/syslog.service =E2=86=92 rsyslog.service
[    3.737949] systemd[1]: unit_file_build_name_map: alias: /etc/systemd/=
system/dbus-org.bluez.service =E2=86=92 bluetooth.service
[    3.740168] systemd[1]: unit_file_build_name_map: alias: /etc/systemd/=
system/sshd.service =E2=86=92 ssh.service
[    3.742365] systemd[1]: unit_file_build_name_map: alias: /etc/systemd/=
system/dbus-org.freedesktop.nm-dispatcher.service =E2=86=92 NetworkManage=
r-dispatcher.service
[    3.744562] systemd[1]: unit_file_build_name_map: alias: /etc/systemd/=
system/dbus-org.freedesktop.ModemManager1.service =E2=86=92 ModemManager.=
service
[    3.746758] systemd[1]: unit_file_build_name_map: alias: /etc/systemd/=
system/dbus-org.freedesktop.resolve1.service =E2=86=92 systemd-resolved.s=
ervice
[    3.748921] systemd[1]: unit_file_build_name_map: alias: /etc/systemd/=
system/display-manager.service =E2=86=92 gdm3.service
[    3.751135] systemd[1]: unit_file_build_name_map: alias: /etc/systemd/=
system/dbus-org.freedesktop.timesync1.service =E2=86=92 systemd-timesyncd=
=2Eservice
[    3.753307] systemd[1]: unit_file_build_name_map: normal unit file: /r=
un/systemd/system/netplan-ovs-cleanup.service
[    3.755497] systemd[1]: unit_file_build_name_map: normal unit file: /r=
un/systemd/generator/swapfile.swap
[    3.757618] systemd[1]: unit_file_build_name_map: normal unit file: /r=
un/systemd/generator/home.mount
[    3.759723] systemd[1]: unit_file_build_name_map: normal unit file: /r=
un/systemd/generator/boot-efi.mount
[    3.761815] systemd[1]: unit_file_build_name_map: normal unit file: /r=
un/systemd/generator/-.mount
[    3.763915] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/printer.target
[    3.765915] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-user-sessions.service
[    3.767972] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/packagekit.service
[    3.769964] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/e2scrub@.service
[    3.771893] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-journald-audit.socket
[    3.773834] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-ask-password-plymouth.path
[    3.775769] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/spice-vdagentd.socket
[    3.777715] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/getty.target
[    3.779625] systemd[1]: unit_file_build_name_map: alias: /lib/systemd/=
system/dbus-org.freedesktop.locale1.service =E2=86=92 systemd-localed.ser=
vice
[    3.781598] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/cron.service
[    3.783600] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/secureboot-db.service
[    3.785552] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/sigpwr.target
[    3.787440] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/apport-forward.socket
[    3.789356] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/swap.target
[    3.791219] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/fwupd-refresh.service
[    3.793076] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-hwdb-update.service
[    3.794982] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-backlight@.service
[    3.796772] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/NetworkManager-dispatcher.service
[    3.798595] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/polkit.service
[    3.800326] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/halt.target
[    3.802049] systemd[1]: unit_file_build_name_map: linked unit file: /l=
ib/systemd/system/pulseaudio-enable-autospawn.service =E2=86=92 /dev/null=

[    3.803775] systemd[1]: unit_file_build_name_map: alias: /lib/systemd/=
system/runlevel5.target =E2=86=92 graphical.target
[    3.805550] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-machine-id-commit.service
[    3.807286] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/networkd-dispatcher.service
[    3.809011] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-initctl.service
[    3.810706] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/unattended-upgrades.service
[    3.812420] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/local-fs.target
[    3.814105] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-halt.service
[    3.815777] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/cups.service
[    3.817459] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/ModemManager.service
[    3.819112] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/remote-fs-pre.target
[    3.820755] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/fwupd.service
[    3.822388] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-hibernate-resume@.service
[    3.824026] systemd[1]: unit_file_build_name_map: linked unit file: /l=
ib/systemd/system/rcS.service =E2=86=92 /dev/null
[    3.825720] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/apt-daily-upgrade.service
[    3.827372] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/network-pre.target
[    3.829006] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/boot-complete.target
[    3.830617] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/e2scrub_fail@.service
[    3.832220] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/proc-sys-fs-binfmt_misc.automount
[    3.833839] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-quotacheck.service
[    3.835418] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-journald@.socket
[    3.837071] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/ufw.service
[    3.838666] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/sysinit.target
[    3.840256] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/acpid.path
[    3.841862] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/exit.target
[    3.843458] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/time-set.target
[    3.845067] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/rsync.service
[    3.846664] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/saned.socket
[    3.848276] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-suspend.service
[    3.849896] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/shutdown.target
[    3.851503] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-binfmt.service
[    3.853122] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/getty-pre.target
[    3.854666] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/clean-mount-point@.service
[    3.856227] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/user.slice
[    3.857718] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/basic.target
[    3.859225] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/graphical.target
[    3.860724] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/acpid.socket
[    3.862169] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-udev-trigger.service
[    3.863621] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/fstrim.timer
[    3.865084] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/ssh.service
[    3.866439] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/getty@.service
[    3.867812] systemd[1]: unit_file_build_name_map: alias: /lib/systemd/=
system/runlevel3.target =E2=86=92 multi-user.target
[    3.869182] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/initrd-fs.target
[    3.870598] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/user-runtime-dir@.service
[    3.871968] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/emergency.target
[    3.873341] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/quotaon.service
[    3.874720] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/nss-lookup.target
[    3.876095] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-volatile-root.service
[    3.877483] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/apt-daily.service
[    3.878877] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/sys-kernel-config.mount
[    3.880612] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/alsa-state.service
[    3.882116] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/initrd-root-device.target
[    3.883530] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/ondemand.service
[    3.884929] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-ask-password-wall.path
[    3.886311] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/acpid.service
[    3.887655] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/cryptsetup-pre.target
[    3.888986] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/plymouth-halt.service
[    3.890328] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/emergency.service
[    3.891640] systemd[1]: unit_file_build_name_map: alias: /lib/systemd/=
system/network-manager.service =E2=86=92 NetworkManager.service
[    3.892993] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-random-seed.service
[    3.894360] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/motd-news.service
[    3.895729] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/fwupd-refresh.timer
[    3.897144] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/rtkit-daemon.service
[    3.898540] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/avahi-daemon.service
[    3.899882] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/apport-forward@.service
[    3.901223] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-hibernate.service
[    3.902583] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-sysctl.service
[    3.903907] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-hostnamed.service
[    3.905695] systemd[1]: unit_file_build_name_map: linked unit file: /l=
ib/systemd/system/sudo.service =E2=86=92 /dev/null
[    3.906982] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/NetworkManager.service
[    3.908224] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-udevd-control.socket
[    3.909505] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-kexec.service
[    3.910783] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-journald.socket
[    3.912060] systemd[1]: unit_file_build_name_map: alias: /lib/systemd/=
system/runlevel1.target =E2=86=92 rescue.target
[    3.913345] systemd[1]: unit_file_build_name_map: linked unit file: /l=
ib/systemd/system/x11-common.service =E2=86=92 /dev/null
[    3.914660] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/switcheroo-control.service
[    3.915986] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-modules-load.service
[    3.917326] systemd[1]: unit_file_build_name_map: alias: /lib/systemd/=
system/default.target =E2=86=92 graphical.target
[    3.918678] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/anacron.timer
[    3.920042] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-journal-flush.service
[    3.921401] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/ippusbxd@.service
[    3.922768] systemd[1]: unit_file_build_name_map: alias: /lib/systemd/=
system/procps.service =E2=86=92 systemd-sysctl.service
[    3.924158] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/bluetooth.target
[    3.925561] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/alsa-restore.service
[    3.926968] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/upower.service
[    3.928356] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/kexec.target
[    3.929739] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-udevd-kernel.socket
[    3.931162] systemd[1]: unit_file_build_name_map: alias: /lib/systemd/=
system/dbus-org.freedesktop.login1.service =E2=86=92 systemd-logind.servi=
ce
[    3.932598] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-remount-fs.service
[    3.934071] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/initrd-root-fs.target
[    3.935546] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/e2scrub_all.timer
[    3.937021] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-initctl.socket
[    3.938509] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-tmpfiles-clean.timer
[    3.939996] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/systemd-udev-settle.service
[    3.941491] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/timers.target
[    3.942988] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/e2scrub_all.service
[    3.944478] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/rpcbind.target
[    3.945958] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/container-getty@.service
[    3.947472] systemd[1]: unit_file_build_name_map: alias: /lib/systemd/=
system/spice-vdagent.service =E2=86=92 spice-vdagentd.service
[    3.949057] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/console-setup.service
[    3.950616] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/suspend.target
[    3.952162] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/logrotate.timer
[    3.953713] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/remote-cryptsetup.target
[    3.955288] systemd[1]: unit_file_build_name_map: alias: /lib/systemd/=
system/runlevel0.target =E2=86=92 poweroff.target
[    3.956869] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/rescue.target
[    3.958472] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/fprintd.service
[    3.960067] systemd[1]: unit_file_build_name_map: normal unit file: /l=
ib/systemd/system/serial-getty@.service
[    4.061806] calling  drm_core_init+0x0/0x1000 [drm] @ 244
[    4.061840] initcall drm_core_init+0x0/0x1000 [drm] returned 0 after 1=
5 usecs
[    4.066656] calling  parport_default_proc_register+0x0/0x1000 [parport=
] @ 254
[    4.068245] initcall parport_default_proc_register+0x0/0x1000 [parport=
] returned 0 after 9 usecs
[    4.070544] calling  lp_init_module+0x0/0x1000 [lp] @ 254
[    4.071665] lp: driver loaded but no devices found
[    4.071665] initcall lp_init_module+0x0/0x1000 [lp] returned 0 after 1=
089 usecs
[    4.077483] calling  ppdev_init+0x0/0x1000 [ppdev] @ 254
[    4.081067] ppdev: user-space parallel port driver
[    4.081068] initcall ppdev_init+0x0/0x1000 [ppdev] returned 0 after 17=
19 usecs
[    4.081689] systemd-journald[236]: Found cgroup2 on /sys/fs/cgroup/uni=
fied, unified hierarchy for systemd controller
[    4.082908] systemd-journald[236]: Journal effective settings seal=3Dn=
o compress=3Dyes compress_threshold_bytes=3D512B
[    4.087599] calling  parport_pc_init+0x0/0xf25 [parport_pc] @ 254
[    4.089270] systemd-journald[236]: Fixed min_use=3D16.0M max_use=3D306=
=2E1M max_size=3D38.2M min_size=3D512.0K keep_free=3D153.0M n_max_files=3D=
100
[    4.091425] initcall parport_pc_init+0x0/0xf25 [parport_pc] returned 0=
 after 452 usecs
[    4.093707] systemd-journald[236]: Reserving 69674 entries in hash tab=
le.
[    4.096565] systemd-journald[236]: Vacuuming...
[    4.098453] systemd-journald[236]: Vacuuming done, freed 0B of archive=
d journals from /run/log/journal/3c118a75bd0d43b791f62b4a5a598818.
[    4.098458] systemd-journald[236]: Flushing /dev/kmsg...
[    4.141599] systemd-journald[236]: systemd-journald running as PID 236=
 for the system.
[    4.141672] systemd-journald[236]: Sent READY=3D1 notification.
[    4.141800] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.141889] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.141973] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142052] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142157] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142243] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142320] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142396] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142513] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142608] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142655] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142721] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142801] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142849] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142917] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.142968] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.143021] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.148202] calling  fq_codel_module_init+0x0/0x1000 [sch_fq_codel] @ =
269
[    4.148207] initcall fq_codel_module_init+0x0/0x1000 [sch_fq_codel] re=
turned 0 after 0 usecs
[    4.154123] EXT4-fs (nvme0n1p6): re-mounted. Opts: errors=3Dremount-ro=
=2E Quota mode: none.
[    4.195944] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.200065] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.203457] systemd-journald[236]: n/a: New incoming connection.
[    4.206354] systemd-journald[236]: varlink-20: varlink: setting state =
idle-server
[    4.206368] systemd-journald[236]: varlink-20: New incoming message: {=
"method":"io.systemd.Journal.FlushToVar","parameters":{}}
[    4.206401] systemd-journald[236]: varlink-20: varlink: changing state=
 idle-server =E2=86=92 processing-method
[    4.206403] systemd-journald[236]: Received client request to flush ru=
ntime journal.
[    4.207337] systemd-journald[236]: Journal effective settings seal=3Dy=
es compress=3Dyes compress_threshold_bytes=3D512B
[    4.215583] systemd-journald[236]: Fixed min_use=3D16.0M max_use=3D4.0=
G max_size=3D128.0M min_size=3D512.0K keep_free=3D4.0G n_max_files=3D100
[    4.221411] systemd-journald[236]: Flushing to /var/log/journal/3c118a=
75bd0d43b791f62b4a5a598818...
[    4.221417] systemd-journald[236]: Considering root directory '/run/lo=
g/journal'.
[    4.221423] systemd-journald[236]: Root directory /run/log/journal add=
ed.
[    4.221426] systemd-journald[236]: Considering directory '/run/log/jou=
rnal/3c118a75bd0d43b791f62b4a5a598818'.
[    4.221431] systemd-journald[236]: Directory /run/log/journal/3c118a75=
bd0d43b791f62b4a5a598818 added.
[    4.221436] systemd-journald[236]: Journal effective settings seal=3Dn=
o compress=3Dno compress_threshold_bytes=3D8B
[    4.221446] systemd-journald[236]: File /run/log/journal/3c118a75bd0d4=
3b791f62b4a5a598818/system.journal added.
[    4.221449] systemd-journald[236]: Considering root directory '/var/lo=
g/journal'.
[    4.221450] systemd-journald[236]: Considering root directory '/var/lo=
g/journal/remote'.
[    4.238162] Adding 2097148k swap on /swapfile.  Priority:-2 extents:6 =
across:2260988k SSFS
[    4.334546] calling  mac_hid_init+0x0/0x1000 [mac_hid] @ 295
[    4.337746] initcall mac_hid_init+0x0/0x1000 [mac_hid] returned 0 afte=
r 6 usecs
[    4.341076] calling  int3400_thermal_driver_init+0x0/0x1000 [int3400_t=
hermal] @ 306
[    4.344855] calling  cnl_pinctrl_driver_init+0x0/0x1000 [pinctrl_canno=
nlake] @ 308
[    4.345622] initcall int3400_thermal_driver_init+0x0/0x1000 [int3400_t=
hermal] returned 0 after 931 usecs
[    4.346094] systemd-journald[236]: Root directory /run/log/journal rem=
oved.
[    4.346103] systemd-journald[236]: Directory /run/log/journal/3c118a75=
bd0d43b791f62b4a5a598818 removed.
[    4.346106] systemd-journald[236]: mmap cache statistics: 86437 hit, 1=
 miss
[    4.346122] systemd-journald[236]: Journal effective settings seal=3Dn=
o compress=3Dyes compress_threshold_bytes=3D512B
[    4.346247] systemd-journald[236]: Vacuuming...
[    4.351003] initcall cnl_pinctrl_driver_init+0x0/0x1000 [pinctrl_canno=
nlake] returned 0 after 2398 usecs
[    4.370915] calling  fjes_init_module+0x0/0x1000 [fjes] @ 301
[    4.374616] calling  init_soundcore+0x0/0x1000 [soundcore] @ 286
[    4.374797] initcall fjes_init_module+0x0/0x1000 [fjes] returned -19 a=
fter 272 usecs
[    4.376298] systemd-journald[236]: Vacuuming done, freed 0B of archive=
d journals from /var/log/journal/3c118a75bd0d43b791f62b4a5a598818.
[    4.377691] systemd-journald[236]: varlink-20: Sending message: {"para=
meters":{}}
[    4.377695] systemd-journald[236]: varlink-20: varlink: changing state=
 processing-method =E2=86=92 processed-method
[    4.377697] systemd-journald[236]: varlink-20: varlink: changing state=
 processed-method =E2=86=92 idle-server
[    4.378389] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.378487] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.378646] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.386115] initcall init_soundcore+0x0/0x1000 [soundcore] returned 0 =
after 7424 usecs
[    4.388738] calling  acpi_video_init+0x0/0x1000 [video] @ 317
[    4.388738] calling  acpi_wmi_init+0x0/0x1000 [wmi] @ 311
[    4.388940] acpi PNP0C14:02: duplicate WMI GUID 05901221-D566-11D1-B2F=
0-00A0C9062910 (first instance was on PNP0C14:01)
[    4.389001] acpi PNP0C14:03: duplicate WMI GUID 05901221-D566-11D1-B2F=
0-00A0C9062910 (first instance was on PNP0C14:01)
[    4.389122] acpi PNP0C14:04: duplicate WMI GUID 05901221-D566-11D1-B2F=
0-00A0C9062910 (first instance was on PNP0C14:01)
[    4.389190] acpi PNP0C14:05: duplicate WMI GUID 05901221-D566-11D1-B2F=
0-00A0C9062910 (first instance was on PNP0C14:01)
[    4.389250] acpi PNP0C14:06: duplicate WMI GUID 05901221-D566-11D1-B2F=
0-00A0C9062910 (first instance was on PNP0C14:01)
[    4.389304] acpi PNP0C14:07: duplicate WMI GUID 05901221-D566-11D1-B2F=
0-00A0C9062910 (first instance was on PNP0C14:01)
[    4.389401] initcall acpi_wmi_init+0x0/0x1000 [wmi] returned 0 after 6=
41 usecs
[    4.390071] systemd-journald[236]: varlink-20: Got POLLHUP from socket=
=2E
[    4.390077] systemd-journald[236]: varlink-20: varlink: changing state=
 idle-server =E2=86=92 pending-disconnect
[    4.390080] systemd-journald[236]: varlink-20: varlink: changing state=
 pending-disconnect =E2=86=92 processing-disconnect
[    4.390081] systemd-journald[236]: varlink-20: varlink: changing state=
 processing-disconnect =E2=86=92 disconnected
[    4.390124] calling  acpi_pad_init+0x0/0x1000 [acpi_pad] @ 288
[    4.390200] initcall acpi_pad_init+0x0/0x1000 [acpi_pad] returned 0 af=
ter 69 usecs
[    4.390227] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    4.459159] calling  intel_pch_thermal_driver_init+0x0/0x1000 [intel_p=
ch_thermal] @ 296
[    4.462431] initcall acpi_video_init+0x0/0x1000 [video] returned 0 aft=
er 14 usecs
[    4.465645] intel_pch_thermal 0000:00:12.0: enabling device (0000 -> 0=
002)
[    4.472157] calling  int3403_driver_init+0x0/0x1000 [int3403_thermal] =
@ 280
[    4.472418] initcall intel_pch_thermal_driver_init+0x0/0x1000 [intel_p=
ch_thermal] returned 0 after 249 usecs
[    4.472969] calling  typec_init+0x0/0x1000 [typec] @ 287
[    4.472986] initcall typec_init+0x0/0x1000 [typec] returned 0 after 10=
 usecs
[    4.473128] calling  mei_init+0x0/0xb8 [mei] @ 302
[    4.473154] initcall mei_init+0x0/0xb8 [mei] returned 0 after 15 usecs=

[    4.473529] calling  idma64_platform_driver_init+0x0/0x1000 [idma64] @=
 310
[    4.473555] initcall idma64_platform_driver_init+0x0/0x1000 [idma64] r=
eturned 0 after 20 usecs
[    4.475235] calling  nhi_init+0x0/0x1000 [thunderbolt] @ 292
[    4.475289] thunderbolt 0000:06:00.0: enabling device (0000 -> 0002)
[    4.491130] initcall int3403_driver_init+0x0/0x1000 [int3403_thermal] =
returned 0 after 15508 usecs
[    4.513261] calling  xhci_pci_init+0x0/0x1000 [xhci_pci] @ 285
[    4.513271] calling  rapl_init+0x0/0x1000 [intel_rapl_common] @ 306
[    4.513248] calling  cfg80211_init+0x0/0xd4 [cfg80211] @ 279
[    4.513457] cfg80211: Loading compiled-in X.509 certificates for regul=
atory database
[    4.513630] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'=

[    4.514873] initcall cfg80211_init+0x0/0xd4 [cfg80211] returned 0 afte=
r 1541 usecs
[    4.516817] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    4.519852] initcall rapl_init+0x0/0x1000 [intel_rapl_common] returned=
 0 after 44 usecs
[    4.523564] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bu=
s number 1
[    4.544560] xhci_hcd 0000:00:14.0: hcc params 0x200077c1 hci version 0=
x110 quirks 0x0000000000009810
[    4.544718] usb usb1: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 5.12
[    4.544720] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
[    4.544721] usb usb1: Product: xHCI Host Controller
[    4.544722] usb usb1: Manufacturer: Linux 5.12.0-rc4+ xhci-hcd
[    4.544723] usb usb1: SerialNumber: 0000:00:14.0
[    4.544801] hub 1-0:1.0: USB hub found
[    4.544817] hub 1-0:1.0: 16 ports detected
[    4.546173] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    4.546175] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bu=
s number 2
[    4.546177] xhci_hcd 0000:00:14.0: Host supports USB 3.1 Enhanced Supe=
rSpeed
[    4.546210] usb usb2: New USB device found, idVendor=3D1d6b, idProduct=
=3D0003, bcdDevice=3D 5.12
[    4.546211] usb usb2: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
[    4.546212] usb usb2: Product: xHCI Host Controller
[    4.546213] usb usb2: Manufacturer: Linux 5.12.0-rc4+ xhci-hcd
[    4.546213] usb usb2: SerialNumber: 0000:00:14.0
[    4.546308] hub 2-0:1.0: USB hub found
[    4.546321] hub 2-0:1.0: 10 ports detected
[    4.546813] usb: port power management may be unreliable
[    4.580047] initcall nhi_init+0x0/0x1000 [thunderbolt] returned 0 afte=
r 58828 usecs
[    4.582680] xhci_hcd 0000:2c:00.0: xHCI Host Controller
[    4.604714] xhci_hcd 0000:2c:00.0: new USB bus registered, assigned bu=
s number 3
[    4.606245] calling  mei_me_driver_init+0x0/0x1000 [mei_me] @ 302
[    4.606249] calling  intel_lpss_init+0x0/0x1000 [intel_lpss] @ 310
[    4.606257] initcall intel_lpss_init+0x0/0x1000 [intel_lpss] returned =
0 after 3 usecs
[    4.608401] xhci_hcd 0000:2c:00.0: hcc params 0x200077c1 hci version 0=
x110 quirks 0x0000000200009810
[    4.609289] mei_me 0000:00:16.0: enabling device (0000 -> 0002)
[    4.609292] initcall mei_me_driver_init+0x0/0x1000 [mei_me] returned 0=
 after 23 usecs
[    4.622827] calling  ucsi_acpi_platform_driver_init+0x0/0x1000 [ucsi_a=
cpi] @ 287
[    4.622851] calling  rtsx_pci_driver_init+0x0/0x1000 [rtsx_pci] @ 303
[    4.622853] calling  alsa_sound_init+0x0/0x8d [snd] @ 321
[    4.622874] initcall alsa_sound_init+0x0/0x8d [snd] returned 0 after 1=
0 usecs
[    4.622887] rtsx_pci 0000:54:00.0: enabling device (0000 -> 0002)
[    4.622891] calling  smbalert_driver_init+0x0/0x1000 [i2c_smbus] @ 317=

[    4.622912] initcall smbalert_driver_init+0x0/0x1000 [i2c_smbus] retur=
ned 0 after 14 usecs
[    4.622957] usb usb3: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 5.12
[    4.622960] usb usb3: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
[    4.622962] usb usb3: Product: xHCI Host Controller
[    4.622963] usb usb3: Manufacturer: Linux 5.12.0-rc4+ xhci-hcd
[    4.622964] usb usb3: SerialNumber: 0000:2c:00.0
[    4.623061] hub 3-0:1.0: USB hub found
[    4.623069] hub 3-0:1.0: 2 ports detected
[    4.624087] xhci_hcd 0000:2c:00.0: xHCI Host Controller
[    4.624090] xhci_hcd 0000:2c:00.0: new USB bus registered, assigned bu=
s number 4
[    4.624092] xhci_hcd 0000:2c:00.0: Host supports USB 3.1 Enhanced Supe=
rSpeed
[    4.624118] usb usb4: New USB device found, idVendor=3D1d6b, idProduct=
=3D0003, bcdDevice=3D 5.12
[    4.624120] usb usb4: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
[    4.624121] usb usb4: Product: xHCI Host Controller
[    4.624122] usb usb4: Manufacturer: Linux 5.12.0-rc4+ xhci-hcd
[    4.624123] usb usb4: SerialNumber: 0000:2c:00.0
[    4.624187] hub 4-0:1.0: USB hub found
[    4.624198] hub 4-0:1.0: 2 ports detected
[    4.625227] initcall xhci_pci_init+0x0/0x1000 [xhci_pci] returned 0 af=
ter 2275 usecs
[    4.630610] calling  efivars_pstore_init+0x0/0x1000 [efi_pstore] @ 314=

[    4.630609] calling  e1000_init_module+0x0/0x1000 [e1000e] @ 311
[    4.630621] e1000e: Intel(R) PRO/1000 Network Driver
[    4.630622] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    4.630774] e1000e 0000:00:1f.6: Interrupt Throttling Rate (ints/sec) =
set to dynamic conservative mode
[    4.633771] initcall rtsx_pci_driver_init+0x0/0x1000 [rtsx_pci] return=
ed 0 after 3076 usecs
[    4.663191] pstore: Using crash dump compression: deflate
[    4.673412] calling  serio_raw_drv_init+0x0/0x1000 [serio_raw] @ 295
[    4.676764] pstore: Registered efi as persistent store backend
[    4.680617] initcall serio_raw_drv_init+0x0/0x1000 [serio_raw] returne=
d 0 after 45 usecs
[    4.683690] initcall efivars_pstore_init+0x0/0x1000 [efi_pstore] retur=
ned 0 after 3046 usecs
[    4.713911] calling  cstate_pmu_init+0x0/0x1000 [intel_cstate] @ 304
[    4.736228] calling  intel_lpss_pci_driver_init+0x0/0x1000 [intel_lpss=
_pci] @ 289
[    4.757922] intel-lpss 0000:00:15.0: enabling device (0000 -> 0002)
[    4.757976] calling  input_leds_init+0x0/0x1000 [input_leds] @ 295
[    4.757986] calling  i2c_i801_init+0x0/0x1000 [i2c_i801] @ 317
[    4.757988] calling  alsa_timer_init+0x0/0x1000 [snd_timer] @ 337
[    4.758020] initcall alsa_timer_init+0x0/0x1000 [snd_timer] returned 0=
 after 26 usecs
[    4.758029] initcall input_leds_init+0x0/0x1000 [input_leds] returned =
0 after 35 usecs
[    4.758096] calling  psmouse_init+0x0/0x90 [psmouse] @ 318
[    4.758125] initcall psmouse_init+0x0/0x90 [psmouse] returned 0 after =
16 usecs
[    4.758277] i801_smbus 0000:00:1f.4: SPD Write Disable is set
[    4.758348] i801_smbus 0000:00:1f.4: SMBus using PCI interrupt
[    4.758425] idma64 idma64.0: Found Intel integrated DMA 64-bit
[    4.758562] calling  rc_core_init+0x0/0x8b [rc_core] @ 315
[    4.758579] initcall rc_core_init+0x0/0x8b [rc_core] returned 0 after =
9 usecs
[    4.758589] calling  fjes_init_module+0x0/0x1000 [fjes] @ 300
[    4.759355] calling  iwl_drv_init+0x0/0x1000 [iwlwifi] @ 279
[    4.759377] Intel(R) Wireless WiFi driver for Linux
[    4.759454] iwlwifi 0000:00:14.3: enabling device (0000 -> 0002)
[    4.759621] calling  alsa_seq_device_init+0x0/0x1000 [snd_seq_device] =
@ 341
[    4.759633] initcall alsa_seq_device_init+0x0/0x1000 [snd_seq_device] =
returned 0 after 7 usecs
[    4.760580] calling  cec_devnode_init+0x0/0x1000 [cec] @ 315
[    4.760601] initcall cec_devnode_init+0x0/0x1000 [cec] returned 0 afte=
r 14 usecs
[    4.760931] calling  proc_thermal_init+0x0/0x1000 [processor_thermal_d=
evice] @ 306
[    4.760994] proc_thermal 0000:00:04.0: enabling device (0000 -> 0002)
[    4.763506] initcall cstate_pmu_init+0x0/0x1000 [intel_cstate] returne=
d 0 after 2509 usecs
[    4.765431] initcall iwl_drv_init+0x0/0x1000 [iwlwifi] returned 0 afte=
r 4389 usecs
[    4.767644] proc_thermal 0000:00:04.0: Creating sysfs group for PROC_T=
HERMAL_PCI
[    4.770332] iwlwifi 0000:00:14.3: Direct firmware load for iwlwifi-QuZ=
-a0-hr-b0-62.ucode failed with error -2
[    4.771099] initcall fjes_init_module+0x0/0x1000 [fjes] returned -19 a=
fter 9924 usecs
[    4.771211] i2c i2c-0: 2/4 memory slots populated (from DMI)
[    4.771900] i2c i2c-0: Successfully instantiated SPD at 0x51
[    4.772587] i2c i2c-0: Successfully instantiated SPD at 0x53
[    4.772614] initcall i2c_i801_init+0x0/0x1000 [i2c_i801] returned 0 af=
ter 11404 usecs
[    4.773203] idma64 idma64.1: Found Intel integrated DMA 64-bit
[    4.774246] intel_rapl_common: Found RAPL domain package
[    4.776886] initcall intel_lpss_pci_driver_init+0x0/0x1000 [intel_lpss=
_pci] returned 0 after 15575 usecs
[    4.777647] iwlwifi 0000:00:14.3: Direct firmware load for iwlwifi-QuZ=
-a0-hr-b0-61.ucode failed with error -2
[    4.780252] intel_rapl_common: Found RAPL domain dram
[    4.782633] calling  alsa_seq_init+0x0/0x58 [snd_seq] @ 345
[    4.788034] iwlwifi 0000:00:14.3: Direct firmware load for iwlwifi-QuZ=
-a0-hr-b0-60.ucode failed with error -2
[    4.790480] initcall proc_thermal_init+0x0/0x1000 [processor_thermal_d=
evice] returned 0 after 61 usecs
[    4.790494] initcall alsa_seq_init+0x0/0x58 [snd_seq] returned 0 after=
 74 usecs
[    4.794478] iwlwifi 0000:00:14.3: api flags index 2 larger than suppor=
ted by driver
[    4.834004] calling  rapl_pmu_init+0x0/0x1000 [rapl] @ 281
[    4.838250] iwlwifi 0000:00:14.3: TLV_FW_FSEQ_VERSION: FSEQ Version: 6=
5.3.35.22
[    4.874667] calling  drm_kms_helper_init+0x0/0x1000 [drm_kms_helper] @=
 315
[    4.876944] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): register=
ed PHC clock
[    4.878911] iwlwifi 0000:00:14.3: loaded firmware version 59.601f3a66.=
0 QuZ-a0-hr-b0-59.ucode op_mode iwlmvm
[    4.881656] initcall drm_kms_helper_init+0x0/0x1000 [drm_kms_helper] r=
eturned 0 after 14 usecs
[    4.882106] usb 1-8: new high-speed USB device number 2 using xhci_hcd=

[    4.884135] RAPL PMU: API unit is 2^-32 Joules, 5 fixed counters, 6553=
60 ms ovfl timer
[    4.897584] calling  alsa_rawmidi_init+0x0/0x1000 [snd_rawmidi] @ 376
[    4.899745] RAPL PMU: hw unit of domain pp0-core 2^-14 Joules
[    4.902463] initcall alsa_rawmidi_init+0x0/0x1000 [snd_rawmidi] return=
ed 0 after 0 usecs
[    4.910545] initcall ucsi_acpi_platform_driver_init+0x0/0x1000 [ucsi_a=
cpi] returned 0 after 7893 usecs
[    4.910553] RAPL PMU: hw unit of domain package 2^-14 Joules
[    4.938953] RAPL PMU: hw unit of domain dram 2^-14 Joules
[    4.938953] RAPL PMU: hw unit of domain pp1-gpu 2^-14 Joules
[    4.938954] RAPL PMU: hw unit of domain psys 2^-14 Joules
[    4.938954] initcall rapl_pmu_init+0x0/0x1000 [rapl] returned 0 after =
35637 usecs
[    4.953148] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1) f=
8:75:a4:db:14:f2
[    4.953150] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network Connec=
tion
[    4.953209] e1000e 0000:00:1f.6 eth0: MAC: 13, PHY: 12, PBA No: FFFFFF=
-0FF
[    4.953230] initcall e1000_init_module+0x0/0x1000 [e1000e] returned 0 =
after 49578 usecs
[    4.966365] calling  intel_rapl_msr_driver_init+0x0/0x1000 [intel_rapl=
_msr] @ 289
[    4.966415] intel_rapl_common: Found RAPL domain package
[    4.966416] intel_rapl_common: Found RAPL domain core
[    4.966417] intel_rapl_common: Found RAPL domain uncore
[    4.966418] intel_rapl_common: Found RAPL domain dram
[    4.966419] intel_rapl_common: Found RAPL domain psys
[    4.966519] calling  rtsx_pci_sdmmc_driver_init+0x0/0x1000 [rtsx_pci_s=
dmmc] @ 285
[    4.966528] calling  mei_hdcp_driver_init+0x0/0x1000 [mei_hdcp] @ 303
[    4.966546] initcall rtsx_pci_sdmmc_driver_init+0x0/0x1000 [rtsx_pci_s=
dmmc] returned 0 after 13 usecs
[    4.966605] calling  ee1004_driver_init+0x0/0x1000 [ee1004] @ 317
[    4.967060] initcall mei_hdcp_driver_init+0x0/0x1000 [mei_hdcp] return=
ed 0 after 440 usecs
[    4.967126] calling  intel_wmi_thunderbolt_driver_init+0x0/0x1000 [int=
el_wmi_thunderbolt] @ 302
[    4.967169] initcall intel_wmi_thunderbolt_driver_init+0x0/0x1000 [int=
el_wmi_thunderbolt] returned 0 after 38 usecs
[    4.967325] ee1004 0-0051: 512 byte EE1004-compliant SPD EEPROM, read-=
only
[    4.967440] calling  wmi_bmof_driver_init+0x0/0x1000 [wmi_bmof] @ 318
[    4.967478] initcall wmi_bmof_driver_init+0x0/0x1000 [wmi_bmof] return=
ed 0 after 33 usecs
[    4.967744] ee1004 0-0053: 512 byte EE1004-compliant SPD EEPROM, read-=
only
[    4.967771] initcall ee1004_driver_init+0x0/0x1000 [ee1004] returned 0=
 after 319 usecs
[    4.967977] calling  cryptd_init+0x0/0x1000 [cryptd] @ 299
[    4.968892] calling  ttm_init+0x0/0x1000 [ttm] @ 315
[    4.968903] initcall ttm_init+0x0/0x1000 [ttm] returned 0 after 3 usec=
s
[    4.969249] initcall intel_rapl_msr_driver_init+0x0/0x1000 [intel_rapl=
_msr] returned 0 after 340 usecs
[    4.969431] calling  fjes_init_module+0x0/0x1000 [fjes] @ 297
[    4.969673] initcall fjes_init_module+0x0/0x1000 [fjes] returned -19 a=
fter 226 usecs
[    4.970878] calling  seq_midisynth_driver_init+0x0/0x1000 [snd_seq_mid=
i] @ 396
[    4.970891] initcall seq_midisynth_driver_init+0x0/0x1000 [snd_seq_mid=
i] returned 0 after 7 usecs
[    4.971063] e1000e 0000:00:1f.6 enp0s31f6: renamed from eth0
[    4.971067] cryptd: max_cpu_qlen set to 1000
[    4.971069] initcall cryptd_init+0x0/0x1000 [cryptd] returned 0 after =
182 usecs
[    4.973273] calling  mxm_wmi_init+0x0/0x1000 [mxm_wmi] @ 315
[    4.973278] initcall mxm_wmi_init+0x0/0x1000 [mxm_wmi] returned 0 afte=
r 0 usecs
[    4.975083] calling  aesni_init+0x0/0x1000 [aesni_intel] @ 308
[    4.975091] AVX2 version of gcm_enc/dec engaged.
[    4.975113] AES CTR mode by8 optimization enabled
[    4.975635] initcall aesni_init+0x0/0x1000 [aesni_intel] returned 0 af=
ter 531 usecs
[    4.977076] calling  ghash_pclmulqdqni_mod_init+0x0/0x1000 [ghash_clmu=
lni_intel] @ 304
[    4.986164] initcall ghash_pclmulqdqni_mod_init+0x0/0x1000 [ghash_clmu=
lni_intel] returned 0 after 8845 usecs
[    4.988265] calling  ieee80211_init+0x0/0x2f [mac80211] @ 392
[    4.989047] calling  crc32_pclmul_mod_init+0x0/0x1000 [crc32_pclmul] @=
 312
[    4.989097] initcall crc32_pclmul_mod_init+0x0/0x1000 [crc32_pclmul] r=
eturned 0 after 44 usecs
[    4.989255] calling  ledtrig_audio_init+0x0/0x1000 [ledtrig_audio] @ 2=
86
[    4.989262] initcall ledtrig_audio_init+0x0/0x1000 [ledtrig_audio] ret=
urned 0 after 2 usecs
[    4.990069] calling  alsa_pcm_init+0x0/0x1000 [snd_pcm] @ 432
[    4.990084] initcall alsa_pcm_init+0x0/0x1000 [snd_pcm] returned 0 aft=
er 4 usecs
[    4.990153] calling  crct10dif_intel_mod_init+0x0/0x1000 [crct10dif_pc=
lmul] @ 298
[    4.991519] initcall crct10dif_intel_mod_init+0x0/0x1000 [crct10dif_pc=
lmul] returned 0 after 1329 usecs
[    4.992013] calling  nvram_module_init+0x0/0x1000 [nvram] @ 307
[    4.994825] calling  alsa_hwdep_init+0x0/0x1000 [snd_hwdep] @ 293
[    4.994835] initcall alsa_hwdep_init+0x0/0x1000 [snd_hwdep] returned 0=
 after 3 usecs
[    5.001092] Module nouveau is blacklisted
[    5.001681] Non-volatile memory driver v1.3
[    5.002059] initcall nvram_module_init+0x0/0x1000 [nvram] returned 0 a=
fter 7058 usecs
[    5.003788] calling  i915_init+0x0/0x81 [i915] @ 284
[    5.004060] i915 0000:00:02.0: enabling device (0006 -> 0007)
[    5.004274] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Comet=
 Lake PCH (CMP)
[    5.004358] i915 0000:00:02.0: [drm:intel_power_domains_init [i915]] A=
llowed DC state mask 02
[    5.004904] i915 0000:00:02.0: [drm] VT-d active for gfx access
[    5.004909] checking generic (4000000000 1fa4000) vs hw (6040000000 10=
00000)
[    5.004912] checking generic (4000000000 1fa4000) vs hw (4000000000 10=
000000)
[    5.004913] fb0: switching to inteldrmfb from EFI VGA
[    5.032511] Console: switching to colour dummy device 80x25
[    5.032649] i915 0000:00:02.0: vgaarb: deactivate vga console
[    5.033734] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] Found=
 valid VBT in ACPI OpRegion (Mailbox #4)
[    5.033829] i915 0000:00:02.0: [drm:skl_get_dram_info [i915]] DRAM typ=
e: DDR4
[    5.033871] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.033881] i915 0000:00:02.0: [drm:skl_dram_get_dimm_info [i915]] CH0=
 DIMM L size: 128 Gb, width: X8, ranks: 2, 16Gb DIMMs: no
[    5.033931] i915 0000:00:02.0: [drm:skl_dram_get_dimm_info [i915]] CH0=
 DIMM S size: 0 Gb, width: X0, ranks: 0, 16Gb DIMMs: no
[    5.033982] i915 0000:00:02.0: [drm:skl_dram_get_channel_info [i915]] =
CH0 ranks: 2, 16Gb DIMMs: no
[    5.034028] i915 0000:00:02.0: [drm:skl_dram_get_dimm_info [i915]] CH1=
 DIMM L size: 128 Gb, width: X8, ranks: 2, 16Gb DIMMs: no
[    5.034079] i915 0000:00:02.0: [drm:skl_dram_get_dimm_info [i915]] CH1=
 DIMM S size: 0 Gb, width: X0, ranks: 0, 16Gb DIMMs: no
[    5.034155] i915 0000:00:02.0: [drm:skl_dram_get_channel_info [i915]] =
CH1 ranks: 2, 16Gb DIMMs: no
[    5.034219] i915 0000:00:02.0: [drm:skl_get_dram_info [i915]] Memory c=
onfiguration is symmetric? yes
[    5.034279] i915 0000:00:02.0: [drm:intel_dram_detect [i915]] DRAM cha=
nnels: 2
[    5.034324] i915 0000:00:02.0: [drm:intel_dram_detect [i915]] Watermar=
k level 0 adjustment needed: no
[    5.034526] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Set defaul=
t to SSC at 120000 kHz
[    5.034598] i915 0000:00:02.0: [drm:intel_bios_init [i915]] VBT signat=
ure "$VBT SKYLAKE        ", BDB version 228
[    5.034661] i915 0000:00:02.0: [drm:intel_bios_init [i915]] BDB_GENERA=
L_FEATURES int_tv_support 0 int_crt_support 0 lvds_use_ssc 0 lvds_ssc_fre=
q 120000 display_clock_mode 1 fdi_rx_polarity_inverted 0
[    5.034722] i915 0000:00:02.0: [drm:intel_bios_init [i915]] crt_ddc_bu=
s_pin: 2
[    5.034781] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x1806
[    5.034841] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x60d6
[    5.034901] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x60d6
[    5.034959] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x60d6
[    5.035651] i915 0000:00:02.0: [drm:intel_opregion_get_panel_type [i91=
5]] Ignoring OpRegion panel type (0)
[    5.035926] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Panel type=
: 2 (VBT)
[    5.036501] i915 0000:00:02.0: [drm:intel_bios_init [i915]] DRRS suppo=
rted mode is static
[    5.036709] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found pane=
l mode in BIOS VBT legacy lfp table:
[    5.037200] [drm:drm_mode_debug_printmodeline [drm]] Modeline "1024x76=
8": 60 65000 1024 1048 1184 1344 768 771 777 806 0x8 0xa
[    5.037222] i915 0000:00:02.0: [drm:intel_bios_init [i915]] VBT initia=
l LVDS value 300
[    5.037283] i915 0000:00:02.0: [drm:intel_bios_init [i915]] VBT backli=
ght PWM modulation frequency 990 Hz, active high, min brightness 3, level=
 70, controller 0
[    5.037345] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Skipping S=
DVO device mapping
[    5.037405] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port A VBT=
 info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:1 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
[    5.037466] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port A VBT=
 HDMI level shift: 0
[    5.037684] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port A VBT=
 DP max link rate: 810000
[    5.038158] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port B VBT=
 info: CRT:0 DVI:1 HDMI:1 DP:1 eDP:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
[    5.038222] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port B VBT=
 HDMI level shift: 8
[    5.038286] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port B VBT=
 DP max link rate: 810000
[    5.038347] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port C VBT=
 info: CRT:0 DVI:1 HDMI:1 DP:1 eDP:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
[    5.038786] usb 1-8: New USB device found, idVendor=3D13d3, idProduct=3D=
56fb, bcdDevice=3D60.01
[    5.038790] usb 1-8: New USB device strings: Mfr=3D3, Product=3D1, Ser=
ialNumber=3D2
[    5.038792] usb 1-8: Product: Integrated Camera
[    5.038932] usb 1-8: Manufacturer: Azurewave
[    5.038934] usb 1-8: SerialNumber: 0000
[    5.038961] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port C VBT=
 HDMI level shift: 8
[    5.039045] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port C VBT=
 DP max link rate: 810000
[    5.039120] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port D VBT=
 info: CRT:0 DVI:1 HDMI:1 DP:1 eDP:0 LSPCON:1 USB-Type-C:0 TBT:0 DSC:0
[    5.039184] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port D VBT=
 HDMI level shift: 0
[    5.039243] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port D VBT=
 DP max link rate: 810000
[    5.039304] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 00 to 00
[    5.039378] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling power well 1
[    5.039462] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling MISC IO power well
[    5.039564] i915 0000:00:02.0: [drm:gen9_dbuf_slices_update [i915]] Up=
dating dbuf slices to 0x1
[    5.039658] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling always-on
[    5.039740] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DC off
[    5.039804] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 00 to 00
[    5.039866] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling power well 2
[    5.039929] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=
=3Dio+mem,decodes=3Dnone:owns=3Dmem
[    5.039934] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DDI A/E IO power well
[    5.039993] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DDI B IO power well
[    5.040051] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DDI C IO power well
[    5.040109] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DDI D IO power well
[    5.040174] i915 0000:00:02.0: [drm:intel_csr_ucode_init [i915]] Loadi=
ng i915/kbl_dmc_ver1_04.bin
[    5.040265] i915 0000:00:02.0: [drm:intel_fbc_init [i915]] Sanitized e=
nable_fbc value: 1
[    5.040481] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM0 latency 2 (2.0 usec)
[    5.040555] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM1 latency 19 (19.0 usec)
[    5.040620] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM2 latency 28 (28.0 usec)
[    5.040666] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM3 latency 32 (32.0 usec)
[    5.040711] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM4 latency 63 (63.0 usec)
[    5.040755] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM5 latency 77 (77.0 usec)
[    5.040801] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM6 latency 83 (83.0 usec)
[    5.040845] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM7 latency 99 (99.0 usec)
[    5.041093] i915 0000:00:02.0: [drm:intel_modeset_init_nogem [i915]] 3=
 display pipes available.
[    5.041443] i915 0000:00:02.0: [drm] Finished loading DMC firmware i91=
5/kbl_dmc_ver1_04.bin (v1.4)
[    5.041490] mei_hdcp 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04=
: bound 0000:00:02.0 (ops i915_hdcp_component_ops [i915])
[    5.041858] i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] usi=
ng AUX A for port A (VBT)
[    5.041924] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Ad=
ding eDP connector on [ENCODER:94:DDI A/PHY A]
[    5.042011] [drm:intel_pps_dump_state [i915]] cur t1_t3 0 t8 0 t9 1 t1=
0 1000 t11_t12 6000
[    5.042072] [drm:intel_pps_dump_state [i915]] vbt t1_t3 2000 t8 950 t9=
 3500 t10 1000 t11_t12 6000
[    5.042136] i915 0000:00:02.0: [drm:pps_init_delays [i915]] panel powe=
r up delay 200, power down delay 100, power cycle delay 600
[    5.042197] i915 0000:00:02.0: [drm:pps_init_delays [i915]] backlight =
on delay 95, off delay 350
[    5.042297] i915 0000:00:02.0: [drm:pps_init_registers [i915]] panel p=
ower sequencer register settings: PP_ON 0x7d00001, PP_OFF 0x3e80001, PP_D=
IV 0x60
[    5.042377] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
Turning [ENCODER:94:DDI A/PHY A] VDD on
[    5.042491] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
PP_STATUS: 0x80000008 PP_CONTROL: 0x0000006f
[    5.042965] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00000 AUX -> (ret=3D 15) 12 14 c4 41 00 00 01 c0 02 00 00 00 00 0b 80
[    5.043317] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x02200 AUX -> (ret=3D  6) 12 14 c4 41 00 00
[    5.043328] [drm:drm_dp_read_dpcd_caps [drm_kms_helper]] AUX A/DDI A/P=
HY A: DPCD: 12 14 c4 41 00 00 01 c0 02 00 00 00 00 0b 80
[    5.043470] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.043717] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00400 AUX -> (ret=3D 12) 38 ec 11 00 00 00 00 00 00 00 00 00
[    5.043727] [drm:drm_dp_read_desc [drm_kms_helper]] AUX A/DDI A/PHY A:=
 DP sink: OUI 38-ec-11 dev-ID  HW-rev 0.0 SW-rev 0.0 quirks 0x0000
[    5.044045] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00700 AUX -> (ret=3D  3) 02 9b a7
[    5.044055] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] eD=
P DPCD: 02 9b a7
[    5.044421] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00070 AUX -> (ret=3D  2) 01 00
[    5.044430] i915 0000:00:02.0: [drm:intel_psr_init_dpcd [i915]] eDP pa=
nel supports PSR version 1
[    5.044804] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x02009 AUX -> (ret=3D  1) 00
[    5.045121] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00300 AUX -> (ret=3D  3) 00 00 00
[    5.045298] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00300 AUX <- (ret=3D  3) 00 aa 01
[    5.050379] initcall ieee80211_init+0x0/0x2f [mac80211] returned 0 aft=
er 45389 usecs
[    5.052051] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    5.052082] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    5.052107] [drm:drm_add_edid_modes [drm]] ELD monitor=20
[    5.052129] [drm:drm_add_edid_modes [drm]] ELD size 20, SAD count 0
[    5.052151] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    5.052172] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    5.052207] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    5.052229] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    5.052252] i915 0000:00:02.0: [drm:intel_panel_edid_fixed_mode [i915]=
] [CONNECTOR:95:eDP-1] using preferred mode from EDID:=20
[    5.052355] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x48 0x9
[    5.052381] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] VB=
T doesn't support DRRS
[    5.054222] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00340 AUX -> (ret=3D  4) 01 9f 00 00
[    5.054246] i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs =
[i915]] Detected Intel HDR backlight interface version 1
[    5.054335] i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs =
[i915]] Using Intel proprietary eDP backlight controls
[    5.054421] i915 0000:00:02.0: [drm:intel_dp_aux_hdr_setup_backlight [=
i915]] SDR backlight is controlled through PWM
[    5.055438] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00344 AUX -> (ret=3D  1) 00
[    5.055485] i915 0000:00:02.0: [drm:intel_panel_setup_backlight [i915]=
] Connector eDP-1 backlight initialized, enabled, brightness 136/512
[    5.055664] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:51:pipe A] hw state readout: enabled
[    5.055776] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:72:pipe B] hw state readout: disabled
[    5.055866] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:93:pipe C] hw state readout: disabled
[    5.056499] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:31:plane 1A] hw state readout: enabled, pipe A
[    5.056587] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:39:plane 2A] hw state readout: disabled, pipe A
[    5.056675] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:47:cursor A] hw state readout: disabled, pipe A
[    5.056759] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:52:plane 1B] hw state readout: disabled, pipe B
[    5.056844] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:60:plane 2B] hw state readout: disabled, pipe B
[    5.056931] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:68:cursor B] hw state readout: disabled, pipe B
[    5.057017] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:73:plane 1C] hw state readout: disabled, pipe C
[    5.057102] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:81:plane 2C] hw state readout: disabled, pipe C
[    5.057186] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:89:cursor C] hw state readout: disabled, pipe C
[    5.057274] i915 0000:00:02.0: [drm:intel_ddi_get_config [i915]] pipe =
has 24 bpp for eDP panel, overriding BIOS-provided max 18 bpp
[    5.057372] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:94:DDI A/PHY A] hw state readout: enabled, pipe A
[    5.057462] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] DPLL 0 hw state readout: pipe_mask 0x0, on 1
[    5.057567] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] DPLL 1 hw state readout: pipe_mask 0x1, on 1
[    5.057658] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] DPLL 2 hw state readout: pipe_mask 0x0, on 0
[    5.057746] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] DPLL 3 hw state readout: pipe_mask 0x0, on 0
[    5.057836] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:95:eDP-1] hw state readout: enabled
[    5.058089] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [MODE:3840x2160] for [CRTC:51:pipe A] state 000000000fa4a988
[    5.058443] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:31:plane 1A] min_cdclk 534632 kHz
[    5.058693] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:39:plane 2A] min_cdclk 0 kHz
[    5.058782] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:47:cursor A] min_cdclk 0 kHz
[    5.058868] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
A data rate 2138528 num active planes 1
[    5.058960] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:52:plane 1B] min_cdclk 0 kHz
[    5.059048] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:60:plane 2B] min_cdclk 0 kHz
[    5.059137] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:68:cursor B] min_cdclk 0 kHz
[    5.059224] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
B data rate 0 num active planes 0
[    5.059313] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:73:plane 1C] min_cdclk 0 kHz
[    5.059402] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:81:plane 2C] min_cdclk 0 kHz
[    5.059491] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:89:cursor C] min_cdclk 0 kHz
[    5.059597] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
C data rate 0 num active planes 0
[    5.059707] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [CR=
TC:51:pipe A] enable: yes [setup_hw_state]
[    5.059801] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] act=
ive: yes, output_types: EDP (0x100), output format: RGB
[    5.059895] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] cpu=
_transcoder: EDP, pipe bpp: 24, dithering: 0
[    5.059988] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] MST=
 master transcoder: <invalid>
[    5.060080] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] por=
t sync: master transcoder: <invalid>, slave transcoder bitmask =3D 0x0
[    5.060172] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] big=
joiner: no
[    5.060262] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] spl=
itter: disabled, link count 0, overlap 0
[    5.060353] i915 0000:00:02.0: [drm:intel_dump_m_n_config.isra.0 [i915=
]] dp m_n: lanes: 4; gmch_m: 6228928, gmch_n: 8388608, link_m: 519077, li=
nk_n: 524288, tu: 64
[    5.060448] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] aud=
io: 0, infoframes: 0, infoframes enabled: 0x0
[    5.060539] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] vrr=
: no, vmin: 0, vmax: 0, pipeline full: 0, flipline: 0, vmin vblank: -1, v=
max vblank: -2
[    5.060632] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] req=
uested mode:
[    5.060722] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 534632 3840 3888 3920 4000 2160 2163 2168 2222 0x40 0x9
[    5.060755] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] adj=
usted mode:
[    5.060847] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 534632 3840 3888 3920 4000 2160 2163 2168 2222 0x40 0x9
[    5.060876] i915 0000:00:02.0: [drm:intel_dump_crtc_timings.isra.0 [i9=
15]] crtc timings: 534632 3840 3888 3920 4000 2160 2163 2168 2222, type: =
0x40 flags: 0x9
[    5.060971] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] pip=
e mode:
[    5.061671] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 534632 3840 3888 3920 4000 2160 2163 2168 2222 0x40 0x9
[    5.061700] i915 0000:00:02.0: [drm:intel_dump_crtc_timings.isra.0 [i9=
15]] crtc timings: 534632 3840 3888 3920 4000 2160 2163 2168 2222, type: =
0x40 flags: 0x9
[    5.061795] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] por=
t clock: 540000, pipe src size: 3840x2160, pixel rate 534632
[    5.061887] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] lin=
etime: 61, ips linetime: 0
[    5.061978] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] num=
_scalers: 2, scaler_users: 0x0, scaler_id: -1
[    5.062069] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] pch=
 pfit: 0x0+0+0, disabled, force thru: no
[    5.062168] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] ips=
: 0, double wide: 0
[    5.062259] i915 0000:00:02.0: [drm:skl_dump_hw_state [i915]] dpll_hw_=
state: ctrl1: 0x11, cfgcr1: 0x0, cfgcr2: 0x0
[    5.062355] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] csc=
_mode: 0x0 gamma_mode: 0x0 gamma_enable: 0 csc_enable: 0
[    5.062447] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] deg=
amma lut: 0 entries, gamma lut: 0 entries
[    5.062540] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [CR=
TC:72:pipe B] enable: no [setup_hw_state]
[    5.062632] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [CR=
TC:93:pipe C] enable: no [setup_hw_state]
[    5.062724] i915 0000:00:02.0: [drm:intel_dpll_sanitize_state [i915]] =
DPLL 0 enabled but not in use, disabling
[    5.062825] i915 0000:00:02.0: [drm:skl_wm_get_hw_state [i915]] [CRTC:=
51:pipe A] dbuf slices 0x1, ddb (0 - 446), active pipes 0x1
[    5.062912] i915 0000:00:02.0: [drm:skl_wm_get_hw_state [i915]] [CRTC:=
72:pipe B] dbuf slices 0x0, ddb (446 - 892), active pipes 0x1
[    5.062996] i915 0000:00:02.0: [drm:skl_wm_get_hw_state [i915]] [CRTC:=
93:pipe C] dbuf slices 0x0, ddb (0 - 0), active pipes 0x1
[    5.063078] i915 0000:00:02.0: [drm:skl_get_initial_plane_config [i915=
]] pipe A/plane 1A with fb: size=3D3840x2160@32, offset=3D0, pitch 15360,=
 size 0x1fa4000
[    5.063179] i915 0000:00:02.0: [drm:intel_plane_disable_noatomic [i915=
]] Disabling [PLANE:31:plane 1A] on [CRTC:51:pipe A]
[    5.065276] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.065371] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.074986] calling  hda_bus_init+0x0/0x1000 [snd_hda_core] @ 293
[    5.075015] initcall hda_bus_init+0x0/0x1000 [snd_hda_core] returned 0=
 after 10 usecs
[    5.075145] calling  thinkpad_acpi_module_init+0x0/0xc98 [thinkpad_acp=
i] @ 307
[    5.075989] calling  fjes_init_module+0x0/0x1000 [fjes] @ 316
[    5.077924] initcall fjes_init_module+0x0/0x1000 [fjes] returned -19 a=
fter 1874 usecs
[    5.077969] thinkpad_acpi: ThinkPad ACPI Extras v0.26
[    5.077973] thinkpad_acpi: http://ibm-acpi.sf.net/
[    5.077975] thinkpad_acpi: ThinkPad BIOS N30ET29W (1.12 ), EC N30HT20W=

[    5.077978] thinkpad_acpi: Lenovo ThinkPad P17 Gen 1, model 20SN0SIT14=

[    5.078369] thinkpad_acpi: radio switch found; radios are enabled
[    5.078555] thinkpad_acpi: This ThinkPad has standard ACPI backlight b=
rightness control, supported by the ACPI video driver
[    5.078559] thinkpad_acpi: Disabling thinkpad-acpi brightness events b=
y default...
[    5.079835] EXT4-fs (nvme0n1p7): mounted filesystem with ordered data =
mode. Opts: (null). Quota mode: none.
[    5.081310] thinkpad_acpi: rfkill switch tpacpi_bluetooth_sw: radio is=
 unblocked
[    5.082785] thinkpad_acpi: rfkill switch tpacpi_wwan_sw: radio is bloc=
ked
[    5.086420] calling  vmx_init+0x0/0x14a [kvm_intel] @ 288
[    5.087904] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.088022] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.088179] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.089009] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.089197] calling  iwl_mvm_init+0x0/0x1000 [iwlmvm] @ 392
[    5.089238] iwlwifi 0000:00:14.3: Detected Intel(R) Wi-Fi 6 AX201 160M=
Hz, REV=3D0x354
[    5.089782] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000061c4f2e5
[    5.089824] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 0000000061c4f2e5
[    5.089843] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.089864] [drm:drm_atomic_add_affected_planes [drm]] Adding all curr=
ent planes for [CRTC:51:pipe A] to 0000000061c4f2e5
[    5.089895] i915 0000:00:02.0: [drm:intel_dp_initial_fastset_check [i9=
15]] Forcing full modeset to compute PSR state
[    5.090011] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 0000000061c4f2e5
[    5.090041] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 00000000fab86807 state to 0000000061c4f2e5
[    5.090071] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:72:pipe =
B] 00000000e8225649 state to 0000000061c4f2e5
[    5.090108] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:93:pipe =
C] 00000000b356b0d1 state to 0000000061c4f2e5
[    5.090134] [drm:drm_atomic_check_only [drm]] checking 0000000061c4f2e=
5
[    5.090161] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    5.090184] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    5.090204] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CR=
TC:51:pipe A] needs all connectors, enable: y, active: y
[    5.090222] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 0000000061c4f2e5
[    5.090250] [drm:drm_atomic_add_affected_planes [drm]] Adding all curr=
ent planes for [CRTC:51:pipe A] to 0000000061c4f2e5
[    5.090281] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 0000000061c4f2e5
[    5.090304] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 0000000061c4f2e5
[    5.090331] i915 0000:00:02.0: [drm:intel_atomic_check [i915]] [CONNEC=
TOR:95:eDP-1] Limiting display bpp to 30 instead of EDID bpp 30, requeste=
d bpp 36, max platform bpp 36
[    5.090415] i915 0000:00:02.0: [drm:intel_dp_compute_config [i915]] DP=
 link computation with max lane count 4 max rate 540000 max bpp 30 pixel =
clock 533300KHz
[    5.090492] i915 0000:00:02.0: [drm:intel_dp_compute_config [i915]] Fo=
rce DSC en =3D 0
[    5.090567] i915 0000:00:02.0: [drm:intel_dp_compute_config [i915]] DP=
 lane count 4 clock 540000 bpp 30
[    5.090639] i915 0000:00:02.0: [drm:intel_dp_compute_config [i915]] DP=
 link rate required 1999875 available 2160000
[    5.090721] i915 0000:00:02.0: [drm:intel_atomic_check [i915]] hw max =
bpp: 30, pipe bpp: 30, dithering: 0
[    5.090796] i915 0000:00:02.0: [drm:intel_ddi_compute_config_late [i91=
5]] [ENCODER:94:DDI A/PHY A] [CRTC:51:pipe A]
[    5.090870] i915 0000:00:02.0: [drm:pipe_config_mismatch [i915]] [CRTC=
:51:pipe A] fastset mismatch in dp_m_n (expected tu 64 gmch 6228928/83886=
08 link 519077/524288, or tu 0 gmch 0/0 link 0/0, found tu 64, gmch 77667=
44/8388608 link 1035565/1048576)
[    5.090948] i915 0000:00:02.0: [drm:pipe_config_mismatch [i915]] [CRTC=
:51:pipe A] fastset mismatch in pipe_bpp (expected 24, found 30)
[    5.091021] i915 0000:00:02.0: [drm:pipe_config_mismatch [i915]] [CRTC=
:51:pipe A] fastset mismatch in infoframes.enable (expected 0x00000000, f=
ound 0x00000004)
[    5.091097] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000023962373 t=
o 0000000061c4f2e5
[    5.091156] calling  azx_driver_init+0x0/0x1000 [snd_hda_intel] @ 293
[    5.091186] snd_hda_intel 0000:00:1f.3: DSP detected with PCI class/su=
bclass/prog-if info 0x040380
[    5.091171] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [CRTC:51:pi=
pe A] dbuf slices 0x1 -> 0x1, ddb (0 - 446) -> (0 - 892), active pipes 0x=
1 -> 0x1
[    5.091223] snd_hda_intel 0000:00:1f.3: enabling device (0004 -> 0006)=

[    5.091231] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [CRTC:72:pi=
pe B] dbuf slices 0x0 -> 0x0, ddb (446 - 892) -> (0 - 0), active pipes 0x=
1 -> 0x1
[    5.091290] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000086219f18 state to 0000000061c4f2e5
[    5.091312] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 0000000069d4f1b7 state to 0000000061c4f2e5
[    5.091332] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:52:pla=
ne 1B] 00000000fa19f132 state to 0000000061c4f2e5
[    5.091351] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000d3636b69 t=
o 0000000061c4f2e5
[    5.091429] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:39:pla=
ne 2A] 0000000080ce4e62 state to 0000000061c4f2e5
[    5.091454] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A] ddb (   0 -  446) -> (   0 -    0), size  446 ->    0
[    5.091508] snd_hda_intel 0000:01:00.1: enabling device (0000 -> 0002)=

[    5.091513] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:47:c=
ursor A] ddb (   0 -    0) -> ( 847 -  892), size    0 ->   45
[    5.091597] snd_hda_intel 0000:01:00.1: Disabling MSI
[    5.091605] snd_hda_intel 0000:01:00.1: Handle vga_switcheroo audio cl=
ient
[    5.091585] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]   level *wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
[    5.091642] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    5.091686] initcall azx_driver_init+0x0/0x1000 [snd_hda_intel] return=
ed 0 after 508 usecs
[    5.091698] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]  blocks   14,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    5.091756] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    5.091812] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:39:p=
lane 2A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
[    5.091881] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:39:p=
lane 2A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    5.091940] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:39:p=
lane 2A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    5.091995] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:39:p=
lane 2A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    5.092051] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:47:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
[    5.092103] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:47:c=
ursor A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    5.092156] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:47:c=
ursor A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    5.092552] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:47:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    5.092889] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:52:p=
lane 1B] ddb ( 446 -  892) -> (   0 -    0), size  446 ->    0
[    5.092944] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f976fb37 state 00000000f8899dbb t=
o 0000000061c4f2e5
[    5.093304] i915 0000:00:02.0: [drm:intel_find_shared_dpll [i915]] [CR=
TC:51:pipe A] allocated DPLL 0
[    5.093660] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [CR=
TC:51:pipe A] enable: yes [modeset]
[    5.094176] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] act=
ive: yes, output_types: EDP (0x100), output format: RGB
[    5.094401] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] cpu=
_transcoder: EDP, pipe bpp: 30, dithering: 0
[    5.094467] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] MST=
 master transcoder: <invalid>
[    5.094533] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] por=
t sync: master transcoder: <invalid>, slave transcoder bitmask =3D 0x0
[    5.094898] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] big=
joiner: no
[    5.095262] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] spl=
itter: disabled, link count 0, overlap 0
[    5.095587] i915 0000:00:02.0: [drm:intel_dump_m_n_config.isra.0 [i915=
]] dp m_n: lanes: 4; gmch_m: 7766744, gmch_n: 8388608, link_m: 1035565, l=
ink_n: 1048576, tu: 64
[    5.096141] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] aud=
io: 0, infoframes: 0, infoframes enabled: 0x4
[    5.096779] i915 0000:00:02.0: DP SDP: VSC, revision 0, length 0
[    5.096781] i915 0000:00:02.0:     pixelformat: RGB
[    5.096783] i915 0000:00:02.0:     colorimetry: sRGB
[    5.096784] i915 0000:00:02.0:     bpc: 0
[    5.096785] i915 0000:00:02.0:     dynamic range: VESA range
[    5.096787] i915 0000:00:02.0:     content type: Not defined
[    5.096788] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] vrr=
: no, vmin: 0, vmax: 0, pipeline full: 0, flipline: 0, vmin vblank: -1, v=
max vblank: -2
[    5.096948] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] req=
uested mode:
[    5.097099] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 534632 3840 3888 3920 4000 2160 2163 2168 2222 0x40 0x9
[    5.097122] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] adj=
usted mode:
[    5.097288] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x48 0x9
[    5.097308] i915 0000:00:02.0: [drm:intel_dump_crtc_timings.isra.0 [i9=
15]] crtc timings: 533300 3840 3888 3920 4000 2160 2163 2168 2222, type: =
0x48 flags: 0x9
[    5.097472] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] pip=
e mode:
[    5.097533] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x40 0x9
[    5.097651] i915 0000:00:02.0: [drm:intel_dump_crtc_timings.isra.0 [i9=
15]] crtc timings: 533300 3840 3888 3920 4000 2160 2163 2168 2222, type: =
0x40 flags: 0x9
[    5.097816] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] por=
t clock: 540000, pipe src size: 3840x2160, pixel rate 533300
[    5.097879] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] lin=
etime: 61, ips linetime: 0
[    5.098041] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] num=
_scalers: 2, scaler_users: 0x0, scaler_id: -1
[    5.098108] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] pch=
 pfit: 0x0+0+0, disabled, force thru: no
[    5.098266] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] ips=
: 0, double wide: 0
[    5.098331] i915 0000:00:02.0: [drm:skl_dump_hw_state [i915]] dpll_hw_=
state: ctrl1: 0x1, cfgcr1: 0x0, cfgcr2: 0x0
[    5.098489] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] csc=
_mode: 0x2 gamma_mode: 0x0 gamma_enable: 0 csc_enable: 0
[    5.098647] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] deg=
amma lut: 0 entries, gamma lut: 0 entries
[    5.098732] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [PL=
ANE:31:plane 1A] fb: [NOFB], visible: no
[    5.099479] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [PL=
ANE:39:plane 2A] fb: [NOFB], visible: no
[    5.100301] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [PL=
ANE:47:cursor A] fb: [NOFB], visible: no
[    5.100387] [drm:drm_atomic_commit [drm]] committing 0000000061c4f2e5
[    5.100754] calling  ac97_bus_init+0x0/0x1000 [ac97_bus] @ 296
[    5.100820] initcall ac97_bus_init+0x0/0x1000 [ac97_bus] returned 0 af=
ter 44 usecs
[    5.100912] i915 0000:00:02.0: [drm:intel_edp_backlight_off [i915]]=20
[    5.103168] thermal thermal_zone9: failed to read out thermal zone (-6=
1)
[    5.103207] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.108846] calling  hdmi_driver_init+0x0/0x1000 [snd_hda_codec_hdmi] =
@ 306
[    5.111536] audit: type=3D1400 audit(1616650331.345:2): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"ippusbxd"=
 pid=3D502 comm=3D"apparmor_parser"
[    5.114918] audit: type=3D1400 audit(1616650331.345:3): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"libreoffi=
ce-oopslash" pid=3D513 comm=3D"apparmor_parser"
[    5.114927] audit: type=3D1400 audit(1616650331.345:4): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"/usr/bin/=
man" pid=3D507 comm=3D"apparmor_parser"
[    5.114933] audit: type=3D1400 audit(1616650331.345:5): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"man_filte=
r" pid=3D507 comm=3D"apparmor_parser"
[    5.114938] audit: type=3D1400 audit(1616650331.345:6): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"man_groff=
" pid=3D507 comm=3D"apparmor_parser"
[    5.118207] audit: type=3D1400 audit(1616650331.349:7): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"libreoffi=
ce-xpdfimport" pid=3D510 comm=3D"apparmor_parser"
[    5.118239] audit: type=3D1400 audit(1616650331.349:8): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"nvidia_mo=
dprobe" pid=3D506 comm=3D"apparmor_parser"
[    5.118254] audit: type=3D1400 audit(1616650331.349:9): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"nvidia_mo=
dprobe//kmod" pid=3D506 comm=3D"apparmor_parser"
[    5.118260] audit: type=3D1400 audit(1616650331.349:10): apparmor=3D"S=
TATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"/usr/sbi=
n/cups-browsed" pid=3D508 comm=3D"apparmor_parser"
[    5.122721] thinkpad_acpi: secondary fan control enabled
[    5.126686] thinkpad_acpi: battery 1 registered (start 0, stop 100)
[    5.126693] ACPI: battery: new extension: ThinkPad Battery Extension
[    5.128948] input: ThinkPad Extra Buttons as /devices/platform/thinkpa=
d_acpi/input/input6
[    5.130440] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.130586] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.130681] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.131450] initcall thinkpad_acpi_module_init+0x0/0xc98 [thinkpad_acp=
i] returned 0 after 22066 usecs
[    5.136625] initcall vmx_init+0x0/0x14a [kvm_intel] returned 0 after 2=
7119 usecs
[    5.150978] initcall hdmi_driver_init+0x0/0x1000 [snd_hda_codec_hdmi] =
returned 0 after 41135 usecs
[    5.190987] usb 1-9: new full-speed USB device number 3 using xhci_hcd=

[    5.198768] calling  snd_soc_init+0x0/0x76 [snd_soc_core] @ 296
[    5.199734] initcall snd_soc_init+0x0/0x76 [snd_soc_core] returned 0 a=
fter 913 usecs
[    5.199944] input: HDA NVidia HDMI/DP,pcm=3D3 as /devices/pci0000:00/0=
000:00:01.0/0000:01:00.1/sound/card1/input7
[    5.199990] input: HDA NVidia HDMI/DP,pcm=3D7 as /devices/pci0000:00/0=
000:00:01.0/0000:01:00.1/sound/card1/input8
[    5.200494] calling  fjes_init_module+0x0/0x1000 [fjes] @ 283
[    5.200675] initcall fjes_init_module+0x0/0x1000 [fjes] returned -19 a=
fter 166 usecs
[    5.200721] input: HDA NVidia HDMI/DP,pcm=3D8 as /devices/pci0000:00/0=
000:00:01.0/0000:01:00.1/sound/card1/input9
[    5.200765] input: HDA NVidia HDMI/DP,pcm=3D9 as /devices/pci0000:00/0=
000:00:01.0/0000:01:00.1/sound/card1/input10
[    5.200804] input: HDA NVidia HDMI/DP,pcm=3D10 as /devices/pci0000:00/=
0000:00:01.0/0000:01:00.1/sound/card1/input11
[    5.200838] input: HDA NVidia HDMI/DP,pcm=3D11 as /devices/pci0000:00/=
0000:00:01.0/0000:01:00.1/sound/card1/input12
[    5.200878] input: HDA NVidia HDMI/DP,pcm=3D12 as /devices/pci0000:00/=
0000:00:01.0/0000:01:00.1/sound/card1/input13
[    5.200989] calling  coretemp_init+0x0/0x1000 [coretemp] @ 298
[    5.204930] calling  sdw_bus_init+0x0/0x1000 [soundwire_bus] @ 296
[    5.204955] initcall sdw_bus_init+0x0/0x1000 [soundwire_bus] returned =
0 after 13 usecs
[    5.210398] initcall coretemp_init+0x0/0x1000 [coretemp] returned 0 af=
ter 5328 usecs
[    5.211597] calling  powerclamp_init+0x0/0x1000 [intel_powerclamp] @ 2=
98
[    5.211642] initcall powerclamp_init+0x0/0x1000 [intel_powerclamp] ret=
urned 0 after 35 usecs
[    5.212650] calling  pkg_temp_thermal_init+0x0/0x1000 [x86_pkg_temp_th=
ermal] @ 298
[    5.225381] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.225593] initcall pkg_temp_thermal_init+0x0/0x1000 [x86_pkg_temp_th=
ermal] returned 0 after 12633 usecs
[    5.227240] calling  sdw_intel_drv_init+0x0/0x1000 [soundwire_intel] @=
 296
[    5.227280] initcall sdw_intel_drv_init+0x0/0x1000 [soundwire_intel] r=
eturned 0 after 30 usecs
[    5.232000] calling  snd_sof_pci_intel_cnl_driver_init+0x0/0x1000 [snd=
_sof_pci_intel_cnl] @ 296
[    5.232034] initcall snd_sof_pci_intel_cnl_driver_init+0x0/0x1000 [snd=
_sof_pci_intel_cnl] returned 0 after 23 usecs
[    5.266835] calling  fjes_init_module+0x0/0x1000 [fjes] @ 294
[    5.267023] initcall fjes_init_module+0x0/0x1000 [fjes] returned -19 a=
fter 172 usecs
[    5.285345] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.291952] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.292542] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.295110] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.296000] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.297103] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.297708] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.299383] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.301266] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.302345] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.303085] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.303827] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.304850] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.307857] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.310875] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.313009] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.314430] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.318996] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.320328] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.322501] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.330323] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.331465] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.334075] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.334980] calling  fjes_init_module+0x0/0x1000 [fjes] @ 290
[    5.335211] initcall fjes_init_module+0x0/0x1000 [fjes] returned -19 a=
fter 212 usecs
[    5.336306] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.339879] usb 1-9: New USB device found, idVendor=3D06cb, idProduct=3D=
00bd, bcdDevice=3D 0.00
[    5.339884] usb 1-9: New USB device strings: Mfr=3D0, Product=3D0, Ser=
ialNumber=3D1
[    5.339886] usb 1-9: SerialNumber: b1902c8eb495
[    5.368950] iwlwifi 0000:00:14.3: base HW address: c0:b8:83:4d:d4:e2
[    5.382627] initcall iwl_mvm_init+0x0/0x1000 [iwlmvm] returned 0 after=
 46517 usecs
[    5.384765] iwlwifi 0000:00:14.3 wlp0s20f3: renamed from wlan0
[    5.405472] calling  fjes_init_module+0x0/0x1000 [fjes] @ 291
[    5.406457] initcall fjes_init_module+0x0/0x1000 [fjes] returned -19 a=
fter 951 usecs
[    5.407927] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.408528] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.409083] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.409672] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.410273] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.410819] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.412171] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.414280] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.414866] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.415993] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.424804] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.425469] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.428539] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.433246] kauditd_printk_skb: 17 callbacks suppressed
[    5.433248] audit: type=3D1400 audit(1616650331.665:28): apparmor=3D"D=
ENIED" operation=3D"capable" profile=3D"/usr/sbin/cups-browsed" pid=3D641=
 comm=3D"cups-browsed" capability=3D23  capname=3D"sys_nice"
[    5.434899] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.439714] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.470114] usb 1-11: new full-speed USB device number 4 using xhci_hc=
d
[    5.473346] calling  fjes_init_module+0x0/0x1000 [fjes] @ 309
[    5.474378] initcall fjes_init_module+0x0/0x1000 [fjes] returned -19 a=
fter 999 usecs
[    5.482114] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 0
[    5.482299] i915 0000:00:02.0: [drm:intel_disable_pipe [i915]] disabli=
ng pipe A
[    5.494392] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00600 AUX <- (ret=3D  1) 02
[    5.494440] i915 0000:00:02.0: [drm:intel_pps_off_unlocked [i915]] Tur=
n [ENCODER:94:DDI A/PHY A] panel power off
[    5.494555] i915 0000:00:02.0: [drm:intel_pps_off_unlocked [i915]] Wai=
t for panel power off time
[    5.494648] i915 0000:00:02.0: [drm:wait_panel_status [i915]] mask b00=
00000 value 00000000 status a0000003 control 00000060
[    5.539295] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.559424] psmouse serio1: synaptics: queried max coordinates: x [..5=
678], y [..4694]
[    5.590942] psmouse serio1: synaptics: queried min coordinates: x [126=
6..], y [1162..]
[    5.590966] psmouse serio1: synaptics: Your touchpad (PNP: LEN2066 PNP=
0f13) says it can support a different bus. If i2c-hid and hid-rmi are not=
 used, you might want to try setting psmouse.synaptics_intertouch to 1 an=
d report this to linux-input@vger.kernel.org.
[    5.600756] i915 0000:00:02.0: [drm:wait_panel_status [i915]] Wait com=
plete
[    5.600833] i915 0000:00:02.0: [drm:intel_disable_shared_dpll [i915]] =
disable DPLL 1 (active 0x1, on? 1) for [CRTC:51:pipe A]
[    5.600894] i915 0000:00:02.0: [drm:intel_disable_shared_dpll [i915]] =
disabling DPLL 1
[    5.600952] i915 0000:00:02.0: [drm:intel_atomic_commit_tail [i915]] [=
ENCODER:94:DDI A/PHY A]
[    5.601008] i915 0000:00:02.0: [drm:verify_single_dpll_state.isra.0 [i=
915]] DPLL 0
[    5.601064] i915 0000:00:02.0: [drm:verify_single_dpll_state.isra.0 [i=
915]] DPLL 1
[    5.601118] i915 0000:00:02.0: [drm:verify_single_dpll_state.isra.0 [i=
915]] DPLL 2
[    5.601172] i915 0000:00:02.0: [drm:verify_single_dpll_state.isra.0 [i=
915]] DPLL 3
[    5.601227] i915 0000:00:02.0: [drm:intel_enable_shared_dpll [i915]] e=
nable DPLL 0 (active 0x1, on? 0) for [CRTC:51:pipe A]
[    5.601284] i915 0000:00:02.0: [drm:intel_enable_shared_dpll [i915]] e=
nabling DPLL 0
[    5.601407] i915 0000:00:02.0: [drm:intel_pps_on_unlocked [i915]] Turn=
 [ENCODER:94:DDI A/PHY A] panel power on
[    5.601470] i915 0000:00:02.0: [drm:wait_panel_power_cycle [i915]] Wai=
t for panel power cycle
[    5.628611] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.639622] usb 1-11: New USB device found, idVendor=3D058f, idProduct=
=3D9540, bcdDevice=3D 1.20
[    5.639627] usb 1-11: New USB device strings: Mfr=3D1, Product=3D2, Se=
rialNumber=3D0
[    5.639629] usb 1-11: Product: EMV Smartcard Reader
[    5.639630] usb 1-11: Manufacturer: Generic
[    5.653378] psmouse serio1: synaptics: Touchpad model: 1, fw: 10.32, i=
d: 0x1e2a1, caps: 0xf00aa3/0x940300/0x12e800/0x500000, board id: 3471, fw=
 id: 2867793
[    5.653386] psmouse serio1: synaptics: serio: Synaptics pass-through p=
ort at isa0060/serio1/input0
[    5.692270] input: SynPS/2 Synaptics TouchPad as /devices/platform/i80=
42/serio1/input/input5
[    5.693859] calling  joydev_init+0x0/0x1000 [joydev] @ 288
[    5.693867] initcall joydev_init+0x0/0x1000 [joydev] returned 0 after =
2 usecs
[    5.774135] usb 1-14: new full-speed USB device number 5 using xhci_hc=
d
[    5.932283] usb 1-14: New USB device found, idVendor=3D8087, idProduct=
=3D0026, bcdDevice=3D 0.02
[    5.932289] usb 1-14: New USB device strings: Mfr=3D0, Product=3D0, Se=
rialNumber=3D0
[    5.943033] calling  ecdh_init+0x0/0x20 [ecdh_generic] @ 283
[    5.943068] initcall ecdh_init+0x0/0x20 [ecdh_generic] returned 0 afte=
r 27 usecs
[    5.944041] calling  media_devnode_init+0x0/0x1000 [mc] @ 299
[    5.944048] mc: Linux media interface: v0.10
[    5.944058] initcall media_devnode_init+0x0/0x1000 [mc] returned 0 aft=
er 9 usecs
[    5.947625] calling  videodev_init+0x0/0x1000 [videodev] @ 299
[    5.947637] videodev: Linux video capture interface: v2.00
[    5.947648] initcall videodev_init+0x0/0x1000 [videodev] returned 0 af=
ter 10 usecs
[    5.949232] calling  bt_init+0x0/0xb8 [bluetooth] @ 307
[    5.949252] Bluetooth: Core ver 2.22
[    5.949272] NET: Registered protocol family 31
[    5.949274] Bluetooth: HCI device and connection manager initialized
[    5.949277] Bluetooth: HCI socket layer initialized
[    5.949280] Bluetooth: L2CAP socket layer initialized
[    5.949283] Bluetooth: SCO socket layer initialized
[    5.949285] initcall bt_init+0x0/0xb8 [bluetooth] returned 0 after 32 =
usecs
[    5.952943] calling  btusb_driver_init+0x0/0x1000 [btusb] @ 307
[    5.953043] usbcore: registered new interface driver btusb
[    5.953046] initcall btusb_driver_init+0x0/0x1000 [btusb] returned 0 a=
fter 94 usecs
[    5.953839] Bluetooth: hci0: Firmware revision 0.0 build 121 week 36 2=
020
[    5.953978] calling  uvc_init+0x0/0x1000 [uvcvideo] @ 299
[    5.954335] usb 1-8: Found UVC 1.10 device Integrated Camera (13d3:56f=
b)
[    5.957410] input: Integrated Camera: Integrated C as /devices/pci0000=
:00/0000:00:14.0/usb1/1-8/1-8:1.0/input/input15
[    5.958393] usb 1-8: Found UVC 1.50 device Integrated Camera (13d3:56f=
b)
[    5.958806] input: Integrated Camera: Integrated I as /devices/pci0000=
:00/0000:00:14.0/usb1/1-8/1-8:1.2/input/input16
[    5.958842] usbcore: registered new interface driver uvcvideo
[    5.958844] initcall uvc_init+0x0/0x1000 [uvcvideo] returned 0 after 4=
744 usecs
[    5.971456] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    5.988608] calling  bnep_init+0x0/0xb7 [bnep] @ 697
[    5.988615] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    5.988616] Bluetooth: BNEP filters: protocol multicast
[    5.988619] Bluetooth: BNEP socket layer initialized
[    5.988620] initcall bnep_init+0x0/0xb7 [bnep] returned 0 after 5 usec=
s
[    6.022858] Bluetooth: hci0: MSFT filter_enable is already on
[    6.028186] calling  af_alg_init+0x0/0x1000 [af_alg] @ 699
[    6.028193] NET: Registered protocol family 38
[    6.028194] initcall af_alg_init+0x0/0x1000 [af_alg] returned 0 after =
1 usecs
[    6.029578] calling  algif_skcipher_init+0x0/0x1000 [algif_skcipher] @=
 701
[    6.029583] initcall algif_skcipher_init+0x0/0x1000 [algif_skcipher] r=
eturned 0 after 0 usecs
[    6.032432] calling  algif_hash_init+0x0/0x1000 [algif_hash] @ 706
[    6.032437] initcall algif_hash_init+0x0/0x1000 [algif_hash] returned =
0 after 0 usecs
[    6.035132] calling  crypto_cmac_module_init+0x0/0x1000 [cmac] @ 710
[    6.035137] initcall crypto_cmac_module_init+0x0/0x1000 [cmac] returne=
d 0 after 0 usecs
[    6.149012] psmouse serio2: trackpoint: Elan TrackPoint firmware: 0x11=
, buttons: 3/3
[    6.218499] i915 0000:00:02.0: [drm:wait_panel_status [i915]] mask b80=
0000f value 00000000 status 00000000 control 00000060
[    6.218643] i915 0000:00:02.0: [drm:wait_panel_status [i915]] Wait com=
plete
[    6.218761] i915 0000:00:02.0: [drm:intel_pps_on_unlocked [i915]] Wait=
 for panel power on
[    6.218846] i915 0000:00:02.0: [drm:wait_panel_status [i915]] mask b00=
0000f value 80000008 status 9000000a control 00000063
[    6.353027] input: TPPS/2 Elan TrackPoint as /devices/platform/i8042/s=
erio1/serio2/input/input14
[    6.429177] i915 0000:00:02.0: [drm:wait_panel_status [i915]] Wait com=
plete
[    6.429269] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
Turning [ENCODER:94:DDI A/PHY A] VDD on
[    6.429368] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
PP_STATUS: 0x80000008 PP_CONTROL: 0x0000006b
[    6.429625] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00300 AUX <- (ret=3D  3) 00 aa 01
[    6.429801] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00600 AUX <- (ret=3D  1) 01
[    6.430242] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00000 AUX -> (ret=3D 15) 12 14 c4 41 00 00 01 c0 02 00 00 00 00 0b 80
[    6.430658] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x02200 AUX -> (ret=3D  6) 12 14 c4 41 00 00
[    6.430672] [drm:drm_dp_read_dpcd_caps [drm_kms_helper]] AUX A/DDI A/P=
HY A: DPCD: 12 14 c4 41 00 00 01 c0 02 00 00 00 00 0b 80
[    6.431878] i915 0000:00:02.0: [drm:intel_dp_start_link_train [i915]] =
Using LINK_BW_SET value 14
[    6.432161] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00100 AUX <- (ret=3D  2) 14 84
[    6.432343] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00107 AUX <- (ret=3D  2) 00 01
[    6.432353] i915 0000:00:02.0: [drm:intel_dp_set_signal_levels [i915]]=
 Using vswing level 0, pre-emphasis level 0, at DPRX
[    6.432425] i915 0000:00:02.0: [drm:hsw_set_signal_levels [i915]] Usin=
g signal levels 00000000
[    6.432492] i915 0000:00:02.0: [drm:intel_dp_program_link_training_pat=
tern [i915]] [ENCODER:94:DDI A/PHY A] Using DP training pattern TPS1
[    6.432764] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00102 AUX <- (ret=3D  5) 21 00 00 00 00
[    6.434710] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00202 AUX -> (ret=3D  6) 11 11 80 00 00 00
[    6.434723] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] cl=
ock recovery OK
[    6.435382] i915 0000:00:02.0: [drm:intel_dp_program_link_training_pat=
tern [i915]] [ENCODER:94:DDI A/PHY A] Using DP training pattern TPS3
[    6.435686] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00102 AUX <- (ret=3D  5) 23 00 00 00 00
[    6.437074] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00202 AUX -> (ret=3D  6) 77 77 81 00 00 00
[    6.437083] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] Ch=
annel EQ done. DP Training successful
[    6.437143] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] [C=
ONNECTOR:95:eDP-1] Link Training passed at link rate =3D 540000, lane cou=
nt =3D 4, at DPRX
[    6.437350] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00102 AUX <- (ret=3D  1) 00
[    6.437364] i915 0000:00:02.0: [drm:intel_enable_pipe [i915]] enabling=
 pipe A
[    6.437427] i915 0000:00:02.0: [drm:intel_edp_backlight_on [i915]]=20
[    6.437484] i915 0000:00:02.0: [drm:intel_panel_enable_backlight [i915=
]] pipe A
[    6.437839] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00344 AUX -> (ret=3D  1) 00
[    6.437864] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 6649
[    6.530404] i915 0000:00:02.0: [drm:intel_psr_enable_locked [i915]] En=
abling PSR1
[    6.530637] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00170 AUX <- (ret=3D  1) 05
[    6.530815] [drm:drm_dp_dpcd_write [drm_kms_helper]] AUX A/DDI A/PHY A=
: 0x00600 AUX <- (ret=3D  1) 01
[    6.537730] i915 0000:00:02.0: [drm:verify_connector_state [i915]] [CO=
NNECTOR:95:eDP-1]
[    6.537807] i915 0000:00:02.0: [drm:intel_atomic_commit_tail [i915]] [=
CRTC:51:pipe A]
[    6.537870] i915 0000:00:02.0: [drm:intel_ddi_get_config [i915]] pipe =
has 30 bpp for eDP panel, overriding BIOS-provided max 24 bpp
[    6.537931] i915 0000:00:02.0: [drm:verify_single_dpll_state.isra.0 [i=
915]] DPLL 0
[    6.537988] i915 0000:00:02.0: [drm:intel_sagv_post_plane_update [i915=
]] Enabling SAGV
[    6.538041] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000061c4f2e5
[    6.538065] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000061c4f2e5
[    6.538082] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] pipe A no=
t active or no fb, skipping
[    6.538191] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] pipe B no=
t active or no fb, skipping
[    6.538289] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] pipe C no=
t active or no fb, skipping
[    6.538361] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] no active=
 fbs found, not using BIOS config
[    6.539401] i915 0000:00:02.0: [drm:intel_backlight_device_register [i=
915]] Connector eDP-1 backlight sysfs interface registered
[    6.539473] i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]=
] registering AUX A/DDI A/PHY A bus for card0-eDP-1
[    6.539671] [drm] Initialized i915 1.6.0 20201103 for 0000:00:02.0 on =
minor 0
[    6.539753] i915 0000:00:02.0: [drm:intel_opregion_resume [i915]] 1 ou=
tputs detected
[    6.540138] ACPI: video: [Firmware Bug]: ACPI(PEGP) defines _DOD but n=
ot _DOS
[    6.540185] ACPI: video: Video Device [PEGP] (multi-head: yes  rom: ye=
s  post: no)
[    6.540270] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A=
08:00/device:00/LNXVIDEO:00/input/input17
[    6.553648] ACPI: video: Video Device [GFX0] (multi-head: yes  rom: no=
  post: no)
[    6.556576] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A=
08:00/LNXVIDEO:01/input/input18
[    6.556752] snd_hda_intel 0000:00:1f.3: bound 0000:00:02.0 (ops i915_a=
udio_component_bind_ops [i915])
[    6.556842] i915 0000:00:02.0: [drm:intel_audio_init [i915]] use AUD_F=
REQ_CNTRL of 0x10 (init value 0x10)
[    6.556939] [drm:drm_client_modeset_probe [drm]]=20
[    6.556903] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DDI D IO power well
[    6.556962] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1]
[    6.556975] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:95:eDP-1]
[    6.556993] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DDI C IO power well
[    6.557059] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DDI B IO power well
[    6.557116] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling power well 2
[    6.558049] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00021 AUX -> (ret=3D  1) 00
[    6.558060] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:9=
4:DDI A/PHY A] MST support: port: no, sink: no, modparam: yes
[    6.558060] [drm:intel_dsm_detect [i915]] no _DSM method for intel dev=
ice
[    6.558130] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000
[    6.558194] [drm:intel_dsm_detect [i915]] no _DSM method for intel dev=
ice
[    6.558269] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000, 540000
[    6.558339] initcall i915_init+0x0/0x81 [i915] returned 0 after 510939=
 usecs
[    6.558344] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000, 540000
[    6.558416] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:95:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL =
BW 0Gbps
[    6.558881] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00092 AUX -> (ret=3D 12) 00 00 00 00 00 00 00 00 00 00 00 00
[    6.558892] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00
[    6.558975] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:95:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? no, YCbCr 4:=
4:4->4:2:0 conversion? no
[    6.559340] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x03000 AUX -> (ret=3D  1) 00
[    6.559656] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00201 AUX -> (ret=3D  1) 00
[    6.559665] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1] status updated from unknown to connected
[    6.559676] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    6.559706] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    6.559722] [drm:drm_add_edid_modes [drm]] ELD monitor=20
[    6.559736] [drm:drm_add_edid_modes [drm]] ELD size 20, SAD count 0
[    6.559749] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    6.559761] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    6.559795] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1] probed modes :
[    6.559803] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x48 0x9
[    6.559817] [drm:drm_client_modeset_probe [drm]] connector 95 enabled?=
 yes
[    6.559831] [drm:drm_client_modeset_probe [drm]] Not using firmware co=
nfiguration
[    6.559844] [drm:drm_client_modeset_probe [drm]] looking for cmdline m=
ode on connector 95
[    6.559856] [drm:drm_client_modeset_probe [drm]] looking for preferred=
 mode on connector 95 0
[    6.559868] [drm:drm_client_modeset_probe [drm]] found mode 3840x2160
[    6.559880] [drm:drm_client_modeset_probe [drm]] picking CRTCs for 163=
84x16384 config
[    6.559892] [drm:drm_client_modeset_probe [drm]] desired mode 3840x216=
0 set on crtc 51 (0,0)
[    6.559905] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and=
_unlock [drm_kms_helper]] test CRTC 0 primary plane
[    6.559914] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and=
_unlock [drm_kms_helper]] test CRTC 1 primary plane
[    6.559922] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and=
_unlock [drm_kms_helper]] test CRTC 2 primary plane
[    6.559929] i915 0000:00:02.0: [drm:intelfb_create [i915]] no BIOS fb,=
 allocating a new one
[    6.563880] i915 0000:00:02.0: [drm:intelfb_create [i915]] allocated 3=
840x2160 fb: 0x00040000
[    6.564072] fbcon: i915drmfb (fb0) is primary device
[    6.564112] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000006ea9c9f1
[    6.564169] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000057494916 state to 000000006ea9c9f1
[    6.564201] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:39:pla=
ne 2A] 000000008baf967d state to 000000006ea9c9f1
[    6.564231] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:39:plane 2A] state 000000008baf967d
[    6.564262] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 00000000b01bd1a1 state to 000000006ea9c9f1
[    6.564292] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:47:cursor A] state 00000000b01bd1a1
[    6.564322] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:52:pla=
ne 1B] 000000004d4ef018 state to 000000006ea9c9f1
[    6.564353] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:60:pla=
ne 2B] 000000004dceb740 state to 000000006ea9c9f1
[    6.564384] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:60:plane 2B] state 000000004dceb740
[    6.564419] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:68:cur=
sor B] 000000006f42f870 state to 000000006ea9c9f1
[    6.564451] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:68:cursor B] state 000000006f42f870
[    6.564484] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:73:pla=
ne 1C] 000000000063bae8 state to 000000006ea9c9f1
[    6.564519] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:81:pla=
ne 2C] 00000000249e47a1 state to 000000006ea9c9f1
[    6.564560] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:81:plane 2C] state 00000000249e47a1
[    6.564629] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:89:cur=
sor C] 00000000510e6b62 state to 000000006ea9c9f1
[    6.564681] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:89:cursor C] state 00000000510e6b62
[    6.564735] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000460d37ca state to 000000006ea9c9f1
[    6.564790] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [MODE:3840x2160] for [CRTC:51:pipe A] state 00000000460d37ca
[    6.564841] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_plane [drm=
]] Link [PLANE:31:plane 1A] state 0000000057494916 to [CRTC:51:pipe A]
[    6.564895] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:97] for [PLANE:31:plane 1A] state 0000000057494916
[    6.564949] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 000000006ea9c9f1
[    6.565003] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 0000000098680f74 state to 000000006ea9c9f1
[    6.565042] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 0000000098680f74 to [NOCRTC]
[    6.565053] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 0000000098680f74 to [CRTC:51:pipe =
A]
[    6.565065] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:72:pipe =
B] 000000007a8dc0e0 state to 000000006ea9c9f1
[    6.565100] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:72:pipe B] state 000000007a8dc0e0
[    6.565112] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:52:plane 1B] state 000000004d4ef018
[    6.565123] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:72:pipe B] to 000000006ea9c9f1
[    6.565137] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:93:pipe =
C] 00000000297f151e state to 000000006ea9c9f1
[    6.565151] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:93:pipe C] state 00000000297f151e
[    6.565162] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:73:plane 1C] state 000000000063bae8
[    6.565174] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:93:pipe C] to 000000006ea9c9f1
[    6.565187] [drm:drm_atomic_check_only [drm]] checking 000000006ea9c9f=
1
[    6.565202] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CR=
TC:51:pipe A] mode changed
[    6.565212] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    6.565220] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    6.565229] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CR=
TC:51:pipe A] needs all connectors, enable: y, active: y
[    6.565236] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 000000006ea9c9f1
[    6.565250] [drm:drm_atomic_add_affected_planes [drm]] Adding all curr=
ent planes for [CRTC:51:pipe A] to 000000006ea9c9f1
[    6.565263] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000006ea9c9f1
[    6.565292] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000006ea9c9f1
[    6.565306] i915 0000:00:02.0: [drm:intel_atomic_check [i915]] [CONNEC=
TOR:95:eDP-1] Limiting display bpp to 30 instead of EDID bpp 30, requeste=
d bpp 36, max platform bpp 36
[    6.565367] i915 0000:00:02.0: [drm:intel_dp_compute_config [i915]] DP=
 link computation with max lane count 4 max rate 540000 max bpp 30 pixel =
clock 533300KHz
[    6.565423] i915 0000:00:02.0: [drm:intel_dp_compute_config [i915]] Fo=
rce DSC en =3D 0
[    6.565477] i915 0000:00:02.0: [drm:intel_dp_compute_config [i915]] DP=
 lane count 4 clock 540000 bpp 30
[    6.565531] i915 0000:00:02.0: [drm:intel_dp_compute_config [i915]] DP=
 link rate required 1999875 available 2160000
[    6.565590] i915 0000:00:02.0: [drm:intel_atomic_check [i915]] hw max =
bpp: 30, pipe bpp: 30, dithering: 0
[    6.565644] i915 0000:00:02.0: [drm:intel_ddi_compute_config_late [i91=
5]] [ENCODER:94:DDI A/PHY A] [CRTC:51:pipe A]
[    6.565702] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 0 -> 1, off 0, on=
 1, ms 0
[    6.565759] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a7d1d827 t=
o 000000006ea9c9f1
[    6.565815] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000076857e8a t=
o 000000006ea9c9f1
[    6.565869] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A] ddb (   0 -    0) -> (   0 -  847), size    0 ->  847
[    6.565913] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
-> *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7, twm, swm, stwm
[    6.565956] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   4,   5,   5,   9,  11,  12,  14,   0,   0,    0
[    6.565999] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->   26,  98, 136, 152, 281, 340, 365, 432,   0,   0,    0
[    6.566042] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->   27,  99, 137, 153, 282, 341, 366, 433,   0,   0,    0
[    6.566084] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:52:p=
lane 1B]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
[    6.566144] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:52:p=
lane 1B]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.566185] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:52:p=
lane 1B]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.566246] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:52:p=
lane 1B] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.566301] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:60:p=
lane 2B]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
[    6.566354] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:60:p=
lane 2B]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.566393] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:60:p=
lane 2B]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.566432] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:60:p=
lane 2B] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567046] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:68:c=
ursor B]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
[    6.567116] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:68:c=
ursor B]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567156] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:68:c=
ursor B]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567194] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:68:c=
ursor B] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567233] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:73:p=
lane 1C]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
[    6.567271] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:73:p=
lane 1C]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567310] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:73:p=
lane 1C]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567348] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:73:p=
lane 1C] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567386] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:81:p=
lane 2C]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
[    6.567423] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:81:p=
lane 2C]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567484] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:81:p=
lane 2C]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567536] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:81:p=
lane 2C] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567574] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:89:c=
ursor C]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
[    6.567612] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:89:c=
ursor C]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567651] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:89:c=
ursor C]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567689] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:89:c=
ursor C] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
[    6.567729] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f976fb37 state 000000005747ae69 t=
o 000000006ea9c9f1
[    6.567784] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [CR=
TC:51:pipe A] enable: yes [fastset]
[    6.567858] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] act=
ive: yes, output_types: EDP (0x100), output format: RGB
[    6.567911] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] cpu=
_transcoder: EDP, pipe bpp: 30, dithering: 0
[    6.569505] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] MST=
 master transcoder: <invalid>
[    6.569585] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] por=
t sync: master transcoder: <invalid>, slave transcoder bitmask =3D 0x0
[    6.569635] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] big=
joiner: no
[    6.569683] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] spl=
itter: disabled, link count 0, overlap 0
[    6.569732] i915 0000:00:02.0: [drm:intel_dump_m_n_config.isra.0 [i915=
]] dp m_n: lanes: 4; gmch_m: 7766744, gmch_n: 8388608, link_m: 1035565, l=
ink_n: 1048576, tu: 64
[    6.569781] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] aud=
io: 0, infoframes: 0, infoframes enabled: 0x4
[    6.570397] i915 0000:00:02.0: DP SDP: VSC, revision 0, length 0
[    6.570398] i915 0000:00:02.0:     pixelformat: RGB
[    6.570399] i915 0000:00:02.0:     colorimetry: sRGB
[    6.570399] i915 0000:00:02.0:     bpc: 0
[    6.570400] i915 0000:00:02.0:     dynamic range: VESA range
[    6.570400] i915 0000:00:02.0:     content type: Not defined
[    6.570401] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] vrr=
: no, vmin: 0, vmax: 0, pipeline full: 0, flipline: 0, vmin vblank: -1, v=
max vblank: -2
[    6.570509] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] req=
uested mode:
[    6.570594] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x48 0x9
[    6.570629] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] adj=
usted mode:
[    6.570678] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x48 0x9
[    6.570691] i915 0000:00:02.0: [drm:intel_dump_crtc_timings.isra.0 [i9=
15]] crtc timings: 533300 3840 3888 3920 4000 2160 2163 2168 2222, type: =
0x48 flags: 0x9
[    6.570764] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] pip=
e mode:
[    6.570849] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x40 0x9
[    6.570862] i915 0000:00:02.0: [drm:intel_dump_crtc_timings.isra.0 [i9=
15]] crtc timings: 533300 3840 3888 3920 4000 2160 2163 2168 2222, type: =
0x40 flags: 0x9
[    6.570926] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] por=
t clock: 540000, pipe src size: 3840x2160, pixel rate 533300
[    6.570998] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] lin=
etime: 61, ips linetime: 0
[    6.571071] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] num=
_scalers: 2, scaler_users: 0x0, scaler_id: -1
[    6.571142] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] pch=
 pfit: 0x0+0+0, disabled, force thru: no
[    6.571233] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] ips=
: 0, double wide: 0
[    6.571322] i915 0000:00:02.0: [drm:skl_dump_hw_state [i915]] dpll_hw_=
state: ctrl1: 0x1, cfgcr1: 0x0, cfgcr2: 0x0
[    6.571396] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] csc=
_mode: 0x2 gamma_mode: 0x0 gamma_enable: 0 csc_enable: 0
[    6.572038] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] deg=
amma lut: 0 entries, gamma lut: 0 entries
[    6.572107] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [PL=
ANE:31:plane 1A] fb: [FB:97] 3840x2160 format =3D XR24 little-endian (0x3=
4325258) modifier =3D 0x0, visible: yes
[    6.572159] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] 	ro=
tation: 0x1, scaler: -1
[    6.572223] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] 	sr=
c: 3840.000000x2160.000000+0.000000+0.000000 dst: 3840x2160+0+0
[    6.572274] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [PL=
ANE:39:plane 2A] fb: [NOFB], visible: no
[    6.572323] i915 0000:00:02.0: [drm:intel_dump_pipe_config [i915]] [PL=
ANE:47:cursor A] fb: [NOFB], visible: no
[    6.572372] [drm:drm_atomic_commit [drm]] committing 000000006ea9c9f1
[    6.572401] i915 0000:00:02.0: [drm:intel_fbc_enable [i915]] reserved =
33177600 bytes of contiguous stolen space for FBC, threshold: 1
[    6.572454] i915 0000:00:02.0: [drm:intel_fbc_enable [i915]] Enabling =
FBC on pipe A
[    6.587697] i915 0000:00:02.0: [drm:verify_connector_state [i915]] [CO=
NNECTOR:95:eDP-1]
[    6.587772] i915 0000:00:02.0: [drm:intel_atomic_commit_tail [i915]] [=
CRTC:51:pipe A]
[    6.587836] i915 0000:00:02.0: [drm:verify_single_dpll_state.isra.0 [i=
915]] DPLL 0
[    6.587898] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000006ea9c9f1
[    6.587921] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000006ea9c9f1
[    6.587957] Console: switching to colour frame buffer device 240x67
[    6.587971] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c65eb39a
[    6.587985] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000c08bb8c6 state to 00000000c65eb39a
[    6.587999] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000290d8f03 state to 00000000c65eb39a
[    6.588012] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:39:pla=
ne 2A] 000000008879a1c8 state to 00000000c65eb39a
[    6.588025] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:39:plane 2A] state 000000008879a1c8
[    6.588038] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 0000000039e25310 state to 00000000c65eb39a
[    6.588051] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:47:cursor A] state 0000000039e25310
[    6.588063] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:52:pla=
ne 1B] 00000000d27a0c71 state to 00000000c65eb39a
[    6.588076] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:60:pla=
ne 2B] 000000003eb6ec39 state to 00000000c65eb39a
[    6.588088] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:60:plane 2B] state 000000003eb6ec39
[    6.588100] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:68:cur=
sor B] 00000000e065b701 state to 00000000c65eb39a
[    6.588112] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:68:cursor B] state 00000000e065b701
[    6.588125] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:73:pla=
ne 1C] 000000003dbc5565 state to 00000000c65eb39a
[    6.588138] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:81:pla=
ne 2C] 00000000044bc25d state to 00000000c65eb39a
[    6.588150] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:81:plane 2C] state 00000000044bc25d
[    6.588162] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:89:cur=
sor C] 00000000aa76ecae state to 00000000c65eb39a
[    6.588175] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:89:cursor C] state 00000000aa76ecae
[    6.588187] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:97] for [PLANE:31:plane 1A] state 00000000c08bb8c6
[    6.588199] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 00000000c65eb39a
[    6.588212] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 000000000f8eccdd state to 00000000c65eb39a
[    6.588225] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 000000000f8eccdd to [NOCRTC]
[    6.588237] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 000000000f8eccdd to [CRTC:51:pipe =
A]
[    6.588249] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:72:pipe =
B] 00000000e8225649 state to 00000000c65eb39a
[    6.588262] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:72:pipe B] state 00000000e8225649
[    6.588273] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:52:plane 1B] state 00000000d27a0c71
[    6.588284] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:72:pipe B] to 00000000c65eb39a
[    6.588298] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:93:pipe =
C] 00000000f831dc75 state to 00000000c65eb39a
[    6.588310] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:93:pipe C] state 00000000f831dc75
[    6.588322] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:73:plane 1C] state 000000003dbc5565
[    6.588333] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:93:pipe C] to 00000000c65eb39a
[    6.588345] [drm:drm_atomic_check_only [drm]] checking 00000000c65eb39=
a
[    6.588359] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    6.588371] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    6.588379] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000c65eb39a
[    6.588393] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000c65eb39a
[    6.588410] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    6.588471] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000b5d8b14 t=
o 00000000c65eb39a
[    6.588529] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000073d0a407 t=
o 00000000c65eb39a
[    6.588585] [drm:drm_atomic_commit [drm]] committing 00000000c65eb39a
[    6.604377] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c65eb39a
[    6.604403] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c65eb39a
[    6.978571] i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer devic=
e
[    6.982698] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000000daa761
[    6.982713] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007623249d state to 0000000000daa761
[    6.982727] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 0000000000daa761
[    6.982740] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:39:pla=
ne 2A] 000000001c0b4304 state to 0000000000daa761
[    6.982752] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:39:plane 2A] state 000000001c0b4304
[    6.982764] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 00000000927f4e33 state to 0000000000daa761
[    6.982777] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:47:cursor A] state 00000000927f4e33
[    6.982788] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:52:pla=
ne 1B] 0000000070173922 state to 0000000000daa761
[    6.982801] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:60:pla=
ne 2B] 000000009058cfba state to 0000000000daa761
[    6.982812] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:60:plane 2B] state 000000009058cfba
[    6.982824] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:68:cur=
sor B] 000000001ead5236 state to 0000000000daa761
[    6.982836] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:68:cursor B] state 000000001ead5236
[    6.982847] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:73:pla=
ne 1C] 00000000ef294212 state to 0000000000daa761
[    6.982859] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:81:pla=
ne 2C] 0000000043886288 state to 0000000000daa761
[    6.982870] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:81:plane 2C] state 0000000043886288
[    6.982881] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:89:cur=
sor C] 000000004f5083b8 state to 0000000000daa761
[    6.982893] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:89:cursor C] state 000000004f5083b8
[    6.982904] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:97] for [PLANE:31:plane 1A] state 000000007623249d
[    6.982915] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 0000000000daa761
[    6.982928] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 00000000d1aeb9f5 state to 0000000000daa761
[    6.982940] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 00000000d1aeb9f5 to [NOCRTC]
[    6.982951] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 00000000d1aeb9f5 to [CRTC:51:pipe =
A]
[    6.982963] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:72:pipe =
B] 000000006075ac9b state to 0000000000daa761
[    6.982975] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:72:pipe B] state 000000006075ac9b
[    6.982985] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:52:plane 1B] state 0000000070173922
[    6.982996] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:72:pipe B] to 0000000000daa761
[    6.983008] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:93:pipe =
C] 000000002213772a state to 0000000000daa761
[    6.983020] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:93:pipe C] state 000000002213772a
[    6.983031] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:73:plane 1C] state 00000000ef294212
[    6.983041] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:93:pipe C] to 0000000000daa761
[    6.983053] [drm:drm_atomic_check_only [drm]] checking 0000000000daa76=
1
[    6.983067] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    6.983078] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    6.983086] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 0000000000daa761
[    6.983098] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 0000000000daa761
[    6.983114] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    6.983182] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a55f28da t=
o 0000000000daa761
[    6.983236] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000070d5afeb t=
o 0000000000daa761
[    6.983290] [drm:drm_atomic_commit [drm]] committing 0000000000daa761
[    6.987524] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000000daa761
[    6.987549] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000000daa761
[    6.997913] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000000d2f4203
[    6.997930] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e49d209d state to 000000000d2f4203
[    6.997945] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 000000000d2f4203
[    6.997959] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:39:pla=
ne 2A] 00000000382608f4 state to 000000000d2f4203
[    6.997973] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:39:plane 2A] state 00000000382608f4
[    6.997986] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 00000000a8acfa88 state to 000000000d2f4203
[    6.997999] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:47:cursor A] state 00000000a8acfa88
[    6.998011] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:52:pla=
ne 1B] 00000000454d5580 state to 000000000d2f4203
[    6.998024] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:60:pla=
ne 2B] 00000000df632f75 state to 000000000d2f4203
[    6.998037] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:60:plane 2B] state 00000000df632f75
[    6.998049] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:68:cur=
sor B] 00000000721b6c0f state to 000000000d2f4203
[    6.998061] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:68:cursor B] state 00000000721b6c0f
[    6.998073] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:73:pla=
ne 1C] 00000000305539ee state to 000000000d2f4203
[    6.998086] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:81:pla=
ne 2C] 000000005157d81a state to 000000000d2f4203
[    6.998129] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:81:plane 2C] state 000000005157d81a
[    6.998158] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:89:cur=
sor C] 000000002ecc58c0 state to 000000000d2f4203
[    6.998203] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:89:cursor C] state 000000002ecc58c0
[    6.998215] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:97] for [PLANE:31:plane 1A] state 00000000e49d209d
[    6.998227] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 000000000d2f4203
[    6.998256] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 000000000cf362be state to 000000000d2f4203
[    6.998269] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 000000000cf362be to [NOCRTC]
[    6.998280] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 000000000cf362be to [CRTC:51:pipe =
A]
[    6.998308] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:72:pipe =
B] 000000007e41c850 state to 000000000d2f4203
[    6.998321] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:72:pipe B] state 000000007e41c850
[    6.998332] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:52:plane 1B] state 00000000454d5580
[    6.998343] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:72:pipe B] to 000000000d2f4203
[    6.998356] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:93:pipe =
C] 00000000793eb993 state to 000000000d2f4203
[    6.998368] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:93:pipe C] state 00000000793eb993
[    6.998379] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:73:plane 1C] state 00000000305539ee
[    6.998389] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:93:pipe C] to 000000000d2f4203
[    6.998401] [drm:drm_atomic_check_only [drm]] checking 000000000d2f420=
3
[    6.998415] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    6.998426] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    6.998434] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000000d2f4203
[    6.998447] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000000d2f4203
[    6.998463] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    6.998530] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000004b3c8761 t=
o 000000000d2f4203
[    6.998587] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003342e1b8 t=
o 000000000d2f4203
[    6.998642] [drm:drm_atomic_commit [drm]] committing 000000000d2f4203
[    7.004418] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000000d2f4203
[    7.004443] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000000d2f4203
[    7.018225] i915 0000:00:02.0: [drm:drm_fb_helper_hotplug_event.part.0=
 [drm_kms_helper]]=20
[    7.022502] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling power well 2
[    7.024627] [drm:drm_client_modeset_probe [drm]]=20
[    7.026566] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i9=
15]] restored AUD_FREQ_CNTRL to 0x10
[    7.028428] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1]
[    7.034747] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.036201] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:95:eDP-1]
[    7.039263] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.042523] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00021 AUX -> (ret=3D  1) 00
[    7.047506] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.048725] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:9=
4:DDI A/PHY A] MST support: port: no, sink: no, modparam: yes
[    7.051045] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.053178] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000
[    7.063182] calling  generic_driver_init+0x0/0x1000 [snd_hda_codec_gen=
eric] @ 288
[    7.065051] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000, 540000
[    7.067006] initcall generic_driver_init+0x0/0x1000 [snd_hda_codec_gen=
eric] returned 0 after 11 usecs
[    7.068966] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000, 540000
[    7.076883] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:95:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL =
BW 0Gbps
[    7.077395] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00092 AUX -> (ret=3D 12) 00 00 00 00 00 00 00 00 00 00 00 00
[    7.081076] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00
[    7.081124] calling  realtek_driver_init+0x0/0x1000 [snd_hda_codec_rea=
ltek] @ 733
[    7.081135] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:95:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? no, YCbCr 4:=
4:4->4:2:0 conversion? no
[    7.081492] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x03000 AUX -> (ret=3D  1) 00
[    7.081800] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00201 AUX -> (ret=3D  1) 00
[    7.081810] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    7.081829] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    7.081845] [drm:drm_add_edid_modes [drm]] ELD monitor=20
[    7.081858] [drm:drm_add_edid_modes [drm]] ELD size 20, SAD count 0
[    7.081870] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    7.081883] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    7.081914] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1] probed modes :
[    7.081923] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x48 0x9
[    7.081916] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D512/512
[    7.081936] [drm:drm_client_modeset_probe [drm]] connector 95 enabled?=
 yes
[    7.081959] snd_hda_codec_realtek hdaudioC0D0: autoconfig for ALC285: =
line_outs=3D1 (0x14/0x0/0x0/0x0/0x0) type:speaker
[    7.081962] snd_hda_codec_realtek hdaudioC0D0:    speaker_outs=3D0 (0x=
0/0x0/0x0/0x0/0x0)
[    7.081964] snd_hda_codec_realtek hdaudioC0D0:    hp_outs=3D1 (0x21/0x=
0/0x0/0x0/0x0)
[    7.081966] snd_hda_codec_realtek hdaudioC0D0:    mono: mono_out=3D0x0=

[    7.081967] snd_hda_codec_realtek hdaudioC0D0:    inputs:
[    7.081968] snd_hda_codec_realtek hdaudioC0D0:      Mic=3D0x19
[    7.081969] snd_hda_codec_realtek hdaudioC0D0:      Internal Mic=3D0x1=
2
[    7.081963] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 512
[    7.082007] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 24242
[    7.082064] [drm:drm_client_modeset_probe [drm]] Not using firmware co=
nfiguration
[    7.082077] [drm:drm_client_modeset_probe [drm]] looking for cmdline m=
ode on connector 95
[    7.082089] [drm:drm_client_modeset_probe [drm]] looking for preferred=
 mode on connector 95 0
[    7.082105] [drm:drm_client_modeset_probe [drm]] found mode 3840x2160
[    7.082117] [drm:drm_client_modeset_probe [drm]] picking CRTCs for 384=
0x2160 config
[    7.082130] [drm:drm_client_modeset_probe [drm]] desired mode 3840x216=
0 set on crtc 51 (0,0)
[    7.082144] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c65eb39a
[    7.082177] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000044bc25d state to 00000000c65eb39a
[    7.082214] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 00000000c65eb39a
[    7.082228] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:39:pla=
ne 2A] 000000003dbc5565 state to 00000000c65eb39a
[    7.082242] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:39:plane 2A] state 000000003dbc5565
[    7.082255] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 00000000e065b701 state to 00000000c65eb39a
[    7.082269] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:47:cursor A] state 00000000e065b701
[    7.082281] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:52:pla=
ne 1B] 00000000d887a75a state to 00000000c65eb39a
[    7.082295] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:60:pla=
ne 2B] 000000003eb6ec39 state to 00000000c65eb39a
[    7.082308] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:60:plane 2B] state 000000003eb6ec39
[    7.082321] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:68:cur=
sor B] 00000000d27a0c71 state to 00000000c65eb39a
[    7.082334] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:68:cursor B] state 00000000d27a0c71
[    7.082346] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:73:pla=
ne 1C] 0000000039e25310 state to 00000000c65eb39a
[    7.082360] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:81:pla=
ne 2C] 000000008879a1c8 state to 00000000c65eb39a
[    7.082373] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:81:plane 2C] state 000000008879a1c8
[    7.082385] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:89:cur=
sor C] 00000000c08bb8c6 state to 00000000c65eb39a
[    7.082398] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:89:cursor C] state 00000000c08bb8c6
[    7.082411] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:97] for [PLANE:31:plane 1A] state 00000000044bc25d
[    7.082423] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 00000000c65eb39a
[    7.082438] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 000000009b9458a5 state to 00000000c65eb39a
[    7.082452] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 000000009b9458a5 to [NOCRTC]
[    7.082479] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 000000009b9458a5 to [CRTC:51:pipe =
A]
[    7.082514] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:72:pipe =
B] 00000000e8225649 state to 00000000c65eb39a
[    7.082527] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:72:pipe B] state 00000000e8225649
[    7.082539] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:52:plane 1B] state 00000000d887a75a
[    7.082551] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:72:pipe B] to 00000000c65eb39a
[    7.082565] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:93:pipe =
C] 00000000297f151e state to 00000000c65eb39a
[    7.082579] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:93:pipe C] state 00000000297f151e
[    7.082591] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:73:plane 1C] state 0000000039e25310
[    7.082602] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:93:pipe C] to 00000000c65eb39a
[    7.082616] [drm:drm_atomic_check_only [drm]] checking 00000000c65eb39=
a
[    7.082630] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    7.082639] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    7.082648] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000c65eb39a
[    7.082662] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000c65eb39a
[    7.082679] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    7.082727] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a7d1d827 t=
o 00000000c65eb39a
[    7.082770] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000073d0a407 t=
o 00000000c65eb39a
[    7.082813] [drm:drm_atomic_commit [drm]] committing 00000000c65eb39a
[    7.087433] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c65eb39a
[    7.130725] initcall realtek_driver_init+0x0/0x1000 [snd_hda_codec_rea=
ltek] returned 0 after 48432 usecs
[    7.132142] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c65eb39a
[    7.141350] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
[    7.221008] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
[    7.221067] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
[    7.224847] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
[    7.224884] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
[    7.228632] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
[    7.228669] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
[    7.232390] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
[    7.234761] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
[    7.235581] input: HDA Intel PCH Mic as /devices/pci0000:00/0000:00:1f=
=2E3/sound/card0/input19
[    7.235674] input: HDA Intel PCH Headphone as /devices/pci0000:00/0000=
:00:1f.3/sound/card0/input20
[    7.235721] input: HDA Intel PCH HDMI/DP,pcm=3D3 as /devices/pci0000:0=
0/0000:00:1f.3/sound/card0/input21
[    7.235810] input: HDA Intel PCH HDMI/DP,pcm=3D7 as /devices/pci0000:0=
0/0000:00:1f.3/sound/card0/input22
[    7.235881] input: HDA Intel PCH HDMI/DP,pcm=3D8 as /devices/pci0000:0=
0/0000:00:1f.3/sound/card0/input23
[    7.237081] input: HDA Intel PCH HDMI/DP,pcm=3D9 as /devices/pci0000:0=
0/0000:00:1f.3/sound/card0/input24
[    7.237135] input: HDA Intel PCH HDMI/DP,pcm=3D10 as /devices/pci0000:=
00/0000:00:1f.3/sound/card0/input25
[    7.315059] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.458635] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.461722] systemd-journald[236]: Journal effective settings seal=3Dy=
es compress=3Dyes compress_threshold_bytes=3D512B
[    7.464570] systemd-journald[236]: Fixed min_use=3D3.9G max_use=3D4.0G=
 max_size=3D128.0M min_size=3D512.0K keep_free=3D4.0G n_max_files=3D100
[    7.477662] systemd-journald[236]: Journal effective settings seal=3Dn=
o compress=3Dyes compress_threshold_bytes=3D512B
[    7.513129] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.516956] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.517292] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.517738] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.535370] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.540893] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.540988] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.544269] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b95022a6
[    7.544293] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000041c06477 state to 00000000b95022a6
[    7.544310] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b648cdfa state to 00000000b95022a6
[    7.544324] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:39:pla=
ne 2A] 000000009af3040d state to 00000000b95022a6
[    7.544339] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:39:plane 2A] state 000000009af3040d
[    7.544353] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 00000000c4bba3e4 state to 00000000b95022a6
[    7.544367] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:47:cursor A] state 00000000c4bba3e4
[    7.544380] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:52:pla=
ne 1B] 000000003ce6e97a state to 00000000b95022a6
[    7.544394] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:60:pla=
ne 2B] 00000000f8f0f464 state to 00000000b95022a6
[    7.544408] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:60:plane 2B] state 00000000f8f0f464
[    7.544420] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:68:cur=
sor B] 00000000957b931f state to 00000000b95022a6
[    7.544434] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:68:cursor B] state 00000000957b931f
[    7.544446] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:73:pla=
ne 1C] 000000002378b115 state to 00000000b95022a6
[    7.544460] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:81:pla=
ne 2C] 000000001fdc120c state to 00000000b95022a6
[    7.544473] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:81:plane 2C] state 000000001fdc120c
[    7.544486] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:89:cur=
sor C] 00000000a664b23d state to 00000000b95022a6
[    7.544500] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:89:cursor C] state 00000000a664b23d
[    7.544514] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:97] for [PLANE:31:plane 1A] state 0000000041c06477
[    7.544526] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 00000000b95022a6
[    7.544541] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 00000000da9434cc state to 00000000b95022a6
[    7.544555] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 00000000da9434cc to [NOCRTC]
[    7.544567] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 00000000da9434cc to [CRTC:51:pipe =
A]
[    7.544580] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:72:pipe =
B] 000000007619640c state to 00000000b95022a6
[    7.544595] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:72:pipe B] state 000000007619640c
[    7.544607] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:52:plane 1B] state 000000003ce6e97a
[    7.544619] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:72:pipe B] to 00000000b95022a6
[    7.544633] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:93:pipe =
C] 000000004b2241fc state to 00000000b95022a6
[    7.544647] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:93:pipe C] state 000000004b2241fc
[    7.544659] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:73:plane 1C] state 000000002378b115
[    7.544671] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:93:pipe C] to 00000000b95022a6
[    7.544685] [drm:drm_atomic_check_only [drm]] checking 00000000b95022a=
6
[    7.544700] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    7.544712] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    7.544722] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000b95022a6
[    7.544736] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000b95022a6
[    7.544754] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    7.544808] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000007253bd3b t=
o 00000000b95022a6
[    7.544852] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e3df9be5 t=
o 00000000b95022a6
[    7.544895] [drm:drm_atomic_commit [drm]] committing 00000000b95022a6
[    7.552589] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.554111] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b95022a6
[    7.554139] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b95022a6
[    7.556006] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.568561] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.575334] [drm:drm_mode_addfb2 [drm]] [FB:103]
[    7.582053] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.589992] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.593405] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.593434] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.598221] snd_hda_intel 0000:01:00.1: calling  nv_msi_ht_cap_quirk_l=
eaf+0x0/0x30 @ 766
[    7.598236] snd_hda_intel 0000:01:00.1: nv_msi_ht_cap_quirk_leaf+0x0/0=
x30 took 7 usecs
[    7.652088] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.652118] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.659109] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.667700] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.685119] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.702374] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1]
[    7.702397] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:95:eDP-1]
[    7.702775] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00021 AUX -> (ret=3D  1) 00
[    7.702789] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:9=
4:DDI A/PHY A] MST support: port: no, sink: no, modparam: yes
[    7.702840] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000
[    7.702885] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000, 540000
[    7.702926] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000, 540000
[    7.702978] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:95:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL =
BW 0Gbps
[    7.703495] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00092 AUX -> (ret=3D 12) 00 00 00 00 00 00 00 00 00 00 00 00
[    7.703505] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00
[    7.703547] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:95:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? no, YCbCr 4:=
4:4->4:2:0 conversion? no
[    7.703890] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x03000 AUX -> (ret=3D  1) 00
[    7.704196] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00201 AUX -> (ret=3D  1) 00
[    7.704205] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    7.704226] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    7.704243] [drm:drm_add_edid_modes [drm]] ELD monitor=20
[    7.704258] [drm:drm_add_edid_modes [drm]] ELD size 20, SAD count 0
[    7.704273] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    7.704287] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    7.704321] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1] probed modes :
[    7.704330] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x48 0x9
[    7.704432] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e68ad750
[    7.704458] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 000000008e1608d2 state to 00000000e68ad750
[    7.704477] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:47:cursor A] state 000000008e1608d2
[    7.704508] [drm:drm_atomic_check_only [drm]] checking 00000000e68ad75=
0
[    7.704527] [drm:drm_atomic_commit [drm]] committing 00000000e68ad750
[    7.704554] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e68ad750
[    7.704573] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e68ad750
[    7.704594] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e68ad750
[    7.704610] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:68:cur=
sor B] 000000000fdc8980 state to 00000000e68ad750
[    7.704626] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:68:cursor B] state 000000000fdc8980
[    7.704640] [drm:drm_atomic_check_only [drm]] checking 00000000e68ad75=
0
[    7.704656] [drm:drm_atomic_commit [drm]] committing 00000000e68ad750
[    7.704676] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e68ad750
[    7.704691] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e68ad750
[    7.704710] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e68ad750
[    7.704725] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:89:cur=
sor C] 000000007110c91a state to 00000000e68ad750
[    7.704741] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:89:cursor C] state 000000007110c91a
[    7.704755] [drm:drm_atomic_check_only [drm]] checking 00000000e68ad75=
0
[    7.704770] [drm:drm_atomic_commit [drm]] committing 00000000e68ad750
[    7.704791] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e68ad750
[    7.704806] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e68ad750
[    7.704827] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1]
[    7.704837] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:95:eDP-1]
[    7.705182] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00021 AUX -> (ret=3D  1) 00
[    7.705192] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:9=
4:DDI A/PHY A] MST support: port: no, sink: no, modparam: yes
[    7.705236] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000
[    7.705278] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000, 540000
[    7.705319] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000, 540000
[    7.705360] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:95:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL =
BW 0Gbps
[    7.705783] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00092 AUX -> (ret=3D 12) 00 00 00 00 00 00 00 00 00 00 00 00
[    7.705792] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00
[    7.705834] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:95:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? no, YCbCr 4:=
4:4->4:2:0 conversion? no
[    7.706176] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x03000 AUX -> (ret=3D  1) 00
[    7.706494] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00201 AUX -> (ret=3D  1) 00
[    7.706510] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    7.706533] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    7.706558] [drm:drm_add_edid_modes [drm]] ELD monitor=20
[    7.706580] [drm:drm_add_edid_modes [drm]] ELD size 20, SAD count 0
[    7.706602] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    7.706624] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    7.706670] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1] probed modes :
[    7.706685] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x48 0x9
[    7.726066] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e68ad750
[    7.726092] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 0000000098f09265 state to 00000000e68ad750
[    7.726149] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 00000000e68ad750
[    7.726186] [drm:drm_atomic_check_only [drm]] checking 00000000e68ad75=
0
[    7.726206] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    7.726227] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    7.726239] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000e68ad750
[    7.726272] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000e68ad750
[    7.726295] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000de2a4bfe t=
o 00000000e68ad750
[    7.726366] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000032467672 t=
o 00000000e68ad750
[    7.726422] [drm:drm_atomic_commit [drm]] committing 00000000e68ad750
[    7.737419] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e68ad750
[    7.737440] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e68ad750
[    7.737461] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e68ad750
[    7.737474] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e68ad750
[    7.737488] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e68ad750
[    7.737504] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e68ad750
[    7.737517] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e68ad750
[    7.737530] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e68ad750
[    7.737548] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e68ad750
[    7.737561] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 0000000098188111 state to 00000000e68ad750
[    7.737575] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000007e41c850 state to 00000000e68ad750
[    7.737588] [drm:drm_atomic_check_only [drm]] checking 00000000e68ad75=
0
[    7.737603] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    7.737613] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    7.737621] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000e68ad750
[    7.737635] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000e68ad750
[    7.737650] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d19ef598 t=
o 00000000e68ad750
[    7.737699] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000032467672 t=
o 00000000e68ad750
[    7.737739] [drm:drm_atomic_commit [drm]] committing 00000000e68ad750
[    7.754077] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e68ad750
[    7.754113] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e68ad750
[    7.754133] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002b85db39
[    7.754162] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 00000000dcc68aa6 state to 000000002b85db39
[    7.754188] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000c3d258f9 state to 000000002b85db39
[    7.754212] [drm:drm_atomic_check_only [drm]] checking 000000002b85db3=
9
[    7.754237] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    7.754255] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    7.754269] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000002b85db39
[    7.754293] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000002b85db39
[    7.754319] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000004db0312 t=
o 000000002b85db39
[    7.754393] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e6ec4adc t=
o 000000002b85db39
[    7.754459] [drm:drm_atomic_commit [drm]] committing 000000002b85db39
[    7.770752] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002b85db39
[    7.770782] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002b85db39
[    7.770819] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002b85db39
[    7.770845] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 000000009c1ecd34 state to 000000002b85db39
[    7.770871] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b648cdfa state to 000000002b85db39
[    7.770896] [drm:drm_atomic_check_only [drm]] checking 000000002b85db3=
9
[    7.770921] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    7.770938] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    7.770954] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000002b85db39
[    7.770978] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000002b85db39
[    7.771005] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b473e912 t=
o 000000002b85db39
[    7.771079] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e6ec4adc t=
o 000000002b85db39
[    7.771147] [drm:drm_atomic_commit [drm]] committing 000000002b85db39
[    7.787418] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002b85db39
[    7.787445] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002b85db39
[    7.787470] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002b85db39
[    7.787488] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 00000000dcc68aa6 state to 000000002b85db39
[    7.787506] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000c3d258f9 state to 000000002b85db39
[    7.787522] [drm:drm_atomic_check_only [drm]] checking 000000002b85db3=
9
[    7.787540] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    7.787558] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    7.787587] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000002b85db39
[    7.787609] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000002b85db39
[    7.787633] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000006acc165a t=
o 000000002b85db39
[    7.787703] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e6ec4adc t=
o 000000002b85db39
[    7.787765] [drm:drm_atomic_commit [drm]] committing 000000002b85db39
[    7.804110] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002b85db39
[    7.804135] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002b85db39
[    7.819754] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    7.876605] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ea7fe507
[    7.876634] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000672db722 state to 00000000ea7fe507
[    7.876650] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 00000000ea7fe507
[    7.876665] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 000000007bd322ba state to 00000000ea7fe507
[    7.876679] [drm:drm_atomic_check_only [drm]] checking 00000000ea7fe50=
7
[    7.876695] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    7.876707] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    7.876716] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000ea7fe507
[    7.876731] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000ea7fe507
[    7.876749] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000096ecf0a6 t=
o 00000000ea7fe507
[    7.876804] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b3955ab8 t=
o 00000000ea7fe507
[    7.876846] [drm:drm_atomic_commit [drm]] committing 00000000ea7fe507
[    7.887434] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ea7fe507
[    7.887455] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ea7fe507
[    7.887877] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ea7fe507
[    7.887895] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002ecd9178 state to 00000000ea7fe507
[    7.887911] [drm:drm_atomic_check_only [drm]] checking 00000000ea7fe50=
7
[    7.887927] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b81d3b8f t=
o 00000000ea7fe507
[    7.887980] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b3955ab8 t=
o 00000000ea7fe507
[    7.888022] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001ae4eb78 state to 00000000ea7fe507
[    7.888038] [drm:drm_atomic_commit [drm]] committing 00000000ea7fe507
[    7.904335] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ea7fe507
[    7.904360] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ea7fe507
[    7.904398] [drm:drm_mode_addfb2 [drm]] [FB:105]
[    7.904432] [drm:drm_mode_setcrtc [drm]] [CRTC:51:pipe A]
[    7.904447] [drm:drm_mode_setcrtc [drm]] [CONNECTOR:95:eDP-1]
[    7.904459] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ea7fe507
[    7.904475] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000672db722 state to 00000000ea7fe507
[    7.904489] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000022a5d4db state to 00000000ea7fe507
[    7.904504] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [MODE:] for [CRTC:51:pipe A] state 00000000672db722
[    7.904518] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000022a5d4db
[    7.904531] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 00000000ea7fe507
[    7.904546] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 000000004186db72 state to 00000000ea7fe507
[    7.904560] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 000000004186db72 to [NOCRTC]
[    7.904573] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_connector =
[drm]] Link [CONNECTOR:95:eDP-1] state 000000004186db72 to [CRTC:51:pipe =
A]
[    7.904586] [drm:drm_atomic_check_only [drm]] checking 00000000ea7fe50=
7
[    7.904601] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    7.904614] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    7.904623] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000ea7fe507
[    7.904637] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000ea7fe507
[    7.904655] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    7.904707] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b81d3b8f t=
o 00000000ea7fe507
[    7.904751] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b3955ab8 t=
o 00000000ea7fe507
[    7.904792] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:39:pla=
ne 2A] 000000008eec1112 state to 00000000ea7fe507
[    7.904807] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 000000002c1cccac state to 00000000ea7fe507
[    7.904822] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7, twm, swm, stwm =
-> *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7, twm, swm, stwm
[    7.904850] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]   lines    0,   4,   5,   5,   9,  11,  12,  14,   0,   0,    0 =
->    0,   6,   7,   7,  11,  13,  14,  16,   0,   0,    0
[    7.904879] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]  blocks   26,  98, 136, 152, 281, 340, 365, 432,   0,   0,    0 =
->   89, 161, 198, 212, 332, 392, 422, 482,   0,   0,    0
[    7.904906] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A] min_ddb   27,  99, 137, 153, 282, 341, 366, 433,   0,   0,    0 =
->   90, 162, 199, 213, 333, 393, 423, 483,   0,   0,    0
[    7.904935] [drm:drm_atomic_commit [drm]] committing 00000000ea7fe507
[    7.905833] i915 0000:00:02.0: [drm:__intel_fbc_disable [i915]] Disabl=
ing FBC on pipe A
[    7.905879] i915 0000:00:02.0: [drm:intel_fbc_enable [i915]] reserved =
33177600 bytes of contiguous stolen space for FBC, threshold: 1
[    7.905920] i915 0000:00:02.0: [drm:intel_fbc_enable [i915]] Enabling =
FBC on pipe A
[    7.920981] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ea7fe507
[    7.921003] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ea7fe507
[    7.921025] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ea7fe507
[    7.921040] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002ecd9178 state to 00000000ea7fe507
[    7.921054] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 00000000ea7fe507
[    7.921068] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 00000000bfb52b2b state to 00000000ea7fe507
[    7.921082] [drm:drm_atomic_check_only [drm]] checking 00000000ea7fe50=
7
[    7.921096] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    7.921106] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    7.921114] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000ea7fe507
[    7.921129] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 00000000ea7fe507
[    7.921144] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000856e38b0 t=
o 00000000ea7fe507
[    7.921192] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b3955ab8 t=
o 00000000ea7fe507
[    7.921234] [drm:drm_atomic_commit [drm]] committing 00000000ea7fe507
[    7.937680] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ea7fe507
[    7.937706] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ea7fe507
[    7.937728] [drm:drm_mode_setcrtc [drm]] [CRTC:72:pipe B]
[    7.937743] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ea7fe507
[    7.937757] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:72:pipe =
B] 00000000672db722 state to 00000000ea7fe507
[    7.937772] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:52:pla=
ne 1B] 000000001ae4eb78 state to 00000000ea7fe507
[    7.937786] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:72:pipe B] state 00000000672db722
[    7.937800] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:52:plane 1B] state 000000001ae4eb78
[    7.937813] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:72:pipe B] to 00000000ea7fe507
[    7.937827] [drm:drm_atomic_check_only [drm]] checking 00000000ea7fe50=
7
[    7.937843] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b81d3b8f t=
o 00000000ea7fe507
[    7.937895] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b3955ab8 t=
o 00000000ea7fe507
[    7.937937] [drm:drm_atomic_commit [drm]] committing 00000000ea7fe507
[    7.937961] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ea7fe507
[    7.937976] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ea7fe507
[    7.937991] [drm:drm_mode_setcrtc [drm]] [CRTC:93:pipe C]
[    7.938003] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ea7fe507
[    7.938018] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:93:pipe =
C] 00000000b0cde32b state to 00000000ea7fe507
[    7.938031] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:73:pla=
ne 1C] 0000000053856823 state to 00000000ea7fe507
[    7.938045] i915 0000:00:02.0: [drm:drm_atomic_set_mode_for_crtc [drm]=
] Set [NOMODE] for [CRTC:93:pipe C] state 00000000b0cde32b
[    7.938058] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:73:plane 1C] state 0000000053856823
[    7.938070] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:93:pipe C] to 00000000ea7fe507
[    7.938083] [drm:drm_atomic_check_only [drm]] checking 00000000ea7fe50=
7
[    7.938146] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008f457b62 t=
o 00000000ea7fe507
[    7.938223] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b3955ab8 t=
o 00000000ea7fe507
[    7.938267] [drm:drm_atomic_commit [drm]] committing 00000000ea7fe507
[    7.938296] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ea7fe507
[    7.938334] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ea7fe507
[    7.985278] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.028477] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.093937] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.094405] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.095057] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.095535] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.096212] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.097680] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.101322] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.101688] systemd-journald[236]: Compressed data object 533 -> 415 u=
sing LZ4
[    8.107782] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.131600] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.131630] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.132233] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.132259] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.132835] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.132862] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.136128] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.136369] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.136561] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.136998] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.137086] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.137677] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.137740] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.138433] calling  rfcomm_init+0x0/0xde [rfcomm] @ 1009
[    8.138462] Bluetooth: RFCOMM TTY layer initialized
[    8.138466] Bluetooth: RFCOMM socket layer initialized
[    8.138469] Bluetooth: RFCOMM ver 1.11
[    8.138470] initcall rfcomm_init+0x0/0xde [rfcomm] returned 0 after 29=
 usecs
[    8.199916] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1]
[    8.199933] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:95:eDP-1]
[    8.200302] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00021 AUX -> (ret=3D  1) 00
[    8.200312] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:9=
4:DDI A/PHY A] MST support: port: no, sink: no, modparam: yes
[    8.200380] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000
[    8.200416] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000, 540000
[    8.200451] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000, 540000
[    8.200486] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:95:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL =
BW 0Gbps
[    8.200930] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00092 AUX -> (ret=3D 12) 00 00 00 00 00 00 00 00 00 00 00 00
[    8.200938] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00
[    8.200976] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:95:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? no, YCbCr 4:=
4:4->4:2:0 conversion? no
[    8.201311] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x03000 AUX -> (ret=3D  1) 00
[    8.201617] [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A:=
 0x00201 AUX -> (ret=3D  1) 00
[    8.201625] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    8.201643] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    8.201659] [drm:drm_add_edid_modes [drm]] ELD monitor=20
[    8.201672] [drm:drm_add_edid_modes [drm]] ELD size 20, SAD count 0
[    8.201685] [drm:drm_add_display_info [drm]] Supported Monitor Refresh=
 rate range is 0 Hz - 0 Hz
[    8.201698] [drm:drm_add_display_info [drm]] non_desktop set to 0
[    8.201728] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:95:eDP-1] probed modes :
[    8.201736] [drm:drm_mode_debug_printmodeline [drm]] Modeline "3840x21=
60": 60 533300 3840 3888 3920 4000 2160 2163 2168 2222 0x48 0x9
[    8.297169] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000006e904ccf
[    8.297192] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 0000000049453a89 state to 000000006e904ccf
[    8.297207] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [NOFB] for [PLANE:47:cursor A] state 0000000049453a89
[    8.297221] [drm:drm_atomic_check_only [drm]] checking 000000006e904cc=
f
[    8.297237] [drm:drm_atomic_commit [drm]] committing 000000006e904ccf
[    8.297260] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000006e904ccf
[    8.297274] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000006e904ccf
[    8.297294] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000006e904ccf
[    8.297307] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:47:cur=
sor A] 0000000056e57cc2 state to 000000006e904ccf
[    8.297321] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f5c7ff3d state to 000000006e904ccf
[    8.297334] i915 0000:00:02.0: [drm:drm_atomic_set_crtc_for_plane [drm=
]] Link [PLANE:47:cursor A] state 0000000056e57cc2 to [CRTC:51:pipe A]
[    8.297346] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:102] for [PLANE:47:cursor A] state 0000000056e57cc2
[    8.297358] [drm:drm_atomic_check_only [drm]] checking 000000006e904cc=
f
[    8.297373] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:47:cursor A] visible 0 -> 1, off 0, on=
 1, ms 0
[    8.297422] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d3a90445 t=
o 000000006e904ccf
[    8.297463] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f0a0d440 t=
o 000000006e904ccf
[    8.297500] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000cc0eac10 state to 000000006e904ccf
[    8.297514] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:39:pla=
ne 2A] 000000005b72bb19 state to 000000006e904ccf
[    8.297527] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:47:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm =
-> *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7, twm, swm, stwm
[    8.297552] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:47:c=
ursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->    0,   4,   5,   5,   9,  11,  12,  14,   0,   0,    0
[    8.297577] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:47:c=
ursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->   26,  26,  26,  26,  29,  35,  38,  44,   0,   0,    0
[    8.297602] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:47:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 =
->   27,  27,  27,  27,  30,  36,  39,  45,   0,   0,    0
[    8.297627] [drm:drm_atomic_commit [drm]] committing 000000006e904ccf
[    8.297700] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000006e904ccf
[    8.297716] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000006e904ccf
[    8.719569] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.719606] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.844682] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.845538] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.845616] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.859425] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.907742] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.943384] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.943498] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.943973] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.955419] wlp0s20f3: authenticate with 9c:d3:6d:a3:b2:e7
[    8.958392] wlp0s20f3: send auth to 9c:d3:6d:a3:b2:e7 (try 1/3)
[    8.967857] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    8.983870] wlp0s20f3: authenticated
[    8.986115] wlp0s20f3: associate with 9c:d3:6d:a3:b2:e7 (try 1/3)
[    8.987179] wlp0s20f3: RX AssocResp from 9c:d3:6d:a3:b2:e7 (capab=3D0x=
11 status=3D0 aid=3D7)
[    8.990251] wlp0s20f3: associated
[    9.012525] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.028758] calling  crypto_ccm_module_init+0x0/0x1000 [ccm] @ 1123
[    9.028766] initcall crypto_ccm_module_init+0x0/0x1000 [ccm] returned =
0 after 0 usecs
[    9.061740] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.061778] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.072534] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.072581] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.118543] IPv6: ADDRCONF(NETDEV_CHANGE): wlp0s20f3: link becomes rea=
dy
[    9.154925] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.155659] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.156473] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.157251] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.158054] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.159388] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.159508] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.159624] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.161893] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.165090] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.165496] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.166439] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.166867] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.167050] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.168570] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.170339] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.170586] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.174414] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.174625] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.175107] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.175371] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.175622] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.176549] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.177045] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.177790] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.178262] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.181575] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.181723] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.182779] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.182924] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.184182] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.184447] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.186026] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.186411] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.201707] rfkill: input handler disabled
[    9.262202] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.262640] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[    9.308397] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003d504b32
[    9.308435] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 000000003d504b32
[    9.308458] [drm:drm_atomic_add_affected_connectors [drm]] Adding all =
current connectors for [CRTC:51:pipe A] to 000000003d504b32
[    9.308480] [drm:drm_atomic_get_connector_state [drm]] Added [CONNECTO=
R:95:eDP-1] 00000000922eb56b state to 000000003d504b32
[    9.308507] [drm:drm_atomic_check_only [drm]] checking 000000003d504b3=
2
[    9.308526] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] Upd=
ating routing for [CONNECTOR:95:eDP-1]
[    9.308542] [drm:drm_atomic_helper_check_modeset [drm_kms_helper]] [CO=
NNECTOR:95:eDP-1] keeps [ENCODER:94:DDI A/PHY A], now on [CRTC:51:pipe A]=

[    9.308559] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000003d504b32
[    9.308585] [drm:drm_atomic_add_encoder_bridges [drm]] Adding all brid=
ges for [encoder:94:DDI A/PHY A] to 000000003d504b32
[    9.308617] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ccf0c711 t=
o 000000003d504b32
[    9.308708] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000add8dd48 t=
o 000000003d504b32
[    9.308769] [drm:drm_atomic_commit [drm]] committing 000000003d504b32
[    9.330853] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003d504b32
[    9.330886] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003d504b32
[    9.366541] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling power well 2
[    9.696542] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:107] for [PLANE:47:cursor A] state 0000000048b9531b
[    9.696577] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:47:cursor A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.696659] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:107] for [PLANE:47:cursor A] state 00000000ee79111c
[    9.696679] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:47:cursor A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.696780] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3b5eecc
[    9.696802] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000005c32bd85 state to 00000000f3b5eecc
[    9.696819] [drm:drm_atomic_check_only [drm]] checking 00000000f3b5eec=
c
[    9.696840] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000fa500fe5 t=
o 00000000f3b5eecc
[    9.696893] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c8fec187 t=
o 00000000f3b5eecc
[    9.696942] [drm:drm_atomic_commit [drm]] committing 00000000f3b5eecc
[    9.718668] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3b5eecc
[    9.718696] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3b5eecc
[    9.750611] [drm:drm_mode_addfb2 [drm]] [FB:103]
[    9.750642] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3b5eecc
[    9.750660] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000005e856cce state to 00000000f3b5eecc
[    9.750674] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007dca33d1 state to 00000000f3b5eecc
[    9.750689] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000007dca33d1
[    9.750703] [drm:drm_atomic_check_only [drm]] checking 00000000f3b5eec=
c
[    9.750722] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.750781] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000005a37c844 t=
o 00000000f3b5eecc
[    9.750826] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c8fec187 t=
o 00000000f3b5eecc
[    9.750867] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f3b5eecc nonblocking
[    9.768590] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3b5eecc
[    9.768612] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3b5eecc
[    9.839896] [drm:drm_mode_addfb2 [drm]] [FB:105]
[    9.839921] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3b5eecc
[    9.839937] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000005c32bd85 state to 00000000f3b5eecc
[    9.839950] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000045c26a9b state to 00000000f3b5eecc
[    9.839964] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000045c26a9b
[    9.839977] [drm:drm_atomic_check_only [drm]] checking 00000000f3b5eec=
c
[    9.839994] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.840045] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c356eedf t=
o 00000000f3b5eecc
[    9.840085] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000084e32500 t=
o 00000000f3b5eecc
[    9.840122] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f3b5eecc nonblocking
[    9.844912] i915 0000:00:02.0: [drm:intel_atomic_commit [i915]] Prepar=
ing state failed with -512
[    9.845105] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b42ffaa4
[    9.845131] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 00000000b42ffaa4
[    9.845144] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007e4affe4 state to 00000000b42ffaa4
[    9.845157] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000007e4affe4
[    9.845170] [drm:drm_atomic_check_only [drm]] checking 00000000b42ffaa=
4
[    9.845188] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.845229] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000042dd304b t=
o 00000000b42ffaa4
[    9.845267] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000001f071b4f t=
o 00000000b42ffaa4
[    9.845304] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b42ffaa4 nonblocking
[    9.845333] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3b5eecc
[    9.845348] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3b5eecc
[    9.849883] i915 0000:00:02.0: [drm:intel_atomic_commit [i915]] Prepar=
ing state failed with -512
[    9.849957] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3b5eecc
[    9.849981] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000aa4f7470 state to 00000000f3b5eecc
[    9.849995] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000045c26a9b state to 00000000f3b5eecc
[    9.850009] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000045c26a9b
[    9.850022] [drm:drm_atomic_check_only [drm]] checking 00000000f3b5eec=
c
[    9.850042] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.850085] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000fb935a84 t=
o 00000000f3b5eecc
[    9.850181] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000084e32500 t=
o 00000000f3b5eecc
[    9.850282] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f3b5eecc nonblocking
[    9.850354] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b42ffaa4
[    9.850370] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b42ffaa4
[    9.854904] i915 0000:00:02.0: [drm:intel_atomic_commit [i915]] Prepar=
ing state failed with -512
[    9.855057] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3b5eecc
[    9.855081] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3b5eecc
[    9.855103] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3b5eecc
[    9.855116] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000aa4f7470 state to 00000000f3b5eecc
[    9.855130] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000045c26a9b state to 00000000f3b5eecc
[    9.855143] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000045c26a9b
[    9.855155] [drm:drm_atomic_check_only [drm]] checking 00000000f3b5eec=
c
[    9.855173] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.855216] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c356eedf t=
o 00000000f3b5eecc
[    9.855255] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000084e32500 t=
o 00000000f3b5eecc
[    9.855291] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f3b5eecc nonblocking
[    9.859910] i915 0000:00:02.0: [drm:intel_atomic_commit [i915]] Prepar=
ing state failed with -512
[    9.860106] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3b5eecc
[    9.860132] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3b5eecc
[    9.860154] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3b5eecc
[    9.860169] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000aa4f7470 state to 00000000f3b5eecc
[    9.860183] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000045c26a9b state to 00000000f3b5eecc
[    9.860198] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000045c26a9b
[    9.860210] [drm:drm_atomic_check_only [drm]] checking 00000000f3b5eec=
c
[    9.860230] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.860272] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000fb935a84 t=
o 00000000f3b5eecc
[    9.860311] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000084e32500 t=
o 00000000f3b5eecc
[    9.860348] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f3b5eecc nonblocking
[    9.868777] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3b5eecc
[    9.868802] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3b5eecc
[    9.877307] [drm:drm_mode_addfb2 [drm]] [FB:103]
[    9.877334] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b42ffaa4
[    9.877351] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 00000000b42ffaa4
[    9.877365] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000790ffa53 state to 00000000b42ffaa4
[    9.877380] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000790ffa53
[    9.877394] [drm:drm_atomic_check_only [drm]] checking 00000000b42ffaa=
4
[    9.877412] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.877478] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000fd20a094 t=
o 00000000b42ffaa4
[    9.877520] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000001f071b4f t=
o 00000000b42ffaa4
[    9.877560] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b42ffaa4 nonblocking
[    9.882374] i915 0000:00:02.0: [drm:intel_atomic_commit [i915]] Prepar=
ing state failed with -512
[    9.882495] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b42ffaa4
[    9.882526] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b42ffaa4
[    9.882554] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b42ffaa4
[    9.882570] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 00000000b42ffaa4
[    9.882585] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000790ffa53 state to 00000000b42ffaa4
[    9.882599] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000790ffa53
[    9.882614] [drm:drm_atomic_check_only [drm]] checking 00000000b42ffaa=
4
[    9.882634] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.882680] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000001dde4b34 t=
o 00000000b42ffaa4
[    9.882719] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000001f071b4f t=
o 00000000b42ffaa4
[    9.882757] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b42ffaa4 nonblocking
[    9.902173] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b42ffaa4
[    9.902228] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b42ffaa4
[    9.906673] [drm:drm_mode_addfb2 [drm]] [FB:105]
[    9.906714] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f9284152
[    9.906730] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000bb3c00b5 state to 00000000f9284152
[    9.906744] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000178610ab state to 00000000f9284152
[    9.906757] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000178610ab
[    9.906770] [drm:drm_atomic_check_only [drm]] checking 00000000f928415=
2
[    9.906787] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.906837] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000005bc32e0b t=
o 00000000f9284152
[    9.906877] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000994352dc t=
o 00000000f9284152
[    9.906914] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f9284152 nonblocking
[    9.918825] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f9284152
[    9.918850] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f9284152
[    9.923054] [drm:drm_mode_addfb2 [drm]] [FB:103]
[    9.923094] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ad085981
[    9.923109] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a2908910 state to 00000000ad085981
[    9.923122] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007643014d state to 00000000ad085981
[    9.923135] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000007643014d
[    9.923148] [drm:drm_atomic_check_only [drm]] checking 00000000ad08598=
1
[    9.923164] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.923212] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d85dd4f0 t=
o 00000000ad085981
[    9.923250] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000fc0ff3da t=
o 00000000ad085981
[    9.923285] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ad085981 nonblocking
[    9.935474] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ad085981
[    9.935499] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ad085981
[    9.939289] [drm:drm_mode_addfb2 [drm]] [FB:105]
[    9.939312] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015eaab93
[    9.939328] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000bb3c00b5 state to 0000000015eaab93
[    9.939341] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001c653095 state to 0000000015eaab93
[    9.939354] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000001c653095
[    9.939366] [drm:drm_atomic_check_only [drm]] checking 0000000015eaab9=
3
[    9.939383] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.939451] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000051218d79 t=
o 0000000015eaab93
[    9.939509] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006bc82e7a t=
o 0000000015eaab93
[    9.939544] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015eaab93 nonblocking
[    9.952137] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015eaab93
[    9.952162] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015eaab93
[    9.956145] [drm:drm_mode_addfb2 [drm]] [FB:103]
[    9.956186] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b5b64e01
[    9.956201] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 00000000b5b64e01
[    9.956215] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ce47d026 state to 00000000b5b64e01
[    9.956229] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000ce47d026
[    9.956242] [drm:drm_atomic_check_only [drm]] checking 00000000b5b64e0=
1
[    9.956259] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.956309] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000007fbcd5d t=
o 00000000b5b64e01
[    9.956349] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000247d635c t=
o 00000000b5b64e01
[    9.956387] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b5b64e01 nonblocking
[    9.968819] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b5b64e01
[    9.968845] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b5b64e01
[    9.972828] [drm:drm_mode_addfb2 [drm]] [FB:105]
[    9.972854] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000cde52c9a
[    9.972870] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000aa4f7470 state to 00000000cde52c9a
[    9.972884] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d782b622 state to 00000000cde52c9a
[    9.972899] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000d782b622
[    9.972912] [drm:drm_atomic_check_only [drm]] checking 00000000cde52c9=
a
[    9.972930] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.972998] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000bfa18500 t=
o 00000000cde52c9a
[    9.973037] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000062bf3528 t=
o 00000000cde52c9a
[    9.973075] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000cde52c9a nonblocking
[    9.985481] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000cde52c9a
[    9.985506] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000cde52c9a
[    9.989403] [drm:drm_mode_addfb2 [drm]] [FB:103]
[    9.989446] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004dd153c8
[    9.989478] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 000000004dd153c8
[    9.989492] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007dc1716e state to 000000004dd153c8
[    9.989506] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000007dc1716e
[    9.989519] [drm:drm_atomic_check_only [drm]] checking 000000004dd153c=
8
[    9.989536] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[    9.989586] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000f0358b6c t=
o 000000004dd153c8
[    9.989626] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000577d344a t=
o 000000004dd153c8
[    9.989663] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004dd153c8 nonblocking
[   10.001940] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004dd153c8
[   10.001996] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004dd153c8
[   10.006004] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   10.006031] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000008c0bde79
[   10.006047] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000bb3c00b5 state to 000000008c0bde79
[   10.006061] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007e4affe4 state to 000000008c0bde79
[   10.006075] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000007e4affe4
[   10.006088] [drm:drm_atomic_check_only [drm]] checking 000000008c0bde7=
9
[   10.006161] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.006263] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000dce04d55 t=
o 000000008c0bde79
[   10.006329] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c878bc12 t=
o 000000008c0bde79
[   10.006387] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0008c0bde79 nonblocking
[   10.018798] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000008c0bde79
[   10.018823] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000008c0bde79
[   10.023002] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   10.023027] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000008c0bde79
[   10.023042] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a2908910 state to 000000008c0bde79
[   10.023057] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001224cec1 state to 000000008c0bde79
[   10.023071] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000001224cec1
[   10.023084] [drm:drm_atomic_check_only [drm]] checking 000000008c0bde7=
9
[   10.023102] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.023154] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a43b452f t=
o 000000008c0bde79
[   10.023195] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f84c38d5 t=
o 000000008c0bde79
[   10.023234] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0008c0bde79 nonblocking
[   10.035241] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000008c0bde79
[   10.035268] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000008c0bde79
[   10.039068] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   10.039093] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004dd153c8
[   10.039110] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000bb3c00b5 state to 000000004dd153c8
[   10.039124] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000cbd42eba state to 000000004dd153c8
[   10.039138] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000cbd42eba
[   10.039151] [drm:drm_atomic_check_only [drm]] checking 000000004dd153c=
8
[   10.039169] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.039222] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000004a473f41 t=
o 000000004dd153c8
[   10.039263] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000001879f5bc t=
o 000000004dd153c8
[   10.039302] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004dd153c8 nonblocking
[   10.052132] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004dd153c8
[   10.052157] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004dd153c8
[   10.056052] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   10.056077] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000cde52c9a
[   10.056093] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 00000000cde52c9a
[   10.056108] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000178610ab state to 00000000cde52c9a
[   10.056122] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000178610ab
[   10.056135] [drm:drm_atomic_check_only [drm]] checking 00000000cde52c9=
a
[   10.056153] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.056205] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000fed00400 t=
o 00000000cde52c9a
[   10.056246] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000009ca5331c t=
o 00000000cde52c9a
[   10.056286] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000cde52c9a nonblocking
[   10.068817] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000cde52c9a
[   10.068841] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000cde52c9a
[   10.073012] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   10.073037] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b5b64e01
[   10.073054] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000aa4f7470 state to 00000000b5b64e01
[   10.073068] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000790ffa53 state to 00000000b5b64e01
[   10.073082] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000790ffa53
[   10.073095] [drm:drm_atomic_check_only [drm]] checking 00000000b5b64e0=
1
[   10.073113] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.073165] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000624f0a5c t=
o 00000000b5b64e01
[   10.073207] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a737685a t=
o 00000000b5b64e01
[   10.073246] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b5b64e01 nonblocking
[   10.085479] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b5b64e01
[   10.085504] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b5b64e01
[   10.089516] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   10.089542] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015eaab93
[   10.089559] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 0000000015eaab93
[   10.089573] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000024a0a711 state to 0000000015eaab93
[   10.089588] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000024a0a711
[   10.089601] [drm:drm_atomic_check_only [drm]] checking 0000000015eaab9=
3
[   10.089619] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.089669] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ef4c514d t=
o 0000000015eaab93
[   10.089711] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003db804a8 t=
o 0000000015eaab93
[   10.089774] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015eaab93 nonblocking
[   10.102132] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015eaab93
[   10.102199] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015eaab93
[   10.106255] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   10.106294] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000d27ebd58
[   10.106331] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000460d37ca state to 00000000d27ebd58
[   10.106345] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000047a7ee5 state to 00000000d27ebd58
[   10.106359] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000047a7ee5
[   10.106372] [drm:drm_atomic_check_only [drm]] checking 00000000d27ebd5=
8
[   10.106388] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.106437] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d64106b5 t=
o 00000000d27ebd58
[   10.106480] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000849eb172 t=
o 00000000d27ebd58
[   10.106517] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000d27ebd58 nonblocking
[   10.118823] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000d27ebd58
[   10.118855] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000d27ebd58
[   10.123021] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   10.123047] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd719386
[   10.123063] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000e8225649 state to 00000000dd719386
[   10.123078] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000046e95355 state to 00000000dd719386
[   10.123092] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000046e95355
[   10.123106] [drm:drm_atomic_check_only [drm]] checking 00000000dd71938=
6
[   10.123123] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.123175] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000cd10e194 t=
o 00000000dd719386
[   10.123217] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000db39c475 t=
o 00000000dd719386
[   10.123257] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd719386 nonblocking
[   10.135466] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd719386
[   10.135498] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd719386
[   10.138999] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   10.139025] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004ce05c78
[   10.139042] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 000000004ce05c78
[   10.139056] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003c9f09a8 state to 000000004ce05c78
[   10.139070] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000003c9f09a8
[   10.139084] [drm:drm_atomic_check_only [drm]] checking 000000004ce05c7=
8
[   10.139103] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.139156] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000094c630ff t=
o 000000004ce05c78
[   10.139198] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000fe3360d8 t=
o 000000004ce05c78
[   10.139237] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004ce05c78 nonblocking
[   10.152028] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004ce05c78
[   10.152061] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004ce05c78
[   10.155711] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   10.155736] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002c399daf
[   10.155752] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f5c7ff3d state to 000000002c399daf
[   10.155765] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000098895aab state to 000000002c399daf
[   10.155780] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000098895aab
[   10.155793] [drm:drm_atomic_check_only [drm]] checking 000000002c399da=
f
[   10.155810] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.155863] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a984233c t=
o 000000002c399daf
[   10.155902] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000282a8117 t=
o 000000002c399daf
[   10.155940] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002c399daf nonblocking
[   10.168811] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002c399daf
[   10.168842] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002c399daf
[   10.172556] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   10.172581] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002c399daf
[   10.172597] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000460d37ca state to 000000002c399daf
[   10.172611] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f71f385e state to 000000002c399daf
[   10.172625] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000f71f385e
[   10.172638] [drm:drm_atomic_check_only [drm]] checking 000000002c399da=
f
[   10.172654] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.172705] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000690a09d0 t=
o 000000002c399daf
[   10.172745] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003ed3877c t=
o 000000002c399daf
[   10.172782] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002c399daf nonblocking
[   10.185481] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002c399daf
[   10.185513] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002c399daf
[   10.199537] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   10.199564] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ca150493
[   10.199582] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000023d8281 state to 00000000ca150493
[   10.199596] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ba37df93 state to 00000000ca150493
[   10.199610] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000ba37df93
[   10.199623] [drm:drm_atomic_check_only [drm]] checking 00000000ca15049=
3
[   10.199640] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.199693] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b15d0618 t=
o 00000000ca150493
[   10.199734] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000005586c448 t=
o 00000000ca150493
[   10.199772] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ca150493 nonblocking
[   10.200244] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:108] for [PLANE:47:cursor A] state 000000002c6bc945
[   10.200265] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:47:cursor A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.200317] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:108] for [PLANE:47:cursor A] state 000000003f2c2fb3
[   10.200331] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:47:cursor A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.218576] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ca150493
[   10.218607] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000291f2ef5
[   10.218609] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ca150493
[   10.218630] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000291f2ef5
[   10.218648] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000291f2ef5
[   10.302479] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[   10.407835] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   10.407864] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000009010a9d0
[   10.407882] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000000c81b124 state to 000000009010a9d0
[   10.407897] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f0508c76 state to 000000009010a9d0
[   10.407912] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000f0508c76
[   10.407926] [drm:drm_atomic_check_only [drm]] checking 000000009010a9d=
0
[   10.407945] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.408001] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000df6c42ab t=
o 000000009010a9d0
[   10.408046] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000008ce034f0 t=
o 000000009010a9d0
[   10.408087] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0009010a9d0 nonblocking
[   10.429758] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000009010a9d0
[   10.429793] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000009010a9d0
[   10.434581] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   10.434604] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b7ad20b8
[   10.434622] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000c316ade0 state to 00000000b7ad20b8
[   10.434638] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003b881e2a state to 00000000b7ad20b8
[   10.434654] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000003b881e2a
[   10.434670] [drm:drm_atomic_check_only [drm]] checking 00000000b7ad20b=
8
[   10.434690] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.434750] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000be44c30 t=
o 00000000b7ad20b8
[   10.434798] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000001a0a7660 t=
o 00000000b7ad20b8
[   10.434844] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b7ad20b8 nonblocking
[   10.446490] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b7ad20b8
[   10.446584] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000000b4872
[   10.446613] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b7ad20b8
[   10.446665] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000000b4872
[   10.446739] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000000b4872
[   10.456942] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   10.456989] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000000b4872
[   10.457023] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000dcb7e8f0 state to 00000000000b4872
[   10.457055] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009786a47c state to 00000000000b4872
[   10.457091] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000009786a47c
[   10.457121] [drm:drm_atomic_check_only [drm]] checking 00000000000b487=
2
[   10.457160] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.457289] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000594d9fc t=
o 00000000000b4872
[   10.457385] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000d95c676e t=
o 00000000000b4872
[   10.457476] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000000b4872 nonblocking
[   10.463172] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000000b4872
[   10.463225] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000000b4872
[   10.468731] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   10.468788] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000003c9acba
[   10.468818] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000c316ade0 state to 0000000003c9acba
[   10.468845] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000933c0db6 state to 0000000003c9acba
[   10.468872] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000933c0db6
[   10.468897] [drm:drm_atomic_check_only [drm]] checking 0000000003c9acb=
a
[   10.468930] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.469045] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000001b2810e9 t=
o 0000000003c9acba
[   10.469124] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000616a9da5 t=
o 0000000003c9acba
[   10.469198] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00003c9acba nonblocking
[   10.479829] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000003c9acba
[   10.479881] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000003c9acba
[   10.637719] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   10.637831] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000000d7a1507
[   10.637917] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000000c81b124 state to 000000000d7a1507
[   10.637988] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009efeee0d state to 000000000d7a1507
[   10.638060] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000009efeee0d
[   10.638178] [drm:drm_atomic_check_only [drm]] checking 000000000d7a150=
7
[   10.638268] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.638529] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ae94c9a6 t=
o 000000000d7a1507
[   10.638747] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e2c682f3 t=
o 000000000d7a1507
[   10.638950] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0000d7a1507 nonblocking
[   10.659647] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000000d7a1507
[   10.659726] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004b18f883
[   10.659754] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000000d7a1507
[   10.659819] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004b18f883
[   10.659890] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004b18f883
[   10.680684] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   10.680730] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000097e8dc6e
[   10.680764] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 0000000097e8dc6e
[   10.680792] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000dc4b7c5b state to 0000000097e8dc6e
[   10.680814] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000dc4b7c5b
[   10.680833] [drm:drm_atomic_check_only [drm]] checking 0000000097e8dc6=
e
[   10.680859] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   10.680930] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000932193fb t=
o 0000000097e8dc6e
[   10.680990] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a458c1c9 t=
o 0000000097e8dc6e
[   10.681048] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00097e8dc6e nonblocking
[   10.692970] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000097e8dc6e
[   10.693003] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000097e8dc6e
[   11.274440] i915 0000:00:02.0: [drm:intel_pps_vdd_off_sync_unlocked [i=
915]] Turning [ENCODER:94:DDI A/PHY A] VDD off
[   11.274725] i915 0000:00:02.0: [drm:intel_pps_vdd_off_sync_unlocked [i=
915]] PP_STATUS: 0x80000008 PP_CONTROL: 0x00000067
[   11.274932] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DC off
[   11.275140] i915 0000:00:02.0: [drm:skl_enable_dc6 [i915]] Enabling DC=
6
[   11.275342] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 00 to 02
[   11.740513] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[   11.741183] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[   11.745848] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[   11.750044] systemd-journald[236]: Successfully sent stream file descr=
iptor to service manager.
[   13.168987] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D487/512
[   13.169054] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 487
[   13.169104] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 23072
[   13.182603] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DC off
[   13.183060] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 02 to 00
[   13.186040] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.186154] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004499cb8f
[   13.186216] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 000000004499cb8f
[   13.186270] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000908415fa state to 000000004499cb8f
[   13.186321] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000908415fa
[   13.186371] [drm:drm_atomic_check_only [drm]] checking 000000004499cb8=
f
[   13.186433] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.186609] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000982e6a4d t=
o 000000004499cb8f
[   13.186765] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000033ab8df1 t=
o 000000004499cb8f
[   13.186912] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004499cb8f nonblocking
[   13.207141] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004499cb8f
[   13.207250] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004499cb8f
[   13.232242] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.232357] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000081bd15ed
[   13.232439] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 0000000081bd15ed
[   13.232513] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001a0491ff state to 0000000081bd15ed
[   13.232584] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000001a0491ff
[   13.232653] [drm:drm_atomic_check_only [drm]] checking 0000000081bd15e=
d
[   13.232733] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.232959] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000df253cbb t=
o 0000000081bd15ed
[   13.233169] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000005defdf90 t=
o 0000000081bd15ed
[   13.233369] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00081bd15ed nonblocking
[   13.240426] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000081bd15ed
[   13.240530] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000081bd15ed
[   13.245979] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.246077] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000013a9eba7
[   13.246205] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 0000000013a9eba7
[   13.246280] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000daacfffe state to 0000000013a9eba7
[   13.246354] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000daacfffe
[   13.246422] [drm:drm_atomic_check_only [drm]] checking 0000000013a9eba=
7
[   13.246503] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.246731] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000ac7d627 t=
o 0000000013a9eba7
[   13.246944] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000004d63997d t=
o 0000000013a9eba7
[   13.247145] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00013a9eba7 nonblocking
[   13.257126] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000013a9eba7
[   13.257231] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000013a9eba7
[   13.262474] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.262577] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b8f75335
[   13.262657] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 00000000b8f75335
[   13.262731] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000004b7e7c6f state to 00000000b8f75335
[   13.262804] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000004b7e7c6f
[   13.262873] [drm:drm_atomic_check_only [drm]] checking 00000000b8f7533=
5
[   13.262956] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.263210] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d0b8c6bb t=
o 00000000b8f75335
[   13.263413] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000534be02e t=
o 00000000b8f75335
[   13.263608] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b8f75335 nonblocking
[   13.265607] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D462/512
[   13.265832] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 462
[   13.266029] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 21902
[   13.273727] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b8f75335
[   13.273818] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b8f75335
[   13.278707] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.278802] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000373cdbbd
[   13.278882] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 00000000373cdbbd
[   13.278955] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000c41fc932 state to 00000000373cdbbd
[   13.279026] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000c41fc932
[   13.279095] [drm:drm_atomic_check_only [drm]] checking 00000000373cdbb=
d
[   13.279175] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.279405] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000002cb84a5c t=
o 00000000373cdbbd
[   13.279619] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e44b045a t=
o 00000000373cdbbd
[   13.279824] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000373cdbbd nonblocking
[   13.290465] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000373cdbbd
[   13.290570] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000373cdbbd
[   13.297117] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.297224] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000006944b3d3
[   13.297304] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 000000006944b3d3
[   13.297379] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000071ec303c state to 000000006944b3d3
[   13.297451] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000071ec303c
[   13.297518] [drm:drm_atomic_check_only [drm]] checking 000000006944b3d=
3
[   13.297602] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.297845] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d0b8c6bb t=
o 000000006944b3d3
[   13.298062] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000007251f1f9 t=
o 000000006944b3d3
[   13.298314] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0006944b3d3 nonblocking
[   13.307142] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000006944b3d3
[   13.307243] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000006944b3d3
[   13.312575] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.312681] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000005104af7a
[   13.312762] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 000000005104af7a
[   13.312836] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d49c040f state to 000000005104af7a
[   13.312908] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000d49c040f
[   13.312978] [drm:drm_atomic_check_only [drm]] checking 000000005104af7=
a
[   13.313061] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.313307] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000ac7d627 t=
o 000000005104af7a
[   13.313521] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000bc538c5f t=
o 000000005104af7a
[   13.313725] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0005104af7a nonblocking
[   13.323813] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000005104af7a
[   13.323914] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000005104af7a
[   13.329044] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.329150] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000007073c23b
[   13.329231] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 000000007073c23b
[   13.329304] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000063fc73c1 state to 000000007073c23b
[   13.329376] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000063fc73c1
[   13.329445] [drm:drm_atomic_check_only [drm]] checking 000000007073c23=
b
[   13.329528] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.329772] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000df253cbb t=
o 000000007073c23b
[   13.329988] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e1ff5196 t=
o 000000007073c23b
[   13.330234] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0007073c23b nonblocking
[   13.340509] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000007073c23b
[   13.340613] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000007073c23b
[   13.345779] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.345886] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000da9baecd
[   13.345967] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 00000000da9baecd
[   13.346040] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000406e485e state to 00000000da9baecd
[   13.346169] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000406e485e
[   13.346240] [drm:drm_atomic_check_only [drm]] checking 00000000da9baec=
d
[   13.346323] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.346591] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000982e6a4d t=
o 00000000da9baecd
[   13.346796] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003824e2fd t=
o 00000000da9baecd
[   13.346990] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000da9baecd nonblocking
[   13.357161] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000da9baecd
[   13.357265] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000da9baecd
[   13.357266] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000989781b3
[   13.357364] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000989781b3
[   13.357438] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000989781b3
[   13.362836] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.362941] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000989781b3
[   13.363020] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 00000000989781b3
[   13.363093] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000007eab91b state to 00000000989781b3
[   13.363164] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000007eab91b
[   13.363232] [drm:drm_atomic_check_only [drm]] checking 00000000989781b=
3
[   13.363316] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.363549] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000df253cbb t=
o 00000000989781b3
[   13.363765] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006f76a45f t=
o 00000000989781b3
[   13.363968] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000989781b3 nonblocking
[   13.373841] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000989781b3
[   13.373948] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000989781b3
[   13.373944] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c73c46c0
[   13.374041] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c73c46c0
[   13.374146] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c73c46c0
[   13.379161] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.379263] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003ac2e677
[   13.379343] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000008559b293 state to 000000003ac2e677
[   13.379417] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000fad5be21 state to 000000003ac2e677
[   13.379488] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000fad5be21
[   13.379556] [drm:drm_atomic_check_only [drm]] checking 000000003ac2e67=
7
[   13.379639] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.379874] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000afecf053 t=
o 000000003ac2e677
[   13.380089] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000acb46ab1 t=
o 000000003ac2e677
[   13.380292] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003ac2e677 nonblocking
[   13.390478] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003ac2e677
[   13.390586] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003ac2e677
[   13.413990] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D437/512
[   13.414260] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 437
[   13.414447] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 20733
[   13.429270] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.429367] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000432cd92b
[   13.429444] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002213772a state to 00000000432cd92b
[   13.429513] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d5fa2149 state to 00000000432cd92b
[   13.429581] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000d5fa2149
[   13.429645] [drm:drm_atomic_check_only [drm]] checking 00000000432cd92=
b
[   13.429727] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.429942] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000005ade6194 t=
o 00000000432cd92b
[   13.430171] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000087776ea5 t=
o 00000000432cd92b
[   13.430366] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000432cd92b nonblocking
[   13.440515] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000432cd92b
[   13.440623] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c922b521
[   13.440628] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000432cd92b
[   13.440719] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c922b521
[   13.440792] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c922b521
[   13.445628] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.445730] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c922b521
[   13.445809] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000c922b521
[   13.445881] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000002fe793a8 state to 00000000c922b521
[   13.445953] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000002fe793a8
[   13.446020] [drm:drm_atomic_check_only [drm]] checking 00000000c922b52=
1
[   13.446147] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.446384] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a05a34b9 t=
o 00000000c922b521
[   13.446598] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000070888f15 t=
o 00000000c922b521
[   13.446804] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000c922b521 nonblocking
[   13.457177] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c922b521
[   13.457290] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c922b521
[   13.457289] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004aa72e92
[   13.457384] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004aa72e92
[   13.457458] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004aa72e92
[   13.462344] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.462448] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004aa72e92
[   13.462527] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 000000004aa72e92
[   13.462601] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000badeb23e state to 000000004aa72e92
[   13.462672] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000badeb23e
[   13.462740] [drm:drm_atomic_check_only [drm]] checking 000000004aa72e9=
2
[   13.462824] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.463057] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000005ade6194 t=
o 000000004aa72e92
[   13.463269] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000002a9433d t=
o 000000004aa72e92
[   13.463472] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004aa72e92 nonblocking
[   13.473835] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004aa72e92
[   13.473940] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000034f5871
[   13.473951] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004aa72e92
[   13.474035] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000034f5871
[   13.474136] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000034f5871
[   13.480217] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.480321] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ad085981
[   13.480400] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000bb3c00b5 state to 00000000ad085981
[   13.480474] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001224cec1 state to 00000000ad085981
[   13.480546] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000001224cec1
[   13.480614] [drm:drm_atomic_check_only [drm]] checking 00000000ad08598=
1
[   13.480697] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.480929] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000671f1e2d t=
o 00000000ad085981
[   13.481142] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000004d628cb t=
o 00000000ad085981
[   13.481346] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ad085981 nonblocking
[   13.490471] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ad085981
[   13.490582] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000008c0bde79
[   13.490584] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ad085981
[   13.490678] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000008c0bde79
[   13.490750] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000008c0bde79
[   13.495726] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.495829] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000008c0bde79
[   13.495907] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a2908910 state to 000000008c0bde79
[   13.495980] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000cb973ff0 state to 000000008c0bde79
[   13.496053] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000cb973ff0
[   13.496121] [drm:drm_atomic_check_only [drm]] checking 000000008c0bde7=
9
[   13.496203] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.496439] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000039aac8ed t=
o 000000008c0bde79
[   13.496652] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000178bc25d t=
o 000000008c0bde79
[   13.496857] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0008c0bde79 nonblocking
[   13.507166] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000008c0bde79
[   13.507278] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004dd153c8
[   13.507281] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000008c0bde79
[   13.507375] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004dd153c8
[   13.507447] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004dd153c8
[   13.512535] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.512638] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004dd153c8
[   13.512718] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000bb3c00b5 state to 000000004dd153c8
[   13.512790] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000a82e7e26 state to 000000004dd153c8
[   13.512862] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000a82e7e26
[   13.512930] [drm:drm_atomic_check_only [drm]] checking 000000004dd153c=
8
[   13.513014] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.513246] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000d454ea4 t=
o 000000004dd153c8
[   13.513460] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b9a30fb2 t=
o 000000004dd153c8
[   13.513664] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004dd153c8 nonblocking
[   13.523842] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004dd153c8
[   13.523950] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000008c0bde79
[   13.523957] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004dd153c8
[   13.524047] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000008c0bde79
[   13.524120] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000008c0bde79
[   13.570373] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D412/512
[   13.570634] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 412
[   13.570852] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 19563
[   13.596454] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.596558] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f9284152
[   13.596637] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 00000000f9284152
[   13.596710] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000020c9affc state to 00000000f9284152
[   13.596783] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000020c9affc
[   13.596851] [drm:drm_atomic_check_only [drm]] checking 00000000f928415=
2
[   13.596933] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.597167] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000977a2f88 t=
o 00000000f9284152
[   13.597379] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000244136fe t=
o 00000000f9284152
[   13.597580] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f9284152 nonblocking
[   13.607147] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f9284152
[   13.607250] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f9284152
[   13.612461] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.612563] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000cde52c9a
[   13.612642] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000aa4f7470 state to 00000000cde52c9a
[   13.612715] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000070205f9f state to 00000000cde52c9a
[   13.612787] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000070205f9f
[   13.612854] [drm:drm_atomic_check_only [drm]] checking 00000000cde52c9=
a
[   13.612936] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.613170] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000079494ccf t=
o 00000000cde52c9a
[   13.613383] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006ea63ba9 t=
o 00000000cde52c9a
[   13.613586] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000cde52c9a nonblocking
[   13.623778] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000cde52c9a
[   13.623881] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000cde52c9a
[   13.629906] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.630010] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b42ffaa4
[   13.630090] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 00000000b42ffaa4
[   13.630224] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003119b2a4 state to 00000000b42ffaa4
[   13.630299] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000003119b2a4
[   13.630368] [drm:drm_atomic_check_only [drm]] checking 00000000b42ffaa=
4
[   13.630466] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.630691] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a7ece0da t=
o 00000000b42ffaa4
[   13.630891] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000001a69be6a t=
o 00000000b42ffaa4
[   13.631085] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b42ffaa4 nonblocking
[   13.640503] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b42ffaa4
[   13.640606] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b42ffaa4
[   13.640605] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b5b64e01
[   13.640702] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b5b64e01
[   13.640776] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b5b64e01
[   13.645512] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.645615] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b5b64e01
[   13.645695] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000bb3c00b5 state to 00000000b5b64e01
[   13.645767] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000463ce728 state to 00000000b5b64e01
[   13.645839] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000463ce728
[   13.645907] [drm:drm_atomic_check_only [drm]] checking 00000000b5b64e0=
1
[   13.645990] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.646254] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000005f93520d t=
o 00000000b5b64e01
[   13.646476] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000da71ab9f t=
o 00000000b5b64e01
[   13.646678] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b5b64e01 nonblocking
[   13.657164] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b5b64e01
[   13.657268] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b5b64e01
[   13.662449] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.662554] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3b5eecc
[   13.662634] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a2908910 state to 00000000f3b5eecc
[   13.662707] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000097c6c686 state to 00000000f3b5eecc
[   13.662778] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000097c6c686
[   13.662846] [drm:drm_atomic_check_only [drm]] checking 00000000f3b5eec=
c
[   13.662929] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.663161] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000007e68db02 t=
o 00000000f3b5eecc
[   13.663374] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000005965e645 t=
o 00000000f3b5eecc
[   13.663577] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f3b5eecc nonblocking
[   13.673824] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3b5eecc
[   13.673929] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3b5eecc
[   13.673928] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b5b64e01
[   13.674026] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b5b64e01
[   13.674132] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b5b64e01
[   13.679131] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.679237] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000034f5871
[   13.679315] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 00000000034f5871
[   13.679388] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000024576209 state to 00000000034f5871
[   13.679460] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000024576209
[   13.679528] [drm:drm_atomic_check_only [drm]] checking 00000000034f587=
1
[   13.679610] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.679845] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a827fa8b t=
o 00000000034f5871
[   13.680056] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000007668f498 t=
o 00000000034f5871
[   13.680260] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000034f5871 nonblocking
[   13.690459] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000034f5871
[   13.690563] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000034f5871
[   13.690563] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f0dd2dbb
[   13.690660] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f0dd2dbb
[   13.690734] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f0dd2dbb
[   13.717630] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D387/512
[   13.717864] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 387
[   13.718060] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 18393
[   13.745685] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.745785] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f0dd2dbb
[   13.745864] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000f0dd2dbb
[   13.745938] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000a1da8765 state to 00000000f0dd2dbb
[   13.746010] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000a1da8765
[   13.746078] [drm:drm_atomic_check_only [drm]] checking 00000000f0dd2db=
b
[   13.746215] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.746447] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003a112079 t=
o 00000000f0dd2dbb
[   13.746647] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000045b0708c t=
o 00000000f0dd2dbb
[   13.746838] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f0dd2dbb nonblocking
[   13.757143] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f0dd2dbb
[   13.757247] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f0dd2dbb
[   13.762305] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.762405] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b35f37d6
[   13.762482] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002213772a state to 00000000b35f37d6
[   13.762551] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000badeb23e state to 00000000b35f37d6
[   13.762621] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000badeb23e
[   13.762685] [drm:drm_atomic_check_only [drm]] checking 00000000b35f37d=
6
[   13.762766] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.762988] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000f4f43fb7 t=
o 00000000b35f37d6
[   13.763191] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000dfa5080f t=
o 00000000b35f37d6
[   13.763385] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b35f37d6 nonblocking
[   13.773829] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b35f37d6
[   13.773934] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b35f37d6
[   13.779025] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.779129] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000007cb753ba
[   13.779208] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 000000007cb753ba
[   13.779282] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000002674f3f state to 000000007cb753ba
[   13.779354] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000002674f3f
[   13.779423] [drm:drm_atomic_check_only [drm]] checking 000000007cb753b=
a
[   13.779505] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.779739] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003c23f48f t=
o 000000007cb753ba
[   13.779953] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000dbf8e1d2 t=
o 000000007cb753ba
[   13.780158] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0007cb753ba nonblocking
[   13.790461] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000007cb753ba
[   13.790565] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000007cb753ba
[   13.796678] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.796780] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000009f714e5e
[   13.796859] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 000000009f714e5e
[   13.796932] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000029c7c838 state to 000000009f714e5e
[   13.797005] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000029c7c838
[   13.797073] [drm:drm_atomic_check_only [drm]] checking 000000009f714e5=
e
[   13.797156] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.797391] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000048869813 t=
o 000000009f714e5e
[   13.797605] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003fe29c7b t=
o 000000009f714e5e
[   13.797807] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0009f714e5e nonblocking
[   13.807152] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000009f714e5e
[   13.807256] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000009f714e5e
[   13.807254] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000476fcc5f
[   13.807351] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000476fcc5f
[   13.807426] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000476fcc5f
[   13.812398] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.812500] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000476fcc5f
[   13.812580] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000476fcc5f
[   13.812654] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d5fa2149 state to 00000000476fcc5f
[   13.812727] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000d5fa2149
[   13.812795] [drm:drm_atomic_check_only [drm]] checking 00000000476fcc5=
f
[   13.812878] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.813111] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000002b07cb92 t=
o 00000000476fcc5f
[   13.813323] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000682db20e t=
o 00000000476fcc5f
[   13.813528] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000476fcc5f nonblocking
[   13.823831] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000476fcc5f
[   13.823935] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000476fcc5f
[   13.823932] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000009f714e5e
[   13.824029] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000009f714e5e
[   13.824103] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000009f714e5e
[   13.829047] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.829150] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000009f714e5e
[   13.829229] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002213772a state to 000000009f714e5e
[   13.829301] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000002fe793a8 state to 000000009f714e5e
[   13.829373] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000002fe793a8
[   13.829441] [drm:drm_atomic_check_only [drm]] checking 000000009f714e5=
e
[   13.829524] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.829761] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000457f8148 t=
o 000000009f714e5e
[   13.829972] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000637c71fc t=
o 000000009f714e5e
[   13.830218] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0009f714e5e nonblocking
[   13.840497] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000009f714e5e
[   13.840601] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000009f714e5e
[   13.840597] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000007cb753ba
[   13.840695] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000007cb753ba
[   13.840768] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000007cb753ba
[   13.857644] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D362/512
[   13.857878] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 362
[   13.858075] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 17223
[   13.879401] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.879505] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000007cb753ba
[   13.879584] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 000000007cb753ba
[   13.879657] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000c2e6f026 state to 000000007cb753ba
[   13.879729] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000c2e6f026
[   13.879798] [drm:drm_atomic_check_only [drm]] checking 000000007cb753b=
a
[   13.879881] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.880115] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000007ca04497 t=
o 000000007cb753ba
[   13.880328] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000951d9e35 t=
o 000000007cb753ba
[   13.880535] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0007cb753ba nonblocking
[   13.890440] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000007cb753ba
[   13.890545] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000007cb753ba
[   13.896657] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.896759] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b35f37d6
[   13.896839] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 00000000b35f37d6
[   13.896913] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e86c574d state to 00000000b35f37d6
[   13.896985] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e86c574d
[   13.897053] [drm:drm_atomic_check_only [drm]] checking 00000000b35f37d=
6
[   13.897136] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.897369] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000f0a8b981 t=
o 00000000b35f37d6
[   13.897581] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003db1668e t=
o 00000000b35f37d6
[   13.897785] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b35f37d6 nonblocking
[   13.907147] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b35f37d6
[   13.907253] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b35f37d6
[   13.907248] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f0dd2dbb
[   13.907345] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f0dd2dbb
[   13.907418] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f0dd2dbb
[   13.912362] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.912465] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f0dd2dbb
[   13.912545] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000f0dd2dbb
[   13.912617] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000008c6a7609 state to 00000000f0dd2dbb
[   13.912689] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000008c6a7609
[   13.912758] [drm:drm_atomic_check_only [drm]] checking 00000000f0dd2db=
b
[   13.912841] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.913073] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c113fb7c t=
o 00000000f0dd2dbb
[   13.913287] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000d57b2872 t=
o 00000000f0dd2dbb
[   13.913489] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f0dd2dbb nonblocking
[   13.923828] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f0dd2dbb
[   13.923932] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f0dd2dbb
[   13.928985] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.929088] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000034f5871
[   13.929167] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002213772a state to 00000000034f5871
[   13.929239] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000042a3961c state to 00000000034f5871
[   13.929311] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000042a3961c
[   13.929378] [drm:drm_atomic_check_only [drm]] checking 00000000034f587=
1
[   13.929460] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.929694] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000047f8cd04 t=
o 00000000034f5871
[   13.929907] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000085b4630d t=
o 00000000034f5871
[   13.930154] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000034f5871 nonblocking
[   13.940488] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000034f5871
[   13.940591] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000034f5871
[   13.945548] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   13.945651] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004aa72e92
[   13.945730] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 000000004aa72e92
[   13.945803] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f36e97c1 state to 000000004aa72e92
[   13.945874] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000f36e97c1
[   13.945943] [drm:drm_atomic_check_only [drm]] checking 000000004aa72e9=
2
[   13.946026] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.946315] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000374cc262 t=
o 000000004aa72e92
[   13.946530] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000075449076 t=
o 000000004aa72e92
[   13.946735] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004aa72e92 nonblocking
[   13.957158] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004aa72e92
[   13.957263] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004aa72e92
[   13.957260] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c922b521
[   13.957358] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c922b521
[   13.957429] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c922b521
[   13.962433] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   13.962537] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c922b521
[   13.962616] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 00000000c922b521
[   13.962689] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000a9ab9e04 state to 00000000c922b521
[   13.962761] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000a9ab9e04
[   13.962830] [drm:drm_atomic_check_only [drm]] checking 00000000c922b52=
1
[   13.962914] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   13.963146] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000022fd45d t=
o 00000000c922b521
[   13.963359] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f742b058 t=
o 00000000c922b521
[   13.963565] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000c922b521 nonblocking
[   13.973821] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c922b521
[   13.973929] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c922b521
[   13.973924] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000432cd92b
[   13.974021] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000432cd92b
[   13.974094] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000432cd92b
[   14.013945] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D337/512
[   14.014243] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 337
[   14.014454] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 16054
[   14.028171] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.028207] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000432cd92b
[   14.028235] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000432cd92b
[   14.028259] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000008c6a7609 state to 00000000432cd92b
[   14.028283] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000008c6a7609
[   14.028307] [drm:drm_atomic_check_only [drm]] checking 00000000432cd92=
b
[   14.028336] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.028415] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000001c038233 t=
o 00000000432cd92b
[   14.028487] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c0442db8 t=
o 00000000432cd92b
[   14.028555] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000432cd92b nonblocking
[   14.040496] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000432cd92b
[   14.040545] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000432cd92b
[   14.045377] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.045433] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000036206b4e
[   14.045474] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002213772a state to 0000000036206b4e
[   14.045511] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e86c574d state to 0000000036206b4e
[   14.045548] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e86c574d
[   14.045582] [drm:drm_atomic_check_only [drm]] checking 0000000036206b4=
e
[   14.045625] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.045746] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000022fd45d t=
o 0000000036206b4e
[   14.045854] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c0eeba24 t=
o 0000000036206b4e
[   14.045957] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00036206b4e nonblocking
[   14.057158] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000036206b4e
[   14.057240] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000036206b4e
[   14.063313] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.063416] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e14b66e9
[   14.063495] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000e14b66e9
[   14.063569] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000c2e6f026 state to 00000000e14b66e9
[   14.063641] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000c2e6f026
[   14.063709] [drm:drm_atomic_check_only [drm]] checking 00000000e14b66e=
9
[   14.063793] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.064026] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000374cc262 t=
o 00000000e14b66e9
[   14.064241] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000056fd6122 t=
o 00000000e14b66e9
[   14.064446] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e14b66e9 nonblocking
[   14.073807] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e14b66e9
[   14.073912] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e14b66e9
[   14.073913] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002c47fd41
[   14.074011] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002c47fd41
[   14.074086] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002c47fd41
[   14.078998] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.079104] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ad085981
[   14.079183] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a2908910 state to 00000000ad085981
[   14.079256] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000020c9affc state to 00000000ad085981
[   14.079328] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000020c9affc
[   14.079397] [drm:drm_atomic_check_only [drm]] checking 00000000ad08598=
1
[   14.079478] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.079712] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000009f7fb7cb t=
o 00000000ad085981
[   14.079927] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000001eb73320 t=
o 00000000ad085981
[   14.080129] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ad085981 nonblocking
[   14.090438] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ad085981
[   14.090542] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ad085981
[   14.096654] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.096756] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000008c0bde79
[   14.096836] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000bb3c00b5 state to 000000008c0bde79
[   14.096909] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009b90eff6 state to 000000008c0bde79
[   14.096981] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000009b90eff6
[   14.097049] [drm:drm_atomic_check_only [drm]] checking 000000008c0bde7=
9
[   14.097133] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.097367] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000f20b698 t=
o 000000008c0bde79
[   14.097579] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f947cd34 t=
o 000000008c0bde79
[   14.097783] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0008c0bde79 nonblocking
[   14.107141] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000008c0bde79
[   14.107244] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000008c0bde79
[   14.112468] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.112570] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004dd153c8
[   14.112651] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 000000004dd153c8
[   14.112724] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000097c6c686 state to 000000004dd153c8
[   14.112796] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000097c6c686
[   14.112864] [drm:drm_atomic_check_only [drm]] checking 000000004dd153c=
8
[   14.112948] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.113180] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000f2ba1e26 t=
o 000000004dd153c8
[   14.113390] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000802df01c t=
o 000000004dd153c8
[   14.113593] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004dd153c8 nonblocking
[   14.123815] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004dd153c8
[   14.123918] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004dd153c8
[   14.123916] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000008c0bde79
[   14.124013] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000008c0bde79
[   14.124085] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000008c0bde79
[   14.178327] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D312/512
[   14.178574] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 312
[   14.178779] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 14884
[   14.196346] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.196447] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000008c0bde79
[   14.196527] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000aa4f7470 state to 000000008c0bde79
[   14.196600] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d27822b5 state to 000000008c0bde79
[   14.196670] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000d27822b5
[   14.196738] [drm:drm_atomic_check_only [drm]] checking 000000008c0bde7=
9
[   14.196821] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.197058] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000f480ca66 t=
o 000000008c0bde79
[   14.197271] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000009257e60b t=
o 000000008c0bde79
[   14.197472] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0008c0bde79 nonblocking
[   14.207133] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000008c0bde79
[   14.207237] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000008c0bde79
[   14.212351] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.212454] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ad085981
[   14.212534] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000003762d6c state to 00000000ad085981
[   14.212609] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009b90eff6 state to 00000000ad085981
[   14.212679] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000009b90eff6
[   14.212747] [drm:drm_atomic_check_only [drm]] checking 00000000ad08598=
1
[   14.212830] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.213062] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ea0339ae t=
o 00000000ad085981
[   14.213275] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000fc714cac t=
o 00000000ad085981
[   14.213477] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ad085981 nonblocking
[   14.223729] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ad085981
[   14.223793] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ad085981
[   14.228178] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.228208] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f9284152
[   14.228231] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000bb3c00b5 state to 00000000f9284152
[   14.228253] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003119b2a4 state to 00000000f9284152
[   14.228274] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000003119b2a4
[   14.228294] [drm:drm_atomic_check_only [drm]] checking 00000000f928415=
2
[   14.228319] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.228390] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d60edb94 t=
o 00000000f9284152
[   14.228453] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000fc714cac t=
o 00000000f9284152
[   14.228511] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f9284152 nonblocking
[   14.240483] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f9284152
[   14.240585] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f9284152
[   14.240583] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000cde52c9a
[   14.240680] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000cde52c9a
[   14.240753] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000cde52c9a
[   14.245773] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.245877] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000cde52c9a
[   14.245957] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a2908910 state to 00000000cde52c9a
[   14.246030] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d528bfef state to 00000000cde52c9a
[   14.246138] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000d528bfef
[   14.246231] [drm:drm_atomic_check_only [drm]] checking 00000000cde52c9=
a
[   14.246346] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.246647] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a547c6c5 t=
o 00000000cde52c9a
[   14.246928] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000009257e60b t=
o 00000000cde52c9a
[   14.247201] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000cde52c9a nonblocking
[   14.257148] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000cde52c9a
[   14.257252] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000cde52c9a
[   14.257250] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b42ffaa4
[   14.257348] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b42ffaa4
[   14.257420] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b42ffaa4
[   14.262361] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.262464] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000009e836d46
[   14.262544] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 000000009e836d46
[   14.262616] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009c4ed126 state to 000000009e836d46
[   14.262689] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000009c4ed126
[   14.262758] [drm:drm_atomic_check_only [drm]] checking 000000009e836d4=
6
[   14.262841] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.263075] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000eb3dc8cd t=
o 000000009e836d46
[   14.263292] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000009ee1dd3 t=
o 000000009e836d46
[   14.263497] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0009e836d46 nonblocking
[   14.273804] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000009e836d46
[   14.273917] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004dc1ebe5
[   14.273920] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000009e836d46
[   14.274011] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004dc1ebe5
[   14.274083] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004dc1ebe5
[   14.279331] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.279434] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004dc1ebe5
[   14.279514] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a4cbf675 state to 000000004dc1ebe5
[   14.279587] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000002282b7b state to 000000004dc1ebe5
[   14.279661] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000002282b7b
[   14.279730] [drm:drm_atomic_check_only [drm]] checking 000000004dc1ebe=
5
[   14.279814] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.280047] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 000000004dc1ebe5
[   14.280262] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000029c5069f t=
o 000000004dc1ebe5
[   14.280468] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004dc1ebe5 nonblocking
[   14.290431] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004dc1ebe5
[   14.290543] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000051c54325
[   14.290545] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004dc1ebe5
[   14.290637] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000051c54325
[   14.290710] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000051c54325
[   14.321626] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D287/512
[   14.321862] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 287
[   14.322058] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 13714
[   14.345535] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.345640] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000097e8dc6e
[   14.345719] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 0000000097e8dc6e
[   14.345793] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000005d01bab0 state to 0000000097e8dc6e
[   14.345863] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000005d01bab0
[   14.345930] [drm:drm_atomic_check_only [drm]] checking 0000000097e8dc6=
e
[   14.346013] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.346285] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c56a1b20 t=
o 0000000097e8dc6e
[   14.346518] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000ed937325 t=
o 0000000097e8dc6e
[   14.346714] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00097e8dc6e nonblocking
[   14.357142] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000097e8dc6e
[   14.357246] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004b18f883
[   14.357257] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000097e8dc6e
[   14.357341] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004b18f883
[   14.357416] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004b18f883
[   14.362304] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.362411] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004b18f883
[   14.362491] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 000000004b18f883
[   14.362564] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000717fd59c state to 000000004b18f883
[   14.362636] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000717fd59c
[   14.362704] [drm:drm_atomic_check_only [drm]] checking 000000004b18f88=
3
[   14.362787] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.363022] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 000000004b18f883
[   14.363239] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000769e69fa t=
o 000000004b18f883
[   14.363446] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004b18f883 nonblocking
[   14.373869] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004b18f883
[   14.373974] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ee69ba1a
[   14.373984] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004b18f883
[   14.374069] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ee69ba1a
[   14.374169] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ee69ba1a
[   14.379092] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.379193] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000059ac2b0e
[   14.379273] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000004b2241fc state to 0000000059ac2b0e
[   14.379347] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001f786205 state to 0000000059ac2b0e
[   14.379420] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000001f786205
[   14.379489] [drm:drm_atomic_check_only [drm]] checking 0000000059ac2b0=
e
[   14.379571] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.379806] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000093dbbdb3 t=
o 0000000059ac2b0e
[   14.380021] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000000fe9cd2 t=
o 0000000059ac2b0e
[   14.380226] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00059ac2b0e nonblocking
[   14.390422] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000059ac2b0e
[   14.390533] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000059ac2b0e
[   14.396664] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.396766] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002b85db39
[   14.396846] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000007619640c state to 000000002b85db39
[   14.396920] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000004d8a47e state to 000000002b85db39
[   14.396991] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000004d8a47e
[   14.397059] [drm:drm_atomic_check_only [drm]] checking 000000002b85db3=
9
[   14.397142] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.397375] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000733432ad t=
o 000000002b85db39
[   14.397591] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000088708588 t=
o 000000002b85db39
[   14.397795] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002b85db39 nonblocking
[   14.407190] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002b85db39
[   14.407301] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000008f244b94
[   14.407305] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002b85db39
[   14.407395] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000008f244b94
[   14.407469] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000008f244b94
[   14.412403] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.412505] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000008f244b94
[   14.412585] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000c3d258f9 state to 000000008f244b94
[   14.412657] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000002a6db88b state to 000000008f244b94
[   14.412728] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000002a6db88b
[   14.412795] [drm:drm_atomic_check_only [drm]] checking 000000008f244b9=
4
[   14.412877] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.413111] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a1dc3f8a t=
o 000000008f244b94
[   14.413326] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000008c696026 t=
o 000000008f244b94
[   14.413530] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0008f244b94 nonblocking
[   14.423809] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000008f244b94
[   14.423913] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000763ac23f
[   14.423924] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000008f244b94
[   14.424008] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000763ac23f
[   14.424081] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000763ac23f
[   14.429367] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.429479] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000763ac23f
[   14.429568] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000007619640c state to 00000000763ac23f
[   14.429651] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000dc8cf0fb state to 00000000763ac23f
[   14.429731] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000dc8cf0fb
[   14.429808] [drm:drm_atomic_check_only [drm]] checking 00000000763ac23=
f
[   14.429900] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.430208] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b64b65e t=
o 00000000763ac23f
[   14.430438] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000004351aec t=
o 00000000763ac23f
[   14.430656] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000763ac23f nonblocking
[   14.440474] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000763ac23f
[   14.440580] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000884d981e
[   14.440593] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000763ac23f
[   14.440674] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000884d981e
[   14.440747] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000884d981e
[   14.469986] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D262/512
[   14.470288] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 262
[   14.470520] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 12544
[   14.495983] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.496088] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002c47fd41
[   14.496167] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 000000002c47fd41
[   14.496239] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ab618fee state to 000000002c47fd41
[   14.496311] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000ab618fee
[   14.496379] [drm:drm_atomic_check_only [drm]] checking 000000002c47fd4=
1
[   14.496462] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.496694] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000047f8cd04 t=
o 000000002c47fd41
[   14.496909] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000000ff4eb0 t=
o 000000002c47fd41
[   14.497112] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002c47fd41 nonblocking
[   14.507123] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002c47fd41
[   14.507233] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dddcca48
[   14.507238] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002c47fd41
[   14.507327] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dddcca48
[   14.507401] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dddcca48
[   14.512376] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.512478] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dddcca48
[   14.512557] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000dddcca48
[   14.512631] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000002674f3f state to 00000000dddcca48
[   14.512703] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000002674f3f
[   14.512771] [drm:drm_atomic_check_only [drm]] checking 00000000dddcca4=
8
[   14.512854] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.513087] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c113fb7c t=
o 00000000dddcca48
[   14.513300] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003eefdad7 t=
o 00000000dddcca48
[   14.513503] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dddcca48 nonblocking
[   14.523799] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dddcca48
[   14.523910] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e8468559
[   14.523914] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dddcca48
[   14.524004] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e8468559
[   14.524077] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e8468559
[   14.529039] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.529143] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e8468559
[   14.529223] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002213772a state to 00000000e8468559
[   14.529296] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000004f59de51 state to 00000000e8468559
[   14.529368] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000004f59de51
[   14.529436] [drm:drm_atomic_check_only [drm]] checking 00000000e846855=
9
[   14.529520] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.529752] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000f0a8b981 t=
o 00000000e8468559
[   14.529963] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f1fb366a t=
o 00000000e8468559
[   14.530206] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e8468559 nonblocking
[   14.540470] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e8468559
[   14.540574] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e8468559
[   14.545629] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.545733] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e4de66de
[   14.545814] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000e4de66de
[   14.545886] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000c2e6f026 state to 00000000e4de66de
[   14.545958] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000c2e6f026
[   14.546027] [drm:drm_atomic_check_only [drm]] checking 00000000e4de66d=
e
[   14.546137] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.546370] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000007ca04497 t=
o 00000000e4de66de
[   14.546583] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000bbe6b594 t=
o 00000000e4de66de
[   14.546788] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e4de66de nonblocking
[   14.557109] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e4de66de
[   14.557212] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e4de66de
[   14.562545] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.562660] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e4de66de
[   14.562749] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 00000000e4de66de
[   14.562833] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000065a61425 state to 00000000e4de66de
[   14.562916] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000065a61425
[   14.562992] [drm:drm_atomic_check_only [drm]] checking 00000000e4de66d=
e
[   14.563085] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.563343] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000457f8148 t=
o 00000000e4de66de
[   14.563583] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000bf0efc64 t=
o 00000000e4de66de
[   14.563809] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e4de66de nonblocking
[   14.573792] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e4de66de
[   14.573898] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e4de66de
[   14.573896] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e8468559
[   14.573991] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e8468559
[   14.574064] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e8468559
[   14.579266] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.579379] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e8468559
[   14.579469] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000e8468559
[   14.579551] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f9b31907 state to 00000000e8468559
[   14.579630] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000f9b31907
[   14.579705] [drm:drm_atomic_check_only [drm]] checking 00000000e846855=
9
[   14.579798] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.580058] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000002b07cb92 t=
o 00000000e8468559
[   14.580317] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006d0ca90a t=
o 00000000e8468559
[   14.580520] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e8468559 nonblocking
[   14.590422] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e8468559
[   14.590525] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e8468559
[   14.590526] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dddcca48
[   14.590623] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dddcca48
[   14.590696] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dddcca48
[   14.626850] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D237/512
[   14.627098] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 237
[   14.627303] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 11374
[   14.646513] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.646618] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dddcca48
[   14.646698] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002213772a state to 00000000dddcca48
[   14.646771] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f045a44c state to 00000000dddcca48
[   14.646843] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000f045a44c
[   14.646912] [drm:drm_atomic_check_only [drm]] checking 00000000dddcca4=
8
[   14.646995] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.647228] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000f4f43fb7 t=
o 00000000dddcca48
[   14.647440] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000004694f384 t=
o 00000000dddcca48
[   14.647643] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dddcca48 nonblocking
[   14.657104] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dddcca48
[   14.657207] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dddcca48
[   14.662337] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.662437] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002c47fd41
[   14.662514] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 000000002c47fd41
[   14.662585] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ab618fee state to 000000002c47fd41
[   14.662654] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000ab618fee
[   14.662721] [drm:drm_atomic_check_only [drm]] checking 000000002c47fd4=
1
[   14.662799] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.663021] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000009b846205 t=
o 000000002c47fd41
[   14.663222] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000ac589cc6 t=
o 000000002c47fd41
[   14.663413] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002c47fd41 nonblocking
[   14.673786] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002c47fd41
[   14.673890] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002c47fd41
[   14.679065] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.679170] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e14b66e9
[   14.679249] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 00000000e14b66e9
[   14.679321] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001494ff36 state to 00000000e14b66e9
[   14.679395] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000001494ff36
[   14.679463] [drm:drm_atomic_check_only [drm]] checking 00000000e14b66e=
9
[   14.679546] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.679782] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000e25ea6c7 t=
o 00000000e14b66e9
[   14.679994] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c95de19e t=
o 00000000e14b66e9
[   14.680199] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e14b66e9 nonblocking
[   14.690417] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e14b66e9
[   14.690519] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e14b66e9
[   14.696735] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.696838] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000036206b4e
[   14.696917] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 0000000036206b4e
[   14.696991] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000008c14dcab state to 0000000036206b4e
[   14.697064] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000008c14dcab
[   14.697132] [drm:drm_atomic_check_only [drm]] checking 0000000036206b4=
e
[   14.697215] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.697448] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000002b07cb92 t=
o 0000000036206b4e
[   14.697661] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000007f8b09d t=
o 0000000036206b4e
[   14.697864] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00036206b4e nonblocking
[   14.707121] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000036206b4e
[   14.707225] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000036206b4e
[   14.712386] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.712490] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000432cd92b
[   14.712569] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002213772a state to 00000000432cd92b
[   14.712643] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000096d25a62 state to 00000000432cd92b
[   14.712716] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000096d25a62
[   14.712784] [drm:drm_atomic_check_only [drm]] checking 00000000432cd92=
b
[   14.712868] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.713101] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000449fdb31 t=
o 00000000432cd92b
[   14.713314] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000485230af t=
o 00000000432cd92b
[   14.713516] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000432cd92b nonblocking
[   14.723798] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000432cd92b
[   14.723903] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000432cd92b
[   14.723904] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c922b521
[   14.724000] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c922b521
[   14.724073] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c922b521
[   14.729133] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.729236] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c922b521
[   14.729316] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000c922b521
[   14.729390] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e86c574d state to 00000000c922b521
[   14.729462] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e86c574d
[   14.729531] [drm:drm_atomic_check_only [drm]] checking 00000000c922b52=
1
[   14.729613] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.729847] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000661b9d66 t=
o 00000000c922b521
[   14.730061] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000000ee2094e t=
o 00000000c922b521
[   14.730307] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000c922b521 nonblocking
[   14.740462] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c922b521
[   14.740566] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c922b521
[   14.740567] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004aa72e92
[   14.740662] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004aa72e92
[   14.740734] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004aa72e92
[   14.778155] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D212/512
[   14.778417] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 212
[   14.778635] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 10205
[   14.795624] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.795723] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004aa72e92
[   14.795803] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 000000004aa72e92
[   14.795875] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f36e97c1 state to 000000004aa72e92
[   14.795945] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000f36e97c1
[   14.796013] [drm:drm_atomic_check_only [drm]] checking 000000004aa72e9=
2
[   14.796096] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.796323] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000034c0498f t=
o 000000004aa72e92
[   14.796535] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000082c605c3 t=
o 000000004aa72e92
[   14.796739] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004aa72e92 nonblocking
[   14.807114] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004aa72e92
[   14.807218] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004aa72e92
[   14.812354] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.812457] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000034f5871
[   14.812537] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000034f5871
[   14.812609] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000042a3961c state to 00000000034f5871
[   14.812681] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000042a3961c
[   14.812749] [drm:drm_atomic_check_only [drm]] checking 00000000034f587=
1
[   14.812830] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.813064] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000018e16389 t=
o 00000000034f5871
[   14.813277] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000005c6d4932 t=
o 00000000034f5871
[   14.813479] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000034f5871 nonblocking
[   14.823789] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000034f5871
[   14.823893] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000034f5871
[   14.829037] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.829140] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f0dd2dbb
[   14.829219] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002213772a state to 00000000f0dd2dbb
[   14.829292] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001494ff36 state to 00000000f0dd2dbb
[   14.829364] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000001494ff36
[   14.829432] [drm:drm_atomic_check_only [drm]] checking 00000000f0dd2db=
b
[   14.829516] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.829747] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008707fbf1 t=
o 00000000f0dd2dbb
[   14.829957] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b40b5a20 t=
o 00000000f0dd2dbb
[   14.830236] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f0dd2dbb nonblocking
[   14.840459] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f0dd2dbb
[   14.840564] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f0dd2dbb
[   14.840562] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b35f37d6
[   14.840657] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b35f37d6
[   14.840730] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b35f37d6
[   14.845516] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.845619] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b35f37d6
[   14.845698] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 00000000b35f37d6
[   14.845771] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000c2e6f026 state to 00000000b35f37d6
[   14.845841] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000c2e6f026
[   14.845909] [drm:drm_atomic_check_only [drm]] checking 00000000b35f37d=
6
[   14.845993] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.846262] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000001c038233 t=
o 00000000b35f37d6
[   14.846476] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000fbc1d7f2 t=
o 00000000b35f37d6
[   14.846678] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b35f37d6 nonblocking
[   14.857125] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b35f37d6
[   14.857228] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b35f37d6
[   14.857228] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000007cb753ba
[   14.857324] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000007cb753ba
[   14.857397] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000007cb753ba
[   14.862353] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.862456] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c73c46c0
[   14.862536] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 00000000c73c46c0
[   14.862609] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000071ec303c state to 00000000c73c46c0
[   14.862681] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000071ec303c
[   14.862749] [drm:drm_atomic_check_only [drm]] checking 00000000c73c46c=
0
[   14.862831] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.863065] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000ac7d627 t=
o 00000000c73c46c0
[   14.863277] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000005261b134 t=
o 00000000c73c46c0
[   14.863482] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000c73c46c0 nonblocking
[   14.873777] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c73c46c0
[   14.873883] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c73c46c0
[   14.879095] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.879199] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c0babea2
[   14.879278] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 00000000c0babea2
[   14.879351] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001c5e8a4b state to 00000000c0babea2
[   14.879423] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000001c5e8a4b
[   14.879491] [drm:drm_atomic_check_only [drm]] checking 00000000c0babea=
2
[   14.879574] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.879806] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d0b8c6bb t=
o 00000000c0babea2
[   14.880020] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000344435e9 t=
o 00000000c0babea2
[   14.880221] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000c0babea2 nonblocking
[   14.890416] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c0babea2
[   14.890519] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c0babea2
[   14.925637] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D187/512
[   14.925875] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 187
[   14.926069] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 9035
[   14.946055] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.946286] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c0babea2
[   14.946369] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 00000000c0babea2
[   14.946441] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000daacfffe state to 00000000c0babea2
[   14.946511] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000daacfffe
[   14.946581] [drm:drm_atomic_check_only [drm]] checking 00000000c0babea=
2
[   14.946664] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.946897] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000096785e8e t=
o 00000000c0babea2
[   14.947111] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000089a7480b t=
o 00000000c0babea2
[   14.947313] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000c0babea2 nonblocking
[   14.957103] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c0babea2
[   14.957206] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c0babea2
[   14.957203] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c73c46c0
[   14.957301] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c73c46c0
[   14.957373] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c73c46c0
[   14.962308] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.962408] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c73c46c0
[   14.962485] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 00000000c73c46c0
[   14.962555] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f96a442f state to 00000000c73c46c0
[   14.962623] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000f96a442f
[   14.962687] [drm:drm_atomic_check_only [drm]] checking 00000000c73c46c=
0
[   14.962767] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.962989] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d0b8c6bb t=
o 00000000c73c46c0
[   14.963191] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000084fb4d1a t=
o 00000000c73c46c0
[   14.963383] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000c73c46c0 nonblocking
[   14.973771] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c73c46c0
[   14.973875] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c73c46c0
[   14.978994] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   14.979098] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000989781b3
[   14.979179] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 00000000989781b3
[   14.979252] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000c41fc932 state to 00000000989781b3
[   14.979324] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000c41fc932
[   14.979392] [drm:drm_atomic_check_only [drm]] checking 00000000989781b=
3
[   14.979474] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.979707] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000ac7d627 t=
o 00000000989781b3
[   14.979922] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000013e55537 t=
o 00000000989781b3
[   14.980127] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000989781b3 nonblocking
[   14.990407] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000989781b3
[   14.990511] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000989781b3
[   14.990512] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000da9baecd
[   14.990608] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000da9baecd
[   14.990681] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000da9baecd
[   14.996712] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   14.996813] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000da9baecd
[   14.996892] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 00000000da9baecd
[   14.996967] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000377e8030 state to 00000000da9baecd
[   14.997039] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000377e8030
[   14.997107] [drm:drm_atomic_check_only [drm]] checking 00000000da9baec=
d
[   14.997190] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   14.997424] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000df253cbb t=
o 00000000da9baecd
[   14.997637] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000002fc676ae t=
o 00000000da9baecd
[   14.997840] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000da9baecd nonblocking
[   15.007105] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000da9baecd
[   15.007211] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000da9baecd
[   15.012709] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.012822] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000007073c23b
[   15.012911] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 000000007073c23b
[   15.012992] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d49c040f state to 000000007073c23b
[   15.013072] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000d49c040f
[   15.013149] [drm:drm_atomic_check_only [drm]] checking 000000007073c23=
b
[   15.013240] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.013499] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000982e6a4d t=
o 000000007073c23b
[   15.013738] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000004b3a6a75 t=
o 000000007073c23b
[   15.013965] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0007073c23b nonblocking
[   15.023783] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000007073c23b
[   15.023908] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000007073c23b
[   15.023900] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000005104af7a
[   15.023997] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000005104af7a
[   15.024070] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000005104af7a
[   15.029172] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.029286] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000005104af7a
[   15.029376] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 000000005104af7a
[   15.029457] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000071ec303c state to 000000005104af7a
[   15.029539] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000071ec303c
[   15.029614] [drm:drm_atomic_check_only [drm]] checking 000000005104af7=
a
[   15.029706] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.029963] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000df253cbb t=
o 000000005104af7a
[   15.030239] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000d4eef106 t=
o 000000005104af7a
[   15.030467] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0005104af7a nonblocking
[   15.040455] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000005104af7a
[   15.040562] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000005104af7a
[   15.040558] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000006944b3d3
[   15.040653] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000006944b3d3
[   15.040726] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000006944b3d3
[   15.085512] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D162/512
[   15.085749] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 162
[   15.085947] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 7865
[   15.112581] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.112695] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000006944b3d3
[   15.112785] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 000000006944b3d3
[   15.112868] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000007eab91b state to 000000006944b3d3
[   15.112949] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000007eab91b
[   15.113026] [drm:drm_atomic_check_only [drm]] checking 000000006944b3d=
3
[   15.113117] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.113384] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000870e0250 t=
o 000000006944b3d3
[   15.113597] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000033b25264 t=
o 000000006944b3d3
[   15.113801] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0006944b3d3 nonblocking
[   15.123767] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000006944b3d3
[   15.123870] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000006944b3d3
[   15.128990] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.129093] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000373cdbbd
[   15.129173] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 00000000373cdbbd
[   15.129248] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000063fc73c1 state to 00000000373cdbbd
[   15.129320] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000063fc73c1
[   15.129388] [drm:drm_atomic_check_only [drm]] checking 00000000373cdbb=
d
[   15.129472] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.129704] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000004f9ef297 t=
o 00000000373cdbbd
[   15.129918] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000007816aff7 t=
o 00000000373cdbbd
[   15.130162] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000373cdbbd nonblocking
[   15.140448] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000373cdbbd
[   15.140553] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000373cdbbd
[   15.140552] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b8f75335
[   15.140647] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b8f75335
[   15.140720] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b8f75335
[   15.145584] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.145688] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b8f75335
[   15.145767] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 00000000b8f75335
[   15.145841] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d49c040f state to 00000000b8f75335
[   15.145914] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000d49c040f
[   15.145983] [drm:drm_atomic_check_only [drm]] checking 00000000b8f7533=
5
[   15.146067] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.146364] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000084c7f646 t=
o 00000000b8f75335
[   15.146571] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000099a198e9 t=
o 00000000b8f75335
[   15.146763] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b8f75335 nonblocking
[   15.157110] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b8f75335
[   15.157214] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b8f75335
[   15.157212] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000013a9eba7
[   15.157309] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000013a9eba7
[   15.157382] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000013a9eba7
[   15.162300] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.162400] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000013a9eba7
[   15.162477] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 0000000013a9eba7
[   15.162548] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001c5e8a4b state to 0000000013a9eba7
[   15.162617] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000001c5e8a4b
[   15.162684] [drm:drm_atomic_check_only [drm]] checking 0000000013a9eba=
7
[   15.162763] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.162983] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000096785e8e t=
o 0000000013a9eba7
[   15.163182] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000061824eea t=
o 0000000013a9eba7
[   15.163374] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00013a9eba7 nonblocking
[   15.173768] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000013a9eba7
[   15.173875] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000013a9eba7
[   15.173868] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000081bd15ed
[   15.173964] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000081bd15ed
[   15.174038] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000081bd15ed
[   15.178965] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.179070] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000037633af2
[   15.179150] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000008559b293 state to 0000000037633af2
[   15.179223] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000010ca6f54 state to 0000000037633af2
[   15.179295] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000010ca6f54
[   15.179364] [drm:drm_atomic_check_only [drm]] checking 0000000037633af=
2
[   15.179447] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.179683] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ff767445 t=
o 0000000037633af2
[   15.179897] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000002115e3b1 t=
o 0000000037633af2
[   15.180104] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00037633af2 nonblocking
[   15.190405] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000037633af2
[   15.190510] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000037633af2
[   15.197061] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.197173] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003db59479
[   15.197263] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002ecd9178 state to 000000003db59479
[   15.197345] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000094d72ef6 state to 000000003db59479
[   15.197425] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000094d72ef6
[   15.197501] [drm:drm_atomic_check_only [drm]] checking 000000003db5947=
9
[   15.197594] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.197855] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000004601de33 t=
o 000000003db59479
[   15.198097] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000cf639f9c t=
o 000000003db59479
[   15.198375] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003db59479 nonblocking
[   15.207099] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003db59479
[   15.207204] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003db59479
[   15.258262] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D137/512
[   15.258522] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 137
[   15.258743] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 6695
[   15.278967] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.279069] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e987a2f4
[   15.279146] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000dfc085c5 state to 00000000e987a2f4
[   15.279220] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000072740974 state to 00000000e987a2f4
[   15.279292] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000072740974
[   15.279360] [drm:drm_atomic_check_only [drm]] checking 00000000e987a2f=
4
[   15.279443] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.279670] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d37f91e7 t=
o 00000000e987a2f4
[   15.279880] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000098276aef t=
o 00000000e987a2f4
[   15.280081] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e987a2f4 nonblocking
[   15.290412] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e987a2f4
[   15.290531] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000df9e23c0
[   15.290539] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e987a2f4
[   15.290639] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000df9e23c0
[   15.290722] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000df9e23c0
[   15.296661] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.296763] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000df9e23c0
[   15.296843] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f63e33a5 state to 00000000df9e23c0
[   15.296916] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000002b7466ad state to 00000000df9e23c0
[   15.296987] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000002b7466ad
[   15.297055] [drm:drm_atomic_check_only [drm]] checking 00000000df9e23c=
0
[   15.297139] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.297375] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d0b47feb t=
o 00000000df9e23c0
[   15.297589] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000008449fc3a t=
o 00000000df9e23c0
[   15.297792] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000df9e23c0 nonblocking
[   15.307099] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000df9e23c0
[   15.307214] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003382d40a
[   15.307231] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000df9e23c0
[   15.307331] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003382d40a
[   15.307413] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003382d40a
[   15.312331] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.312432] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003382d40a
[   15.312512] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000eaabcbe7 state to 000000003382d40a
[   15.312585] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000069454d46 state to 000000003382d40a
[   15.312657] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000069454d46
[   15.312725] [drm:drm_atomic_check_only [drm]] checking 000000003382d40=
a
[   15.312808] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.313043] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c208b532 t=
o 000000003382d40a
[   15.313253] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000539519b8 t=
o 000000003382d40a
[   15.313454] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003382d40a nonblocking
[   15.323752] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003382d40a
[   15.323865] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e9ab8f04
[   15.323882] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003382d40a
[   15.323979] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e9ab8f04
[   15.324079] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e9ab8f04
[   15.328959] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.329062] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b008e2cf
[   15.329143] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000019566d8f state to 00000000b008e2cf
[   15.329217] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000eb1ebe88 state to 00000000b008e2cf
[   15.329289] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000eb1ebe88
[   15.329358] [drm:drm_atomic_check_only [drm]] checking 00000000b008e2c=
f
[   15.329441] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.329674] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000031d75c2c t=
o 00000000b008e2cf
[   15.329888] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000331ad0fc t=
o 00000000b008e2cf
[   15.330091] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b008e2cf nonblocking
[   15.340406] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b008e2cf
[   15.340511] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b008e2cf
[   15.345573] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.345677] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b008e2cf
[   15.345756] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000144c8da0 state to 00000000b008e2cf
[   15.345829] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000004abdf6ac state to 00000000b008e2cf
[   15.345902] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000004abdf6ac
[   15.345970] [drm:drm_atomic_check_only [drm]] checking 00000000b008e2c=
f
[   15.346052] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.346330] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000098c8e7ac t=
o 00000000b008e2cf
[   15.346570] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a8efb3b6 t=
o 00000000b008e2cf
[   15.346783] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b008e2cf nonblocking
[   15.357075] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b008e2cf
[   15.357179] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b008e2cf
[   15.362547] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.362661] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000d9cacd81
[   15.362749] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000019566d8f state to 00000000d9cacd81
[   15.362831] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d8e51536 state to 00000000d9cacd81
[   15.362911] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000d8e51536
[   15.362988] [drm:drm_atomic_check_only [drm]] checking 00000000d9cacd8=
1
[   15.363081] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.363340] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000082fc9457 t=
o 00000000d9cacd81
[   15.363577] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000028b6debb t=
o 00000000d9cacd81
[   15.363805] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000d9cacd81 nonblocking
[   15.373745] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000d9cacd81
[   15.373849] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000d9cacd81
[   15.381444] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D112/512
[   15.381678] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 112
[   15.381871] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 5526
[   15.395687] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.395786] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003d504b32
[   15.395866] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 000000003d504b32
[   15.395939] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007d3fefd0 state to 000000003d504b32
[   15.396009] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000007d3fefd0
[   15.396077] [drm:drm_atomic_check_only [drm]] checking 000000003d504b3=
2
[   15.396160] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.396389] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000064cd48a7 t=
o 000000003d504b32
[   15.396605] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000004046a182 t=
o 000000003d504b32
[   15.396809] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003d504b32 nonblocking
[   15.407056] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003d504b32
[   15.407161] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003d504b32
[   15.413178] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.413282] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e68ad750
[   15.413363] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b356b0d1 state to 00000000e68ad750
[   15.413436] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000006e2aeb0c state to 00000000e68ad750
[   15.413508] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000006e2aeb0c
[   15.413578] [drm:drm_atomic_check_only [drm]] checking 00000000e68ad75=
0
[   15.413660] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.413897] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000040561fc2 t=
o 00000000e68ad750
[   15.414149] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f6489b45 t=
o 00000000e68ad750
[   15.414342] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e68ad750 nonblocking
[   15.423702] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e68ad750
[   15.423807] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e68ad750
[   15.429896] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.430000] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000377c93b1
[   15.430082] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 00000000377c93b1
[   15.430197] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007457cbf7 state to 00000000377c93b1
[   15.430274] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000007457cbf7
[   15.430342] [drm:drm_atomic_check_only [drm]] checking 00000000377c93b=
1
[   15.430443] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.430666] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000dc86affb t=
o 00000000377c93b1
[   15.430869] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000cd98ee92 t=
o 00000000377c93b1
[   15.431063] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000377c93b1 nonblocking
[   15.440407] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000377c93b1
[   15.440514] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000377c93b1
[   15.445565] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.445670] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000377c93b1
[   15.445749] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 00000000377c93b1
[   15.445822] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000064af9ee3 state to 00000000377c93b1
[   15.445894] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000064af9ee3
[   15.445964] [drm:drm_atomic_check_only [drm]] checking 00000000377c93b=
1
[   15.446048] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.446323] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000dd7be5b6 t=
o 00000000377c93b1
[   15.446540] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000d8155700 t=
o 00000000377c93b1
[   15.446750] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000377c93b1 nonblocking
[   15.457068] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000377c93b1
[   15.457172] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000377c93b1
[   15.463437] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.463551] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e68ad750
[   15.463640] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000007e41c850 state to 00000000e68ad750
[   15.463722] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009c62b275 state to 00000000e68ad750
[   15.463802] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000009c62b275
[   15.463880] [drm:drm_atomic_check_only [drm]] checking 00000000e68ad75=
0
[   15.463972] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.464235] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c4ec9942 t=
o 00000000e68ad750
[   15.464473] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000af4db87c t=
o 00000000e68ad750
[   15.464702] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e68ad750 nonblocking
[   15.473759] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e68ad750
[   15.473865] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e68ad750
[   15.473864] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003d504b32
[   15.473962] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003d504b32
[   15.474036] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003d504b32
[   15.479010] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.479114] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003d504b32
[   15.479196] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 000000003d504b32
[   15.479270] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000022fa4e90 state to 000000003d504b32
[   15.479342] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000022fa4e90
[   15.479410] [drm:drm_atomic_check_only [drm]] checking 000000003d504b3=
2
[   15.479494] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.479729] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000016ecac04 t=
o 000000003d504b32
[   15.479942] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000ec6ab1eb t=
o 000000003d504b32
[   15.480145] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003d504b32 nonblocking
[   15.490391] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003d504b32
[   15.490496] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003d504b32
[   15.518136] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D87/512
[   15.518393] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 87
[   15.518635] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 4356
[   15.546639] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.546754] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000847339ba
[   15.546843] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 00000000847339ba
[   15.546925] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000002cebfb01 state to 00000000847339ba
[   15.547006] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000002cebfb01
[   15.547082] [drm:drm_atomic_check_only [drm]] checking 00000000847339b=
a
[   15.547175] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.547435] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000e0d61738 t=
o 00000000847339ba
[   15.547672] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000bfced9b5 t=
o 00000000847339ba
[   15.547899] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000847339ba nonblocking
[   15.557060] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000847339ba
[   15.557172] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000847339ba
[   15.562547] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.562661] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000036ac91c4
[   15.562749] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b356b0d1 state to 0000000036ac91c4
[   15.562832] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003b2f1271 state to 0000000036ac91c4
[   15.562911] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000003b2f1271
[   15.562988] [drm:drm_atomic_check_only [drm]] checking 0000000036ac91c=
4
[   15.563079] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.563339] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000adae40ab t=
o 0000000036ac91c4
[   15.563574] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000004831d638 t=
o 0000000036ac91c4
[   15.563803] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00036ac91c4 nonblocking
[   15.573774] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000036ac91c4
[   15.573878] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000036ac91c4
[   15.579147] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.579264] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000de246077
[   15.579354] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 00000000de246077
[   15.579437] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d4411012 state to 00000000de246077
[   15.579516] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000d4411012
[   15.579592] [drm:drm_atomic_check_only [drm]] checking 00000000de24607=
7
[   15.579685] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.579944] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000037144f60 t=
o 00000000de246077
[   15.580185] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000001fed95b8 t=
o 00000000de246077
[   15.580413] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000de246077 nonblocking
[   15.590392] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000de246077
[   15.590498] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000de246077
[   15.596843] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.596956] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ea95c44e
[   15.597044] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 00000000ea95c44e
[   15.597126] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007d3fefd0 state to 00000000ea95c44e
[   15.597205] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000007d3fefd0
[   15.597283] [drm:drm_atomic_check_only [drm]] checking 00000000ea95c44=
e
[   15.597377] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.597638] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000061ad51a t=
o 00000000ea95c44e
[   15.597877] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b1732045 t=
o 00000000ea95c44e
[   15.598132] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ea95c44e nonblocking
[   15.607062] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ea95c44e
[   15.607166] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ea95c44e
[   15.612515] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.612628] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000000d2f4203
[   15.612716] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000007e41c850 state to 000000000d2f4203
[   15.612798] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000084cacf3f state to 000000000d2f4203
[   15.612878] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000084cacf3f
[   15.612955] [drm:drm_atomic_check_only [drm]] checking 000000000d2f420=
3
[   15.613048] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.613307] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000841ff1c0 t=
o 000000000d2f4203
[   15.613546] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000057fe88b9 t=
o 000000000d2f4203
[   15.613775] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0000d2f4203 nonblocking
[   15.623715] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000000d2f4203
[   15.623819] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000000d2f4203
[   15.630145] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.630260] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000025ca4c0b
[   15.630350] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 0000000025ca4c0b
[   15.630433] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000022fa4e90 state to 0000000025ca4c0b
[   15.630514] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000022fa4e90
[   15.630590] [drm:drm_atomic_check_only [drm]] checking 0000000025ca4c0=
b
[   15.630683] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.630943] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000004e48e6f7 t=
o 0000000025ca4c0b
[   15.631181] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f65a0964 t=
o 0000000025ca4c0b
[   15.631409] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00025ca4c0b nonblocking
[   15.640339] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000025ca4c0b
[   15.640445] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000025ca4c0b
[   15.658028] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D62/512
[   15.658313] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 62
[   15.658533] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 3186
[   15.679726] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.679831] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ea95c44e
[   15.679910] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 00000000ea95c44e
[   15.679984] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009c62b275 state to 00000000ea95c44e
[   15.680056] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000009c62b275
[   15.680123] [drm:drm_atomic_check_only [drm]] checking 00000000ea95c44=
e
[   15.680207] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.680442] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b32da59a t=
o 00000000ea95c44e
[   15.680654] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000538db6f1 t=
o 00000000ea95c44e
[   15.680858] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ea95c44e nonblocking
[   15.690319] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ea95c44e
[   15.690422] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ea95c44e
[   15.696691] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.696794] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000de246077
[   15.696874] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b356b0d1 state to 00000000de246077
[   15.696947] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000000384fa3b state to 00000000de246077
[   15.697020] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000000384fa3b
[   15.697089] [drm:drm_atomic_check_only [drm]] checking 00000000de24607=
7
[   15.697172] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.697445] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000ffc353a t=
o 00000000de246077
[   15.697685] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f84574fe t=
o 00000000de246077
[   15.697915] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000de246077 nonblocking
[   15.707040] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000de246077
[   15.707144] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000de246077
[   15.712433] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.712548] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000036ac91c4
[   15.712636] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 0000000036ac91c4
[   15.712717] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000cb4b3597 state to 0000000036ac91c4
[   15.712798] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000cb4b3597
[   15.712874] [drm:drm_atomic_check_only [drm]] checking 0000000036ac91c=
4
[   15.712966] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.713225] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000001f1731a t=
o 0000000036ac91c4
[   15.713461] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000000303163a t=
o 0000000036ac91c4
[   15.713690] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00036ac91c4 nonblocking
[   15.723719] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000036ac91c4
[   15.723823] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000036ac91c4
[   15.729157] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.729271] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000847339ba
[   15.729360] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 00000000847339ba
[   15.729441] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000006e2aeb0c state to 00000000847339ba
[   15.729523] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000006e2aeb0c
[   15.729600] [drm:drm_atomic_check_only [drm]] checking 00000000847339b=
a
[   15.729693] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.729956] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000040dcd8c3 t=
o 00000000847339ba
[   15.730231] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000023374114 t=
o 00000000847339ba
[   15.730464] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000847339ba nonblocking
[   15.740430] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000847339ba
[   15.740533] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000847339ba
[   15.745765] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.745878] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000518c9257
[   15.745966] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000007e41c850 state to 00000000518c9257
[   15.746048] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d4411012 state to 00000000518c9257
[   15.746179] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000d4411012
[   15.746259] [drm:drm_atomic_check_only [drm]] checking 00000000518c925=
7
[   15.746354] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.746639] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000079238a52 t=
o 00000000518c9257
[   15.746865] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000fa153931 t=
o 00000000518c9257
[   15.747080] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000518c9257 nonblocking
[   15.757094] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000518c9257
[   15.757207] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000518c9257
[   15.762622] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.762739] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000bc746293
[   15.762829] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 00000000bc746293
[   15.762912] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000022fa4e90 state to 00000000bc746293
[   15.762993] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000022fa4e90
[   15.763068] [drm:drm_atomic_check_only [drm]] checking 00000000bc74629=
3
[   15.763162] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.763425] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003a1f61e6 t=
o 00000000bc746293
[   15.763665] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006debc66a t=
o 00000000bc746293
[   15.763896] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000bc746293 nonblocking
[   15.773713] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000bc746293
[   15.773825] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000bc746293
[   15.797965] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D37/512
[   15.798245] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 37
[   15.798462] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 2016
[   15.812839] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.812945] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000377c93b1
[   15.813025] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 00000000377c93b1
[   15.813099] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007457cbf7 state to 00000000377c93b1
[   15.813172] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000007457cbf7
[   15.813239] [drm:drm_atomic_check_only [drm]] checking 00000000377c93b=
1
[   15.813323] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.813560] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ecf02e5d t=
o 00000000377c93b1
[   15.813774] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000528ffb9f t=
o 00000000377c93b1
[   15.813977] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000377c93b1 nonblocking
[   15.823719] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000377c93b1
[   15.823822] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000377c93b1
[   15.829114] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.829228] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000377c93b1
[   15.829317] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b356b0d1 state to 00000000377c93b1
[   15.829399] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000c50182eb state to 00000000377c93b1
[   15.829479] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000c50182eb
[   15.829555] [drm:drm_atomic_check_only [drm]] checking 00000000377c93b=
1
[   15.829648] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.829909] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000946f140a t=
o 00000000377c93b1
[   15.830213] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000fc2fd290 t=
o 00000000377c93b1
[   15.830429] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000377c93b1 nonblocking
[   15.840390] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000377c93b1
[   15.840505] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000377c93b1
[   15.845752] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.845866] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e68ad750
[   15.845956] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 00000000e68ad750
[   15.846037] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001e15a199 state to 00000000e68ad750
[   15.846159] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000001e15a199
[   15.846239] [drm:drm_atomic_check_only [drm]] checking 00000000e68ad75=
0
[   15.846333] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.846592] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b42ebdfd t=
o 00000000e68ad750
[   15.846830] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000007eae5f12 t=
o 00000000e68ad750
[   15.847060] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e68ad750 nonblocking
[   15.857058] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e68ad750
[   15.857172] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e68ad750
[   15.862465] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.862579] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003d504b32
[   15.862666] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 000000003d504b32
[   15.862749] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000061b8c519 state to 000000003d504b32
[   15.862829] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000061b8c519
[   15.862905] [drm:drm_atomic_check_only [drm]] checking 000000003d504b3=
2
[   15.862998] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.863257] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000064cd48a7 t=
o 000000003d504b32
[   15.863498] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a6d3d6a3 t=
o 000000003d504b32
[   15.863726] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003d504b32 nonblocking
[   15.873710] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003d504b32
[   15.873824] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003d504b32
[   15.879108] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.879222] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000bc746293
[   15.879311] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000007e41c850 state to 00000000bc746293
[   15.879393] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000cb4b3597 state to 00000000bc746293
[   15.879475] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000cb4b3597
[   15.879551] [drm:drm_atomic_check_only [drm]] checking 00000000bc74629=
3
[   15.879642] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.879901] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000040561fc2 t=
o 00000000bc746293
[   15.880140] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003fd897ba t=
o 00000000bc746293
[   15.880367] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000bc746293 nonblocking
[   15.890380] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000bc746293
[   15.890495] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000bc746293
[   15.895891] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.896007] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000518c9257
[   15.896098] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 00000000518c9257
[   15.896179] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000022fa4e90 state to 00000000518c9257
[   15.896261] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000022fa4e90
[   15.896337] [drm:drm_atomic_check_only [drm]] checking 00000000518c925=
7
[   15.896430] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.896692] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000dc86affb t=
o 00000000518c9257
[   15.896930] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000bba7a8b3 t=
o 00000000518c9257
[   15.897158] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000518c9257 nonblocking
[   15.907035] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000518c9257
[   15.907139] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000518c9257
[   15.955681] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D12/512
[   15.955770] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 12
[   15.955839] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 846
[   15.979650] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   15.979755] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000847339ba
[   15.979835] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 00000000847339ba
[   15.979907] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003b2f1271 state to 00000000847339ba
[   15.979977] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000003b2f1271
[   15.980045] [drm:drm_atomic_check_only [drm]] checking 00000000847339b=
a
[   15.980129] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.980365] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000dd7be5b6 t=
o 00000000847339ba
[   15.980581] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000066695949 t=
o 00000000847339ba
[   15.980787] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000847339ba nonblocking
[   15.990310] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000847339ba
[   15.990413] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000847339ba
[   15.996773] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   15.996887] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000036ac91c4
[   15.996976] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b356b0d1 state to 0000000036ac91c4
[   15.997058] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003849b770 state to 0000000036ac91c4
[   15.997139] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000003849b770
[   15.997216] [drm:drm_atomic_check_only [drm]] checking 0000000036ac91c=
4
[   15.997308] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   15.997568] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000116825be t=
o 0000000036ac91c4
[   15.997810] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b295c973 t=
o 0000000036ac91c4
[   15.998040] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00036ac91c4 nonblocking
[   16.007073] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000036ac91c4
[   16.007177] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000036ac91c4
[   16.012515] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.012629] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000de246077
[   16.012718] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 00000000de246077
[   16.012800] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000cb4b3597 state to 00000000de246077
[   16.012881] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000cb4b3597
[   16.012957] [drm:drm_atomic_check_only [drm]] checking 00000000de24607=
7
[   16.013049] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.013309] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000002129fb81 t=
o 00000000de246077
[   16.013546] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e6cdaae0 t=
o 00000000de246077
[   16.013776] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000de246077 nonblocking
[   16.023750] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000de246077
[   16.023793] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000de246077
[   16.028565] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.028612] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ea95c44e
[   16.028646] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 00000000ea95c44e
[   16.028676] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000002cebfb01 state to 00000000ea95c44e
[   16.028707] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000002cebfb01
[   16.028735] [drm:drm_atomic_check_only [drm]] checking 00000000ea95c44=
e
[   16.028770] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.028871] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000841ff1c0 t=
o 00000000ea95c44e
[   16.028960] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b977b55e t=
o 00000000ea95c44e
[   16.029044] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ea95c44e nonblocking
[   16.040442] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ea95c44e
[   16.040518] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ea95c44e
[   16.044874] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.044949] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000000d2f4203
[   16.045005] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000007e41c850 state to 000000000d2f4203
[   16.045057] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d4411012 state to 000000000d2f4203
[   16.045108] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000d4411012
[   16.045156] [drm:drm_atomic_check_only [drm]] checking 000000000d2f420=
3
[   16.045215] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.045437] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000061ad51a t=
o 000000000d2f4203
[   16.045633] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a8a4c98b t=
o 000000000d2f4203
[   16.045817] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0000d2f4203 nonblocking
[   16.057079] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000000d2f4203
[   16.057184] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000000d2f4203
[   16.062313] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.062418] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000025ca4c0b
[   16.062499] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 0000000025ca4c0b
[   16.062572] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000099cf4734 state to 0000000025ca4c0b
[   16.062644] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000099cf4734
[   16.062711] [drm:drm_atomic_check_only [drm]] checking 0000000025ca4c0=
b
[   16.062796] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.063030] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000037144f60 t=
o 0000000025ca4c0b
[   16.063242] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a25a2cea t=
o 0000000025ca4c0b
[   16.063445] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00025ca4c0b nonblocking
[   16.073734] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000025ca4c0b
[   16.073837] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000025ca4c0b
[   16.086803] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D5/512
[   16.087039] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 5
[   16.087234] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 519
[   16.113003] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.113109] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000025ca4c0b
[   16.113188] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 0000000025ca4c0b
[   16.113263] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007d3fefd0 state to 0000000025ca4c0b
[   16.113335] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000007d3fefd0
[   16.113402] [drm:drm_atomic_check_only [drm]] checking 0000000025ca4c0=
b
[   16.113486] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.113720] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000adae40ab t=
o 0000000025ca4c0b
[   16.113933] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000029205ebe t=
o 0000000025ca4c0b
[   16.114176] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00025ca4c0b nonblocking
[   16.123742] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000025ca4c0b
[   16.123850] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000025ca4c0b
[   16.123844] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000000d2f4203
[   16.123942] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000000d2f4203
[   16.124017] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000000d2f4203
[   16.128969] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.129083] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000000d2f4203
[   16.129173] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b356b0d1 state to 000000000d2f4203
[   16.129255] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d4411012 state to 000000000d2f4203
[   16.129337] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000d4411012
[   16.129413] [drm:drm_atomic_check_only [drm]] checking 000000000d2f420=
3
[   16.129507] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.129768] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c4ec9942 t=
o 000000000d2f4203
[   16.130008] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006a920d7c t=
o 000000000d2f4203
[   16.130275] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0000d2f4203 nonblocking
[   16.140414] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000000d2f4203
[   16.140520] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000000d2f4203
[   16.145572] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.145677] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ea95c44e
[   16.145756] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d0e5cfe0 state to 00000000ea95c44e
[   16.145829] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000002cebfb01 state to 00000000ea95c44e
[   16.145899] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000002cebfb01
[   16.145967] [drm:drm_atomic_check_only [drm]] checking 00000000ea95c44=
e
[   16.146049] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.146338] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ccf0c711 t=
o 00000000ea95c44e
[   16.146562] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000004e1f029 t=
o 00000000ea95c44e
[   16.146759] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ea95c44e nonblocking
[   16.157079] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ea95c44e
[   16.157186] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ea95c44e
[   16.157181] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000de246077
[   16.157300] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000de246077
[   16.157383] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000de246077
[   16.162454] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.162570] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000de246077
[   16.162660] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 00000000de246077
[   16.162740] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007457cbf7 state to 00000000de246077
[   16.162819] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000007457cbf7
[   16.162896] [drm:drm_atomic_check_only [drm]] checking 00000000de24607=
7
[   16.162988] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.163247] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000dc86affb t=
o 00000000de246077
[   16.163487] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000002fb6fb99 t=
o 00000000de246077
[   16.163716] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000de246077 nonblocking
[   16.173729] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000de246077
[   16.173843] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000de246077
[   16.179137] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.179252] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000036ac91c4
[   16.179342] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000007e41c850 state to 0000000036ac91c4
[   16.179425] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000084cacf3f state to 0000000036ac91c4
[   16.179504] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000084cacf3f
[   16.179581] [drm:drm_atomic_check_only [drm]] checking 0000000036ac91c=
4
[   16.179674] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.179934] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000040561fc2 t=
o 0000000036ac91c4
[   16.180171] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000056a3a17b t=
o 0000000036ac91c4
[   16.180399] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00036ac91c4 nonblocking
[   16.190366] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000036ac91c4
[   16.190481] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000036ac91c4
[   16.190468] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000847339ba
[   16.190575] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000847339ba
[   16.190658] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000847339ba
[   16.195756] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.195869] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000847339ba
[   16.195959] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000793eb993 state to 00000000847339ba
[   16.196042] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000cb4b3597 state to 00000000847339ba
[   16.196123] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000cb4b3597
[   16.196200] [drm:drm_atomic_check_only [drm]] checking 00000000847339b=
a
[   16.196293] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.196553] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000064cd48a7 t=
o 00000000847339ba
[   16.196791] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000805f8a52 t=
o 00000000847339ba
[   16.197020] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000847339ba nonblocking
[   16.207055] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000847339ba
[   16.207169] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000847339ba
[   16.306430] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DC off
[   16.306695] i915 0000:00:02.0: [drm:skl_enable_dc6 [i915]] Enabling DC=
6
[   16.306916] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 00 to 02
[   16.402520] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D30/512
[   16.402780] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 30
[   16.402998] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 1689
[   16.428910] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DC off
[   16.429422] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 02 to 00
[   16.431409] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.431514] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000fccfd4a3
[   16.431593] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 00000000fccfd4a3
[   16.431667] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000004a4af32c state to 00000000fccfd4a3
[   16.431739] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000004a4af32c
[   16.431807] [drm:drm_atomic_check_only [drm]] checking 00000000fccfd4a=
3
[   16.431891] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.432118] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c45930ec t=
o 00000000fccfd4a3
[   16.432333] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006b62e7c0 t=
o 00000000fccfd4a3
[   16.432539] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000fccfd4a3 nonblocking
[   16.452545] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000fccfd4a3
[   16.452603] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000347eb01d
[   16.452650] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000fccfd4a3
[   16.452703] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000347eb01d
[   16.452777] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000347eb01d
[   16.458705] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.458815] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000347eb01d
[   16.458895] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000e8225649 state to 00000000347eb01d
[   16.458967] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ef3a525a state to 00000000347eb01d
[   16.459037] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000ef3a525a
[   16.459105] [drm:drm_atomic_check_only [drm]] checking 00000000347eb01=
d
[   16.459189] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.459430] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000027311222 t=
o 00000000347eb01d
[   16.459647] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003809d969 t=
o 00000000347eb01d
[   16.459853] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000347eb01d nonblocking
[   16.469188] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000347eb01d
[   16.469250] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000a9dec63e
[   16.469295] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000347eb01d
[   16.469349] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000a9dec63e
[   16.469422] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000a9dec63e
[   16.475518] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.475632] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000a9dec63e
[   16.475722] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 00000000a9dec63e
[   16.475804] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ea89f701 state to 00000000a9dec63e
[   16.475884] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000ea89f701
[   16.475960] [drm:drm_atomic_check_only [drm]] checking 00000000a9dec63=
e
[   16.476053] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.476313] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c071e087 t=
o 00000000a9dec63e
[   16.476554] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e68adf4d t=
o 00000000a9dec63e
[   16.476782] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000a9dec63e nonblocking
[   16.485869] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000a9dec63e
[   16.485924] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b01c2730
[   16.485977] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000a9dec63e
[   16.486022] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b01c2730
[   16.486096] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b01c2730
[   16.492247] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.492361] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b01c2730
[   16.492450] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000e8225649 state to 00000000b01c2730
[   16.492533] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000345b3d73 state to 00000000b01c2730
[   16.492615] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000345b3d73
[   16.492691] [drm:drm_atomic_check_only [drm]] checking 00000000b01c273=
0
[   16.492784] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.493046] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000578e8464 t=
o 00000000b01c2730
[   16.493287] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000907d9131 t=
o 00000000b01c2730
[   16.493514] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b01c2730 nonblocking
[   16.502515] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b01c2730
[   16.502577] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000d6a99819
[   16.502618] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b01c2730
[   16.502675] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000d6a99819
[   16.502749] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000d6a99819
[   16.508892] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.509005] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000d6a99819
[   16.509093] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 00000000d6a99819
[   16.509175] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000547f8fba state to 00000000d6a99819
[   16.509256] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000547f8fba
[   16.509332] [drm:drm_atomic_check_only [drm]] checking 00000000d6a9981=
9
[   16.509424] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.509685] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000006d6f043d t=
o 00000000d6a99819
[   16.509925] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000008bcea92c t=
o 00000000d6a99819
[   16.510183] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000d6a99819 nonblocking
[   16.519202] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000d6a99819
[   16.519268] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000d27ebd58
[   16.519327] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000d6a99819
[   16.519366] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000d27ebd58
[   16.519438] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000d27ebd58
[   16.525576] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.525691] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000d27ebd58
[   16.525782] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000e8225649 state to 00000000d27ebd58
[   16.525864] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f71f385e state to 00000000d27ebd58
[   16.525946] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000f71f385e
[   16.526023] [drm:drm_atomic_check_only [drm]] checking 00000000d27ebd5=
8
[   16.526153] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.526418] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008f416416 t=
o 00000000d27ebd58
[   16.526657] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000008dc7b778 t=
o 00000000d27ebd58
[   16.526884] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000d27ebd58 nonblocking
[   16.535873] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000d27ebd58
[   16.535930] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd719386
[   16.535978] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000d27ebd58
[   16.536028] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd719386
[   16.536100] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd719386
[   16.574122] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D55/512
[   16.574396] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 55
[   16.574592] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 2859
[   16.591524] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.591626] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd719386
[   16.591706] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 00000000dd719386
[   16.591781] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001972bdbc state to 00000000dd719386
[   16.591852] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000001972bdbc
[   16.591919] [drm:drm_atomic_check_only [drm]] checking 00000000dd71938=
6
[   16.592002] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.592231] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c43432da t=
o 00000000dd719386
[   16.592443] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000342a30a6 t=
o 00000000dd719386
[   16.592649] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd719386 nonblocking
[   16.602497] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd719386
[   16.602559] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004ce05c78
[   16.602621] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd719386
[   16.602655] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004ce05c78
[   16.602727] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004ce05c78
[   16.608745] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.608849] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004ce05c78
[   16.608929] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000e8225649 state to 000000004ce05c78
[   16.609001] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000345b3d73 state to 000000004ce05c78
[   16.609072] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000345b3d73
[   16.609139] [drm:drm_atomic_check_only [drm]] checking 000000004ce05c7=
8
[   16.609222] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.609457] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a18fac7b t=
o 000000004ce05c78
[   16.609672] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003c1cadf3 t=
o 000000004ce05c78
[   16.609879] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004ce05c78 nonblocking
[   16.619197] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004ce05c78
[   16.619273] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd719386
[   16.619319] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004ce05c78
[   16.619371] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd719386
[   16.619445] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd719386
[   16.624499] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.624602] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd719386
[   16.624683] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 00000000dd719386
[   16.624756] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000004a4af32c state to 00000000dd719386
[   16.624828] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000004a4af32c
[   16.624896] [drm:drm_atomic_check_only [drm]] checking 00000000dd71938=
6
[   16.624979] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.625214] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000009de648ca t=
o 00000000dd719386
[   16.625429] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000054fbc013 t=
o 00000000dd719386
[   16.625634] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd719386 nonblocking
[   16.635870] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd719386
[   16.635926] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000d27ebd58
[   16.636001] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd719386
[   16.636021] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000d27ebd58
[   16.636093] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000d27ebd58
[   16.642258] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.642374] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000d27ebd58
[   16.642464] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000e8225649 state to 00000000d27ebd58
[   16.642546] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001972bdbc state to 00000000d27ebd58
[   16.642627] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000001972bdbc
[   16.642703] [drm:drm_atomic_check_only [drm]] checking 00000000d27ebd5=
8
[   16.642797] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.643059] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000009e2dccb0 t=
o 00000000d27ebd58
[   16.643299] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000094965a9b t=
o 00000000d27ebd58
[   16.643532] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000d27ebd58 nonblocking
[   16.652566] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000d27ebd58
[   16.652623] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000d6a99819
[   16.652709] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000d27ebd58
[   16.652729] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000d6a99819
[   16.652808] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000d6a99819
[   16.657921] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.658038] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000d6a99819
[   16.658163] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 00000000d6a99819
[   16.658249] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000cddf0819 state to 00000000d6a99819
[   16.658329] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000cddf0819
[   16.658406] [drm:drm_atomic_check_only [drm]] checking 00000000d6a9981=
9
[   16.658500] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.658764] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000f952d3cb t=
o 00000000d6a99819
[   16.659001] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e82b2fb7 t=
o 00000000d6a99819
[   16.659229] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000d6a99819 nonblocking
[   16.669205] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000d6a99819
[   16.669262] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b01c2730
[   16.669357] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000d6a99819
[   16.669384] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b01c2730
[   16.669467] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b01c2730
[   16.674699] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.674816] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b01c2730
[   16.674907] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000e8225649 state to 00000000b01c2730
[   16.674989] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000547f8fba state to 00000000b01c2730
[   16.675071] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000547f8fba
[   16.675148] [drm:drm_atomic_check_only [drm]] checking 00000000b01c273=
0
[   16.675241] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.675504] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000686e6c6b t=
o 00000000b01c2730
[   16.675746] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000005569da5e t=
o 00000000b01c2730
[   16.675975] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b01c2730 nonblocking
[   16.685869] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b01c2730
[   16.685924] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000a9dec63e
[   16.685999] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b01c2730
[   16.686019] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000a9dec63e
[   16.686091] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000a9dec63e
[   16.702044] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D80/512
[   16.702301] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 80
[   16.702487] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 4028
[   16.724569] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.724675] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000a9dec63e
[   16.724756] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 00000000a9dec63e
[   16.724829] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ba37df93 state to 00000000a9dec63e
[   16.724901] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000ba37df93
[   16.724970] [drm:drm_atomic_check_only [drm]] checking 00000000a9dec63=
e
[   16.725054] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.725289] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000fc861dae t=
o 00000000a9dec63e
[   16.725503] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e44ac7b8 t=
o 00000000a9dec63e
[   16.725708] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000a9dec63e nonblocking
[   16.735865] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000a9dec63e
[   16.735930] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000347eb01d
[   16.735969] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000a9dec63e
[   16.736028] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000347eb01d
[   16.736103] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000347eb01d
[   16.742034] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.742155] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000347eb01d
[   16.742236] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000e8225649 state to 00000000347eb01d
[   16.742310] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000004adf8f69 state to 00000000347eb01d
[   16.742382] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000004adf8f69
[   16.742450] [drm:drm_atomic_check_only [drm]] checking 00000000347eb01=
d
[   16.742534] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.742771] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000030932b7e t=
o 00000000347eb01d
[   16.742986] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000003c85fa0f t=
o 00000000347eb01d
[   16.743190] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000347eb01d nonblocking
[   16.752536] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000347eb01d
[   16.752595] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000fccfd4a3
[   16.752642] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000347eb01d
[   16.752692] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000fccfd4a3
[   16.752767] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000fccfd4a3
[   16.758584] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.758676] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000fccfd4a3
[   16.758756] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f831dc75 state to 00000000fccfd4a3
[   16.758829] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ea89f701 state to 00000000fccfd4a3
[   16.758901] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000ea89f701
[   16.758970] [drm:drm_atomic_check_only [drm]] checking 00000000fccfd4a=
3
[   16.759053] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.759288] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000c9917fb3 t=
o 00000000fccfd4a3
[   16.759502] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006880370e t=
o 00000000fccfd4a3
[   16.759705] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000fccfd4a3 nonblocking
[   16.769117] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000fccfd4a3
[   16.769219] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000fccfd4a3
[   16.775135] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.775233] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000009f714e5e
[   16.775311] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b24d90d3 state to 000000009f714e5e
[   16.775385] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001cff2ef0 state to 000000009f714e5e
[   16.775455] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000001cff2ef0
[   16.775523] [drm:drm_atomic_check_only [drm]] checking 000000009f714e5=
e
[   16.775605] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.775836] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000022fd45d t=
o 000000009f714e5e
[   16.776046] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000007fa8b0e8 t=
o 000000009f714e5e
[   16.776248] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0009f714e5e nonblocking
[   16.785822] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000009f714e5e
[   16.785839] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000007cb753ba
[   16.785849] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000009f714e5e
[   16.785865] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000007cb753ba
[   16.785886] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000007cb753ba
[   16.790357] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.790392] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000007cb753ba
[   16.790415] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000006075ac9b state to 000000007cb753ba
[   16.790436] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000029c7c838 state to 000000007cb753ba
[   16.790456] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000029c7c838
[   16.790475] [drm:drm_atomic_check_only [drm]] checking 000000007cb753b=
a
[   16.790500] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.790571] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000eb46832d t=
o 000000007cb753ba
[   16.790631] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000572cdda2 t=
o 000000007cb753ba
[   16.790689] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0007cb753ba nonblocking
[   16.802505] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000007cb753ba
[   16.802546] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000007cb753ba
[   16.807363] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.807409] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b35f37d6
[   16.807440] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002213772a state to 00000000b35f37d6
[   16.807469] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000a1da8765 state to 00000000b35f37d6
[   16.807498] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000a1da8765
[   16.807525] [drm:drm_atomic_check_only [drm]] checking 00000000b35f37d=
6
[   16.807558] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.807655] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000034c0498f t=
o 00000000b35f37d6
[   16.807740] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000002abc7be5 t=
o 00000000b35f37d6
[   16.807820] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b35f37d6 nonblocking
[   16.819190] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b35f37d6
[   16.819249] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b35f37d6
[   16.841505] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D105/512
[   16.841741] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 105
[   16.841936] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 5198
[   16.858151] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.858254] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   16.858330] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 000000002582f62e
[   16.858401] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003ffe6fbb state to 000000002582f62e
[   16.858469] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000003ffe6fbb
[   16.858534] [drm:drm_atomic_check_only [drm]] checking 000000002582f62=
e
[   16.858613] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.858838] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a03a30d0 t=
o 000000002582f62e
[   16.859041] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000008c6e23d8 t=
o 000000002582f62e
[   16.859234] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002582f62e nonblocking
[   16.869175] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   16.869278] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   16.875533] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.875649] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   16.875737] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000dd9ef111
[   16.875818] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e8618ea2 state to 00000000dd9ef111
[   16.875898] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e8618ea2
[   16.875975] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   16.876066] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.876327] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000005d3d1b73 t=
o 00000000dd9ef111
[   16.876567] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006ef4e68e t=
o 00000000dd9ef111
[   16.876798] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   16.885856] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   16.885960] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   16.891223] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.891362] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   16.891442] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 00000000e137d200
[   16.891514] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009864309b state to 00000000e137d200
[   16.891586] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000009864309b
[   16.891654] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   16.891737] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.891971] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000006872b37 t=
o 00000000e137d200
[   16.892188] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000569a651d t=
o 00000000e137d200
[   16.892393] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   16.902507] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   16.902612] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   16.907932] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.908047] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004d04ceaf
[   16.908136] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000004d04ceaf
[   16.908218] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ea74f734 state to 000000004d04ceaf
[   16.908299] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000ea74f734
[   16.908376] [drm:drm_atomic_check_only [drm]] checking 000000004d04cea=
f
[   16.908469] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.908728] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000281fcc35 t=
o 000000004d04ceaf
[   16.908967] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000224ff86d t=
o 000000004d04ceaf
[   16.909194] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004d04ceaf nonblocking
[   16.919184] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004d04ceaf
[   16.919309] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004d04ceaf
[   16.919310] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   16.919418] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   16.919500] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   16.924663] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   16.924777] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   16.924866] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 0000000015ed2737
[   16.924948] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000008897d43e state to 0000000015ed2737
[   16.925028] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000008897d43e
[   16.925105] [drm:drm_atomic_check_only [drm]] checking 0000000015ed273=
7
[   16.925197] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.925457] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ea20ebd6 t=
o 0000000015ed2737
[   16.925695] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f2ed2917 t=
o 0000000015ed2737
[   16.925923] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015ed2737 nonblocking
[   16.935867] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   16.935970] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   16.935971] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003e3d17fb
[   16.936068] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003e3d17fb
[   16.936141] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003e3d17fb
[   16.941312] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   16.941427] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003e3d17fb
[   16.941515] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000003e3d17fb
[   16.941597] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e0001197 state to 000000003e3d17fb
[   16.941679] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e0001197
[   16.941756] [drm:drm_atomic_check_only [drm]] checking 000000003e3d17f=
b
[   16.941850] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   16.942161] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000041687538 t=
o 000000003e3d17fb
[   16.942477] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000d97e9b18 t=
o 000000003e3d17fb
[   16.942784] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003e3d17fb nonblocking
[   16.952643] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003e3d17fb
[   16.952757] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003e3d17fb
[   16.986250] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D130/512
[   16.986510] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 130
[   16.986729] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 6368
[   17.008330] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.008446] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003e3d17fb
[   17.008535] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 000000003e3d17fb
[   17.008618] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000686e93ca state to 000000003e3d17fb
[   17.008699] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000686e93ca
[   17.008775] [drm:drm_atomic_check_only [drm]] checking 000000003e3d17f=
b
[   17.008869] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.009130] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000048bc326b t=
o 000000003e3d17fb
[   17.009367] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000004045682e t=
o 000000003e3d17fb
[   17.009595] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003e3d17fb nonblocking
[   17.019168] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003e3d17fb
[   17.019272] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003e3d17fb
[   17.024680] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.024793] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   17.024881] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 0000000015ed2737
[   17.024964] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e84c5662 state to 0000000015ed2737
[   17.025045] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e84c5662
[   17.025122] [drm:drm_atomic_check_only [drm]] checking 0000000015ed273=
7
[   17.025214] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.025475] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b47c3839 t=
o 0000000015ed2737
[   17.025712] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a8c1b70d t=
o 0000000015ed2737
[   17.025942] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015ed2737 nonblocking
[   17.035785] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   17.035898] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   17.041190] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.041306] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004d04ceaf
[   17.041395] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 000000004d04ceaf
[   17.041477] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003ffe6fbb state to 000000004d04ceaf
[   17.041557] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000003ffe6fbb
[   17.041633] [drm:drm_atomic_check_only [drm]] checking 000000004d04cea=
f
[   17.041725] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.041984] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000004e70ce18 t=
o 000000004d04ceaf
[   17.042297] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000418b9e3b t=
o 000000004d04ceaf
[   17.042601] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004d04ceaf nonblocking
[   17.052523] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004d04ceaf
[   17.052628] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004d04ceaf
[   17.057912] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.058028] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   17.058161] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000e137d200
[   17.058266] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000664a55a4 state to 00000000e137d200
[   17.058345] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000664a55a4
[   17.058419] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   17.058508] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.058756] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000005da0f1d5 t=
o 00000000e137d200
[   17.058981] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000819f5b3c t=
o 00000000e137d200
[   17.059196] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   17.069221] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   17.069335] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   17.069331] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   17.069439] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   17.069521] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   17.074655] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.074769] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   17.074857] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 00000000dd9ef111
[   17.074939] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000cd7e6cc4 state to 00000000dd9ef111
[   17.075021] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000cd7e6cc4
[   17.075098] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   17.075191] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.075452] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000061c58345 t=
o 00000000dd9ef111
[   17.075691] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000d4d35d6c t=
o 00000000dd9ef111
[   17.075920] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   17.085851] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   17.085954] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   17.085954] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   17.086052] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   17.086151] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   17.091369] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.091484] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   17.091573] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000002582f62e
[   17.091655] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000efc9e2c7 state to 000000002582f62e
[   17.091737] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000efc9e2c7
[   17.091814] [drm:drm_atomic_check_only [drm]] checking 000000002582f62=
e
[   17.091907] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.092168] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000033c1dff3 t=
o 000000002582f62e
[   17.092409] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000008cafeb1c t=
o 000000002582f62e
[   17.092638] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002582f62e nonblocking
[   17.102550] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   17.102655] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   17.102655] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   17.102752] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   17.102826] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   17.125991] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D155/512
[   17.126275] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 155
[   17.126495] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 7538
[   17.141495] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.141595] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   17.141675] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 00000000dd9ef111
[   17.141749] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f8575507 state to 00000000dd9ef111
[   17.141821] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000f8575507
[   17.141888] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   17.141972] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.142246] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000721e8d9f t=
o 00000000dd9ef111
[   17.142479] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000bfa1ff2c t=
o 00000000dd9ef111
[   17.142675] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   17.152519] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   17.152624] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   17.157755] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.157860] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   17.157941] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000e137d200
[   17.158014] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007ddb1f12 state to 00000000e137d200
[   17.158086] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000007ddb1f12
[   17.158207] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   17.158323] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.158550] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000539a8fe6 t=
o 00000000e137d200
[   17.158755] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c5462ac1 t=
o 00000000e137d200
[   17.158947] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   17.169187] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   17.169291] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   17.169290] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004d04ceaf
[   17.169388] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004d04ceaf
[   17.169459] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004d04ceaf
[   17.174405] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.174510] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000077d84b6f
[   17.174590] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000001dd17b5f state to 0000000077d84b6f
[   17.174663] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f1d7efc8 state to 0000000077d84b6f
[   17.174735] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000f1d7efc8
[   17.174802] [drm:drm_atomic_check_only [drm]] checking 0000000077d84b6=
f
[   17.174884] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.175118] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000f78d472 t=
o 0000000077d84b6f
[   17.175360] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000044e8328b t=
o 0000000077d84b6f
[   17.175588] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00077d84b6f nonblocking
[   17.185845] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000077d84b6f
[   17.185960] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000077d84b6f
[   17.191241] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.191356] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3119c7f
[   17.191445] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 00000000f3119c7f
[   17.191527] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000daeb2483 state to 00000000f3119c7f
[   17.191610] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000daeb2483
[   17.191686] [drm:drm_atomic_check_only [drm]] checking 00000000f3119c7=
f
[   17.191779] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.192039] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003199c8cb t=
o 00000000f3119c7f
[   17.192279] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000068665891 t=
o 00000000f3119c7f
[   17.192506] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f3119c7f nonblocking
[   17.202470] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3119c7f
[   17.202574] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3119c7f
[   17.208907] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.209019] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dddc73f3
[   17.209107] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 00000000dddc73f3
[   17.209188] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009dab2faf state to 00000000dddc73f3
[   17.209268] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000009dab2faf
[   17.209344] [drm:drm_atomic_check_only [drm]] checking 00000000dddc73f=
3
[   17.209436] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.209696] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 00000000dddc73f3
[   17.209932] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000469ddbad t=
o 00000000dddc73f3
[   17.210200] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dddc73f3 nonblocking
[   17.219145] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dddc73f3
[   17.219270] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dddc73f3
[   17.224882] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.224996] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000085436692
[   17.225084] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a4cbf675 state to 0000000085436692
[   17.225167] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000a885abcc state to 0000000085436692
[   17.225247] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000a885abcc
[   17.225325] [drm:drm_atomic_check_only [drm]] checking 000000008543669=
2
[   17.225417] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.225678] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000029b8d7f2 t=
o 0000000085436692
[   17.225916] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006c829891 t=
o 0000000085436692
[   17.226171] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00085436692 nonblocking
[   17.235850] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000085436692
[   17.235954] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000085436692
[   17.266200] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D180/512
[   17.266462] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 180
[   17.266682] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 8707
[   17.291498] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.291604] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000085436692
[   17.291683] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 0000000085436692
[   17.291757] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000066073962 state to 0000000085436692
[   17.291827] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000066073962
[   17.291896] [drm:drm_atomic_check_only [drm]] checking 000000008543669=
2
[   17.291978] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.292214] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 0000000085436692
[   17.292431] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000ecaaaa32 t=
o 0000000085436692
[   17.292636] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00085436692 nonblocking
[   17.302464] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000085436692
[   17.302566] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000085436692
[   17.308709] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.308811] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dddc73f3
[   17.308889] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 00000000dddc73f3
[   17.308963] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000087daaf4d state to 00000000dddc73f3
[   17.309036] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000087daaf4d
[   17.309104] [drm:drm_atomic_check_only [drm]] checking 00000000dddc73f=
3
[   17.309186] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.309459] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003199c8cb t=
o 00000000dddc73f3
[   17.309699] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000002cb0d408 t=
o 00000000dddc73f3
[   17.309930] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dddc73f3 nonblocking
[   17.319164] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dddc73f3
[   17.319267] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dddc73f3
[   17.319265] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3119c7f
[   17.319362] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3119c7f
[   17.319437] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3119c7f
[   17.324633] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.324747] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3119c7f
[   17.324836] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000001dd17b5f state to 00000000f3119c7f
[   17.324918] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000006542de11 state to 00000000f3119c7f
[   17.324999] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000006542de11
[   17.325077] [drm:drm_atomic_check_only [drm]] checking 00000000f3119c7=
f
[   17.325169] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.325434] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 00000000f3119c7f
[   17.325652] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000032ea702b t=
o 00000000f3119c7f
[   17.325860] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f3119c7f nonblocking
[   17.335847] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3119c7f
[   17.335952] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3119c7f
[   17.341009] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.341122] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000077d84b6f
[   17.341211] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 0000000077d84b6f
[   17.341294] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000056e66d4b state to 0000000077d84b6f
[   17.341374] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000056e66d4b
[   17.341450] [drm:drm_atomic_check_only [drm]] checking 0000000077d84b6=
f
[   17.341543] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.341802] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000029b8d7f2 t=
o 0000000077d84b6f
[   17.342038] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000000dd03b05 t=
o 0000000077d84b6f
[   17.342345] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00077d84b6f nonblocking
[   17.352514] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000077d84b6f
[   17.352616] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000077d84b6f
[   17.357796] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.357912] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000076ce74c1
[   17.358000] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 0000000076ce74c1
[   17.358082] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000006cf3f7e3 state to 0000000076ce74c1
[   17.358227] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000006cf3f7e3
[   17.358332] [drm:drm_atomic_check_only [drm]] checking 0000000076ce74c=
1
[   17.358460] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.358817] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 0000000076ce74c1
[   17.359132] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000d71e3b1b t=
o 0000000076ce74c1
[   17.359433] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00076ce74c1 nonblocking
[   17.369178] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000076ce74c1
[   17.369282] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000076ce74c1
[   17.374688] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.374802] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000009e836d46
[   17.374891] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a4cbf675 state to 000000009e836d46
[   17.374975] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000717fd59c state to 000000009e836d46
[   17.375056] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000717fd59c
[   17.375133] [drm:drm_atomic_check_only [drm]] checking 000000009e836d4=
6
[   17.375226] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.375485] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003199c8cb t=
o 000000009e836d46
[   17.375727] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000057448591 t=
o 000000009e836d46
[   17.375955] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0009e836d46 nonblocking
[   17.385823] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000009e836d46
[   17.385936] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000009e836d46
[   17.397567] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D205/512
[   17.397825] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 205
[   17.398044] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 9877
[   17.424980] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.425083] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004dc1ebe5
[   17.425163] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 000000004dc1ebe5
[   17.425237] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000bef870fa state to 000000004dc1ebe5
[   17.425309] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000bef870fa
[   17.425377] [drm:drm_atomic_check_only [drm]] checking 000000004dc1ebe=
5
[   17.425460] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.425695] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 000000004dc1ebe5
[   17.425910] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000001a46336a t=
o 000000004dc1ebe5
[   17.426159] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004dc1ebe5 nonblocking
[   17.435782] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004dc1ebe5
[   17.435884] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004dc1ebe5
[   17.442173] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.442282] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000051c54325
[   17.442369] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 0000000051c54325
[   17.442447] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000006cf3f7e3 state to 0000000051c54325
[   17.442525] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000006cf3f7e3
[   17.442598] [drm:drm_atomic_check_only [drm]] checking 0000000051c5432=
5
[   17.442687] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.442934] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000029b8d7f2 t=
o 0000000051c54325
[   17.443161] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b256daa1 t=
o 0000000051c54325
[   17.443395] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00051c54325 nonblocking
[   17.452449] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000051c54325
[   17.452553] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000051c54325
[   17.458838] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.458952] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000067307af5
[   17.459040] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000001dd17b5f state to 0000000067307af5
[   17.459122] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000056e66d4b state to 0000000067307af5
[   17.459203] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000056e66d4b
[   17.459279] [drm:drm_atomic_check_only [drm]] checking 0000000067307af=
5
[   17.459371] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.459631] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 0000000067307af5
[   17.459870] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000de94b233 t=
o 0000000067307af5
[   17.460100] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00067307af5 nonblocking
[   17.469154] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000067307af5
[   17.469269] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000067307af5
[   17.469269] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000097e8dc6e
[   17.469377] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000097e8dc6e
[   17.469458] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000097e8dc6e
[   17.474587] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.474702] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000097e8dc6e
[   17.474791] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 0000000097e8dc6e
[   17.474875] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e5d2e517 state to 0000000097e8dc6e
[   17.474955] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e5d2e517
[   17.475032] [drm:drm_atomic_check_only [drm]] checking 0000000097e8dc6=
e
[   17.475124] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.475384] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003199c8cb t=
o 0000000097e8dc6e
[   17.475623] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000002d6b4c3a t=
o 0000000097e8dc6e
[   17.475853] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00097e8dc6e nonblocking
[   17.485829] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000097e8dc6e
[   17.485943] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000097e8dc6e
[   17.491242] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.491357] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004b18f883
[   17.491448] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 000000004b18f883
[   17.491528] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000005678186b state to 000000004b18f883
[   17.491609] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000005678186b
[   17.491685] [drm:drm_atomic_check_only [drm]] checking 000000004b18f88=
3
[   17.491779] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.492036] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 000000004b18f883
[   17.492278] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000eea95b9a t=
o 000000004b18f883
[   17.492508] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004b18f883 nonblocking
[   17.502474] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004b18f883
[   17.502587] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004b18f883
[   17.508046] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.508159] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ee69ba1a
[   17.508248] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a4cbf675 state to 00000000ee69ba1a
[   17.508330] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000daeb2483 state to 00000000ee69ba1a
[   17.508411] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000daeb2483
[   17.508488] [drm:drm_atomic_check_only [drm]] checking 00000000ee69ba1=
a
[   17.508579] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.508842] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000029b8d7f2 t=
o 00000000ee69ba1a
[   17.509081] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000032ad1725 t=
o 00000000ee69ba1a
[   17.509310] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ee69ba1a nonblocking
[   17.519168] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ee69ba1a
[   17.519282] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ee69ba1a
[   17.519277] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000db77e642
[   17.519384] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000db77e642
[   17.519466] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000db77e642
[   17.557999] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D230/512
[   17.558284] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 230
[   17.558507] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 11047
[   17.575344] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.575459] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000db77e642
[   17.575548] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 00000000db77e642
[   17.575630] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000006542de11 state to 00000000db77e642
[   17.575711] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000006542de11
[   17.575788] [drm:drm_atomic_check_only [drm]] checking 00000000db77e64=
2
[   17.575881] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.576143] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 00000000db77e642
[   17.576383] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000599249e7 t=
o 00000000db77e642
[   17.576613] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000db77e642 nonblocking
[   17.585824] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000db77e642
[   17.585927] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000db77e642
[   17.591058] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.591162] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000287ae998
[   17.591243] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 00000000287ae998
[   17.591344] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000da7a86f4 state to 00000000287ae998
[   17.591425] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000da7a86f4
[   17.591503] [drm:drm_atomic_check_only [drm]] checking 00000000287ae99=
8
[   17.591595] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.591856] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003199c8cb t=
o 00000000287ae998
[   17.592096] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000005ea16e0e t=
o 00000000287ae998
[   17.592349] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000287ae998 nonblocking
[   17.602467] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000287ae998
[   17.602571] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000287ae998
[   17.602572] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000db77e642
[   17.602669] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000db77e642
[   17.602743] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000db77e642
[   17.608976] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.609089] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000db77e642
[   17.609178] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000001dd17b5f state to 00000000db77e642
[   17.609259] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e5d2e517 state to 00000000db77e642
[   17.609340] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000e5d2e517
[   17.609416] [drm:drm_atomic_check_only [drm]] checking 00000000db77e64=
2
[   17.609508] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.609768] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 00000000db77e642
[   17.610005] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000008c76a7a1 t=
o 00000000db77e642
[   17.610284] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000db77e642 nonblocking
[   17.619103] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000db77e642
[   17.619215] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000db77e642
[   17.624613] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.624725] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000ee69ba1a
[   17.624815] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 00000000ee69ba1a
[   17.624898] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000066073962 state to 00000000ee69ba1a
[   17.624979] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000066073962
[   17.625055] [drm:drm_atomic_check_only [drm]] checking 00000000ee69ba1=
a
[   17.625149] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.625406] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000029b8d7f2 t=
o 00000000ee69ba1a
[   17.625645] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000040d29424 t=
o 00000000ee69ba1a
[   17.625873] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000ee69ba1a nonblocking
[   17.635833] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000ee69ba1a
[   17.635937] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000ee69ba1a
[   17.635937] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004b18f883
[   17.636034] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004b18f883
[   17.636107] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004b18f883
[   17.641430] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.641543] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004b18f883
[   17.641632] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 000000004b18f883
[   17.641714] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000bef870fa state to 000000004b18f883
[   17.641794] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000bef870fa
[   17.641871] [drm:drm_atomic_check_only [drm]] checking 000000004b18f88=
3
[   17.641963] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.642388] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 000000004b18f883
[   17.642605] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e1580d06 t=
o 000000004b18f883
[   17.642802] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004b18f883 nonblocking
[   17.652441] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004b18f883
[   17.652543] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004b18f883
[   17.652543] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000097e8dc6e
[   17.652640] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000097e8dc6e
[   17.652712] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000097e8dc6e
[   17.659047] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.659161] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000097e8dc6e
[   17.659251] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a4cbf675 state to 0000000097e8dc6e
[   17.659333] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000004b7271c7 state to 0000000097e8dc6e
[   17.659414] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000004b7271c7
[   17.659492] [drm:drm_atomic_check_only [drm]] checking 0000000097e8dc6=
e
[   17.659585] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.659842] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003199c8cb t=
o 0000000097e8dc6e
[   17.660084] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000074de9567 t=
o 0000000097e8dc6e
[   17.660313] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00097e8dc6e nonblocking
[   17.669144] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000097e8dc6e
[   17.669257] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000097e8dc6e
[   17.689927] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D255/512
[   17.690207] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 255
[   17.690427] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 12217
[   17.707664] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.707767] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000067307af5
[   17.707847] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 0000000067307af5
[   17.707919] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000006cf3f7e3 state to 0000000067307af5
[   17.707989] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000006cf3f7e3
[   17.708056] [drm:drm_atomic_check_only [drm]] checking 0000000067307af=
5
[   17.708139] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.708373] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 0000000067307af5
[   17.708587] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000009d597ac3 t=
o 0000000067307af5
[   17.708793] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00067307af5 nonblocking
[   17.719149] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000067307af5
[   17.719253] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000067307af5
[   17.724610] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.724723] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000051c54325
[   17.724812] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 0000000051c54325
[   17.724895] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000b656b029 state to 0000000051c54325
[   17.724976] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000b656b029
[   17.725053] [drm:drm_atomic_check_only [drm]] checking 0000000051c5432=
5
[   17.725145] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.725406] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000029b8d7f2 t=
o 0000000051c54325
[   17.725643] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000004cf2c49a t=
o 0000000051c54325
[   17.725873] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00051c54325 nonblocking
[   17.735918] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000051c54325
[   17.736031] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000051c54325
[   17.741218] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.741330] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004dc1ebe5
[   17.741419] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000001dd17b5f state to 000000004dc1ebe5
[   17.741500] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000004845f222 state to 000000004dc1ebe5
[   17.741580] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000004845f222
[   17.741657] [drm:drm_atomic_check_only [drm]] checking 000000004dc1ebe=
5
[   17.741751] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.742013] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 000000004dc1ebe5
[   17.742311] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000055c18470 t=
o 000000004dc1ebe5
[   17.742538] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004dc1ebe5 nonblocking
[   17.752493] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004dc1ebe5
[   17.752606] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004dc1ebe5
[   17.757854] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.757969] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000009e836d46
[   17.758058] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 000000009e836d46
[   17.758184] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000bef870fa state to 000000009e836d46
[   17.758268] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000bef870fa
[   17.758345] [drm:drm_atomic_check_only [drm]] checking 000000009e836d4=
6
[   17.758452] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.758701] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003199c8cb t=
o 000000009e836d46
[   17.758926] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000000c463153 t=
o 000000009e836d46
[   17.759143] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0009e836d46 nonblocking
[   17.769161] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000009e836d46
[   17.769274] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000009e836d46
[   17.774603] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.774715] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000076ce74c1
[   17.774803] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 0000000076ce74c1
[   17.774886] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009dab2faf state to 0000000076ce74c1
[   17.774966] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000009dab2faf
[   17.775043] [drm:drm_atomic_check_only [drm]] checking 0000000076ce74c=
1
[   17.775135] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.775395] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 0000000076ce74c1
[   17.775636] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000052f7c93f t=
o 0000000076ce74c1
[   17.775866] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00076ce74c1 nonblocking
[   17.785837] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000076ce74c1
[   17.785940] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000076ce74c1
[   17.791361] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.791476] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000077d84b6f
[   17.791565] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000a4cbf675 state to 0000000077d84b6f
[   17.791647] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f1d7efc8 state to 0000000077d84b6f
[   17.791728] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000f1d7efc8
[   17.791803] [drm:drm_atomic_check_only [drm]] checking 0000000077d84b6=
f
[   17.791896] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.792157] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000029b8d7f2 t=
o 0000000077d84b6f
[   17.792398] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000334396a7 t=
o 0000000077d84b6f
[   17.792628] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00077d84b6f nonblocking
[   17.802456] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000077d84b6f
[   17.802569] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000077d84b6f
[   17.821771] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D280/512
[   17.822027] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 280
[   17.822295] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 13386
[   17.841890] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.841994] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f3119c7f
[   17.842073] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000090dcec85 state to 00000000f3119c7f
[   17.842194] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000056e66d4b state to 00000000f3119c7f
[   17.842266] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000056e66d4b
[   17.842332] [drm:drm_atomic_check_only [drm]] checking 00000000f3119c7=
f
[   17.842427] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.842649] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 00000000f3119c7f
[   17.842853] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c82f4d3b t=
o 00000000f3119c7f
[   17.843046] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f3119c7f nonblocking
[   17.852490] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f3119c7f
[   17.852593] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f3119c7f
[   17.857821] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.857935] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dddc73f3
[   17.858023] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080b64512 state to 00000000dddc73f3
[   17.858144] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009dab2faf state to 00000000dddc73f3
[   17.858225] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000009dab2faf
[   17.858299] [drm:drm_atomic_check_only [drm]] checking 00000000dddc73f=
3
[   17.858398] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.858646] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000003199c8cb t=
o 00000000dddc73f3
[   17.858874] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000007b7e45fc t=
o 00000000dddc73f3
[   17.859094] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dddc73f3 nonblocking
[   17.869162] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dddc73f3
[   17.869268] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dddc73f3
[   17.874601] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.874715] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000085436692
[   17.874805] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000001dd17b5f state to 0000000085436692
[   17.874887] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000bef870fa state to 0000000085436692
[   17.874968] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000bef870fa
[   17.875046] [drm:drm_atomic_check_only [drm]] checking 000000008543669=
2
[   17.875139] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.875399] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008b5ff689 t=
o 0000000085436692
[   17.875640] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000cd99fcf5 t=
o 0000000085436692
[   17.875871] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00085436692 nonblocking
[   17.885828] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000085436692
[   17.885955] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000085436692
[   17.885946] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dddc73f3
[   17.886053] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dddc73f3
[   17.886165] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dddc73f3
[   17.890993] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.891096] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000b95022a6
[   17.891185] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000004b2241fc state to 00000000b95022a6
[   17.891267] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000002761200a state to 00000000b95022a6
[   17.891348] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000002761200a
[   17.891424] [drm:drm_atomic_check_only [drm]] checking 00000000b95022a=
6
[   17.891516] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.891776] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000001876841f t=
o 00000000b95022a6
[   17.892018] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000e38dc8af t=
o 00000000b95022a6
[   17.892244] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000b95022a6 nonblocking
[   17.902446] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000b95022a6
[   17.902550] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000b95022a6
[   17.908868] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   17.908981] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000884d981e
[   17.909069] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000007619640c state to 00000000884d981e
[   17.909151] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000004d8a47e state to 00000000884d981e
[   17.909232] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000004d8a47e
[   17.909310] [drm:drm_atomic_check_only [drm]] checking 00000000884d981=
e
[   17.909401] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.909662] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ff205e5f t=
o 00000000884d981e
[   17.909902] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a0bda8e6 t=
o 00000000884d981e
[   17.910164] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000884d981e nonblocking
[   17.919148] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000884d981e
[   17.919251] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000884d981e
[   17.919250] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000763ac23f
[   17.919348] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000763ac23f
[   17.919420] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000763ac23f
[   17.924709] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   17.924823] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000763ac23f
[   17.924911] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000c3d258f9 state to 00000000763ac23f
[   17.924992] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000071416933 state to 00000000763ac23f
[   17.925074] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000071416933
[   17.925151] [drm:drm_atomic_check_only [drm]] checking 00000000763ac23=
f
[   17.925244] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   17.925504] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000006115c693 t=
o 00000000763ac23f
[   17.925744] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c9815763 t=
o 00000000763ac23f
[   17.925975] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000763ac23f nonblocking
[   17.935820] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000763ac23f
[   17.935932] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000763ac23f
[   17.989906] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D305/512
[   17.990188] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 305
[   17.990424] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 14556
[   18.008319] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.008455] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003e3d17fb
[   18.008565] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 000000003e3d17fb
[   18.008666] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d4b14c60 state to 000000003e3d17fb
[   18.008766] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000d4b14c60
[   18.008860] [drm:drm_atomic_check_only [drm]] checking 000000003e3d17f=
b
[   18.008974] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.009283] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000048bc326b t=
o 000000003e3d17fb
[   18.009565] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000030540bd1 t=
o 000000003e3d17fb
[   18.009839] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003e3d17fb nonblocking
[   18.019094] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003e3d17fb
[   18.019174] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002e823a14
[   18.019215] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003e3d17fb
[   18.019284] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002e823a14
[   18.019376] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002e823a14
[   18.025150] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.025253] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002e823a14
[   18.025334] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002ecd9178 state to 000000002e823a14
[   18.025407] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000057852d49 state to 000000002e823a14
[   18.025479] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000057852d49
[   18.025547] [drm:drm_atomic_check_only [drm]] checking 000000002e823a1=
4
[   18.025631] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.025863] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000058bda0d4 t=
o 000000002e823a14
[   18.026076] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000079bf312f t=
o 000000002e823a14
[   18.026332] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002e823a14 nonblocking
[   18.035822] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002e823a14
[   18.035930] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c50096d7
[   18.035950] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002e823a14
[   18.036042] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c50096d7
[   18.036133] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c50096d7
[   18.040994] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.041096] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000c50096d7
[   18.041176] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000008559b293 state to 00000000c50096d7
[   18.041249] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000038f03dcf state to 00000000c50096d7
[   18.041321] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000038f03dcf
[   18.041389] [drm:drm_atomic_check_only [drm]] checking 00000000c50096d=
7
[   18.041472] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.041706] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000009ccf9f4 t=
o 00000000c50096d7
[   18.041922] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000cc488d03 t=
o 00000000c50096d7
[   18.042164] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000c50096d7 nonblocking
[   18.052492] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000c50096d7
[   18.052595] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003db59479
[   18.052620] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000c50096d7
[   18.052708] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003db59479
[   18.052799] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003db59479
[   18.057522] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.057625] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003db59479
[   18.057705] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002ecd9178 state to 000000003db59479
[   18.057780] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d47d99e9 state to 000000003db59479
[   18.057853] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000d47d99e9
[   18.057922] [drm:drm_atomic_check_only [drm]] checking 000000003db5947=
9
[   18.058006] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.058292] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d5e506e3 t=
o 000000003db59479
[   18.058570] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000685fb3eb t=
o 000000003db59479
[   18.058845] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003db59479 nonblocking
[   18.069123] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003db59479
[   18.069229] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003db59479
[   18.074579] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.074694] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000037633af2
[   18.074783] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000008559b293 state to 0000000037633af2
[   18.074866] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000075da3506 state to 0000000037633af2
[   18.074947] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000075da3506
[   18.075024] [drm:drm_atomic_check_only [drm]] checking 0000000037633af=
2
[   18.075117] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.075377] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000399a601 t=
o 0000000037633af2
[   18.075614] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000067f39b52 t=
o 0000000037633af2
[   18.075842] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00037633af2 nonblocking
[   18.085779] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000037633af2
[   18.085887] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000037633af2
[   18.091287] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.091401] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003ac2e677
[   18.091490] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002ecd9178 state to 000000003ac2e677
[   18.091574] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000019f1a757 state to 000000003ac2e677
[   18.091654] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000019f1a757
[   18.091732] [drm:drm_atomic_check_only [drm]] checking 000000003ac2e67=
7
[   18.091824] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.092085] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000007e031691 t=
o 000000003ac2e677
[   18.092328] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000002861ffc0 t=
o 000000003ac2e677
[   18.092558] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003ac2e677 nonblocking
[   18.102406] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003ac2e677
[   18.102513] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003ac2e677
[   18.137895] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D330/512
[   18.138179] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 330
[   18.138400] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 15726
[   18.157752] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.157867] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e9ab8f04
[   18.157953] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d3c73d3a state to 00000000e9ab8f04
[   18.158034] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000002c0dec8e state to 00000000e9ab8f04
[   18.158168] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000002c0dec8e
[   18.158277] [drm:drm_atomic_check_only [drm]] checking 00000000e9ab8f0=
4
[   18.158384] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.158630] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000009af51059 t=
o 00000000e9ab8f04
[   18.158851] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000344c9541 t=
o 00000000e9ab8f04
[   18.159064] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e9ab8f04 nonblocking
[   18.169118] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e9ab8f04
[   18.169232] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e9ab8f04
[   18.174556] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.174671] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003382d40a
[   18.174762] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000eaabcbe7 state to 000000003382d40a
[   18.174844] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000069454d46 state to 000000003382d40a
[   18.174925] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000069454d46
[   18.175002] [drm:drm_atomic_check_only [drm]] checking 000000003382d40=
a
[   18.175095] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.175356] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d37f91e7 t=
o 000000003382d40a
[   18.175594] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000d553e168 t=
o 000000003382d40a
[   18.175825] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003382d40a nonblocking
[   18.185782] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003382d40a
[   18.185898] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003382d40a
[   18.191258] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.191373] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000df9e23c0
[   18.191461] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f63e33a5 state to 00000000df9e23c0
[   18.191543] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000072bbc047 state to 00000000df9e23c0
[   18.191623] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000072bbc047
[   18.191698] [drm:drm_atomic_check_only [drm]] checking 00000000df9e23c=
0
[   18.191790] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.192049] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d0b47feb t=
o 00000000df9e23c0
[   18.192285] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c1008e75 t=
o 00000000df9e23c0
[   18.192512] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000df9e23c0 nonblocking
[   18.202418] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000df9e23c0
[   18.202533] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000df9e23c0
[   18.207829] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.207941] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e987a2f4
[   18.208029] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000dfc085c5 state to 00000000e987a2f4
[   18.208111] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000005170ac73 state to 00000000e987a2f4
[   18.208190] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000005170ac73
[   18.208268] [drm:drm_atomic_check_only [drm]] checking 00000000e987a2f=
4
[   18.208360] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.208620] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000063acfe3c t=
o 00000000e987a2f4
[   18.208859] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000ea98fc5b t=
o 00000000e987a2f4
[   18.209089] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e987a2f4 nonblocking
[   18.219113] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e987a2f4
[   18.219228] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e987a2f4
[   18.224595] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.224707] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000007b7abe3e
[   18.224795] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000f63e33a5 state to 000000007b7abe3e
[   18.224878] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000c8e1da9b state to 000000007b7abe3e
[   18.224961] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000c8e1da9b
[   18.225037] [drm:drm_atomic_check_only [drm]] checking 000000007b7abe3=
e
[   18.225130] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.225391] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008d926853 t=
o 000000007b7abe3e
[   18.225629] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c6960dfc t=
o 000000007b7abe3e
[   18.225856] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0007b7abe3e nonblocking
[   18.235784] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000007b7abe3e
[   18.235898] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000007b7abe3e
[   18.241257] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.241371] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004196e2d3
[   18.241459] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000eaabcbe7 state to 000000004196e2d3
[   18.241541] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000072740974 state to 000000004196e2d3
[   18.241621] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000072740974
[   18.241697] [drm:drm_atomic_check_only [drm]] checking 000000004196e2d=
3
[   18.241789] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.242047] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000072f3e2e8 t=
o 000000004196e2d3
[   18.242345] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a98d5d74 t=
o 000000004196e2d3
[   18.242602] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004196e2d3 nonblocking
[   18.252457] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004196e2d3
[   18.252571] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004196e2d3
[   18.273983] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D355/512
[   18.274266] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 355
[   18.274488] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 16896
[   18.291576] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.291676] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003e3d17fb
[   18.291756] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 000000003e3d17fb
[   18.291830] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000860c7b33 state to 000000003e3d17fb
[   18.291901] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000860c7b33
[   18.291969] [drm:drm_atomic_check_only [drm]] checking 000000003e3d17f=
b
[   18.292052] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.292279] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ea20ebd6 t=
o 000000003e3d17fb
[   18.292490] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f78a58f7 t=
o 000000003e3d17fb
[   18.292692] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003e3d17fb nonblocking
[   18.302404] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003e3d17fb
[   18.302508] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003e3d17fb
[   18.308811] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.308924] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   18.309013] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 0000000015ed2737
[   18.309095] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000005a3d1107 state to 0000000015ed2737
[   18.309177] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000005a3d1107
[   18.309252] [drm:drm_atomic_check_only [drm]] checking 0000000015ed273=
7
[   18.309344] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.309605] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000281fcc35 t=
o 0000000015ed2737
[   18.309842] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b4b581f8 t=
o 0000000015ed2737
[   18.310072] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015ed2737 nonblocking
[   18.319111] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   18.319213] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   18.324643] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.324756] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004d04ceaf
[   18.324844] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 000000004d04ceaf
[   18.324927] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f8575507 state to 000000004d04ceaf
[   18.325008] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000f8575507
[   18.325084] [drm:drm_atomic_check_only [drm]] checking 000000004d04cea=
f
[   18.325178] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.325440] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000006872b37 t=
o 000000004d04ceaf
[   18.325678] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000017d1f2be t=
o 000000004d04ceaf
[   18.325908] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004d04ceaf nonblocking
[   18.335782] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004d04ceaf
[   18.335896] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004d04ceaf
[   18.341099] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.341213] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   18.341303] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000e137d200
[   18.341385] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e84c5662 state to 00000000e137d200
[   18.341466] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e84c5662
[   18.341542] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   18.341635] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.341896] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000df464633 t=
o 00000000e137d200
[   18.342177] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000451ae48a t=
o 00000000e137d200
[   18.342406] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   18.352451] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   18.352566] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   18.357789] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.357902] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   18.357991] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 00000000dd9ef111
[   18.358072] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000664a55a4 state to 00000000dd9ef111
[   18.358200] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000664a55a4
[   18.358280] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   18.358374] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.358652] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000006872b37 t=
o 00000000dd9ef111
[   18.358891] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000000ce95ae8 t=
o 00000000dd9ef111
[   18.359118] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   18.369302] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   18.369415] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   18.374800] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.374915] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   18.375005] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000002582f62e
[   18.375086] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ea74f734 state to 000000002582f62e
[   18.375166] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000ea74f734
[   18.375243] [drm:drm_atomic_check_only [drm]] checking 000000002582f62=
e
[   18.375335] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.375593] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000281fcc35 t=
o 000000002582f62e
[   18.375832] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000009e568860 t=
o 000000002582f62e
[   18.376059] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002582f62e nonblocking
[   18.385766] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   18.385880] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   18.422092] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D380/512
[   18.422383] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 380
[   18.422601] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 18066
[   18.440941] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.440983] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   18.441011] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 000000002582f62e
[   18.441036] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000006e681146 state to 000000002582f62e
[   18.441062] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000006e681146
[   18.441085] [drm:drm_atomic_check_only [drm]] checking 000000002582f62=
e
[   18.441115] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.441201] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000009d578b5b t=
o 000000002582f62e
[   18.441276] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f02d9ce2 t=
o 000000002582f62e
[   18.441347] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002582f62e nonblocking
[   18.452444] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   18.452495] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   18.457578] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.457638] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   18.457682] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000dd9ef111
[   18.457721] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000a3bbca49 state to 00000000dd9ef111
[   18.457760] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000a3bbca49
[   18.457796] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   18.457841] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.457971] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000088c70b49 t=
o 00000000dd9ef111
[   18.458086] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000107a4bd6 t=
o 00000000dd9ef111
[   18.458221] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   18.469111] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   18.469204] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   18.475476] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.475590] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   18.475679] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 00000000e137d200
[   18.475762] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007ddb1f12 state to 00000000e137d200
[   18.475844] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000007ddb1f12
[   18.475920] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   18.476014] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.476275] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000041687538 t=
o 00000000e137d200
[   18.476512] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b17c792f t=
o 00000000e137d200
[   18.476741] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   18.485769] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   18.485888] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   18.491314] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.491429] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004d04ceaf
[   18.491519] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000004d04ceaf
[   18.491600] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000a321f058 state to 000000004d04ceaf
[   18.491681] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000a321f058
[   18.491757] [drm:drm_atomic_check_only [drm]] checking 000000004d04cea=
f
[   18.491849] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.492108] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a0d7806e t=
o 000000004d04ceaf
[   18.492344] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000183b91fb t=
o 000000004d04ceaf
[   18.492571] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004d04ceaf nonblocking
[   18.502403] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004d04ceaf
[   18.502520] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004d04ceaf
[   18.507905] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.508019] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   18.508108] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 0000000015ed2737
[   18.508190] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e0001197 state to 0000000015ed2737
[   18.508271] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000e0001197
[   18.508347] [drm:drm_atomic_check_only [drm]] checking 0000000015ed273=
7
[   18.508439] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.508698] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000033c1dff3 t=
o 0000000015ed2737
[   18.508937] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000091870735 t=
o 0000000015ed2737
[   18.509166] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015ed2737 nonblocking
[   18.519093] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   18.519218] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   18.524686] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.524799] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003e3d17fb
[   18.524889] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000003e3d17fb
[   18.524972] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e84c5662 state to 000000003e3d17fb
[   18.525052] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e84c5662
[   18.525129] [drm:drm_atomic_check_only [drm]] checking 000000003e3d17f=
b
[   18.525223] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.525483] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000643a90bf t=
o 000000003e3d17fb
[   18.525724] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000dd6f6471 t=
o 000000003e3d17fb
[   18.525951] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003e3d17fb nonblocking
[   18.535769] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003e3d17fb
[   18.535890] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003e3d17fb
[   18.569866] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D405/512
[   18.570148] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 405
[   18.570369] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 19235
[   18.591906] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.592023] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003e3d17fb
[   18.592111] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 000000003e3d17fb
[   18.592193] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003ffe6fbb state to 000000003e3d17fb
[   18.592274] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000003ffe6fbb
[   18.592350] [drm:drm_atomic_check_only [drm]] checking 000000003e3d17f=
b
[   18.592443] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.592703] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000060429aea t=
o 000000003e3d17fb
[   18.592942] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b5ee7ed2 t=
o 000000003e3d17fb
[   18.593170] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003e3d17fb nonblocking
[   18.602384] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003e3d17fb
[   18.602507] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003e3d17fb
[   18.608869] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.608982] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   18.609071] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 0000000015ed2737
[   18.609154] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000096bc28ac state to 0000000015ed2737
[   18.609235] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000096bc28ac
[   18.609312] [drm:drm_atomic_check_only [drm]] checking 0000000015ed273=
7
[   18.609404] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.609665] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b47c3839 t=
o 0000000015ed2737
[   18.609904] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000440640fd t=
o 0000000015ed2737
[   18.610161] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015ed2737 nonblocking
[   18.619090] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   18.619210] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   18.624569] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.624682] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004d04ceaf
[   18.624772] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 000000004d04ceaf
[   18.624854] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001d878535 state to 000000004d04ceaf
[   18.624934] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000001d878535
[   18.625011] [drm:drm_atomic_check_only [drm]] checking 000000004d04cea=
f
[   18.625104] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.625363] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000060429aea t=
o 000000004d04ceaf
[   18.625603] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c03a9fa7 t=
o 000000004d04ceaf
[   18.625829] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004d04ceaf nonblocking
[   18.635773] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004d04ceaf
[   18.635897] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004d04ceaf
[   18.641129] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.641243] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   18.641331] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000e137d200
[   18.641412] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f8575507 state to 00000000e137d200
[   18.641494] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000f8575507
[   18.641570] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   18.641662] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.641922] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000643a90bf t=
o 00000000e137d200
[   18.642208] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c31a74ad t=
o 00000000e137d200
[   18.642514] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   18.652440] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   18.652560] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   18.657865] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.657980] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   18.658069] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 00000000dd9ef111
[   18.658230] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000005a3d1107 state to 00000000dd9ef111
[   18.658341] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000005a3d1107
[   18.658450] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   18.658583] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.658925] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000033c1dff3 t=
o 00000000dd9ef111
[   18.659237] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000000b6ae142 t=
o 00000000dd9ef111
[   18.659547] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   18.669105] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   18.669227] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   18.674591] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.674707] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   18.674795] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000002582f62e
[   18.674878] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000860c7b33 state to 000000002582f62e
[   18.674958] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000860c7b33
[   18.675036] [drm:drm_atomic_check_only [drm]] checking 000000002582f62=
e
[   18.675128] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.675388] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000a0d7806e t=
o 000000002582f62e
[   18.675625] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000007537ede9 t=
o 000000002582f62e
[   18.675853] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002582f62e nonblocking
[   18.685757] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   18.685879] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   18.713974] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D430/512
[   18.714264] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 430
[   18.714482] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 20405
[   18.741389] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.741504] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   18.741594] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 000000002582f62e
[   18.741677] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009864309b state to 000000002582f62e
[   18.741758] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000009864309b
[   18.741834] [drm:drm_atomic_check_only [drm]] checking 000000002582f62=
e
[   18.741926] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.742255] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000081919336 t=
o 000000002582f62e
[   18.742559] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000000f3002b1 t=
o 000000002582f62e
[   18.742860] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002582f62e nonblocking
[   18.752366] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   18.752480] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   18.758806] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.758922] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   18.759012] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000dd9ef111
[   18.759094] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e84c5662 state to 00000000dd9ef111
[   18.759174] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e84c5662
[   18.759251] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   18.759343] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.759606] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000048bc326b t=
o 00000000dd9ef111
[   18.759844] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000007537ede9 t=
o 00000000dd9ef111
[   18.760073] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   18.769070] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   18.769185] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   18.774507] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.774623] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   18.774711] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 00000000e137d200
[   18.774793] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e8618ea2 state to 00000000e137d200
[   18.774873] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000e8618ea2
[   18.774950] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   18.775044] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.775304] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008c0a959a t=
o 00000000e137d200
[   18.775541] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000000b6ae142 t=
o 00000000e137d200
[   18.775773] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   18.785752] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   18.785867] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   18.791194] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.791310] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004d04ceaf
[   18.791399] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000004d04ceaf
[   18.791481] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007b311622 state to 000000004d04ceaf
[   18.791562] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000007b311622
[   18.791640] [drm:drm_atomic_check_only [drm]] checking 000000004d04cea=
f
[   18.791734] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.791996] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000009725aef9 t=
o 000000004d04ceaf
[   18.792237] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c31a74ad t=
o 000000004d04ceaf
[   18.792463] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004d04ceaf nonblocking
[   18.802389] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004d04ceaf
[   18.802503] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004d04ceaf
[   18.807771] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.807886] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   18.807975] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 0000000015ed2737
[   18.808057] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e0001197 state to 0000000015ed2737
[   18.808137] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000e0001197
[   18.808212] [drm:drm_atomic_check_only [drm]] checking 0000000015ed273=
7
[   18.808305] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.808564] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000009a10e0c6 t=
o 0000000015ed2737
[   18.808805] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c03a9fa7 t=
o 0000000015ed2737
[   18.809030] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015ed2737 nonblocking
[   18.819151] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   18.819257] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   18.824677] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.824790] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003e3d17fb
[   18.824878] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000003e3d17fb
[   18.824961] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000a321f058 state to 000000003e3d17fb
[   18.825041] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000a321f058
[   18.825118] [drm:drm_atomic_check_only [drm]] checking 000000003e3d17f=
b
[   18.825209] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.825467] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000add3af5d t=
o 000000003e3d17fb
[   18.825706] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000440640fd t=
o 000000003e3d17fb
[   18.825934] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003e3d17fb nonblocking
[   18.835765] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003e3d17fb
[   18.835880] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003e3d17fb
[   18.853878] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D455/512
[   18.854167] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 455
[   18.854386] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 21575
[   18.874779] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.874885] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003e3d17fb
[   18.874964] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 000000003e3d17fb
[   18.875038] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000799098e7 state to 000000003e3d17fb
[   18.875111] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000799098e7
[   18.875179] [drm:drm_atomic_check_only [drm]] checking 000000003e3d17f=
b
[   18.875262] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.875498] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000df464633 t=
o 000000003e3d17fb
[   18.875712] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b5ee7ed2 t=
o 000000003e3d17fb
[   18.875918] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003e3d17fb nonblocking
[   18.885756] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003e3d17fb
[   18.885860] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003e3d17fb
[   18.891163] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.891279] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   18.891370] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 0000000015ed2737
[   18.891450] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000365d1240 state to 0000000015ed2737
[   18.891532] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000365d1240
[   18.891608] [drm:drm_atomic_check_only [drm]] checking 0000000015ed273=
7
[   18.891701] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.891961] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ec623406 t=
o 0000000015ed2737
[   18.892198] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000dd6f6471 t=
o 0000000015ed2737
[   18.892424] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015ed2737 nonblocking
[   18.902389] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   18.902504] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   18.907861] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.907973] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004d04ceaf
[   18.908064] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 000000004d04ceaf
[   18.908145] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000664a55a4 state to 000000004d04ceaf
[   18.908228] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000664a55a4
[   18.908305] [drm:drm_atomic_check_only [drm]] checking 000000004d04cea=
f
[   18.908397] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.908656] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000ea20ebd6 t=
o 000000004d04ceaf
[   18.908894] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000091870735 t=
o 000000004d04ceaf
[   18.909119] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004d04ceaf nonblocking
[   18.919078] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004d04ceaf
[   18.919192] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004d04ceaf
[   18.924566] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   18.924680] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   18.924770] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000e137d200
[   18.924851] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001d878535 state to 00000000e137d200
[   18.924930] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000001d878535
[   18.925006] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   18.925098] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.925357] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000d0c13476 t=
o 00000000e137d200
[   18.925593] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000183b91fb t=
o 00000000e137d200
[   18.925821] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   18.935755] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   18.935869] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   18.941098] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   18.941212] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   18.941302] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 00000000dd9ef111
[   18.941385] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000d4b14c60 state to 00000000dd9ef111
[   18.941465] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000d4b14c60
[   18.941541] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   18.941636] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   18.941895] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000041687538 t=
o 00000000dd9ef111
[   18.942211] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b17c792f t=
o 00000000dd9ef111
[   18.942518] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   18.952362] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   18.952451] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   18.952460] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   18.952543] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   18.952615] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   19.005324] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D480/512
[   19.005407] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 480
[   19.005472] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 22745
[   19.025303] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   19.025408] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   19.025488] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000002582f62e
[   19.025560] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000005a3d1107 state to 000000002582f62e
[   19.025632] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000005a3d1107
[   19.025700] [drm:drm_atomic_check_only [drm]] checking 000000002582f62=
e
[   19.025782] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.026014] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b26ab759 t=
o 000000002582f62e
[   19.026269] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000107a4bd6 t=
o 000000002582f62e
[   19.026526] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002582f62e nonblocking
[   19.035673] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   19.035771] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   19.042331] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   19.042427] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   19.042503] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 00000000dd9ef111
[   19.042573] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ec54b50c state to 00000000dd9ef111
[   19.042641] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000ec54b50c
[   19.042708] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   19.042787] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.043007] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000005da0f1d5 t=
o 00000000dd9ef111
[   19.043208] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f02d9ce2 t=
o 00000000dd9ef111
[   19.043402] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   19.052358] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   19.052461] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   19.059309] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   19.059413] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   19.059492] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000e137d200
[   19.059565] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000096bc28ac state to 00000000e137d200
[   19.059636] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000096bc28ac
[   19.059704] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   19.059788] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.060021] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000004e70ce18 t=
o 00000000e137d200
[   19.060236] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000009e568860 t=
o 00000000e137d200
[   19.060440] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   19.069055] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   19.069158] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   19.075459] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   19.075574] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004d04ceaf
[   19.075662] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 000000004d04ceaf
[   19.075742] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000b42b6e4c state to 000000004d04ceaf
[   19.075822] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000b42b6e4c
[   19.075899] [drm:drm_atomic_check_only [drm]] checking 000000004d04cea=
f
[   19.075991] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.076251] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000000ac900dd t=
o 000000004d04ceaf
[   19.076488] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000000ce95ae8 t=
o 000000004d04ceaf
[   19.076717] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004d04ceaf nonblocking
[   19.085747] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004d04ceaf
[   19.085851] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004d04ceaf
[   19.091193] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   19.091307] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   19.091396] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 0000000015ed2737
[   19.091477] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e84c5662 state to 0000000015ed2737
[   19.091558] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e84c5662
[   19.091636] [drm:drm_atomic_check_only [drm]] checking 0000000015ed273=
7
[   19.091729] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.091990] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b47c3839 t=
o 0000000015ed2737
[   19.092228] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000451ae48a t=
o 0000000015ed2737
[   19.092455] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015ed2737 nonblocking
[   19.102337] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   19.102452] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   19.108951] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   19.109063] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000003e3d17fb
[   19.109151] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 000000003e3d17fb
[   19.109233] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000006639230f state to 000000003e3d17fb
[   19.109315] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000006639230f
[   19.109391] [drm:drm_atomic_check_only [drm]] checking 000000003e3d17f=
b
[   19.109483] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.109744] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000060429aea t=
o 000000003e3d17fb
[   19.109983] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000017d1f2be t=
o 000000003e3d17fb
[   19.110253] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0003e3d17fb nonblocking
[   19.119111] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000003e3d17fb
[   19.119225] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000003e3d17fb
[   19.119221] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   19.119329] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   19.119412] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   19.130822] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D505/512
[   19.131084] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 505
[   19.131300] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 23914
[   19.159262] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   19.159377] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000015ed2737
[   19.159467] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 0000000015ed2737
[   19.159549] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007ddb1f12 state to 0000000015ed2737
[   19.159629] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000007ddb1f12
[   19.159705] [drm:drm_atomic_check_only [drm]] checking 0000000015ed273=
7
[   19.159799] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.160059] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000643a90bf t=
o 0000000015ed2737
[   19.160296] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000b4b581f8 t=
o 0000000015ed2737
[   19.160522] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00015ed2737 nonblocking
[   19.169076] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000015ed2737
[   19.169189] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000015ed2737
[   19.174634] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   19.174750] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004d04ceaf
[   19.174838] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 000000004d04ceaf
[   19.174921] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000664a55a4 state to 000000004d04ceaf
[   19.175003] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000664a55a4
[   19.175080] [drm:drm_atomic_check_only [drm]] checking 000000004d04cea=
f
[   19.175173] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.175434] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b26ab759 t=
o 000000004d04ceaf
[   19.175673] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000f78a58f7 t=
o 000000004d04ceaf
[   19.175902] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004d04ceaf nonblocking
[   19.185759] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004d04ceaf
[   19.185872] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004d04ceaf
[   19.191285] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   19.191400] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   19.191489] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000e137d200
[   19.191570] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e8618ea2 state to 00000000e137d200
[   19.191651] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000e8618ea2
[   19.191728] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   19.191822] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.192080] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000990557ed t=
o 00000000e137d200
[   19.192322] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 0000000030540bd1 t=
o 00000000e137d200
[   19.192551] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   19.202398] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   19.202513] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   19.207954] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   19.208070] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   19.208159] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 00000000dd9ef111
[   19.208241] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000ea74f734 state to 00000000dd9ef111
[   19.208323] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000ea74f734
[   19.208398] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   19.208491] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.208752] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000061c58345 t=
o 00000000dd9ef111
[   19.208991] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000c5462ac1 t=
o 00000000dd9ef111
[   19.209218] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   19.219099] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   19.219212] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   19.219213] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   19.219321] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   19.219404] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   19.226054] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   19.226209] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   19.226295] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 000000002582f62e
[   19.226373] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009864309b state to 000000002582f62e
[   19.226450] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000009864309b
[   19.226524] [drm:drm_atomic_check_only [drm]] checking 000000002582f62=
e
[   19.226613] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.226862] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000081919336 t=
o 000000002582f62e
[   19.227084] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000bfa1ff2c t=
o 000000002582f62e
[   19.227302] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002582f62e nonblocking
[   19.235717] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   19.235830] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   19.242239] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   19.242354] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000002582f62e
[   19.242444] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000d4053cd4 state to 000000002582f62e
[   19.242528] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000cd7e6cc4 state to 000000002582f62e
[   19.242609] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000cd7e6cc4
[   19.242686] [drm:drm_atomic_check_only [drm]] checking 000000002582f62=
e
[   19.242779] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.243039] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000048bc326b t=
o 000000002582f62e
[   19.243275] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000008cafeb1c t=
o 000000002582f62e
[   19.243503] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0002582f62e nonblocking
[   19.252382] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000002582f62e
[   19.252495] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000002582f62e
[   19.262644] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D512/512
[   19.262904] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 512
[   19.263124] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 24242
[   19.293527] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   19.293567] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000dd9ef111
[   19.293596] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000078ee4720 state to 00000000dd9ef111
[   19.293621] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000007ddb1f12 state to 00000000dd9ef111
[   19.293645] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 000000007ddb1f12
[   19.293669] [drm:drm_atomic_check_only [drm]] checking 00000000dd9ef11=
1
[   19.293698] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.293780] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000008c0a959a t=
o 00000000dd9ef111
[   19.293853] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000d4d35d6c t=
o 00000000dd9ef111
[   19.293922] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000dd9ef111 nonblocking
[   19.302322] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000dd9ef111
[   19.302362] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000dd9ef111
[   19.306999] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   19.307043] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e137d200
[   19.307076] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000056dbe1d7 state to 00000000e137d200
[   19.307104] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000003ffe6fbb state to 00000000e137d200
[   19.307133] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000003ffe6fbb
[   19.307160] [drm:drm_atomic_check_only [drm]] checking 00000000e137d20=
0
[   19.307194] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.307291] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000009725aef9 t=
o 00000000e137d200
[   19.307375] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000819f5b3c t=
o 00000000e137d200
[   19.307455] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000e137d200 nonblocking
[   19.319059] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e137d200
[   19.319132] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e137d200
[   19.325156] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   19.325226] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000487c1d60
[   19.325279] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000002ecd9178 state to 00000000487c1d60
[   19.325326] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000038f03dcf state to 00000000487c1d60
[   19.325373] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000038f03dcf
[   19.325416] [drm:drm_atomic_check_only [drm]] checking 00000000487c1d6=
0
[   19.325471] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.325623] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000001dce4d27 t=
o 00000000487c1d60
[   19.325761] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000001b18addd t=
o 00000000487c1d60
[   19.325894] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000487c1d60 nonblocking
[   19.335766] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000487c1d60
[   19.335876] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004e23b201
[   19.335895] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000487c1d60
[   19.335988] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004e23b201
[   19.336077] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004e23b201
[   19.341344] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   19.341456] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004e23b201
[   19.341544] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 000000008559b293 state to 000000004e23b201
[   19.341625] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000009fe97d71 state to 000000004e23b201
[   19.341706] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000009fe97d71
[   19.341783] [drm:drm_atomic_check_only [drm]] checking 000000004e23b20=
1
[   19.341877] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.342173] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000b4877aee t=
o 000000004e23b201
[   19.342409] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000006ad846ac t=
o 000000004e23b201
[   19.342625] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004e23b201 nonblocking
[   19.352440] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004e23b201
[   19.352552] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000e9d489b4
[   19.352581] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004e23b201
[   19.352677] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000e9d489b4
[   19.352790] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000e9d489b4
[   19.357690] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   19.357802] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000081bd15ed
[   19.357889] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 0000000081bd15ed
[   19.357970] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000377e8030 state to 0000000081bd15ed
[   19.358051] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000377e8030
[   19.358170] [drm:drm_atomic_check_only [drm]] checking 0000000081bd15e=
d
[   19.358300] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.358633] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000090d38cba t=
o 0000000081bd15ed
[   19.358952] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000004ca52323 t=
o 0000000081bd15ed
[   19.359255] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00081bd15ed nonblocking
[   19.369073] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000081bd15ed
[   19.369189] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000081bd15ed
[   19.374603] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   19.374717] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004499cb8f
[   19.374805] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 000000004499cb8f
[   19.374887] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000007272def state to 000000004499cb8f
[   19.374970] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 0000000007272def
[   19.375046] [drm:drm_atomic_check_only [drm]] checking 000000004499cb8=
f
[   19.375138] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.375399] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000db3a9990 t=
o 000000004499cb8f
[   19.375636] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000005762e963 t=
o 000000004499cb8f
[   19.375863] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004499cb8f nonblocking
[   19.385742] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004499cb8f
[   19.385857] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004499cb8f
[   19.398398] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D512/512
[   19.398659] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 512
[   19.398880] i915 0000:00:02.0: [drm:intel_panel_set_pwm_level [i915]] =
set backlight PWM =3D 24242
[   19.486439] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DC off
[   19.486699] i915 0000:00:02.0: [drm:skl_enable_dc6 [i915]] Enabling DC=
6
[   19.486923] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 00 to 02
[   19.506860] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DC off
[   19.507118] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 02 to 00
[   19.507969] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   19.508080] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000021ca5176
[   19.508169] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 0000000021ca5176
[   19.508250] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000f16b8871 state to 0000000021ca5176
[   19.508329] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000f16b8871
[   19.508406] [drm:drm_atomic_check_only [drm]] checking 0000000021ca517=
6
[   19.508497] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   19.508749] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 0000000020ccc659 t=
o 0000000021ca5176
[   19.508992] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 000000008d3ef937 t=
o 0000000021ca5176
[   19.509221] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00021ca5176 nonblocking
[   19.519123] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000021ca5176
[   19.519243] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000021ca5176
[   19.618443] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DC off
[   19.618704] i915 0000:00:02.0: [drm:skl_enable_dc6 [i915]] Enabling DC=
6
[   19.618925] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 00 to 02
[   20.923170] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DC off
[   20.923722] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 02 to 00
[   20.925668] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   20.925779] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f2ded4c8
[   20.925869] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 00000000f2ded4c8
[   20.925949] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 000000001a0491ff state to 00000000f2ded4c8
[   20.926028] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 000000001a0491ff
[   20.926154] [drm:drm_atomic_check_only [drm]] checking 00000000f2ded4c=
8
[   20.926250] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   20.926498] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000bdc93471 t=
o 00000000f2ded4c8
[   20.926736] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000673ecdc2 t=
o 00000000f2ded4c8
[   20.926964] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f2ded4c8 nonblocking
[   20.946781] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f2ded4c8
[   20.946896] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f2ded4c8
[   20.952159] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   20.952289] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
0000000f2ded4c8
[   20.952370] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 00000000f2ded4c8
[   20.952444] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000377e8030 state to 00000000f2ded4c8
[   20.952518] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000377e8030
[   20.952587] [drm:drm_atomic_check_only [drm]] checking 00000000f2ded4c=
8
[   20.952671] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   20.952908] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000239c3da1 t=
o 00000000f2ded4c8
[   20.953122] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a2e480a0 t=
o 00000000f2ded4c8
[   20.953323] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
000f2ded4c8 nonblocking
[   20.963496] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 00000000f2ded4c8
[   20.963602] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
0000000f2ded4c8
[   20.967943] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   20.968048] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000021ca5176
[   20.968129] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 0000000021ca5176
[   20.968227] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000e4224088 state to 0000000021ca5176
[   20.968308] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000e4224088
[   20.968386] [drm:drm_atomic_check_only [drm]] checking 0000000021ca517=
6
[   20.968478] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   20.968742] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000009a67fd80 t=
o 0000000021ca5176
[   20.968979] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000bc62201c t=
o 0000000021ca5176
[   20.969203] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00021ca5176 nonblocking
[   20.980167] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000021ca5176
[   20.980276] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000021ca5176
[   20.984390] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   20.984496] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
00000004499cb8f
[   20.984576] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 000000004499cb8f
[   20.984649] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000dc0bbc8f state to 000000004499cb8f
[   20.984722] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 00000000dc0bbc8f
[   20.984790] [drm:drm_atomic_check_only [drm]] checking 000000004499cb8=
f
[   20.984874] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   20.985113] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000004c816c4f t=
o 000000004499cb8f
[   20.985329] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000ae13c4ac t=
o 000000004499cb8f
[   20.985535] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
0004499cb8f nonblocking
[   20.996834] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 000000004499cb8f
[   20.996942] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
00000004499cb8f
[   21.000820] [drm:drm_mode_addfb2 [drm]] [FB:103]
[   21.000925] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000081bd15ed
[   21.001004] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 00000000b0164a02 state to 0000000081bd15ed
[   21.001076] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 00000000b9691ec0 state to 0000000081bd15ed
[   21.001148] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:103] for [PLANE:31:plane 1A] state 00000000b9691ec0
[   21.001217] [drm:drm_atomic_check_only [drm]] checking 0000000081bd15e=
d
[   21.001299] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   21.001533] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 00000000168ba733 t=
o 0000000081bd15ed
[   21.001748] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000a528f57f t=
o 0000000081bd15ed
[   21.001951] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00081bd15ed nonblocking
[   21.013430] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000081bd15ed
[   21.013528] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000013a9eba7
[   21.013557] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000081bd15ed
[   21.013669] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000013a9eba7
[   21.013783] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000013a9eba7
[   21.018720] [drm:drm_mode_addfb2 [drm]] [FB:105]
[   21.018814] [drm:drm_atomic_state_init [drm]] Allocated atomic state 0=
000000013a9eba7
[   21.018892] [drm:drm_atomic_get_crtc_state [drm]] Added [CRTC:51:pipe =
A] 0000000080ff70c6 state to 0000000013a9eba7
[   21.018965] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:31:pla=
ne 1A] 0000000007272def state to 0000000013a9eba7
[   21.019036] i915 0000:00:02.0: [drm:drm_atomic_set_fb_for_plane [drm]]=
 Set [FB:105] for [PLANE:31:plane 1A] state 0000000007272def
[   21.019104] [drm:drm_atomic_check_only [drm]] checking 0000000013a9eba=
7
[   21.019186] i915 0000:00:02.0: [drm:intel_plane_atomic_calc_changes [i=
915]] [CRTC:51:pipe A] with [PLANE:31:plane 1A] visible 1 -> 1, off 0, on=
 0, ms 0
[   21.019418] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000f2d4b2ab state 000000007f90e5e8 t=
o 0000000013a9eba7
[   21.019631] i915 0000:00:02.0: [drm:intel_atomic_get_global_obj_state =
[i915]] Added new global object 00000000a7bf5575 state 00000000619013ef t=
o 0000000013a9eba7
[   21.019835] [drm:drm_atomic_nonblocking_commit [drm]] committing 00000=
00013a9eba7 nonblocking
[   21.030176] [drm:drm_atomic_state_default_clear [drm]] Clearing atomic=
 state 0000000013a9eba7
[   21.030289] [drm:__drm_atomic_state_free [drm]] Freeing atomic state 0=
000000013a9eba7
[   21.130409] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DC off
[   21.130681] i915 0000:00:02.0: [drm:skl_enable_dc6 [i915]] Enabling DC=
6
[   21.130904] i915 0000:00:02.0: [drm:gen9_set_dc_state [i915]] Setting =
DC state from 00 to 02

--------------FC9202B3358A08678C16161C
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--------------FC9202B3358A08678C16161C--
