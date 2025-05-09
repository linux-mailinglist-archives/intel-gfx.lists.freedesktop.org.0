Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 793BEAB0FE0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22CAF10E9F0;
	Fri,  9 May 2025 10:08:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Drn1VESs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF48110E9F0;
 Fri,  9 May 2025 10:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746785281; x=1778321281;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kQ8VaRtTxLcRf9pJzvf5UTCgS+uW8cSlX+ZY8QR1Epc=;
 b=Drn1VESsktHNKUOf4efIctqT3SQA9g6ONz1PBO35O4nkBkAF1j1lbAO0
 MSx8aFHikSQYwFWCih36Hxfyh35vKkj3WtH6GqZd2kImJF7ilkznsIU1/
 b7ribx9nFlf6dS8E6YCE5RJg5w9q+jL79iwR+/30TIrdYa4Sz7/96+RyV
 eRdsFtO3kZyKFQWfukR3N+VwYg5LD/eCwdYFqrjtMKYAM11VWWK6L8Kcr
 H3yemdiPxu6CgSRyjei29oCCvBXRVZVVuaQuNzszAcmddQIh7oowqVVOT
 5C21OAOaE2JMaX/SxYjtBOJgu5lW3IU0pTpm/61kWnXt9gZmZY6QmHKnH A==;
X-CSE-ConnectionGUID: kYzAwf7nRN2rllWCOf0yig==
X-CSE-MsgGUID: VagZooivQKmUJrNLIAdAyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="47717453"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="47717453"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:08:01 -0700
X-CSE-ConnectionGUID: BTODxxdGSUGnypC+sjHvlQ==
X-CSE-MsgGUID: zGhqOoj3SgO5nglCdbTyBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="136965443"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:07:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 04/18] drm/i915/dpll: Rename macro for_each_shared_dpll
In-Reply-To: <20250509042729.1152004-5-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-5-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:07:56 +0300
Message-ID: <871psym70j.fsf@intel.com>
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
> Rename the macro for_each_shared_dpll to for_each_dpll since
> this loop will not necessarily be used for only shared
> dpll in future.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c    | 16 ++++++++--------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_pch_refclk.c  |  2 +-
>  4 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 8d0a1779dd19..3770ce9469d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -627,7 +627,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
>  		   display->dpll.ref_clks.nssc,
>  		   display->dpll.ref_clks.ssc);
>  
> -	for_each_shared_dpll(display, pll, i) {
> +	for_each_dpll(display, pll, i) {
>  		drm_printf(&p, "DPLL%i: %s, id: %i\n", pll->index,
>  			   pll->info->name, pll->info->id);
>  		drm_printf(&p, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 6b4eb230f4b3..9974fdb6eaeb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -127,8 +127,8 @@ intel_atomic_duplicate_dpll_state(struct intel_display *display,
>  	struct intel_shared_dpll *pll;
>  	int i;
>  
> -	/* Copy shared dpll state */
> -	for_each_shared_dpll(display, pll, i)
> +	/* Copy dpll state */
> +	for_each_dpll(display, pll, i)
>  		dpll_state[pll->index] = pll->state;
>  }
>  
> @@ -165,7 +165,7 @@ intel_get_shared_dpll_by_id(struct intel_display *display,
>  	struct intel_shared_dpll *pll;
>  	int i;
>  
> -	for_each_shared_dpll(display, pll, i) {
> +	for_each_dpll(display, pll, i) {
>  		if (pll->info->id == id)
>  			return pll;
>  	}
> @@ -348,7 +348,7 @@ intel_dpll_mask_all(struct intel_display *display)
>  	unsigned long dpll_mask = 0;
>  	int i;
>  
> -	for_each_shared_dpll(display, pll, i) {
> +	for_each_dpll(display, pll, i) {
>  		drm_WARN_ON(display->drm, dpll_mask & BIT(pll->info->id));
>  
>  		dpll_mask |= BIT(pll->info->id);
> @@ -521,7 +521,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
>  	if (!state->dpll_set)
>  		return;
>  
> -	for_each_shared_dpll(display, pll, i)
> +	for_each_dpll(display, pll, i)
>  		swap(pll->state, dpll_state[pll->index]);
>  }
>  
> @@ -4542,7 +4542,7 @@ void intel_dpll_readout_hw_state(struct intel_display *display)
>  	struct intel_shared_dpll *pll;
>  	int i;
>  
> -	for_each_shared_dpll(display, pll, i)
> +	for_each_dpll(display, pll, i)
>  		readout_dpll_hw_state(display, pll);
>  }
>  
> @@ -4571,7 +4571,7 @@ void intel_dpll_sanitize_state(struct intel_display *display)
>  
>  	intel_cx0_pll_power_save_wa(display);
>  
> -	for_each_shared_dpll(display, pll, i)
> +	for_each_dpll(display, pll, i)
>  		sanitize_dpll_state(display, pll);
>  }
>  
> @@ -4720,6 +4720,6 @@ void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
>  	struct intel_shared_dpll *pll;
>  	int i;
>  
> -	for_each_shared_dpll(display, pll, i)
> +	for_each_dpll(display, pll, i)
>  		verify_single_dpll_state(display, pll, NULL, NULL);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index fe6c676737bb..d93072486831 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -30,7 +30,7 @@
>  #include "intel_display_power.h"
>  #include "intel_wakeref.h"
>  
> -#define for_each_shared_dpll(__display, __pll, __i) \
> +#define for_each_dpll(__display, __pll, __i) \
>  	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
>  		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> index 693b90e3dfc3..8bec55deff9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -535,7 +535,7 @@ static void ilk_init_pch_refclk(struct intel_display *display)
>  	}
>  
>  	/* Check if any DPLLs are using the SSC source */
> -	for_each_shared_dpll(display, pll, i) {
> +	for_each_dpll(display, pll, i) {
>  		u32 temp;
>  
>  		temp = intel_de_read(display, PCH_DPLL(pll->info->id));

-- 
Jani Nikula, Intel
