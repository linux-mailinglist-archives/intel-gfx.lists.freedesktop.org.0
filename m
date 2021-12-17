Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CB2479172
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 17:26:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D712410E495;
	Fri, 17 Dec 2021 16:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 400 seconds by postgrey-1.36 at gabe;
 Fri, 17 Dec 2021 16:26:28 UTC
Received: from netrider.rowland.org (netrider.rowland.org [192.131.102.5])
 by gabe.freedesktop.org (Postfix) with SMTP id D53C010E481
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 16:26:28 +0000 (UTC)
Received: (qmail 851237 invoked by uid 1000); 17 Dec 2021 11:19:46 -0500
Date: Fri, 17 Dec 2021 11:19:46 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Yby4ooKl43NRm+5y@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] How to fix screen resolution detection?
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

The screen resolution on my laptop is not reported accurately.  Here's 
an extract from the output of xdpyinfo:

screen #0:
  dimensions:    3200x1800 pixels (847x476 millimeters)
  resolution:    96x96 dots per inch

The number of pixels is correct, but the size and resolution values 
smack of a bogus default.  The actual width of the screen (determined 
with a tape measure) is about 11.5 inches (291 mm), which yields a 
resolution of 280 dots per inch (11 dots per mm), approximately.  
Most definitely _not_ 96 dpi.

Presumably X gets the size/resolution information from Wayland, which 
gets it from the kernel, which gets it from the firmware.  So the kernel 
driver is the logical place to start in figuring where things are going 
wrong.  The laptop uses i915; here are the relevant lines from the 
kernel log:

[    0.000000] Linux version 5.14.9-200.fc34.x86_64 (mockbuild@bkernel02.iad2.fedoraproject.org) (gcc (GCC) 11.2.1 20210728 (Red Hat 11.2.1-1), GNU ld version 2.35.2-5.fc34) #1 SMP Thu Sep 30 11:55:35 UTC 2021

[    0.463895] efifb: probing for efifb
[    0.463913] efifb: framebuffer at 0xe0000000, using 22500k, total 22500k
[    0.463916] efifb: mode is 3200x1800x32, linelength=12800, pages=1
[    0.463919] efifb: scrolling: redraw
[    0.463920] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
[    0.464028] Console: switching to colour frame buffer device 400x112
[    0.474894] fb0: EFI VGA frame buffer device

[    2.888858] fb0: switching to inteldrmfb from EFI VGA
[    2.891260] Console: switching to colour dummy device 80x25
[    2.891318] i915 0000:00:02.0: vgaarb: deactivate vga console
[    2.902665] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
[    2.904833] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/skl_dmc_ver1_27.bin (v1.27)
[    2.947359] [drm] Initialized i915 1.6.0 20201103 for 0000:00:02.0 on minor 0
[    2.949468] ACPI: video: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[    2.949803] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input9
[    2.964371] fbcon: i915 (fb0) is primary device
[    2.979854] Console: switching to colour frame buffer device 400x112
[    3.012355] i915 0000:00:02.0: [drm] fb0: i915 frame buffer device

Now, I know nothing about the kernel's graphics subsystems.  How can I 
find out what size/resolution information i915 is getting and passing to 
Wayland?  If it's wrong, how can I fix it?

Thanks,

Alan Stern
