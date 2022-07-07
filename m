Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E30456AD12
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 22:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5329F14AC8F;
	Thu,  7 Jul 2022 20:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F2614ACA3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 20:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657227555; x=1688763555;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dxvf64YPjHqTQcbVrwW8GFN/fthbUMQn0TZV76YJXdA=;
 b=KbehuYJN9JEyab6hZKxkRMZXdSzBjdGgt9t1iYW6W2ihp4fGaYP+3UXE
 iMZ28YiQupWJDrOCWUTDTHT2/XyTZkkyseHw8G5bOCHPmLoCtXILWpKif
 SqIVF7Bw4UTczor0HFxkMlbCKV0d/olT2T6Hi+gEyD9+u3wniLygkvt+5
 G8hQzO7wrOVPZq0eM11xq3BgFEdZIeFDCYxSw0lbkEN24j18CoDKPbdlM
 De7+YsTeDU52bsBM3MKoFsY5Qi2Z5ULXOMX9s4KcLPcXUeSxCReZP635s
 4Vqkly6eCJQlDoMq8cObr4caFWwr6Rs9NinAgXGdzg56bMO3OOfak6Vcp g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="309681758"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="309681758"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 13:59:14 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="736105770"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 13:59:14 -0700
Date: Thu, 7 Jul 2022 13:59:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YsdJIbiZLBPT48ux@mdroper-desk1.amr.corp.intel.com>
References: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
 <20220707202610.2795136-1-radhakrishna.sripada@intel.com>
 <20220707202610.2795136-2-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220707202610.2795136-2-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Add MeteorLake
 platform info
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 07, 2022 at 01:26:09PM -0700, Radhakrishna Sripada wrote:
> MTL has Xe_LPD+ display IP (version = 14), MTL graphics IP
> (version = 12.70), and Xe_LPM+ media IP (version = 13).
> 
> Bspec: 55413
> Bspec: 55416
> Bspec: 55417
> Bspec: 55418
> Bspec: 55726
> Bspec: 45544
> Bspec: 65380
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          |  1 +
>  drivers/gpu/drm/i915/i915_pci.c          | 25 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_device_info.c |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h |  1 +
>  4 files changed, 28 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index c22f29c3faa0..00998a78a2ba 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1018,6 +1018,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
>  #define IS_ADLP_RPLP(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
> +#define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, INTEL_METEORLAKE)
>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 0cdd6513fbb7..82895ecb25ba 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1107,6 +1107,31 @@ static const struct intel_device_info pvc_info = {
>  	.require_force_probe = 1,
>  };
>  
> +#define XE_LPDP_FEATURES	\
> +	XE_LPD_FEATURES,	\
> +	.display.ver = 14,	\
> +	.display.has_cdclk_crawl = 1
> +
> +__maybe_unused
> +static const struct intel_device_info mtl_info = {
> +	XE_HP_FEATURES,
> +	XE_LPDP_FEATURES,
> +	/*
> +	 * Real graphics IP version will be obtained from hardware GMD_ID
> +	 * register.  Value provided here is just for sanity checking.
> +	 */
> +	.graphics.ver = 12,
> +	.graphics.rel = 70,
> +	.media.ver = 13,
> +	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
> +	PLATFORM(INTEL_METEORLAKE),
> +	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
> +	.require_force_probe = 1,
> +	.has_flat_ccs = 0,
> +	.has_snoop = 1,
> +	.display.has_modular_fia = 1,

Not a huge deal, but the ordering here is a bit non-standard.  On other
platforms we tend to order things as:

        *_FEATURES
        IP version values
        PLATFORM(FOO)
        everything else, sorted alphabetically


Matt

> +};
> +
>  #undef PLATFORM
>  
>  /*
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index f0bf23726ed8..27c343316afa 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -73,6 +73,7 @@ static const char * const platform_names[] = {
>  	PLATFORM_NAME(XEHPSDV),
>  	PLATFORM_NAME(DG2),
>  	PLATFORM_NAME(PONTEVECCHIO),
> +	PLATFORM_NAME(METEORLAKE),
>  };
>  #undef PLATFORM_NAME
>  
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 1c150cd7dceb..7ba9663213f4 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -89,6 +89,7 @@ enum intel_platform {
>  	INTEL_XEHPSDV,
>  	INTEL_DG2,
>  	INTEL_PONTEVECCHIO,
> +	INTEL_METEORLAKE,
>  	INTEL_MAX_PLATFORMS
>  };
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
