Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB307ED1FE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 21:30:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D95C10E238;
	Wed, 15 Nov 2023 20:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1755D10E238
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 20:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700080216; x=1731616216;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IItJyf+VVoagrKvpfmVL73GhBYt6wTKpaMXV4rM+w6M=;
 b=LQjBlU4NSZRwKAGdS2D4dvgYNf+hcilS6cxDZpQ1X/RpYOnVTN7BkJb/
 okPfHTI2G3UG6/eIlNo4Pqlc+x/sllXCsQDmM62FBeaHNaeeQJB8yCuq9
 Rd3KfP7P1ImCQ8A/uUFvk0NgPeOfBFzQcB5N3VHLoEyf3I0vRVjnT/rHU
 thr2Bej+Z8px6DMhZdu2hUC6UrfSj5sBNvari/aHCwGrY8INQPud4ACrV
 pTEsSYcmvngw890ok9CfRZgfefWQ2k74AFeiOuVi3jrlQXu4KZrRHIe70
 Ium3aFHDQCCpMm8meh8mqCwHvZIM060rbj3E4lyN60BNmVUEwT6siI3DT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="12503262"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="12503262"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 12:30:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="758602068"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="758602068"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Nov 2023 12:30:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Nov 2023 22:30:11 +0200
Date: Wed, 15 Nov 2023 22:30:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <ZVUqUxkqzDMdoJL-@intel.com>
References: <20231115134326.3794326-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231115134326.3794326-4-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231115134326.3794326-4-mitulkumar.ajitkumar.golani@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Compute CMRR and calculate
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 15, 2023 at 07:13:26PM +0530, Mitul Golani wrote:
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
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 76 +++++++++++++++++--
>  3 files changed, 72 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ae7cc4eca064..7e38ac4d6185 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5482,6 +5482,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
> index 6da14c18a3e3..ab124e997ef2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -105,6 +105,52 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>  	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
>  }
>  
> +static bool
> +is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
> +{
> +	int calculated_refresh_k, actual_refresh_k;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	actual_refresh_k = drm_mode_vrefresh(adjusted_mode) * 1000;
> +	calculated_refresh_k = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> +					    adjusted_mode->crtc_htotal) * 1000;
> +	calculated_refresh_k /= adjusted_mode->crtc_vtotal;
> +
> +	if (calculated_refresh_k == actual_refresh_k)
> +		return false;
> +
> +	return true;
> +}
> +
> +static unsigned int
> +cmrr_get_vtotal(struct intel_crtc_state *crtc_state)
> +{
> +	int multiplier_m = 1, multiplier_n = 1, vtotal;
> +	int actual_refresh_rate, desired_refresh_rate;
> +	long long actual_pixel_rate, adjusted_pixel_rate;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	actual_refresh_rate = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> +					   adjusted_mode->crtc_htotal) * 1000;
> +	actual_refresh_rate /= adjusted_mode->crtc_vtotal;
> +	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);

The actual refresh rate is the desired refresh rate. None of this
stuff makes any sense.

> +	actual_pixel_rate = actual_refresh_rate * adjusted_mode->crtc_vtotal;
> +	actual_pixel_rate = (actual_pixel_rate * adjusted_mode->crtc_htotal) / 1000;
> +
> +	if (is_cmrr_frac_required(crtc_state)) {
> +		multiplier_m = 1001;
> +		multiplier_n = 1000;
> +	}
> +
> +	crtc_state->cmrr.cmrr_n = DIV_ROUND_UP(desired_refresh_rate *
> +			adjusted_mode->crtc_htotal * multiplier_n, multiplier_m) * multiplier_n;
> +	vtotal = DIV_ROUND_UP(actual_pixel_rate * multiplier_n, crtc_state->cmrr.cmrr_n);
> +	adjusted_pixel_rate = actual_pixel_rate * multiplier_m;
> +	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> +
> +	return vtotal;
> +}
> +
>  void
>  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			 struct drm_connector_state *conn_state)
> @@ -149,6 +195,22 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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
> +		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +	} else if (HAS_CMRR(i915)) {
> +		crtc_state->cmrr.enable = true;
> +		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
> +		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> +		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> +		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +	}
> +
>  	/*
>  	 * For XE_LPD+, we use guardband and pipeline override
>  	 * is deprecated.
> @@ -161,11 +223,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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
> @@ -292,7 +349,14 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  
>  	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
>  
> -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +	if (HAS_CMRR(dev_priv)) {
> +		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) &&
> +					  (trans_vrr_ctl & VRR_CTL_VRR_ENABLE);
> +		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
> +					 !(trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
> +	} else {
> +		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +	}
>  
>  	if (crtc_state->cmrr.enable) {
>  		crtc_state->cmrr.cmrr_n =
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
