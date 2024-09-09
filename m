Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 046B7971C2D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 16:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE63B10E59B;
	Mon,  9 Sep 2024 14:12:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CfXDVESI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A641B10E59B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 14:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725891129; x=1757427129;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ASZH7vQ5PxhPw2pe/cZrQhQ5HDXZsIye34ovc6d0ILE=;
 b=CfXDVESIWx4XpYBMWfxFb2De+4z1SZGyQhrhvA1ztmgYDzXX3BXFCrmv
 I2lMakYGOulCvjZ01L75t1jN62kxU0pBqukXG0Vab/APzE8NC7MpdQy5H
 5MOE32nnrXu6KotxdNO2rk+ZnFhtVXPfDXNnHc61e7kDDOr515QOQZsLG
 1tdiJyiTA31Bea3/yL1in6fHKSpNsfq+YN++aSk0auhLBLSXn6BJ9WulT
 26tpGq6sI4AlYVa3WyjHD9UJgfl2dfg/91bez+Nlc5bhmSiyTPSCellKz
 ErXxiwCZbKzf9BXkPepPOX7FYSW3nwZkMbfby5FyI9WwOCIJws9SFmXNm w==;
X-CSE-ConnectionGUID: OFB01FEETD2kUy7V8xPzug==
X-CSE-MsgGUID: td7iVyXLRd2Q/y1aptmwjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24137783"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="24137783"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 07:12:09 -0700
X-CSE-ConnectionGUID: Hq8zHk4ySvqIgszhHQndeA==
X-CSE-MsgGUID: HlafSqD9QGaS4wptJG6LQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="66742087"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Sep 2024 07:12:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Sep 2024 17:12:06 +0300
Date: Mon, 9 Sep 2024 17:12:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, uma.shankar@intel.com,
 jouni.hogander@intel.com
Subject: Re: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Message-ID: <Zt8CNhEz5dYpigSy@intel.com>
References: <20240902050214.127352-1-suraj.kandpal@intel.com>
 <20240903082450.222141-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240903082450.222141-1-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Sep 03, 2024 at 01:54:50PM +0530, Suraj Kandpal wrote:
> To reach PC10 when PKG_C_LATENCY is configure we must do the following
> things
> 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be entered
> 2) Allow PSR2 deep sleep when DC5 can be entered
> 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
> eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are
> not happening.
> 
> --v2
> -Switch condition and do an early return [Jani]
> -Do some checks in compute_config [Jani]
> -Do not use register reads as a method of checking states for
> DPKGC or delayed vblank [Jani]
> -Use another way to see is vblank interrupts are disabled or not [Jani]
> 
> --v3
> -Use has_psr to check if psr can be enabled or not for dc5_entry cond
> [Uma]
> -Move the dc5 entry computation to psr_compute_config [Jouni]
> -No need to change sequence of enabled and activate,
> so dont make hsw_psr1_activate return anything [Jouni]
> -Use has_psr to stop psr1 activation [Jouni]
> -Use lineage no. in WA
> -Add the display ver restrictions for WA
> 
> --v4
> -use more appropriate name for check_vblank_limit() [Jouni]
> -Cover the case for idle frames when dpkgc is not configured [Jouni]
> -Check psr only for edp [Jouni]
> 
> WA: 22019444797
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 101 +++++++++++++++++-
>  2 files changed, 102 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index fa03157554b2..6b95a59aba2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1717,6 +1717,8 @@ struct intel_psr {
>  	bool sink_support;
>  	bool source_support;
>  	bool enabled;
> +	bool is_dpkgc_configured;
> +	bool is_dc5_entry_possible;
>  	bool paused;
>  	enum pipe pipe;
>  	enum transcoder transcoder;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 257526362b39..6eb137ecd49f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -870,6 +870,74 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
>  	return idle_frames;
>  }
>  
> +static bool intel_psr_check_wa_delayed_vblank(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	return (adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay) >= 6;
> +}
> +
> +/*
> + * PKG_C_LATENCY is configured only when DISPLAY_VER >= 20 and
> + * VRR is not enabled
> + */
> +static bool intel_psr_is_dpkgc_configured(struct drm_i915_private *i915)
> +{
> +	struct intel_crtc *intel_crtc;
> +
> +	if (DISPLAY_VER(i915) < 20)
> +		return false;
> +
> +	for_each_intel_crtc(&i915->drm, intel_crtc) {
> +		struct intel_crtc_state *crtc_state;
> +
> +		if (!intel_crtc->active)
> +			continue;
> +
> +		crtc_state = intel_crtc->config;

We are trying to remove all that old junk. Please do not use.

> +
> +		if (crtc_state->vrr.enable)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +/*
> + * DC5 entry is only possible if vblank interrupt is disabled
> + * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
> + * enabled encoders.
> + */
> +static bool
> +intel_psr_is_dc5_entry_possible(struct drm_i915_private *i915,
> +				struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *intel_crtc;
> +
> +	if (!crtc_state->has_psr)
> +		return false;
> +
> +	for_each_intel_crtc(&i915->drm, intel_crtc) {
> +		struct drm_crtc *crtc = &intel_crtc->base;
> +		struct drm_vblank_crtc *vblank;
> +		struct intel_encoder *encoder;
> +
> +		if (!intel_crtc->active)
> +			continue;
> +
> +		vblank = drm_crtc_vblank_crtc(crtc);
> +
> +		if (vblank->enabled)
> +			return false;
> +
> +		for_each_encoder_on_crtc(&i915->drm, crtc, encoder)
> +			if (encoder->type != INTEL_OUTPUT_EDP)
> +				return false;
> +	}
> +
> +	return true;
> +}
> +
>  static void hsw_activate_psr1(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> @@ -980,7 +1048,11 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	u32 val = EDP_PSR2_ENABLE;
>  	u32 psr_val = 0;
>  
> -	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> +	/* Wa_22019444797 */
> +	if (DISPLAY_VER(dev_priv) != 20 ||
> +	    !intel_dp->psr.is_dpkgc_configured ||
> +	    intel_dp->psr.is_dc5_entry_possible)
> +		val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>  
>  	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
>  		val |= EDP_SU_TRACK_ENABLE;
> @@ -1595,6 +1667,32 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> +static void wa_22019444797(struct intel_dp *intel_dp,
> +			   struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +
> +	if (DISPLAY_VER(i915) != 20)
> +		return;
> +
> +	intel_dp->psr.is_dpkgc_configured =
> +		intel_psr_is_dpkgc_configured(i915);
> +	intel_dp->psr.is_dc5_entry_possible =
> +		intel_psr_is_dc5_entry_possible(i915, crtc_state);
> +
> +	/* PSR2 not handled here. Wa not needed for Panel Replay */
> +	if (crtc_state->has_sel_update || crtc_state->has_panel_replay)
> +		return;
> +
> +	if (intel_dp->psr.is_dpkgc_configured &&
> +	    !(intel_psr_check_wa_delayed_vblank(crtc_state) ||
> +	      intel_dp->psr.is_dc5_entry_possible)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "PSR1 not enabled as it doesn't meet requirements of WA: 22019444797\n");
> +		crtc_state->has_psr = false;
> +	}
> +}
> +
>  void intel_psr_compute_config(struct intel_dp *intel_dp,
>  			      struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state)
> @@ -1641,6 +1739,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  		return;
>  
>  	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
> +	wa_22019444797(intel_dp, crtc_state);
>  }
>  
>  void intel_psr_get_config(struct intel_encoder *encoder,
> -- 
> 2.43.2

-- 
Ville Syrjälä
Intel
