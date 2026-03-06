Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uH9tNza7qmmiVwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 12:32:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA80221FB17
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 12:32:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7E110ECF9;
	Fri,  6 Mar 2026 11:32:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HQn9HbLC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5264810ECF6;
 Fri,  6 Mar 2026 11:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772796722; x=1804332722;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lds6pTEObzSPW7m8edrM1NL1eYy5GgtSuT7YXkNSk5k=;
 b=HQn9HbLC0ZSEhp5HN+UBOhwUL4MhGfSSOz3nifiESgmTwUJTakKlbP56
 D7NlnI9lqKkaD38u1TxrgZLnIShtWAYMbdqEQrVXNy0F7+BOugnWV3ymH
 DZWudYwPojorsu+kkuUOT0WhpWQqjhs4JWbr8UQ9GDMWaP0rLR175rY3X
 HxJrSbEDy5QTtE1DVq8pwN+iqs+ArQrQ/2N5GG3CqvUgAzUYBY5cyqcIL
 9s7fCF+8O/S73AUqP3iIdhvtlY1NFtuJUM7BBl+L2WGIFy8cESKtDUzdY
 FM0RnsMh2DB039N1GWpv/PmiRQG+Dgm2EFH/SK6VNTu0RD4pig8/zx5bU g==;
X-CSE-ConnectionGUID: wI3ZRrarS22ATw27bbTIxA==
X-CSE-MsgGUID: Cz5jYEdPTbaZ9Qtp7CnYoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="76505829"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="76505829"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 03:32:01 -0800
X-CSE-ConnectionGUID: +YOhhGpBQNSKidDT2mx+0Q==
X-CSE-MsgGUID: baGjA+UtQ2iRiEIi9HL5Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="218221333"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.191])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 03:31:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com
Subject: Re: [PATCH v5 01/16] drm/i915/display: remove enum macro magic in
 intel_display_wa()
In-Reply-To: <20260305100100.332956-2-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260305100100.332956-1-luciano.coelho@intel.com>
 <20260305100100.332956-2-luciano.coelho@intel.com>
Date: Fri, 06 Mar 2026 13:31:55 +0200
Message-ID: <3ac0ffb3dae8ae824d34fc9330bbbc974af34651@intel.com>
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
X-Rspamd-Queue-Id: CA80221FB17
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

On Thu, 05 Mar 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> There's not much use in passing a number to the macro and let it
> convert that into the enum and a string.  It just hides the symbols.

There was a point, though. Passing a random number to intel_display_wa()
would fail the build. Now you'll only find out runtime. I'll concede
there's value, perhaps more so, in having the symbols not hidden.

> Remove the number to enum conversion magic in intel_display_wa().
>
> This has the side-effect of changing the print in the drm_WARN() that
> is issued when the number is not implemented, but that is moot anyway
> and can be changed later to something cleaner if needed.

I actually wonder if having the names there is really worth it. It's
just a bunch of rodata bloat for not much benefit. It should be easy
enough to find which enumerator isn't handled.

Maybe check the objdump bloat reduction with the intel_display_wa()
wrapper macro and the const char *name parameter removed?

BR,
Jani.

