Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC40BA964B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 15:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A214510E162;
	Mon, 29 Sep 2025 13:45:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KtHJ69VZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4802F10E162
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Sep 2025 13:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759153516; x=1790689516;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LM/CaZ/BxKC6anU3+oV4kYpJ4vRie2drbHMUDFCdmDo=;
 b=KtHJ69VZC5gIVDo2oQcgScD9dHH3rDSEwFX0lBNIUWdChE9wy+jalZQY
 oLr1WzPLaOKUYl83Y2Mu2rQoHZXAitBp8pw8r52PQ2QpWhrrYa8drR5wz
 bzprIbSkCQi0pfrZOPQ9R74uNxnt3C0237GbccHzoVCrkq4do+EdKXh9U
 XOoh6xBZ752RXnZJmTVwjYMGqId6hshGM5WN8I7UHdFtp+0vMRwnI99fS
 f4uSHdwZIBO6RFh4WUQNOfxEE7+2poXcxX7UEnDyad10qYYxLxMx1mGm7
 dM8Fja4aNclGSEb88Ihb2kkTtx3t/OLm0b4UzMq9gacqIN0tZ1kvfkIjR Q==;
X-CSE-ConnectionGUID: 9ZBnA5DMSB6VLUi5d40WSg==
X-CSE-MsgGUID: 8WilUA9DS42CKK27eoWv2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="65245433"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="65245433"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 06:45:16 -0700
X-CSE-ConnectionGUID: AqifFsEETriKh971KYpK7w==
X-CSE-MsgGUID: Y010F/jqR+6Wc0ZsQwy48w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="182233481"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.198])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 06:45:15 -0700
Date: Mon, 29 Sep 2025 16:45:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/irq: duplicate HAS_FBC() for irq error mask usage
Message-ID: <aNqNZwfs7SRRYaGd@intel.com>
References: <20250929133418.2033006-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250929133418.2033006-1-jani.nikula@intel.com>
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

On Mon, Sep 29, 2025 at 04:34:18PM +0300, Jani Nikula wrote:
> The error irq handling needs to mask page table errors on gen 2/3 with
> FBC. See commit e7e12f6ec8bf ("drm/i915: Mask page table errors on
> gen2/3 with FBC") for details.
> 
> We want to avoid using display feature checks in i915 core code. Since
> FBC can't be fused off on gen 2/3, just list the platforms that support
> FBC. Add a macro purely for making the code self-documenting.
> 
> With this, we can drop the intel_display_core.h include, and make struct
> intel_display opaque inside i915_irq.c.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 11a727b74849..e0a0bd687f1b 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -33,7 +33,6 @@
>  
>  #include <drm/drm_drv.h>
>  
> -#include "display/intel_display_core.h"
>  #include "display/intel_display_irq.h"
>  #include "display/intel_hotplug.h"
>  #include "display/intel_hotplug_irq.h"
> @@ -794,9 +793,10 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
>  	intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
>  }
>  
> +#define I9XX_HAS_FBC(i915) (IS_I85X(i915) || IS_I865G(i915) || IS_I915GM(i915) || IS_I945GM(i915))

Looks correct.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
>  static u32 i9xx_error_mask(struct drm_i915_private *i915)
>  {
> -	struct intel_display *display = i915->display;
>  	/*
>  	 * On gen2/3 FBC generates (seemingly spurious)
>  	 * display INVALID_GTT/INVALID_GTT_PTE table errors.
> @@ -809,7 +809,7 @@ static u32 i9xx_error_mask(struct drm_i915_private *i915)
>  	 * Unfortunately we can't mask off individual PGTBL_ER bits,
>  	 * so we just have to mask off all page table errors via EMR.
>  	 */
> -	if (HAS_FBC(display))
> +	if (I9XX_HAS_FBC(i915))
>  		return I915_ERROR_MEMORY_REFRESH;
>  	else
>  		return I915_ERROR_PAGE_TABLE |
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
