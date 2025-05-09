Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7813DAB1052
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:17:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91AB10EA06;
	Fri,  9 May 2025 10:17:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jBgpJUYM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7916D10E9FA;
 Fri,  9 May 2025 10:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746785839; x=1778321839;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=s+jl6jZXpTXRgaFqNsf4Hz1ZUEM4PsZLOq0HjgZGFtc=;
 b=jBgpJUYMXQL/b3pzfCbZDOR3/DPCO1tctZ+4m6zIQGo+bEiU5okcHOzc
 dH6rEs7SpxXGNumBP782X9Div3Kkp7a0Ea1j+x+PB2gq8hNJbFNX7BvfC
 W7dXAdLRr6/5CC6VJrZKyhcMPC2o/TUc5SV6f8mOyiVdEIT+Q9oeIu6KK
 AZj/K5qK6RGIJBScaL3MAwXWuhFQpt9XH4EuFVtvyqQ8fn97evEZBGQw2
 7v1OfetvbcUSycq0R9sTATaBapm6WBtHiWYCoa4X19710XDo7KYGenFgw
 7jRG+DCuY3T7Pq7/07QWHQxZNEYW6LfeaDNvsFPtlo8tc8lBtYELj5UpR A==;
X-CSE-ConnectionGUID: XGQl8F2cRH+Q2xz0vYvjxQ==
X-CSE-MsgGUID: kZmhWsPlSWW19jAv89fqqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="59237308"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="59237308"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:17:18 -0700
X-CSE-ConnectionGUID: qNK2/BHVTpipYdvxJNSHxQ==
X-CSE-MsgGUID: hQmMbyiXSvCEanDA2KGiAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136461312"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:17:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 07/18] drm/i915/dpll: Move away from using shared dpll
In-Reply-To: <20250509042729.1152004-8-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-8-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:17:12 +0300
Message-ID: <87seleks0n.fsf@intel.com>
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
> Rename functions to move away from using shared dpll in the dpll
> framework as much as possible since dpll may not always be shared.

I think you're replacing some "shared dpll" with "global dpll" in
comments, which should just drop shared and not mention global. Comments
inline.

