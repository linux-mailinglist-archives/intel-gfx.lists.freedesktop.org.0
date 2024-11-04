Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 111CF9BB75C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 15:18:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0841310E44D;
	Mon,  4 Nov 2024 14:18:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ChbCkAT7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A50710E44D;
 Mon,  4 Nov 2024 14:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730729893; x=1762265893;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ODQBQ+LZqLmdUr4jv7DcVhh4hcnTen2CNE4g1iGUAek=;
 b=ChbCkAT7EyEZc0GzjumnargCdyWNE4HgIoLF3jllb0W5pMI94lC3/vyL
 jhuIk5rF7C1pfiM8HZrv6hDYXqj7udPv3wRBgAx2bUx+Qu8rhfOTW9/vl
 mhM6vUQ8Ctw9wc0Nv1m1vFDitIZQsT/D89UWnl2EJzi8e7u9WsAFanF2f
 KT1YRMqsaLDO4DvZijo/XpEjDBua+rcFDOspp/ruubrLT8W7mrBjEekej
 3iCYEX9k0nOiGmaKkS6euHlbidnzYpagEkCMIWwCi66yxtuYsgn+YYqXl
 S4tMekKRP6OMuu5nB+vsWwkuVZ6P04HjLPQyGs+dm1mhayxKoVI4FcVAX g==;
X-CSE-ConnectionGUID: /Co1X3y3RnKQTW4aRmr0aQ==
X-CSE-MsgGUID: KdmRB4A3SM6eU2JZo9SEMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="33265128"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="33265128"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 06:18:13 -0800
X-CSE-ConnectionGUID: zSBicn2ORCKEUoCgbrtZ7Q==
X-CSE-MsgGUID: tgm4LAHlT1Ksw870wBCzuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83777693"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 06:18:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Implement WA to help reach PC10
In-Reply-To: <20241104091257.731388-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241104091257.731388-1-suraj.kandpal@intel.com>
Date: Mon, 04 Nov 2024 16:18:08 +0200
Message-ID: <87bjyvhylb.fsf@intel.com>
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

On Mon, 04 Nov 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> To reach PC10 when PKG_C_LATENCY is configure we must do the following
> things
> 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be entered
> 2) Allow PSR2 deep sleep when DC5 can be entered
> 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
> eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are
> not happening.
>
> --v2
> -Add debug prints
>
> --v3
> -use crtc as variable name for intel_crtc [Jani]
> -use encoder as variable name for intel_encoder [Jani]
> -No changes in intel_dp in compute_config_late [Jani]
>
> --v4
> -Remove "check" from naming [Jani]
> -Remove intel_encoder variable which is not necessary in
> compute_config_late
>
> WA: 22019444797
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +
>  .../drm/i915/display/intel_display_types.h    |   6 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 130 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_psr.h      |   1 +
>  4 files changed, 139 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 0535daed6a9f..8e0fb6bd6211 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4403,6 +4403,9 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
>  			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
>  	}
>  
> +	if (intel_encoder_is_dp(encoder))
> +		intel_psr_compute_config_late(crtc_state);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ff6eb93337e0..dd5f3ea90e5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1089,6 +1089,9 @@ struct intel_crtc_state {
>  	bool req_psr2_sdp_prior_scanline;
>  	bool has_panel_replay;
>  	bool wm_level_disabled;
> +	bool is_wa_delayed_vblank_limit;
> +	bool is_dpkgc_configured;
> +	bool is_dc5_entry_possible;
>  	u32 dc3co_exitline;
>  	u16 su_y_granularity;
>  
> @@ -1587,6 +1590,9 @@ struct intel_psr {
>  #define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
>  
>  	u32 debug;
> +	bool is_dpkgc_configured;
> +	bool is_dc5_entry_possible;
> +	bool is_wa_delayed_vblank_limit;

I don't understand why all of these need to be duplicated in struct
intel_psr.

I get that you don't necessarily have access to the crtc state in all
circumstances. But doesn't the workaround basically boil down to using 0
idle frames in hsw_activate_psr2()?

>  	bool sink_support;
>  	bool source_support;
>  	bool enabled;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index a784c0b81556..b93358a82aa3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -26,6 +26,7 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_damage_helper.h>
>  #include <drm/drm_debugfs.h>
> +#include <drm/drm_vblank.h>
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> @@ -898,6 +899,81 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
>  	return idle_frames;
>  }
>  
> +static bool
> +intel_psr_wa_delayed_vblank(const struct drm_display_mode *adjusted_mode)
> +{
> +	return (adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay) >= 6;
> +}
> +
> +/*
> + * PKG_C_LATENCY is configured only when DISPLAY_VER >= 20 and
> + * VRR is not enabled
> + */
> +static bool intel_psr_is_dpkgc_configured(struct intel_display *display,
> +					  struct intel_crtc_state *crtc_state)
> +{
> +	if (DISPLAY_VER(display) < 20 || crtc_state->vrr.enable)
> +		return false;
> +
> +	return true;

IOW,

	return DISPLAY_VER(display) >= 20 && !crtc_state->vrr.enable;

> +}
> +
> +static bool wa_22019444797_psr1(const struct intel_crtc_state *crtc_state,
> +				struct intel_psr *psr)

I really dislike function names like this. It doesn't say *anything* to
the reader. It's hard to pronounce. It's hard to talk about. I don't
know what it means.

Something like psr1_needs_wa_22019444797() is already much better, even
if it still contains the wa number. It tells what it's about, and the
reader doesn't have to try to guess.

> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (DISPLAY_VER(display) == 20 && psr->is_dpkgc_configured &&
> +	    (psr->is_wa_delayed_vblank_limit || !psr->is_dc5_entry_possible) &&
> +	   !crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
> +		drm_dbg_kms(display->drm,
> +			    "Wa 22019444797 requirement met PSR1 disabled\n");

That debug log message is not a sentence. Maybe something like,
"Disabling PSR1 due to wa 22019444797\n".

> +		return true;
> +	} else {
> +		return false;
> +	}
> +}

