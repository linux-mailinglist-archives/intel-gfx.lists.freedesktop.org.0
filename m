Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29D57EBD47
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 07:57:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6F310E4EF;
	Wed, 15 Nov 2023 06:57:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9540310E4EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 06:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700031474; x=1731567474;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jqW+ItY3ccdR07W2Gh67RPrV+3WmJ9k2Xdzpjiq4X+g=;
 b=kH2X5U1x2Vb966S7PzLUNqgQK1sgScWArlhj0qFLvUZsS6uK0o9p7qar
 GGDNTz8EmE6MqDpez/O7D2jRoHk+ACWgiZ4GOaTCSZtTLcsGQKGrelEEH
 pe4A8rAYSJEiEbTQZibwDGB3Exi9uwvxPW0fFxqXufJnvw3d/pZiasgeV
 y0AgBUGylPtMW0GcrV0dZYu/HYhtTvl7YO3RBPI1k8Yd+dTZu0hlArbJ4
 vxm47q8GNOFUWKobBETrS3WyvwdJ4d54pxWkwr2NJVEZpZ4zX1xee6THN
 gJVos0ExQfVF9jVIsfZ69mLQUN36C7wd503mmI2otk7+1jRyS4M6vNYxH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="9460847"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; 
   d="scan'208";a="9460847"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 22:57:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="758404154"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="758404154"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 14 Nov 2023 22:57:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Nov 2023 08:57:49 +0200
Date: Wed, 15 Nov 2023 08:57:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <ZVRr7RPlHfz-MbMz@intel.com>
References: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231115063054.3754600-4-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231115063054.3754600-4-mitulkumar.ajitkumar.golani@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915: Compute CMRR and calculate
 vtotal
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 15, 2023 at 12:00:54PM +0530, Mitul Golani wrote:
> Compute Fixed Average Vtotal/CMRR with resepect to
> userspace VRR enablement. Also calculate required
> parameters in case of CMRR is  enabled. During
> intel_vrr_compute_config, CMRR is getting enabled
> based on userspace has enabled Adaptive Sync Vtotal
> mode (Legacy VRR) or not.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 81 +++++++++++++++++--
>  3 files changed, 78 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f5a69309e65a..d61790f8ebb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5479,6 +5479,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_I(vrr.guardband);
>  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
> +		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>  	}
>  
>  #undef PIPE_CONF_CHECK_X
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 4299cc452e05..66cbc3a6bbe8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -68,6 +68,7 @@ struct drm_printer;
>  #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
>  					  BIT(trans)) != 0)
>  #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
> +#define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
>  #define INTEL_NUM_PIPES(i915)		(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
>  #define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)->has_hotplug)
>  #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 1e33661062b3..4a056a71b68d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -105,6 +105,52 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>  	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
>  }
>  
> +static int
> +is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
> +{
> +	int target_refresh_k, actual_refresh_k;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	target_refresh_k = drm_mode_vrefresh(adjusted_mode) * 1000;

That is just your 'actual_refresh' rounded to the nearest
integer. It is *not* any kind of target refresh rate.

> +	actual_refresh_k = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> +					adjusted_mode->crtc_htotal) * 1000;
> +	actual_refresh_k /= adjusted_mode->crtc_vtotal;
> +
> +	if (actual_refresh_k == target_refresh_k)
> +		return false;
> +
> +	return true;
> +}
> +
> +static unsigned int
> +cmrr_get_vtotal(struct intel_crtc_state *crtc_state)
> +{
> +	unsigned int muliplierM = 1, muliplierN = 1, vtotal;
> +	unsigned int actual_refresh_rate, desired_refresh_rate;
> +	unsigned long long actual_pixel_rate;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	actual_refresh_rate = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> +					   adjusted_mode->crtc_htotal) * 1000;
> +	actual_refresh_rate /= adjusted_mode->crtc_vtotal;
> +	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> +	actual_pixel_rate = actual_refresh_rate * adjusted_mode->crtc_vtotal;
> +	actual_pixel_rate = (actual_pixel_rate * adjusted_mode->crtc_htotal) / 1000;
> +
> +	if (is_cmrr_frac_required(crtc_state)) {
> +		muliplierM = 1001;
> +		muliplierN = 1000;
> +	}
> +
> +	crtc_state->cmrr.cmrr_n = DIV_ROUND_UP(desired_refresh_rate *
> +			adjusted_mode->crtc_htotal * muliplierN, muliplierM) * muliplierN;
> +	vtotal = DIV_ROUND_UP(actual_pixel_rate * muliplierN, crtc_state->cmrr.cmrr_n);
> +	crtc_state->cmrr.cmrr_m =
> +		(actual_pixel_rate * muliplierM) % crtc_state->cmrr.cmrr_n;
> +
> +	return vtotal;
> +}
> +
>  void
>  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			 struct drm_connector_state *conn_state)
> @@ -149,6 +195,27 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  
>  	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
>  
> +	/*
> +	 * When panel is VRR capable and userspace has
> +	 * not enabled adaptive sync mode then Fixed Average
> +	 * Vtotal mode should be enabled.
> +	 */
> +	if (crtc_state->uapi.vrr_enabled) {
> +		crtc_state->vrr.enable = true;
> +		if (HAS_CMRR(i915))
> +			crtc_state->cmrr.enable = false;
> +		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +	} else {
> +		crtc_state->vrr.enable = false;
> +		if (HAS_CMRR(i915)) {
> +			crtc_state->cmrr.enable = true;
> +			crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
> +			crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> +			crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> +			crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +		}
> +	}
> +
>  	/*
>  	 * For XE_LPD+, we use guardband and pipeline override
>  	 * is deprecated.
> @@ -161,11 +228,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
>  			    crtc_state->framestart_delay - 1);
>  	}
> -
> -	if (crtc_state->uapi.vrr_enabled) {
> -		crtc_state->vrr.enable = true;
> -		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> -	}
>  }
>  
>  static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
> @@ -295,6 +357,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  
>  	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
>  
> +	if (HAS_CMRR(dev_priv)) {
> +		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) &&
> +					  (trans_vrr_ctl & VRR_CTL_VRR_ENABLE);
> +		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
> +					 !(trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
> +	} else {
> +		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +	}
> +
>  	if (crtc_state->cmrr.enable) {
>  		cmrr_n_hi = intel_de_read(dev_priv, TRANS_CMRR_N_HI(cpu_transcoder));
>  		cmrr_n_lo = intel_de_read(dev_priv, TRANS_CMRR_N_LO(cpu_transcoder));
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
