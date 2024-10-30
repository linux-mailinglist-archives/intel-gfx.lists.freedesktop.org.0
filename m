Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6E79B8EA2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C02110E95E;
	Fri,  1 Nov 2024 10:08:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=sfcompute.com header.i=@sfcompute.com header.b="Clfzhii4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C2310E809
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 22:40:58 +0000 (UTC)
Received: by mail-qv1-f42.google.com with SMTP id
 6a1803df08f44-6cbd1ae26a6so2125366d6.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 15:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sfcompute.com; s=google; t=1730328057; x=1730932857;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=LjCZUxEl/JBx7Yf0MHCwgA3+3rwDTnE3ZlftiN1X5mY=;
 b=Clfzhii4jJmgEu5NN38YVdRzcHC6jHVUzOry2PHJ0XLtVtuWrvWs7MSAk/yHR7sy7U
 U9GK6sKP7IIwnAwABXQ2GYdcac5lhi+JhhkxE7bmxvQ3o9CUZhs8XmU7Zweph6bRVXs+
 MElo0KipirlBz5O+qfDfJwH1pwCDkNptZTtsE2b/LxJFmVyy+dN4sI8++EH9zHIiRwPs
 fFN4BNFjQvCDpUmh69/U6fJfo1dJ17OnlWlNtwQ7+979lL+5qYQzBiPk1ajziA25mVIL
 8utl1mxqhXUvRLmALzUhO6lnGgbKTmN8x04/4NitZb7jVMZdNN29i+lqFAN4m8dgeFkq
 dyug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730328057; x=1730932857;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LjCZUxEl/JBx7Yf0MHCwgA3+3rwDTnE3ZlftiN1X5mY=;
 b=jx9Tyw8C4sjjN7A0ZXSpBjNCGtIj9iFcLPn1jCQUaQK8EjnldhuELXzx4jRReaxpbv
 rqt2uM+AoZulmeTda4BoILM48NAoRbaPdM7FfK0yvNAo+jQVwS5T4h8warrNkXJu5Kaa
 KeCgJP/AodebJOedrc02Zp/ZobCjZMZIqRge+06rWnRY6ll7njlThFQtHaBuHWkytmtj
 gZQxGeCVsuO864qZ2X0x3ewu7eKo6/4JATzzQQystf/FPngC/aLj/K0Rhm5c4kqNnlgL
 ptxmIx9r1KX10YsqmwDn29Ps6MDR08Uzjj3GmPaV2YIacVC1ZXHPo31BAlxMIRPDpDP6
 lZYg==
X-Gm-Message-State: AOJu0Yxw4VL1oke1Gbsm19+WXgLXemEITZCj40dnqOsHTrg3CJcmDMC8
 TaWeIK8Iai0Fp6YL63LVTwrqt+jsiS65Gp4P1b+iqjvzBvEFPSvgkLnXPWotf/3T2FE6MbxxHbc
 eh4Ct5heoz8ZnqfPEZQP4KJyYlXbF3kwr/J50GV0wnb8g8EpKD6Zv8w==
X-Google-Smtp-Source: AGHT+IFXzTP5vw8KJmdAEhMQpwoItKI8Ys6u1rbtrEP+sqfyLiQgP+AqU26it+yyP7ovQswMyNmWzzWEf3OasbrLg9o=
X-Received: by 2002:a05:6214:3c98:b0:6cb:f79a:cb38 with SMTP id
 6a1803df08f44-6d185672abemr253141286d6.5.1730328054377; Wed, 30 Oct 2024
 15:40:54 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Coffin <acoffin@sfcompute.com>
Date: Wed, 30 Oct 2024 15:40:43 -0700
Message-ID: <CANDg6HitgouwdeM9rCrr5LCjeCqNFeZZuf3KXaZBD072HNeJzA@mail.gmail.com>
Subject: i915 potential deadlock
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Fri, 01 Nov 2024 10:08:01 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

