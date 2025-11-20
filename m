Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B143AC7192F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 01:41:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D234B10E6BC;
	Thu, 20 Nov 2025 00:41:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eX81sfCt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68DF210E6BC;
 Thu, 20 Nov 2025 00:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763599288; x=1795135288;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qtrJmawUkvDVuWsz0jjDbpNe10YSukr2c20zS91wZGM=;
 b=eX81sfCtJj3ehnXqBwXEIVc7A+UvFlFInofKRoEWXzHW/hoklueCO5hh
 1HH8GRLi+k89GIqxVLtRDocGFu3ZXYvzqJWaGEaQ9AH90rCUgC7DUdRa8
 Xnad3l1s7jVOP3cP5E55GUHHaWnQkMCWsXC1mHf+8q9phQvaQ/uDl3hCs
 U5+dycp1R73WolOG950urnMUAJKHY+lDGu1ZAeFtIRN8T6fE9hkDeg+/V
 Oxln/UidcBBQPjHDqw35QtAIUug7bEOI1B5ZYdwMaUgic8U86gszeeMYt
 gDiwO9HK4YBng3Lz7U7NTPaOwTNQ5/CT0F3dGWFhG1bi24/ERBUn8DFOU A==;
X-CSE-ConnectionGUID: Sj9iYJqeQ7CkMOJI63FGyg==
X-CSE-MsgGUID: w44mlUXSRGWQ78v4oFl9aA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="68263305"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="68263305"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 16:41:27 -0800
X-CSE-ConnectionGUID: 5VpBnuA4TS2zTJw6wpXsKA==
X-CSE-MsgGUID: k+jHYCLRSEmg8+7i65AsAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="191335035"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.89])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 16:41:26 -0800
Date: Thu, 20 Nov 2025 02:41:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Stop touching vga on post enable
Message-ID: <aR4zAKLW0CZttPfi@intel.com>
References: <20251119-ioport-v1-1-ec43f1e12c49@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251119-ioport-v1-1-ec43f1e12c49@intel.com>
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

On Wed, Nov 19, 2025 at 12:04:38PM -0800, Lucas De Marchi wrote:
> Touching VGA_MIS_W goes back to commit f9dcb0dfee98 ("drm/i915: touch
> VGA MSR after we enable the power well"). That case doesn't seem to be
> reproduced anymore, even considering that the unclaimed accesses are now
> printed with debug log level. Also note that the original issue was
> reproduced with vgacon, but that is not used anymore on x86 when booted
> with EFI.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
> WIP to drop the VGA accesses and allow xe driver to be used with
> non-x86 platforms. There are multiple patches floating around, some
> disabling code for non-x86, some disabling for !CONFIG_VGA_CONSOLE.
> 
> For this v1, I think the entire workaround can be removed. Sending it
> for CI while I look into the other cases.

I think this would need to be tested on a machine that has a
second VGA card in it to make the the iGPU doesn't end up eating
the VGA memory accesses when they should be going to the other
card.

I was perusing the CPU/chipset docs for this a bit, in the hopes
of finding some sane way to turn off VGA decoding for the iGPU.
Alas no such luck. According to the docs the iGPU always has the
highest decode priority, and the accesses won't get forwarded
to PCIe/DMI/PCI if the iGPU grabs them.

IIRC the docs say that the reset state for the VGA memory decode
should be "off". But I don't think that's quite true given that
we had to add this workaround.

> 
> Get some initial tests running to see if it breaks the world before
> ICL, particularly before gen7 where unclaimed accesses for non-display-engine
> registers worked, systems booted without EFI, etc. If this is not an
> issue anymore, a patch completely dropping the has_vga could follow
> since this is the only user.
> ---
>  .../gpu/drm/i915/display/intel_display_power_well.c   |  3 ---
>  drivers/gpu/drm/i915/display/intel_vga.c              | 19 -------------------
>  2 files changed, 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index f4f7e73acc874..01213f7d1c9ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -205,9 +205,6 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
>  static void hsw_power_well_post_enable(struct intel_display *display,
>  				       u8 irq_pipe_mask, bool has_vga)
>  {
> -	if (has_vga)
> -		intel_vga_reset_io_mem(display);
> -
>  	if (irq_pipe_mask)
>  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
> index 6e125564db34c..97d4c06c2e2fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -76,25 +76,6 @@ void intel_vga_disable(struct intel_display *display)
>  	intel_de_posting_read(display, vga_reg);
>  }
>  
> -void intel_vga_reset_io_mem(struct intel_display *display)
> -{
> -	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> -
> -	/*
> -	 * After we re-enable the power well, if we touch VGA register 0x3d5
> -	 * we'll get unclaimed register interrupts. This stops after we write
> -	 * anything to the VGA MSR register. The vgacon module uses this
> -	 * register all the time, so if we unbind our driver and, as a
> -	 * consequence, bind vgacon, we'll get stuck in an infinite loop at
> -	 * console_unlock(). So make here we touch the VGA MSR register, making
> -	 * sure vgacon can keep working normally without triggering interrupts
> -	 * and error messages.
> -	 */
> -	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
> -	outb(inb(VGA_MIS_R), VGA_MIS_W);
> -	vga_put(pdev, VGA_RSRC_LEGACY_IO);
> -}
> -
>  int intel_vga_register(struct intel_display *display)
>  {
>  
> 
> 
> 

-- 
Ville Syrjälä
Intel