Why is this function looking at struct intel_psr to make decisions?
Shouldn't it use old and new crtc state, and nothing else?

> +
> +/*
> + * DC5 entry is only possible if vblank interrupt is disabled
> + * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
> + * enabled encoders.
> + */
> +static bool
> +intel_psr_is_dc5_entry_possible(struct intel_display *display,
> +				struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc;
> +
> +	if ((display->power.domains.target_dc_state &
> +	     DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0)
> +		return false;
> +
> +	if (!crtc_state->has_psr && !crtc_state->has_sel_update &&
> +	    !crtc_state->has_panel_replay)
> +		return false;
> +
> +	for_each_intel_crtc(display->drm, crtc) {
> +		struct drm_vblank_crtc *vblank;
> +		struct intel_encoder *encoder;
> +
> +		if (!crtc->active)
> +			continue;
> +
> +		vblank = drm_crtc_vblank_crtc(&crtc->base);
> +
> +		if (vblank->enabled)
> +			return false;
> +
> +		for_each_encoder_on_crtc(display->drm, &crtc->base, encoder)
> +			if (encoder->type != INTEL_OUTPUT_EDP ||
> +			    !CAN_PSR(enc_to_intel_dp(encoder)))
> +				return false;
> +	}
> +
> +	return true;
> +}
> +
>  static void hsw_activate_psr1(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> @@ -1010,7 +1086,18 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	u32 val = EDP_PSR2_ENABLE;
>  	u32 psr_val = 0;
>  
> -	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> +	/*
> +	 * Wa_22019444797
> +	 * TODO: Disable idle frames when vblank gets enabled while
> +	 * PSR2 is enabled
> +	 */
> +	if (DISPLAY_VER(dev_priv) != 20 ||
> +	    !intel_dp->psr.is_dpkgc_configured ||
> +	    intel_dp->psr.is_dc5_entry_possible)
> +		val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> +	else
> +		drm_dbg_kms(display->drm,
> +			    "Wa 22019444797 requirement met PSR2 deep sleep disabled\n");

What if this was just something like,

	if (!intel_dp->psr.disable_idle_frames)
		val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));

And that was set where needed, and everything else was based on old/new
crtc state.

I'm just feeling really dumb because it's hard for me to follow what's
going on here in this patch. Is it really this complicated?

