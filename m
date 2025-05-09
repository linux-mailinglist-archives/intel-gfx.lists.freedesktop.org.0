Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D093AB0FDF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:07:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAB8110E9F3;
	Fri,  9 May 2025 10:07:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TaRK4DZ3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EA7610E9F0;
 Fri,  9 May 2025 10:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746785238; x=1778321238;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vp/50oOk5Vl5xKOR9YSAV+C8mQL1RmGOMRkBeGAFFiw=;
 b=TaRK4DZ34bXhsiY9/S2k9RMcH0gLykhuVOr4LLJh/xS8mo3eQqIffgGF
 BFFgLS90l8eWsr+4os0xzid9j5Itxjdk/5brhuhB4L7zHeE4fus2auqM/
 Yz7e+AWGdUNATr8jrzjcs7Nry6ospA6ew28Xm6aG63TxcMamHSIz2dLOw
 LAPa55WiVKLJCDaCN0eTZx/HEs6mInNQEkY9uv4RIX7FW5zry8Bksqu4O
 ji0HE0zi2mm79UNt1SMw8hebRZEeH2enIj109Lq053sUenP8rdvPHbfQf
 zmhxjsOLPiHP4I/vO/U1prXL/RAjp8Equc04fu6UygpXkUkj0AJ+VtgZc w==;
X-CSE-ConnectionGUID: MHZMoybaQKCh4DALdNc56g==
X-CSE-MsgGUID: V8wGqFUYTCO+X12/fh7rcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="66142036"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="66142036"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:07:18 -0700
X-CSE-ConnectionGUID: hf4iyIZPRoqMEyAdMZPtiw==
X-CSE-MsgGUID: hLovqxfHT5esPNn1LfXuYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="136281010"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:07:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 03/18] drm/i915/dpll: Rename intel_shared_dpll_state
In-Reply-To: <20250509042729.1152004-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-4-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:07:12 +0300
Message-ID: <874ixum71r.fsf@intel.com>
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
> Rename intel_shared_dpll_state to just intel_dpll_state since it may
> not necessarily store share dpll state info specially since
> DISPLAY_VER >= 14 PLL's are not shared.
> Also change the name of variables which may have been assoiciated as
> a shared_dpll.

