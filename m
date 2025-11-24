Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BD1C8237E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 20:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4328B10E2C3;
	Mon, 24 Nov 2025 19:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uqo14Mnf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A736710E260;
 Mon, 24 Nov 2025 19:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764011022; x=1795547022;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cu/eMg6PFMhrIdRF5tf9+n8bqehM2Ng0DLuxLQIICLs=;
 b=Uqo14MnfSWF1qMmSf/7z1IGS4JPqcdTeJNliqocMpLtw8nHs6YKx72RH
 N1k5ykZY34ZGVZbAdh7L7ZcLb95/l4URFG2he/5qrm6pGVlghx6uVQr1y
 xCOm3B9uiM7+pQpX8qVNT7yYf3x3P5Sd0mL3Ek6l8Zhgbm6l7fmiU24Go
 uciQ0w9kFbAzhGLOP1EDP0RZxSSi9ZcbpbVPPxjqmtdvUkoINADxd/3G3
 PWSEBxQZOSXu3jXKYXM0QnfUbd8VKllRyqm7C5rWGKNySAQrpiXTpb+o8
 62WIiLphFpTNhE3nxEOKKzKpO3h/ocHpqqUkqznOkYXZUgwQOaqRwSwc/ g==;
X-CSE-ConnectionGUID: H8VcPHO2RpyPueVdPWtyaA==
X-CSE-MsgGUID: d/cTy/UHQe6CWjd527yrHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="68611227"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="68611227"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 11:03:41 -0800
X-CSE-ConnectionGUID: vR7Tx6QRQvWlwNH2gq9Wfg==
X-CSE-MsgGUID: aLWZpi1tRAuJguMgbFaIvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="193212210"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO localhost)
 ([10.124.222.165])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 11:03:40 -0800
Date: Mon, 24 Nov 2025 21:03:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Stop touching vga on post enable
Message-ID: <aSSsCdAUF206QySm@intel.com>
References: <20251119-ioport-v1-1-ec43f1e12c49@intel.com>
 <aR4zAKLW0CZttPfi@intel.com>
 <p5nf5oxagtpoil4iv4xdwria22v5kg5lwkuy3hhzpvm5xd6pdc@ggzlv6v2kyvi>
 <aSD0DpGKeOCF1LUZ@intel.com>
 <udz3nrp4b4fe3jnpoc2fhg7sy3oh5thtzany25yc5zjcva33ey@vh4hh2sdrivy>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <udz3nrp4b4fe3jnpoc2fhg7sy3oh5thtzany25yc5zjcva33ey@vh4hh2sdrivy>
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

