Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C09D52BDBA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 17:24:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C8610E87C;
	Wed, 18 May 2022 15:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5545410E87C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 15:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652887484; x=1684423484;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ldFDUVWQnmTyWCIgEn4n5sgmFhmQtm/UOsN695dTjLs=;
 b=U5TLssdK8utma6PzGd4ddAgh//NmzCYHDJ6TnqNxihSu+s7+FzDvt5yS
 aWjnhlvuRQCE8AYg/Q5k2oum6XrP0ajl3xQWJbt39fDF8HnNM/fA8/IAT
 WYzOwZJ0jzTjEhgLNfNABJIgTJqHh1j8WbVxtxRF5yckU/PICDFZd4eUB
 KEW1Zq1TpqNbLS8WKfprW9OrfOlDqOzyPSRVSdQtWdu9OThi+XxGneYWt
 zUAsgz7wcooYwcFqPXgdlvCBHNY1GfHbhRZE8hGG5W4z2D1M4KEGHReri
 l1VRgOIYLdWlenhampfyrOM8F0Ygmr1C2PIbUhk7b9bwsU2Eh+Vm+2WqV Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="334772438"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="334772438"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 08:24:33 -0700
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="545518092"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 08:24:32 -0700
Date: Wed, 18 May 2022 08:24:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Message-ID: <YoUPrn9oVsEnPBsx@mdroper-desk1.amr.corp.intel.com>
References: <20220517212905.24212-1-swathi.dhanavanthri@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220517212905.24212-1-swathi.dhanavanthri@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add workaround 22014600077
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 17, 2022 at 02:29:05PM -0700, Swathi Dhanavanthri wrote:
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 ++++++++++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 98ede9c93f00..2063c8758934 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1068,6 +1068,7 @@
>  #define   GEN9_ENABLE_GPGPU_PREEMPTION		REG_BIT(2)
>  
>  #define GEN10_CACHE_MODE_SS			_MMIO(0xe420)
> +#define   ENABLE_EU_COUNT_FOR_TDL_FLUSH	        REG_BIT(10)

The whitespace on this line is still wrong.  I guess we can fix that up
while applying the patch though.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  #define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
>  #define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 756807c4b405..73b59ea6fd3b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2178,6 +2178,16 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_write_or(wal, GEN12_MERT_MOD_CTRL, FORCE_MISS_FTLB);
>  	}
>  
> +	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G10(i915)) {
> +		/* Wa_22014600077:dg2 */
> +		wa_add(wal, GEN10_CACHE_MODE_SS, 0,
> +		       _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
> +		       0 /* Wa_14012342262 :write-only reg, so skip
> +			    verification */,
> +		       true);
> +	}
> +
>  	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>  	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>  		/*
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
