Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0570FA463F5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 16:01:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F88610E214;
	Wed, 26 Feb 2025 15:01:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BVbDyHqb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADD1910E214;
 Wed, 26 Feb 2025 15:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740582084; x=1772118084;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3Bs+LhyTcUWY2lTK7281Hh0wdkeyQTayxbCrbD60HuA=;
 b=BVbDyHqbzUQ+Nt7B8ahKBKTJN0r/5v1rJ2BfY3+cVBxQ9UUVuDqPrXl9
 h2/tL1pSx+L97keTqlAP69LnAynB3IrAsdH2EHMzjuda90h5ps6D9gEH6
 05rlO0AQUxuVvotJ9sQNPV/CZ7dsyj1zVZ4MpRQ+hIgp+1HJIoV3FDUbW
 fA2Hd9lrxQcSR81qCkfvTq2C0uPh2/phCQ03Oy12rJ0Y6/TVrhFTPY++P
 0VFImVMbTHD1QrTHu+/KbGQvUFN/BaGBsyMHMZKw8GsSUvnCK6rmHyNIW
 jz7dmP1LqGs6OeHCtOP1vs8ewtdvf0/pbnKUrkT6XrFcMEZWFBzD3fHLi w==;
X-CSE-ConnectionGUID: JTM9FBVbT12u9t/WfsUzyQ==
X-CSE-MsgGUID: ZYmL8vzyS5mhNb0VWt8jWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41354156"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="41354156"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 07:01:00 -0800
X-CSE-ConnectionGUID: lhBMw01GSjGDoCKpZhUcBA==
X-CSE-MsgGUID: SRALa7GKRfeZaZLsv9HQrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121977355"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 07:00:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 17:00:56 +0200
Date: Wed, 26 Feb 2025 17:00:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 16/20] drm/i915/display: Use fixed rr timings in
 intel_set_transcoder_timings_lrr()
Message-ID: <Z78sqJU5ikVe3mUb@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-17-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-17-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:13AM +0530, Ankit Nautiyal wrote:
> To have Guardband/Pipeline_full reconfigured seamlessly, move the
> guardband and pipeline_full checks out from the pure !fastset block in
> intel_pipe_config_compare().
> Update the intel_set_transcoder_timings_lrr() function to use
> fixed refresh rate timings for platforms which always use
> VRR timing generator.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 43 ++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++-
>  drivers/gpu/drm/i915/display/intel_vrr.h     |  2 +
>  3 files changed, 48 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 752ed44d8892..d3c12bc3645c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2854,6 +2854,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> +
> +	intel_vrr_set_fixed_rr_timings(crtc_state);
> +	intel_vrr_update_guardband(crtc_state, false);
>  }
>  
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
> @@ -5127,17 +5130,36 @@ pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
>  	intel_cx0pll_dump_hw_state(display, b);
>  }
>  
> -static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state)
> +static
> +bool allow_vrr_guardband_fastset(const struct intel_crtc_state *old_crtc_state,
> +				 const struct intel_crtc_state *new_crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(old_crtc_state);
> +
> +	if (!HAS_VRR(display))
> +		return false;
> +
> +	if (DISPLAY_VER(display) >= 13)
> +		return new_crtc_state->vrr.guardband != old_crtc_state->vrr.guardband;
> +
> +	return new_crtc_state->vrr.pipeline_full != old_crtc_state->vrr.pipeline_full;
> +}

None of this stuff should be necessary. allow_vblank_delay_fastset()
only says whether we're allowed the fastset or not. It isn't supposed
to check if it's necessary or not.

> +
> +static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state,
> +				       const struct intel_crtc_state *new_crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(old_crtc_state);
>  
>  	/*
> -	 * Allow fastboot to fix up vblank delay (handled via LRR
> -	 * codepaths), a bit dodgy as the registers aren't
> +	 * Allow fastboot to fix up vblank delay, vrr guardband/pipeline_full
> +	 * (handled via LRR codepaths), a bit dodgy as the registers aren't
>  	 * double buffered but seems to be working more or less...
>  	 */
> -	return HAS_LRR(display) && old_crtc_state->inherited &&
> -		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
> +	if (!HAS_LRR(display) || intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI))
> +		return false;
> +
> +	return old_crtc_state->inherited ||
> +	       allow_vrr_guardband_fastset(old_crtc_state, new_crtc_state);
>  }
>  
>  bool
> @@ -5273,7 +5295,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
>  	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
>  	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> -	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
> +	if (!fastset || !allow_vblank_delay_fastset(current_config, pipe_config)) \
>  		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
>  	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
>  	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> @@ -5569,8 +5591,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_I(vrr.vmin);
>  		PIPE_CONF_CHECK_I(vrr.vmax);
>  		PIPE_CONF_CHECK_I(vrr.flipline);
> -		PIPE_CONF_CHECK_I(vrr.pipeline_full);
> -		PIPE_CONF_CHECK_I(vrr.guardband);
>  		PIPE_CONF_CHECK_I(vrr.vsync_start);
>  		PIPE_CONF_CHECK_I(vrr.vsync_end);
>  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
> @@ -5578,6 +5598,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>  	}
>  
> +	if (!fastset || !allow_vblank_delay_fastset(current_config, pipe_config)) {
> +		PIPE_CONF_CHECK_I(vrr.guardband);
> +		PIPE_CONF_CHECK_I(vrr.pipeline_full);
> +	}

I'd like to see one patch that just moves these completely out
of the !fastset block, and a second patch that adds the fastboot
exception. That way if we do see any problems from the live
guardband reprogramming we can just revert it.

Hmm, except you haven't changed the vrr_compute_config() yet at
this point in the series, so changing this would break both fastset 
and state checker, I think. So we might have to move this patch to be
later in the series.

> +
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
>  #undef PIPE_CONF_CHECK_LLI
> @@ -5875,7 +5900,7 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
>  		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] fastset requirement not met, forcing full modeset\n",
>  			    crtc->base.base.id, crtc->base.name);
>  	} else {
> -		if (allow_vblank_delay_fastset(old_crtc_state))
> +		if (allow_vblank_delay_fastset(old_crtc_state, new_crtc_state))
>  			new_crtc_state->update_lrr = true;
>  		new_crtc_state->uapi.mode_changed = false;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 11b7edbdb116..e77f5b483b09 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -284,7 +284,6 @@ int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
>  	return intel_vrr_fixed_rr_vtotal(crtc_state);
>  }
>  
> -static
>  void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -677,3 +676,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	if (crtc_state->vrr.enable)
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
> +
> +void intel_vrr_update_guardband(const struct intel_crtc_state *crtc_state, bool needs_modeset)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 vrr_ctl = trans_vrr_ctl(crtc_state);
> +
> +	if (intel_vrr_always_use_vrr_tg(display) && !needs_modeset)
> +		vrr_ctl |= VRR_CTL_VRR_ENABLE;
> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 514822577e8a..e4e9cadcdf9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -35,5 +35,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_update_guardband(const struct intel_crtc_state *crtc_state, bool needs_modeset);
> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VRR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