>  
>  	if (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))
>  		val |= EDP_SU_TRACK_ENABLE;
> @@ -1692,6 +1779,20 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
>  }
>  
> +void intel_psr_compute_config_late(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (DISPLAY_VER(display) == 20) {
> +		crtc_state->is_dpkgc_configured =
> +			intel_psr_is_dpkgc_configured(display, crtc_state);
> +		crtc_state->is_dc5_entry_possible =
> +			intel_psr_is_dc5_entry_possible(display, crtc_state);
> +		crtc_state->is_wa_delayed_vblank_limit =
> +			intel_psr_wa_delayed_vblank(&crtc_state->hw.adjusted_mode);
> +	}
> +}
> +
>  void intel_psr_get_config(struct intel_encoder *encoder,
>  			  struct intel_crtc_state *pipe_config)
>  {
> @@ -2774,6 +2875,22 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> +static void
> +wa_22019444797_fill_psr_params(const struct intel_crtc_state *crtc_state,
> +			       struct intel_psr *psr)

Again, that's a horrible function name. This doesn't have to include the
workaround number in any way.

The rule of thumb: Say the function name aloud, as if you were
discussing the code with someone. If it's difficult to talk about, it's
probably not a good name.

> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (DISPLAY_VER(display) == 20) {

I think this part is independent of display version.

> +		psr->is_dpkgc_configured =
> +			crtc_state->is_dpkgc_configured;
> +		psr->is_dc5_entry_possible =
> +			crtc_state->is_dc5_entry_possible;
> +		psr->is_wa_delayed_vblank_limit =
> +			crtc_state->is_wa_delayed_vblank_limit;
> +	}
> +}

Again, why do we need all of this duplicated? I think it only boils down
to just one thing in struct intel_psr, unless I'm mistaken.

> +
>  void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc)
>  {
> @@ -2796,6 +2913,8 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  
>  		mutex_lock(&psr->lock);
>  
> +		wa_22019444797_fill_psr_params(new_crtc_state, psr);
> +

So you're filling stuff from new_crtc_state into psr.

>  		/*
>  		 * Reasons to disable:
>  		 * - PSR disabled in new state
> @@ -2803,6 +2922,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  		 * - Changing between PSR versions
>  		 * - Region Early Transport changing
>  		 * - Display WA #1136: skl, bxt
> +		 * - Display WA_22019444797
>  		 */
>  		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
>  		needs_to_disable |= !new_crtc_state->has_psr;
> @@ -2812,6 +2932,8 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  			psr->su_region_et_enabled;
>  		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
>  			new_crtc_state->wm_level_disabled;
> +		/* TODO: Disable PSR1 when vblank gets enabled while PSR1 is enabled */
> +		needs_to_disable |= wa_22019444797_psr1(new_crtc_state, psr);

And then use it here. I don't get it.

>  
>  		if (psr->enabled && needs_to_disable)
>  			intel_psr_disable_locked(intel_dp);
> @@ -2852,6 +2974,12 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
>  		keep_disabled |= DISPLAY_VER(display) < 11 &&
>  			crtc_state->wm_level_disabled;
>  
> +		/*
> +		 * Wa_22019444797
> +		 * TODO: Disable PSR1 when vblank gets enabled while PSR1 is enabled
> +		 */
> +		keep_disabled |= wa_22019444797_psr1(crtc_state, psr);

So this carries it over from pre plane update new crtc state via
psr... but it's all very confusing.

BR,
Jani.

> +
>  		if (!psr->enabled && !keep_disabled)
>  			intel_psr_enable_locked(intel_dp, crtc_state);
>  		else if (psr->enabled && !crtc_state->wm_level_disabled)
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 956be263c09e..0923a2f74901 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -47,6 +47,7 @@ void intel_psr_init(struct intel_dp *intel_dp);
>  void intel_psr_compute_config(struct intel_dp *intel_dp,
>  			      struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state);
> +void intel_psr_compute_config_late(struct intel_crtc_state *crtc_state);
>  void intel_psr_get_config(struct intel_encoder *encoder,
>  			  struct intel_crtc_state *pipe_config);
>  void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);

-- 
Jani Nikula, Intel
