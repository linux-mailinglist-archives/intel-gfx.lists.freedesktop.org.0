Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KCXBEfEy2mnLgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:55:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4F3369CA0
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E1E10E2AD;
	Tue, 31 Mar 2026 12:55:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uw+/9orw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC79010E2AD;
 Tue, 31 Mar 2026 12:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774961732; x=1806497732;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wwctyB/FFKZIJw+PilBvKc2aDtIb7NYykcZq69X6K6g=;
 b=Uw+/9orw8TOMXBuCQzaSJOBK7pZ5Uwhow1l09thRo+jRbORi56zuxO9T
 dILQl4ZbLkN2KKtYlG/XZEyi0uFjgOV5jvvA9knZWYxT0adPYGEVsAjCa
 5RBiBQ1UMBZeT+bZjjKcs86S3fzI2eT+dhMZwBxWz3O7SyvXKQTVoFJ88
 wxfmGcIxfJWl9TN7vc90pS4KTcFtnl71ujwkFux2blVv+gc2n89+eIPpP
 E9xZwNZzDnGmD4MuHThw6HSU3T4A1p6u1ZGEvcVkTl1z2sxo3wfiaNole
 Q5lI8T2hy2uwJgymiQ+PudC0fH1JIpTvR3syco/eF/nDvUKiUW+/XgfVN Q==;
X-CSE-ConnectionGUID: urceQYxJT/S1xUciY2Am7g==
X-CSE-MsgGUID: Egy7W4OuQsKNLAmK3/EDSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75144870"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75144870"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:55:31 -0700
X-CSE-ConnectionGUID: eWFM1Q71Qs2amlb1zohI0A==
X-CSE-MsgGUID: 2KxSvmEwQdOAxX0N3yHyVw==
X-ExtLoop1: 1
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:55:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 5/8] drm/i915/display: move GLK clock gating init to
 display
In-Reply-To: <20260331121608.1016333-6-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260331121608.1016333-1-luciano.coelho@intel.com>
 <20260331121608.1016333-6-luciano.coelho@intel.com>
Date: Tue, 31 Mar 2026 15:55:27 +0300
Message-ID: <2c0c3a5007240efaa419b88952bf6966a954af9b@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 8F4F3369CA0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 31 Mar 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> Move the GLK-specific display clock gating programming into display
> intel_display_clock_gating.c, to remove more dependencies from i915 to
> display registers.
>
> Now that all remaining Gen9-family callers moved into display, we can
> move the shared Gen9 display clock gating helper into display and
> remove the old local helper from intel_clock_gating.c.
>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  .../i915/display/intel_display_clock_gating.c | 63 +++++++++++++++++++
>  .../i915/display/intel_display_clock_gating.h |  1 +
>  drivers/gpu/drm/i915/intel_clock_gating.c     | 44 +------------
>  3 files changed, 65 insertions(+), 43 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> index 59041c807d6d..e3b7522b4101 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> @@ -6,11 +6,46 @@
>  #include <drm/intel/intel_gmd_misc_regs.h>
>  
>  #include "intel_de.h"
> +#include "intel_display.h"
>  #include "intel_display_clock_gating.h"
>  #include "intel_display_regs.h"
>  
> +#include "i915_drv.h"

Nope, we can't do this anymore. Sorry for not noticing it in v1.

intel_display_clock_gating.c is something that should be built for both
i915 and xe, regardless of the platforms. And compat i915_drv.h doesn't
exist anymore for xe. We've removed that include from all the display
code. The only one remaining is intel_fb_pin.c, which is i915 specific
adaptation code that we'll also need to tackle soon.

Similarly, we can't use to_i915() or HAS_LLC() either.

I don't have an alternative suggestion right now, but this is what we
can't do. Sorry.


BR,
Jani.


