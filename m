Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1A12999A8
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Oct 2020 23:28:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5D06EA7E;
	Mon, 26 Oct 2020 22:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387D16EA7E
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Oct 2020 22:28:01 +0000 (UTC)
IronPort-SDR: tPV1l+gah34U4paCCLR06TZWHA74wYMG+mtXAWA65VGHMIQ1+g9fZ1J7mOcLrGD9l/BBgProqp
 7KDXPICJzzew==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="232184091"
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="232184091"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 15:28:00 -0700
IronPort-SDR: Pz5i1Bl/Oi2ycysmK9W9HPn8sEwyzeo7a0GMwGfM04AP7rDDmAnjZ44PJwZyismMucNvBUs6Qx
 ik7nY+1fwmcA==
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="525658581"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 15:27:59 -0700
Date: Mon, 26 Oct 2020 15:29:52 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201026222951.GC25941@labuser-Z97X-UD5H>
References: <20201022054223.25071-1-manasi.d.navare@intel.com>
 <20201022054223.25071-10-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022054223.25071-10-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v11 09/12] drm/i915: HW state readout for
 Bigjoiner case
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

@Ville all your review comments addressed and as per IRC, considering your ACK on this

Manasi

On Wed, Oct 21, 2020 at 10:42:20PM -0700, Manasi Navare wrote:
> Skip iterating over bigjoiner slaves, only the master has the state we
> care about.
> 
> Add the width of the bigjoiner slave to the reconstructed fb.
> 
> Hide the bigjoiner slave to userspace, and double the mode on bigjoiner
> master.
> 
> And last, disable bigjoiner slave from primary if reconstruction fails.
> 
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  36 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 339 ++++++++++++------
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  4 files changed, 260 insertions(+), 118 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 0fecf372be11..104a423e0cd5 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1492,8 +1492,6 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>  
> -	intel_dsc_get_config(pipe_config);
> -
>  	/* FIXME: adapt icl_ddi_clock_get() for DSI and use that? */
>  	pipe_config->port_clock = intel_dpll_get_freq(i915,
>  						      pipe_config->shared_dpll);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 050891a130c1..d5a0d0664c2d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4408,20 +4408,14 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
>  		    crtc_state->sync_mode_slaves_mask);
>  }
>  
> -void intel_ddi_get_config(struct intel_encoder *encoder,
> -			  struct intel_crtc_state *pipe_config)
> +static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
> +				    struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *intel_crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
>  	u32 temp, flags = 0;
>  
> -	/* XXX: DSI transcoder paranoia */
> -	if (drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder)))
> -		return;
> -
> -	intel_dsc_get_config(pipe_config);
> -
>  	temp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
>  	if (temp & TRANS_DDI_PHSYNC)
>  		flags |= DRM_MODE_FLAG_PHSYNC;
> @@ -4515,6 +4509,29 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
>  	default:
>  		break;
>  	}
> +}
> +
> +void intel_ddi_get_config(struct intel_encoder *encoder,
> +			  struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
> +
> +	/* XXX: DSI transcoder paranoia */
> +	if (drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder)))
> +		return;
> +
> +	intel_ddi_read_func_ctl(encoder, pipe_config);
> +	if (pipe_config->bigjoiner_slave) {
> +		/* read out pipe settings from master */
> +		enum transcoder save = pipe_config->cpu_transcoder;
> +
> +		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */
> +		WARN_ON(pipe_config->output_types);
> +		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;
> +		intel_ddi_read_func_ctl(encoder, pipe_config);
> +		pipe_config->cpu_transcoder = save;
> +	}
>  
>  	pipe_config->has_audio =
>  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
> @@ -4540,7 +4557,8 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
>  		dev_priv->vbt.edp.bpp = pipe_config->pipe_bpp;
>  	}
>  
> -	intel_ddi_clock_get(encoder, pipe_config);
> +	if (!pipe_config->bigjoiner_slave)
> +		intel_ddi_clock_get(encoder, pipe_config);
>  
>  	if (IS_GEN9_LP(dev_priv))
>  		pipe_config->lane_lat_optim_mask =
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1be77ba2f9cf..c0715a3ea47b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3631,6 +3631,8 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
>  	struct intel_plane *intel_plane = to_intel_plane(primary);
>  	struct intel_plane_state *intel_state =
>  		to_intel_plane_state(plane_state);
> +	 struct intel_crtc_state *crtc_state =
> +		 to_intel_crtc_state(intel_crtc->base.state);
>  	struct drm_framebuffer *fb;
>  	struct i915_vma *vma;
>  
> @@ -3653,7 +3655,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
>  		if (c == &intel_crtc->base)
>  			continue;
>  
> -		if (!to_intel_crtc(c)->active)
> +		if (!to_intel_crtc_state(c->state)->uapi.active)
>  			continue;
>  
>  		state = to_intel_plane_state(c->primary->state);
> @@ -3675,6 +3677,11 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
>  	 * pretend the BIOS never had it enabled.
>  	 */
>  	intel_plane_disable_noatomic(intel_crtc, intel_plane);
> +	if (crtc_state->bigjoiner) {
> +		struct intel_crtc *slave =
> +			crtc_state->bigjoiner_linked_crtc;
> +		intel_plane_disable_noatomic(slave, to_intel_plane(slave->base.primary));
> +	}
>  
>  	return;
>  
> @@ -8272,6 +8279,30 @@ static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
>  		       pfit_w * pfit_h);
>  }
>  
> +static void intel_encoder_get_config(struct intel_encoder *encoder,
> +				     struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
> +
> +	encoder->get_config(encoder, crtc_state);
> +
> +	*pipe_mode = crtc_state->hw.adjusted_mode;
> +	if (crtc_state->bigjoiner) {
> +		/*
> +		 * transcoder is programmed to the full mode,
> +		 * but pipe timings are half of the transcoder mode
> +		 */
> +		pipe_mode->crtc_hdisplay /= 2;
> +		pipe_mode->crtc_hblank_start /= 2;
> +		pipe_mode->crtc_hblank_end /= 2;
> +		pipe_mode->crtc_hsync_start /= 2;
> +		pipe_mode->crtc_hsync_end /= 2;
> +		pipe_mode->crtc_htotal /= 2;
> +		pipe_mode->crtc_hskew /= 2;
> +		pipe_mode->crtc_clock /= 2;
> +	}
> +}
> +
>  static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> @@ -9186,20 +9217,22 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
>  void intel_mode_from_pipe_config(struct drm_display_mode *mode,
>  				 struct intel_crtc_state *pipe_config)
>  {
> -	mode->hdisplay = pipe_config->hw.adjusted_mode.crtc_hdisplay;
> -	mode->htotal = pipe_config->hw.adjusted_mode.crtc_htotal;
> -	mode->hsync_start = pipe_config->hw.adjusted_mode.crtc_hsync_start;
> -	mode->hsync_end = pipe_config->hw.adjusted_mode.crtc_hsync_end;
> +	struct drm_display_mode *hw_mode = &pipe_config->hw.adjusted_mode;
>  
> -	mode->vdisplay = pipe_config->hw.adjusted_mode.crtc_vdisplay;
> -	mode->vtotal = pipe_config->hw.adjusted_mode.crtc_vtotal;
> -	mode->vsync_start = pipe_config->hw.adjusted_mode.crtc_vsync_start;
> -	mode->vsync_end = pipe_config->hw.adjusted_mode.crtc_vsync_end;
> +	mode->hdisplay = hw_mode->crtc_hdisplay;
> +	mode->htotal = hw_mode->crtc_htotal;
> +	mode->hsync_start = hw_mode->crtc_hsync_start;
> +	mode->hsync_end = hw_mode->crtc_hsync_end;
>  
> -	mode->flags = pipe_config->hw.adjusted_mode.flags;
> +	mode->vdisplay = hw_mode->crtc_vdisplay;
> +	mode->vtotal = hw_mode->crtc_vtotal;
> +	mode->vsync_start = hw_mode->crtc_vsync_start;
> +	mode->vsync_end = hw_mode->crtc_vsync_end;
> +
> +	mode->flags = hw_mode->flags;
>  	mode->type = DRM_MODE_TYPE_DRIVER;
>  
> -	mode->clock = pipe_config->hw.adjusted_mode.crtc_clock;
> +	mode->clock = hw_mode->crtc_clock;
>  
>  	drm_mode_set_name(mode);
>  }
> @@ -10768,6 +10801,7 @@ static void
>  skl_get_initial_plane_config(struct intel_crtc *crtc,
>  			     struct intel_initial_plane_config *plane_config)
>  {
> +	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
>  	struct drm_device *dev = crtc->base.dev;
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
> @@ -10876,6 +10910,13 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
>  	fb->height = ((val >> 16) & 0xffff) + 1;
>  	fb->width = ((val >> 0) & 0xffff) + 1;
>  
> +	/* add bigjoiner slave as well, if the fb stretches both */
> +	if (crtc_state->bigjoiner) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Does not support Bigjoiner Fb stretching yet\n");
> +		goto error;
> +	}
> +
>  	val = intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
>  	stride_mult = skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
>  	fb->pitches[0] = (val & 0x3ff) * stride_mult;
> @@ -11366,6 +11407,8 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
>  	} else {
>  		tmp = intel_de_read(dev_priv,
>  				    TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
> +			return;
>  		if (INTEL_GEN(dev_priv) >= 12)
>  			port = TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
>  		else
> @@ -11439,10 +11482,19 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  		active = true;
>  	}
>  
> -	if (!active)
> -		goto out;
> +	intel_dsc_get_config(pipe_config);
>  
> -	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> +	if (!active) {
> +		/* bigjoiner slave doesn't enable transcoder */
> +		if (!pipe_config->bigjoiner_slave)
> +			goto out;
> +
> +		active = true;
> +		pipe_config->pixel_multiplier = 1;
> +
> +		/* we cannot read out most state, so don't bother.. */
> +		pipe_config->quirks |= PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE;
> +	} else 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>  	    INTEL_GEN(dev_priv) >= 11) {
>  		hsw_get_ddi_port_state(crtc, pipe_config);
>  		intel_get_transcoder_timings(crtc, pipe_config);
> @@ -11517,7 +11569,10 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  		}
>  	}
>  
> -	if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
> +	if (pipe_config->bigjoiner_slave) {
> +		/* Cannot be read out as a slave, set to 0. */
> +		pipe_config->pixel_multiplier = 0;
> +	} else 	if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
>  	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
>  		pipe_config->pixel_multiplier =
>  			intel_de_read(dev_priv,
> @@ -12536,7 +12591,7 @@ intel_encoder_current_mode(struct intel_encoder *encoder)
>  		return NULL;
>  	}
>  
> -	encoder->get_config(encoder, crtc_state);
> +	intel_encoder_get_config(encoder, crtc_state);
>  
>  	intel_mode_from_pipe_config(mode, crtc_state);
>  
> @@ -13540,13 +13595,15 @@ intel_crtc_copy_uapi_to_hw_state(struct intel_atomic_state *state,
>  	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc_state);
>  }
>  
> -static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state)
> +static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state,
> +					     struct drm_display_mode *user_mode)
>  {
> -	crtc_state->uapi.enable = crtc_state->hw.enable;
> -	crtc_state->uapi.active = crtc_state->hw.active;
> -	drm_WARN_ON(crtc_state->uapi.crtc->dev,
> -		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, &crtc_state->hw.mode) < 0);
> -
> +	if (!crtc_state->bigjoiner_slave) {
> +		crtc_state->uapi.enable = crtc_state->hw.enable;
> +		crtc_state->uapi.active = crtc_state->hw.active;
> +		drm_WARN_ON(crtc_state->uapi.crtc->dev,
> +			    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, user_mode) < 0);
> +	}
>  	crtc_state->uapi.adjusted_mode = crtc_state->hw.adjusted_mode;
>  	crtc_state->uapi.scaling_filter = crtc_state->hw.scaling_filter;
>  
> @@ -14183,21 +14240,42 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  	PIPE_CONF_CHECK_X(output_types);
>  
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_end);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_start);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_end);
> -
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vdisplay);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vtotal);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_start);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_end);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_start);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_end);
> -
> -	PIPE_CONF_CHECK_I(pixel_multiplier);
> +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
> +		/* bigjoiner mode = transcoder mode / 2, for calculations */
> +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
> +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_htotal);
> +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vdisplay);
> +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vtotal);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_end);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_start);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_end);
> +
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vdisplay);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vtotal);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_start);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_end);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_start);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_end);
> +
> +		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> +				      DRM_MODE_FLAG_INTERLACE);
> +
> +		if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> +					      DRM_MODE_FLAG_PHSYNC);
> +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> +					      DRM_MODE_FLAG_NHSYNC);
> +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> +					      DRM_MODE_FLAG_PVSYNC);
> +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> +					      DRM_MODE_FLAG_NVSYNC);
> +		}
> +		PIPE_CONF_CHECK_I(pixel_multiplier);
> +	}
> +
>  	PIPE_CONF_CHECK_I(output_format);
>  	PIPE_CONF_CHECK_BOOL(has_hdmi_sink);
>  	if ((INTEL_GEN(dev_priv) < 8 && !IS_HASWELL(dev_priv)) ||
> @@ -14207,24 +14285,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_BOOL(hdmi_scrambling);
>  	PIPE_CONF_CHECK_BOOL(hdmi_high_tmds_clock_ratio);
>  	PIPE_CONF_CHECK_BOOL(has_infoframe);
> -	PIPE_CONF_CHECK_BOOL(fec_enable);
> +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE))
> +		PIPE_CONF_CHECK_BOOL(fec_enable);
>  
>  	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
>  
> -	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> -			      DRM_MODE_FLAG_INTERLACE);
> -
> -	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> -				      DRM_MODE_FLAG_PHSYNC);
> -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> -				      DRM_MODE_FLAG_NHSYNC);
> -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> -				      DRM_MODE_FLAG_PVSYNC);
> -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> -				      DRM_MODE_FLAG_NVSYNC);
> -	}
> -
>  	PIPE_CONF_CHECK_X(gmch_pfit.control);
>  	/* pfit ratios are autocomputed by the hw on gen4+ */
>  	if (INTEL_GEN(dev_priv) < 4)
> @@ -14250,7 +14315,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		}
>  
>  		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
> -		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
> +		if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE))
> +			PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
>  
>  		PIPE_CONF_CHECK_X(gamma_mode);
>  		if (IS_CHERRYVIEW(dev_priv))
> @@ -14271,48 +14337,50 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_BOOL(double_wide);
>  
>  	PIPE_CONF_CHECK_P(shared_dpll);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.spll);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
> -
> -	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> -	PIPE_CONF_CHECK_X(dsi_pll.div);
> -
> -	if (IS_G4X(dev_priv) || INTEL_GEN(dev_priv) >= 5)
> -		PIPE_CONF_CHECK_I(pipe_bpp);
> -
> -	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
> -	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
> -
> -	PIPE_CONF_CHECK_I(min_voltage_level);
> +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
> +		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.spll);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
> +
> +		PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> +		PIPE_CONF_CHECK_X(dsi_pll.div);
> +
> +		if (IS_G4X(dev_priv) || INTEL_GEN(dev_priv) >= 5)
> +			PIPE_CONF_CHECK_I(pipe_bpp);
> +
> +		PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
> +		PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
> +
> +		PIPE_CONF_CHECK_I(min_voltage_level);
> +	}
>  
>  	PIPE_CONF_CHECK_X(infoframes.enable);
>  	PIPE_CONF_CHECK_X(infoframes.gcp);
> @@ -14324,6 +14392,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
>  	PIPE_CONF_CHECK_I(master_transcoder);
> +	PIPE_CONF_CHECK_BOOL(bigjoiner);
> +	PIPE_CONF_CHECK_BOOL(bigjoiner_slave);
> +	PIPE_CONF_CHECK_P(bigjoiner_linked_crtc);
>  
>  	PIPE_CONF_CHECK_I(dsc.compression_enable);
>  	PIPE_CONF_CHECK_I(dsc.dsc_split);
> @@ -14595,6 +14666,7 @@ verify_crtc_state(struct intel_crtc *crtc,
>  	struct intel_encoder *encoder;
>  	struct intel_crtc_state *pipe_config = old_crtc_state;
>  	struct drm_atomic_state *state = old_crtc_state->uapi.state;
> +	struct intel_crtc *master = crtc;
>  
>  	__drm_atomic_helper_crtc_destroy_state(&old_crtc_state->uapi);
>  	intel_crtc_free_hw_state(old_crtc_state);
> @@ -14623,7 +14695,10 @@ verify_crtc_state(struct intel_crtc *crtc,
>  			"(expected %i, found %i)\n",
>  			new_crtc_state->hw.active, crtc->active);
>  
> -	for_each_encoder_on_crtc(dev, &crtc->base, encoder) {
> +	if (new_crtc_state->bigjoiner_slave)
> +		master = new_crtc_state->bigjoiner_linked_crtc;
> +
> +	for_each_encoder_on_crtc(dev, &master->base, encoder) {
>  		enum pipe pipe;
>  		bool active;
>  
> @@ -14633,12 +14708,12 @@ verify_crtc_state(struct intel_crtc *crtc,
>  				encoder->base.base.id, active,
>  				new_crtc_state->hw.active);
>  
> -		I915_STATE_WARN(active && crtc->pipe != pipe,
> +		I915_STATE_WARN(active && master->pipe != pipe,
>  				"Encoder connected to wrong pipe %c\n",
>  				pipe_name(pipe));
>  
>  		if (active)
> -			encoder->get_config(encoder, pipe_config);
> +			intel_encoder_get_config(encoder, pipe_config);
>  	}
>  
>  	intel_crtc_compute_pixel_rate(pipe_config);
> @@ -18543,7 +18618,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
>  	for_each_intel_crtc(dev, crtc) {
>  		struct intel_initial_plane_config plane_config = {};
>  
> -		if (!crtc->active)
> +		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
>  			continue;
>  
>  		/*
> @@ -18856,7 +18931,8 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
>  
>  	/* Adjust the state of the output pipe according to whether we
>  	 * have active connectors/encoders. */
> -	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc))
> +	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
> +	    !crtc_state->bigjoiner_slave)
>  		intel_crtc_disable_noatomic(crtc, ctx);
>  
>  	if (crtc_state->hw.active || HAS_GMCH(dev_priv)) {
> @@ -19067,9 +19143,19 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  			crtc_state = to_intel_crtc_state(crtc->base.state);
>  
>  			encoder->base.crtc = &crtc->base;
> -			encoder->get_config(encoder, crtc_state);
> +			intel_encoder_get_config(encoder, crtc_state);
>  			if (encoder->sync_state)
>  				encoder->sync_state(encoder, crtc_state);
> +
> +			/* read out to slave crtc as well for bigjoiner */
> +			if (crtc_state->bigjoiner) {
> +				/* encoder should read be linked to bigjoiner master */
> +				WARN_ON(crtc_state->bigjoiner_slave);
> +
> +				crtc = crtc_state->bigjoiner_linked_crtc;
> +				crtc_state = to_intel_crtc_state(crtc->base.state);
> +				intel_encoder_get_config(encoder, crtc_state);
> +			}
>  		} else {
>  			encoder->base.crtc = NULL;
>  		}
> @@ -19125,16 +19211,15 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  		struct intel_plane *plane;
>  		int min_cdclk = 0;
>  
> +		if (crtc_state->bigjoiner_slave)
> +			continue;
> +
>  		if (crtc_state->hw.active) {
> -			struct drm_display_mode *mode = &crtc_state->hw.mode;
> +			struct drm_display_mode mode;
>  
>  			intel_mode_from_pipe_config(&crtc_state->hw.adjusted_mode,
>  						    crtc_state);
>  
> -			*mode = crtc_state->hw.adjusted_mode;
> -			mode->hdisplay = crtc_state->pipe_src_w;
> -			mode->vdisplay = crtc_state->pipe_src_h;
> -
>  			/*
>  			 * The initial mode needs to be set in order to keep
>  			 * the atomic core happy. It wants a valid mode if the
> @@ -19149,11 +19234,18 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  			/* initialize pipe_mode */
>  			crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode;
>  
> +			mode = crtc_state->hw.adjusted_mode;
> +			mode.hdisplay = crtc_state->pipe_src_w;
> +			mode.vdisplay = crtc_state->pipe_src_h;
> +
> +			if (crtc_state->bigjoiner)
> +				mode.hdisplay *= 2;
> +
>  			intel_crtc_compute_pixel_rate(crtc_state);
>  
>  			intel_crtc_update_active_timings(crtc_state);
>  
> -			intel_crtc_copy_hw_to_uapi_state(crtc_state);
> +			intel_crtc_copy_hw_to_uapi_state(crtc_state, &mode);
>  		}
>  
>  		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> @@ -19199,6 +19291,39 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  		intel_bw_crtc_update(bw_state, crtc_state);
>  
>  		intel_pipe_config_sanity_check(dev_priv, crtc_state);
> +
> +		/* discard our incomplete slave state, copy it from master */
> +		if (crtc_state->bigjoiner && crtc_state->hw.active) {
> +			struct intel_crtc *slave = crtc_state->bigjoiner_linked_crtc;
> +			struct intel_crtc_state *slave_crtc_state =
> +				to_intel_crtc_state(slave->base.state);
> +
> +			copy_bigjoiner_crtc_state(slave_crtc_state, crtc_state);
> +			slave->base.mode = crtc->base.mode;
> +
> +			cdclk_state->min_cdclk[slave->pipe] = min_cdclk;
> +			cdclk_state->min_voltage_level[slave->pipe] =
> +				crtc_state->min_voltage_level;
> +
> +			for_each_intel_plane_on_crtc(&dev_priv->drm, slave, plane) {
> +				const struct intel_plane_state *plane_state =
> +					to_intel_plane_state(plane->base.state);
> +
> +				/*
> +				 * FIXME don't have the fb yet, so can't
> +				 * use intel_plane_data_rate() :(
> +				 */
> +				if (plane_state->uapi.visible)
> +					crtc_state->data_rate[plane->id] =
> +						4 * crtc_state->pixel_rate;
> +				else
> +					crtc_state->data_rate[plane->id] = 0;
> +			}
> +
> +			intel_bw_crtc_update(bw_state, slave_crtc_state);
> +			drm_calc_timestamping_constants(&slave->base,
> +							&slave_crtc_state->hw.adjusted_mode);
> +		}
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 59ed94d68b55..d82ba1b9d8ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -845,6 +845,7 @@ struct intel_crtc_state {
>  	 * accordingly.
>  	 */
>  #define PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS	(1<<0) /* unreliable sync mode.flags */
> +#define PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE      (1<<1) /* bigjoiner slave, partial readout */
>  	unsigned long quirks;
>  
>  	unsigned fb_bits; /* framebuffers to flip */
> -- 
> 2.19.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
