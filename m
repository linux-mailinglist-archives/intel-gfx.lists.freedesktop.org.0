Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1EEC7BF03
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Nov 2025 00:21:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D428010E919;
	Fri, 21 Nov 2025 23:21:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CvC4Ry47";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0412310E0AC;
 Fri, 21 Nov 2025 23:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763767315; x=1795303315;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cUNdBmadhsVJ+4KgNdMnAaKbOb8ZVcXaa3nijOTBos0=;
 b=CvC4Ry47X6D8yLiO1TwLupsILBLiqHE5YRaVfvWwj8CZzV6qRmgF9P2m
 +AAJcqFlobWSHziQStFUP/gGX1Z9HChGa6G1qMATLsJBcbYYiC5/KdfdR
 dIDmdNMbZvl63JUUl33081nUagZXd+SSD4AB4d6trjot+BZnrm6ins60q
 XRa2t3HkZAmOHKdKb6OQA/5VFOXt0w9gZZF431cafusFG7EDhdV8ZT1Zv
 KDO5wj3GsmX1XcWM8bGIX5GNrHElfrGVabqMmZiJvD5uBhjDCdo/1K++M
 Tryna+A3Sd8YjCorBG9vPNwWaD2P4N2PTqgr2kvrT3/SR3+LaPj0I8IRK g==;
X-CSE-ConnectionGUID: v33LagLuRx+n38/gmMc9OA==
X-CSE-MsgGUID: Q72ptR9RTL2OEzDQvD+uJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="65804715"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="65804715"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 15:21:55 -0800
X-CSE-ConnectionGUID: GOeNxQyASxGflpfngEEO+Q==
X-CSE-MsgGUID: X0rfjaQHQAyY+RLcn+1wcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="191491007"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.125])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 15:21:53 -0800
Date: Sat, 22 Nov 2025 01:21:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Stop touching vga on post enable
Message-ID: <aSD0DpGKeOCF1LUZ@intel.com>
References: <20251119-ioport-v1-1-ec43f1e12c49@intel.com>
 <aR4zAKLW0CZttPfi@intel.com>
 <p5nf5oxagtpoil4iv4xdwria22v5kg5lwkuy3hhzpvm5xd6pdc@ggzlv6v2kyvi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <p5nf5oxagtpoil4iv4xdwria22v5kg5lwkuy3hhzpvm5xd6pdc@ggzlv6v2kyvi>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Nov 19, 2025 at 10:28:20PM -0600, Lucas De Marchi wrote:
> On Thu, Nov 20, 2025 at 02:41:22AM +0200, Ville Syrjälä wrote:
> >On Wed, Nov 19, 2025 at 12:04:38PM -0800, Lucas De Marchi wrote:
> >> Touching VGA_MIS_W goes back to commit f9dcb0dfee98 ("drm/i915: touch
> >> VGA MSR after we enable the power well"). That case doesn't seem to be
> >> reproduced anymore, even considering that the unclaimed accesses are now
> >> printed with debug log level. Also note that the original issue was
> >> reproduced with vgacon, but that is not used anymore on x86 when booted
> >> with EFI.
> >>
> >> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >> ---
> >> WIP to drop the VGA accesses and allow xe driver to be used with
> >> non-x86 platforms. There are multiple patches floating around, some
> >> disabling code for non-x86, some disabling for !CONFIG_VGA_CONSOLE.
> >>
> >> For this v1, I think the entire workaround can be removed. Sending it
> >> for CI while I look into the other cases.
> >
> >I think this would need to be tested on a machine that has a
> >second VGA card in it to make the the iGPU doesn't end up eating
> >the VGA memory accesses when they should be going to the other
> >card.
> >
> >I was perusing the CPU/chipset docs for this a bit, in the hopes
> >of finding some sane way to turn off VGA decoding for the iGPU.
> >Alas no such luck. According to the docs the iGPU always has the
> >highest decode priority, and the accesses won't get forwarded
> >to PCIe/DMI/PCI if the iGPU grabs them.
> >
> >IIRC the docs say that the reset state for the VGA memory decode
> >should be "off". But I don't think that's quite true given that
> >we had to add this workaround.
> 
> confused... What are you are saying seems to be something about
> the vga accesses in intel_vga_disable(). 
> 
> commit f9dcb0dfee98 ("drm/i915: touch VGA MSR after we enable the power well")
> describes it as: 
> 
> 	- 1 igpu with eDP + HDMI
> 	- after power well is enabled/disabled, drop the drm, and unbind
> 	  vtcon (note it's not unbinding the module). Note that it's not
> 	  about unbinding the module.
> 
> And that was caused by our printk from inside the irq handler causing
> things to be printed via vgacon and that generating an interrupt that
> print something again, creating a loop. I'm not sure what platform that
> was about back in 2013, but looking around at the code I suppose it was
> Ironlake and in the irq handler calling intel_uncore_check_errors().

It was hsw or bdw. Earlier platforms don't have power wells.

> 
> 12 years later we have a few different things:
> 
> 	- I don't see us handling intel_uncore_check_errors() the way we
> 	  were before, inside the irq handler. It seems commit
> 	  7571494004d8 ("drm/i915: Do one shot unclaimed mmio detection
> 	  less frequently") moved it out from the irq path (it makes
> 	  sense not printing to the console from inside the irq handler)

On some platforms there is an actual error interrupt that
gets triggered by unclaimed mmio acceses.

> 	- vgacon is not really used anymore. If it was only this, we
> 	  could add a check and do it conditionally, but to me it seems
> 	  we can completely drop this

It's not really only about vgacon. If anyone actually wants VGA
memory accesses to go to some external GPU then the iGPU has to
be told to not claim them. And that can only be done by poking
that particular VGA register.

And the power well reset state is apparently somehow screwed up
to cause the iGPU to enable VGA memory decode even though it
should be off by default. Or at least that's how it looks to me.

I supose I might have to stick an extra graphics card to my
hsw and see what's really going on. Hmm, except I'm not sure
the BIOS on that machine lets me have two GPUs...

-- 
Ville Syrjälä
Intel