*associated

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 56 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  8 +--
>  3 files changed, 33 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index d6d0440dcee9..1bdffaca153a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -591,7 +591,7 @@ struct intel_atomic_state {
>  
>  	bool dpll_set, modeset;
>  
> -	struct intel_shared_dpll_state shared_dpll[I915_NUM_PLLS];
> +	struct intel_dpll_state dpll_state[I915_NUM_PLLS];
>  
>  	struct intel_dp_tunnel_inherited_state *inherited_dp_tunnels;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 9da051a3f455..6b4eb230f4b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -122,17 +122,17 @@ struct intel_dpll_mgr {
>  
>  static void
>  intel_atomic_duplicate_dpll_state(struct intel_display *display,
> -				  struct intel_shared_dpll_state *shared_dpll)
> +				  struct intel_dpll_state *dpll_state)
>  {
>  	struct intel_shared_dpll *pll;
>  	int i;
>  
>  	/* Copy shared dpll state */
>  	for_each_shared_dpll(display, pll, i)
> -		shared_dpll[pll->index] = pll->state;
> +		dpll_state[pll->index] = pll->state;
>  }
>  
> -static struct intel_shared_dpll_state *
> +static struct intel_dpll_state *
>  intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
>  {
>  	struct intel_atomic_state *state = to_intel_atomic_state(s);
> @@ -144,10 +144,10 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
>  		state->dpll_set = true;
>  
>  		intel_atomic_duplicate_dpll_state(display,
> -						  state->shared_dpll);
> +						  state->dpll_state);
>  	}
>  
> -	return state->shared_dpll;
> +	return state->dpll_state;
>  }
>  
>  /**
> @@ -365,11 +365,11 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
>  {
>  	struct intel_display *display = to_intel_display(crtc);
>  	unsigned long dpll_mask_all = intel_dpll_mask_all(display);
> -	struct intel_shared_dpll_state *shared_dpll;
> +	struct intel_dpll_state *dpll_state;
>  	struct intel_shared_dpll *unused_pll = NULL;
>  	enum intel_dpll_id id;
>  
> -	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
> +	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
>  
>  	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
>  
> @@ -381,20 +381,20 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
>  			continue;
>  
>  		/* Only want to check enabled timings first */
> -		if (shared_dpll[pll->index].pipe_mask == 0) {
> +		if (dpll_state[pll->index].pipe_mask == 0) {
>  			if (!unused_pll)
>  				unused_pll = pll;
>  			continue;
>  		}
>  
>  		if (memcmp(dpll_hw_state,
> -			   &shared_dpll[pll->index].hw_state,
> +			   &dpll_state[pll->index].hw_state,
>  			   sizeof(*dpll_hw_state)) == 0) {
>  			drm_dbg_kms(display->drm,
>  				    "[CRTC:%d:%s] sharing existing %s (pipe mask 0x%x, active 0x%x)\n",
>  				    crtc->base.base.id, crtc->base.name,
>  				    pll->info->name,
> -				    shared_dpll[pll->index].pipe_mask,
> +				    dpll_state[pll->index].pipe_mask,
>  				    pll->active_mask);
>  			return pll;
>  		}
> @@ -415,20 +415,20 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
>   * intel_reference_shared_dpll_crtc - Get a DPLL reference for a CRTC
>   * @crtc: CRTC on which behalf the reference is taken
>   * @pll: DPLL for which the reference is taken
> - * @shared_dpll_state: the DPLL atomic state in which the reference is tracked
> + * @dpll_state: the DPLL atomic state in which the reference is tracked
>   *
>   * Take a reference for @pll tracking the use of it by @crtc.
>   */
>  static void
>  intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
>  				 const struct intel_shared_dpll *pll,
> -				 struct intel_shared_dpll_state *shared_dpll_state)
> +				 struct intel_dpll_state *dpll_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc);
>  
> -	drm_WARN_ON(display->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) != 0);
> +	drm_WARN_ON(display->drm, (dpll_state->pipe_mask & BIT(crtc->pipe)) != 0);
>  
> -	shared_dpll_state->pipe_mask |= BIT(crtc->pipe);
> +	dpll_state->pipe_mask |= BIT(crtc->pipe);
>  
>  	drm_dbg_kms(display->drm, "[CRTC:%d:%s] reserving %s\n",
>  		    crtc->base.base.id, crtc->base.name, pll->info->name);
> @@ -440,34 +440,34 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
>  			    const struct intel_shared_dpll *pll,
>  			    const struct intel_dpll_hw_state *dpll_hw_state)
>  {
> -	struct intel_shared_dpll_state *shared_dpll;
> +	struct intel_dpll_state *dpll_state;
>  
> -	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
> +	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
>  
> -	if (shared_dpll[pll->index].pipe_mask == 0)
> -		shared_dpll[pll->index].hw_state = *dpll_hw_state;
> +	if (dpll_state[pll->index].pipe_mask == 0)
> +		dpll_state[pll->index].hw_state = *dpll_hw_state;
>  
> -	intel_reference_shared_dpll_crtc(crtc, pll, &shared_dpll[pll->index]);
> +	intel_reference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
>  }
>  
>  /**
>   * intel_unreference_shared_dpll_crtc - Drop a DPLL reference for a CRTC
>   * @crtc: CRTC on which behalf the reference is dropped
>   * @pll: DPLL for which the reference is dropped
> - * @shared_dpll_state: the DPLL atomic state in which the reference is tracked
> + * @dpll_state: the DPLL atomic state in which the reference is tracked
>   *
>   * Drop a reference for @pll tracking the end of use of it by @crtc.
>   */
>  void
>  intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
>  				   const struct intel_shared_dpll *pll,
> -				   struct intel_shared_dpll_state *shared_dpll_state)
> +				   struct intel_dpll_state *dpll_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc);
>  
> -	drm_WARN_ON(display->drm, (shared_dpll_state->pipe_mask & BIT(crtc->pipe)) == 0);
> +	drm_WARN_ON(display->drm, (dpll_state->pipe_mask & BIT(crtc->pipe)) == 0);
>  
> -	shared_dpll_state->pipe_mask &= ~BIT(crtc->pipe);
> +	dpll_state->pipe_mask &= ~BIT(crtc->pipe);
>  
>  	drm_dbg_kms(display->drm, "[CRTC:%d:%s] releasing %s\n",
>  		    crtc->base.base.id, crtc->base.name, pll->info->name);
> @@ -477,11 +477,11 @@ static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
>  					  const struct intel_crtc *crtc,
>  					  const struct intel_shared_dpll *pll)
>  {
> -	struct intel_shared_dpll_state *shared_dpll;
> +	struct intel_dpll_state *dpll_state;
>  
> -	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
> +	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
>  
> -	intel_unreference_shared_dpll_crtc(crtc, pll, &shared_dpll[pll->index]);
> +	intel_unreference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
>  }
>  
>  static void intel_put_dpll(struct intel_atomic_state *state,
> @@ -514,7 +514,7 @@ static void intel_put_dpll(struct intel_atomic_state *state,
>  void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
>  {
>  	struct intel_display *display = to_intel_display(state);
> -	struct intel_shared_dpll_state *shared_dpll = state->shared_dpll;
> +	struct intel_dpll_state *dpll_state = state->dpll_state;
>  	struct intel_shared_dpll *pll;
>  	int i;
>  
> @@ -522,7 +522,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
>  		return;
>  
>  	for_each_shared_dpll(display, pll, i)
> -		swap(pll->state, shared_dpll[pll->index]);
> +		swap(pll->state, dpll_state[pll->index]);
>  }
>  
>  static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index caffb084830c..fe6c676737bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -280,7 +280,7 @@ struct intel_dpll_hw_state {
>  };
>  
>  /**
> - * struct intel_shared_dpll_state - hold the DPLL atomic state
> + * struct intel_dpll_state - hold the DPLL atomic state
>   *
>   * This structure holds an atomic state for the DPLL, that can represent
>   * either its current state (in struct &intel_shared_dpll) or a desired
> @@ -289,7 +289,7 @@ struct intel_dpll_hw_state {
>   *
>   * See also intel_reserve_shared_dplls() and intel_release_shared_dplls().
>   */
> -struct intel_shared_dpll_state {
> +struct intel_dpll_state {
>  	/**
>  	 * @pipe_mask: mask of pipes using this DPLL, active or not
>  	 */
> @@ -353,7 +353,7 @@ struct intel_shared_dpll {
>  	 * Store the state for the pll, including its hw state
>  	 * and CRTCs using it.
>  	 */
> -	struct intel_shared_dpll_state state;
> +	struct intel_dpll_state state;
>  
>  	/**
>  	 * @index: index for atomic state
> @@ -406,7 +406,7 @@ void intel_release_shared_dplls(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc);
>  void intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
>  					const struct intel_shared_dpll *pll,
> -					struct intel_shared_dpll_state *shared_dpll_state);
> +					struct intel_dpll_state *shared_dpll_state);
>  void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
>  			      enum icl_port_dpll_id port_dpll_id);
>  void intel_update_active_dpll(struct intel_atomic_state *state,

-- 
Jani Nikula, Intel
