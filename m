Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9661AB10AE
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6799210EA0F;
	Fri,  9 May 2025 10:29:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bAIugQA3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7691410EA0C;
 Fri,  9 May 2025 10:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746786560; x=1778322560;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vvuuIwOfaWMb/OiTyMoWaKe1eeWKqX2wtZN02MQBoiA=;
 b=bAIugQA3TLdT7XFldGpW9QriLxUycLoiXu/RmfamRU7zhq+F/oQGjCgd
 GHx2Hv5/CkSfk2JK0EJhUrJ5YhqcXwxVTe5hMTchv06M3TqF3uNjvj2Fs
 kmYy1Azt53mDtxDSJaW4Sel1CIgQE1O2ehURM5fhPcpxxPEHjO9XFLIxk
 ygifWo51tOagVqG/KQWHK1ALAC83sNhr1YoEyEgJHV/jwjQa7BdmmSG5N
 G72XGl3zgNuZ7AOCHC3WGwTKU+kC12bTZEKpArie31jqM8pRGINukrT25
 b92COph20Tl7CgAns/kzaXj04QuVZc2gpd+pUieGt2JaBfUBXGLFjMiE6 w==;
X-CSE-ConnectionGUID: eORYCutRT4CdHkNmZ4bdNQ==
X-CSE-MsgGUID: 0u3CcBLTQbSu+oaSks+4Xw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52419490"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52419490"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:29:20 -0700
X-CSE-ConnectionGUID: gtBFDVgPRS64TGWXrYfP9g==
X-CSE-MsgGUID: 2tUEyWi1Sbe6BZasAMo42w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="141357533"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:29:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 14/18] drm/i915/dpll: Rename intel_[enable/disable]_dpll
In-Reply-To: <20250509042729.1152004-15-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-15-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:29:14 +0300
Message-ID: <878qn6krgl.fsf@intel.com>
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
> Rename  intel_[enable/disable]_dpll to intel_dpll_[enable/disable]
> in an effort to make sure all functions that are exported
> start with the filename.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

I think you should repost the series with the controversial or
incomplete stuff dropped, and get the straightforward renames merged.

> ---
>  drivers/gpu/drm/i915/display/intel_display.c     | 4 ++--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c    | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h    | 4 ++--
>  drivers/gpu/drm/i915/display/intel_pch_display.c | 6 +++---
>  4 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b091faff6680..8ee4833daede 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1664,7 +1664,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	intel_encoders_pre_pll_enable(state, crtc);
>  
>  	if (new_crtc_state->intel_dpll)
> -		intel_enable_dpll(new_crtc_state);
> +		intel_dpll_enable(new_crtc_state);
>  
>  	intel_encoders_pre_enable(state, crtc);
>  
> @@ -1793,7 +1793,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  	intel_encoders_disable(state, crtc);
>  	intel_encoders_post_disable(state, crtc);
>  
> -	intel_disable_dpll(old_crtc_state);
> +	intel_dpll_disable(old_crtc_state);
>  
>  	intel_encoders_post_pll_disable(state, crtc);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 3a724d84861b..d1399ab24d8c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -257,12 +257,12 @@ static void _intel_disable_shared_dpll(struct intel_display *display,
>  }
>  
>  /**
> - * intel_enable_dpll - enable a CRTC's global DPLL
> + * intel_dpll_enable - enable a CRTC's global DPLL
>   * @crtc_state: CRTC, and its state, which has a DPLL
>   *
>   * Enable DPLL used by @crtc.
>   */
> -void intel_enable_dpll(const struct intel_crtc_state *crtc_state)
> +void intel_dpll_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -303,12 +303,12 @@ void intel_enable_dpll(const struct intel_crtc_state *crtc_state)
>  }
>  
>  /**
> - * intel_disable_dpll - disable a CRTC's shared DPLL
> + * intel_dpll_disable - disable a CRTC's shared DPLL
>   * @crtc_state: CRTC, and its state, which has a shared DPLL
>   *
>   * Disable DPLL used by @crtc.
>   */
> -void intel_disable_dpll(const struct intel_crtc_state *crtc_state)
> +void intel_dpll_disable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 49eb02d72f44..f497a9ec863d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -417,8 +417,8 @@ int intel_dpll_get_freq(struct intel_crtc_state *crtc_state,
>  bool intel_dpll_get_hw_state(struct intel_display *display,
>  			     struct intel_dpll *pll,
>  			     struct intel_dpll_hw_state *dpll_hw_state);
> -void intel_enable_dpll(const struct intel_crtc_state *crtc_state);
> -void intel_disable_dpll(const struct intel_crtc_state *crtc_state);
> +void intel_dpll_enable(const struct intel_crtc_state *crtc_state);
> +void intel_dpll_disable(const struct intel_crtc_state *crtc_state);
>  void intel_dpll_swap_state(struct intel_atomic_state *state);
>  void intel_dpll_init(struct intel_display *display);
>  void intel_dpll_update_ref_clks(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index b59b3c94f711..ca85596dfc9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -394,11 +394,11 @@ void ilk_pch_enable(struct intel_atomic_state *state,
>  	 * transcoder, and we actually should do this to not upset any PCH
>  	 * transcoder that already use the clock when we share it.
>  	 *
> -	 * Note that enable_dpll tries to do the right thing, but
> +	 * Note that dpll_enable tries to do the right thing, but
>  	 * get_dpll unconditionally resets the pll - we need that
>  	 * to have the right LVDS enable sequence.
>  	 */
> -	intel_enable_dpll(crtc_state);
> +	intel_dpll_enable(crtc_state);
>  
>  	/* set transcoder timing, panel must allow it */
>  	assert_pps_unlocked(display, pipe);
> @@ -472,7 +472,7 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
>  
>  	ilk_fdi_pll_disable(crtc);
>  
> -	intel_disable_dpll(old_crtc_state);
> +	intel_dpll_disable(old_crtc_state);
>  }
>  
>  static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)

-- 
Jani Nikula, Intel