On Fri, Nov 21, 2025 at 07:46:05PM -0600, Lucas De Marchi wrote:
> On Sat, Nov 22, 2025 at 01:21:50AM +0200, Ville Syrjälä wrote:
> >On Wed, Nov 19, 2025 at 10:28:20PM -0600, Lucas De Marchi wrote:
> >> On Thu, Nov 20, 2025 at 02:41:22AM +0200, Ville Syrjälä wrote:
> >> >On Wed, Nov 19, 2025 at 12:04:38PM -0800, Lucas De Marchi wrote:
> >> >> Touching VGA_MIS_W goes back to commit f9dcb0dfee98 ("drm/i915: touch
> >> >> VGA MSR after we enable the power well"). That case doesn't seem to be
> >> >> reproduced anymore, even considering that the unclaimed accesses are now
> >> >> printed with debug log level. Also note that the original issue was
> >> >> reproduced with vgacon, but that is not used anymore on x86 when booted
> >> >> with EFI.
> >> >>
> >> >> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >> >> ---
> >> >> WIP to drop the VGA accesses and allow xe driver to be used with
> >> >> non-x86 platforms. There are multiple patches floating around, some
> >> >> disabling code for non-x86, some disabling for !CONFIG_VGA_CONSOLE.
> >> >>
> >> >> For this v1, I think the entire workaround can be removed. Sending it
> >> >> for CI while I look into the other cases.
> >> >
> >> >I think this would need to be tested on a machine that has a
> >> >second VGA card in it to make the the iGPU doesn't end up eating
> >> >the VGA memory accesses when they should be going to the other
> >> >card.
> >> >
> >> >I was perusing the CPU/chipset docs for this a bit, in the hopes
> >> >of finding some sane way to turn off VGA decoding for the iGPU.
> >> >Alas no such luck. According to the docs the iGPU always has the
> >> >highest decode priority, and the accesses won't get forwarded
> >> >to PCIe/DMI/PCI if the iGPU grabs them.
> >> >
> >> >IIRC the docs say that the reset state for the VGA memory decode
> >> >should be "off". But I don't think that's quite true given that
> >> >we had to add this workaround.
> >>
> >> confused... What are you are saying seems to be something about
> >> the vga accesses in intel_vga_disable().
> >>
> >> commit f9dcb0dfee98 ("drm/i915: touch VGA MSR after we enable the power well")
> >> describes it as:
> >>
> >> 	- 1 igpu with eDP + HDMI
> >> 	- after power well is enabled/disabled, drop the drm, and unbind
> >> 	  vtcon (note it's not unbinding the module). Note that it's not
> >> 	  about unbinding the module.
> >>
> >> And that was caused by our printk from inside the irq handler causing
> >> things to be printed via vgacon and that generating an interrupt that
> >> print something again, creating a loop. I'm not sure what platform that
> >> was about back in 2013, but looking around at the code I suppose it was
> >> Ironlake and in the irq handler calling intel_uncore_check_errors().
> >
> >It was hsw or bdw. Earlier platforms don't have power wells.
> >
> >>
> >> 12 years later we have a few different things:
> >>
> >> 	- I don't see us handling intel_uncore_check_errors() the way we
> >> 	  were before, inside the irq handler. It seems commit
> >> 	  7571494004d8 ("drm/i915: Do one shot unclaimed mmio detection
> >> 	  less frequently") moved it out from the irq path (it makes
> >> 	  sense not printing to the console from inside the irq handler)
> >
> >On some platforms there is an actual error interrupt that
> >gets triggered by unclaimed mmio acceses.
> >
> >> 	- vgacon is not really used anymore. If it was only this, we
> >> 	  could add a check and do it conditionally, but to me it seems
> >> 	  we can completely drop this
> >
> >It's not really only about vgacon. If anyone actually wants VGA
> >memory accesses to go to some external GPU then the iGPU has to
> >be told to not claim them. And that can only be done by poking
> >that particular VGA register.
> 
> but here we are *not* disabling the decoding.

The reset value has VGA memory deocding disabled.

> We are reading the
> register and writing the same value back:
> 
> 	outb(inb(VGA_MIS_R), VGA_MIS_W);
> 
> I guess you're talking about bit 1? If that is needed on a platform
> we are supposed to enable/disable it on the callback from the vgaarb
> rather than here. That would make vga_get(pdev, ...) to actually select
> the device.  So for igpu it would write 0 to that bit when disabling.
> 
> This specific path was added in the commit mentioned above to allow
> access to register 0x3D5, that is used by vgacon, without causing
> unclaimed registers.

Ah I remembered it being about the VGA memory somehow. But I guess
it might be about the the MDA vs. CGA selection. I guess when it
comes out of reset it's in MDA mode and that apparently causes it
to not claim the CGA range accesses.

Hmm, but the documented reset value indeed has MDA selected, so
I'm not sure how writing the same value back fixes aything then
(assuming the docs are correct).

I can't actually figure out from the CPU docs how the MDA decoding
happens :/

> To me that indicates more a bug in the unclaimed
> register detection on that platform rather than something we need to carry
> forward. Particularly because on later platforms we actually don't
> have an interrupt on unclaimed registers.
> 
> An alternative to not break anything would be to check for dgfx or
> a suitable gen that doesn't have such interrupt. From bspec 4248 it
> seems to be since BDW. Would that be better?

Someone should actually reverse engineer this properly before we
go implementing random things.

-- 
Ville Syrjälä
Intel
