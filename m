Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8283847B562
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Dec 2021 22:50:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5834310FA84;
	Mon, 20 Dec 2021 21:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from netrider.rowland.org (netrider.rowland.org [192.131.102.5])
 by gabe.freedesktop.org (Postfix) with SMTP id 42C6110FA84
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Dec 2021 21:50:26 +0000 (UTC)
Received: (qmail 921894 invoked by uid 1000); 20 Dec 2021 16:50:24 -0500
Date: Mon, 20 Dec 2021 16:50:24 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YcD6oLGZmei7ipPG@rowland.harvard.edu>
References: <Yby4ooKl43NRm+5y@rowland.harvard.edu> <87ee671t2f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ee671t2f.fsf@intel.com>
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

On Mon, Dec 20, 2021 at 12:14:48PM +0200, Jani Nikula wrote:
> On Fri, 17 Dec 2021, Alan Stern <stern@rowland.harvard.edu> wrote:
> > The screen resolution on my laptop is not reported accurately.  Here's 
> > an extract from the output of xdpyinfo:
> >
> > screen #0:
> >   dimensions:    3200x1800 pixels (847x476 millimeters)
> >   resolution:    96x96 dots per inch
> >
> > The number of pixels is correct, but the size and resolution values 
> > smack of a bogus default.  The actual width of the screen (determined 
> > with a tape measure) is about 11.5 inches (291 mm), which yields a 
> > resolution of 280 dots per inch (11 dots per mm), approximately.  
> > Most definitely _not_ 96 dpi.
> >
> > Presumably X gets the size/resolution information from Wayland, which 
> > gets it from the kernel, which gets it from the firmware.  So the kernel 
> > driver is the logical place to start in figuring where things are going 
> > wrong.  The laptop uses i915; here are the relevant lines from the 
> > kernel log:
> >
> > [    0.000000] Linux version 5.14.9-200.fc34.x86_64 (mockbuild@bkernel02.iad2.fedoraproject.org) (gcc (GCC) 11.2.1 20210728 (Red Hat 11.2.1-1), GNU ld version 2.35.2-5.fc34) #1 SMP Thu Sep 30 11:55:35 UTC 2021
> >
> > [    0.463895] efifb: probing for efifb
> > [    0.463913] efifb: framebuffer at 0xe0000000, using 22500k, total 22500k
> > [    0.463916] efifb: mode is 3200x1800x32, linelength=12800, pages=1
> > [    0.463919] efifb: scrolling: redraw
> > [    0.463920] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
> > [    0.464028] Console: switching to colour frame buffer device 400x112
> > [    0.474894] fb0: EFI VGA frame buffer device
> >
> > [    2.888858] fb0: switching to inteldrmfb from EFI VGA
> > [    2.891260] Console: switching to colour dummy device 80x25
> > [    2.891318] i915 0000:00:02.0: vgaarb: deactivate vga console
> > [    2.902665] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
> > [    2.904833] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/skl_dmc_ver1_27.bin (v1.27)
> > [    2.947359] [drm] Initialized i915 1.6.0 20201103 for 0000:00:02.0 on minor 0
> > [    2.949468] ACPI: video: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
> > [    2.949803] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input9
> > [    2.964371] fbcon: i915 (fb0) is primary device
> > [    2.979854] Console: switching to colour frame buffer device 400x112
> > [    3.012355] i915 0000:00:02.0: [drm] fb0: i915 frame buffer device
> >
> > Now, I know nothing about the kernel's graphics subsystems.  How can I 
> > find out what size/resolution information i915 is getting and passing to 
> > Wayland?  If it's wrong, how can I fix it?
> 
> I could be wrong, but I think userspace figures the dimensions from the
> EDID itself, not through a kernel API.
> 
> I actually get slightly different results from xrandr, xdpyinfo, and
> edid-decode on the EDID. What does edid-decode tell you for the
> dimensions? For me it's 'edid-decode /sys/class/drm/card0-DP-3/edid' but
> replace the subdir with your info.
> 
> xdpyinfo also gives me 96x96 dpi, probably bogus.

Here's the result:

# edid-decode -s /sys/class/drm/card0-eDP-1/edid
Block 0, Base EDID:
  EDID Structure Version & Revision: 1.4
  Vendor & Product Identification:
    Manufacturer: SDC
    Model: 22602
    Made in: 2015
  Basic Display Parameters & Features:
    Digital display
    Bits per primary color channel: 8
    DisplayPort interface
    Maximum image size: 29 cm x 17 cm
    Gamma: 2.20
    DPMS levels: Standby Suspend Off
    Supported color formats: RGB 4:4:4, YCrCb 4:4:4
    First detailed timing includes the native pixel format and preferred refresh rate
  Color Characteristics:
    Red  : 0.6396, 0.3300
    Green: 0.2998, 0.5996
    Blue : 0.1503, 0.0595
    White: 0.3134, 0.3291
  Established Timings I & II: none
  Standard Timings: none
  Detailed Timing Descriptors:
    DTD 1:  3200x1800   60.000 Hz  16:9   108.960 kHz  361.310 MHz (293 mm x 165 mm)
                 Hfront   48 Hsync  32 Hback  36 Hpol N
                 Vfront    2 Vsync   5 Vback   9 Vpol N
    Manufacturer-Specified Display Descriptor (0x0f): 00 0f 00 00 00 00 00 00 00 00 00 37 82 05 46 00 '...........7..F.'
    Alphanumeric Data String: 'SAMSUNG'
    Alphanumeric Data String: '133YL02-C02'
Checksum: 0x41

The 293 mm x 165 mm values listed on the "DTD 1" line seem right.  
Maybe a little larger than the actual size but close enough.

So it looks as though the problem must lie in userspace (Wayland or X).  
Any advice on whom I should ask next?

Alan Stern
