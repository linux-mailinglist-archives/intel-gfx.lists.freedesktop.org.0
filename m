Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oANnBK8Z5mkprgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:18:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C2942A948
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABC8F10E574;
	Mon, 20 Apr 2026 12:18:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pnzm8Eeo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D3E10E573;
 Mon, 20 Apr 2026 12:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776687531; x=1808223531;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5aa15d/QxMqTN4bq8vFi/8Nrmo1nLSC9SwarpedlD9g=;
 b=Pnzm8Eeow/+wMV6Cshbrt+Fh297Sb2JYd2IKGtotduxMkWsDUa/8Qn5R
 rFN8NUoCeX9B/91IllLjkvCrSlN5YvC5mhuy64Ey0uKI9fe8ezqL+rn7B
 DsSKkYhuxue9qasQQqSNyBoCuJD3mau0E2JL1ZNjC519EBrsLk24bAs8j
 js7mhkch6hiwc35vJYmLdYyQKNfSd6txML6oIOO06ufPZou2uIPS8BEWZ
 nk88miull8iwhmYSeulr342LFSzz0wTmvTgUOGYdpefshhzvqEVQgwjJ4
 L+k+AuDeX5K+GKQHSTJ+DPkaEgLAclxLCMJpOOmj/vacGmyv/u6K7BV2J A==;
X-CSE-ConnectionGUID: Dj2rz1DhSkGYYLGRKrYXNQ==
X-CSE-MsgGUID: qXny28AkS32W3BcgMHddEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="100256599"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="100256599"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:18:50 -0700
X-CSE-ConnectionGUID: uBf+biCXTTmACgF7MbdKow==
X-CSE-MsgGUID: aE5PP0UrR42Yu5kv/WlvYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="231615149"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.126])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:18:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v3 5/8] drm/i915/display: move GLK clock gating init to
 display
In-Reply-To: <20260420103705.3453499-6-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260420103705.3453499-1-luciano.coelho@intel.com>
 <20260420103705.3453499-6-luciano.coelho@intel.com>
Date: Mon, 20 Apr 2026 15:18:46 +0300
Message-ID: <62156adba622de6f4ae294c09479bb1293c97c0e@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 82C2942A948
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 20 Apr 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
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
>  .../i915/display/intel_display_clock_gating.c | 57 +++++++++++++++++++
>  .../i915/display/intel_display_clock_gating.h |  1 +
>  drivers/gpu/drm/i915/intel_clock_gating.c     | 44 +-------------
>  3 files changed, 59 insertions(+), 43 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> index 59041c807d6d..b2cb18478577 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> @@ -6,11 +6,39 @@
>  #include <drm/intel/intel_gmd_misc_regs.h>
>  
>  #include "intel_de.h"
> +#include "intel_display.h"
>  #include "intel_display_clock_gating.h"
> +#include "intel_display_core.h"
>  #include "intel_display_regs.h"
>  
> +static void intel_display_gen9_init_clock_gating(struct intel_display *display)
> +{
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
> +	/*
> +	 * WaCompressedResourceDisplayNewHashMode:skl,kbl
> +	 * Display WA #0390: skl,kbl
> +	 *
> +	 * Must match Sampler, Pixel Back End, and Media. See
> +	 * WaCompressedResourceSamplerPbeMediaNewHashMode.
> +	 */
> +	intel_de_rmw(display, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE);
> +
> +	intel_display_gen9_init_clock_gating(display);
> +
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:skl
>  	 * Display WA #0562: skl
> @@ -20,6 +48,17 @@ void intel_display_skl_init_clock_gating(struct intel_display *display)
>  
>  void intel_display_kbl_init_clock_gating(struct intel_display *display)
>  {
> +	/*
> +	 * WaCompressedResourceDisplayNewHashMode:skl,kbl
> +	 * Display WA #0390: skl,kbl
> +	 *
> +	 * Must match Sampler, Pixel Back End, and Media. See
> +	 * WaCompressedResourceSamplerPbeMediaNewHashMode.
> +	 */
> +	intel_de_rmw(display, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE);
> +
> +	intel_display_gen9_init_clock_gating(display);
> +
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:kbl
>  	 * Display WA #0562: kbl
> @@ -29,6 +68,8 @@ void intel_display_kbl_init_clock_gating(struct intel_display *display)
>  
>  void intel_display_cfl_init_clock_gating(struct intel_display *display)
>  {
> +	intel_display_gen9_init_clock_gating(display);
> +
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:cfl
>  	 * Display WA #0562: cfl
> @@ -38,6 +79,8 @@ void intel_display_cfl_init_clock_gating(struct intel_display *display)
>  
>  void intel_display_bxt_init_clock_gating(struct intel_display *display)
>  {
> +	intel_display_gen9_init_clock_gating(display);
> +
>  	/*
>  	 * Wa: Backlight PWM may stop in the asserted state, causing backlight
>  	 * to stay fully on.
> @@ -60,3 +103,17 @@ void intel_display_bxt_init_clock_gating(struct intel_display *display)
>  	 */
>  	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
>  }
> +
> +void intel_display_glk_init_clock_gating(struct intel_display *display)
> +{
> +	intel_display_gen9_init_clock_gating(display);
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

The commit message should explain why removing this is okay.

BR,
Jani.

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
