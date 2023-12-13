Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E16810C38
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 09:17:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 115A510E713;
	Wed, 13 Dec 2023 08:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC34010E713
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 08:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702455476; x=1733991476;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=g8RLfxAqjml+wJdDJrE3gsR/dJNNBrp0TfRJMJlgeww=;
 b=QSRF3AiI4lQo4UU8XfCP7Np5njeoNOOuYy+/zjnNH+TuYLH5Y/OXCXC0
 vU16zeQVmmUibGnbGr5pZSrafI4ebNgCCJBd6wzZcZxJwHbx0jH/mil2W
 FjU3G739RMdXIKUZq87QV9eMJnLE5+ZTp7tOgImvLOyngBsFpiq7qLNzJ
 l6AXy2BBUvYOHvotGKII2Qp6700enPmwOD1EMU6hNJ91nhPtJ572RdJva
 E0PWScsKglY2L0NOWucxI4HiLOdcjes+xMj9Bi4c5m18xx7PCGLm9jWUU
 wzQrJxHjMgRSwJdnj6J588f0q/LJCxr3JQvnsbas9UKLP8UnZJ+jKIngz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="13624894"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="13624894"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 00:17:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="21861466"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 00:17:54 -0800
Date: Wed, 13 Dec 2023 10:17:58 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/4] drm/i915/dmc: Also disable HRR event on TGL main DMC
Message-ID: <ZXlotrNjfr2yja5/@ideak-desk.fi.intel.com>
References: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
 <20231211213750.27109-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231211213750.27109-4-ville.syrjala@linux.intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 11, 2023 at 11:37:49PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Unlike later platforms TGL has the half refresh rate (HRR) event
> on the main DMC (as opposed to the pipe DMC). Since we're disabling
> that event on all later platforms already let's do the same on
> TGL as well.
> 
> There is supposedly a bit somewhere (DMC_CHICKEN on TGL) to make
> the handler not do anything, but we don't currently have code
> to frob it. Though that bit should be off by default, the ADL+
> experience has shown us that trusting any of this isn't a good
> idea. So seems safer to just disable all event handlers we know
> that we don't need.
> 
> Also the TGL DMC firmware is apparently using the wrong event
> (undelayed vblank) here anyway. It should be using the delayed
> vblank event instead (like ADL+ firmware does), but they didn't
> release a firmware fix for this and instead just hacked around
> this in the Windows driver code :/
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 5 +++++
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 1 +
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 9385898e3aa5..0722d322ec63 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -448,6 +448,11 @@ static bool disable_dmc_evt(struct drm_i915_private *i915,
>  	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_CLK_MSEC)
>  		return true;
>  
> +	/* also disable the HRR event on the main DMC on TGL */
> +	if (IS_TIGERLAKE(i915) &&
> +	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_VBLANK_A)

The adls FW has the same event (but not the MSEC flip-queue one for some
reason).

> +		return true;
> +
>  	return false;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index cf10094acae3..90d0dbb41cfe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -60,6 +60,7 @@
>  
>  #define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
>  #define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
> +#define DMC_EVT_CTL_EVENT_ID_VBLANK_A	0x32 /* main DMC */
>  /* An event handler scheduled to run at a 1 kHz frequency. */
>  #define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
>  
> -- 
> 2.41.0
> 
