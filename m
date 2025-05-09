Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FACAB0FD3
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E535810E9FF;
	Fri,  9 May 2025 10:05:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e2Kfn9oW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8812A10E9F6;
 Fri,  9 May 2025 10:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746785148; x=1778321148;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TZxXKfsx8iLmMFjE1CLI6VP+OMypAJ4l3DbEtNRqLbo=;
 b=e2Kfn9oWxhw/b7Q/2JSlB1ZJ+n5iDPa/tLpM5IEm2oemR7UIQ/0TtzvB
 3HFfQbAo+M96B/GcuogwCt0loq+FPITAWKbY3kKWaWqG72h8+1Jk3OX8f
 NjJ7KT/dc8Ifk0VPI1siZGXqVl8t7vGS68PFdCusjJ20l9ktimHbcqzfP
 OFI/1y5f0dnOaqEiDie11AjepICdbtXMflK7wZuLhn0qfda2qL5kpMDDU
 u619kXXUf8vvMHyYkkQg/M/mL++WepSFZKkBfSRz6ZlZcVntHieMP58We
 NFM4hlm4jclUBeMXOHqYVLUEedtmBbMNTiYjujYO9ywatECgidg84pAzU w==;
X-CSE-ConnectionGUID: dgauUJf7Qpac/NUo4WoiLg==
X-CSE-MsgGUID: Lb9pcK3/Q3WwGcbMZC774Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="66141815"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="66141815"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:05:47 -0700
X-CSE-ConnectionGUID: JK2S5lA/Sc2p7bdJx0myiA==
X-CSE-MsgGUID: nzKB5l6ITFSnzUojfJUmyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="136280448"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:05:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 02/18] drm/i915/dpll: Rename intel_dpll_funcs
In-Reply-To: <20250509042729.1152004-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-3-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:05:41 +0300
Message-ID: <877c2qm74a.fsf@intel.com>
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

On Fri, 09 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Rename intel_dpll_funcs to intel_dpll_global_funcs so that later
> on intel_shared_dpll_funcs can be renamed to intel_dpll_funcs.
> This is done to move away from the shared naming convention since
> starting MTL dpll's are not shared among PHYs.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

My gut feeling is that the whole dpll and shared dpll distinction was a
mistake, and we should just have one dpll framework. But let's see where
this goes.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 ++--
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 22 +++++++++----------
>  2 files changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 6fc213f84e73..e0221e514326 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -42,7 +42,7 @@ struct intel_color_funcs;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_dmc;
> -struct intel_dpll_funcs;
> +struct intel_dpll_global_funcs;
>  struct intel_dpll_mgr;
>  struct intel_fbdev;
>  struct intel_fdi_funcs;
> @@ -300,7 +300,7 @@ struct intel_display {
>  		const struct intel_cdclk_funcs *cdclk;
>  
>  		/* Display pll funcs */
> -		const struct intel_dpll_funcs *dpll;
> +		const struct intel_dpll_global_funcs *dpll;
>  
>  		/* irq display functions */
>  		const struct intel_hotplug_funcs *hotplug;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index a9e9b98d0bf9..8db603d9c823 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -24,7 +24,7 @@
>  #include "vlv_dpio_phy_regs.h"
>  #include "vlv_sideband.h"
>  
> -struct intel_dpll_funcs {
> +struct intel_dpll_global_funcs {
>  	int (*crtc_compute_clock)(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc);
>  	int (*crtc_get_shared_dpll)(struct intel_atomic_state *state,
> @@ -1690,45 +1690,45 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -static const struct intel_dpll_funcs mtl_dpll_funcs = {
> +static const struct intel_dpll_global_funcs mtl_dpll_funcs = {
>  	.crtc_compute_clock = mtl_crtc_compute_clock,
>  };
>  
> -static const struct intel_dpll_funcs dg2_dpll_funcs = {
> +static const struct intel_dpll_global_funcs dg2_dpll_funcs = {
>  	.crtc_compute_clock = dg2_crtc_compute_clock,
>  };
>  
> -static const struct intel_dpll_funcs hsw_dpll_funcs = {
> +static const struct intel_dpll_global_funcs hsw_dpll_funcs = {
>  	.crtc_compute_clock = hsw_crtc_compute_clock,
>  	.crtc_get_shared_dpll = hsw_crtc_get_shared_dpll,
>  };
>  
> -static const struct intel_dpll_funcs ilk_dpll_funcs = {
> +static const struct intel_dpll_global_funcs ilk_dpll_funcs = {
>  	.crtc_compute_clock = ilk_crtc_compute_clock,
>  	.crtc_get_shared_dpll = ilk_crtc_get_shared_dpll,
>  };
>  
> -static const struct intel_dpll_funcs chv_dpll_funcs = {
> +static const struct intel_dpll_global_funcs chv_dpll_funcs = {
>  	.crtc_compute_clock = chv_crtc_compute_clock,
>  };
>  
> -static const struct intel_dpll_funcs vlv_dpll_funcs = {
> +static const struct intel_dpll_global_funcs vlv_dpll_funcs = {
>  	.crtc_compute_clock = vlv_crtc_compute_clock,
>  };
>  
> -static const struct intel_dpll_funcs g4x_dpll_funcs = {
> +static const struct intel_dpll_global_funcs g4x_dpll_funcs = {
>  	.crtc_compute_clock = g4x_crtc_compute_clock,
>  };
>  
> -static const struct intel_dpll_funcs pnv_dpll_funcs = {
> +static const struct intel_dpll_global_funcs pnv_dpll_funcs = {
>  	.crtc_compute_clock = pnv_crtc_compute_clock,
>  };
>  
> -static const struct intel_dpll_funcs i9xx_dpll_funcs = {
> +static const struct intel_dpll_global_funcs i9xx_dpll_funcs = {
>  	.crtc_compute_clock = i9xx_crtc_compute_clock,
>  };
>  
> -static const struct intel_dpll_funcs i8xx_dpll_funcs = {
> +static const struct intel_dpll_global_funcs i8xx_dpll_funcs = {
>  	.crtc_compute_clock = i8xx_crtc_compute_clock,
>  };

-- 
Jani Nikula, Intel