With them fixed,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> --v2
> -Use intel_dpll_global instead of global_dpll [Jani]
>
> --v3
> -Just use intel_dpll [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
>  .../drm/i915/display/intel_display_driver.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  10 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 235 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  52 ++--
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   6 +-
>  .../drm/i915/display/intel_modeset_verify.c   |   4 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |  14 +-
>  10 files changed, 173 insertions(+), 174 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4d631cbc81d2..11ebcb40c91f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1569,7 +1569,7 @@ _icl_ddi_get_pll(struct intel_display *display, i915_reg_t reg,
>  
>  	id = (intel_de_read(display, reg) & clk_sel_mask) >> clk_sel_shift;
>  
> -	return intel_get_shared_dpll_by_id(display, id);
> +	return intel_get_dpll_by_id(display, id);
>  }
>  
>  static void adls_ddi_enable_clock(struct intel_encoder *encoder,
> @@ -1723,7 +1723,7 @@ static struct intel_dpll *dg1_ddi_get_pll(struct intel_encoder *encoder)
>  	if (phy >= PHY_C)
>  		id += DPLL_ID_DG1_DPLL2;
>  
> -	return intel_get_shared_dpll_by_id(display, id);
> +	return intel_get_dpll_by_id(display, id);
>  }
>  
>  static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
> @@ -1895,7 +1895,7 @@ static struct intel_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encoder)
>  		return NULL;
>  	}
>  
> -	return intel_get_shared_dpll_by_id(display, id);
> +	return intel_get_dpll_by_id(display, id);
>  }
>  
>  static struct intel_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
> @@ -1918,7 +1918,7 @@ static struct intel_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
>  		return NULL;
>  	}
>  
> -	return intel_get_shared_dpll_by_id(display, id);
> +	return intel_get_dpll_by_id(display, id);
>  }
>  
>  static void skl_ddi_enable_clock(struct intel_encoder *encoder,
> @@ -1986,7 +1986,7 @@ static struct intel_dpll *skl_ddi_get_pll(struct intel_encoder *encoder)
>  	id = (tmp & DPLL_CTRL2_DDI_CLK_SEL_MASK(port)) >>
>  		DPLL_CTRL2_DDI_CLK_SEL_SHIFT(port);
>  
> -	return intel_get_shared_dpll_by_id(display, id);
> +	return intel_get_dpll_by_id(display, id);
>  }
>  
>  void hsw_ddi_enable_clock(struct intel_encoder *encoder,
> @@ -2053,7 +2053,7 @@ static struct intel_dpll *hsw_ddi_get_pll(struct intel_encoder *encoder)
>  		return NULL;
>  	}
>  
> -	return intel_get_shared_dpll_by_id(display, id);
> +	return intel_get_dpll_by_id(display, id);
>  }
>  
>  void intel_ddi_enable_clock(struct intel_encoder *encoder,
> @@ -2760,7 +2760,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 * 4. Enable the port PLL.
>  	 *
>  	 * The PLL enabling itself was already done before this function by
> -	 * hsw_crtc_enable()->intel_enable_shared_dpll().  We need only
> +	 * hsw_crtc_enable()->intel_enable_dpll().  We need only
>  	 * configure the PLL to port mapping here.
>  	 */
>  	intel_ddi_enable_clock(encoder, crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b765d5765b32..ce5c9e74475d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1664,7 +1664,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	intel_encoders_pre_pll_enable(state, crtc);
>  
>  	if (new_crtc_state->intel_dpll)
> -		intel_enable_shared_dpll(new_crtc_state);
> +		intel_enable_dpll(new_crtc_state);
>  
>  	intel_encoders_pre_enable(state, crtc);
>  
> @@ -1793,7 +1793,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  	intel_encoders_disable(state, crtc);
>  	intel_encoders_post_disable(state, crtc);
>  
> -	intel_disable_shared_dpll(old_crtc_state);
> +	intel_disable_dpll(old_crtc_state);
>  
>  	intel_encoders_post_pll_disable(state, crtc);
>  
> @@ -6434,7 +6434,7 @@ int intel_atomic_check(struct drm_device *dev,
>  
>  		any_ms = true;
>  
> -		intel_release_shared_dplls(state, crtc);
> +		intel_release_dplls(state, crtc);
>  	}
>  
>  	if (any_ms && !check_digital_port_conflicts(state)) {
> @@ -7531,7 +7531,7 @@ static int intel_atomic_swap_state(struct intel_atomic_state *state)
>  
>  	intel_atomic_swap_global_state(state);
>  
> -	intel_shared_dpll_swap_state(state);
> +	intel_dpll_swap_state(state);
>  
>  	intel_atomic_track_fbs(state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 5c74ab5fd1aa..16d91be02bb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -446,7 +446,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
>  	}
>  
>  	intel_plane_possible_crtcs_init(display);
> -	intel_shared_dpll_init(display);
> +	intel_dpll_init(display);
>  	intel_fdi_pll_freq_update(display);
>  
>  	intel_update_czclk(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 4d1f7fccd28a..db67e92505d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1161,7 +1161,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
>  		return 0;
>  
> -	ret = intel_compute_shared_dplls(state, crtc, encoder);
> +	ret = intel_compute_dplls(state, crtc, encoder);
>  	if (ret)
>  		return ret;
>  
> @@ -1189,7 +1189,7 @@ static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
>  		return 0;
>  
> -	return intel_reserve_shared_dplls(state, crtc, encoder);
> +	return intel_reserve_dplls(state, crtc, encoder);
>  }
>  
>  static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
> @@ -1223,7 +1223,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>  
> -	/* TODO: Do the readback via intel_compute_shared_dplls() */
> +	/* TODO: Do the readback via intel_compute_dplls() */
>  	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
>  
>  	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> @@ -1394,7 +1394,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
>  	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
>  			 &crtc_state->dpll);
>  
> -	ret = intel_compute_shared_dplls(state, crtc, NULL);
> +	ret = intel_compute_dplls(state, crtc, NULL);
>  	if (ret)
>  		return ret;
>  
> @@ -1414,7 +1414,7 @@ static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
>  	if (!crtc_state->has_pch_encoder)
>  		return 0;
>  
> -	return intel_reserve_shared_dplls(state, crtc, NULL);
> +	return intel_reserve_dplls(state, crtc, NULL);
>  }
>  
>  static u32 vlv_dpll(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index e63568be3150..f1b704f369f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -52,21 +52,21 @@
>   * share a PLL if their configurations match.
>   *
>   * This file provides an abstraction over display PLLs. The function
> - * intel_shared_dpll_init() initializes the PLLs for the given platform.  The
> + * intel_dpll_init() initializes the PLLs for the given platform.  The
>   * users of a PLL are tracked and that tracking is integrated with the atomic
>   * modset interface. During an atomic operation, required PLLs can be reserved
>   * for a given CRTC and encoder configuration by calling
> - * intel_reserve_shared_dplls() and previously reserved PLLs can be released
> - * with intel_release_shared_dplls().
> + * intel_reserve_dplls() and previously reserved PLLs can be released
> + * with intel_release_dplls().
>   * Changes to the users are first staged in the atomic state, and then made
> - * effective by calling intel_shared_dpll_swap_state() during the atomic
> + * effective by calling intel_dpll_swap_state() during the atomic
>   * commit phase.
>   */
>  
>  /* platform specific hooks for managing DPLLs */
>  struct intel_dpll_funcs {
>  	/*
> -	 * Hook for enabling the pll, called from intel_enable_shared_dpll() if
> +	 * Hook for enabling the pll, called from intel_enable_dpll() if
>  	 * the pll is not already enabled.
>  	 */
>  	void (*enable)(struct intel_display *display,
> @@ -74,7 +74,7 @@ struct intel_dpll_funcs {
>  		       const struct intel_dpll_hw_state *dpll_hw_state);
>  
>  	/*
> -	 * Hook for disabling the pll, called from intel_disable_shared_dpll()
> +	 * Hook for disabling the pll, called from intel_disable_dpll()
>  	 * only when it is safe to disable the pll, i.e., there are no more
>  	 * tracked users for it.
>  	 */
> @@ -133,7 +133,7 @@ intel_atomic_duplicate_dpll_state(struct intel_display *display,
>  }
>  
>  static struct intel_dpll_state *
> -intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
> +intel_atomic_get_dpll_state(struct drm_atomic_state *s)
>  {
>  	struct intel_atomic_state *state = to_intel_atomic_state(s);
>  	struct intel_display *display = to_intel_display(state);
> @@ -151,7 +151,7 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
>  }
>  
>  /**
> - * intel_get_shared_dpll_by_id - get a DPLL given its id
> + * intel_get_dpll_by_id - get a DPLL given its id
>   * @display: intel_display device instance
>   * @id: pll id
>   *
> @@ -159,8 +159,8 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
>   * A pointer to the DPLL with @id
>   */
>  struct intel_dpll *
> -intel_get_shared_dpll_by_id(struct intel_display *display,
> -			    enum intel_dpll_id id)
> +intel_get_dpll_by_id(struct intel_display *display,
> +		     enum intel_dpll_id id)
>  {
>  	struct intel_dpll *pll;
>  	int i;
> @@ -175,9 +175,9 @@ intel_get_shared_dpll_by_id(struct intel_display *display,
>  }
>  
>  /* For ILK+ */
> -void assert_shared_dpll(struct intel_display *display,
> -			struct intel_dpll *pll,
> -			bool state)
> +void assert_dpll(struct intel_display *display,
> +		 struct intel_dpll *pll,
> +		 bool state)
>  {
>  	bool cur_state;
>  	struct intel_dpll_hw_state hw_state;
> @@ -250,12 +250,12 @@ static void _intel_disable_shared_dpll(struct intel_display *display,
>  }
>  
>  /**
> - * intel_enable_shared_dpll - enable a CRTC's shared DPLL
> - * @crtc_state: CRTC, and its state, which has a shared DPLL
> + * intel_enable_dpll - enable a CRTC's global DPLL

Global?

Isn't what we have in intel_dpll.c now called "global", and this is not
it?


> + * @crtc_state: CRTC, and its state, which has a DPLL
>   *
> - * Enable the shared DPLL used by @crtc.
> + * Enable DPLL used by @crtc.
>   */
> -void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
> +void intel_enable_dpll(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -282,7 +282,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
>  
>  	if (old_mask) {
>  		drm_WARN_ON(display->drm, !pll->on);
> -		assert_shared_dpll_enabled(display, pll);
> +		assert_dpll_enabled(display, pll);
>  		goto out;
>  	}
>  	drm_WARN_ON(display->drm, pll->on);
> @@ -296,12 +296,12 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
>  }
>  
>  /**
> - * intel_disable_shared_dpll - disable a CRTC's shared DPLL
> + * intel_disable_dpll - disable a CRTC's shared DPLL
>   * @crtc_state: CRTC, and its state, which has a shared DPLL
>   *
> - * Disable the shared DPLL used by @crtc.
> + * Disable DPLL used by @crtc.
>   */
> -void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
> +void intel_disable_dpll(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -326,7 +326,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
>  		    pll->info->name, pll->active_mask, pll->on,
>  		    crtc->base.base.id, crtc->base.name);
>  
> -	assert_shared_dpll_enabled(display, pll);
> +	assert_dpll_enabled(display, pll);
>  	drm_WARN_ON(display->drm, !pll->on);
>  
>  	pll->active_mask &= ~pipe_mask;
> @@ -358,10 +358,10 @@ intel_dpll_mask_all(struct intel_display *display)
>  }
>  
>  static struct intel_dpll *
> -intel_find_shared_dpll(struct intel_atomic_state *state,
> -		       const struct intel_crtc *crtc,
> -		       const struct intel_dpll_hw_state *dpll_hw_state,
> -		       unsigned long dpll_mask)
> +intel_find_dpll(struct intel_atomic_state *state,
> +		const struct intel_crtc *crtc,
> +		const struct intel_dpll_hw_state *dpll_hw_state,
> +		unsigned long dpll_mask)
>  {
>  	struct intel_display *display = to_intel_display(crtc);
>  	unsigned long dpll_mask_all = intel_dpll_mask_all(display);
> @@ -369,14 +369,14 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
>  	struct intel_dpll *unused_pll = NULL;
>  	enum intel_dpll_id id;
>  
> -	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
> +	dpll_state = intel_atomic_get_dpll_state(&state->base);
>  
>  	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
>  
>  	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
>  		struct intel_dpll *pll;
>  
> -		pll = intel_get_shared_dpll_by_id(display, id);
> +		pll = intel_get_dpll_by_id(display, id);
>  		if (!pll)
>  			continue;
>  
> @@ -412,7 +412,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
>  }
>  
>  /**
> - * intel_reference_shared_dpll_crtc - Get a DPLL reference for a CRTC
> + * intel_reference_dpll_crtc - Get a DPLL reference for a CRTC
>   * @crtc: CRTC on which behalf the reference is taken
>   * @pll: DPLL for which the reference is taken
>   * @dpll_state: the DPLL atomic state in which the reference is tracked
> @@ -420,9 +420,9 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
>   * Take a reference for @pll tracking the use of it by @crtc.
>   */
>  static void
> -intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
> -				 const struct intel_dpll *pll,
> -				 struct intel_dpll_state *dpll_state)
> +intel_reference_dpll_crtc(const struct intel_crtc *crtc,
> +			  const struct intel_dpll *pll,
> +			  struct intel_dpll_state *dpll_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc);
>  
> @@ -435,23 +435,23 @@ intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
>  }
>  
>  static void
> -intel_reference_shared_dpll(struct intel_atomic_state *state,
> -			    const struct intel_crtc *crtc,
> -			    const struct intel_dpll *pll,
> -			    const struct intel_dpll_hw_state *dpll_hw_state)
> +intel_reference_dpll(struct intel_atomic_state *state,
> +		     const struct intel_crtc *crtc,
> +		     const struct intel_dpll *pll,
> +		     const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct intel_dpll_state *dpll_state;
>  
> -	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
> +	dpll_state = intel_atomic_get_dpll_state(&state->base);
>  
>  	if (dpll_state[pll->index].pipe_mask == 0)
>  		dpll_state[pll->index].hw_state = *dpll_hw_state;
>  
> -	intel_reference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
> +	intel_reference_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
>  }
>  
>  /**
> - * intel_unreference_shared_dpll_crtc - Drop a DPLL reference for a CRTC
> + * intel_unreference_dpll_crtc - Drop a DPLL reference for a CRTC
>   * @crtc: CRTC on which behalf the reference is dropped
>   * @pll: DPLL for which the reference is dropped
>   * @dpll_state: the DPLL atomic state in which the reference is tracked
> @@ -459,9 +459,9 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
>   * Drop a reference for @pll tracking the end of use of it by @crtc.
>   */
>  void
> -intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
> -				   const struct intel_dpll *pll,
> -				   struct intel_dpll_state *dpll_state)
> +intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
> +			    const struct intel_dpll *pll,
> +			    struct intel_dpll_state *dpll_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc);
>  
> @@ -473,15 +473,15 @@ intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
>  		    crtc->base.base.id, crtc->base.name, pll->info->name);
>  }
>  
> -static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
> -					  const struct intel_crtc *crtc,
> -					  const struct intel_dpll *pll)
> +static void intel_unreference_dpll(struct intel_atomic_state *state,
> +				   const struct intel_crtc *crtc,
> +				   const struct intel_dpll *pll)
>  {
>  	struct intel_dpll_state *dpll_state;
>  
> -	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
> +	dpll_state = intel_atomic_get_dpll_state(&state->base);
>  
> -	intel_unreference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
> +	intel_unreference_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
>  }
>  
>  static void intel_put_dpll(struct intel_atomic_state *state,
> @@ -497,11 +497,11 @@ static void intel_put_dpll(struct intel_atomic_state *state,
>  	if (!old_crtc_state->intel_dpll)
>  		return;
>  
> -	intel_unreference_shared_dpll(state, crtc, old_crtc_state->intel_dpll);
> +	intel_unreference_dpll(state, crtc, old_crtc_state->intel_dpll);
>  }
>  
>  /**
> - * intel_shared_dpll_swap_state - make atomic DPLL configuration effective
> + * intel_dpll_swap_state - make atomic DPLL configuration effective
>   * @state: atomic state
>   *
>   * This is the dpll version of drm_atomic_helper_swap_state() since the
> @@ -511,7 +511,7 @@ static void intel_put_dpll(struct intel_atomic_state *state,
>   * i.e. it also puts the current state into @state, even though there is no
>   * need for that at this moment.
>   */
> -void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
> +void intel_dpll_swap_state(struct intel_atomic_state *state)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_dpll_state *dpll_state = state->dpll_state;
> @@ -620,25 +620,25 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
>  	if (HAS_PCH_IBX(display)) {
>  		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
>  		id = (enum intel_dpll_id) crtc->pipe;
> -		pll = intel_get_shared_dpll_by_id(display, id);
> +		pll = intel_get_dpll_by_id(display, id);
>  
>  		drm_dbg_kms(display->drm,
>  			    "[CRTC:%d:%s] using pre-allocated %s\n",
>  			    crtc->base.base.id, crtc->base.name,
>  			    pll->info->name);
>  	} else {
> -		pll = intel_find_shared_dpll(state, crtc,
> -					     &crtc_state->dpll_hw_state,
> -					     BIT(DPLL_ID_PCH_PLL_B) |
> -					     BIT(DPLL_ID_PCH_PLL_A));
> +		pll = intel_find_dpll(state, crtc,
> +				      &crtc_state->dpll_hw_state,
> +				      BIT(DPLL_ID_PCH_PLL_B) |
> +				      BIT(DPLL_ID_PCH_PLL_A));
>  	}
>  
>  	if (!pll)
>  		return -EINVAL;
>  
>  	/* reference the pll */
> -	intel_reference_shared_dpll(state, crtc,
> -				    pll, &crtc_state->dpll_hw_state);
> +	intel_reference_dpll(state, crtc,
> +			     pll, &crtc_state->dpll_hw_state);
>  
>  	crtc_state->intel_dpll = pll;
>  
> @@ -1066,7 +1066,7 @@ hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  
> -	return intel_find_shared_dpll(state, crtc,
> +	return intel_find_dpll(state, crtc,
>  				      &crtc_state->dpll_hw_state,
>  				      BIT(DPLL_ID_WRPLL2) |
>  				      BIT(DPLL_ID_WRPLL1));
> @@ -1113,7 +1113,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
>  		return NULL;
>  	}
>  
> -	pll = intel_get_shared_dpll_by_id(display, pll_id);
> +	pll = intel_get_dpll_by_id(display, pll_id);
>  
>  	if (!pll)
>  		return NULL;
> @@ -1169,7 +1169,7 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  
> -	return intel_find_shared_dpll(state, crtc, &crtc_state->dpll_hw_state,
> +	return intel_find_dpll(state, crtc, &crtc_state->dpll_hw_state,
>  				      BIT(DPLL_ID_SPLL));
>  }
>  
> @@ -1233,8 +1233,8 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
>  	if (!pll)
>  		return -EINVAL;
>  
> -	intel_reference_shared_dpll(state, crtc,
> -				    pll, &crtc_state->dpll_hw_state);
> +	intel_reference_dpll(state, crtc,
> +			     pll, &crtc_state->dpll_hw_state);
>  
>  	crtc_state->intel_dpll = pll;
>  
> @@ -1942,20 +1942,20 @@ static int skl_get_dpll(struct intel_atomic_state *state,
>  	struct intel_dpll *pll;
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> -		pll = intel_find_shared_dpll(state, crtc,
> -					     &crtc_state->dpll_hw_state,
> -					     BIT(DPLL_ID_SKL_DPLL0));
> +		pll = intel_find_dpll(state, crtc,
> +				      &crtc_state->dpll_hw_state,
> +				      BIT(DPLL_ID_SKL_DPLL0));
>  	else
> -		pll = intel_find_shared_dpll(state, crtc,
> -					     &crtc_state->dpll_hw_state,
> -					     BIT(DPLL_ID_SKL_DPLL3) |
> -					     BIT(DPLL_ID_SKL_DPLL2) |
> -					     BIT(DPLL_ID_SKL_DPLL1));
> +		pll = intel_find_dpll(state, crtc,
> +				      &crtc_state->dpll_hw_state,
> +				      BIT(DPLL_ID_SKL_DPLL3) |
> +				      BIT(DPLL_ID_SKL_DPLL2) |
> +				      BIT(DPLL_ID_SKL_DPLL1));
>  	if (!pll)
>  		return -EINVAL;
>  
> -	intel_reference_shared_dpll(state, crtc,
> -				    pll, &crtc_state->dpll_hw_state);
> +	intel_reference_dpll(state, crtc,
> +			     pll, &crtc_state->dpll_hw_state);
>  
>  	crtc_state->intel_dpll = pll;
>  
> @@ -2434,13 +2434,13 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
>  
>  	/* 1:1 mapping between ports and PLLs */
>  	id = (enum intel_dpll_id) encoder->port;
> -	pll = intel_get_shared_dpll_by_id(display, id);
> +	pll = intel_get_dpll_by_id(display, id);
>  
>  	drm_dbg_kms(display->drm, "[CRTC:%d:%s] using pre-allocated %s\n",
>  		    crtc->base.base.id, crtc->base.name, pll->info->name);
>  
> -	intel_reference_shared_dpll(state, crtc,
> -				    pll, &crtc_state->dpll_hw_state);
> +	intel_reference_dpll(state, crtc,
> +			     pll, &crtc_state->dpll_hw_state);
>  
>  	crtc_state->intel_dpll = pll;
>  
> @@ -3388,14 +3388,14 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
>  	/* Eliminate DPLLs from consideration if reserved by HTI */
>  	dpll_mask &= ~intel_hti_dpll_mask(display);
>  
> -	port_dpll->pll = intel_find_shared_dpll(state, crtc,
> -						&port_dpll->hw_state,
> -						dpll_mask);
> +	port_dpll->pll = intel_find_dpll(state, crtc,
> +					 &port_dpll->hw_state,
> +					 dpll_mask);
>  	if (!port_dpll->pll)
>  		return -EINVAL;
>  
> -	intel_reference_shared_dpll(state, crtc,
> -				    port_dpll->pll, &port_dpll->hw_state);
> +	intel_reference_dpll(state, crtc,
> +			     port_dpll->pll, &port_dpll->hw_state);
>  
>  	icl_update_active_dpll(state, crtc, encoder);
>  
> @@ -3452,26 +3452,25 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
>  	int ret;
>  
>  	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> -	port_dpll->pll = intel_find_shared_dpll(state, crtc,
> -						&port_dpll->hw_state,
> -						BIT(DPLL_ID_ICL_TBTPLL));
> +	port_dpll->pll = intel_find_dpll(state, crtc,
> +					 &port_dpll->hw_state,
> +					 BIT(DPLL_ID_ICL_TBTPLL));
>  	if (!port_dpll->pll)
>  		return -EINVAL;
> -	intel_reference_shared_dpll(state, crtc,
> -				    port_dpll->pll, &port_dpll->hw_state);
> -
> +	intel_reference_dpll(state, crtc,
> +			     port_dpll->pll, &port_dpll->hw_state);
>  
>  	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
>  	dpll_id = icl_tc_port_to_pll_id(intel_encoder_to_tc(encoder));
> -	port_dpll->pll = intel_find_shared_dpll(state, crtc,
> -						&port_dpll->hw_state,
> -						BIT(dpll_id));
> +	port_dpll->pll = intel_find_dpll(state, crtc,
> +					 &port_dpll->hw_state,
> +					 BIT(dpll_id));
>  	if (!port_dpll->pll) {
>  		ret = -EINVAL;
>  		goto err_unreference_tbt_pll;
>  	}
> -	intel_reference_shared_dpll(state, crtc,
> -				    port_dpll->pll, &port_dpll->hw_state);
> +	intel_reference_dpll(state, crtc,
> +			     port_dpll->pll, &port_dpll->hw_state);
>  
>  	icl_update_active_dpll(state, crtc, encoder);
>  
> @@ -3479,7 +3478,7 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
>  
>  err_unreference_tbt_pll:
>  	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> -	intel_unreference_shared_dpll(state, crtc, port_dpll->pll);
> +	intel_unreference_dpll(state, crtc, port_dpll->pll);
>  
>  	return ret;
>  }
> @@ -3534,7 +3533,7 @@ static void icl_put_dplls(struct intel_atomic_state *state,
>  		if (!old_port_dpll->pll)
>  			continue;
>  
> -		intel_unreference_shared_dpll(state, crtc, old_port_dpll->pll);
> +		intel_unreference_dpll(state, crtc, old_port_dpll->pll);
>  	}
>  }
>  
> @@ -4300,12 +4299,12 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
>  };
>  
>  /**
> - * intel_shared_dpll_init - Initialize shared DPLLs
> + * intel_dpll_init - Initialize DPLLs
>   * @display: intel_display device
>   *
> - * Initialize shared DPLLs for @display.
> + * Initialize DPLLs for @display.
>   */
> -void intel_shared_dpll_init(struct intel_display *display)
> +void intel_dpll_init(struct intel_display *display)
>  {
>  	const struct intel_dpll_mgr *dpll_mgr = NULL;
>  	const struct dpll_info *dpll_info;
> @@ -4362,7 +4361,7 @@ void intel_shared_dpll_init(struct intel_display *display)
>  }
>  
>  /**
> - * intel_compute_shared_dplls - compute DPLL state CRTC and encoder combination
> + * intel_compute_dplls - compute DPLL state CRTC and encoder combination
>   * @state: atomic state
>   * @crtc: CRTC to compute DPLLs for
>   * @encoder: encoder
> @@ -4370,14 +4369,14 @@ void intel_shared_dpll_init(struct intel_display *display)
>   * This function computes the DPLL state for the given CRTC and encoder.
>   *
>   * The new configuration in the atomic commit @state is made effective by
> - * calling intel_shared_dpll_swap_state().
> + * calling intel_dpll_swap_state().
>   *
>   * Returns:
>   * 0 on success, negative error code on failure.
>   */
> -int intel_compute_shared_dplls(struct intel_atomic_state *state,
> -			       struct intel_crtc *crtc,
> -			       struct intel_encoder *encoder)
> +int intel_compute_dplls(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc,
> +			struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
> @@ -4389,7 +4388,7 @@ int intel_compute_shared_dplls(struct intel_atomic_state *state,
>  }
>  
>  /**
> - * intel_reserve_shared_dplls - reserve DPLLs for CRTC and encoder combination
> + * intel_reserve_dplls - reserve DPLLs for CRTC and encoder combination
>   * @state: atomic state
>   * @crtc: CRTC to reserve DPLLs for
>   * @encoder: encoder
> @@ -4399,18 +4398,18 @@ int intel_compute_shared_dplls(struct intel_atomic_state *state,
>   * state.
>   *
>   * The new configuration in the atomic commit @state is made effective by
> - * calling intel_shared_dpll_swap_state().
> + * calling intel_dpll_swap_state().
>   *
>   * The reserved DPLLs should be released by calling
> - * intel_release_shared_dplls().
> + * intel_release_dplls().
>   *
>   * Returns:
>   * 0 if all required DPLLs were successfully reserved,
>   * negative error code otherwise.
>   */
> -int intel_reserve_shared_dplls(struct intel_atomic_state *state,
> -			       struct intel_crtc *crtc,
> -			       struct intel_encoder *encoder)
> +int intel_reserve_dplls(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc,
> +			struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
> @@ -4422,18 +4421,18 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
>  }
>  
>  /**
> - * intel_release_shared_dplls - end use of DPLLs by CRTC in atomic state
> + * intel_release_dplls - end use of DPLLs by CRTC in atomic state
>   * @state: atomic state
>   * @crtc: crtc from which the DPLLs are to be released
>   *
> - * This function releases all DPLLs reserved by intel_reserve_shared_dplls()
> + * This function releases all DPLLs reserved by intel_reserve_dplls()
>   * from the current atomic commit @state and the old @crtc atomic state.
>   *
>   * The new configuration in the atomic commit @state is made effective by
> - * calling intel_shared_dpll_swap_state().
> + * calling intel_dpll_swap_state().
>   */
> -void intel_release_shared_dplls(struct intel_atomic_state *state,
> -				struct intel_crtc *crtc)
> +void intel_release_dplls(struct intel_atomic_state *state,
> +			 struct intel_crtc *crtc)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
> @@ -4441,7 +4440,7 @@ void intel_release_shared_dplls(struct intel_atomic_state *state,
>  	/*
>  	 * FIXME: this function is called for every platform having a
>  	 * compute_clock hook, even though the platform doesn't yet support
> -	 * the shared DPLL framework and intel_reserve_shared_dplls() is not
> +	 * the global DPLL framework and intel_reserve_dplls() is not

Global?

>  	 * called on those.
>  	 */
>  	if (!dpll_mgr)
> @@ -4457,7 +4456,7 @@ void intel_release_shared_dplls(struct intel_atomic_state *state,
>   * @encoder: encoder determining the type of port DPLL
>   *
>   * Update the active DPLL for the given @crtc/@encoder in @crtc's atomic state,
> - * from the port DPLLs reserved previously by intel_reserve_shared_dplls(). The
> + * from the port DPLLs reserved previously by intel_reserve_dplls(). The
>   * DPLL selected will be based on the current mode of the encoder's port.
>   */
>  void intel_update_active_dpll(struct intel_atomic_state *state,
> @@ -4522,7 +4521,7 @@ static void readout_dpll_hw_state(struct intel_display *display,
>  			to_intel_crtc_state(crtc->base.state);
>  
>  		if (crtc_state->hw.active && crtc_state->intel_dpll == pll)
> -			intel_reference_shared_dpll_crtc(crtc, pll, &pll->state);
> +			intel_reference_dpll_crtc(crtc, pll, &pll->state);
>  	}
>  	pll->active_mask = pll->state.pipe_mask;
>  
> @@ -4683,8 +4682,8 @@ static bool has_alt_port_dpll(const struct intel_dpll *old_pll,
>  		(old_pll->info->is_alt_port_dpll || new_pll->info->is_alt_port_dpll);
>  }
>  
> -void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
> -				    struct intel_crtc *crtc)
> +void intel_dpll_state_verify(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	const struct intel_crtc_state *old_crtc_state =
> @@ -4714,7 +4713,7 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
>  	}
>  }
>  
> -void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
> +void intel_dpll_verify_disabled(struct intel_atomic_state *state)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_dpll *pll;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 3604ebbc78b5..99a058deaeda 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -387,26 +387,26 @@ struct intel_dpll {
>  #define SKL_DPLL2 2
>  #define SKL_DPLL3 3
>  
> -/* shared dpll functions */
> +/* global dpll functions */

Global?

>  struct intel_dpll *
> -intel_get_shared_dpll_by_id(struct intel_display *display,
> -			    enum intel_dpll_id id);
> -void assert_shared_dpll(struct intel_display *display,
> -			struct intel_dpll *pll,
> -			bool state);
> -#define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
> -#define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, false)
> -int intel_compute_shared_dplls(struct intel_atomic_state *state,
> -			       struct intel_crtc *crtc,
> -			       struct intel_encoder *encoder);
> -int intel_reserve_shared_dplls(struct intel_atomic_state *state,
> -			       struct intel_crtc *crtc,
> -			       struct intel_encoder *encoder);
> -void intel_release_shared_dplls(struct intel_atomic_state *state,
> -				struct intel_crtc *crtc);
> -void intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
> -					const struct intel_dpll *pll,
> -					struct intel_dpll_state *shared_dpll_state);
> +intel_get_dpll_by_id(struct intel_display *display,
> +		     enum intel_dpll_id id);
> +void assert_dpll(struct intel_display *display,
> +		 struct intel_dpll *pll,
> +		 bool state);
> +#define assert_dpll_enabled(d, p) assert_dpll(d, p, true)
> +#define assert_dpll_disabled(d, p) assert_dpll(d, p, false)
> +int intel_compute_dplls(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc,
> +			struct intel_encoder *encoder);
> +int intel_reserve_dplls(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc,
> +			struct intel_encoder *encoder);
> +void intel_release_dplls(struct intel_atomic_state *state,
> +			 struct intel_crtc *crtc);
> +void intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
> +				 const struct intel_dpll *pll,
> +				 struct intel_dpll_state *shared_dpll_state);
>  void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
>  			      enum icl_port_dpll_id port_dpll_id);
>  void intel_update_active_dpll(struct intel_atomic_state *state,
> @@ -418,10 +418,10 @@ int intel_dpll_get_freq(struct intel_display *display,
>  bool intel_dpll_get_hw_state(struct intel_display *display,
>  			     struct intel_dpll *pll,
>  			     struct intel_dpll_hw_state *dpll_hw_state);
> -void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
> -void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
> -void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
> -void intel_shared_dpll_init(struct intel_display *display);
> +void intel_enable_dpll(const struct intel_crtc_state *crtc_state);
> +void intel_disable_dpll(const struct intel_crtc_state *crtc_state);
> +void intel_dpll_swap_state(struct intel_atomic_state *state);
> +void intel_dpll_init(struct intel_display *display);
>  void intel_dpll_update_ref_clks(struct intel_display *display);
>  void intel_dpll_readout_hw_state(struct intel_display *display);
>  void intel_dpll_sanitize_state(struct intel_display *display);
> @@ -435,8 +435,8 @@ bool intel_dpll_compare_hw_state(struct intel_display *display,
>  enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
>  bool intel_dpll_is_combophy(enum intel_dpll_id id);
>  
> -void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
> -				    struct intel_crtc *crtc);
> -void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state);
> +void intel_dpll_state_verify(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc);
> +void intel_dpll_verify_disabled(struct intel_atomic_state *state);
>  
>  #endif /* _INTEL_DPLL_MGR_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index ec8f38fba178..f07c7ef56148 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -249,7 +249,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
>  
>  	if (HAS_PCH_SPLIT(display)) {
>  		assert_fdi_rx_pll_disabled(display, pipe);
> -		assert_shared_dpll_disabled(display, crtc_state->intel_dpll);
> +		assert_dpll_disabled(display, crtc_state->intel_dpll);
>  	} else {
>  		assert_pll_disabled(display, pipe);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 46e0002a1358..ed4f305e0d3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -93,9 +93,9 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
>  	crtc->base.enabled = false;
>  
>  	if (crtc_state->intel_dpll)
> -		intel_unreference_shared_dpll_crtc(crtc,
> -						   crtc_state->intel_dpll,
> -						   &crtc_state->intel_dpll->state);
> +		intel_unreference_dpll_crtc(crtc,
> +					    crtc_state->intel_dpll,
> +					    &crtc_state->intel_dpll->state);
>  }
>  
>  static void set_encoder_for_connector(struct intel_connector *connector,
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 766a9983665a..f2f6b9d9afa1 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -243,7 +243,7 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
>  	intel_wm_state_verify(state, crtc);
>  	verify_connector_state(state, crtc);
>  	verify_crtc_state(state, crtc);
> -	intel_shared_dpll_state_verify(state, crtc);
> +	intel_dpll_state_verify(state, crtc);
>  	intel_mpllb_state_verify(state, crtc);
>  	intel_cx0pll_state_verify(state, crtc);
>  }
> @@ -252,5 +252,5 @@ void intel_modeset_verify_disabled(struct intel_atomic_state *state)
>  {
>  	verify_encoder_state(state);
>  	verify_connector_state(state, NULL);
> -	intel_shared_dpll_verify_disabled(state);
> +	intel_dpll_verify_disabled(state);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index b38305c16e77..b59b3c94f711 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -251,7 +251,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
>  	u32 val, pipeconf_val;
>  
>  	/* Make sure PCH DPLL is enabled */
> -	assert_shared_dpll_enabled(display, crtc_state->intel_dpll);
> +	assert_dpll_enabled(display, crtc_state->intel_dpll);
>  
>  	/* FDI must be feeding us bits for PCH ports */
>  	assert_fdi_tx_enabled(display, pipe);
> @@ -382,7 +382,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
>  		temp |= TRANS_DPLL_ENABLE(pipe);
>  		sel = TRANS_DPLLB_SEL(pipe);
>  		if (crtc_state->intel_dpll ==
> -		    intel_get_shared_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
> +		    intel_get_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
>  			temp |= sel;
>  		else
>  			temp &= ~sel;
> @@ -394,11 +394,11 @@ void ilk_pch_enable(struct intel_atomic_state *state,
>  	 * transcoder, and we actually should do this to not upset any PCH
>  	 * transcoder that already use the clock when we share it.
>  	 *
> -	 * Note that enable_shared_dpll tries to do the right thing, but
> -	 * get_shared_dpll unconditionally resets the pll - we need that
> +	 * Note that enable_dpll tries to do the right thing, but
> +	 * get_dpll unconditionally resets the pll - we need that
>  	 * to have the right LVDS enable sequence.
>  	 */
> -	intel_enable_shared_dpll(crtc_state);
> +	intel_enable_dpll(crtc_state);
>  
>  	/* set transcoder timing, panel must allow it */
>  	assert_pps_unlocked(display, pipe);
> @@ -472,7 +472,7 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
>  
>  	ilk_fdi_pll_disable(crtc);
>  
> -	intel_disable_shared_dpll(old_crtc_state);
> +	intel_disable_dpll(old_crtc_state);
>  }
>  
>  static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
> @@ -528,7 +528,7 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
>  			pll_id = DPLL_ID_PCH_PLL_A;
>  	}
>  
> -	crtc_state->intel_dpll = intel_get_shared_dpll_by_id(display, pll_id);
> +	crtc_state->intel_dpll = intel_get_dpll_by_id(display, pll_id);
>  	pll = crtc_state->intel_dpll;
>  
>  	pll_active = intel_dpll_get_hw_state(display, pll,

-- 
Jani Nikula, Intel
