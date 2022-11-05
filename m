Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A31F361DBA6
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 16:28:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984E710E002;
	Sat,  5 Nov 2022 15:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 614 seconds by postgrey-1.36 at gabe;
 Sat, 05 Nov 2022 15:28:23 UTC
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk
 [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D256C10E002
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Nov 2022 15:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wnC5yWyaH7dm/O2Yw8LvI1g9t3ej3aJICJenUgzJq+E=; b=S+5SAAVE7nrByQsWNaEeVqzp99
 KL7jE/eSIoV7QPyb7Bx8aeO7o9z9oDWVIE82dbn63IsWlaF7zh2DIewlzaigHBkfhnKz19f7JXtsd
 WKzkVxg0zqESc2NUUFxKHHRcjBwuqmzC/AIYab1rxjlhs3ebeV/9R9RxdH7a8s1mchZ06DGrkZrNK
 PGr6LuYLFCyZV7hYiorWlDC27kV4NaHcLuX334TPGLRICy7pLLA/IjCZh75ruXs2V2/5rak2PkKp2
 v+NFI8T/MnOhEiifyIz0hfYrtZlwL/8zkZ8oLli5w1yEicoGp8oaPJpz8M+Khm+Y619p4BdTOhIIo
 i1vc0/fA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:35124)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1orKvE-0000JE-QC; Sat, 05 Nov 2022 15:17:24 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1orKvC-0001xI-TE; Sat, 05 Nov 2022 15:17:22 +0000
Date: Sat, 5 Nov 2022 15:17:22 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y2Z+gi8uhdRji7Co@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] BUG: i915: flickering/temporary artifacts after resume
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

Hi,

I have a HP Pavilion 15" laptop that occasionally misbehaves after a
resume from suspend mode. The problem is obvious when the screen
updates e.g. after moving the mouse and the window focus changing, or
when a terminal scrolls, I get a ficker of random short horizontal
white lines over the top of the windows that then disappear. These
appear to be predominantly focused towards the top of the screen,
although they do also occur lower down but less obviously.

Soemtimes these artifacts don't disappear until the next update - I
attempted to capture them, but of course that provokes another screen
update and they disappear.

When this problem occurs, suspending and resuming again doesn't appear
to fix the issue - only a reboot does.

Environment:

00:02.0 VGA compatible controller: Intel Corporation HD Graphics 620 (rev 02) (prog-if 00 [VGA controller])
        DeviceName: Intel Kabylake HD Graphics ULT GT2
        Subsystem: Hewlett-Packard Company HD Graphics 620
        Flags: bus master, fast devsel, latency 0, IRQ 130, IOMMU group 1
        Memory at a0000000 (64-bit, non-prefetchable) [size=16M]
        Memory at 90000000 (64-bit, prefetchable) [size=256M]
        I/O ports at 4000 [size=64]
        Expansion ROM at 000c0000 [virtual] [disabled] [size=128K]
        Capabilities: [40] Vendor Specific Information: Len=0c <?>
        Capabilities: [70] Express Root Complex Integrated Endpoint, MSI 00
        Capabilities: [ac] MSI: Enable+ Count=1/1 Maskable- 64bit-
        Capabilities: [d0] Power Management version 2
        Capabilities: [100] Process Address Space ID (PASID)
        Capabilities: [200] Address Translation Service (ATS)
        Capabilities: [300] Page Request Interface (PRI)
        Kernel driver in use: i915
        Kernel modules: i915

Debian Bullseye (stable), Xorg 1.20.11, libdrm 2.4.104, intel xorg
driver 2.99.917+git20200714.

Kernel messages related to DRM:

Linux version 5.10.0-19-amd64 (debian-kernel@lists.debian.org) (gcc-10 (Debian 1
0.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2) #1 SMP Debian
 5.10.149-1 (2022-10-17)
...
i915 0000:00:02.0: [drm] VT-d active for gfx access
checking generic (90000000 408000) vs hw (a0000000 1000000)
checking generic (90000000 408000) vs hw (90000000 10000000)
fb0: switching to inteldrmfb from EFI VGA
Console: switching to colour dummy device 80x25
i915 0000:00:02.0: vgaarb: deactivate vga console
i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
i915 0000:00:02.0: firmware: direct-loading firmware i915/kbl_dmc_ver1_04.bin
i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/kbl_dmc_ver1_04.bin (v1.4)
[drm] Initialized i915 1.6.0 20200917 for 0000:00:02.0 on minor 0
ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input6
fbcon: i915drmfb (fb0) is primary device
Console: switching to colour frame buffer device 170x48
i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device
mei_hdcp 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound 0000:00:02.0 (ops i915_hdcp_component_ops [i915])
snd_hda_intel 0000:00:1f.3: bound 0000:00:02.0 (ops i915_audio_component_bind_ops [i915])
(NULL device *): firmware: direct-loading firmware i915/kbl_dmc_ver1_04.bin
mei_hdcp 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound 0000:00:02.0 (
ops i915_hdcp_component_ops [i915])

The last two lines repeat each time the system is suspended/resumed.

No errors or warnings appear to be logged either from the kernel nor in
the Xorg log file specific to i915 (there's the usual Xorg whinging
about the system being too slow... so an i5-7200U 2.5GHz isn't fast
enough for Xorg!)

It feels like some setting within the Intel GPU hardware that controls
memory access timing isn't being properly restored.

Is this a known issue?

Thanks.

Russell.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
