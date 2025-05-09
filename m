Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED286AB10C6
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3356510EA0E;
	Fri,  9 May 2025 10:32:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="athJ78CA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26E410EA0E;
 Fri,  9 May 2025 10:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746786719; x=1778322719;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cv29+DB9sIrFe0ODqXcxUQFO7/1WJTtcDs9qftZI8eg=;
 b=athJ78CAtFW+6ajJVh3qjReD5I8HhvYV5X0qBLWFgcRAteVVDYtDWlCd
 Se4evjqOZqjDEGtfOoHeWgYNT32C9kdyJvPOhcag7yajx1kB0JsJFhM0/
 ui7B8BhMuWZwOa2NxBYPNZEv0tKj7owN+O3+cV02/b2ntAiHze4VmlIjG
 0kFl2fstLCYdGUXkjCb+qHhfDm3QTC3rDEcZIlMoKLNVA4uoNE+KxaeMj
 XFS2N/mNzspGLLp64GJsbNQI0FbqAchXg521DKgo/7j7H5DH69Afii2fn
 bzj0QtOnjgVrIhojQP1izsysdfwebe87lg6hVGOQ+6Mn5dXPnD+6FlJdw g==;
X-CSE-ConnectionGUID: gRaKonawR1WtBTdiF9ikbA==
X-CSE-MsgGUID: lFGEPh5cRc+WiX6JLYD09Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="59606016"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="59606016"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:31:59 -0700
X-CSE-ConnectionGUID: bJvODN5QTimOtQjumxoZSA==
X-CSE-MsgGUID: O7u11FRoQ8GOcfQeDsEIXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="137101096"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:31:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 15/18] drm/i915/dpll: Rename intel_unreference_dpll__crtc
In-Reply-To: <20250509042729.1152004-16-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-16-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:31:53 +0300
Message-ID: <875xiakrc6.fsf@intel.com>
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
> Rename intel_unreference_dpll_crtc to intel_dpll_unreference_crtc
> in an effort to keep names of exported functions start with the filename.

That's a fine goal, but to me "intel dpll unreference crtc" means drop
the crtc reference from dpll, not the other way round as it is...

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 6 +++---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h      | 2 +-
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index d1399ab24d8c..c954515145a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -458,7 +458,7 @@ intel_reference_dpll(struct intel_atomic_state *state,
>  }
>  
>  /**
> - * intel_unreference_dpll_crtc - Drop a DPLL reference for a CRTC
> + * intel_dpll_unreference_crtc - Drop a DPLL reference for a CRTC
>   * @crtc: CRTC on which behalf the reference is dropped
>   * @pll: DPLL for which the reference is dropped
>   * @dpll_state: the DPLL atomic state in which the reference is tracked
> @@ -466,7 +466,7 @@ intel_reference_dpll(struct intel_atomic_state *state,
>   * Drop a reference for @pll tracking the end of use of it by @crtc.
>   */
>  void
> -intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
> +intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
>  			    const struct intel_dpll *pll,
>  			    struct intel_dpll_state *dpll_state)
>  {
> @@ -488,7 +488,7 @@ static void intel_unreference_dpll(struct intel_atomic_state *state,
>  
>  	dpll_state = intel_atomic_get_dpll_state(&state->base);
>  
> -	intel_unreference_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
> +	intel_dpll_unreference_crtc(crtc, pll, &dpll_state[pll->index]);
>  }
>  
>  static void intel_put_dpll(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index f497a9ec863d..8b596a96344f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -404,7 +404,7 @@ int intel_reserve_dplls(struct intel_atomic_state *state,
>  			struct intel_encoder *encoder);
>  void intel_release_dplls(struct intel_atomic_state *state,
>  			 struct intel_crtc *crtc);
> -void intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
> +void intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
>  				 const struct intel_dpll *pll,
>  				 struct intel_dpll_state *shared_dpll_state);
>  void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index ed4f305e0d3e..ee156cf2c5ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -93,7 +93,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
>  	crtc->base.enabled = false;
>  
>  	if (crtc_state->intel_dpll)
> -		intel_unreference_dpll_crtc(crtc,
> +		intel_dpll_unreference_crtc(crtc,
>  					    crtc_state->intel_dpll,
>  					    &crtc_state->intel_dpll->state);
>  }

-- 
Jani Nikula, Intel
