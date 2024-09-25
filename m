Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B32985716
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 12:21:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B3510E7DC;
	Wed, 25 Sep 2024 10:21:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fg+Ws4+s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6E7510E311;
 Wed, 25 Sep 2024 10:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727259662; x=1758795662;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tC6bylWx0dh8mCmIYaf60AcmgXth/3B39YR3wuHwKoQ=;
 b=fg+Ws4+sYR1ybJ4rbxhpX6lq/iyiIgPNRCwcEjZ1JSjKvCJQ3e0uX8+g
 e+fx3KLLu0+c/FLHOgt/IT8oLfmjfmbR5W6YZU/FIUIX9znN+3sgzVg/P
 S0KqrNuVsvo97KSNcx+68xoyqo+wQJKbnIlTBGeZVQc111aobeIbAPLfq
 YFY8m7lB2vLbv4y+8U6DuTYcqHycqXVQi52YO6WJ7/llfOWbBFaoc5NqJ
 dhLpzcO31+ldJXvwf7IH4L0eeGGKXK/fkubWZy5NwZoCt9lXhoJT0K5RH
 907L1UnlfiQE/DpF+gBm7jUH8L9sjsrbpi5FAjGOXTte5LtOHvd8U5xdW Q==;
X-CSE-ConnectionGUID: wYYE8MsqTqi6IV6qYDWXgQ==
X-CSE-MsgGUID: FPOZpSFwTwiO1TOgAD6YYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="30088999"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="30088999"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 03:21:01 -0700
X-CSE-ConnectionGUID: wZI+U/m0SEikaRWkPctC+Q==
X-CSE-MsgGUID: yd/sRU6YTcmvUuKg/vKsvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="76119002"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 03:20:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 01/31] drm/i915: Remove vga and gmbus seq out of
 i915_restore_display
In-Reply-To: <20240924204222.246862-2-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-2-rodrigo.vivi@intel.com>
Date: Wed, 25 Sep 2024 13:20:56 +0300
Message-ID: <87h6a42fw7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 24 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> Restrict this function to only save and restore registers
> functionality. Then, that can be moved out later to under
> display with a proper name.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c  | 6 ++++++
>  drivers/gpu/drm/i915/i915_suspend.c | 6 ------
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 6dc0104a3e36..c5ffcf229f42 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -60,6 +60,7 @@
>  #include "display/intel_pch_refclk.h"
>  #include "display/intel_pps.h"
>  #include "display/intel_sprite_uapi.h"
> +#include "display/intel_vga.h"
>  #include "display/skl_watermark.h"
>  
>  #include "gem/i915_gem_context.h"
> @@ -1167,6 +1168,11 @@ static int i915_drm_resume(struct drm_device *dev)
>  	intel_dmc_resume(display);
>  
>  	i915_restore_display(dev_priv);
> +
> +	intel_vga_redisable(display);
> +
> +	intel_gmbus_reset(dev_priv);
> +

Hate to be nitpicky, but these are now called for !HAS_DISPLAY()
too. Maybe the later patches fix it, but here it's not right.

I agree with the approach though.

>  	intel_pps_unlock_regs_wa(display);
>  
>  	intel_init_pch_refclk(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
> index 9d3d9b983032..fb67b05cd864 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -26,7 +26,6 @@
>  
>  #include "display/intel_de.h"
>  #include "display/intel_gmbus.h"
> -#include "display/intel_vga.h"
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> @@ -118,7 +117,6 @@ void i915_save_display(struct drm_i915_private *dev_priv)
>  
>  void i915_restore_display(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_display *display = &dev_priv->display;
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  
>  	if (!HAS_DISPLAY(dev_priv))
> @@ -134,8 +132,4 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
>  	if (GRAPHICS_VER(dev_priv) <= 4)
>  		intel_de_write(dev_priv, DSPARB(dev_priv),
>  			       dev_priv->regfile.saveDSPARB);
> -
> -	intel_vga_redisable(display);
> -
> -	intel_gmbus_reset(dev_priv);
>  }

-- 
Jani Nikula, Intel
