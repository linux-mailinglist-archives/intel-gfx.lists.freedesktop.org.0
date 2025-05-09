Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38102AB10C8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:32:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2C2A10EA0C;
	Fri,  9 May 2025 10:32:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ae9bkrD3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5628B10EA0C;
 Fri,  9 May 2025 10:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746786767; x=1778322767;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=InYhyfyge72L+Z5nYefqpPxokgeaFDfaphRQ+/Td2uk=;
 b=Ae9bkrD3C6bvc8Y4SwPXxYzv68Kvs/c1SZL4B4bGdlE8DnL+0d6mczTz
 4enBpUjBNlrbp4eX0EEWn2C72xLqh4VHWtqGYIEz8nGBV0/cj88sLz0u2
 LqHagXd5oyGXUHutaYRFCS8uNFPtq82MxqZRnnYWmlKYzxtnkRmw4E1p4
 3xFsWjU1dQv3MtN2I9oFQN9htDsag3XgOe9bZk+076MXn08JeYOgdUWHP
 PPYVgm8D+YZ7JEkI7TwgmKVZdaSFahLQxSDUhZyPL5Om2EbT/vS6dRwKq
 BuMYJbKU7s2nU1zlEXRJlo2U2bRbNtqNerZzLT+e68aktyDxk6+kuXswC g==;