>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c              | 5 +++--
>  drivers/gpu/drm/i915/display/intel_display.c            | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_wa.c         | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_wa.h         | 2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c                | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_gmbus.c              | 6 +++---
>  drivers/gpu/drm/i915/display/skl_scaler.c               | 2 +-
>  8 files changed, 16 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 38331e899519..7767f8c198da 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1870,7 +1870,7 @@ static void icl_cdclk_pll_disable(struct intel_display *display)
>  	 *      after the PLL is enabled (which is already done as part of the
>  	 *      normal flow of _bxt_set_cdclk()).
>  	 */
> -	if (intel_display_wa(display, 13012396614))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_13012396614))
>  		intel_de_rmw(display, CDCLK_CTL, MDCLK_SOURCE_SEL_MASK, MDCLK_SOURCE_SEL_CD2XCLK);
>  
>  	intel_de_rmw(display, BXT_DE_PLL_ENABLE,
> @@ -2186,7 +2186,8 @@ static u32 bxt_cdclk_ctl(struct intel_display *display,
>  		 * icl_cdclk_pll_disable().  Here we are just making sure
>  		 * we keep the expected value.
>  		 */
> -		if (intel_display_wa(display, 13012396614) && vco == 0)
> +		if (intel_display_wa(display, INTEL_DISPLAY_WA_13012396614) &&
> +		    vco == 0)
>  			val |= MDCLK_SOURCE_SEL_CD2XCLK;
>  		else
>  			val |= xe2lpd_mdclk_source_sel(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 138ee7dd1977..15edf609fff4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1070,7 +1070,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
>  	if (audio_enabling(old_crtc_state, new_crtc_state))
>  		intel_encoders_audio_enable(state, crtc);
>  
> -	if (intel_display_wa(display, 14011503117)) {
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011503117)) {
>  		if (old_crtc_state->pch_pfit.enabled != new_crtc_state->pch_pfit.enabled)
>  			adl_scaler_ecc_unmask(new_crtc_state);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 9c8d29839caf..1e03187dbd38 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -249,7 +249,7 @@ static void hsw_power_well_post_enable(struct intel_display *display,
>  	if (irq_pipe_mask) {
>  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
>  
> -		if (intel_display_wa(display, 22021048059))
> +		if (intel_display_wa(display, INTEL_DISPLAY_WA_22021048059))
>  			dss_pipe_gating_enable_disable(display, irq_pipe_mask, false);
>  	}
>  }
> @@ -258,7 +258,7 @@ static void hsw_power_well_pre_disable(struct intel_display *display,
>  				       u8 irq_pipe_mask)
>  {
>  	if (irq_pipe_mask) {
> -		if (intel_display_wa(display, 22021048059))
> +		if (intel_display_wa(display, INTEL_DISPLAY_WA_22021048059))
>  			dss_pipe_gating_enable_disable(display, irq_pipe_mask, true);
>  
>  		gen8_irq_power_well_pre_disable(display, irq_pipe_mask);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index c2ccdca2c2f3..1d8340b36c01 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -87,7 +87,7 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  	case INTEL_DISPLAY_WA_22021048059:
>  		return IS_DISPLAY_VER(display, 14, 35);
>  	default:
> -		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
> +		drm_WARN(display->drm, 1, "Missing Wa: %s\n", name);
>  		break;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 767420d5f406..06c1f62c0f6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -40,6 +40,6 @@ enum intel_display_wa {
>  bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
>  
>  #define intel_display_wa(__display, __wa) \
> -	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa, __stringify(__wa))
> +	__intel_display_wa((__display), __wa, __stringify(__wa))
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 3e9b3e532499..5d0d7c1027f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -957,7 +957,7 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>  	 * Fixes: Screen flicker with FBC and Package C state enabled
>  	 * Workaround: Forced SLB invalidation before start of new frame.
>  	 */
> -	if (intel_display_wa(display, 22014263786))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_22014263786))
>  		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>  
> @@ -979,7 +979,7 @@ static void fbc_sys_cache_update_config(struct intel_display *display, u32 reg,
>  	 * Fixes: SoC hardware issue in read caching
>  	 * Workaround: disable cache read setting which is enabled by default.
>  	 */
> -	if (!intel_display_wa(display, 14025769978))
> +	if (!intel_display_wa(display, INTEL_DISPLAY_WA_14025769978))
>  		/* Cache read enable is set by default */
>  		reg |= FBC_SYS_CACHE_READ_ENABLE;
>  
> @@ -1612,7 +1612,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> -	if (intel_display_wa(display, 16023588340)) {
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16023588340)) {
>  		plane_state->no_fbc_reason = "Wa_16023588340";
>  		return 0;
>  	}
> @@ -1622,7 +1622,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	 * Fixes: Underrun during media decode
>  	 * Workaround: Do not enable FBC
>  	 */
> -	if (intel_display_wa(display, 15018326506)) {
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_15018326506)) {
>  		plane_state->no_fbc_reason = "Wa_15018326506";
>  		return 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 38706017c0c6..df48f27f1cc1 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -250,7 +250,7 @@ static u32 get_reserved(struct intel_gmbus *bus)
>  	preserve_bits |= GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE;
>  
>  	/* Wa_16025573575: the masks bits need to be preserved through out */
> -	if (intel_display_wa(display, 16025573575))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
>  		preserve_bits |= GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>  				 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>  
> @@ -342,7 +342,7 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>  	if (display->platform.pineview)
>  		pnv_gmbus_clock_gating(display, false);
>  
> -	if (intel_display_wa(display, 16025573575))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
>  		ptl_handle_mask_bits(bus, true);
>  
>  	set_data(bus, 1);
> @@ -363,7 +363,7 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
>  	if (display->platform.pineview)
>  		pnv_gmbus_clock_gating(display, true);
>  
> -	if (intel_display_wa(display, 16025573575))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
>  		ptl_handle_mask_bits(bus, false);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 4c4deac7f9c8..7c5cb188ebf0 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -823,7 +823,7 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>  			crtc_state->scaler_state.scaler_id < 0))
>  		return;
>  
> -	if (intel_display_wa(display, 14011503117))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011503117))
>  		adl_scaler_ecc_mask(crtc_state);
>  
>  	drm_rect_init(&src, 0, 0,

-- 
Jani Nikula, Intel
