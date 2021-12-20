Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFC747A797
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Dec 2021 11:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC2A10EEA6;
	Mon, 20 Dec 2021 10:15:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B35D810EEA7
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Dec 2021 10:14:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10203"; a="226993866"
X-IronPort-AV: E=Sophos;i="5.88,220,1635231600"; d="scan'208";a="226993866"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 02:14:59 -0800
X-IronPort-AV: E=Sophos;i="5.88,220,1635231600"; d="scan'208";a="613016561"
Received: from ddacost1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.22.217])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 02:14:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Alan Stern <stern@rowland.harvard.edu>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Yby4ooKl43NRm+5y@rowland.harvard.edu>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <Yby4ooKl43NRm+5y@rowland.harvard.edu>
Date: Mon, 20 Dec 2021 12:14:48 +0200
Message-ID: <87ee671t2f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] How to fix screen resolution detection?
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

On Fri, 17 Dec 2021, Alan Stern <stern@rowland.harvard.edu> wrote:
> The screen resolution on my laptop is not reported accurately.  Here's 
> an extract from the output of xdpyinfo:
>
> screen #0:
>   dimensions:    3200x1800 pixels (847x476 millimeters)
>   resolution:    96x96 dots per inch
>
> The number of pixels is correct, but the size and resolution values 
> smack of a bogus default.  The actual width of the screen (determined 
> with a tape measure) is about 11.5 inches (291 mm), which yields a 
> resolution of 280 dots per inch (11 dots per mm), approximately.  
> Most definitely _not_ 96 dpi.
>
> Presumably X gets the size/resolution information from Wayland, which 
> gets it from the kernel, which gets it from the firmware.  So the kernel 
> driver is the logical place to start in figuring where things are going 
> wrong.  The laptop uses i915; here are the relevant lines from the 
> kernel log:
>
> [    0.000000] Linux version 5.14.9-200.fc34.x86_64 (mockbuild@bkernel02.iad2.fedoraproject.org) (gcc (GCC) 11.2.1 20210728 (Red Hat 11.2.1-1), GNU ld version 2.35.2-5.fc34) #1 SMP Thu Sep 30 11:55:35 UTC 2021
>
> [    0.463895] efifb: probing for efifb
> [    0.463913] efifb: framebuffer at 0xe0000000, using 22500k, total 22500k
> [    0.463916] efifb: mode is 3200x1800x32, linelength=12800, pages=1
> [    0.463919] efifb: scrolling: redraw
> [    0.463920] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
> [    0.464028] Console: switching to colour frame buffer device 400x112
> [    0.474894] fb0: EFI VGA frame buffer device
>
> [    2.888858] fb0: switching to inteldrmfb from EFI VGA
> [    2.891260] Console: switching to colour dummy device 80x25
> [    2.891318] i915 0000:00:02.0: vgaarb: deactivate vga console
> [    2.902665] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
> [    2.904833] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/skl_dmc_ver1_27.bin (v1.27)
> [    2.947359] [drm] Initialized i915 1.6.0 20201103 for 0000:00:02.0 on minor 0
> [    2.949468] ACPI: video: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
> [    2.949803] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input9
> [    2.964371] fbcon: i915 (fb0) is primary device
> [    2.979854] Console: switching to colour frame buffer device 400x112
> [    3.012355] i915 0000:00:02.0: [drm] fb0: i915 frame buffer device
>
> Now, I know nothing about the kernel's graphics subsystems.  How can I 
> find out what size/resolution information i915 is getting and passing to 
> Wayland?  If it's wrong, how can I fix it?

I could be wrong, but I think userspace figures the dimensions from the
EDID itself, not through a kernel API.

I actually get slightly different results from xrandr, xdpyinfo, and
edid-decode on the EDID. What does edid-decode tell you for the
dimensions? For me it's 'edid-decode /sys/class/drm/card0-DP-3/edid' but
replace the subdir with your info.

xdpyinfo also gives me 96x96 dpi, probably bogus.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
