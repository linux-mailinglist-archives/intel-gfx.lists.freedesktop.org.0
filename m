Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C9DC58370
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 16:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 403B010E861;
	Thu, 13 Nov 2025 15:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UZOHXPKC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD3910E861;
 Thu, 13 Nov 2025 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763046514; x=1794582514;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mye4mAxAiOrpKsf5XPv6M5uQb9vwsSizfi9RiX3mDEY=;
 b=UZOHXPKCSEHvcI09Y+h6kcgt9glpIPfHb3NRE1Mtazbfi7JGidE9iQCR
 Kt4q8clNznGpOJDVZlLDUX4z/tRS3Hdh3T6mnWxmDpf2yQL/zZUW8g9hA
 pPTN2lvt6sWn6ZoLxFmd8RtHbdLFzq9u1FmsqP7814OLASkkazL197Xo/
 4BwobJeDQn2Cd8M3PSXYvkCpJdiGyWxvV9ODnplKdhkCWIV5XHxl3GkD6
 0mR8ebziYdzyaFbztPE2+46nMA+Wpg2iuOE4OyXdBiswv4KjBo7sDyLkA
 sTe6E3WyLYo3uKrUGn2V0r0g8vDGCm+6sg8qLZTzMQBJvdyfeEISD9VFV g==;
X-CSE-ConnectionGUID: jWstF3WVR8+A0XqFN0C+LQ==
X-CSE-MsgGUID: K08ztX1xSUSFrzZiWfb1jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65055736"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65055736"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:08:33 -0800
X-CSE-ConnectionGUID: UX9m3MPURcC2qBIGf6BYiw==
X-CSE-MsgGUID: xceQhM8pSkC2m6HQ3FtlTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="220329918"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.185])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:08:29 -0800
Date: Thu, 13 Nov 2025 17:08:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com
Subject: Re: [PATCH] drm/i915/gmch: find bridge device locally
Message-ID: <aRX0aqq9p9vVJep6@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
 <20251113133806.696869-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251113133806.696869-1-jani.nikula@intel.com>
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

On Thu, Nov 13, 2025 at 03:38:06PM +0200, Jani Nikula wrote:
> We don't really need the cached i915->gmch.pdev reference. Look up the
> bridge device locally, and remove the final dependency on struct
> drm_i915_private and i915_drv.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_gmch.c | 25 ++++++++++++++++-------
>  1 file changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_gmch.c b/drivers/gpu/drm/i915/display/intel_gmch.c
> index 475f2b6ce39e..9bf36f02a062 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmch.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmch.c
> @@ -9,7 +9,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/intel/i915_drm.h>
>  
> -#include "i915_drv.h"
>  #include "intel_display_core.h"
>  #include "intel_display_types.h"
>  #include "intel_gmch.h"
> @@ -17,18 +16,26 @@
>  
>  static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_decode)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -	struct pci_dev *bridge = i915->gmch.pdev;
> +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> +	struct pci_dev *bridge;
>  	unsigned int reg = DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
>  	u16 gmch_ctrl;
> +	int ret = 0;
> +
> +	bridge = pci_get_domain_bus_and_slot(pci_domain_nr(pdev->bus), 0, PCI_DEVFN(0, 0));
> +	if (!bridge) {
> +		drm_err(display->drm, "bridge device not found\n");
> +		return -EIO;
> +	}
>  
>  	if (pci_read_config_word(bridge, reg, &gmch_ctrl)) {

I think you could just use pci_bus_{read,write}_config_word() and then
you don't need the pci_dev reference. That's what I've used in the
overlay workaround code as well.

I was pondering how this even works on discrete GPUs, but there it
seems the GPU PCI device is devfn=0.0 sitting on its own bus. So it
seems that it should work. Well, work in the sense that it accesses
the correct register. But in reality this code is complete nonsense
as this register is locked by the BIOS and so can't actually be
written by the driver.

The alternative approach would be to use the actual GPU PCI device
on SNB+ since the GGC register is also mirrored there (and I think
also mirrored in MCHBAR, so we could also use MMIO to access it
instead). I suppose it's technically the mirror that we're accessing
on dGPUs here always. On integrated we could choose to use either one.

>  		drm_err(display->drm, "failed to read control word\n");
> -		return -EIO;
> +		ret = -EIO;
> +		goto out;
>  	}
>  
>  	if (!!(gmch_ctrl & INTEL_GMCH_VGA_DISABLE) == !enable_decode)
> -		return 0;
> +		goto out;
>  
>  	if (enable_decode)
>  		gmch_ctrl &= ~INTEL_GMCH_VGA_DISABLE;
> @@ -37,10 +44,14 @@ static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_d
>  
>  	if (pci_write_config_word(bridge, reg, gmch_ctrl)) {
>  		drm_err(display->drm, "failed to write control word\n");
> -		return -EIO;
> +		ret = -EIO;
> +		goto out;
>  	}
>  
> -	return 0;
> +out:
> +	pci_dev_put(bridge);
> +
> +	return ret;
>  }
>  
>  unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
