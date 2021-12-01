Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF7C46510B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:11:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC85A6EA34;
	Wed,  1 Dec 2021 15:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 772EB6EA02
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:11:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="260452902"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="260452902"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:10:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="602184609"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 01 Dec 2021 07:10:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:10:26 +0200
Date: Wed, 1 Dec 2021 17:10:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YaeQYgSPTPPR0r8H@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
 <90cfbd8c3e79a742b0ee9e3ae75493acb0785dbb.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <90cfbd8c3e79a742b0ee9e3ae75493acb0785dbb.1638366969.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 01/10] drm/i915/display: add
 intel_crtc_wait_for_next_vblank() and use it
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 01, 2021 at 03:57:03PM +0200, Jani Nikula wrote:
> intel_wait_for_vblank() goes through a pipe to crtc lookup, while in
> most cases we already have the crtc available. Avoid the extra lookups
> by adding an intel_crtc based helper.
> 
> v2:
> - Add intel_crtc_wait_for_next_vblank() helper (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |  4 +--
>  drivers/gpu/drm/i915/display/intel_display.c  | 32 +++++++++----------
>  .../drm/i915/display/intel_display_types.h    | 12 +++++--
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |  7 ++--
>  6 files changed, 32 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index f0f28572dfdc..42533e6457b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -321,8 +321,8 @@ static void hsw_enable_crt(struct intel_atomic_state *state,
>  
>  	intel_crt_set_dpms(encoder, crtc_state, DRM_MODE_DPMS_ON);
>  
> -	intel_wait_for_vblank(dev_priv, pipe);
> -	intel_wait_for_vblank(dev_priv, pipe);
> +	intel_crtc_wait_for_next_vblank(crtc);
> +	intel_crtc_wait_for_next_vblank(crtc);
>  	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
>  	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4b065a281d69..503074dc5690 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -775,7 +775,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
>  	 */
>  	if (HAS_GMCH(dev_priv) &&
>  	    intel_set_memory_cxsr(dev_priv, false))
> -		intel_wait_for_vblank(dev_priv, crtc->pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  
>  	/*
>  	 * Gen2 reports pipe underruns whenever all planes are disabled.
> @@ -785,7 +785,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
>  
>  	intel_plane_disable_arm(plane, crtc_state);
> -	intel_wait_for_vblank(dev_priv, crtc->pipe);
> +	intel_crtc_wait_for_next_vblank(crtc);
>  }
>  
>  unsigned int
> @@ -1011,7 +1011,7 @@ bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv)
>  		if (cleanup_done)
>  			continue;
>  
> -		drm_crtc_wait_one_vblank(crtc);
> +		intel_crtc_wait_for_next_vblank(to_intel_crtc(crtc));
>  
>  		return true;
>  	}
> @@ -1158,7 +1158,7 @@ void hsw_disable_ips(const struct intel_crtc_state *crtc_state)
>  	}
>  
>  	/* We need to wait for a vblank before we can disable the plane. */
> -	intel_wait_for_vblank(dev_priv, crtc->pipe);
> +	intel_crtc_wait_for_next_vblank(crtc);
>  }
>  
>  static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
> @@ -1389,7 +1389,6 @@ static void intel_crtc_disable_flip_done(struct intel_atomic_state *state,
>  static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
>  					     struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state =
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	const struct intel_crtc_state *new_crtc_state =
> @@ -1415,7 +1414,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
>  	}
>  
>  	if (need_vbl_wait)
> -		intel_wait_for_vblank(i915, crtc->pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  }
>  
>  static void intel_pre_plane_update(struct intel_atomic_state *state,
> @@ -1434,7 +1433,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  		hsw_disable_ips(old_crtc_state);
>  
>  	if (intel_fbc_pre_update(state, crtc))
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  
>  	if (!needs_async_flip_vtd_wa(old_crtc_state) &&
>  	    needs_async_flip_vtd_wa(new_crtc_state))
> @@ -1466,7 +1465,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  	 */
>  	if (HAS_GMCH(dev_priv) && old_crtc_state->hw.active &&
>  	    new_crtc_state->disable_cxsr && intel_set_memory_cxsr(dev_priv, false))
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  
>  	/*
>  	 * IVB workaround: must disable low power watermarks for at least
> @@ -1477,7 +1476,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  	 */
>  	if (old_crtc_state->hw.active &&
>  	    new_crtc_state->disable_lp_wm && ilk_disable_lp_wm(dev_priv))
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  
>  	/*
>  	 * If we're doing a modeset we don't need to do any
> @@ -1893,8 +1892,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
>  	 * in case there are more corner cases we don't know about.
>  	 */
>  	if (new_crtc_state->has_pch_encoder) {
> -		intel_wait_for_vblank(dev_priv, pipe);
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  	}
>  	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
>  	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
> @@ -2094,7 +2093,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	intel_encoders_enable(state, crtc);
>  
>  	if (psl_clkgate_wa) {
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
>  	}
>  
> @@ -2529,7 +2528,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
>  
>  	/* prevents spurious underruns */
>  	if (DISPLAY_VER(dev_priv) == 2)
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  }
>  
>  static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -2560,7 +2559,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
>  	 * wait for planes to fully turn off before disabling the pipe.
>  	 */
>  	if (DISPLAY_VER(dev_priv) == 2)
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  
>  	intel_encoders_disable(state, crtc);
>  
> @@ -4645,7 +4644,8 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
>  	drm_atomic_state_put(state);
>  
>  	/* let the connector get through one full cycle before testing */
> -	intel_wait_for_vblank(dev_priv, crtc->pipe);
> +	intel_crtc_wait_for_next_vblank(crtc);
> +
>  	return true;
>  
>  fail:
> @@ -8462,7 +8462,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  			if (!skl_ddb_entry_equal(&new_crtc_state->wm.skl.ddb,
>  						 &old_crtc_state->wm.skl.ddb) &&
>  			    (update_pipes | modeset_pipes))
> -				intel_wait_for_vblank(dev_priv, pipe);
> +				intel_crtc_wait_for_next_vblank(crtc);
>  		}
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index b9c967837872..286c55c45f01 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -2019,21 +2019,27 @@ intel_crtc_needs_modeset(const struct intel_crtc_state *crtc_state)
>  	return drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
>  }
>  
> +static inline void
> +intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
> +{
> +	drm_crtc_wait_one_vblank(&crtc->base);
> +}
> +
>  static inline void
>  intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
>  	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
>  
> -	drm_crtc_wait_one_vblank(&crtc->base);
> +	intel_crtc_wait_for_next_vblank(crtc);
>  }
>  
>  static inline void
>  intel_wait_for_vblank_if_active(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
> -	const struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
> +	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
>  
>  	if (crtc->active)
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  }
>  
>  static inline bool intel_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5a8206298691..a24831acb7da 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3905,7 +3905,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  			to_intel_crtc_state(crtc->base.state);
>  
>  		/* Keep underrun reporting disabled until things are stable */
> -		intel_wait_for_vblank(dev_priv, crtc->pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
>  		if (crtc_state->has_pch_encoder)
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 2dc6c3742ba2..76e1188b01d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1842,7 +1842,7 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
>  	intel_sdvo_write_sdvox(intel_sdvo, temp);
>  
>  	for (i = 0; i < 2; i++)
> -		intel_wait_for_vblank(dev_priv, crtc->pipe);
> +		intel_crtc_wait_for_next_vblank(crtc);
>  
>  	success = intel_sdvo_get_trained_inputs(intel_sdvo, &input1, &input2);
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index 88a398df9621..fc77947dc3d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -924,8 +924,7 @@ intel_enable_tv(struct intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  
>  	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
> -	intel_wait_for_vblank(dev_priv,
> -			      to_intel_crtc(pipe_config->uapi.crtc)->pipe);
> +	intel_crtc_wait_for_next_vblank(to_intel_crtc(pipe_config->uapi.crtc));
>  
>  	intel_de_write(dev_priv, TV_CTL,
>  		       intel_de_read(dev_priv, TV_CTL) | TV_ENC_ENABLE);
> @@ -1618,7 +1617,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  	intel_de_write(dev_priv, TV_DAC, tv_dac);
>  	intel_de_posting_read(dev_priv, TV_DAC);
>  
> -	intel_wait_for_vblank(dev_priv, crtc->pipe);
> +	intel_crtc_wait_for_next_vblank(crtc);
>  
>  	type = -1;
>  	tv_dac = intel_de_read(dev_priv, TV_DAC);
> @@ -1651,7 +1650,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  	intel_de_posting_read(dev_priv, TV_CTL);
>  
>  	/* For unknown reasons the hw barfs if we don't do this vblank wait. */
> -	intel_wait_for_vblank(dev_priv, crtc->pipe);
> +	intel_crtc_wait_for_next_vblank(crtc);
>  
>  	/* Restore interrupt config */
>  	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