I was attempting to investigate an issue that I believe may be related
to iwlwifi, but managed to stumble across this lockdep report first
when I was attempting to debug the kernel in general. This is from
Linux Kernel version v6.1.112 (technically the Debian patched version,
but I don't think that is relevant to this issue).

I haven't had a chance to read this code yet, but I thought that I
would report it so that someone more familiar with this code base
could have a chance to investigate before I do (if I have time). As
far as I can see there weren't any changes to i915 after 6.1.112 that
were relevant (I only see "drm/i915/gem: fix bitwise and logical AND
mixup") so unless a backport is missing I believe that this issue
would also affect mainline version.

I am including 3 text files.
1. A log from `journalctl -k`
2. The same log from before but with the relevant portion highlighted
3. An annotated version of the prior relevant portion (passed through
`./scripts/decode_stacktrace.sh -r 6.1.112`).

File 1
```
Oct 30 10:41:34 acoffin-xps-15 kernel: Linux version 6.1.112
(acoffin@acoffin-xps-15) (gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU
Binutils for Debian) 2.40) #2 SMP PREEMPT_DYNAMIC Tue Oct 29 19:43:36
PDT 2024
Oct 30 10:41:34 acoffin-xps-15 kernel: Command line:
BOOT_IMAGE=/vmlinuz-6.1.112 root=/dev/mapper/acoffin--xps--15--vg-root
ro quiet
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-provided physical RAM map:
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x0000000000000000-0x000000000009efff] usable
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x000000000009f000-0x00000000000fffff] reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x0000000000100000-0x000000005bf6efff] usable
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x000000005bf6f000-0x000000005c191fff] type 20
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x000000005c192000-0x0000000060d10fff] reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x0000000060d11000-0x0000000061571fff] ACPI NVS
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x0000000061572000-0x00000000617fefff] ACPI data
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x00000000617ff000-0x00000000617fffff] usable
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x0000000061800000-0x00000000663fffff] reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x0000000066e00000-0x00000000707fffff] reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x00000000c0000000-0x00000000cfffffff] reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x00000000f9000000-0x00000000f9ffffff] reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x00000000fed20000-0x00000000fed7ffff] reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x00000000ff000000-0x00000000ffffffff] reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: BIOS-e820: [mem
0x0000000100000000-0x000000108f7fffff] usable
Oct 30 10:41:34 acoffin-xps-15 kernel: NX (Execute Disable) protection: active
Oct 30 10:41:34 acoffin-xps-15 kernel: efi: EFI v2.70 by Dell
Oct 30 10:41:34 acoffin-xps-15 kernel: efi: ACPI=0x617fe000 ACPI
2.0=0x617fe014 SMBIOS=0x5c800000 ESRT=0x5c798718 MEMATTR=0x56a04118
MOKvar=0x5c7ca000
Oct 30 10:41:34 acoffin-xps-15 kernel: secureboot: Secure boot disabled
Oct 30 10:41:34 acoffin-xps-15 kernel: SMBIOS 3.6 present.
Oct 30 10:41:34 acoffin-xps-15 kernel: DMI: Dell Inc. XPS 15
9530/013F3N, BIOS 1.15.0 07/08/2024
Oct 30 10:41:34 acoffin-xps-15 kernel: tsc: Detected 2900.000 MHz processor
Oct 30 10:41:34 acoffin-xps-15 kernel: tsc: Detected 2918.400 MHz TSC
Oct 30 10:41:34 acoffin-xps-15 kernel: e820: update [mem
0x00000000-0x00000fff] usable ==> reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: e820: remove [mem
0x000a0000-0x000fffff] usable
Oct 30 10:41:34 acoffin-xps-15 kernel: last_pfn = 0x108f800
max_arch_pfn = 0x400000000
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/PAT: Configuration [0-7]:
WB  WC  UC- UC  WB  WP  UC- WT
Oct 30 10:41:34 acoffin-xps-15 kernel: last_pfn = 0x61800 max_arch_pfn
= 0x400000000
Oct 30 10:41:34 acoffin-xps-15 kernel: esrt: Reserving ESRT space from
0x000000005c798718 to 0x000000005c798778.
Oct 30 10:41:34 acoffin-xps-15 kernel: Using GB pages for direct mapping
Oct 30 10:41:34 acoffin-xps-15 kernel: Incomplete global flushes, disabling PCID
Oct 30 10:41:34 acoffin-xps-15 kernel: RAMDISK: [mem 0x30137000-0x34092fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Early table checksum
verification disabled
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: RSDP 0x00000000617FE014
000024 (v02 DELL  )
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: XSDT 0x000000006171F188
000114 (v01 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: FACP 0x00000000617EA000
000114 (v06 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: DSDT 0x000000006174B000
09B815 (v02 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: FACS 0x00000000614DB000 000040
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x00000000617FC000
00038C (v02 PmaxDv Pmax_Dev 00000001 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x00000000617FB000
000177 (v01 CIRRUS SPKRAMPS 00000002 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x00000000617F5000
005C55 (v02 CpuRef CpuSsdt  00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x00000000617EB000
009D65 (v02 DptfTb DptfTabl 00001000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: HPET 0x00000000617E9000
000038 (v01 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: APIC 0x00000000617E8000
0001DC (v05 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: MCFG 0x00000000617E7000
00003C (v01 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x0000000061747000
00386C (v02 DELL   DellRtd3 00001000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x0000000061744000
002FD3 (v02 SaSsdt SaSsdt   00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x0000000061742000
001343 (v02 INTEL  IgfxSsdt 00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x0000000061734000
00D7C2 (v02 INTEL  TcssSsdt 00001000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: NHLT 0x0000000061732000
001214 (v00 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x0000000061730000
0010C0 (v02 DELL   UsbCTabl 00001000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LPIT 0x000000006172F000
0000CC (v01 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: WSMT 0x000000006172E000
000028 (v01 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x000000006172D000
000B44 (v02 DELL   PtidDevc 00001000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x0000000061723000
0092F4 (v02 DELL   TbtTypeC 00000000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: DBGP 0x0000000061722000
000034 (v01 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: DBG2 0x0000000061721000
000054 (v00 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: BOOT 0x0000000061720000
000028 (v01 DELL   CBX3     00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: MSDM 0x00000000617FD000
000055 (v03 DELL   CBX3     06222004 AMI  00010013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: DMAR 0x000000006171E000
000088 (v01 INTEL  Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: FPDT 0x000000006171D000
000034 (v01 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x000000006171C000
000999 (v02 DELL   xh_Dell_ 00000000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x0000000061718000
0039DA (v02 SocGpe SocGpe   00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x0000000061714000
0039DA (v02 SocCmn SocCmn   00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0x0000000061713000
000144 (v02 Intel  ADebTabl 00001000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PHAT 0x0000000061712000
000506 (v01 DELL   Dell Inc 00000005 MSFT 0100000D)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: BGRT 0x0000000061711000
000038 (v01 DELL   Dell Inc 00000002      01000013)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving FACP table
memory at [mem 0x617ea000-0x617ea113]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving DSDT table
memory at [mem 0x6174b000-0x617e6814]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving FACS table
memory at [mem 0x614db000-0x614db03f]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x617fc000-0x617fc38b]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x617fb000-0x617fb176]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x617f5000-0x617fac54]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x617eb000-0x617f4d64]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving HPET table
memory at [mem 0x617e9000-0x617e9037]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving APIC table
memory at [mem 0x617e8000-0x617e81db]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving MCFG table
memory at [mem 0x617e7000-0x617e703b]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x61747000-0x6174a86b]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x61744000-0x61746fd2]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x61742000-0x61743342]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x61734000-0x617417c1]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving NHLT table
memory at [mem 0x61732000-0x61733213]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x61730000-0x617310bf]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving LPIT table
memory at [mem 0x6172f000-0x6172f0cb]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving WSMT table
memory at [mem 0x6172e000-0x6172e027]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x6172d000-0x6172db43]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x61723000-0x6172c2f3]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving DBGP table
memory at [mem 0x61722000-0x61722033]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving DBG2 table
memory at [mem 0x61721000-0x61721053]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving BOOT table
memory at [mem 0x61720000-0x61720027]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving MSDM table
memory at [mem 0x617fd000-0x617fd054]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving DMAR table
memory at [mem 0x6171e000-0x6171e087]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving FPDT table
memory at [mem 0x6171d000-0x6171d033]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x6171c000-0x6171c998]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x61718000-0x6171b9d9]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x61714000-0x617179d9]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving SSDT table
memory at [mem 0x61713000-0x61713143]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving PHAT table
memory at [mem 0x61712000-0x61712505]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Reserving BGRT table
memory at [mem 0x61711000-0x61711037]
Oct 30 10:41:34 acoffin-xps-15 kernel: No NUMA configuration found
Oct 30 10:41:34 acoffin-xps-15 kernel: Faking a node at [mem
0x0000000000000000-0x000000108f7fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: NODE_DATA(0) allocated [mem
0x108f7d5000-0x108f7fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: Zone ranges:
Oct 30 10:41:34 acoffin-xps-15 kernel:   DMA      [mem
0x0000000000001000-0x0000000000ffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel:   DMA32    [mem
0x0000000001000000-0x00000000ffffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel:   Normal   [mem
0x0000000100000000-0x000000108f7fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel:   Device   empty
Oct 30 10:41:34 acoffin-xps-15 kernel: Movable zone start for each node
Oct 30 10:41:34 acoffin-xps-15 kernel: Early memory node ranges
Oct 30 10:41:34 acoffin-xps-15 kernel:   node   0: [mem
0x0000000000001000-0x000000000009efff]
Oct 30 10:41:34 acoffin-xps-15 kernel:   node   0: [mem
0x0000000000100000-0x000000005bf6efff]
Oct 30 10:41:34 acoffin-xps-15 kernel:   node   0: [mem
0x00000000617ff000-0x00000000617fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel:   node   0: [mem
0x0000000100000000-0x000000108f7fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: Initmem setup node 0 [mem
0x0000000000001000-0x000000108f7fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: On node 0, zone DMA: 1 pages in
unavailable ranges
Oct 30 10:41:34 acoffin-xps-15 kernel: On node 0, zone DMA: 97 pages
in unavailable ranges
Oct 30 10:41:34 acoffin-xps-15 kernel: On node 0, zone DMA32: 22672
pages in unavailable ranges
Oct 30 10:41:34 acoffin-xps-15 kernel: On node 0, zone Normal: 26624
pages in unavailable ranges
Oct 30 10:41:34 acoffin-xps-15 kernel: On node 0, zone Normal: 2048
pages in unavailable ranges
Oct 30 10:41:34 acoffin-xps-15 kernel: Reserving Intel graphics memory
at [mem 0x6c800000-0x707fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PM-Timer IO Port: 0x1808
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x01]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x02]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x03]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x04]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x05]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x06]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x07]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x08]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x09]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x0a]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x0b]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x0c]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x0d]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x0e]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x0f]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x10]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x11]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x12]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x13]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x14]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x15]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x16]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x17]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: LAPIC_NMI (acpi_id[0x00]
high edge lint[0x1])
Oct 30 10:41:34 acoffin-xps-15 kernel: IOAPIC[0]: apic_id 2, version
32, address 0xfec00000, GSI 0-119
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: INT_SRC_OVR (bus 0
bus_irq 0 global_irq 2 dfl dfl)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: INT_SRC_OVR (bus 0
bus_irq 9 global_irq 9 high level)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Using ACPI (MADT) for SMP
configuration information
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: HPET id: 0x8086a201 base:
0xfed00000
Oct 30 10:41:34 acoffin-xps-15 kernel: e820: update [mem
0x56981000-0x569dbfff] usable ==> reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: TSC deadline timer available
Oct 30 10:41:34 acoffin-xps-15 kernel: smpboot: Allowing 16 CPUs, 0 hotplug CPUs
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x00000000-0x00000fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x0009f000-0x000fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x56981000-0x569dbfff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x5bf6f000-0x5c191fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x5c192000-0x60d10fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x60d11000-0x61571fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x61572000-0x617fefff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x61800000-0x663fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x66400000-0x66dfffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x66e00000-0x707fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0x70800000-0xbfffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0xc0000000-0xcfffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0xd0000000-0xf8ffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0xf9000000-0xf9ffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0xfa000000-0xfed1ffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0xfed20000-0xfed7ffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0xfed80000-0xfeffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: hibernation: Registered
nosave memory: [mem 0xff000000-0xffffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: [mem 0x70800000-0xbfffffff]
available for PCI devices
Oct 30 10:41:34 acoffin-xps-15 kernel: Booting paravirtualized kernel
on bare hardware
Oct 30 10:41:34 acoffin-xps-15 kernel: clocksource: refined-jiffies:
mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645519600211568
ns
Oct 30 10:41:34 acoffin-xps-15 kernel: setup_percpu: NR_CPUS:8192
nr_cpumask_bits:16 nr_cpu_ids:16 nr_node_ids:1
Oct 30 10:41:34 acoffin-xps-15 kernel: percpu: Embedded 64 pages/cpu
s225280 r8192 d28672 u262144
Oct 30 10:41:34 acoffin-xps-15 kernel: pcpu-alloc: s225280 r8192
d28672 u262144 alloc=1*2097152
Oct 30 10:41:34 acoffin-xps-15 kernel: pcpu-alloc: [0] 00 01 02 03 04
05 06 07 [0] 08 09 10 11 12 13 14 15
Oct 30 10:41:34 acoffin-xps-15 kernel: Fallback order for Node 0: 0
Oct 30 10:41:34 acoffin-xps-15 kernel: Built 1 zonelists, mobility
grouping on.  Total pages: 16432018
Oct 30 10:41:34 acoffin-xps-15 kernel: Policy zone: Normal
Oct 30 10:41:34 acoffin-xps-15 kernel: Kernel command line:
BOOT_IMAGE=/vmlinuz-6.1.112 root=/dev/mapper/acoffin--xps--15--vg-root
ro quiet
Oct 30 10:41:34 acoffin-xps-15 kernel: Unknown kernel command line
parameters "BOOT_IMAGE=/vmlinuz-6.1.112", will be passed to user
space.
Oct 30 10:41:34 acoffin-xps-15 kernel: random: crng init done
Oct 30 10:41:34 acoffin-xps-15 kernel: Dentry cache hash table
entries: 8388608 (order: 14, 67108864 bytes, linear)
Oct 30 10:41:34 acoffin-xps-15 kernel: Inode-cache hash table entries:
4194304 (order: 13, 33554432 bytes, linear)
Oct 30 10:41:34 acoffin-xps-15 kernel: mem auto-init: stack:all(zero),
heap alloc:on, heap free:off
Oct 30 10:41:34 acoffin-xps-15 kernel: software IO TLB: area num 16.
Oct 30 10:41:34 acoffin-xps-15 kernel: Memory: 1411804K/66772024K
available (14342K kernel code, 2982K rwdata, 9252K rodata, 2820K init,
28836K bss, 1440968K reserved, 0K cma-reserved)
Oct 30 10:41:34 acoffin-xps-15 kernel: SLUB: HWalign=64, Order=0-3,
MinObjects=0, CPUs=16, Nodes=1
Oct 30 10:41:34 acoffin-xps-15 kernel: ftrace: allocating 40485
entries in 159 pages
Oct 30 10:41:34 acoffin-xps-15 kernel: ftrace: allocated 159 pages with 6 groups
Oct 30 10:41:34 acoffin-xps-15 kernel: Dynamic Preempt: voluntary
Oct 30 10:41:34 acoffin-xps-15 kernel: Running RCU self tests
Oct 30 10:41:34 acoffin-xps-15 kernel: rcu: Preemptible hierarchical
RCU implementation.
Oct 30 10:41:34 acoffin-xps-15 kernel: rcu:         RCU lockdep
checking is enabled.
Oct 30 10:41:34 acoffin-xps-15 kernel: rcu:         RCU restricting
CPUs from NR_CPUS=8192 to nr_cpu_ids=16.
Oct 30 10:41:34 acoffin-xps-15 kernel:         Trampoline variant of
Tasks RCU enabled.
Oct 30 10:41:34 acoffin-xps-15 kernel:         Rude variant of Tasks
RCU enabled.
Oct 30 10:41:34 acoffin-xps-15 kernel:         Tracing variant of
Tasks RCU enabled.
Oct 30 10:41:34 acoffin-xps-15 kernel: rcu: RCU calculated value of
scheduler-enlistment delay is 25 jiffies.
Oct 30 10:41:34 acoffin-xps-15 kernel: rcu: Adjusting geometry for
rcu_fanout_leaf=16, nr_cpu_ids=16
Oct 30 10:41:34 acoffin-xps-15 kernel: NR_IRQS: 524544, nr_irqs: 2184,
preallocated irqs: 16
Oct 30 10:41:34 acoffin-xps-15 kernel: rcu: srcu_init: Setting
srcu_struct sizes based on contention.
Oct 30 10:41:34 acoffin-xps-15 kernel: Console: colour dummy device 80x25
Oct 30 10:41:34 acoffin-xps-15 kernel: printk: console [tty0] enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: Lock dependency validator:
Copyright (c) 2006 Red Hat, Inc., Ingo Molnar
Oct 30 10:41:34 acoffin-xps-15 kernel: ... MAX_LOCKDEP_SUBCLASSES:  8
Oct 30 10:41:34 acoffin-xps-15 kernel: ... MAX_LOCK_DEPTH:          48
Oct 30 10:41:34 acoffin-xps-15 kernel: ... MAX_LOCKDEP_KEYS:        8192
Oct 30 10:41:34 acoffin-xps-15 kernel: ... CLASSHASH_SIZE:          4096
Oct 30 10:41:34 acoffin-xps-15 kernel: ... MAX_LOCKDEP_ENTRIES:     32768
Oct 30 10:41:34 acoffin-xps-15 kernel: ... MAX_LOCKDEP_CHAINS:      65536
Oct 30 10:41:34 acoffin-xps-15 kernel: ... CHAINHASH_SIZE:          32768
Oct 30 10:41:34 acoffin-xps-15 kernel:  memory used by lock dependency
info: 6365 kB
Oct 30 10:41:34 acoffin-xps-15 kernel:  memory used for stack traces: 4224 kB
Oct 30 10:41:34 acoffin-xps-15 kernel:  per task-struct memory
footprint: 1920 bytes
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Core revision 20220331
Oct 30 10:41:34 acoffin-xps-15 kernel: hpet: HPET dysfunctional in
PC10. Force disabled.
Oct 30 10:41:34 acoffin-xps-15 kernel: APIC: Switch to symmetric I/O mode setup
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: Host address width 39
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: DRHD base:
0x000000fed90000 flags: 0x0
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: dmar0: reg_base_addr
fed90000 ver 4:0 cap 1c0000c40660462 ecap 29a00f0505e
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: DRHD base:
0x000000fed91000 flags: 0x1
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: dmar1: reg_base_addr
fed91000 ver 5:0 cap d2008c40660462 ecap f050da
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: RMRR base:
0x0000006c000000 end: 0x000000707fffff
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR-IR: IOAPIC id 2 under DRHD
base  0xfed91000 IOMMU 1
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR-IR: HPET id 0 under DRHD
base 0xfed91000
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR-IR: Queued invalidation
will be enabled to support x2apic and Intr-remapping.
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR-IR: Enabled IRQ remapping
in x2apic mode
Oct 30 10:41:34 acoffin-xps-15 kernel: x2apic enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: Switched APIC routing to cluster x2apic.
Oct 30 10:41:34 acoffin-xps-15 kernel: clocksource: tsc-early: mask:
0xffffffffffffffff max_cycles: 0x2a11290c0c8, max_idle_ns:
440795344938 ns
Oct 30 10:41:34 acoffin-xps-15 kernel: Calibrating delay loop
(skipped), value calculated using timer frequency.. 5836.80 BogoMIPS
(lpj=11673600)
Oct 30 10:41:34 acoffin-xps-15 kernel: CPU0: Thermal monitoring enabled (TM1)
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/cpu: User Mode Instruction
Prevention (UMIP) activated
Oct 30 10:41:34 acoffin-xps-15 kernel: process: using mwait in idle threads
Oct 30 10:41:34 acoffin-xps-15 kernel: Last level iTLB entries: 4KB 0,
2MB 0, 4MB 0
Oct 30 10:41:34 acoffin-xps-15 kernel: Last level dTLB entries: 4KB 0,
2MB 0, 4MB 0, 1GB 0
Oct 30 10:41:34 acoffin-xps-15 kernel: Spectre V1 : Mitigation:
usercopy/swapgs barriers and __user pointer sanitization
Oct 30 10:41:34 acoffin-xps-15 kernel: Spectre V2 : Mitigation:
Enhanced / Automatic IBRS
Oct 30 10:41:34 acoffin-xps-15 kernel: Spectre V2 : Spectre v2 /
SpectreRSB mitigation: Filling RSB on context switch
Oct 30 10:41:34 acoffin-xps-15 kernel: Spectre V2 : Spectre v2 /
PBRSB-eIBRS: Retire a single CALL on VMEXIT
Oct 30 10:41:34 acoffin-xps-15 kernel: Spectre V2 : mitigation:
Enabling conditional Indirect Branch Prediction Barrier
Oct 30 10:41:34 acoffin-xps-15 kernel: Speculative Store Bypass:
Mitigation: Speculative Store Bypass disabled via prctl
Oct 30 10:41:34 acoffin-xps-15 kernel: Register File Data Sampling:
Mitigation: Clear Register File
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/fpu: Supporting XSAVE
feature 0x001: 'x87 floating point registers'
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/fpu: Supporting XSAVE
feature 0x002: 'SSE registers'
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/fpu: Supporting XSAVE
feature 0x004: 'AVX registers'
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/fpu: Supporting XSAVE
feature 0x200: 'Protection Keys User registers'
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/fpu: xstate_offset[2]:
576, xstate_sizes[2]:  256
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/fpu: xstate_offset[9]:
832, xstate_sizes[9]:    8
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/fpu: Enabled xstate
features 0x207, context size is 840 bytes, using 'compacted' format.
Oct 30 10:41:34 acoffin-xps-15 kernel: Freeing SMP alternatives memory: 32K
Oct 30 10:41:34 acoffin-xps-15 kernel: pid_max: default: 32768 minimum: 301
Oct 30 10:41:34 acoffin-xps-15 kernel: LSM: Security Framework initializing
Oct 30 10:41:34 acoffin-xps-15 kernel: landlock: Up and running.
Oct 30 10:41:34 acoffin-xps-15 kernel: Yama: disabled by default;
enable with sysctl kernel.yama.*
Oct 30 10:41:34 acoffin-xps-15 kernel: AppArmor: AppArmor initialized
Oct 30 10:41:34 acoffin-xps-15 kernel: TOMOYO Linux initialized
Oct 30 10:41:34 acoffin-xps-15 kernel: LSM support for eBPF active
Oct 30 10:41:34 acoffin-xps-15 kernel: Mount-cache hash table entries:
131072 (order: 8, 1048576 bytes, linear)
Oct 30 10:41:34 acoffin-xps-15 kernel: Mountpoint-cache hash table
entries: 131072 (order: 8, 1048576 bytes, linear)
Oct 30 10:41:34 acoffin-xps-15 kernel: smpboot: CPU0: 13th Gen
Intel(R) Core(TM) i7-13620H (family: 0x6, model: 0xba, stepping: 0x2)
Oct 30 10:41:34 acoffin-xps-15 kernel: cblist_init_generic: Setting
adjustable number of callback queues.
Oct 30 10:41:34 acoffin-xps-15 kernel: cblist_init_generic: Setting
shift to 4 and lim to 1.
Oct 30 10:41:34 acoffin-xps-15 kernel: cblist_init_generic: Setting
adjustable number of callback queues.
Oct 30 10:41:34 acoffin-xps-15 kernel: cblist_init_generic: Setting
shift to 4 and lim to 1.
Oct 30 10:41:34 acoffin-xps-15 kernel: cblist_init_generic: Setting
adjustable number of callback queues.
Oct 30 10:41:34 acoffin-xps-15 kernel: cblist_init_generic: Setting
shift to 4 and lim to 1.
Oct 30 10:41:34 acoffin-xps-15 kernel: Running RCU-tasks wait API self tests
Oct 30 10:41:34 acoffin-xps-15 kernel: Performance Events: XSAVE
Architectural LBR, PEBS fmt4+-baseline,  AnyThread deprecated,
Alderlake Hybrid events, 32-deep LBR, full-width counters, Intel PMU
driver.
Oct 30 10:41:34 acoffin-xps-15 kernel: core: cpu_core PMU driver:
Oct 30 10:41:34 acoffin-xps-15 kernel: ... version:                5
Oct 30 10:41:34 acoffin-xps-15 kernel: ... bit width:              48
Oct 30 10:41:34 acoffin-xps-15 kernel: ... generic registers:      8
Oct 30 10:41:34 acoffin-xps-15 kernel: ... value mask:
0000ffffffffffff
Oct 30 10:41:34 acoffin-xps-15 kernel: ... max period:
00007fffffffffff
Oct 30 10:41:34 acoffin-xps-15 kernel: ... fixed-purpose events:   4
Oct 30 10:41:34 acoffin-xps-15 kernel: ... event mask:
0001000f000000ff
Oct 30 10:41:34 acoffin-xps-15 kernel: signal: max sigframe size: 3632
Oct 30 10:41:34 acoffin-xps-15 kernel: Estimated ratio of average max
frequency by base frequency (times 1024): 1659
Oct 30 10:41:34 acoffin-xps-15 kernel: rcu: Hierarchical SRCU implementation.
Oct 30 10:41:34 acoffin-xps-15 kernel: rcu:         Max phase no-delay
instances is 1000.
Oct 30 10:41:34 acoffin-xps-15 kernel: NMI watchdog: Enabled.
Permanently consumes one hw-PMU counter.
Oct 30 10:41:34 acoffin-xps-15 kernel: smp: Bringing up secondary CPUs ...
Oct 30 10:41:34 acoffin-xps-15 kernel: x86: Booting SMP configuration:
Oct 30 10:41:34 acoffin-xps-15 kernel: .... node  #0, CPUs:        #1
#2  #3  #4  #5  #6  #7  #8  #9 #10 #11 #12
Oct 30 10:41:34 acoffin-xps-15 kernel: core: cpu_atom PMU driver: PEBS-via-PT
Oct 30 10:41:34 acoffin-xps-15 kernel: ... version:                5
Oct 30 10:41:34 acoffin-xps-15 kernel: ... bit width:              48
Oct 30 10:41:34 acoffin-xps-15 kernel: ... generic registers:      6
Oct 30 10:41:34 acoffin-xps-15 kernel: ... value mask:
0000ffffffffffff
Oct 30 10:41:34 acoffin-xps-15 kernel: ... max period:
00007fffffffffff
Oct 30 10:41:34 acoffin-xps-15 kernel: ... fixed-purpose events:   3
Oct 30 10:41:34 acoffin-xps-15 kernel: ... event mask:
000000070000003f
Oct 30 10:41:34 acoffin-xps-15 kernel: Callback from
call_rcu_tasks_trace() invoked.
Oct 30 10:41:34 acoffin-xps-15 kernel:  #13 #14 #15
Oct 30 10:41:34 acoffin-xps-15 kernel: smp: Brought up 1 node, 16 CPUs
Oct 30 10:41:34 acoffin-xps-15 kernel: smpboot: Max logical packages: 1
Oct 30 10:41:34 acoffin-xps-15 kernel: smpboot: Total of 16 processors
activated (93388.80 BogoMIPS)
Oct 30 10:41:34 acoffin-xps-15 kernel: node 0 deferred pages initialised in 28ms
Oct 30 10:41:34 acoffin-xps-15 kernel: devtmpfs: initialized
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/mm: Memory block size: 2048MB
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PM: Registering ACPI NVS
region [mem 0x60d11000-0x61571fff] (8785920 bytes)
Oct 30 10:41:34 acoffin-xps-15 kernel: clocksource: jiffies: mask:
0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
Oct 30 10:41:34 acoffin-xps-15 kernel: futex hash table entries: 4096
(order: 7, 524288 bytes, linear)
Oct 30 10:41:34 acoffin-xps-15 kernel: pinctrl core: initialized
pinctrl subsystem
Oct 30 10:41:34 acoffin-xps-15 kernel: NET: Registered
PF_NETLINK/PF_ROUTE protocol family
Oct 30 10:41:34 acoffin-xps-15 kernel: DMA: preallocated 4096 KiB
GFP_KERNEL pool for atomic allocations
Oct 30 10:41:34 acoffin-xps-15 kernel: DMA: preallocated 4096 KiB
GFP_KERNEL|GFP_DMA pool for atomic allocations
Oct 30 10:41:34 acoffin-xps-15 kernel: DMA: preallocated 4096 KiB
GFP_KERNEL|GFP_DMA32 pool for atomic allocations
Oct 30 10:41:34 acoffin-xps-15 kernel: audit: initializing netlink
subsys (disabled)
Oct 30 10:41:34 acoffin-xps-15 kernel: audit: type=2000
audit(1730309556.188:1): state=initialized audit_enabled=0 res=1
Oct 30 10:41:34 acoffin-xps-15 kernel: thermal_sys: Registered thermal
governor 'fair_share'
Oct 30 10:41:34 acoffin-xps-15 kernel: thermal_sys: Registered thermal
governor 'bang_bang'
Oct 30 10:41:34 acoffin-xps-15 kernel: thermal_sys: Registered thermal
governor 'step_wise'
Oct 30 10:41:34 acoffin-xps-15 kernel: thermal_sys: Registered thermal
governor 'user_space'
Oct 30 10:41:34 acoffin-xps-15 kernel: thermal_sys: Registered thermal
governor 'power_allocator'
Oct 30 10:41:34 acoffin-xps-15 kernel: cpuidle: using governor ladder
Oct 30 10:41:34 acoffin-xps-15 kernel: cpuidle: using governor menu
Oct 30 10:41:34 acoffin-xps-15 kernel: Simple Boot Flag at 0x47 set to 0x80
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI FADT declares the system
doesn't support PCIe ASPM, so disable it
Oct 30 10:41:34 acoffin-xps-15 kernel: acpiphp: ACPI Hot Plug PCI
Controller Driver version: 0.5
Oct 30 10:41:34 acoffin-xps-15 kernel: PCI: MMCONFIG for domain 0000
[bus 00-ff] at [mem 0xc0000000-0xcfffffff] (base 0xc0000000)
Oct 30 10:41:34 acoffin-xps-15 kernel: PCI: MMCONFIG at [mem
0xc0000000-0xcfffffff] reserved in E820
Oct 30 10:41:34 acoffin-xps-15 kernel: PCI: Using configuration type 1
for base access
Oct 30 10:41:34 acoffin-xps-15 kernel: ENERGY_PERF_BIAS: Set to
'normal', was 'performance'
Oct 30 10:41:34 acoffin-xps-15 kernel: kprobes: kprobe
jump-optimization is enabled. All kprobes are optimized if possible.
Oct 30 10:41:34 acoffin-xps-15 kernel: HugeTLB: registered 1.00 GiB
page size, pre-allocated 0 pages
Oct 30 10:41:34 acoffin-xps-15 kernel: HugeTLB: 16380 KiB vmemmap can
be freed for a 1.00 GiB page
Oct 30 10:41:34 acoffin-xps-15 kernel: HugeTLB: registered 2.00 MiB
page size, pre-allocated 0 pages
Oct 30 10:41:34 acoffin-xps-15 kernel: HugeTLB: 28 KiB vmemmap can be
freed for a 2.00 MiB page
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Added _OSI(Module Device)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Added _OSI(Processor Device)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Added _OSI(3.0 _SCP Extensions)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Added _OSI(Processor
Aggregator Device)
Oct 30 10:41:34 acoffin-xps-15 kernel: Callback from
call_rcu_tasks_rude() invoked.
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: 16 ACPI AML tables
successfully acquired and loaded
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Dynamic OEM Table Load:
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0xFFFF9E0641C03800
0001AB (v02 PmRef  Cpu0Psd  00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: \_SB_.PR00: _OSC native
thermal LVT Acked
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: USB4 _OSC: OS supports
USB3+ DisplayPort+ PCIe+ XDomain+
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: USB4 _OSC: OS controls
USB3+ DisplayPort+ PCIe+ XDomain+
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Dynamic OEM Table Load:
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0xFFFF9E0642023000
000540 (v02 PmRef  Cpu0Cst  00003001 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Dynamic OEM Table Load:
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0xFFFF9E0642027800
000668 (v02 PmRef  Cpu0Ist  00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Dynamic OEM Table Load:
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0xFFFF9E0642022000
0004CF (v02 PmRef  Cpu0Hwp  00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Dynamic OEM Table Load:
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0xFFFF9E0642018000
001BAF (v02 PmRef  ApIst    00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Dynamic OEM Table Load:
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0xFFFF9E064201A000
001038 (v02 PmRef  ApHwp    00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Dynamic OEM Table Load:
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0xFFFF9E0642040000
001349 (v02 PmRef  ApPsd    00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Dynamic OEM Table Load:
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: SSDT 0xFFFF9E0642031000
000FBB (v02 PmRef  ApCst    00003000 INTL 20200717)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: EC: EC started
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: EC: interrupt blocked
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: EC: EC_CMD/EC_SC=0x934,
EC_DATA=0x930
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: \_SB_.PC00.LPCB.ECDV:
Boot DSDT EC used to handle transactions
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Interpreter enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PM: (supports S0 S4 S5)
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Using IOAPIC for interrupt routing
Oct 30 10:41:34 acoffin-xps-15 kernel: PCI: Using host bridge windows
from ACPI; if necessary, use "pci=nocrs" and report a bug
Oct 30 10:41:34 acoffin-xps-15 kernel: PCI: Ignoring E820 reservations
for host bridge windows
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: Enabled 8 GPEs in block 00 to 7F
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PM: Power Resource [BTRT]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PM: Power Resource [WRST]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PM: Power Resource [TBT0]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PM: Power Resource [TBT1]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PM: Power Resource [D3C]
Oct 30 10:41:34 acoffin-xps-15 kernel: Callback from call_rcu_tasks() invoked.
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PM: Power Resource [PIN]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: PCI Root Bridge [PC00]
(domain 0000 [bus 00-fe])
Oct 30 10:41:34 acoffin-xps-15 kernel: acpi PNP0A08:00: _OSC: OS
supports [ExtendedConfig ASPM ClockPM Segments MSI HPX-Type3]
Oct 30 10:41:34 acoffin-xps-15 kernel: acpi PNP0A08:00: _OSC: platform
does not support [AER]
Oct 30 10:41:34 acoffin-xps-15 kernel: acpi PNP0A08:00: _OSC: OS now
controls [PCIeHotplug SHPCHotplug PME PCIeCapability LTR]
Oct 30 10:41:34 acoffin-xps-15 kernel: acpi PNP0A08:00: FADT indicates
ASPM is unsupported, using BIOS configuration
Oct 30 10:41:34 acoffin-xps-15 kernel: PCI host bridge to bus 0000:00
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: root bus
resource [io  0x0000-0x0cf7 window]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: root bus
resource [io  0x0d00-0xffff window]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: root bus
resource [mem 0x000a0000-0x000bffff window]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: root bus
resource [mem 0x70800000-0xbfffffff window]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: root bus
resource [mem 0x4000000000-0x7fffffffff window]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: root bus
resource [bus 00-fe]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:00.0: [8086:a715]
type 00 class 0x060000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: [8086:a7a8]
type 00 class 0x030000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: reg 0x10:
[mem 0x6076000000-0x6076ffffff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: reg 0x18:
[mem 0x4000000000-0x400fffffff 64bit pref]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: reg 0x20: [io
 0x3000-0x303f]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: BAR 2:
assigned to efifb
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: DMAR: Skip
IOMMU disabling for graphics
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: Video device
with shadowed ROM at [mem 0x000c0000-0x000dffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: reg 0x344:
[mem 0x00000000-0x00ffffff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: VF(n) BAR0
space: [mem 0x00000000-0x06ffffff 64bit] (contains BAR0 for 7 VFs)
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: reg 0x34c:
[mem 0x00000000-0x1fffffff 64bit pref]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: VF(n) BAR2
space: [mem 0x00000000-0xdfffffff 64bit pref] (contains BAR2 for 7
VFs)
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:04.0: [8086:a71d]
type 00 class 0x118000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:04.0: reg 0x10:
[mem 0x6077140000-0x607715ffff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.0: [8086:a74d]
type 01 class 0x060400
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.0: PME#
supported from D0 D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.0: PTM enabled
(root), 4ns granularity
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.2: [8086:a73d]
type 01 class 0x060400
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.2: PME#
supported from D0 D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.2: PTM enabled
(root), 4ns granularity
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0: [8086:a76e]
type 01 class 0x060400
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0: PME#
supported from D0 D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0: PTM enabled
(root), 4ns granularity
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1: [8086:a73f]
type 01 class 0x060400
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1: PME#
supported from D0 D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1: PTM enabled
(root), 4ns granularity
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:08.0: [8086:a74f]
type 00 class 0x088000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:08.0: reg 0x10:
[mem 0x60771b3000-0x60771b3fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0a.0: [8086:a77d]
type 00 class 0x118000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0a.0: reg 0x10:
[mem 0x6077190000-0x6077197fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0a.0: enabling Extended Tags
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0d.0: [8086:a71e]
type 00 class 0x0c0330
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0d.0: reg 0x10:
[mem 0x6077180000-0x607718ffff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0d.0: PME#
supported from D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0d.2: [8086:a73e]
type 00 class 0x0c0340
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0d.2: reg 0x10:
[mem 0x6077100000-0x607713ffff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0d.2: reg 0x18:
[mem 0x60771b2000-0x60771b2fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0d.2: supports D1 D2
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0d.2: PME#
supported from D0 D1 D2 D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:12.0: [8086:51fc]
type 00 class 0x070000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:12.0: reg 0x10:
[mem 0x6077170000-0x607717ffff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:12.0: PME#
supported from D0 D3hot
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:12.6: [8086:51fb]
type 00 class 0x0c8000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:12.6: reg 0x10:
[mem 0x00000000-0x00000fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.0: [8086:51ed]
type 00 class 0x0c0330
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.0: reg 0x10:
[mem 0x6077160000-0x607716ffff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.0: PME#
supported from D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.2: [8086:51ef]
type 00 class 0x050000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.2: reg 0x10:
[mem 0x60771a8000-0x60771abfff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.2: reg 0x18:
[mem 0x60771b0000-0x60771b0fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.3: [8086:51f1]
type 00 class 0x028000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.3: reg 0x10:
[mem 0x60771a4000-0x60771a7fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.3: PME#
supported from D0 D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:15.0: [8086:51e8]
type 00 class 0x0c8000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:15.0: reg 0x10:
[mem 0x00000000-0x00000fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:15.1: [8086:51e9]
type 00 class 0x0c8000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:15.1: reg 0x10:
[mem 0x00000000-0x00000fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:16.0: [8086:51e0]
type 00 class 0x078000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:16.0: reg 0x10:
[mem 0x60771ad000-0x60771adfff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:16.0: PME#
supported from D3hot
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1c.0: [8086:51bb]
type 01 class 0x060400
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1c.0: PME#
supported from D0 D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1c.0: PTM enabled
(root), 4ns granularity
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.0: [8086:519d]
type 00 class 0x060100
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.3: [8086:51ca]
type 00 class 0x040100
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.3: reg 0x10:
[mem 0x60771a0000-0x60771a3fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.3: reg 0x20:
[mem 0x6077000000-0x60770fffff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.3: PME#
supported from D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.4: [8086:51a3]
type 00 class 0x0c0500
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.4: reg 0x10:
[mem 0x60771ac000-0x60771ac0ff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.4: reg 0x20: [io
 0xefa0-0xefbf]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.5: [8086:51a4]
type 00 class 0x0c8000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.5: reg 0x10:
[mem 0xfe010000-0xfe010fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:01:00.0: [2646:5017]
type 00 class 0x010802
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:01:00.0: reg 0x10:
[mem 0xba300000-0xba303fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.0: PCI bridge to [bus 01]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.0:   bridge
window [mem 0xba300000-0xba3fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:02:00.0: [2646:5017]
type 00 class 0x010802
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:02:00.0: reg 0x10:
[mem 0xba200000-0xba203fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.2: PCI bridge to [bus 02]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.2:   bridge
window [mem 0xba200000-0xba2fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0: PCI bridge to
[bus 03-53]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0:   bridge
window [mem 0x98000000-0xba0fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0:   bridge
window [mem 0x6000000000-0x6035ffffff 64bit pref]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1: PCI bridge to
[bus 54-a4]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1:   bridge
window [mem 0x74000000-0x960fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1:   bridge
window [mem 0x6040000000-0x6075ffffff 64bit pref]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:a5:00.0: [10ec:5260]
type 00 class 0xff0000
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:a5:00.0: reg 0x10:
[mem 0xba100000-0xba100fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:a5:00.0: supports D1 D2
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:a5:00.0: PME#
supported from D1 D2 D3hot D3cold
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1c.0: PCI bridge to [bus a5]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1c.0:   bridge
window [mem 0xba100000-0xba1fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: Low-power S0 idle used by
default for system suspend
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: EC: interrupt unblocked
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: EC: event unblocked
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: EC: EC_CMD/EC_SC=0x934,
EC_DATA=0x930
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: EC: GPE=0x6e
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: \_SB_.PC00.LPCB.ECDV:
Boot DSDT EC initialization complete
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: \_SB_.PC00.LPCB.ECDV: EC:
Used to handle transactions and events
Oct 30 10:41:34 acoffin-xps-15 kernel: iommu: Default domain type: Translated
Oct 30 10:41:34 acoffin-xps-15 kernel: iommu: DMA domain TLB
invalidation policy: lazy mode
Oct 30 10:41:34 acoffin-xps-15 kernel: pps_core: LinuxPPS API ver. 1 registered
Oct 30 10:41:34 acoffin-xps-15 kernel: pps_core: Software ver. 5.3.6 -
Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
Oct 30 10:41:34 acoffin-xps-15 kernel: PTP clock support registered
Oct 30 10:41:34 acoffin-xps-15 kernel: EDAC MC: Ver: 3.0.0
Oct 30 10:41:34 acoffin-xps-15 kernel: Registered efivars operations
Oct 30 10:41:34 acoffin-xps-15 kernel: NetLabel: Initializing
Oct 30 10:41:34 acoffin-xps-15 kernel: NetLabel:  domain hash size = 128
Oct 30 10:41:34 acoffin-xps-15 kernel: NetLabel:  protocols =
UNLABELED CIPSOv4 CALIPSO
Oct 30 10:41:34 acoffin-xps-15 kernel: NetLabel:  unlabeled traffic
allowed by default
Oct 30 10:41:34 acoffin-xps-15 kernel: PCI: Using ACPI for IRQ routing
Oct 30 10:41:34 acoffin-xps-15 kernel: PCI: pci_cache_line_size set to 64 bytes
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.5: can't claim
BAR 0 [mem 0xfe010000-0xfe010fff]: no compatible bridge window
Oct 30 10:41:34 acoffin-xps-15 kernel: e820: reserve RAM buffer [mem
0x0009f000-0x0009ffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: e820: reserve RAM buffer [mem
0x56981000-0x57ffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: e820: reserve RAM buffer [mem
0x5bf6f000-0x5bffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: e820: reserve RAM buffer [mem
0x61800000-0x63ffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: e820: reserve RAM buffer [mem
0x108f800000-0x108fffffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: vgaarb:
setting as boot VGA device
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: vgaarb:
bridge control possible
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: vgaarb: VGA
device added: decodes=io+mem,owns=io+mem,locks=none
Oct 30 10:41:34 acoffin-xps-15 kernel: vgaarb: loaded
Oct 30 10:41:34 acoffin-xps-15 kernel: clocksource: Switched to
clocksource tsc-early
Oct 30 10:41:34 acoffin-xps-15 kernel: VFS: Disk quotas dquot_6.6.0
Oct 30 10:41:34 acoffin-xps-15 kernel: VFS: Dquot-cache hash table
entries: 512 (order 0, 4096 bytes)
Oct 30 10:41:34 acoffin-xps-15 kernel: AppArmor: AppArmor Filesystem Enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: pnp: PnP ACPI init
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:00: [io
0x0680-0x069f] has been reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:00: [io
0x164e-0x164f] has been reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:02: [io
0x1854-0x1857] has been reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: pnp 00:05: disabling [mem
0xc0000000-0xcfffffff] because it overlaps 0000:00:02.0 BAR 9 [mem
0x00000000-0xdfffffff 64bit pref]
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:05: [mem
0xfedc0000-0xfedc7fff] has been reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:05: [mem
0xfeda0000-0xfeda0fff] has been reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:05: [mem
0xfeda1000-0xfeda1fff] has been reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:05: [mem
0xfed20000-0xfed7ffff] has been reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:05: [mem
0xfed90000-0xfed93fff] could not be reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:05: [mem
0xfed45000-0xfed8ffff] could not be reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:05: [mem
0xfee00000-0xfeefffff] has been reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: system 00:06: [io
0x2000-0x20fe] has been reserved
Oct 30 10:41:34 acoffin-xps-15 kernel: pnp: PnP ACPI: found 8 devices
Oct 30 10:41:34 acoffin-xps-15 kernel: clocksource: acpi_pm: mask:
0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
Oct 30 10:41:34 acoffin-xps-15 kernel: NET: Registered PF_INET protocol family
Oct 30 10:41:34 acoffin-xps-15 kernel: IP idents hash table entries:
262144 (order: 9, 2097152 bytes, linear)
Oct 30 10:41:34 acoffin-xps-15 kernel: tcp_listen_portaddr_hash hash
table entries: 32768 (order: 9, 2359296 bytes, linear)
Oct 30 10:41:34 acoffin-xps-15 kernel: Table-perturb hash table
entries: 65536 (order: 6, 262144 bytes, linear)
Oct 30 10:41:34 acoffin-xps-15 kernel: TCP established hash table
entries: 524288 (order: 10, 4194304 bytes, linear)
Oct 30 10:41:34 acoffin-xps-15 kernel: TCP bind hash table entries:
65536 (order: 11, 9437184 bytes, vmalloc hugepage)
Oct 30 10:41:34 acoffin-xps-15 kernel: TCP: Hash tables configured
(established 524288 bind 65536)
Oct 30 10:41:34 acoffin-xps-15 kernel: MPTCP token hash table entries:
65536 (order: 10, 5767168 bytes, vmalloc hugepage)
Oct 30 10:41:34 acoffin-xps-15 kernel: UDP hash table entries: 32768
(order: 10, 5242880 bytes, vmalloc hugepage)
Oct 30 10:41:34 acoffin-xps-15 kernel: UDP-Lite hash table entries:
32768 (order: 10, 5242880 bytes, vmalloc hugepage)
Oct 30 10:41:34 acoffin-xps-15 kernel: NET: Registered
PF_UNIX/PF_LOCAL protocol family
Oct 30 10:41:34 acoffin-xps-15 kernel: NET: Registered PF_XDP protocol family
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: max bus depth:
1 pci_try_num: 2
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: BAR 9:
assigned [mem 0x4020000000-0x40ffffffff 64bit pref]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: BAR 7:
assigned [mem 0x4010000000-0x4016ffffff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0: BAR 13:
assigned [io  0x4000-0x4fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1: BAR 13:
assigned [io  0x5000-0x5fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:12.6: BAR 0:
assigned [mem 0x4017000000-0x4017000fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:15.0: BAR 0:
assigned [mem 0x4017001000-0x4017001fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:15.1: BAR 0:
assigned [mem 0x4017002000-0x4017002fff 64bit]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.5: BAR 0:
assigned [mem 0x70800000-0x70800fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.0: PCI bridge to [bus 01]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.0:   bridge
window [mem 0xba300000-0xba3fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.2: PCI bridge to [bus 02]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.2:   bridge
window [mem 0xba200000-0xba2fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0: PCI bridge to
[bus 03-53]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0:   bridge
window [io  0x4000-0x4fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0:   bridge
window [mem 0x98000000-0xba0fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0:   bridge
window [mem 0x6000000000-0x6035ffffff 64bit pref]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1: PCI bridge to
[bus 54-a4]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1:   bridge
window [io  0x5000-0x5fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1:   bridge
window [mem 0x74000000-0x960fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1:   bridge
window [mem 0x6040000000-0x6075ffffff 64bit pref]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1c.0: PCI bridge to [bus a5]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1c.0:   bridge
window [mem 0xba100000-0xba1fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: resource 4 [io
 0x0000-0x0cf7 window]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: resource 5 [io
 0x0d00-0xffff window]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: resource 6
[mem 0x000a0000-0x000bffff window]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: resource 7
[mem 0x70800000-0xbfffffff window]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:00: resource 8
[mem 0x4000000000-0x7fffffffff window]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:01: resource 1
[mem 0xba300000-0xba3fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:02: resource 1
[mem 0xba200000-0xba2fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:03: resource 0 [io
 0x4000-0x4fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:03: resource 1
[mem 0x98000000-0xba0fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:03: resource 2
[mem 0x6000000000-0x6035ffffff 64bit pref]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:54: resource 0 [io
 0x5000-0x5fff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:54: resource 1
[mem 0x74000000-0x960fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:54: resource 2
[mem 0x6040000000-0x6075ffffff 64bit pref]
Oct 30 10:41:34 acoffin-xps-15 kernel: pci_bus 0000:a5: resource 1
[mem 0xba100000-0xba1fffff]
Oct 30 10:41:34 acoffin-xps-15 kernel: PCI: CLS 0 bytes, default 64
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: No ATSR found
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: No SATC found
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: IOMMU feature
fl1gp_support inconsistent
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: IOMMU feature pgsel_inv
inconsistent
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: IOMMU feature nwfs inconsistent
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: IOMMU feature dit inconsistent
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: IOMMU feature sc_support
inconsistent
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: IOMMU feature
dev_iotlb_support inconsistent
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: dmar0: Using Queued invalidation
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: dmar1: Using Queued invalidation
Oct 30 10:41:34 acoffin-xps-15 kernel: Trying to unpack rootfs image
as initramfs...
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:02.0: Adding to iommu group 0
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:00.0: Adding to iommu group 1
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:04.0: Adding to iommu group 2
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.0: Adding to iommu group 3
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:06.2: Adding to iommu group 4
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.0: Adding to iommu group 5
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:07.1: Adding to iommu group 6
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:08.0: Adding to iommu group 7
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0a.0: Adding to iommu group 8
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0d.0: Adding to iommu group 9
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:0d.2: Adding to iommu group 9
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:12.0: Adding to
iommu group 10
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:12.6: Adding to
iommu group 10
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.0: Adding to
iommu group 11
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.2: Adding to
iommu group 11
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:14.3: Adding to
iommu group 12
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:15.0: Adding to
iommu group 13
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:15.1: Adding to
iommu group 13
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:16.0: Adding to
iommu group 14
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1c.0: Adding to
iommu group 15
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.0: Adding to
iommu group 16
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.3: Adding to
iommu group 16
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.4: Adding to
iommu group 16
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:00:1f.5: Adding to
iommu group 16
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:01:00.0: Adding to
iommu group 17
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:02:00.0: Adding to
iommu group 18
Oct 30 10:41:34 acoffin-xps-15 kernel: pci 0000:a5:00.0: Adding to
iommu group 19
Oct 30 10:41:34 acoffin-xps-15 kernel: DMAR: Intel(R) Virtualization
Technology for Directed I/O
Oct 30 10:41:34 acoffin-xps-15 kernel: PCI-DMA: Using software bounce
buffering for IO (SWIOTLB)
Oct 30 10:41:34 acoffin-xps-15 kernel: software IO TLB: mapped [mem
0x000000004cfa4000-0x0000000050fa4000] (64MB)
Oct 30 10:41:34 acoffin-xps-15 kernel: clocksource: tsc: mask:
0xffffffffffffffff max_cycles: 0x2a11290c0c8, max_idle_ns:
440795344938 ns
Oct 30 10:41:34 acoffin-xps-15 kernel: clocksource: Switched to clocksource tsc
Oct 30 10:41:34 acoffin-xps-15 kernel: Initialise system trusted keyrings
Oct 30 10:41:34 acoffin-xps-15 kernel: Key type blacklist registered
Oct 30 10:41:34 acoffin-xps-15 kernel: workingset: timestamp_bits=36
max_order=24 bucket_order=0
Oct 30 10:41:34 acoffin-xps-15 kernel: zbud: loaded
Oct 30 10:41:34 acoffin-xps-15 kernel: integrity: Platform Keyring initialized
Oct 30 10:41:34 acoffin-xps-15 kernel: integrity: Machine keyring initialized
Oct 30 10:41:34 acoffin-xps-15 kernel: Key type asymmetric registered
Oct 30 10:41:34 acoffin-xps-15 kernel: Asymmetric key parser 'x509' registered
Oct 30 10:41:34 acoffin-xps-15 kernel: Freeing initrd memory: 64880K
Oct 30 10:41:34 acoffin-xps-15 kernel: alg: self-tests for CTR-KDF
(hmac(sha256)) passed
Oct 30 10:41:34 acoffin-xps-15 kernel: Block layer SCSI generic (bsg)
driver version 0.4 loaded (major 248)
Oct 30 10:41:34 acoffin-xps-15 kernel: io scheduler mq-deadline registered
Oct 30 10:41:34 acoffin-xps-15 kernel: pcieport 0000:00:06.0: PME:
Signaling with IRQ 122
Oct 30 10:41:34 acoffin-xps-15 kernel: pcieport 0000:00:06.2: PME:
Signaling with IRQ 123
Oct 30 10:41:34 acoffin-xps-15 kernel: pcieport 0000:00:07.0: PME:
Signaling with IRQ 124
Oct 30 10:41:34 acoffin-xps-15 kernel: pcieport 0000:00:07.0: pciehp:
Slot #3 AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
Interlock- NoCompl+ IbPresDis- LLActRep+
Oct 30 10:41:34 acoffin-xps-15 kernel: pcieport 0000:00:07.1: PME:
Signaling with IRQ 125
Oct 30 10:41:34 acoffin-xps-15 kernel: pcieport 0000:00:07.1: pciehp:
Slot #4 AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
Interlock- NoCompl+ IbPresDis- LLActRep+
Oct 30 10:41:34 acoffin-xps-15 kernel: pcieport 0000:00:1c.0: PME:
Signaling with IRQ 126
Oct 30 10:41:34 acoffin-xps-15 kernel: shpchp: Standard Hot Plug PCI
Controller Driver version: 0.4
Oct 30 10:41:34 acoffin-xps-15 kernel: Monitor-Mwait will be used to
enter C-1 state
Oct 30 10:41:34 acoffin-xps-15 kernel: Monitor-Mwait will be used to
enter C-2 state
Oct 30 10:41:34 acoffin-xps-15 kernel: Monitor-Mwait will be used to
enter C-3 state
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: \_SB_.PR00: Found 3 idle states
Oct 30 10:41:34 acoffin-xps-15 kernel: Serial: 8250/16550 driver, 4
ports, IRQ sharing enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: serial 0000:00:12.0: enabling
device (0000 -> 0002)
Oct 30 10:41:34 acoffin-xps-15 kernel: hpet_acpi_add: no address or irqs in _CRS
Oct 30 10:41:34 acoffin-xps-15 kernel: Linux agpgart interface v0.103
Oct 30 10:41:34 acoffin-xps-15 kernel: AMD-Vi: AMD IOMMUv2
functionality not available on this system - This is not a bug.
Oct 30 10:41:34 acoffin-xps-15 kernel: i8042: PNP: PS/2 Controller
[PNP0303:PS2K,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
Oct 30 10:41:34 acoffin-xps-15 kernel: i8042: Warning: Keylock active
Oct 30 10:41:34 acoffin-xps-15 kernel: serio: i8042 KBD port at 0x60,0x64 irq 1
Oct 30 10:41:34 acoffin-xps-15 kernel: serio: i8042 AUX port at 0x60,0x64 irq 12
Oct 30 10:41:34 acoffin-xps-15 kernel: mousedev: PS/2 mouse device
common for all mice
Oct 30 10:41:34 acoffin-xps-15 kernel: rtc_cmos 00:01: RTC can wake from S4
Oct 30 10:41:34 acoffin-xps-15 kernel: rtc_cmos 00:01: registered as rtc0
Oct 30 10:41:34 acoffin-xps-15 kernel: rtc_cmos 00:01: setting system
clock to 2024-10-30T17:32:39 UTC (1730309559)
Oct 30 10:41:34 acoffin-xps-15 kernel: rtc_cmos 00:01: alarms up to
one month, y3k, 242 bytes nvram
Oct 30 10:41:34 acoffin-xps-15 kernel: input: AT Translated Set 2
keyboard as /devices/platform/i8042/serio0/input/input0
Oct 30 10:41:34 acoffin-xps-15 kernel: intel_pstate: Intel P-state
driver initializing
Oct 30 10:41:34 acoffin-xps-15 kernel: intel_pstate: HWP enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: ledtrig-cpu: registered to
indicate activity on CPUs
Oct 30 10:41:34 acoffin-xps-15 kernel: efifb: probing for efifb
Oct 30 10:41:34 acoffin-xps-15 kernel: efifb: framebuffer at
0x4000000000, using 9024k, total 9024k
Oct 30 10:41:34 acoffin-xps-15 kernel: efifb: mode is 1920x1200x32,
linelength=7680, pages=1
Oct 30 10:41:34 acoffin-xps-15 kernel: efifb: scrolling: redraw
Oct 30 10:41:34 acoffin-xps-15 kernel: efifb: Truecolor: size=8:8:8:8,
shift=24:16:8:0
Oct 30 10:41:34 acoffin-xps-15 kernel: Console: switching to colour
frame buffer device 240x75
Oct 30 10:41:34 acoffin-xps-15 kernel: fb0: EFI VGA frame buffer device
Oct 30 10:41:34 acoffin-xps-15 kernel: NET: Registered PF_INET6 protocol family
Oct 30 10:41:34 acoffin-xps-15 kernel: Segment Routing with IPv6
Oct 30 10:41:34 acoffin-xps-15 kernel: In-situ OAM (IOAM) with IPv6
Oct 30 10:41:34 acoffin-xps-15 kernel: mip6: Mobile IPv6
Oct 30 10:41:34 acoffin-xps-15 kernel: NET: Registered PF_PACKET protocol family
Oct 30 10:41:34 acoffin-xps-15 kernel: mpls_gso: MPLS GSO support
Oct 30 10:41:34 acoffin-xps-15 kernel: microcode: sig=0xb06a2,
pf=0x80, revision=0x4122
Oct 30 10:41:34 acoffin-xps-15 kernel: microcode: Microcode Update Driver: v2.2.
Oct 30 10:41:34 acoffin-xps-15 kernel: IPI shorthand broadcast: enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: sched_clock: Marking stable
(2412003589, 6595147)->(2439856048, -21257312)
Oct 30 10:41:34 acoffin-xps-15 kernel: registered taskstats version 1
Oct 30 10:41:34 acoffin-xps-15 kernel: Loading compiled-in X.509 certificates
Oct 30 10:41:34 acoffin-xps-15 kernel: Loaded X.509 cert 'Build time
autogenerated kernel key: 871dc49a8b01bc8c6ba7afeae78d9c0aa8d2c6a6'
Oct 30 10:41:34 acoffin-xps-15 kernel: zswap: loaded using pool lzo/zbud
Oct 30 10:41:34 acoffin-xps-15 kernel: Key type .fscrypt registered
Oct 30 10:41:34 acoffin-xps-15 kernel: Key type fscrypt-provisioning registered
Oct 30 10:41:34 acoffin-xps-15 kernel: Key type encrypted registered
Oct 30 10:41:34 acoffin-xps-15 kernel: AppArmor: AppArmor sha1 policy
hashing enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: integrity: Loading X.509
certificate: UEFI:db
Oct 30 10:41:34 acoffin-xps-15 kernel: integrity: Loaded X.509 cert
'Dell Inc.: Dell Bios DB Key:
637fa7a9f74471b406de0511557071fd41dd5487'
Oct 30 10:41:34 acoffin-xps-15 kernel: integrity: Loading X.509
certificate: UEFI:db
Oct 30 10:41:34 acoffin-xps-15 kernel: integrity: Loaded X.509 cert
'Dell Inc.: Dell Bios FW Aux Authority 2018:
dd4df7c3f5ce7e5a77847915abc37b031f6b10bd'
Oct 30 10:41:34 acoffin-xps-15 kernel: integrity: Loading X.509
certificate: UEFI:db
Oct 30 10:41:34 acoffin-xps-15 kernel: integrity: Loaded X.509 cert
'Microsoft Windows Production PCA 2011:
a92902398e16c49778cd90f99e4f9ae17c55af53'
Oct 30 10:41:34 acoffin-xps-15 kernel: integrity: Loading X.509
certificate: UEFI:db
Oct 30 10:41:34 acoffin-xps-15 kernel: integrity: Loaded X.509 cert
'Microsoft Corporation UEFI CA 2011:
13adbf4309bd82709c8cd54f316ed522988a1bd4'
Oct 30 10:41:34 acoffin-xps-15 kernel: ima: No TPM chip found,
activating TPM-bypass!
Oct 30 10:41:34 acoffin-xps-15 kernel: ima: Allocated hash algorithm: sha256
Oct 30 10:41:34 acoffin-xps-15 kernel: ima: No architecture policies found
Oct 30 10:41:34 acoffin-xps-15 kernel: evm: Initialising EVM extended
attributes:
Oct 30 10:41:34 acoffin-xps-15 kernel: evm: security.selinux
Oct 30 10:41:34 acoffin-xps-15 kernel: evm: security.SMACK64 (disabled)
Oct 30 10:41:34 acoffin-xps-15 kernel: evm: security.SMACK64EXEC (disabled)
Oct 30 10:41:34 acoffin-xps-15 kernel: evm: security.SMACK64TRANSMUTE (disabled)
Oct 30 10:41:34 acoffin-xps-15 kernel: evm: security.SMACK64MMAP (disabled)
Oct 30 10:41:34 acoffin-xps-15 kernel: evm: security.apparmor
Oct 30 10:41:34 acoffin-xps-15 kernel: evm: security.ima
Oct 30 10:41:34 acoffin-xps-15 kernel: evm: security.capability
Oct 30 10:41:34 acoffin-xps-15 kernel: evm: HMAC attrs: 0x1
Oct 30 10:41:34 acoffin-xps-15 kernel: clk: Disabling unused clocks
Oct 30 10:41:34 acoffin-xps-15 kernel: Freeing unused decrypted memory: 2036K
Oct 30 10:41:34 acoffin-xps-15 kernel: Freeing unused kernel image
(initmem) memory: 2820K
Oct 30 10:41:34 acoffin-xps-15 kernel: Write protecting the kernel
read-only data: 26624k
Oct 30 10:41:34 acoffin-xps-15 kernel: Freeing unused kernel image
(text/rodata gap) memory: 2040K
Oct 30 10:41:34 acoffin-xps-15 kernel: Freeing unused kernel image
(rodata/data gap) memory: 988K
Oct 30 10:41:34 acoffin-xps-15 kernel: x86/mm: Checked W+X mappings:
passed, no W+X pages found.
Oct 30 10:41:34 acoffin-xps-15 kernel: Run /init as init process
Oct 30 10:41:34 acoffin-xps-15 kernel:   with arguments:
Oct 30 10:41:34 acoffin-xps-15 kernel:     /init
Oct 30 10:41:34 acoffin-xps-15 kernel:   with environment:
Oct 30 10:41:34 acoffin-xps-15 kernel:     HOME=/
Oct 30 10:41:34 acoffin-xps-15 kernel:     TERM=linux
Oct 30 10:41:34 acoffin-xps-15 kernel:     BOOT_IMAGE=/vmlinuz-6.1.112
Oct 30 10:41:34 acoffin-xps-15 kernel: wmi_bus wmi_bus-PNP0C14:02:
WQBC data block query control method not found
Oct 30 10:41:34 acoffin-xps-15 kernel: hid: raw HID events driver (C)
Jiri Kosina
Oct 30 10:41:34 acoffin-xps-15 kernel: input: Lid Switch as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input2
Oct 30 10:41:34 acoffin-xps-15 kernel: rtsx_pci 0000:a5:00.0: enabling
device (0000 -> 0002)
Oct 30 10:41:34 acoffin-xps-15 kernel: cryptd: max_cpu_qlen set to 1000
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: bus type thunderbolt registered
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: button: Lid Switch [LID0]
Oct 30 10:41:34 acoffin-xps-15 kernel: input: Power Button as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input4
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: button: Power Button [PBTN]
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: bus type drm_connector registered
Oct 30 10:41:34 acoffin-xps-15 kernel: AVX2 version of gcm_enc/dec engaged.
Oct 30 10:41:34 acoffin-xps-15 kernel: AES CTR mode by8 optimization enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: battery: Slot [BAT0]
(battery present)
Oct 30 10:41:34 acoffin-xps-15 kernel: i801_smbus 0000:00:1f.4:
enabling device (0000 -> 0003)
Oct 30 10:41:34 acoffin-xps-15 kernel: i801_smbus 0000:00:1f.4: SPD
Write Disable is set
Oct 30 10:41:34 acoffin-xps-15 kernel: i801_smbus 0000:00:1f.4: SMBus
using PCI interrupt
Oct 30 10:41:34 acoffin-xps-15 kernel: intel-lpss 0000:00:12.6:
enabling device (0004 -> 0006)
Oct 30 10:41:34 acoffin-xps-15 kernel: idma64 idma64.0: Found Intel
integrated DMA 64-bit
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: bus type USB registered
Oct 30 10:41:34 acoffin-xps-15 kernel: usbcore: registered new
interface driver usbfs
Oct 30 10:41:34 acoffin-xps-15 kernel: usbcore: registered new
interface driver hub
Oct 30 10:41:34 acoffin-xps-15 kernel: usbcore: registered new device driver usb
Oct 30 10:41:34 acoffin-xps-15 kernel: intel-lpss 0000:00:15.0:
enabling device (0000 -> 0002)
Oct 30 10:41:34 acoffin-xps-15 kernel: idma64 idma64.1: Found Intel
integrated DMA 64-bit
Oct 30 10:41:34 acoffin-xps-15 kernel: i2c i2c-0: 2/2 memory slots
populated (from DMI)
Oct 30 10:41:34 acoffin-xps-15 kernel: i2c i2c-0: Memory type 0x22 not
supported yet, not instantiating SPD
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:14.0: xHCI
Host Controller
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:14.0: new USB
bus registered, assigned bus number 1
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:14.0: hcc
params 0x20007fc1 hci version 0x120 quirks 0x0000100200009810
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:14.0: xHCI
Host Controller
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:14.0: new USB
bus registered, assigned bus number 2
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:14.0: Host
supports USB 3.1 Enhanced SuperSpeed
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb1: New USB device found,
idVendor=1d6b, idProduct=0002, bcdDevice= 6.01
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb1: New USB device
strings: Mfr=3, Product=2, SerialNumber=1
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb1: Product: xHCI Host Controller
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb1: Manufacturer: Linux
6.1.112 xhci-hcd
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb1: SerialNumber: 0000:00:14.0
Oct 30 10:41:34 acoffin-xps-15 kernel: nvme 0000:01:00.0: platform
quirk: setting simple suspend
Oct 30 10:41:34 acoffin-xps-15 kernel: hub 1-0:1.0: USB hub found
Oct 30 10:41:34 acoffin-xps-15 kernel: hub 1-0:1.0: 12 ports detected
Oct 30 10:41:34 acoffin-xps-15 kernel: nvme nvme0: pci function 0000:01:00.0
Oct 30 10:41:34 acoffin-xps-15 kernel: nvme 0000:02:00.0: platform
quirk: setting simple suspend
Oct 30 10:41:34 acoffin-xps-15 kernel: nvme nvme1: pci function 0000:02:00.0
Oct 30 10:41:34 acoffin-xps-15 kernel: intel-lpss 0000:00:15.1:
enabling device (0000 -> 0002)
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb2: New USB device found,
idVendor=1d6b, idProduct=0003, bcdDevice= 6.01
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb2: New USB device
strings: Mfr=3, Product=2, SerialNumber=1
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb2: Product: xHCI Host Controller
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb2: Manufacturer: Linux
6.1.112 xhci-hcd
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb2: SerialNumber: 0000:00:14.0
Oct 30 10:41:34 acoffin-xps-15 kernel: hub 2-0:1.0: USB hub found
Oct 30 10:41:34 acoffin-xps-15 kernel: hub 2-0:1.0: 4 ports detected
Oct 30 10:41:34 acoffin-xps-15 kernel: idma64 idma64.2: Found Intel
integrated DMA 64-bit
Oct 30 10:41:34 acoffin-xps-15 kernel: nvme nvme1: allocated 64 MiB
host memory buffer.
Oct 30 10:41:34 acoffin-xps-15 kernel: nvme nvme0: allocated 64 MiB
host memory buffer.
Oct 30 10:41:34 acoffin-xps-15 kernel: nvme nvme1: 8/0/0
default/read/poll queues
Oct 30 10:41:34 acoffin-xps-15 kernel: nvme nvme0: 8/0/0
default/read/poll queues
Oct 30 10:41:34 acoffin-xps-15 kernel:  nvme1n1:
Oct 30 10:41:34 acoffin-xps-15 kernel:  nvme0n1: p1 p2 p3
Oct 30 10:41:34 acoffin-xps-15 kernel: input: VEN_04F3:00 04F3:32AA
Mouse as /devices/pci0000:00/0000:00:15.1/i2c_designware.2/i2c-2/i2c-VEN_04F3:00/0018:04F3:32AA.0001/input/input5
Oct 30 10:41:34 acoffin-xps-15 kernel: input: VEN_04F3:00 04F3:32AA
Touchpad as /devices/pci0000:00/0000:00:15.1/i2c_designware.2/i2c-2/i2c-VEN_04F3:00/0018:04F3:32AA.0001/input/input6
Oct 30 10:41:34 acoffin-xps-15 kernel: hid-generic
0018:04F3:32AA.0001: input,hidraw0: I2C HID v1.00 Mouse [VEN_04F3:00
04F3:32AA] on i2c-VEN_04F3:00
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: [drm] VT-d
active for gfx access
Oct 30 10:41:34 acoffin-xps-15 kernel: Console: switching to colour
dummy device 80x25
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: vgaarb:
deactivate vga console
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: [drm] Using
Transparent Hugepages
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: vgaarb:
changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: firmware:
direct-loading firmware i915/adlp_dmc_ver2_16.bin
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: [drm]
Finished loading DMC firmware i915/adlp_dmc_ver2_16.bin (v2.16)
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: firmware:
direct-loading firmware i915/adlp_guc_70.bin
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: firmware:
direct-loading firmware i915/tgl_huc.bin
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:0d.0: xHCI
Host Controller
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:0d.0: new USB
bus registered, assigned bus number 3
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:0d.0: hcc
params 0x20007fc1 hci version 0x120 quirks 0x0000000200009810
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:0d.0: xHCI
Host Controller
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:0d.0: new USB
bus registered, assigned bus number 4
Oct 30 10:41:34 acoffin-xps-15 kernel: xhci_hcd 0000:00:0d.0: Host
supports USB 3.2 Enhanced SuperSpeed
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb3: New USB device found,
idVendor=1d6b, idProduct=0002, bcdDevice= 6.01
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb3: New USB device
strings: Mfr=3, Product=2, SerialNumber=1
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb3: Product: xHCI Host Controller
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb3: Manufacturer: Linux
6.1.112 xhci-hcd
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb3: SerialNumber: 0000:00:0d.0
Oct 30 10:41:34 acoffin-xps-15 kernel: hub 3-0:1.0: USB hub found
Oct 30 10:41:34 acoffin-xps-15 kernel: hub 3-0:1.0: 1 port detected
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb4: New USB device found,
idVendor=1d6b, idProduct=0003, bcdDevice= 6.01
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb4: New USB device
strings: Mfr=3, Product=2, SerialNumber=1
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb4: Product: xHCI Host Controller
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb4: Manufacturer: Linux
6.1.112 xhci-hcd
Oct 30 10:41:34 acoffin-xps-15 kernel: usb usb4: SerialNumber: 0000:00:0d.0
Oct 30 10:41:34 acoffin-xps-15 kernel: hub 4-0:1.0: USB hub found
Oct 30 10:41:34 acoffin-xps-15 kernel: hub 4-0:1.0: 2 ports detected
Oct 30 10:41:34 acoffin-xps-15 kernel: input: VEN_04F3:00 04F3:32AA
Mouse as /devices/pci0000:00/0000:00:15.1/i2c_designware.2/i2c-2/i2c-VEN_04F3:00/0018:04F3:32AA.0001/input/input8
Oct 30 10:41:34 acoffin-xps-15 kernel: input: VEN_04F3:00 04F3:32AA
Touchpad as /devices/pci0000:00/0000:00:15.1/i2c_designware.2/i2c-2/i2c-VEN_04F3:00/0018:04F3:32AA.0001/input/input9
Oct 30 10:41:34 acoffin-xps-15 kernel: hid-multitouch
0018:04F3:32AA.0001: input,hidraw0: I2C HID v1.00 Mouse [VEN_04F3:00
04F3:32AA] on i2c-VEN_04F3:00
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: [drm] GuC
firmware i915/adlp_guc_70.bin version 70.5.1
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: [drm] HuC
firmware i915/tgl_huc.bin version 7.9.3
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: [drm] HuC
authenticated
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: [drm] GuC
submission enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: [drm] GuC SLPC enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: [drm] GuC RC: enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-2: new full-speed USB
device number 2 using xhci_hcd
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-2: New USB device found,
idVendor=1050, idProduct=0407, bcdDevice= 5.71
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-2: New USB device
strings: Mfr=1, Product=2, SerialNumber=0
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-2: Product: YubiKey OTP+FIDO+CCID
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-2: Manufacturer: Yubico
Oct 30 10:41:34 acoffin-xps-15 kernel: input: Yubico YubiKey
OTP+FIDO+CCID as
/devices/pci0000:00/0000:00:14.0/usb1/1-2/1-2:1.0/0003:1050:0407.0002/input/input11
Oct 30 10:41:34 acoffin-xps-15 kernel: ish-hid
{33AECD58-B679-4E54-9BD9-A04D34F0C226}: [hid-ish]: enum_devices_done
OK, num_hid_devices=1
Oct 30 10:41:34 acoffin-xps-15 kernel: hid-generic
001F:8087:0AC2.0003: hidraw1: SENSOR HUB HID v2.00 Device [hid-ishtp
8087:0AC2] on
Oct 30 10:41:34 acoffin-xps-15 kernel: input: PS/2 Generic Mouse as
/devices/platform/i8042/serio1/input/input3
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-6: new high-speed USB
device number 3 using xhci_hcd
Oct 30 10:41:34 acoffin-xps-15 kernel: hid-generic
0003:1050:0407.0002: input,hidraw1: USB HID v1.10 Keyboard [Yubico
YubiKey OTP+FIDO+CCID] on usb-0000:00:14.0-2/input0
Oct 30 10:41:34 acoffin-xps-15 kernel: hid-generic
0003:1050:0407.0004: hiddev0,hidraw2: USB HID v1.10 Device [Yubico
YubiKey OTP+FIDO+CCID] on usb-0000:00:14.0-2/input1
Oct 30 10:41:34 acoffin-xps-15 kernel: usbcore: registered new
interface driver usbhid
Oct 30 10:41:34 acoffin-xps-15 kernel: usbhid: USB HID core driver
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-6: New USB device found,
idVendor=0bda, idProduct=5559, bcdDevice=22.81
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-6: New USB device
strings: Mfr=3, Product=1, SerialNumber=2
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-6: Product: Integrated_Webcam_HD
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-6: Manufacturer:
CN0679GY8LG0043SC3YGA01
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-6: SerialNumber: 200901010001
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-10: new full-speed USB
device number 4 using xhci_hcd
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-10: New USB device found,
idVendor=8087, idProduct=0033, bcdDevice= 0.00
Oct 30 10:41:34 acoffin-xps-15 kernel: usb 1-10: New USB device
strings: Mfr=0, Product=0, SerialNumber=0
Oct 30 10:41:34 acoffin-xps-15 kernel: [drm] Initialized i915 1.6.0
20201103 for 0000:00:02.0 on minor 0
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: video: Video Device
[GFX0] (multi-head: yes  rom: no  post: no)
Oct 30 10:41:34 acoffin-xps-15 kernel: input: Video Bus as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input12
Oct 30 10:41:34 acoffin-xps-15 kernel: fbcon: i915drmfb (fb0) is primary device
Oct 30 10:41:34 acoffin-xps-15 kernel: Console: switching to colour
frame buffer device 240x75
Oct 30 10:41:34 acoffin-xps-15 kernel: i915 0000:00:02.0: [drm] fb0:
i915drmfb frame buffer device
Oct 30 10:41:34 acoffin-xps-15 kernel: device-mapper: core:
CONFIG_IMA_DISABLE_HTABLE is disabled. Duplicate IMA measurements will
not be recorded in the IMA log.
Oct 30 10:41:34 acoffin-xps-15 kernel: device-mapper: uevent: version 1.0.3
Oct 30 10:41:34 acoffin-xps-15 kernel: device-mapper: ioctl:
4.47.0-ioctl (2022-07-28) initialised: dm-devel@redhat.com
Oct 30 10:41:34 acoffin-xps-15 kernel: raid6: avx2x4   gen() 38474 MB/s
Oct 30 10:41:34 acoffin-xps-15 kernel: raid6: avx2x2   gen() 45938 MB/s
Oct 30 10:41:34 acoffin-xps-15 kernel: raid6: avx2x1   gen() 43588 MB/s
Oct 30 10:41:34 acoffin-xps-15 kernel: raid6: using algorithm avx2x2
gen() 45938 MB/s
Oct 30 10:41:34 acoffin-xps-15 kernel: raid6: .... xor() 33090 MB/s, rmw enabled
Oct 30 10:41:34 acoffin-xps-15 kernel: raid6: using avx2x2 recovery algorithm
Oct 30 10:41:34 acoffin-xps-15 kernel: xor: automatically using best
checksumming function   avx
Oct 30 10:41:34 acoffin-xps-15 kernel: async_tx: api initialized (async)
Oct 30 10:41:34 acoffin-xps-15 kernel: Btrfs loaded,
crc32c=crc32c-intel, zoned=yes, fsverity=yes
Oct 30 10:41:34 acoffin-xps-15 kernel: PM: Image not found (code -22)
Oct 30 10:41:34 acoffin-xps-15 kernel: EXT4-fs (dm-1): mounted
filesystem with ordered data mode. Quota mode: none.
Oct 30 10:41:34 acoffin-xps-15 kernel: Not activating Mandatory Access
Control as /sbin/tomoyo-init does not exist.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Inserted module 'autofs4'
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: systemd 252.30-1~deb12u2
running in system mode (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK
+SECCOMP +GCRYPT -GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2
+IDN2 -IDN +IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 -PWQUALITY
+P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD -BPF_FRAMEWORK
-XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Detected architecture x86-64.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Hostname set to <acoffin-xps-15>.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Queued start job for
default target graphical.target.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Created slice machine.slice
- Virtual Machine and Container Slice.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Created slice
system-getty.slice - Slice /system/getty.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Created slice
system-modprobe.slice - Slice /system/modprobe.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Created slice
system-systemd\x2dcryptsetup.slice - Cryptsetup Units Slice.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Created slice
system-systemd\x2dfsck.slice - Slice /system/systemd-fsck.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Created slice user.slice -
User and Session Slice.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Started
systemd-ask-password-wall.path - Forward Password Requests to Wall
Directory Watch.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Set up automount
proc-sys-fs-binfmt_misc.automount - Arbitrary Executable File Formats
File System Automount Point.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Expecting device
dev-disk-by\x2duuid-634628ed\x2daeb0\x2d4a64\x2dafbc\x2d70c93f9277e9.device
- /dev/disk/by-uuid/634628ed-aeb0-4a64-afbc-70c93f9277e9...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Expecting device
dev-disk-by\x2duuid-88f8b68c\x2dda84\x2d417e\x2dac9c\x2d8867f950af50.device
- /dev/disk/by-uuid/88f8b68c-da84-417e-ac9c-8867f950af50...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Expecting device
dev-disk-by\x2duuid-9999\x2dDA60.device -
/dev/disk/by-uuid/9999-DA60...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Expecting device
dev-mapper-acoffin\x2d\x2dxps\x2d\x2d15\x2d\x2dvg\x2dswap.device -
/dev/mapper/acoffin--xps--15--vg-swap...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Reached target
integritysetup.target - Local Integrity Protected Volumes.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Reached target
network-pre.target - Preparation for Network.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Reached target
remote-fs.target - Remote File Systems.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Reached target
slices.target - Slice Units.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Reached target
time-set.target - System Time Set.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Reached target
veritysetup.target - Local Verity Protected Volumes.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Reached target
virt-guest-shutdown.target - Libvirt guests shutdown.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Listening on
dm-event.socket - Device-mapper event daemon FIFOs.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Listening on
lvm2-lvmpolld.socket - LVM2 poll daemon socket.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Listening on syslog.socket
- Syslog Socket.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Listening on
systemd-fsckd.socket - fsck to fsckd communication Socket.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Listening on
systemd-initctl.socket - initctl Compatibility Named Pipe.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Listening on
systemd-journald-audit.socket - Journal Audit Socket.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Listening on
systemd-journald-dev-log.socket - Journal Socket (/dev/log).
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Listening on
systemd-journald.socket - Journal Socket.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Listening on
systemd-udevd-control.socket - udev Control Socket.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Listening on
systemd-udevd-kernel.socket - udev Kernel Socket.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounting
dev-hugepages.mount - Huge Pages File System...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounting dev-mqueue.mount -
POSIX Message Queue File System...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounting
sys-kernel-debug.mount - Kernel Debug File System...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounting
sys-kernel-tracing.mount - Kernel Trace File System...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
blk-availability.service - Availability of block devices.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
keyboard-setup.service - Set the console keyboard layout...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
kmod-static-nodes.service - Create List of Static Device Nodes...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
lvm2-monitor.service - Monitoring of LVM2 mirrors, snapshots etc.
using dmeventd or progress polling...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
modprobe@configfs.service - Load Kernel Module configfs...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
modprobe@dm_mod.service - Load Kernel Module dm_mod...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
modprobe@drm.service - Load Kernel Module drm...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
modprobe@efi_pstore.service - Load Kernel Module efi_pstore...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
modprobe@fuse.service - Load Kernel Module fuse...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
modprobe@loop.service - Load Kernel Module loop...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: systemd-fsck-root.service -
File System Check on Root Device was skipped because of an unmet
condition check (ConditionPathExists=!/run/initramfs/fsck-root).
Oct 30 10:41:34 acoffin-xps-15 kernel: pstore: Using crash dump
compression: deflate
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
systemd-journald.service - Journal Service...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
systemd-modules-load.service - Load Kernel Modules...
Oct 30 10:41:34 acoffin-xps-15 kernel: fuse: init (API version 7.38)
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
systemd-remount-fs.service - Remount Root and Kernel File Systems...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
systemd-udev-trigger.service - Coldplug All udev Devices...
Oct 30 10:41:34 acoffin-xps-15 kernel: pstore: Registered efi as
persistent store backend
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounted dev-hugepages.mount
- Huge Pages File System.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounted dev-mqueue.mount -
POSIX Message Queue File System.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounted
sys-kernel-debug.mount - Kernel Debug File System.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounted
sys-kernel-tracing.mount - Kernel Trace File System.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
keyboard-setup.service - Set the console keyboard layout.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
kmod-static-nodes.service - Create List of Static Device Nodes.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: modprobe@configfs.service:
Deactivated successfully.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
modprobe@configfs.service - Load Kernel Module configfs.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: modprobe@dm_mod.service:
Deactivated successfully.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
modprobe@dm_mod.service - Load Kernel Module dm_mod.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: modprobe@drm.service:
Deactivated successfully.
Oct 30 10:41:34 acoffin-xps-15 kernel: loop: module loaded
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
modprobe@drm.service - Load Kernel Module drm.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]:
modprobe@efi_pstore.service: Deactivated successfully.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
modprobe@efi_pstore.service - Load Kernel Module efi_pstore.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: modprobe@fuse.service:
Deactivated successfully.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
modprobe@fuse.service - Load Kernel Module fuse.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: modprobe@loop.service:
Deactivated successfully.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
modprobe@loop.service - Load Kernel Module loop.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounting
sys-fs-fuse-connections.mount - FUSE Control File System...
Oct 30 10:41:34 acoffin-xps-15 kernel: EXT4-fs (dm-1): re-mounted.
Quota mode: none.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounting
sys-kernel-config.mount - Kernel Configuration File System...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: systemd-repart.service -
Repartition Root Disk was skipped because no trigger condition checks
were met.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
systemd-remount-fs.service - Remount Root and Kernel File Systems.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: systemd-firstboot.service -
First Boot Wizard was skipped because of an unmet condition check
(ConditionFirstBoot=yes).
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: systemd-pstore.service -
Platform Persistent Storage Archival was skipped because of an unmet
condition check (ConditionDirectoryNotEmpty=/sys/fs/pstore).
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
systemd-random-seed.service - Load/Save Random Seed...
Oct 30 10:41:34 acoffin-xps-15 kernel: lp: driver loaded but no devices found
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
systemd-sysusers.service - Create System Users...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounted
sys-fs-fuse-connections.mount - FUSE Control File System.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Mounted
sys-kernel-config.mount - Kernel Configuration File System.
Oct 30 10:41:34 acoffin-xps-15 kernel: ppdev: user-space parallel port driver
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
systemd-modules-load.service - Load Kernel Modules.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
systemd-sysctl.service - Apply Kernel Variables...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
systemd-random-seed.service - Load/Save Random Seed.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: first-boot-complete.target
- First Boot Complete was skipped because of an unmet condition check
(ConditionFirstBoot=yes).
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
systemd-sysusers.service - Create System Users.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
systemd-tmpfiles-setup-dev.service - Create Static Device Nodes in
/dev...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
systemd-sysctl.service - Apply Kernel Variables.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Finished
systemd-tmpfiles-setup-dev.service - Create Static Device Nodes in
/dev.
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Starting
systemd-udevd.service - Rule-based Manager for Device Events and
Files...
Oct 30 10:41:34 acoffin-xps-15 systemd[1]: Started
systemd-journald.service - Journal Service.
Oct 30 10:41:34 acoffin-xps-15 systemd-journald[752]: Received client
request to flush runtime journal.
Oct 30 10:41:34 acoffin-xps-15 kernel: ACPI: AC: AC Adapter [AC] (on-line)
Oct 30 10:41:34 acoffin-xps-15 kernel: Adding 67108860k swap on
/dev/mapper/acoffin--xps--15--vg-swap.  Priority:-2 extents:1
across:67108860k SSFS
Oct 30 10:41:35 acoffin-xps-15 kernel: intel_pmc_core INT33A1:00:  initialized
Oct 30 10:41:35 acoffin-xps-15 kernel: Consider using thermal netlink
events interface
Oct 30 10:41:35 acoffin-xps-15 kernel: input: Intel HID events as
/devices/platform/INTC1078:00/input/input13
Oct 30 10:41:35 acoffin-xps-15 kernel: intel-hid INTC1078:00: platform
supports 5 button array
Oct 30 10:41:35 acoffin-xps-15 kernel: input: Intel HID 5 button array
as /devices/platform/INTC1078:00/input/input14
Oct 30 10:41:35 acoffin-xps-15 kernel: Serial bus multi instantiate
pseudo device driver CSC3551:00: Instantiated 2 SPI devices.
Oct 30 10:41:35 acoffin-xps-15 kernel: mc: Linux media interface: v0.10
Oct 30 10:41:35 acoffin-xps-15 kernel: iTCO_vendor_support: vendor-support=0
Oct 30 10:41:35 acoffin-xps-15 kernel: mei_me 0000:00:16.0: enabling
device (0000 -> 0002)
Oct 30 10:41:35 acoffin-xps-15 kernel: iTCO_wdt iTCO_wdt: Found a
Intel PCH TCO device (Version=6, TCOBASE=0x0400)
Oct 30 10:41:35 acoffin-xps-15 kernel: iTCO_wdt iTCO_wdt: initialized.
heartbeat=30 sec (nowayout=0)
Oct 30 10:41:35 acoffin-xps-15 kernel: videodev: Linux video capture
interface: v2.00
Oct 30 10:41:35 acoffin-xps-15 kernel: cfg80211: Loading compiled-in
X.509 certificates for regulatory database
Oct 30 10:41:35 acoffin-xps-15 kernel: cfg80211: Loaded X.509 cert
'benh@debian.org: 577e021cb980e0e820821ba7b54b4961b8b4fadf'
Oct 30 10:41:35 acoffin-xps-15 kernel: cfg80211: Loaded X.509 cert
'romain.perier@gmail.com: 3abbc6ec146e09d1b6016ab9d6cf71dd233f0328'
Oct 30 10:41:35 acoffin-xps-15 kernel: cfg80211: Loaded X.509 cert
'sforshee: 00b28ddf47aef9cea7'
Oct 30 10:41:35 acoffin-xps-15 kernel: cfg80211: Loaded X.509 cert
'wens: 61c038651aabdcf94bd0ac7ff06c7248db18c600'
Oct 30 10:41:35 acoffin-xps-15 kernel: proc_thermal_pci 0000:00:04.0:
enabling device (0000 -> 0002)
Oct 30 10:41:35 acoffin-xps-15 kernel: dell_smm_hwmon: unable to get
SMM Dell signature
Oct 30 10:41:35 acoffin-xps-15 kernel: platform regulatory.0:
firmware: direct-loading firmware regulatory.db
Oct 30 10:41:35 acoffin-xps-15 kernel: input: PC Speaker as
/devices/platform/pcspkr/input/input15
Oct 30 10:41:35 acoffin-xps-15 kernel: platform regulatory.0:
firmware: direct-loading firmware regulatory.db.p7s
Oct 30 10:41:35 acoffin-xps-15 kernel: alg: No test for
fips(ansi_cprng) (fips_ansi_cprng)
Oct 30 10:41:35 acoffin-xps-15 kernel: intel_rapl_common: Found RAPL
domain package
Oct 30 10:41:35 acoffin-xps-15 kernel: Intel(R) Wireless WiFi driver for Linux
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: enabling
device (0000 -> 0002)
Oct 30 10:41:35 acoffin-xps-15 kernel: RAPL PMU: API unit is 2^-32
Joules, 4 fixed counters, 655360 ms ovfl timer
Oct 30 10:41:35 acoffin-xps-15 kernel: RAPL PMU: hw unit of domain
pp0-core 2^-14 Joules
Oct 30 10:41:35 acoffin-xps-15 kernel: RAPL PMU: hw unit of domain
package 2^-14 Joules
Oct 30 10:41:35 acoffin-xps-15 kernel: RAPL PMU: hw unit of domain
pp1-gpu 2^-14 Joules
Oct 30 10:41:35 acoffin-xps-15 kernel: RAPL PMU: hw unit of domain
psys 2^-14 Joules
Oct 30 10:41:35 acoffin-xps-15 kernel: usb 1-6: Found UVC 1.10 device
Integrated_Webcam_HD (0bda:5559)
Oct 30 10:41:35 acoffin-xps-15 kernel: cs35l41-hda
spi0-CSC3551:00-cs35l41-hda.0: Error: ACPI _DSD Properties are missing
for HID CSC3551.
Oct 30 10:41:35 acoffin-xps-15 kernel: cs35l41-hda
spi0-CSC3551:00-cs35l41-hda.0: error -EINVAL: Platform not supported
Oct 30 10:41:35 acoffin-xps-15 kernel: cs35l41-hda: probe of
spi0-CSC3551:00-cs35l41-hda.0 failed with error -22
Oct 30 10:41:35 acoffin-xps-15 kernel: cs35l41-hda
spi0-CSC3551:00-cs35l41-hda.1: Error: ACPI _DSD Properties are missing
for HID CSC3551.
Oct 30 10:41:35 acoffin-xps-15 kernel: cs35l41-hda
spi0-CSC3551:00-cs35l41-hda.1: error -EINVAL: Platform not supported
Oct 30 10:41:35 acoffin-xps-15 kernel: cs35l41-hda: probe of
spi0-CSC3551:00-cs35l41-hda.1 failed with error -22
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: firmware:
direct-loading firmware iwlwifi-so-a0-gf-a0-72.ucode
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: api flags
index 2 larger than supported by driver
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3:
TLV_FW_FSEQ_VERSION: FSEQ Version: 0.0.2.36
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: firmware:
failed to load iwl-debug-yoyo.bin (-2)
Oct 30 10:41:35 acoffin-xps-15 kernel: firmware_class: See
https://wiki.debian.org/Firmware for information about missing
firmware
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: firmware:
failed to load iwl-debug-yoyo.bin (-2)
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: loaded
firmware version 72.daa05125.0 so-a0-gf-a0-72.ucode op_mode iwlmvm
Oct 30 10:41:35 acoffin-xps-15 kernel: intel_rapl_msr: PL4 support detected.
Oct 30 10:41:35 acoffin-xps-15 kernel: intel_rapl_common: Found RAPL
domain package
Oct 30 10:41:35 acoffin-xps-15 kernel: intel_rapl_common: Found RAPL domain core
Oct 30 10:41:35 acoffin-xps-15 kernel: intel_rapl_common: Found RAPL
domain uncore
Oct 30 10:41:35 acoffin-xps-15 kernel: intel_rapl_common: Found RAPL domain psys
Oct 30 10:41:35 acoffin-xps-15 kernel: input: Dell WMI hotkeys as
/devices/platform/PNP0C14:02/wmi_bus/wmi_bus-PNP0C14:02/9DBB5994-A997-11DA-B012-B622A1EF5492/input/input16
Oct 30 10:41:35 acoffin-xps-15 kernel: snd_hda_intel 0000:00:1f.3: DSP
detected with PCI class/subclass/prog-if info 0x040100
Oct 30 10:41:35 acoffin-xps-15 kernel: snd_hda_intel 0000:00:1f.3:
Digital mics found on Skylake+ platform, using SOF driver
Oct 30 10:41:35 acoffin-xps-15 kernel: input: Integrated_Webcam_HD:
Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-6/1-6:1.0/input/input17
Oct 30 10:41:35 acoffin-xps-15 kernel: usb 1-6: Found UVC 1.50 device
Integrated_Webcam_HD (0bda:5559)
Oct 30 10:41:35 acoffin-xps-15 kernel: input: Integrated_Webcam_HD:
Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-6/1-6:1.2/input/input18
Oct 30 10:41:35 acoffin-xps-15 kernel: usbcore: registered new
interface driver uvcvideo
Oct 30 10:41:35 acoffin-xps-15 kernel: mei_hdcp
0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound 0000:00:02.0
(ops i915_hdcp_component_ops [i915])
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: Core ver 2.22
Oct 30 10:41:35 acoffin-xps-15 kernel: NET: Registered PF_BLUETOOTH
protocol family
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: HCI device and
connection manager initialized
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: HCI socket layer initialized
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: L2CAP socket layer initialized
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: SCO socket layer initialized
Oct 30 10:41:35 acoffin-xps-15 kernel: usbcore: registered new
interface driver btusb
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: hci0: Device revision is 0
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: hci0: Secure boot is enabled
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: hci0: OTP lock is enabled
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: hci0: API lock is enabled
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: hci0: Debug lock is disabled
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: hci0: Minimum
firmware build 1 week 10 2014
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: hci0: Bootloader
timestamp 2019.40 buildtype 1 build 38
Oct 30 10:41:35 acoffin-xps-15 kernel: bluetooth hci0: firmware:
direct-loading firmware intel/ibt-0040-0041.sfi
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: hci0: Found device
firmware: intel/ibt-0040-0041.sfi
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: hci0: Boot Address: 0x100800
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: hci0: Firmware
Version: 107-51.22
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Detected
Intel(R) Wi-Fi 6E AX211 160MHz, REV=0x370
Oct 30 10:41:35 acoffin-xps-15 kernel: thermal thermal_zone13: failed
to read out thermal zone (-61)
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: DSP detected with PCI class/subclass/prog-if info
0x040100
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: Digital mics found on Skylake+ platform, using SOF
driver
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: enabling device (0000 -> 0002)
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: DSP detected with PCI class/subclass/prog-if 0x040100
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: bound 0000:00:02.0 (ops i915_audio_component_bind_ops
[i915])
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: use msi interrupt mode
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: hda codecs found, mask 5
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: using HDA machine driver skl_hda_dsp_generic now
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: DMICs detected in NHLT tables: 2
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: firmware: direct-loading firmware intel/sof/sof-rpl.ri
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: Firmware info: version 2:2:0-57864
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: Firmware: ABI 3:22:1 Kernel ABI 3:23:0
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: unknown sof_ext_man header type 3 size 0x30
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: firmware:
direct-loading firmware iwlwifi-so-a0-gf-a0.pnvm
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: loaded
PNVM version 64acdc51
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: Firmware info: version 2:2:0-57864
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: Firmware: ABI 3:22:1 Kernel ABI 3:23:0
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Detected
RF GF, rfid=0x2010d000
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: firmware: direct-loading firmware
intel/sof-tplg/sof-hda-generic-2ch.tplg
Oct 30 10:41:35 acoffin-xps-15 kernel: sof-audio-pci-intel-tgl
0000:00:1f.3: Topology: ABI 3:22:1 Kernel ABI 3:23:0
Oct 30 10:41:35 acoffin-xps-15 kernel: skl_hda_dsp_generic
skl_hda_dsp_generic: ASoC: Parent card not yet available, widget card
binding deferred
Oct 30 10:41:35 acoffin-xps-15 kernel: snd_hda_codec_realtek
ehdaudio0D0: autoconfig for ALC289: line_outs=1 (0x14/0x0/0x0/0x0/0x0)
type:speaker
Oct 30 10:41:35 acoffin-xps-15 kernel: snd_hda_codec_realtek
ehdaudio0D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
Oct 30 10:41:35 acoffin-xps-15 kernel: snd_hda_codec_realtek
ehdaudio0D0:    hp_outs=1 (0x21/0x0/0x0/0x0/0x0)
Oct 30 10:41:35 acoffin-xps-15 kernel: snd_hda_codec_realtek
ehdaudio0D0:    mono: mono_out=0x0
Oct 30 10:41:35 acoffin-xps-15 kernel: snd_hda_codec_realtek
ehdaudio0D0:    inputs:
Oct 30 10:41:35 acoffin-xps-15 kernel: snd_hda_codec_realtek
ehdaudio0D0:      Headset Mic=0x19
Oct 30 10:41:35 acoffin-xps-15 kernel: snd_hda_codec_realtek
ehdaudio0D0:      Headphone Mic=0x1b
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: base HW
address: a0:02:a5:7e:c4:2b
Oct 30 10:41:35 acoffin-xps-15 kernel: EXT4-fs (nvme0n1p2): mounting
ext2 file system using the ext4 subsystem
Oct 30 10:41:35 acoffin-xps-15 kernel: EXT4-fs (nvme0n1p2): mounted
filesystem without journal. Quota mode: none.
Oct 30 10:41:35 acoffin-xps-15 kernel: audit: type=1400
audit(1730310095.820:2): apparmor="STATUS" operation="profile_load"
profile="unconfined" name="libreoffice-xpdfimport" pid=1004
comm="apparmor_parser"
Oct 30 10:41:35 acoffin-xps-15 kernel: audit: type=1400
audit(1730310095.820:3): apparmor="STATUS" operation="profile_load"
profile="unconfined" name="libreoffice-senddoc" pid=1002
comm="apparmor_parser"
Oct 30 10:41:35 acoffin-xps-15 kernel: audit: type=1400
audit(1730310095.824:4): apparmor="STATUS" operation="profile_load"
profile="unconfined" name="libreoffice-oosplash" pid=1001
comm="apparmor_parser"
Oct 30 10:41:35 acoffin-xps-15 kernel: audit: type=1400
audit(1730310095.824:5): apparmor="STATUS" operation="profile_load"
profile="unconfined" name="/usr/bin/man" pid=999
comm="apparmor_parser"
Oct 30 10:41:35 acoffin-xps-15 kernel: audit: type=1400
audit(1730310095.824:6): apparmor="STATUS" operation="profile_load"
profile="unconfined" name="man_filter" pid=999 comm="apparmor_parser"
Oct 30 10:41:35 acoffin-xps-15 kernel: audit: type=1400
audit(1730310095.824:7): apparmor="STATUS" operation="profile_load"
profile="unconfined" name="man_groff" pid=999 comm="apparmor_parser"
Oct 30 10:41:35 acoffin-xps-15 kernel: audit: type=1400
audit(1730310095.824:8): apparmor="STATUS" operation="profile_load"
profile="unconfined" name="nvidia_modprobe" pid=996
comm="apparmor_parser"
Oct 30 10:41:35 acoffin-xps-15 kernel: audit: type=1400
audit(1730310095.824:9): apparmor="STATUS" operation="profile_load"
profile="unconfined" name="nvidia_modprobe//kmod" pid=996
comm="apparmor_parser"
Oct 30 10:41:35 acoffin-xps-15 kernel: audit: type=1400
audit(1730310095.824:10): apparmor="STATUS" operation="profile_load"
profile="unconfined" name="/usr/sbin/chronyd" pid=1006
comm="apparmor_parser"
Oct 30 10:41:35 acoffin-xps-15 kernel: audit: type=1400
audit(1730310095.824:11): apparmor="STATUS" operation="profile_load"
profile="unconfined" name="libvirtd" pid=1009 comm="apparmor_parser"
Oct 30 10:41:35 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3 wlp0s20f3:
renamed from wlan0
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: BNEP (Ethernet
Emulation) ver 1.3
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: BNEP filters:
protocol multicast
Oct 30 10:41:35 acoffin-xps-15 kernel: Bluetooth: BNEP socket layer initialized
Oct 30 10:41:36 acoffin-xps-15 kernel: IPMI message handler: version 39.2
Oct 30 10:41:36 acoffin-xps-15 kernel: ipmi device interface
Oct 30 10:41:36 acoffin-xps-15 kernel: ipmi_si: IPMI System Interface driver
Oct 30 10:41:36 acoffin-xps-15 kernel: ipmi_si: Unable to find any
System Interface(s)
Oct 30 10:41:36 acoffin-xps-15 kernel: NET: Registered PF_QIPCRTR
protocol family
Oct 30 10:41:36 acoffin-xps-15 kernel: skl_hda_dsp_generic
skl_hda_dsp_generic: hda_dsp_hdmi_build_controls: no PCM in topology
for HDMI converter 3
Oct 30 10:41:36 acoffin-xps-15 kernel: input: sof-hda-dsp Headphone
Mic as /devices/pci0000:00/0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input19
Oct 30 10:41:36 acoffin-xps-15 kernel: input: sof-hda-dsp
HDMI/DP,pcm=3 as
/devices/pci0000:00/0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input20
Oct 30 10:41:36 acoffin-xps-15 kernel: input: sof-hda-dsp
HDMI/DP,pcm=4 as
/devices/pci0000:00/0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input21
Oct 30 10:41:36 acoffin-xps-15 kernel: input: sof-hda-dsp
HDMI/DP,pcm=5 as
/devices/pci0000:00/0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input22
Oct 30 10:41:36 acoffin-xps-15 kernel: bridge: filtering via
arp/ip/ip6tables is no longer available by default. Update your
scripts to load br_netfilter if you need this.
Oct 30 10:41:37 acoffin-xps-15 kernel: tun: Universal TUN/TAP device driver, 1.6
Oct 30 10:41:37 acoffin-xps-15 kernel: Bluetooth: hci0: Waiting for
firmware download to complete
Oct 30 10:41:37 acoffin-xps-15 kernel: Bluetooth: hci0: Firmware
loaded in 1578843 usecs
Oct 30 10:41:37 acoffin-xps-15 kernel: Bluetooth: hci0: Waiting for
device to boot
Oct 30 10:41:37 acoffin-xps-15 kernel: Bluetooth: hci0: Device booted
in 16625 usecs
Oct 30 10:41:37 acoffin-xps-15 kernel: bluetooth hci0: firmware:
direct-loading firmware intel/ibt-0040-0041.ddc
Oct 30 10:41:37 acoffin-xps-15 kernel: Bluetooth: hci0: Found Intel
DDC parameters: intel/ibt-0040-0041.ddc
Oct 30 10:41:37 acoffin-xps-15 kernel: Bluetooth: hci0: Applying Intel
DDC parameters completed
Oct 30 10:41:37 acoffin-xps-15 kernel: Bluetooth: hci0: Firmware
timestamp 2022.51 buildtype 1 build 56683
Oct 30 10:41:37 acoffin-xps-15 kernel: Bluetooth: MGMT ver 1.22
Oct 30 10:41:37 acoffin-xps-15 kernel: NET: Registered PF_ALG protocol family
Oct 30 10:41:38 acoffin-xps-15 kernel: Bluetooth: RFCOMM TTY layer initialized
Oct 30 10:41:38 acoffin-xps-15 kernel: Bluetooth: RFCOMM socket layer
initialized
Oct 30 10:41:38 acoffin-xps-15 kernel: Bluetooth: RFCOMM ver 1.11
Oct 30 10:41:39 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
94:a6:7e:e6:77:75
Oct 30 10:41:39 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 10:41:39 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 10:41:39 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 10:41:39 acoffin-xps-15 kernel: wlp0s20f3: associate with
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 10:41:39 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
94:a6:7e:e6:77:75 (capab=0x431 status=0 aid=1)
Oct 30 10:41:39 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 10:41:39 acoffin-xps-15 kernel: IPv6: ADDRCONF(NETDEV_CHANGE):
wlp0s20f3: link becomes ready
Oct 30 10:41:40 acoffin-xps-15 kernel: Initializing XFRM netlink socket
Oct 30 11:07:43 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: reached
20 old SN frames from 94:a6:7e:e6:77:75 on queue 3, stopping BA
session on TID 0
Oct 30 11:26:37 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: reached
20 old SN frames from 94:a6:7e:e6:77:75 on queue 3, stopping BA
session on TID 0
Oct 30 11:32:41 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
94:a6:7e:e6:77:75
Oct 30 11:32:41 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:32:41 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:32:41 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 2/3)
Oct 30 11:32:41 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 3/3)
Oct 30 11:32:41 acoffin-xps-15 kernel: wlp0s20f3: authentication with
94:a6:7e:e6:77:75 timed out
Oct 30 11:34:26 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
94:a6:7e:e6:77:75
Oct 30 11:34:26 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:34:26 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:34:26 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 2/3)
Oct 30 11:34:26 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 3/3)
Oct 30 11:34:26 acoffin-xps-15 kernel: wlp0s20f3: authentication with
94:a6:7e:e6:77:75 timed out
Oct 30 11:34:36 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
94:a6:7e:e6:77:75
Oct 30 11:34:36 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:34:36 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:34:36 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 2/3)
Oct 30 11:34:37 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 3/3)
Oct 30 11:34:37 acoffin-xps-15 kernel: wlp0s20f3: authentication with
94:a6:7e:e6:77:75 timed out
Oct 30 11:34:49 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
94:a6:7e:e6:77:75
Oct 30 11:34:49 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:34:49 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:34:49 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 2/3)
Oct 30 11:34:49 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:34:49 acoffin-xps-15 kernel: wlp0s20f3: associate with
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:34:49 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
94:a6:7e:e6:77:75 (capab=0x431 status=0 aid=1)
Oct 30 11:34:49 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:34:50 acoffin-xps-15 kernel: IPv6: ADDRCONF(NETDEV_CHANGE):
wlp0s20f3: link becomes ready
Oct 30 11:34:51 acoffin-xps-15 kernel: wlp0s20f3: Connection to AP
94:a6:7e:e6:77:75 lost
Oct 30 11:35:00 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
94:a6:7e:e6:77:75
Oct 30 11:35:00 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:35:00 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:35:01 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 2/3)
Oct 30 11:35:01 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:35:01 acoffin-xps-15 kernel: wlp0s20f3: associate with
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:35:01 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
94:a6:7e:e6:77:75 (capab=0x431 status=0 aid=1)
Oct 30 11:35:01 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:35:04 acoffin-xps-15 kernel: wlp0s20f3: deauthenticated from
94:a6:7e:e6:77:75 (Reason: 15=4WAY_HANDSHAKE_TIMEOUT)
Oct 30 11:35:06 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
94:a6:7e:e6:77:75
Oct 30 11:35:06 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:35:06 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:35:06 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:35:06 acoffin-xps-15 kernel: wlp0s20f3: associate with
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:35:06 acoffin-xps-15 kernel: wlp0s20f3: associate with
94:a6:7e:e6:77:75 (try 2/3)
Oct 30 11:35:06 acoffin-xps-15 kernel: wlp0s20f3: associate with
94:a6:7e:e6:77:75 (try 3/3)
Oct 30 11:35:06 acoffin-xps-15 kernel: wlp0s20f3: association with
94:a6:7e:e6:77:75 timed out
Oct 30 11:35:08 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
94:a6:7e:e6:77:75
Oct 30 11:35:08 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:35:08 acoffin-xps-15 kernel: wlp0s20f3: send auth to
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:35:08 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:35:08 acoffin-xps-15 kernel: wlp0s20f3: associate with
94:a6:7e:e6:77:75 (try 1/3)
Oct 30 11:35:08 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
94:a6:7e:e6:77:75 (capab=0x431 status=0 aid=1)
Oct 30 11:35:08 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:35:24 acoffin-xps-15 kernel: wlp0s20f3: Connection to AP
94:a6:7e:e6:77:75 lost
Oct 30 11:37:51 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 11:37:51 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:37:51 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:37:51 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:37:51 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=5)
Oct 30 11:37:51 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:37:51 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 11:37:51 acoffin-xps-15 kernel: IPv6: ADDRCONF(NETDEV_CHANGE):
wlp0s20f3: link becomes ready
Oct 30 11:38:24 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 11:38:24 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 11:38:24 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:38:24 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:38:24 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:38:24 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:38:24 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=5)
Oct 30 11:38:24 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:38:24 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 11:38:33 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to 24:2d:6c:95:ed:8a
Oct 30 11:38:33 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 11:38:33 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:38:33 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:38:33 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:38:33 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=5)
Oct 30 11:38:33 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:38:33 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 11:39:06 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 11:39:06 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 11:39:06 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:39:06 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:39:06 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:39:06 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:39:06 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=5)
Oct 30 11:39:06 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:39:06 acoffin-xps-15 kernel: wlp0s20f3: disassociated from
24:2d:6c:95:ed:88 (Reason: 34=DISASSOC_LOW_ACK)
Oct 30 11:39:07 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 11:39:07 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:39:07 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:39:07 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:39:07 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=5)
Oct 30 11:39:07 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:39:07 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 11:39:41 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to e8:d3:eb:29:a0:86
Oct 30 11:39:41 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
e8:d3:eb:29:a0:86
Oct 30 11:39:41 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:39:41 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 11:39:41 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:39:41 acoffin-xps-15 kernel: wlp0s20f3: associate with
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 11:39:41 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
e8:d3:eb:29:a0:86 (capab=0x1431 status=0 aid=2)
Oct 30 11:39:41 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:39:41 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by e8:d3:eb:29:a0:86
Oct 30 11:40:21 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
e8:d3:eb:29:a0:86 for new auth to 24:2d:6c:95:ed:88
Oct 30 11:40:21 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 11:40:21 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:40:21 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:40:21 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 2/3)
Oct 30 11:40:21 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 3/3)
Oct 30 11:40:21 acoffin-xps-15 kernel: wlp0s20f3: authentication with
24:2d:6c:95:ed:88 timed out
Oct 30 11:40:24 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 11:40:24 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:40:24 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:40:24 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:40:24 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=5)
Oct 30 11:40:24 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:40:24 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 11:41:32 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 11:41:32 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 11:41:32 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:41:32 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:41:32 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:41:32 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:41:32 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=5)
Oct 30 11:41:32 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:41:32 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 11:43:14 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to 24:2d:6c:95:ed:8a
Oct 30 11:43:14 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 11:43:14 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:43:14 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:43:14 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:43:14 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=5)
Oct 30 11:43:14 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:43:14 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 11:43:23 acoffin-xps-15 kernel: show_signal_msg: 24 callbacks suppressed
Oct 30 11:43:23 acoffin-xps-15 kernel: fuzz[20137]: segfault at 4 ip
00007fe675d8312d sp 00007ffc90266d70 error 4 in
libz3.so[7fe674698000+1730000] likely on CPU 3 (core 4, socket 0)
Oct 30 11:43:23 acoffin-xps-15 kernel: Code: e9 3f ff ff ff 0f 1f 84
00 00 00 00 00 f3 0f 1e fa 48 83 ec 08 48 8b 05 a9 d4 40 00 80 78 08
00 74 43 48 8b 38 be 01 00 00 00 <48> 8b 07 ff 50 10 48 8b 05 8e d4 40
00 80 78 09 00 75 08 48 83 c4
Oct 30 11:43:33 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 11:43:33 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 11:43:33 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:43:33 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:43:33 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 2/3)
Oct 30 11:43:33 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 3/3)
Oct 30 11:43:33 acoffin-xps-15 kernel: wlp0s20f3: authentication with
24:2d:6c:95:ed:88 timed out
Oct 30 11:43:34 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 11:43:34 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:43:34 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 2/3)
Oct 30 11:43:34 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:43:34 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:43:34 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=5)
Oct 30 11:43:34 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:43:34 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 11:44:08 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 11:44:08 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 11:44:08 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:44:08 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:44:08 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:44:08 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:44:08 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=5)
Oct 30 11:44:08 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:44:08 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 11:46:56 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to 24:2d:6c:95:ed:8a
Oct 30 11:46:56 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 11:46:57 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:46:57 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:46:57 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:46:57 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=8)
Oct 30 11:46:57 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:46:57 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 11:47:30 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 11:47:30 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 11:47:30 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:47:30 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:47:30 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:47:30 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:47:30 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=5)
Oct 30 11:47:30 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:47:30 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 11:51:15 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 1 (2437.000/0
MHz)
Oct 30 11:52:14 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to 24:2d:6c:95:ed:8a
Oct 30 11:52:14 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 11:52:14 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:52:14 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:52:14 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 11:52:14 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=15)
Oct 30 11:52:14 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:52:14 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 11:54:29 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 11:54:29 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 11:54:29 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:54:29 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:54:29 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:54:29 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:54:29 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=2)
Oct 30 11:54:29 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:54:29 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 11:57:51 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 2 (2427.000/0
MHz)
Oct 30 11:58:53 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to e8:d3:eb:29:a0:86
Oct 30 11:58:53 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
e8:d3:eb:29:a0:86
Oct 30 11:58:53 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:58:53 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 11:58:54 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:58:54 acoffin-xps-15 kernel: wlp0s20f3: associate with
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 11:58:54 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
e8:d3:eb:29:a0:86 (capab=0x1431 status=0 aid=2)
Oct 30 11:58:54 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:58:54 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by e8:d3:eb:29:a0:86
Oct 30 11:59:19 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
e8:d3:eb:29:a0:86 for new auth to 24:2d:6c:95:ed:88
Oct 30 11:59:19 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 11:59:19 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 11:59:19 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:59:19 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 2/3)
Oct 30 11:59:19 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 11:59:19 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 11:59:19 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=2)
Oct 30 11:59:19 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 11:59:19 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 12:00:53 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to 24:2d:6c:95:ed:8a
Oct 30 12:00:53 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 12:00:53 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 12:00:54 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 2/3)
Oct 30 12:00:54 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 3/3)
Oct 30 12:00:54 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:00:54 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 12:00:54 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 2/3)
Oct 30 12:00:54 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=15)
Oct 30 12:00:54 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:00:54 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 12:01:28 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 12:01:28 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 12:01:28 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 12:01:28 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 12:01:28 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:01:28 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 12:01:28 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=2)
Oct 30 12:01:28 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:01:28 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 1 (2437.000/0
MHz)
Oct 30 12:01:28 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 12:03:39 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 2 (2427.000/0
MHz)
Oct 30 12:06:41 acoffin-xps-15 kernel:
Oct 30 12:06:41 acoffin-xps-15 kernel:
======================================================
Oct 30 12:06:41 acoffin-xps-15 kernel: WARNING: possible circular
locking dependency detected
Oct 30 12:06:41 acoffin-xps-15 kernel: 6.1.112 #2 Not tainted
Oct 30 12:06:41 acoffin-xps-15 kernel:
------------------------------------------------------
Oct 30 12:06:41 acoffin-xps-15 kernel: Xorg/1263 is trying to acquire lock:
Oct 30 12:06:41 acoffin-xps-15 kernel: ffffffff871e3380
(fs_reclaim){+.+.}-{0:0}, at: __kmem_cache_alloc_node+0x4a/0x290
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       but task is already holding lock:
Oct 30 12:06:41 acoffin-xps-15 kernel: ffff9e0694bdc810
(wakeref.mutex#2/1){+.+.}-{3:3}, at:
__intel_wakeref_get_first+0x1f/0x90 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       which lock already depends on
the new lock.
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       the existing dependency chain
(in reverse order) is:
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       -> #2 (wakeref.mutex#2/1){+.+.}-{3:3}:
Oct 30 12:06:41 acoffin-xps-15 kernel:        __mutex_lock+0xbe/0xb90
Oct 30 12:06:41 acoffin-xps-15 kernel:
__intel_wakeref_get_first+0x1f/0x90 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:        __i915_vma_active+0xa3/0xb0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_active_acquire+0x56/0xd0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:        i915_vma_pin_ww+0x1b2/0x9c0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_pin_fb_obj_dpt.constprop.0+0x209/0x350 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_plane_pin_fb+0xb2/0x100 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_prepare_plane_fb+0xf5/0x2f0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
drm_atomic_helper_prepare_planes+0x71/0x160 [drm_kms_helper]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_atomic_commit+0x8e/0x3c0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
drm_atomic_helper_page_flip+0x5f/0xd0 [drm_kms_helper]
Oct 30 12:06:41 acoffin-xps-15 kernel:
drm_mode_page_flip_ioctl+0x604/0x6d0 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl_kernel+0xcd/0x170 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl+0x22f/0x410 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:        __x64_sys_ioctl+0x8d/0xd0
Oct 30 12:06:41 acoffin-xps-15 kernel:        do_syscall_64+0x55/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:
entry_SYSCALL_64_after_hwframe+0x6e/0xd8
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       -> #1 (i915_active){+.+.}-{3:3}:
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_vma_instance+0x13c/0x580 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_alloc_initial_plane_obj.isra.0+0x15d/0x520 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_crtc_initial_plane_config+0x86/0x2d0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_modeset_init_nogem+0x359/0xeb0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_driver_probe+0x604/0xe60 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:        local_pci_probe+0x3e/0x80
Oct 30 12:06:41 acoffin-xps-15 kernel:        pci_device_probe+0xc3/0x240
Oct 30 12:06:41 acoffin-xps-15 kernel:        really_probe+0xdb/0x380
Oct 30 12:06:41 acoffin-xps-15 kernel:        __driver_probe_device+0x78/0x120
Oct 30 12:06:41 acoffin-xps-15 kernel:        driver_probe_device+0x1f/0x90
Oct 30 12:06:41 acoffin-xps-15 kernel:        __driver_attach+0xd2/0x1c0
Oct 30 12:06:41 acoffin-xps-15 kernel:        bus_for_each_dev+0x87/0xd0
Oct 30 12:06:41 acoffin-xps-15 kernel:        bus_add_driver+0x1b1/0x200
Oct 30 12:06:41 acoffin-xps-15 kernel:        driver_register+0x89/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:
get_max_energy_counter+0x1f/0x50 [intel_rapl_common]
Oct 30 12:06:41 acoffin-xps-15 kernel:        do_one_initcall+0x6d/0x280
Oct 30 12:06:41 acoffin-xps-15 kernel:        do_init_module+0x4a/0x1f0
Oct 30 12:06:41 acoffin-xps-15 kernel:        __do_sys_finit_module+0xac/0x120
Oct 30 12:06:41 acoffin-xps-15 kernel:        do_syscall_64+0x55/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:
entry_SYSCALL_64_after_hwframe+0x6e/0xd8
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       -> #0 (fs_reclaim){+.+.}-{0:0}:
Oct 30 12:06:41 acoffin-xps-15 kernel:        __lock_acquire+0x12f4/0x2000
Oct 30 12:06:41 acoffin-xps-15 kernel:        lock_acquire+0xc4/0x2a0
Oct 30 12:06:41 acoffin-xps-15 kernel:        fs_reclaim_acquire+0xa2/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:        __kmem_cache_alloc_node+0x4a/0x290
Oct 30 12:06:41 acoffin-xps-15 kernel:        __kmalloc+0x4d/0x150
Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_ns_internalize_name+0x93/0xf0
Oct 30 12:06:41 acoffin-xps-15 kernel:
acpi_ns_get_node_unlocked+0x80/0x110
Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_ns_get_node+0x3a/0x60
Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_get_handle+0x57/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_has_method+0x29/0x50
Oct 30 12:06:41 acoffin-xps-15 kernel:
acpi_pci_set_power_state+0x44/0x110
Oct 30 12:06:41 acoffin-xps-15 kernel:        pci_power_up+0x2e/0x180
Oct 30 12:06:41 acoffin-xps-15 kernel:        pci_pm_runtime_resume+0x2f/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:        __rpm_callback+0x41/0x170
Oct 30 12:06:41 acoffin-xps-15 kernel:        rpm_callback+0x5d/0x70
Oct 30 12:06:41 acoffin-xps-15 kernel:        rpm_resume+0x5e7/0x830
Oct 30 12:06:41 acoffin-xps-15 kernel:        __pm_runtime_resume+0x47/0x90
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_runtime_pm_get+0x1a/0x80 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
__intel_wakeref_get_first+0x31/0x90 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_gem_do_execbuffer+0x2417/0x2cc0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_gem_execbuffer2_ioctl+0x11a/0x2b0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl_kernel+0xcd/0x170 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl+0x22f/0x410 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:        __x64_sys_ioctl+0x8d/0xd0
Oct 30 12:06:41 acoffin-xps-15 kernel:        do_syscall_64+0x55/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:
entry_SYSCALL_64_after_hwframe+0x6e/0xd8
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       other info that might help us debug this:
Oct 30 12:06:41 acoffin-xps-15 kernel: Chain exists of:
                                         fs_reclaim --> i915_active
--> wakeref.mutex#2/1
Oct 30 12:06:41 acoffin-xps-15 kernel:  Possible unsafe locking scenario:
Oct 30 12:06:41 acoffin-xps-15 kernel:        CPU0                    CPU1
Oct 30 12:06:41 acoffin-xps-15 kernel:        ----                    ----
Oct 30 12:06:41 acoffin-xps-15 kernel:   lock(wakeref.mutex#2/1);
Oct 30 12:06:41 acoffin-xps-15 kernel:
lock(i915_active);
Oct 30 12:06:41 acoffin-xps-15 kernel:
lock(wakeref.mutex#2/1);
Oct 30 12:06:41 acoffin-xps-15 kernel:   lock(fs_reclaim);
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                        *** DEADLOCK ***
Oct 30 12:06:41 acoffin-xps-15 kernel: 1 lock held by Xorg/1263:
Oct 30 12:06:41 acoffin-xps-15 kernel:  #0: ffff9e0694bdc810
(wakeref.mutex#2/1){+.+.}-{3:3}, at:
__intel_wakeref_get_first+0x1f/0x90 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       stack backtrace:
Oct 30 12:06:41 acoffin-xps-15 kernel: CPU: 8 PID: 1263 Comm: Xorg Not
tainted 6.1.112 #2
Oct 30 12:06:41 acoffin-xps-15 kernel: Hardware name: Dell Inc. XPS 15
9530/013F3N, BIOS 1.15.0 07/08/2024
Oct 30 12:06:41 acoffin-xps-15 kernel: Call Trace:
Oct 30 12:06:41 acoffin-xps-15 kernel:  <TASK>
Oct 30 12:06:41 acoffin-xps-15 kernel:  dump_stack_lvl+0x5b/0x77
Oct 30 12:06:41 acoffin-xps-15 kernel:  check_noncircular+0x11c/0x130
Oct 30 12:06:41 acoffin-xps-15 kernel:  __lock_acquire+0x12f4/0x2000
Oct 30 12:06:41 acoffin-xps-15 kernel:  lock_acquire+0xc4/0x2a0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? __kmem_cache_alloc_node+0x4a/0x290
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? save_trace+0x3e/0x2c0
Oct 30 12:06:41 acoffin-xps-15 kernel:  fs_reclaim_acquire+0xa2/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? __kmem_cache_alloc_node+0x4a/0x290
Oct 30 12:06:41 acoffin-xps-15 kernel:  __kmem_cache_alloc_node+0x4a/0x290
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? acpi_ns_internalize_name+0x93/0xf0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? acpi_ns_internalize_name+0x93/0xf0
Oct 30 12:06:41 acoffin-xps-15 kernel:  __kmalloc+0x4d/0x150
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_ns_internalize_name+0x93/0xf0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? lock_acquire+0xc4/0x2a0
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_ns_get_node_unlocked+0x80/0x110
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? down_timeout+0x4b/0x70
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? acpi_ns_get_node+0x3a/0x60
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_ns_get_node+0x3a/0x60
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_get_handle+0x57/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_has_method+0x29/0x50
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_pci_set_power_state+0x44/0x110
Oct 30 12:06:41 acoffin-xps-15 kernel:  pci_power_up+0x2e/0x180
Oct 30 12:06:41 acoffin-xps-15 kernel:  pci_pm_runtime_resume+0x2f/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? pci_pm_restore_noirq+0xc0/0xc0
Oct 30 12:06:41 acoffin-xps-15 kernel:  __rpm_callback+0x41/0x170
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? pci_pm_restore_noirq+0xc0/0xc0
Oct 30 12:06:41 acoffin-xps-15 kernel:  rpm_callback+0x5d/0x70
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? pci_pm_restore_noirq+0xc0/0xc0
Oct 30 12:06:41 acoffin-xps-15 kernel:  rpm_resume+0x5e7/0x830
Oct 30 12:06:41 acoffin-xps-15 kernel:  __pm_runtime_resume+0x47/0x90
Oct 30 12:06:41 acoffin-xps-15 kernel:  intel_runtime_pm_get+0x1a/0x80 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
__intel_wakeref_get_first+0x31/0x90 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_gem_do_execbuffer+0x2417/0x2cc0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_gem_execbuffer2_ioctl+0x11a/0x2b0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:  ?
i915_gem_do_execbuffer+0x2cc0/0x2cc0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:  drm_ioctl_kernel+0xcd/0x170 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:  drm_ioctl+0x22f/0x410 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:  ?
i915_gem_do_execbuffer+0x2cc0/0x2cc0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:  __x64_sys_ioctl+0x8d/0xd0
Oct 30 12:06:41 acoffin-xps-15 kernel:  do_syscall_64+0x55/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? kfree+0x107/0x140
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? ___sys_recvmsg+0x9c/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? __sys_recvmsg+0xa7/0xc0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? exit_to_user_mode_prepare+0x19e/0x250
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? lockdep_hardirqs_on_prepare+0xdc/0x190
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? do_syscall_64+0x61/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
Oct 30 12:06:41 acoffin-xps-15 kernel: RIP: 0033:0x7f258ef06c5b
Oct 30 12:06:41 acoffin-xps-15 kernel: Code: 00 48 89 44 24 18 31 c0
48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48
89 44 24 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 1c 48 8b 44
24 18 64 48 2b 04 25 28 00 00
Oct 30 12:06:41 acoffin-xps-15 kernel: RSP: 002b:00007ffcd0ee2350
EFLAGS: 00000246 ORIG_RAX: 0000000000000010
Oct 30 12:06:41 acoffin-xps-15 kernel: RAX: ffffffffffffffda RBX:
0000557019e70950 RCX: 00007f258ef06c5b
Oct 30 12:06:41 acoffin-xps-15 kernel: RDX: 00007ffcd0ee2400 RSI:
0000000040406469 RDI: 0000000000000012
Oct 30 12:06:41 acoffin-xps-15 kernel: RBP: 00007ffcd0ee2490 R08:
0000000000000007 R09: 000055701b5d64f0
Oct 30 12:06:41 acoffin-xps-15 kernel: R10: 3002f0996e1d00f9 R11:
0000000000000246 R12: 0000000000000000
Oct 30 12:06:41 acoffin-xps-15 kernel: R13: 00007ffcd0ee2400 R14:
0000000000000012 R15: 000055701b743fd0
Oct 30 12:06:41 acoffin-xps-15 kernel:  </TASK>
Oct 30 12:08:44 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 1 (2437.000/0
MHz)
Oct 30 12:13:16 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x703
Oct 30 12:13:51 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x703
Oct 30 12:13:51 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x400703
Oct 30 12:16:10 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 2 (2427.000/0
MHz)
Oct 30 12:21:11 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x703
Oct 30 12:25:23 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 1 (2437.000/0
MHz)
Oct 30 12:34:01 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 2 (2427.000/0
MHz)
Oct 30 12:34:17 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 1 (2437.000/0
MHz)
Oct 30 12:37:37 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 2 (2427.000/0
MHz)
Oct 30 12:41:31 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x703
Oct 30 12:44:33 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 1 (2437.000/0
MHz)
Oct 30 12:46:30 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to e8:d3:eb:29:a0:86
Oct 30 12:46:31 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
e8:d3:eb:29:a0:86
Oct 30 12:46:31 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 12:46:31 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 12:46:31 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:46:31 acoffin-xps-15 kernel: wlp0s20f3: associate with
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 12:46:31 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
e8:d3:eb:29:a0:86 (capab=0x1431 status=0 aid=2)
Oct 30 12:46:31 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:46:31 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by e8:d3:eb:29:a0:86
Oct 30 12:46:34 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x71b
Oct 30 12:47:04 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
e8:d3:eb:29:a0:86 for new auth to 24:2d:6c:95:ed:8a
Oct 30 12:47:04 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 12:47:04 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 12:47:04 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:47:04 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 12:47:04 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=17)
Oct 30 12:47:04 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:47:04 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 12:47:36 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to e8:d3:eb:29:a0:86
Oct 30 12:47:36 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
e8:d3:eb:29:a0:86
Oct 30 12:47:36 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 12:47:36 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 12:47:36 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:47:36 acoffin-xps-15 kernel: wlp0s20f3: associate with
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 12:47:36 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
e8:d3:eb:29:a0:86 (capab=0x1431 status=0 aid=2)
Oct 30 12:47:36 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:47:36 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by e8:d3:eb:29:a0:86
Oct 30 12:52:30 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
e8:d3:eb:29:a0:86 for new auth to 24:2d:6c:95:ed:88
Oct 30 12:52:30 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 12:52:30 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 12:52:30 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=4)
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: disassociated from
24:2d:6c:95:ed:88 (Reason: 34=DISASSOC_LOW_ACK)
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
e8:d3:eb:29:a0:86
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:86 (try 2/3)
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: associate with
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
e8:d3:eb:29:a0:86 (capab=0x1431 status=0 aid=2)
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:52:31 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by e8:d3:eb:29:a0:86
Oct 30 12:53:08 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
e8:d3:eb:29:a0:86 for new auth to 24:2d:6c:95:ed:88
Oct 30 12:53:08 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 12:53:08 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 12:53:08 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 12:53:08 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:53:08 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 12:53:08 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=4)
Oct 30 12:53:08 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:53:08 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 12:53:40 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to 24:2d:6c:95:ed:8a
Oct 30 12:53:40 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 12:53:40 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 12:53:40 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:53:40 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 12:53:40 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=17)
Oct 30 12:53:40 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:53:40 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 12:55:16 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to e8:d3:eb:29:a0:86
Oct 30 12:55:16 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
e8:d3:eb:29:a0:86
Oct 30 12:55:16 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 12:55:16 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 12:55:16 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:55:16 acoffin-xps-15 kernel: wlp0s20f3: associate with
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 12:55:16 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
e8:d3:eb:29:a0:86 (capab=0x1431 status=0 aid=2)
Oct 30 12:55:16 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:55:16 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by e8:d3:eb:29:a0:86
Oct 30 12:55:53 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
e8:d3:eb:29:a0:86 for new auth to 24:2d:6c:95:ed:8a
Oct 30 12:55:53 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 12:55:53 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 12:55:53 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 2/3)
Oct 30 12:55:53 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:55:53 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 12:55:53 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=17)
Oct 30 12:55:53 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:55:53 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 12:57:29 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 12:57:29 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 12:57:29 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 12:57:29 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 12:57:29 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:57:29 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 12:57:30 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=2)
Oct 30 12:57:30 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:57:30 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 12:58:35 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to 24:2d:6c:95:ed:8a
Oct 30 12:58:35 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 12:58:36 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 12:58:36 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:58:36 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 12:58:36 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=17)
Oct 30 12:58:36 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:58:36 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 2/3)
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 2/3)
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 3/3)
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=2)
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 12:59:40 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 13:01:15 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x703
Oct 30 13:01:15 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x703
Oct 30 13:05:41 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 2 (2427.000/0
MHz)
Oct 30 13:06:31 acoffin-xps-15 kernel: wlp0s20f3: AP 24:2d:6c:95:ed:88
changed bandwidth, new config is 2437.000 MHz, width 1 (2437.000/0
MHz)
Oct 30 13:07:39 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x703
Oct 30 13:07:39 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x400703
Oct 30 13:07:39 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x400703
Oct 30 13:10:06 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x703
Oct 30 13:10:06 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x400703
Oct 30 13:12:14 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to 24:2d:6c:95:ed:8a
Oct 30 13:12:14 acoffin-xps-15 kernel: iwlwifi 0000:00:14.3: Unhandled
alg: 0x71b
Oct 30 13:12:14 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 13:12:14 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 13:12:15 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 13:12:15 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 13:12:15 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=11)
Oct 30 13:12:15 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 13:12:15 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 13:13:48 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 13:13:48 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 13:13:48 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 13:13:48 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 13:13:48 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 2/3)
Oct 30 13:13:48 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 3/3)
Oct 30 13:13:48 acoffin-xps-15 kernel: wlp0s20f3: authentication with
24:2d:6c:95:ed:88 timed out
Oct 30 13:13:49 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:8a
Oct 30 13:13:49 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 13:13:49 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:8a (try 2/3)
Oct 30 13:13:49 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 13:13:49 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:8a (try 1/3)
Oct 30 13:13:49 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
24:2d:6c:95:ed:8a (capab=0x1111 status=0 aid=11)
Oct 30 13:13:49 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 13:13:49 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by 24:2d:6c:95:ed:8a
Oct 30 13:15:53 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:8a for new auth to 24:2d:6c:95:ed:88
Oct 30 13:15:53 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 13:15:53 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 13:15:53 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 13:15:53 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 13:15:53 acoffin-xps-15 kernel: wlp0s20f3: associate with
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 13:15:53 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
24:2d:6c:95:ed:88 (capab=0x1431 status=0 aid=2)
Oct 30 13:15:54 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 13:15:54 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by 24:2d:6c:95:ed:88
Oct 30 13:16:34 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
24:2d:6c:95:ed:88 for new auth to e8:d3:eb:29:a0:87
Oct 30 13:16:35 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
e8:d3:eb:29:a0:87
Oct 30 13:16:35 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:87 (try 1/3)
Oct 30 13:16:35 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 13:16:35 acoffin-xps-15 kernel: wlp0s20f3: associate with
e8:d3:eb:29:a0:87 (try 1/3)
Oct 30 13:16:35 acoffin-xps-15 kernel: wlp0s20f3: RX ReassocResp from
e8:d3:eb:29:a0:87 (capab=0x1111 status=0 aid=3)
Oct 30 13:16:35 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 13:16:35 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by e8:d3:eb:29:a0:87
Oct 30 13:17:38 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
e8:d3:eb:29:a0:87 for new auth to 24:2d:6c:95:ed:88
Oct 30 13:17:38 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 13:17:38 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 13:17:38 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 13:17:38 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 2/3)
Oct 30 13:17:38 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 3/3)
Oct 30 13:17:38 acoffin-xps-15 kernel: wlp0s20f3: authentication with
24:2d:6c:95:ed:88 timed out
Oct 30 13:17:39 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
e8:d3:eb:29:a0:87
Oct 30 13:17:39 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:87 (try 1/3)
Oct 30 13:17:39 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:87 (try 2/3)
Oct 30 13:17:39 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 13:17:39 acoffin-xps-15 kernel: wlp0s20f3: associate with
e8:d3:eb:29:a0:87 (try 1/3)
Oct 30 13:17:39 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
e8:d3:eb:29:a0:87 (capab=0x1111 status=0 aid=3)
Oct 30 13:17:39 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 13:17:39 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
27 (30 - 3) dBm as advertised by e8:d3:eb:29:a0:87
Oct 30 13:18:10 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
e8:d3:eb:29:a0:87 for new auth to 24:2d:6c:95:ed:88
Oct 30 13:18:10 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 13:18:10 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 13:18:10 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 13:18:11 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 2/3)
Oct 30 13:18:11 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 3/3)
Oct 30 13:18:11 acoffin-xps-15 kernel: wlp0s20f3: authentication with
24:2d:6c:95:ed:88 timed out
Oct 30 13:18:14 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
e8:d3:eb:29:a0:86
Oct 30 13:18:14 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 13:18:14 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 13:18:14 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 13:18:14 acoffin-xps-15 kernel: wlp0s20f3: associate with
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 13:18:14 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
e8:d3:eb:29:a0:86 (capab=0x1431 status=0 aid=2)
Oct 30 13:18:14 acoffin-xps-15 kernel: wlp0s20f3: associated
Oct 30 13:18:14 acoffin-xps-15 kernel: wlp0s20f3: Limiting TX power to
30 (30 - 0) dBm as advertised by e8:d3:eb:29:a0:86
Oct 30 13:19:17 acoffin-xps-15 kernel: wlp0s20f3: disconnect from AP
e8:d3:eb:29:a0:86 for new auth to 24:2d:6c:95:ed:88
Oct 30 13:19:17 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
24:2d:6c:95:ed:88
Oct 30 13:19:17 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 13:19:17 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 1/3)
Oct 30 13:19:18 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 2/3)
Oct 30 13:19:18 acoffin-xps-15 kernel: wlp0s20f3: send auth to
24:2d:6c:95:ed:88 (try 3/3)
Oct 30 13:19:18 acoffin-xps-15 kernel: wlp0s20f3: authentication with
24:2d:6c:95:ed:88 timed out
Oct 30 13:19:19 acoffin-xps-15 kernel: wlp0s20f3: authenticate with
e8:d3:eb:29:a0:86
Oct 30 13:19:19 acoffin-xps-15 kernel: wlp0s20f3: 80 MHz not
supported, disabling VHT
Oct 30 13:19:19 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 13:19:19 acoffin-xps-15 kernel: wlp0s20f3: send auth to
e8:d3:eb:29:a0:86 (try 2/3)
Oct 30 13:19:19 acoffin-xps-15 kernel: wlp0s20f3: authenticated
Oct 30 13:19:19 acoffin-xps-15 kernel: wlp0s20f3: associate with
e8:d3:eb:29:a0:86 (try 1/3)
Oct 30 13:19:19 acoffin-xps-15 kernel: wlp0s20f3: RX AssocResp from
e8:d3:eb:29:a0:86 (capab=0x1431 status=0 aid=2)
Oct 30 13:19:19 acoffin-xps-15 kernel: wlp0s20f3: associated
```

File 2
```
Oct 30 12:06:41 acoffin-xps-15 kernel:
======================================================
Oct 30 12:06:41 acoffin-xps-15 kernel: WARNING: possible circular
locking dependency detected
Oct 30 12:06:41 acoffin-xps-15 kernel: 6.1.112 #2 Not tainted
Oct 30 12:06:41 acoffin-xps-15 kernel:
------------------------------------------------------
Oct 30 12:06:41 acoffin-xps-15 kernel: Xorg/1263 is trying to acquire lock:
Oct 30 12:06:41 acoffin-xps-15 kernel: ffffffff871e3380
(fs_reclaim){+.+.}-{0:0}, at: __kmem_cache_alloc_node+0x4a/0x290
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       but task is already holding lock:
Oct 30 12:06:41 acoffin-xps-15 kernel: ffff9e0694bdc810
(wakeref.mutex#2/1){+.+.}-{3:3}, at:
__intel_wakeref_get_first+0x1f/0x90 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       which lock already depends on
the new lock.
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       the existing dependency chain
(in reverse order) is:
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       -> #2 (wakeref.mutex#2/1){+.+.}-{3:3}:
Oct 30 12:06:41 acoffin-xps-15 kernel:        __mutex_lock+0xbe/0xb90
Oct 30 12:06:41 acoffin-xps-15 kernel:
__intel_wakeref_get_first+0x1f/0x90 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:        __i915_vma_active+0xa3/0xb0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_active_acquire+0x56/0xd0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:        i915_vma_pin_ww+0x1b2/0x9c0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_pin_fb_obj_dpt.constprop.0+0x209/0x350 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_plane_pin_fb+0xb2/0x100 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_prepare_plane_fb+0xf5/0x2f0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
drm_atomic_helper_prepare_planes+0x71/0x160 [drm_kms_helper]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_atomic_commit+0x8e/0x3c0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
drm_atomic_helper_page_flip+0x5f/0xd0 [drm_kms_helper]
Oct 30 12:06:41 acoffin-xps-15 kernel:
drm_mode_page_flip_ioctl+0x604/0x6d0 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl_kernel+0xcd/0x170 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl+0x22f/0x410 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:        __x64_sys_ioctl+0x8d/0xd0
Oct 30 12:06:41 acoffin-xps-15 kernel:        do_syscall_64+0x55/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:
entry_SYSCALL_64_after_hwframe+0x6e/0xd8
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       -> #1 (i915_active){+.+.}-{3:3}:
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_vma_instance+0x13c/0x580 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_alloc_initial_plane_obj.isra.0+0x15d/0x520 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_crtc_initial_plane_config+0x86/0x2d0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_modeset_init_nogem+0x359/0xeb0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_driver_probe+0x604/0xe60 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:        local_pci_probe+0x3e/0x80
Oct 30 12:06:41 acoffin-xps-15 kernel:        pci_device_probe+0xc3/0x240
Oct 30 12:06:41 acoffin-xps-15 kernel:        really_probe+0xdb/0x380
Oct 30 12:06:41 acoffin-xps-15 kernel:        __driver_probe_device+0x78/0x120
Oct 30 12:06:41 acoffin-xps-15 kernel:        driver_probe_device+0x1f/0x90
Oct 30 12:06:41 acoffin-xps-15 kernel:        __driver_attach+0xd2/0x1c0
Oct 30 12:06:41 acoffin-xps-15 kernel:        bus_for_each_dev+0x87/0xd0
Oct 30 12:06:41 acoffin-xps-15 kernel:        bus_add_driver+0x1b1/0x200
Oct 30 12:06:41 acoffin-xps-15 kernel:        driver_register+0x89/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:
get_max_energy_counter+0x1f/0x50 [intel_rapl_common]
Oct 30 12:06:41 acoffin-xps-15 kernel:        do_one_initcall+0x6d/0x280
Oct 30 12:06:41 acoffin-xps-15 kernel:        do_init_module+0x4a/0x1f0
Oct 30 12:06:41 acoffin-xps-15 kernel:        __do_sys_finit_module+0xac/0x120
Oct 30 12:06:41 acoffin-xps-15 kernel:        do_syscall_64+0x55/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:
entry_SYSCALL_64_after_hwframe+0x6e/0xd8
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       -> #0 (fs_reclaim){+.+.}-{0:0}:
Oct 30 12:06:41 acoffin-xps-15 kernel:        __lock_acquire+0x12f4/0x2000
Oct 30 12:06:41 acoffin-xps-15 kernel:        lock_acquire+0xc4/0x2a0
Oct 30 12:06:41 acoffin-xps-15 kernel:        fs_reclaim_acquire+0xa2/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:        __kmem_cache_alloc_node+0x4a/0x290
Oct 30 12:06:41 acoffin-xps-15 kernel:        __kmalloc+0x4d/0x150
Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_ns_internalize_name+0x93/0xf0
Oct 30 12:06:41 acoffin-xps-15 kernel:
acpi_ns_get_node_unlocked+0x80/0x110
Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_ns_get_node+0x3a/0x60
Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_get_handle+0x57/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:        acpi_has_method+0x29/0x50
Oct 30 12:06:41 acoffin-xps-15 kernel:
acpi_pci_set_power_state+0x44/0x110
Oct 30 12:06:41 acoffin-xps-15 kernel:        pci_power_up+0x2e/0x180
Oct 30 12:06:41 acoffin-xps-15 kernel:        pci_pm_runtime_resume+0x2f/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:        __rpm_callback+0x41/0x170
Oct 30 12:06:41 acoffin-xps-15 kernel:        rpm_callback+0x5d/0x70
Oct 30 12:06:41 acoffin-xps-15 kernel:        rpm_resume+0x5e7/0x830
Oct 30 12:06:41 acoffin-xps-15 kernel:        __pm_runtime_resume+0x47/0x90
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_runtime_pm_get+0x1a/0x80 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
__intel_wakeref_get_first+0x31/0x90 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_gem_do_execbuffer+0x2417/0x2cc0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_gem_execbuffer2_ioctl+0x11a/0x2b0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl_kernel+0xcd/0x170 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:        drm_ioctl+0x22f/0x410 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:        __x64_sys_ioctl+0x8d/0xd0
Oct 30 12:06:41 acoffin-xps-15 kernel:        do_syscall_64+0x55/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:
entry_SYSCALL_64_after_hwframe+0x6e/0xd8
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       other info that might help us debug this:
Oct 30 12:06:41 acoffin-xps-15 kernel: Chain exists of:
                                         fs_reclaim --> i915_active
--> wakeref.mutex#2/1
Oct 30 12:06:41 acoffin-xps-15 kernel:  Possible unsafe locking scenario:
Oct 30 12:06:41 acoffin-xps-15 kernel:        CPU0                    CPU1
Oct 30 12:06:41 acoffin-xps-15 kernel:        ----                    ----
Oct 30 12:06:41 acoffin-xps-15 kernel:   lock(wakeref.mutex#2/1);
Oct 30 12:06:41 acoffin-xps-15 kernel:
lock(i915_active);
Oct 30 12:06:41 acoffin-xps-15 kernel:
lock(wakeref.mutex#2/1);
Oct 30 12:06:41 acoffin-xps-15 kernel:   lock(fs_reclaim);
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                        *** DEADLOCK ***
Oct 30 12:06:41 acoffin-xps-15 kernel: 1 lock held by Xorg/1263:
Oct 30 12:06:41 acoffin-xps-15 kernel:  #0: ffff9e0694bdc810
(wakeref.mutex#2/1){+.+.}-{3:3}, at:
__intel_wakeref_get_first+0x1f/0x90 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
                                       stack backtrace:
Oct 30 12:06:41 acoffin-xps-15 kernel: CPU: 8 PID: 1263 Comm: Xorg Not
tainted 6.1.112 #2
Oct 30 12:06:41 acoffin-xps-15 kernel: Hardware name: Dell Inc. XPS 15
9530/013F3N, BIOS 1.15.0 07/08/2024
Oct 30 12:06:41 acoffin-xps-15 kernel: Call Trace:
Oct 30 12:06:41 acoffin-xps-15 kernel:  <TASK>
Oct 30 12:06:41 acoffin-xps-15 kernel:  dump_stack_lvl+0x5b/0x77
Oct 30 12:06:41 acoffin-xps-15 kernel:  check_noncircular+0x11c/0x130
Oct 30 12:06:41 acoffin-xps-15 kernel:  __lock_acquire+0x12f4/0x2000
Oct 30 12:06:41 acoffin-xps-15 kernel:  lock_acquire+0xc4/0x2a0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? __kmem_cache_alloc_node+0x4a/0x290
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? save_trace+0x3e/0x2c0
Oct 30 12:06:41 acoffin-xps-15 kernel:  fs_reclaim_acquire+0xa2/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? __kmem_cache_alloc_node+0x4a/0x290
Oct 30 12:06:41 acoffin-xps-15 kernel:  __kmem_cache_alloc_node+0x4a/0x290
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? acpi_ns_internalize_name+0x93/0xf0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? acpi_ns_internalize_name+0x93/0xf0
Oct 30 12:06:41 acoffin-xps-15 kernel:  __kmalloc+0x4d/0x150
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_ns_internalize_name+0x93/0xf0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? lock_acquire+0xc4/0x2a0
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_ns_get_node_unlocked+0x80/0x110
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? down_timeout+0x4b/0x70
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? acpi_ns_get_node+0x3a/0x60
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_ns_get_node+0x3a/0x60
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_get_handle+0x57/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_has_method+0x29/0x50
Oct 30 12:06:41 acoffin-xps-15 kernel:  acpi_pci_set_power_state+0x44/0x110
Oct 30 12:06:41 acoffin-xps-15 kernel:  pci_power_up+0x2e/0x180
Oct 30 12:06:41 acoffin-xps-15 kernel:  pci_pm_runtime_resume+0x2f/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? pci_pm_restore_noirq+0xc0/0xc0
Oct 30 12:06:41 acoffin-xps-15 kernel:  __rpm_callback+0x41/0x170
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? pci_pm_restore_noirq+0xc0/0xc0
Oct 30 12:06:41 acoffin-xps-15 kernel:  rpm_callback+0x5d/0x70
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? pci_pm_restore_noirq+0xc0/0xc0
Oct 30 12:06:41 acoffin-xps-15 kernel:  rpm_resume+0x5e7/0x830
Oct 30 12:06:41 acoffin-xps-15 kernel:  __pm_runtime_resume+0x47/0x90
Oct 30 12:06:41 acoffin-xps-15 kernel:  intel_runtime_pm_get+0x1a/0x80 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
__intel_wakeref_get_first+0x31/0x90 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_gem_do_execbuffer+0x2417/0x2cc0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:
i915_gem_execbuffer2_ioctl+0x11a/0x2b0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:  ?
i915_gem_do_execbuffer+0x2cc0/0x2cc0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:  drm_ioctl_kernel+0xcd/0x170 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:  drm_ioctl+0x22f/0x410 [drm]
Oct 30 12:06:41 acoffin-xps-15 kernel:  ?
i915_gem_do_execbuffer+0x2cc0/0x2cc0 [i915]
Oct 30 12:06:41 acoffin-xps-15 kernel:  __x64_sys_ioctl+0x8d/0xd0
Oct 30 12:06:41 acoffin-xps-15 kernel:  do_syscall_64+0x55/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? kfree+0x107/0x140
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? ___sys_recvmsg+0x9c/0xe0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? __sys_recvmsg+0xa7/0xc0
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? exit_to_user_mode_prepare+0x19e/0x250
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? lockdep_hardirqs_on_prepare+0xdc/0x190
Oct 30 12:06:41 acoffin-xps-15 kernel:  ? do_syscall_64+0x61/0xb0
Oct 30 12:06:41 acoffin-xps-15 kernel:  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
Oct 30 12:06:41 acoffin-xps-15 kernel: RIP: 0033:0x7f258ef06c5b
Oct 30 12:06:41 acoffin-xps-15 kernel: Code: 00 48 89 44 24 18 31 c0
48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48
89 44 24 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 1c 48 8b 44
24 18 64 48 2b 04 25 28 00 00
Oct 30 12:06:41 acoffin-xps-15 kernel: RSP: 002b:00007ffcd0ee2350
EFLAGS: 00000246 ORIG_RAX: 0000000000000010
Oct 30 12:06:41 acoffin-xps-15 kernel: RAX: ffffffffffffffda RBX:
0000557019e70950 RCX: 00007f258ef06c5b
Oct 30 12:06:41 acoffin-xps-15 kernel: RDX: 00007ffcd0ee2400 RSI:
0000000040406469 RDI: 0000000000000012
Oct 30 12:06:41 acoffin-xps-15 kernel: RBP: 00007ffcd0ee2490 R08:
0000000000000007 R09: 000055701b5d64f0
Oct 30 12:06:41 acoffin-xps-15 kernel: R10: 3002f0996e1d00f9 R11:
0000000000000246 R12: 0000000000000000
Oct 30 12:06:41 acoffin-xps-15 kernel: R13: 00007ffcd0ee2400 R14:
0000000000000012 R15: 000055701b743fd0
```

File 3
```
Oct 30 12:06:41 acoffin-xps-15 kernel:
======================================================
Oct 30 12:06:41 acoffin-xps-15 kernel: WARNING: possible circular
locking dependency detected
Oct 30 12:06:41 acoffin-xps-15 kernel: 6.1.112 #2 Not tainted
Oct 30 12:06:41 acoffin-xps-15 kernel:
------------------------------------------------------
Oct 30 12:06:41 acoffin-xps-15 kernel: Xorg/1263 is trying to acquire lock:
Oct 30 12:06:41 acoffin-xps-15 kernel: ffffffff871e3380
(fs_reclaim){+.+.}-{0:0}, at: __kmem_cache_alloc_node
(./include/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318
mm/slub.c:3437)
Oct 30 12:06:41 acoffin-xps-15 kernel:
but task is already holding lock:
Oct 30 12:06:41 acoffin-xps-15 kernel: ffff9e0694bdc810
(wakeref.mutex#2/1){+.+.}-{3:3}, at: __intel_wakeref_get_first
(./arch/x86/include/asm/atomic.h:29
./include/linux/atomic/atomic-instrumented.h:28
drivers/gpu/drm/i915/intel_wakeref.c:34) i915
Oct 30 12:06:41 acoffin-xps-15 kernel:
which lock already depends on the new lock.
Oct 30 12:06:41 acoffin-xps-15 kernel:
the existing dependency chain (in reverse order) is:
Oct 30 12:06:41 acoffin-xps-15 kernel:
-> #2 (wakeref.mutex#2/1){+.+.}-{3:3}:
Oct 30 12:06:41 acoffin-xps-15 kernel: __mutex_lock
(./arch/x86/include/asm/jump_label.h:27
./include/linux/jump_label.h:207 ./include/trace/events/lock.h:95
kernel/locking/mutex.c:605 kernel/locking/mutex.c:747)
Oct 30 12:06:41 acoffin-xps-15 kernel: __intel_wakeref_get_first
(./arch/x86/include/asm/atomic.h:29
./include/linux/atomic/atomic-instrumented.h:28
drivers/gpu/drm/i915/intel_wakeref.c:34) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: __i915_vma_active
(./drivers/gpu/drm/i915/intel_wakeref.h:85
drivers/gpu/drm/i915/gt/intel_gt_pm.h:21
drivers/gpu/drm/i915/i915_vma.c:112) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: i915_active_acquire
(drivers/gpu/drm/i915/i915_active.c:520
drivers/gpu/drm/i915/i915_active.c:503) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: i915_vma_pin_ww
(drivers/gpu/drm/i915/i915_vma.c:1506) i915
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_pin_fb_obj_dpt.constprop.0
(drivers/gpu/drm/i915/display/intel_fb_pin.c:85) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: intel_plane_pin_fb
(drivers/gpu/drm/i915/display/intel_fb_pin.c:269) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: intel_prepare_plane_fb
(drivers/gpu/drm/i915/display/intel_atomic_plane.c:1032) i915
Oct 30 12:06:41 acoffin-xps-15 kernel:
drm_atomic_helper_prepare_planes
(drivers/gpu/drm/drm_atomic_helper.c:2571
drivers/gpu/drm/drm_atomic_helper.c:2547) drm_kms_helper
Oct 30 12:06:41 acoffin-xps-15 kernel: intel_atomic_commit
(drivers/gpu/drm/i915/display/intel_display.c:6964
drivers/gpu/drm/i915/display/intel_display.c:7757) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: drm_atomic_helper_page_flip
(drivers/gpu/drm/drm_atomic_helper.c:3596) drm_kms_helper
Oct 30 12:06:41 acoffin-xps-15 kernel: drm_mode_page_flip_ioctl
(drivers/gpu/drm/drm_plane.c:1368) drm
Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl_kernel
(drivers/gpu/drm/drm_ioctl.c:788) drm
Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl
(./include/linux/thread_info.h:199 ./include/linux/thread_info.h:235
./include/linux/uaccess.h:168 drivers/gpu/drm/drm_ioctl.c:892) drm
Oct 30 12:06:41 acoffin-xps-15 kernel: __x64_sys_ioctl (fs/ioctl.c:51
fs/ioctl.c:870 fs/ioctl.c:856 fs/ioctl.c:856)
Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64
(arch/x86/entry/common.c:51 arch/x86/entry/common.c:81)
Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe
(arch/x86/entry/entry_64.S:121)
Oct 30 12:06:41 acoffin-xps-15 kernel:
-> #1 (i915_active){+.+.}-{3:3}:
Oct 30 12:06:41 acoffin-xps-15 kernel: i915_vma_instance
(drivers/gpu/drm/i915/i915_vma.c:159
drivers/gpu/drm/i915/i915_vma.c:325) i915
Oct 30 12:06:41 acoffin-xps-15 kernel:
intel_alloc_initial_plane_obj.isra.0
(drivers/gpu/drm/i915/display/intel_plane_initial.c:139
drivers/gpu/drm/i915/display/intel_plane_initial.c:183) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: intel_crtc_initial_plane_config
(drivers/gpu/drm/i915/display/intel_plane_initial.c:229
drivers/gpu/drm/i915/display/intel_plane_initial.c:320) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: intel_modeset_init_nogem
(drivers/gpu/drm/i915/display/intel_display.c:8794 (discriminator 2))
i915
Oct 30 12:06:41 acoffin-xps-15 kernel: i915_driver_probe
(drivers/gpu/drm/i915/i915_driver.c:951) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: local_pci_probe
(drivers/pci/pci-driver.c:324)
Oct 30 12:06:41 acoffin-xps-15 kernel: pci_device_probe
(drivers/pci/pci-driver.c:392 drivers/pci/pci-driver.c:417
drivers/pci/pci-driver.c:460)
Oct 30 12:06:41 acoffin-xps-15 kernel: really_probe
(drivers/base/dd.c:560 drivers/base/dd.c:639)
Oct 30 12:06:41 acoffin-xps-15 kernel: __driver_probe_device
(drivers/base/dd.c:785)
Oct 30 12:06:41 acoffin-xps-15 kernel: driver_probe_device
(drivers/base/dd.c:815)
Oct 30 12:06:41 acoffin-xps-15 kernel: __driver_attach (drivers/base/dd.c:1202)
Oct 30 12:06:41 acoffin-xps-15 kernel: bus_for_each_dev (drivers/base/bus.c:301)
Oct 30 12:06:41 acoffin-xps-15 kernel: bus_add_driver (drivers/base/bus.c:618)
Oct 30 12:06:41 acoffin-xps-15 kernel: driver_register
(drivers/base/driver.c:246)
Oct 30 12:06:41 acoffin-xps-15 kernel: get_max_energy_counter
(drivers/powercap/intel_rapl_common.c:643
drivers/powercap/intel_rapl_common.c:194) intel_rapl_common
Oct 30 12:06:41 acoffin-xps-15 kernel: do_one_initcall (init/main.c:1298)
Oct 30 12:06:41 acoffin-xps-15 kernel: do_init_module
(kernel/module/main.c:2469)
Oct 30 12:06:41 acoffin-xps-15 kernel: __do_sys_finit_module
(kernel/module/main.c:2978)
Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64
(arch/x86/entry/common.c:51 arch/x86/entry/common.c:81)
Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe
(arch/x86/entry/entry_64.S:121)
Oct 30 12:06:41 acoffin-xps-15 kernel:
-> #0 (fs_reclaim){+.+.}-{0:0}:
Oct 30 12:06:41 acoffin-xps-15 kernel: __lock_acquire
(kernel/locking/lockdep.c:3091 kernel/locking/lockdep.c:3209
kernel/locking/lockdep.c:3825 kernel/locking/lockdep.c:5049)
Oct 30 12:06:41 acoffin-xps-15 kernel: lock_acquire
(kernel/locking/lockdep.c:467 kernel/locking/lockdep.c:5664
kernel/locking/lockdep.c:5627)
Oct 30 12:06:41 acoffin-xps-15 kernel: fs_reclaim_acquire
(mm/page_alloc.c:4682 mm/page_alloc.c:4695)
Oct 30 12:06:41 acoffin-xps-15 kernel: __kmem_cache_alloc_node
(./include/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318
mm/slub.c:3437)
Oct 30 12:06:41 acoffin-xps-15 kernel: __kmalloc (mm/slab_common.c:937
mm/slab_common.c:949)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_internalize_name
(./include/linux/slab.h:562 ./include/linux/slab.h:693
./include/acpi/platform/aclinuxex.h:57
drivers/acpi/acpica/nsutils.c:331)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node_unlocked
(drivers/acpi/acpica/nsutils.c:666)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node
(drivers/acpi/acpica/nsutils.c:729)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_get_handle
(drivers/acpi/acpica/nsxfname.c:99)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_has_method
(drivers/acpi/utils.c:591)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_pci_set_power_state
(drivers/pci/pci-acpi.c:1069 (discriminator 1))
Oct 30 12:06:41 acoffin-xps-15 kernel: pci_power_up (drivers/pci/pci.c:1212)
Oct 30 12:06:41 acoffin-xps-15 kernel: pci_pm_runtime_resume
(drivers/pci/pci-driver.c:570 (discriminator 4)
drivers/pci/pci-driver.c:575 (discriminator 4)
drivers/pci/pci-driver.c:1349 (discriminator 4))
Oct 30 12:06:41 acoffin-xps-15 kernel: __rpm_callback
(drivers/base/power/runtime.c:395)
Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_callback
(drivers/base/power/runtime.c:532)
Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_resume
(drivers/base/power/runtime.c:912)
Oct 30 12:06:41 acoffin-xps-15 kernel: __pm_runtime_resume
(./include/linux/spinlock.h:406 drivers/base/power/runtime.c:1171)
Oct 30 12:06:41 acoffin-xps-15 kernel: intel_runtime_pm_get
(drivers/gpu/drm/i915/intel_runtime_pm.c:358
drivers/gpu/drm/i915/intel_runtime_pm.c:402) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: __intel_wakeref_get_first
(drivers/gpu/drm/i915/intel_wakeref.c:39) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_do_execbuffer
(./drivers/gpu/drm/i915/intel_wakeref.h:85
./drivers/gpu/drm/i915/gt/intel_gt_pm.h:21
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2710
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3430) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_execbuffer2_ioctl
(drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3580) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl_kernel
(drivers/gpu/drm/drm_ioctl.c:788) drm
Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl
(./include/linux/thread_info.h:199 ./include/linux/thread_info.h:235
./include/linux/uaccess.h:168 drivers/gpu/drm/drm_ioctl.c:892) drm
Oct 30 12:06:41 acoffin-xps-15 kernel: __x64_sys_ioctl (fs/ioctl.c:51
fs/ioctl.c:870 fs/ioctl.c:856 fs/ioctl.c:856)
Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64
(arch/x86/entry/common.c:51 arch/x86/entry/common.c:81)
Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe
(arch/x86/entry/entry_64.S:121)
Oct 30 12:06:41 acoffin-xps-15 kernel:
other info that might help us debug this:
Oct 30 12:06:41 acoffin-xps-15 kernel: Chain exists of:
fs_reclaim --> i915_active --> wakeref.mutex#2/1
Oct 30 12:06:41 acoffin-xps-15 kernel:  Possible unsafe locking scenario:
Oct 30 12:06:41 acoffin-xps-15 kernel:        CPU0                    CPU1
Oct 30 12:06:41 acoffin-xps-15 kernel:        ----                    ----
Oct 30 12:06:41 acoffin-xps-15 kernel:   lock(wakeref.mutex#2/1);
Oct 30 12:06:41 acoffin-xps-15 kernel:
lock(i915_active);
Oct 30 12:06:41 acoffin-xps-15 kernel:
lock(wakeref.mutex#2/1);
Oct 30 12:06:41 acoffin-xps-15 kernel:   lock(fs_reclaim);
Oct 30 12:06:41 acoffin-xps-15 kernel:
*** DEADLOCK ***
Oct 30 12:06:41 acoffin-xps-15 kernel: 1 lock held by Xorg/1263:
Oct 30 12:06:41 acoffin-xps-15 kernel: #0: ffff9e0694bdc810
(wakeref.mutex#2/1){+.+.}-{3:3}, at: __intel_wakeref_get_first
(./arch/x86/include/asm/atomic.h:29
./include/linux/atomic/atomic-instrumented.h:28
drivers/gpu/drm/i915/intel_wakeref.c:34) i915
Oct 30 12:06:41 acoffin-xps-15 kernel:
stack backtrace:
Oct 30 12:06:41 acoffin-xps-15 kernel: CPU: 8 PID: 1263 Comm: Xorg Not
tainted 6.1.112 #2
Oct 30 12:06:41 acoffin-xps-15 kernel: Hardware name: Dell Inc. XPS 15
9530/013F3N, BIOS 1.15.0 07/08/2024
Oct 30 12:06:41 acoffin-xps-15 kernel: Call Trace:
Oct 30 12:06:41 acoffin-xps-15 kernel:  <TASK>
Oct 30 12:06:41 acoffin-xps-15 kernel: dump_stack_lvl
(lib/dump_stack.c:110 (discriminator 4))
Oct 30 12:06:41 acoffin-xps-15 kernel: check_noncircular
(kernel/locking/lockdep.c:2173)
Oct 30 12:06:41 acoffin-xps-15 kernel: __lock_acquire
(kernel/locking/lockdep.c:3091 kernel/locking/lockdep.c:3209
kernel/locking/lockdep.c:3825 kernel/locking/lockdep.c:5049)
Oct 30 12:06:41 acoffin-xps-15 kernel: lock_acquire
(kernel/locking/lockdep.c:467 kernel/locking/lockdep.c:5664
kernel/locking/lockdep.c:5627)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? __kmem_cache_alloc_node
(./include/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318
mm/slub.c:3437)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? save_trace
(kernel/locking/lockdep.c:584)
Oct 30 12:06:41 acoffin-xps-15 kernel: fs_reclaim_acquire
(mm/page_alloc.c:4682 mm/page_alloc.c:4695)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? __kmem_cache_alloc_node
(./include/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318
mm/slub.c:3437)
Oct 30 12:06:41 acoffin-xps-15 kernel: __kmem_cache_alloc_node
(./include/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318
mm/slub.c:3437)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? acpi_ns_internalize_name
(./include/linux/slab.h:562 ./include/linux/slab.h:693
./include/acpi/platform/aclinuxex.h:57
drivers/acpi/acpica/nsutils.c:331)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? acpi_ns_internalize_name
(./include/linux/slab.h:562 ./include/linux/slab.h:693
./include/acpi/platform/aclinuxex.h:57
drivers/acpi/acpica/nsutils.c:331)
Oct 30 12:06:41 acoffin-xps-15 kernel: __kmalloc (mm/slab_common.c:937
mm/slab_common.c:949)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_internalize_name
(./include/linux/slab.h:562 ./include/linux/slab.h:693
./include/acpi/platform/aclinuxex.h:57
drivers/acpi/acpica/nsutils.c:331)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? lock_acquire
(kernel/locking/lockdep.c:467 kernel/locking/lockdep.c:5664
kernel/locking/lockdep.c:5627)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node_unlocked
(drivers/acpi/acpica/nsutils.c:666)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? down_timeout
(kernel/locking/semaphore.c:173)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? acpi_ns_get_node
(drivers/acpi/acpica/nsutils.c:729)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node
(drivers/acpi/acpica/nsutils.c:729)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_get_handle
(drivers/acpi/acpica/nsxfname.c:99)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_has_method
(drivers/acpi/utils.c:591)
Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_pci_set_power_state
(drivers/pci/pci-acpi.c:1069 (discriminator 1))
Oct 30 12:06:41 acoffin-xps-15 kernel: pci_power_up (drivers/pci/pci.c:1212)
Oct 30 12:06:41 acoffin-xps-15 kernel: pci_pm_runtime_resume
(drivers/pci/pci-driver.c:570 (discriminator 4)
drivers/pci/pci-driver.c:575 (discriminator 4)
drivers/pci/pci-driver.c:1349 (discriminator 4))
Oct 30 12:06:41 acoffin-xps-15 kernel: ? pci_pm_restore_noirq
(drivers/pci/pci-driver.c:1338)
Oct 30 12:06:41 acoffin-xps-15 kernel: __rpm_callback
(drivers/base/power/runtime.c:395)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? pci_pm_restore_noirq
(drivers/pci/pci-driver.c:1338)
Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_callback
(drivers/base/power/runtime.c:532)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? pci_pm_restore_noirq
(drivers/pci/pci-driver.c:1338)
Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_resume
(drivers/base/power/runtime.c:912)
Oct 30 12:06:41 acoffin-xps-15 kernel: __pm_runtime_resume
(./include/linux/spinlock.h:406 drivers/base/power/runtime.c:1171)
Oct 30 12:06:41 acoffin-xps-15 kernel: intel_runtime_pm_get
(drivers/gpu/drm/i915/intel_runtime_pm.c:358
drivers/gpu/drm/i915/intel_runtime_pm.c:402) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: __intel_wakeref_get_first
(drivers/gpu/drm/i915/intel_wakeref.c:39) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_do_execbuffer
(./drivers/gpu/drm/i915/intel_wakeref.h:85
./drivers/gpu/drm/i915/gt/intel_gt_pm.h:21
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2710
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3430) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_execbuffer2_ioctl
(drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3580) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: ? i915_gem_do_execbuffer
(drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3548) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl_kernel
(drivers/gpu/drm/drm_ioctl.c:788) drm
Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl
(./include/linux/thread_info.h:199 ./include/linux/thread_info.h:235
./include/linux/uaccess.h:168 drivers/gpu/drm/drm_ioctl.c:892) drm
Oct 30 12:06:41 acoffin-xps-15 kernel: ? i915_gem_do_execbuffer
(drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3548) i915
Oct 30 12:06:41 acoffin-xps-15 kernel: __x64_sys_ioctl (fs/ioctl.c:51
fs/ioctl.c:870 fs/ioctl.c:856 fs/ioctl.c:856)
Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64
(arch/x86/entry/common.c:51 arch/x86/entry/common.c:81)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? kfree
(./include/trace/events/kmem.h:94 mm/slab_common.c:975)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? ___sys_recvmsg (net/socket.c:2778)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? __sys_recvmsg
(./include/linux/file.h:33 net/socket.c:2807)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? exit_to_user_mode_prepare
(./arch/x86/include/asm/entry-common.h:57 kernel/entry/common.c:212)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? lockdep_hardirqs_on_prepare
(kernel/locking/lockdep.c:4256 kernel/locking/lockdep.c:4315
kernel/locking/lockdep.c:4267)
Oct 30 12:06:41 acoffin-xps-15 kernel: ? do_syscall_64
(arch/x86/entry/common.c:88)
Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe
(arch/x86/entry/entry_64.S:121)
Oct 30 12:06:41 acoffin-xps-15 kernel: RIP: 0033:0x7f258ef06c5b
Oct 30 12:06:41 acoffin-xps-15 kernel: Code: 00 48 89 44 24 18 31 c0
48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48
89 44 24 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 1c 48 8b 44
24 18 64 48 2b 04 25 28 00 00
All code
========
   0:    00 48 89                 add    %cl,-0x77(%rax)
   3:    44 24 18                 rex.R and $0x18,%al
   6:    31 c0                    xor    %eax,%eax
   8:    48 8d 44 24 60           lea    0x60(%rsp),%rax
   d:    c7 04 24 10 00 00 00     movl   $0x10,(%rsp)
  14:    48 89 44 24 08           mov    %rax,0x8(%rsp)
  19:    48 8d 44 24 20           lea    0x20(%rsp),%rax
  1e:    48 89 44 24 10           mov    %rax,0x10(%rsp)
  23:    b8 10 00 00 00           mov    $0x10,%eax
  28:    0f 05                    syscall
  2a:*    89 c2                    mov    %eax,%edx        <--
trapping instruction
  2c:    3d 00 f0 ff ff           cmp    $0xfffff000,%eax
  31:    77 1c                    ja     0x4f
  33:    48 8b 44 24 18           mov    0x18(%rsp),%rax
  38:    64                       fs
  39:    48                       rex.W
  3a:    2b                       .byte 0x2b
  3b:    04 25                    add    $0x25,%al
  3d:    28 00                    sub    %al,(%rax)
    ...

Code starting with the faulting instruction
===========================================
   0:    89 c2                    mov    %eax,%edx
   2:    3d 00 f0 ff ff           cmp    $0xfffff000,%eax
   7:    77 1c                    ja     0x25
   9:    48 8b 44 24 18           mov    0x18(%rsp),%rax
   e:    64                       fs
   f:    48                       rex.W
  10:    2b                       .byte 0x2b
  11:    04 25                    add    $0x25,%al
  13:    28 00                    sub    %al,(%rax)
    ...
Oct 30 12:06:41 acoffin-xps-15 kernel: RSP: 002b:00007ffcd0ee2350
EFLAGS: 00000246 ORIG_RAX: 0000000000000010
Oct 30 12:06:41 acoffin-xps-15 kernel: RAX: ffffffffffffffda RBX:
0000557019e70950 RCX: 00007f258ef06c5b
Oct 30 12:06:41 acoffin-xps-15 kernel: RDX: 00007ffcd0ee2400 RSI:
0000000040406469 RDI: 0000000000000012
Oct 30 12:06:41 acoffin-xps-15 kernel: RBP: 00007ffcd0ee2490 R08:
0000000000000007 R09: 000055701b5d64f0
Oct 30 12:06:41 acoffin-xps-15 kernel: R10: 3002f0996e1d00f9 R11:
0000000000000246 R12: 0000000000000000
Oct 30 12:06:41 acoffin-xps-15 kernel: R13: 00007ffcd0ee2400 R14:
0000000000000012 R15: 000055701b743fd0
```

Best wishes,
Alex Coffin
