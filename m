Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85270218FCD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 20:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 820B06E171;
	Wed,  8 Jul 2020 18:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 401 seconds by postgrey-1.36 at gabe;
 Wed, 08 Jul 2020 18:39:33 UTC
Received: from netrider.rowland.org (netrider.rowland.org [192.131.102.5])
 by gabe.freedesktop.org (Postfix) with SMTP id 372436E171
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 18:39:33 +0000 (UTC)
Received: (qmail 786862 invoked by uid 1000); 8 Jul 2020 14:32:51 -0400
Date: Wed, 8 Jul 2020 14:32:51 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200708183251.GA785857@rowland.harvard.edu>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] How to set i915drmfb text-mode resolution?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

My laptop boots in EFI mode.  It starts out using the efifb driver but 
then switches over to i915drmfb.  Relevant portions of the dmesg log:

[    0.933464] efifb: probing for efifb
[    0.933481] efifb: framebuffer at 0xe0000000, using 22500k, total 22500k
[    0.933483] efifb: mode is 3200x1800x32, linelength=12800, pages=1
[    0.933484] efifb: scrolling: redraw
[    0.933486] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
[    0.933585] Console: switching to colour frame buffer device 400x112
[    0.937376] fb0: EFI VGA frame buffer device
...
[    3.388790] fb0: switching to inteldrmfb from EFI VGA
[    3.388900] Console: switching to colour dummy device 80x25
[    3.388931] i915 0000:00:02.0: vgaarb: deactivate vga console
[    3.392050] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    3.392050] [drm] Driver supports precise vblank timestamp query.
[    3.392514] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
[    3.394118] [drm] Finished loading DMC firmware i915/skl_dmc_ver1_27.bin (v1.27)
[    3.408251] i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]] Panel advertises DPCD backlight support, but VBT disagrees. If your backlight controls don't work try booting with i915.enable_dpcd_backlight=1. If your machine needs this, please file a _new_ bug report on drm/i915, see https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs for details.
[    3.424431] [drm] Initialized i915 1.6.0 20200114 for 0000:00:02.0 on minor 0
[    3.426217] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[    3.427462] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input9
[    3.446391] fbcon: i915drmfb (fb0) is primary device
[    3.455586] Console: switching to colour frame buffer device 400x112
[    3.491870] i915 0000:00:02.0: fb0: i915drmfb frame buffer device

The problem is that the laptop's screen has a resolution somewhere 
around 280 pixels/inch -- the screen size is about 11.5 by 6.5 inches.  
That's great in graphics mode, but it means that the standard VGA fonts 
on the text-mode VT console screen are practically unreadable; the 
characters are about 4 points tall!

I would like the characters to show up about 2.5 times larger in each 
dimension than they do now.  Is there any way to tell the system to set 
the resolution to 1280x720 pixels or to use a 160x45 character array 
while in text mode?

I tried looking for documentation in this area but couldn't find 
anything useful.

Thank you,

Alan Stern
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
