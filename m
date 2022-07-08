Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C56256AF56
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 02:22:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5FD10F40C;
	Fri,  8 Jul 2022 00:21:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C390410F54F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 00:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657239665; x=1688775665;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sWOKc4NaI56ePPmAumEx+Bhe9TynCzGL45FTETlwMTo=;
 b=gjj7Yp6DxbRzfIK4Cs2Ve/Pecx5zl/VnJfZkCkKOJ4OWrdHOweW+L+GN
 P/yJFt/jUNmDqVFtKzVKPbtcdHJkjRzlSueQPSJxgYvRaF7qqODyi6q7v
 /sqDvMdNLEvVy/EPxmysQPxfqcH+zM7+TKVmeINOq9pWYStYBfJd499Yq
 qG/w2y8tglAJRhQPrqp8Kv4lVXkA985lBa0Q3XU4CMFQpsn4NjRmHDVMN
 f+y2RA2P2JTi1DYjJ+FOY58mmKCRhcQd0ldK9udYJ+16vLp9SRKxTmYW6
 gMuQjvTdOY0RIZea0FIT6P4kIsUG50vMHwoeNkClekfzkmtnVO06XMOK1 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="263931838"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="263931838"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 17:21:05 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="920797172"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 17:21:05 -0700
Date: Thu, 7 Jul 2022 17:21:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Ysd4b1bV6+ve9cmM@mdroper-desk1.amr.corp.intel.com>
References: <20220708000335.2869311-1-radhakrishna.sripada@intel.com>
 <20220708000335.2869311-2-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220708000335.2869311-2-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/mtl: Add MeteorLake
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

On Thu, Jul 07, 2022 at 05:03:34PM -0700, Radhakrishna Sripada wrote:
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
> v2: rearrange the fields in pci_info(MattR)
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

I didn't notice it before, but this definition is kind of in an odd
place, mixed into the middle of the subplatform definitions.  We should
probably move up to the platform definition section and place it under
IS_PONTEVECCHIO().  That's a trivial change that we can do while
applying the patch though.  No need to send another version for that.

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 0cdd6513fbb7..859d43c7d0a3 100644
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
> +	PLATFORM(INTEL_METEORLAKE),
> +	.display.has_modular_fia = 1,
> +	.has_flat_ccs = 0,
> +	.has_snoop = 1,
> +	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
> +	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
> +	.require_force_probe = 1,
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