> +
> +static void intel_display_gen9_init_clock_gating(struct intel_display *display,
> +						 bool has_llc)
> +{
> +	if (has_llc) {
> +		/*
> +		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
> +		 * Display WA #0390: skl,kbl
> +		 *
> +		 * Must match Sampler, Pixel Back End, and Media. See
> +		 * WaCompressedResourceSamplerPbeMediaNewHashMode.
> +		 */
> +		intel_de_rmw(display, CHICKEN_PAR1_1, 0,
> +			     SKL_DE_COMPRESSED_HASH_MODE);
> +	}
> +
> +	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
> +	intel_de_rmw(display, CHICKEN_PAR1_1, 0, SKL_EDP_PSR_FIX_RDWRAP);
> +
> +	/* WaEnableChickenDCPR:skl,bxt,kbl,glk,cfl */
> +	intel_de_rmw(display, GEN8_CHICKEN_DCPR_1, 0, MASK_WAKEMEM);
> +
> +	/*
> +	 * WaFbcWakeMemOn:skl,bxt,kbl,glk,cfl
> +	 * Display WA #0859: skl,bxt,kbl,glk,cfl
> +	 */
> +	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_MEMORY_WAKE);
> +}
> +
>  void intel_display_skl_init_clock_gating(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	intel_display_gen9_init_clock_gating(display, HAS_LLC(i915));
> +
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:skl
>  	 * Display WA #0562: skl
> @@ -20,6 +55,10 @@ void intel_display_skl_init_clock_gating(struct intel_display *display)
>  
>  void intel_display_kbl_init_clock_gating(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	intel_display_gen9_init_clock_gating(display, HAS_LLC(i915));
> +
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:kbl
>  	 * Display WA #0562: kbl
> @@ -29,6 +68,10 @@ void intel_display_kbl_init_clock_gating(struct intel_display *display)
>  
>  void intel_display_cfl_init_clock_gating(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	intel_display_gen9_init_clock_gating(display, HAS_LLC(i915));
> +
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:cfl
>  	 * Display WA #0562: cfl
> @@ -38,6 +81,10 @@ void intel_display_cfl_init_clock_gating(struct intel_display *display)
>  
>  void intel_display_bxt_init_clock_gating(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	intel_display_gen9_init_clock_gating(display, HAS_LLC(i915));
> +
>  	/*
>  	 * Wa: Backlight PWM may stop in the asserted state, causing backlight
>  	 * to stay fully on.
> @@ -60,3 +107,19 @@ void intel_display_bxt_init_clock_gating(struct intel_display *display)
>  	 */
>  	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
>  }
> +
> +void intel_display_glk_init_clock_gating(struct intel_display *display)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	intel_display_gen9_init_clock_gating(display, HAS_LLC(i915));
> +
> +	/*
> +	 * WaDisablePWMClockGating:glk
> +	 * Backlight PWM may stop in the asserted state, causing backlight
> +	 * to stay fully on.
> +	 */
> +	intel_de_write(display, GEN9_CLKGATE_DIS_0,
> +		       intel_de_read(display, GEN9_CLKGATE_DIS_0) |
> +		       PWM1_GATING_DIS | PWM2_GATING_DIS);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> index 6bc84a9a4342..a7784db9d97a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> @@ -12,5 +12,6 @@ void intel_display_skl_init_clock_gating(struct intel_display *display);
>  void intel_display_kbl_init_clock_gating(struct intel_display *display);
>  void intel_display_cfl_init_clock_gating(struct intel_display *display);
>  void intel_display_bxt_init_clock_gating(struct intel_display *display);
> +void intel_display_glk_init_clock_gating(struct intel_display *display);
>  
>  #endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
> diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
> index 4c1937d922b2..777314e0c75d 100644
> --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -49,36 +49,8 @@ struct drm_i915_clock_gating_funcs {
>  	void (*init_clock_gating)(struct drm_i915_private *i915);
>  };
>  
> -static void gen9_init_clock_gating(struct drm_i915_private *i915)
> -{
> -	if (HAS_LLC(i915)) {
> -		/*
> -		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
> -		 * Display WA #0390: skl,kbl
> -		 *
> -		 * Must match Sampler, Pixel Back End, and Media. See
> -		 * WaCompressedResourceSamplerPbeMediaNewHashMode.
> -		 */
> -		intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE);
> -	}
> -
> -	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
> -	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, SKL_EDP_PSR_FIX_RDWRAP);
> -
> -	/* WaEnableChickenDCPR:skl,bxt,kbl,glk,cfl */
> -	intel_uncore_rmw(&i915->uncore, GEN8_CHICKEN_DCPR_1, 0, MASK_WAKEMEM);
> -
> -	/*
> -	 * WaFbcWakeMemOn:skl,bxt,kbl,glk,cfl
> -	 * Display WA #0859: skl,bxt,kbl,glk,cfl
> -	 */
> -	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_MEMORY_WAKE);
> -}
> -
>  static void bxt_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	gen9_init_clock_gating(i915);
> -
>  	/* WaDisableSDEUnitClockGating:bxt */
>  	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
> @@ -93,16 +65,7 @@ static void bxt_init_clock_gating(struct drm_i915_private *i915)
>  
>  static void glk_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	gen9_init_clock_gating(i915);
> -
> -	/*
> -	 * WaDisablePWMClockGating:glk
> -	 * Backlight PWM may stop in the asserted state, causing backlight
> -	 * to stay fully on.
> -	 */
> -	intel_uncore_write(&i915->uncore, GEN9_CLKGATE_DIS_0,
> -			   intel_uncore_read(&i915->uncore, GEN9_CLKGATE_DIS_0) |
> -			   PWM1_GATING_DIS | PWM2_GATING_DIS);
> +	intel_display_glk_init_clock_gating(i915->display);
>  }
>  
>  static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
> @@ -282,7 +245,6 @@ static void dg2_init_clock_gating(struct drm_i915_private *i915)
>  static void cfl_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	intel_pch_init_clock_gating(i915->display);
> -	gen9_init_clock_gating(i915);
>  
>  	/* WAC6entrylatency:cfl */
>  	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
> @@ -292,8 +254,6 @@ static void cfl_init_clock_gating(struct drm_i915_private *i915)
>  
>  static void kbl_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	gen9_init_clock_gating(i915);
> -
>  	/* WAC6entrylatency:kbl */
>  	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
>  
> @@ -312,8 +272,6 @@ static void kbl_init_clock_gating(struct drm_i915_private *i915)
>  
>  static void skl_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	gen9_init_clock_gating(i915);
> -
>  	/* WaDisableDopClockGating:skl */
>  	intel_uncore_rmw(&i915->uncore, GEN7_MISCCPCTL,
>  			 GEN7_DOP_CLOCK_GATE_ENABLE, 0);

-- 
Jani Nikula, Intel