X-CSE-ConnectionGUID: q2z9GrDvSgaiWPQUqCJldw==
X-CSE-MsgGUID: XgyiHQglTDyAen67Fxoc+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48616866"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="48616866"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:32:46 -0700
X-CSE-ConnectionGUID: oHnAhaL7Tv+R4lReYBJ3vw==
X-CSE-MsgGUID: OqOxO7fyS6K/wSoNlA4wSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136969259"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:32:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 16/18] drm/i915/dpll: Rename intel_<release/reserve>_dpll
In-Reply-To: <20250509042729.1152004-17-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-17-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:32:42 +0300
Message-ID: <8734dekrat.fsf@intel.com>
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
> Rename intel_<release/reserve>_dpll to
> intel_dpll_<release/reserve> in an effort to keep names of
> exported functions start with the filename.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  4 +--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 26 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 10 +++----
>  4 files changed, 21 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8ee4833daede..d26c2fd201dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6434,7 +6434,7 @@ int intel_atomic_check(struct drm_device *dev,
>  
>  		any_ms = true;
>  
> -		intel_release_dplls(state, crtc);
> +		intel_dpll_release(state, crtc);
>  	}
>  
>  	if (any_ms && !check_digital_port_conflicts(state)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index e25411c4171c..6a0bb12eafc4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1189,7 +1189,7 @@ static int hsw_crtc_get_dpll(struct intel_atomic_state *state,
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
>  		return 0;
>  
> -	return intel_reserve_dplls(state, crtc, encoder);
> +	return intel_dpll_reserve(state, crtc, encoder);
>  }
>  
>  static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
> @@ -1414,7 +1414,7 @@ static int ilk_crtc_get_dpll(struct intel_atomic_state *state,
>  	if (!crtc_state->has_pch_encoder)
>  		return 0;
>  
> -	return intel_reserve_dplls(state, crtc, NULL);
> +	return intel_dpll_reserve(state, crtc, NULL);
>  }
>  
>  static u32 vlv_dpll(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index c954515145a3..65dd8c3a3aed 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -56,8 +56,8 @@
>   * users of a PLL are tracked and that tracking is integrated with the atomic
>   * modset interface. During an atomic operation, required PLLs can be reserved
>   * for a given CRTC and encoder configuration by calling
> - * intel_reserve_dplls() and previously reserved PLLs can be released
> - * with intel_release_dplls().
> + * intel_dpll_reserve() and previously reserved PLLs can be released
> + * with intel_dpll_release().
>   * Changes to the users are first staged in the atomic state, and then made
>   * effective by calling intel_dpll_swap_state() during the atomic
>   * commit phase.
> @@ -4410,7 +4410,7 @@ int intel_compute_dplls(struct intel_atomic_state *state,
>  }
>  
>  /**
> - * intel_reserve_dplls - reserve DPLLs for CRTC and encoder combination
> + * intel_dpll_reserve - reserve DPLLs for CRTC and encoder combination
>   * @state: atomic state
>   * @crtc: CRTC to reserve DPLLs for
>   * @encoder: encoder
> @@ -4423,15 +4423,15 @@ int intel_compute_dplls(struct intel_atomic_state *state,
>   * calling intel_dpll_swap_state().
>   *
>   * The reserved DPLLs should be released by calling
> - * intel_release_dplls().
> + * intel_dpll_release().
>   *
>   * Returns:
>   * 0 if all required DPLLs were successfully reserved,
>   * negative error code otherwise.
>   */
> -int intel_reserve_dplls(struct intel_atomic_state *state,
> -			struct intel_crtc *crtc,
> -			struct intel_encoder *encoder)
> +int intel_dpll_reserve(struct intel_atomic_state *state,
> +		       struct intel_crtc *crtc,
> +		       struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
> @@ -4443,18 +4443,18 @@ int intel_reserve_dplls(struct intel_atomic_state *state,
>  }
>  
>  /**
> - * intel_release_dplls - end use of DPLLs by CRTC in atomic state
> + * intel_dpll_release - end use of DPLLs by CRTC in atomic state
>   * @state: atomic state
>   * @crtc: crtc from which the DPLLs are to be released
>   *
> - * This function releases all DPLLs reserved by intel_reserve_dplls()
> + * This function releases all DPLLs reserved by intel_dpll_reserve()
>   * from the current atomic commit @state and the old @crtc atomic state.
>   *
>   * The new configuration in the atomic commit @state is made effective by
>   * calling intel_dpll_swap_state().
>   */
> -void intel_release_dplls(struct intel_atomic_state *state,
> -			 struct intel_crtc *crtc)
> +void intel_dpll_release(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
> @@ -4462,7 +4462,7 @@ void intel_release_dplls(struct intel_atomic_state *state,
>  	/*
>  	 * FIXME: this function is called for every platform having a
>  	 * compute_clock hook, even though the platform doesn't yet support
> -	 * the global DPLL framework and intel_reserve_dplls() is not
> +	 * the global DPLL framework and intel_dpll_reserve() is not
>  	 * called on those.
>  	 */
>  	if (!dpll_mgr)
> @@ -4478,7 +4478,7 @@ void intel_release_dplls(struct intel_atomic_state *state,
>   * @encoder: encoder determining the type of port DPLL
>   *
>   * Update the active DPLL for the given @crtc/@encoder in @crtc's atomic state,
> - * from the port DPLLs reserved previously by intel_reserve_dplls(). The
> + * from the port DPLLs reserved previously by intel_dpll_reserve(). The
>   * DPLL selected will be based on the current mode of the encoder's port.
>   */
>  void intel_update_active_dpll(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 8b596a96344f..4f8074580582 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -399,11 +399,11 @@ void assert_dpll(struct intel_display *display,
>  int intel_compute_dplls(struct intel_atomic_state *state,
>  			struct intel_crtc *crtc,
>  			struct intel_encoder *encoder);
> -int intel_reserve_dplls(struct intel_atomic_state *state,
> -			struct intel_crtc *crtc,
> -			struct intel_encoder *encoder);
> -void intel_release_dplls(struct intel_atomic_state *state,
> -			 struct intel_crtc *crtc);
> +int intel_dpll_reserve(struct intel_atomic_state *state,
> +		       struct intel_crtc *crtc,
> +		       struct intel_encoder *encoder);
> +void intel_dpll_release(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc);
>  void intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
>  				 const struct intel_dpll *pll,
>  				 struct intel_dpll_state *shared_dpll_state);

-- 
Jani Nikula, Intel
