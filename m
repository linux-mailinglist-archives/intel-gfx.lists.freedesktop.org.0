Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0602DA318
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 23:15:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E633889870;
	Mon, 14 Dec 2020 22:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8DD589870
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 22:15:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23325586-1500050 for multiple; Mon, 14 Dec 2020 22:15:00 +0000
MIME-Version: 1.0
In-Reply-To: <b9269e1c98b34fb6a06fb14a277be599@intel.com>
References: <20201212094354.3023502-1-chris@chris-wilson.co.uk>
 <7021dc5149a24438878f6540a0c4aed8@intel.com>,
 <160797892093.13039.18269573801947438332@build.alporthouse.com>
 <b9269e1c98b34fb6a06fb14a277be599@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Chang, Yu bruce" <yu.bruce.chang@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 22:15:00 +0000
Message-ID: <160798410071.13039.10818205990449584130@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to
 gem_mmappable_aperture_size()
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

Quoting Chang, Yu bruce (2020-12-14 21:52:10)
> 
> >
> >From: Chris Wilson <chris@chris-wilson.co.uk>
> >Sent: Monday, December 14, 2020 12:48 PM
> >To: Chang, Yu bruce; intel-gfx@lists.freedesktop.org
> >Cc: igt-dev@
> >Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to
> gem_mmappable_aperture_size()
> > 
> >Quoting Chang, Yu bruce (2020-12-14 18:45:04)
> >> +/**
> >> + * gem_mappable_aperture_size:
> >> + *
> >> + * Feature test macro to query the kernel for the mappable gpu aperture
> size.
> >> + * This is the area available for GTT memory mappings.
> >> + *
> > + * Returns: The mappable gtt address space size.
> > + */
> > +uint64_t gem_mappable_aperture_size(int fd)
> > +{
> > +       struct pci_device *pci_dev = igt_device_get_pci_device(fd);
> > 
> > Does it make sense to eliminate the function intel_get_pci_device() if not
> > being used anymore? But it can be a separate patch.
> >
> >It's still used by tools. The complication there is that we mostly
> >need to lookup the pci device without loading i915.ko. 
> >-Chris
> >
> 
> That makes sense.
> 
> Then we need to make sure not start from a fix slot to look for GPU device in
> the intel_get_pci_device() below as
> it may not work for a discrete GPU as that slot can be a non-vga device but
> with vendor_id 0x8086.
> 
>         pci_dev = pci_device_find_by_slot(0, 0, 2, 0);
>         if (pci_dev == NULL || pci_dev->vendor_id != 0x8086) {
> 
> So, either add extra check to make sure it is VGA class or always use 
> pci_device_next to search.

It's held true for ~20 years :)

I hear you; for the remaining users, they should probably use the lsgpu
interface to pick the right device to work on (and remove
intel_get_pci_device).

tools/intel_audio_dump.c
tools/intel_backlight.c
tools/intel_display_poller.c
tools/intel_forcewaked.c
tools/intel_gpu_time.c
tools/intel_gtt.c
tools/intel_infoframes.c
tools/intel_lid.c
tools/intel_panel_fitter.c
tools/intel_reg.c
tools/intel_reg_checker.c
tools/intel_watermark.c

A few of those could even be retired.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
