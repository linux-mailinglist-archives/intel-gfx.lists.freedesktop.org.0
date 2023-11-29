Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA5A7FDF2B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 19:16:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4F710E654;
	Wed, 29 Nov 2023 18:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com
 [IPv6:2001:4860:4864:20::31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 874CD10E654
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 18:15:56 +0000 (UTC)
Received: by mail-oa1-x31.google.com with SMTP id
 586e51a60fabf-1fa235f8026so2813636fac.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 10:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701281755; x=1701886555; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=d4/QZk3alCxkzG2ceGZJzScO3PJ/jC2W7UmrHH1uW2w=;
 b=nqV1eP/efs7iHXyjB9488JG8WhqXlg55DRXiGqDIgCwA+K1+dy1/kWSbacaen2XU3j
 dSc4PqaFeGQG2ZnuVHx5l30L4Q6Pyru7Po/JBcfgVyAW9O5x61VEcWQcdvu0cYt2Qoxu
 rI9W/6GHik6uzHkKx52kTcxF2bgPKFTPXYFOsTEwc3AlJ0dJdF2n6eHvaIqPr+/Pt+zG
 G6pE8m5TZw4WlRZnPeX7VTL9BxcnvnCAwY1TTOplF8wP8ft7kaoPgrI5OSxjK3yCLIVn
 m/Yba7erDSuUZq7ng3SMeaW7h2ETpufaSCU19ZCYQ1FRtf/PZjK3ZiO1fdkE8V77izsJ
 Pe/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701281755; x=1701886555;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=d4/QZk3alCxkzG2ceGZJzScO3PJ/jC2W7UmrHH1uW2w=;
 b=NK8K4Sto08gPxV+1NQB/llXaOTg5qkDgOvgHUUHEPk0zSWwrGsEFwrz+Kd9QGB/tkT
 IG5WM0R4pFEDgndnsHdCQvUGa8ZMNzhPEa5gPgU+KUzo115EJWFbHUHNewsTt6543IIp
 n6JMmxvxb9WyD34H7iMhKpMPBPu5ABKjkL7P1BnRohJQUyr2ygP56FjGgv2NOwMeSoM1
 WCJ8+EFuvgpviEmK9nmkkpT0jKMWz/0wnc9aL6CHouyufjhw5b83e4qXp0UTvmoTt75y
 L07G57HxTmyr4rn9Pt23ap5HX+8Ed+GZ7UMCYDfhnQPmnRv7bp2RGV4rMyBuDqY4ADj6
 Jneg==
X-Gm-Message-State: AOJu0Yx1Ahf+zMBEZOupazQpPFqRmJ1vGla7gsIHZe7HQA9e5td3iZc7
 8+r2crhmV7S34iDB4eWmr1txJFuKdBNb2hbH9TVhh7PrOsY=
X-Google-Smtp-Source: AGHT+IEbER8AlWJI1WYpO4bybZquc9sq+UChUgBRMZmFPz05cJj3iUKzwTX9VTxsooaPOkK9/cWihdFxM7tzxegpCt8=
X-Received: by 2002:a05:6870:e30f:b0:1fa:2f9:b77f with SMTP id
 z15-20020a056870e30f00b001fa02f9b77fmr20765046oad.2.1701281755347; Wed, 29
 Nov 2023 10:15:55 -0800 (PST)
MIME-Version: 1.0
From: Kevin Quillen <kevinquillen@gmail.com>
Date: Wed, 29 Nov 2023 13:15:44 -0500
Message-ID: <CAAqKzADznzur3Xag0oDFm4ifdWZSuqCQj85O+uYx=hB5fAq1Og@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000b0be0b060b4e8649"
Subject: [Intel-gfx] Intel Arc 770m GPU won't load on Fedora 38 kernel
 versions > 6.4.12
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

--000000000000b0be0b060b4e8649
Content-Type: text/plain; charset="UTF-8"

Posting here for visibility. I have tried up to the latest 6.6.2 kernel
with the same result.

https://bugzilla.redhat.com/show_bug.cgi?id=2248917

1. Please describe the problem:

All kernel versions after 6.4.12 are refusing to boot. I took this
error out of the logs:


```
Nov 05 17:56:01 fedora kernel: integrity: Problem loading X.509 certificate -126
Nov 05 17:56:01 fedora kernel: integrity: Problem loading X.509 certificate -126
Nov 05 17:56:04 fedora kernel: i915 0000:03:00.0: [drm] *ERROR* Device
is non-operational; MMIO access returns 0xFFFFFFFF!
Nov 05 17:56:04 fedora kernel: i915 0000:03:00.0: Device
initialization failed (-5)
Nov 05 17:56:06 fedora kernel: usb 3-3.2.1: 3:1: cannot get freq at ep 0x84
Nov 05 17:56:06 fedora kernel: iwlwifi 0000:00:14.3: WRT: Invalid
buffer destination
Nov 05 17:56:08 fedora kernel: iwlwifi 0000:00:14.3: WRT: Invalid
buffer destination
Nov 05 17:56:08 fedora kernel: Bluetooth: hci0: Malformed MSFT vendor
event: 0x02
Nov 05 17:56:08 fedora kernel: iwlwifi 0000:00:14.3: WRT: Invalid
buffer destination
Nov 05 17:56:10 fedora kernel: usb 3-3.2.1: 3:1: cannot get freq at ep 0x84
Nov 05 17:56:10 fedora kernel: usb 3-3.2.1: 3:1: cannot get freq at ep 0x84
```

The system crashes immediately when booting and that is the only -p3
output in journalctl. These lines here:


```
Nov 05 17:56:04 fedora kernel: i915 0000:03:00.0: [drm] *ERROR* Device
is non-operational; MMIO access returns 0xFFFFFFFF!
Nov 05 17:56:04 fedora kernel: i915 0000:03:00.0: Device
initialization failed (-5)
```

This is my Arc 770m GPU in an Intel NUC. It works on all versions up
to 6.4.12, after that it won't boot at all (even with 6.5.10). I have
pinned the default to 6.4.12 so I can continue to boot and do my work.

I have tried everything I can think of, but something has definitely
been introduced (or removed?) from 6.4.13+ that is crashing Arc GPU.

Does anyone have any idea of something I can try to get around this? I
tried looking at what was introduced in 6.4.13 but nothing jumped out
at the cause. I am still loading an i915 conf file with 'force probe'
to ensure the Arc GPU card is loaded - is this still required?

If I boot into 6.4.12 then reboot and select the 6.5.10 kernel from
the grub2 menu, it will boot into that just fine with a recognized
GPU. But it won't cold boot into newer kernels.

Additional log output from a failed boot:

```

Nov 08 21:42:07 fedora kernel: Setting dangerous option force_probe -
tainting kernel
Nov 08 21:42:07 fedora kernel: i915 0000:00:02.0: enabling device (0006 -> 0007)
Nov 08 21:42:07 fedora systemd[1]: Finished initrd-parse-etc.service -
Mountpoints Configured in the Real Root.
Nov 08 21:42:07 fedora kernel: i915 0000:00:02.0: [drm] VT-d active
for gfx access
Nov 08 21:42:07 fedora kernel: i915 0000:00:02.0: [drm] Using
Transparent Hugepages
Nov 08 21:42:07 fedora systemd[1]: Reached target initrd-fs.target -
Initrd File Systems.
Nov 08 21:42:07 fedora systemd[1]: Reached target initrd.target -
Initrd Default Target.
Nov 08 21:42:07 fedora systemd[1]: dracut-mount.service - dracut mount
hook was skipped because no trigger condition checks were met.
Nov 08 21:42:07 fedora systemd[1]: Starting dracut-pre-pivot.service -
dracut pre-pivot and cleanup hook...
Nov 08 21:42:07 fedora kernel: i915 0000:00:02.0: vgaarb: changed VGA
decodes: olddecodes=io+mem,decodes=none:owns=mem
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] Finished
loading DMC firmware i915/adlp_dmc.bin (v2.20)
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: GuC
firmware i915/adlp_guc_70.bin version 70.13.1
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: HuC
firmware i915/tgl_huc.bin version 7.9.3
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: HuC:
authenticated for all workloads
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: GUC:
submission enabled
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: GUC: SLPC enabled
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: GUC: RC enabled
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] Protected Xe
Path (PXP) protected content support initialized
Nov 08 21:42:08 fedora kernel: [drm] Initialized i915 1.6.0 20201103
for 0000:00:02.0 on minor 1
Nov 08 21:42:08 fedora kernel: ACPI: video: Video Device [PEGE]
(multi-head: yes  rom: no  post: no)
Nov 08 21:42:08 fedora kernel: input: Video Bus as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/device:00/device:01/device:02/LNXVIDEO:00/input/input5
Nov 08 21:42:08 fedora kernel: ACPI: video: Video Device [GFX0]
(multi-head: yes  rom: no  post: no)
Nov 08 21:42:08 fedora kernel: input: Video Bus as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:01/input/input6
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] Cannot find
any crtc or sizes
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] Cannot find
any crtc or sizes
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] Cannot find
any crtc or sizes
Nov 08 21:42:08 fedora kernel: usb 3-3.2.4: New USB device found,
idVendor=046d, idProduct=0ab7, bcdDevice= 0.20
Nov 08 21:42:08 fedora kernel: usb 3-3.2.4: New USB device strings:
Mfr=3, Product=1, SerialNumber=2
Nov 08 21:42:08 fedora kernel: usb 3-3.2.4: Product: Blue Microphones
Nov 08 21:42:08 fedora kernel: usb 3-3.2.4: Manufacturer: Generic
Nov 08 21:42:08 fedora kernel: usb 3-3.2.4: SerialNumber: 2107BAB010J8
Nov 08 21:42:08 fedora kernel: input: Generic Blue Microphones
Consumer Control as
/devices/pci0000:00/0000:00:14.0/usb3/3-3/3-3.2/3-3.2.4/3-3.2.4:1.3/0003:046D:0AB7.0003/input/input7
Nov 08 21:42:08 fedora kernel: input: Generic Blue Microphones as
/devices/pci0000:00/0000:00:14.0/usb3/3-3/3-3.2/3-3.2.4/3-3.2.4:1.3/0003:046D:0AB7.0003/input/input8
Nov 08 21:42:08 fedora kernel: hid-generic 0003:046D:0AB7.0003:
input,hiddev97,hidraw2: USB HID v1.11 Device [Generic Blue
Microphones] on usb-0000:00:14.0-3.2.4/input3
Nov 08 21:42:10 fedora kernel: i915 0000:03:00.0: [drm] *ERROR* Device
is non-operational; MMIO access returns 0xFFFFFFFF!
Nov 08 21:42:10 fedora kernel: i915 0000:03:00.0: Device
initialization failed (-5)
Nov 08 21:42:10 fedora kernel: i915: probe of 0000:03:00.0 failed with error -5
```

This is on an Intel NUC 12 Enthusiast machine. I have the latest BIOS firmware.
https://www.intel.com/content/www/us/en/products/sku/231480/intel-nuc-12-enthusiast-mini-pc-nuc12snki72va/specifications.html


2. What is the Version-Release number of the kernel:

6.4.13+ up to latest 6.5.10 kernel for Fedora 38 does not work. I am
running the last working kernel:

6.4.12-200.fc38.x86_64


3. Did it work previously in Fedora? If so, what kernel version did the issue
   *first* appear?  Old kernels are available for download at
   https://koji.fedoraproject.org/koji/packageinfo?packageID=8 :

Issue began with kernel 6.4.13. I had been using the machine
successfully from 6.0-6.4.12.


4. Can you reproduce this issue? If so, please provide the steps to reproduce
   the issue below:

If I cold boot into any kernel newer than 6.4.12, the boot immediately crashes.


5. Does this problem occur with the latest Rawhide kernel? To install the
   Rawhide kernel, run ``sudo dnf install fedora-repos-rawhide`` followed by
   ``sudo dnf update --enablerepo=rawhide kernel``:

Unable to try at this time.


6. Are you running any modules that not shipped with directly Fedora's kernel?:

I am loading two conf files at boot:

options i915 force_probe=5690

which used to force the GPU to be loaded, and

options snd_hda_codec_hdmi enable_silent_stream=N

which fixed an issue with sound not coming out of the monitor.


7. Please attach the kernel logs. You can get the complete kernel log
   for a boot with ``journalctl --no-hostname -k > dmesg.txt``. If the
   issue occurred on a previous boot, use the journalctl ``-b`` flag.

If it helps, I detailed a similar issue last year when I was trying to
get the card loaded in 6.1.
https://kevinquillen.com/getting-intel-arc-770m-work-fedora-37

I also see little mention of this on the net unless I am looking in
the wrong places, this is the only other mention of this issue that I
have found:
https://www.reddit.com/r/Fedora/comments/17amzh9/kernel_versions_65x_wont_work_on_intel_nuc_12/

But I am unaware of what bug that person is referring to in 6.5.x.

Reproducible: Always

--000000000000b0be0b060b4e8649
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Posting here for visibility. I have tried up to the latest=
 6.6.2 kernel with the same result.<div><br></div><div><a href=3D"https://b=
ugzilla.redhat.com/show_bug.cgi?id=3D2248917" target=3D"_blank">https://bug=
zilla.redhat.com/show_bug.cgi?id=3D2248917</a><br><div><br></div><div><pre =
id=3D"m_-5514525523055387588gmail-comment_text_0" style=3D"font-family:&quo=
t;Roboto Mono&quot;,&quot;Noto Sans Mono&quot;,&quot;Ubuntu Mono&quot;,&quo=
t;Segoe UI Mono&quot;,Menlo,Courier,monospace;width:2831.8px;margin:1em;pad=
ding-bottom:1em;word-break:break-word;color:rgb(0,0,0)">1. Please describe =
the problem:

All kernel versions after 6.4.12 are refusing to boot. I took this error ou=
t of the logs:


```
Nov 05 17:56:01 fedora kernel: integrity: Problem loading X.509 certificate=
 -126
Nov 05 17:56:01 fedora kernel: integrity: Problem loading X.509 certificate=
 -126
Nov 05 17:56:04 fedora kernel: i915 0000:03:00.0: [drm] *ERROR* Device is n=
on-operational; MMIO access returns 0xFFFFFFFF!
Nov 05 17:56:04 fedora kernel: i915 0000:03:00.0: Device initialization fai=
led (-5)
Nov 05 17:56:06 fedora kernel: usb 3-3.2.1: 3:1: cannot get freq at ep 0x84
Nov 05 17:56:06 fedora kernel: iwlwifi 0000:00:14.3: WRT: Invalid buffer de=
stination
Nov 05 17:56:08 fedora kernel: iwlwifi 0000:00:14.3: WRT: Invalid buffer de=
stination
Nov 05 17:56:08 fedora kernel: Bluetooth: hci0: Malformed MSFT vendor event=
: 0x02
Nov 05 17:56:08 fedora kernel: iwlwifi 0000:00:14.3: WRT: Invalid buffer de=
stination
Nov 05 17:56:10 fedora kernel: usb 3-3.2.1: 3:1: cannot get freq at ep 0x84
Nov 05 17:56:10 fedora kernel: usb 3-3.2.1: 3:1: cannot get freq at ep 0x84
```

The system crashes immediately when booting and that is the only -p3 output=
 in journalctl. These lines here:


```
Nov 05 17:56:04 fedora kernel: i915 0000:03:00.0: [drm] *ERROR* Device is n=
on-operational; MMIO access returns 0xFFFFFFFF!
Nov 05 17:56:04 fedora kernel: i915 0000:03:00.0: Device initialization fai=
led (-5)
```

This is my Arc 770m GPU in an Intel NUC. It works on all versions up to 6.4=
.12, after that it won&#39;t boot at all (even with 6.5.10). I have pinned =
the default to 6.4.12 so I can continue to boot and do my work.

I have tried everything I can think of, but something has definitely been i=
ntroduced (or removed?) from 6.4.13+ that is crashing Arc GPU.

Does anyone have any idea of something I can try to get around this? I trie=
d looking at what was introduced in 6.4.13 but nothing jumped out at the ca=
use. I am still loading an i915 conf file with &#39;force probe&#39; to ens=
ure the Arc GPU card is loaded - is this still required?

If I boot into 6.4.12 then reboot and select the 6.5.10 kernel from the gru=
b2 menu, it will boot into that just fine with a recognized GPU. But it won=
&#39;t cold boot into newer kernels.

Additional log output from a failed boot:

```

Nov 08 21:42:07 fedora kernel: Setting dangerous option force_probe - taint=
ing kernel
Nov 08 21:42:07 fedora kernel: i915 0000:00:02.0: enabling device (0006 -&g=
t; 0007)
Nov 08 21:42:07 fedora systemd[1]: Finished initrd-parse-etc.service - Moun=
tpoints Configured in the Real Root.
Nov 08 21:42:07 fedora kernel: i915 0000:00:02.0: [drm] VT-d active for gfx=
 access
Nov 08 21:42:07 fedora kernel: i915 0000:00:02.0: [drm] Using Transparent H=
ugepages
Nov 08 21:42:07 fedora systemd[1]: Reached target initrd-fs.target - Initrd=
 File Systems.
Nov 08 21:42:07 fedora systemd[1]: Reached target initrd.target - Initrd De=
fault Target.
Nov 08 21:42:07 fedora systemd[1]: dracut-mount.service - dracut mount hook=
 was skipped because no trigger condition checks were met.
Nov 08 21:42:07 fedora systemd[1]: Starting dracut-pre-pivot.service - drac=
ut pre-pivot and cleanup hook...
Nov 08 21:42:07 fedora kernel: i915 0000:00:02.0: vgaarb: changed VGA decod=
es: olddecodes=3Dio+mem,decodes=3Dnone:owns=3Dmem
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] Finished loading DM=
C firmware i915/adlp_dmc.bin (v2.20)
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: GuC firmware i=
915/adlp_guc_70.bin version 70.13.1
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: HuC firmware i=
915/tgl_huc.bin version 7.9.3
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: HuC: authentic=
ated for all workloads
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: GUC: submissio=
n enabled
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: GUC: SLPC enab=
led
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] GT0: GUC: RC enable=
d
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] Protected Xe Path (=
PXP) protected content support initialized
Nov 08 21:42:08 fedora kernel: [drm] Initialized i915 1.6.0 20201103 for 00=
00:00:02.0 on minor 1
Nov 08 21:42:08 fedora kernel: ACPI: video: Video Device [PEGE] (multi-head=
: yes  rom: no  post: no)
Nov 08 21:42:08 fedora kernel: input: Video Bus as /devices/LNXSYSTM:00/LNX=
SYBUS:00/PNP0A08:00/device:00/device:01/device:02/LNXVIDEO:00/input/input5
Nov 08 21:42:08 fedora kernel: ACPI: video: Video Device [GFX0] (multi-head=
: yes  rom: no  post: no)
Nov 08 21:42:08 fedora kernel: input: Video Bus as /devices/LNXSYSTM:00/LNX=
SYBUS:00/PNP0A08:00/LNXVIDEO:01/input/input6
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] Cannot find any crt=
c or sizes
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] Cannot find any crt=
c or sizes
Nov 08 21:42:08 fedora kernel: i915 0000:00:02.0: [drm] Cannot find any crt=
c or sizes
Nov 08 21:42:08 fedora kernel: usb 3-3.2.4: New USB device found, idVendor=
=3D046d, idProduct=3D0ab7, bcdDevice=3D 0.20
Nov 08 21:42:08 fedora kernel: usb 3-3.2.4: New USB device strings: Mfr=3D3=
, Product=3D1, SerialNumber=3D2
Nov 08 21:42:08 fedora kernel: usb 3-3.2.4: Product: Blue Microphones
Nov 08 21:42:08 fedora kernel: usb 3-3.2.4: Manufacturer: Generic
Nov 08 21:42:08 fedora kernel: usb 3-3.2.4: SerialNumber: 2107BAB010J8
Nov 08 21:42:08 fedora kernel: input: Generic Blue Microphones Consumer Con=
trol as /devices/pci0000:00/0000:00:14.0/usb3/3-3/3-3.2/3-3.2.4/3-3.2.4:1.3=
/0003:046D:0AB7.0003/input/input7
Nov 08 21:42:08 fedora kernel: input: Generic Blue Microphones as /devices/=
pci0000:00/0000:00:14.0/usb3/3-3/3-3.2/3-3.2.4/3-3.2.4:1.3/0003:046D:0AB7.0=
003/input/input8
Nov 08 21:42:08 fedora kernel: hid-generic 0003:046D:0AB7.0003: input,hidde=
v97,hidraw2: USB HID v1.11 Device [Generic Blue Microphones] on usb-0000:00=
:14.0-3.2.4/input3
Nov 08 21:42:10 fedora kernel: i915 0000:03:00.0: [drm] *ERROR* Device is n=
on-operational; MMIO access returns 0xFFFFFFFF!
Nov 08 21:42:10 fedora kernel: i915 0000:03:00.0: Device initialization fai=
led (-5)
Nov 08 21:42:10 fedora kernel: i915: probe of 0000:03:00.0 failed with erro=
r -5
```

This is on an Intel NUC 12 Enthusiast machine. I have the latest BIOS firmw=
are.

<a href=3D"https://www.intel.com/content/www/us/en/products/sku/231480/inte=
l-nuc-12-enthusiast-mini-pc-nuc12snki72va/specifications.html" target=3D"_b=
lank" style=3D"color:rgb(0,104,157);text-decoration-line:none;outline:none"=
>https://www.intel.com/content/www/us/en/products/sku/231480/intel-nuc-12-e=
nthusiast-mini-pc-nuc12snki72va/specifications.html</a>


2. What is the Version-Release number of the kernel:

6.4.13+ up to latest 6.5.10 kernel for Fedora 38 does not work. I am runnin=
g the last working kernel:

6.4.12-200.fc38.x86_64


3. Did it work previously in Fedora? If so, what kernel version did the iss=
ue
   *first* appear?  Old kernels are available for download at
   <a href=3D"https://koji.fedoraproject.org/koji/packageinfo?packageID=3D8=
" target=3D"_blank" style=3D"color:rgb(0,104,157);text-decoration-line:none=
;outline:none">https://koji.fedoraproject.org/koji/packageinfo?packageID=3D=
8</a> :

Issue began with kernel 6.4.13. I had been using the machine successfully f=
rom 6.0-6.4.12.


4. Can you reproduce this issue? If so, please provide the steps to reprodu=
ce
   the issue below:

If I cold boot into any kernel newer than 6.4.12, the boot immediately cras=
hes.=20


5. Does this problem occur with the latest Rawhide kernel? To install the
   Rawhide kernel, run ``sudo dnf install fedora-repos-rawhide`` followed b=
y
   ``sudo dnf update --enablerepo=3Drawhide kernel``:

Unable to try at this time.


6. Are you running any modules that not shipped with directly Fedora&#39;s =
kernel?:

I am loading two conf files at boot:

options i915 force_probe=3D5690

which used to force the GPU to be loaded, and

options snd_hda_codec_hdmi enable_silent_stream=3DN

which fixed an issue with sound not coming out of the monitor.


7. Please attach the kernel logs. You can get the complete kernel log
   for a boot with ``journalctl --no-hostname -k &gt; dmesg.txt``. If the
   issue occurred on a previous boot, use the journalctl ``-b`` flag.

If it helps, I detailed a similar issue last year when I was trying to get =
the card loaded in 6.1.

<a href=3D"https://kevinquillen.com/getting-intel-arc-770m-work-fedora-37" =
target=3D"_blank" style=3D"color:rgb(0,104,157);text-decoration-line:none;o=
utline:none">https://kevinquillen.com/getting-intel-arc-770m-work-fedora-37=
</a>

I also see little mention of this on the net unless I am looking in the wro=
ng places, this is the only other mention of this issue that I have found:

<a href=3D"https://www.reddit.com/r/Fedora/comments/17amzh9/kernel_versions=
_65x_wont_work_on_intel_nuc_12/" target=3D"_blank" style=3D"color:rgb(0,104=
,157);text-decoration-line:none;outline:none">https://www.reddit.com/r/Fedo=
ra/comments/17amzh9/kernel_versions_65x_wont_work_on_intel_nuc_12/</a>

But I am unaware of what bug that person is referring to in 6.5.x.

Reproducible: Always</pre></div></div></div>

--000000000000b0be0b060b4e8649--
