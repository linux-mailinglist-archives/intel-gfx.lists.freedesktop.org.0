Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B04A4AB105C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3403A10E9FB;
	Fri,  9 May 2025 10:19:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nqdg7YLQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9751C10E9F1;
 Fri,  9 May 2025 10:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746785946; x=1778321946;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TjpSaKMwm4PjC0YrjZJCxwuspAyYXkzaQTdUio6dkiA=;
 b=nqdg7YLQoupEUz1QKk0MOG3pGcGnTvCIw14VlhKxjkUHMn/eFsVW2JDM
 w7OlgreoCsAZqfaAR+ECztYQJoSGAJwvuyHA09ddVTPbbYTUn/B1q4MLA
 j2EBcIfacLwM0uzTkTZm8Dq9x3zkfu0qA9MVWxbSCeRL5csMtx5yJrouk
 /Wrf23npAGLu8dPThVzFC4f4umJlwwlxiLJiwyLhUEXx6FWf8gewLmhI3
 vZPpJoV9cQZ1tjmX8dk0yAfXyA837BFDdjWQqCb4GZdq0GD1P29UX5qAA
 Q/OFRjC5LLPaQAMBgtJiyxbRmlKRqCQQDn+1WpwYUBmHAdbloG2rgxqLf A==;
X-CSE-ConnectionGUID: vBcB4cY0Rhyyi4fhaUtgXA==
X-CSE-MsgGUID: Ar5/d1G8TICSBi2Qg/FiMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="51265354"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="51265354"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:19:06 -0700
X-CSE-ConnectionGUID: UgpqzJnQQCuQPctM4h5q0Q==
X-CSE-MsgGUID: GzJEifsdTlqGXsktceLQ/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="141526559"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:19:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 08/18] drm/i915/dpll: Rename crtc_get_shared_dpll
In-Reply-To: <20250509042729.1152004-9-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-9-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:19:01 +0300
Message-ID: <87plgikrxm.fsf@intel.com>
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
> Rename crtc_get_shared_dpll to take into the individual PLL framework
> which came in at DISPLAY_VER >= 14.
>
> --v2
> -Change naming to dpll_global to keep consistency with rest of the
> naming
>
> --v3
> -Just use intel_dpll [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Having shared dpll stuff also in intel_dpll.c is just confusing...

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c    | 24 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_dpll.h    |  4 ++--
>  3 files changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ce5c9e74475d..b091faff6680 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4225,7 +4225,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  		crtc_state->update_wm_post = true;
>  
>  	if (intel_crtc_needs_modeset(crtc_state)) {
> -		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
> +		ret = intel_dpll_crtc_get_dpll(state, crtc);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index db67e92505d2..e25411c4171c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -27,8 +27,8 @@
>  struct intel_dpll_global_funcs {
>  	int (*crtc_compute_clock)(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc);
> -	int (*crtc_get_shared_dpll)(struct intel_atomic_state *state,
> -				    struct intel_crtc *crtc);
> +	int (*crtc_get_dpll)(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc);
>  };
>  
>  struct intel_limit {
> @@ -1176,8 +1176,8 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
> -				    struct intel_crtc *crtc)
> +static int hsw_crtc_get_dpll(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_crtc_state *crtc_state =
> @@ -1404,8 +1404,8 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
>  	return ret;
>  }
>  
> -static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
> -				    struct intel_crtc *crtc)
> +static int ilk_crtc_get_dpll(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc)
>  {
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -1700,12 +1700,12 @@ static const struct intel_dpll_global_funcs dg2_dpll_funcs = {
>  
>  static const struct intel_dpll_global_funcs hsw_dpll_funcs = {
>  	.crtc_compute_clock = hsw_crtc_compute_clock,
> -	.crtc_get_shared_dpll = hsw_crtc_get_shared_dpll,
> +	.crtc_get_dpll = hsw_crtc_get_dpll,
>  };
>  
>  static const struct intel_dpll_global_funcs ilk_dpll_funcs = {
>  	.crtc_compute_clock = ilk_crtc_compute_clock,
> -	.crtc_get_shared_dpll = ilk_crtc_get_shared_dpll,
> +	.crtc_get_dpll = ilk_crtc_get_dpll,
>  };
>  
>  static const struct intel_dpll_global_funcs chv_dpll_funcs = {
> @@ -1758,8 +1758,8 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
> -				    struct intel_crtc *crtc)
> +int intel_dpll_crtc_get_dpll(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_crtc_state *crtc_state =
> @@ -1772,10 +1772,10 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
>  	if (!crtc_state->hw.enable || crtc_state->intel_dpll)
>  		return 0;
>  
> -	if (!display->funcs.dpll->crtc_get_shared_dpll)
> +	if (!display->funcs.dpll->crtc_get_dpll)
>  		return 0;
>  
> -	ret = display->funcs.dpll->crtc_get_shared_dpll(state, crtc);
> +	ret = display->funcs.dpll->crtc_get_dpll(state, crtc);
>  	if (ret) {
>  		drm_dbg_kms(display->drm, "[CRTC:%d:%s] Couldn't get a shared DPLL\n",
>  			    crtc->base.base.id, crtc->base.name);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
> index 280e90a57c87..3444a2dd3166 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.h
> @@ -19,8 +19,8 @@ struct intel_dpll_hw_state;
>  void intel_dpll_init_clock_hook(struct intel_display *display);
>  int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc);
> -int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
> -				    struct intel_crtc *crtc);
> +int intel_dpll_crtc_get_dpll(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc);
>  int i9xx_calc_dpll_params(int refclk, struct dpll *clock);
>  u32 i9xx_dpll_compute_fp(const struct dpll *dpll);
>  void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,

-- 
Jani Nikula, Intel
