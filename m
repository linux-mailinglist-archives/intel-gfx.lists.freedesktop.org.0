Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C02F241380
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 01:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CAAD6E083;
	Mon, 10 Aug 2020 23:03:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3586E083
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 23:03:00 +0000 (UTC)
IronPort-SDR: oWgTWP4ETvk5lnco15v3b4QoreP7jz0OYZ5HbQNwfIxrjFVuZ2qkIRg1d1/HME+p9tzuodPaot
 cVF+MJF40Yig==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="238465016"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="238465016"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 16:03:00 -0700
IronPort-SDR: 3lZYkkDVrIT6a5puis9ctxrdzwKtwoNvM2cWfPjIoYK/ETFobxbPQTfvakAFlHdp2h6u3JJEcP
 v8Cuh2m1KaQw==
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="317522803"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 16:03:00 -0700
Date: Mon, 10 Aug 2020 16:04:00 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20200810230354.GA28728@labuser-Z97X-UD5H>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-6-manasi.d.navare@intel.com>
 <20200716192743.GA12055@intel.com>
 <2a5eecc7-9de4-84ab-4d26-f86a3b6262a1@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a5eecc7-9de4-84ab-4d26-f86a3b6262a1@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v6 06/11] drm/i915: Enable big joiner
 support in enable and disable sequences.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 10, 2020 at 02:45:52PM +0200, Maarten Lankhorst wrote:
> Op 16-07-2020 om 21:27 schreef Manasi Navare:
> > On Wed, Jul 15, 2020 at 03:42:17PM -0700, Manasi Navare wrote:
> >> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >>
> >> Make vdsc work when no output is enabled. The big joiner needs VDSC
> >> on the slave, so enable it and set the appropriate bits.
> >> Also update timestamping constants, because slave crtc's are not
> >> updated in drm_atomic_helper_update_legacy_modeset_state().
> >>
> >> This should be enough to bring up CRTC's in a big joiner configuration,
> >> without any plane configuration on the second pipe yet.
> >>
> >> HOWEVER, we still bring up the crtc's in the wrong order. We need to
> >> make sure that the master crtc is brought up after the slave crtc.
> >> This is done correctly later in this series.
> >>
> >> The next steps are to enable planes correctly, and make sure we enable
> >> and update both master and slave in the correct order.
> >>
> >> v2:
> >> * Manual rebase (Manasi)
> >>
> >> v3:
> >> * Rebase (Manasi)
> >>
> >> v4:
> >> * Rebase (Manasi)
> >>
> >> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
> >>  drivers/gpu/drm/i915/display/intel_ddi.c      |  68 +++-
> >>  drivers/gpu/drm/i915/display/intel_display.c  | 377 ++++++++++++------
> >>  .../drm/i915/display/intel_display_types.h    |   1 +
> >>  drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
> >>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 199 ++++-----
> >>  drivers/gpu/drm/i915/display/intel_vdsc.h     |   7 +-
> >>  7 files changed, 414 insertions(+), 246 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> index 8c55f5bee9ab..26f7372b4c25 100644
> >> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> @@ -1454,8 +1454,6 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
> >>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> >>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>  
> >> -	intel_dsc_get_config(encoder, pipe_config);
> >> -
> >>  	/* FIXME: adapt icl_ddi_clock_get() for DSI and use that? */
> >>  	pipe_config->port_clock = intel_dpll_get_freq(i915,
> >>  						      pipe_config->shared_dpll);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> index 424d59671561..dd97d725ae65 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> @@ -28,6 +28,7 @@
> >>  #include <drm/drm_scdc_helper.h>
> >>  
> >>  #include "i915_drv.h"
> >> +#include "i915_trace.h"
> >>  #include "intel_audio.h"
> >>  #include "intel_combo_phy.h"
> >>  #include "intel_connector.h"
> >> @@ -2040,12 +2041,6 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
> >>  		intel_display_power_get(dev_priv,
> >>  					intel_ddi_main_link_aux_domain(dig_port));
> >>  
> >> -	/*
> >> -	 * VDSC power is needed when DSC is enabled
> >> -	 */
> >> -	if (crtc_state->dsc.compression_enable)
> >> -		intel_display_power_get(dev_priv,
> >> -					intel_dsc_power_domain(crtc_state));
> >>  }
> >>  
> >>  void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
> >> @@ -3313,7 +3308,8 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >>  
> >>  	/* 7.l Configure and enable FEC if needed */
> >>  	intel_ddi_enable_fec(encoder, crtc_state);
> >> -	intel_dsc_enable(encoder, crtc_state);
> >> +	if (!crtc_state->bigjoiner)
> >> +		intel_dsc_enable(encoder, crtc_state);
> >>  }
> >>  
> >>  static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >> @@ -3384,7 +3380,8 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >>  	if (!is_mst)
> >>  		intel_ddi_enable_pipe_clock(encoder, crtc_state);
> >>  
> >> -	intel_dsc_enable(encoder, crtc_state);
> >> +	if (!crtc_state->bigjoiner)
> >> +		intel_dsc_enable(encoder, crtc_state);
> >>  }
> >>  
> >>  static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >> @@ -3639,6 +3636,21 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
> >>  			ilk_pfit_disable(old_crtc_state);
> >>  	}
> >>  
> >> +	if (old_crtc_state->bigjoiner_linked_crtc) {
> >> +		struct intel_atomic_state *state =
> >> +			to_intel_atomic_state(old_crtc_state->uapi.state);
> >> +		struct intel_crtc *slave =
> >> +			old_crtc_state->bigjoiner_linked_crtc;
> >> +		const struct intel_crtc_state *old_slave_crtc_state =
> >> +			intel_atomic_get_old_crtc_state(state, slave);
> >> +
> >> +		intel_crtc_vblank_off(old_slave_crtc_state);
> >> +		trace_intel_pipe_disable(slave);
> >> +
> >> +		intel_dsc_disable(old_slave_crtc_state);
> >> +		skl_scaler_disable(old_slave_crtc_state);
> >> +	}
> >> +
> >>  	/*
> >>  	 * When called from DP MST code:
> >>  	 * - old_conn_state will be NULL
> >> @@ -3853,7 +3865,8 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
> >>  {
> >>  	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> >>  
> >> -	intel_ddi_enable_transcoder_func(encoder, crtc_state);
> >> +	if (!crtc_state->bigjoiner_slave)
> >> +		intel_ddi_enable_transcoder_func(encoder, crtc_state);
> >>  
> >>  	intel_enable_pipe(crtc_state);
> >>  
> >> @@ -4200,8 +4213,8 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
> >>  		    crtc_state->sync_mode_slaves_mask);
> >>  }
> >>  
> >> -void intel_ddi_get_config(struct intel_encoder *encoder,
> >> -			  struct intel_crtc_state *pipe_config)
> >> +static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
> >> +				    struct intel_crtc_state *pipe_config)
> >>  {
> >>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>  	struct intel_crtc *intel_crtc = to_intel_crtc(pipe_config->uapi.crtc);
> >> @@ -4209,13 +4222,10 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
> >>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> >>  	u32 temp, flags = 0;
> >>  
> >> -	/* XXX: DSI transcoder paranoia */
> >> -	if (drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder)))
> >> +	temp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> >> +	if (!(temp & TRANS_DDI_FUNC_ENABLE))
> >>  		return;
> >>  
> >> -	intel_dsc_get_config(encoder, pipe_config);
> >> -
> >> -	temp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> >>  	if (temp & TRANS_DDI_PHSYNC)
> >>  		flags |= DRM_MODE_FLAG_PHSYNC;
> >>  	else
> >> @@ -4323,6 +4333,29 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
> >>  		intel_dp->regs.dp_tp_ctl = TGL_DP_TP_CTL(transcoder);
> >>  		intel_dp->regs.dp_tp_status = TGL_DP_TP_STATUS(transcoder);
> >>  	}
> >> +}
> >> +
> >> +void intel_ddi_get_config(struct intel_encoder *encoder,
> >> +			  struct intel_crtc_state *pipe_config)
> >> +{
> >> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> +	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
> >> +
> >> +	/* XXX: DSI transcoder paranoia */
> >> +	if (WARN_ON(transcoder_is_dsi(cpu_transcoder)))
> >> +		return;
> >> +
> >> +	intel_ddi_read_func_ctl(encoder, pipe_config);
> >> +	if (pipe_config->bigjoiner_slave) {
> >> +		/* read out pipe settings from master */
> >> +		enum transcoder save = pipe_config->cpu_transcoder;
> >> +
> >> +		/* Our own transcoder needs to be disabled when reading it in intel_ddi_read_func_ctl() */
> >> +		WARN_ON(pipe_config->output_types);
> >> +		pipe_config->cpu_transcoder = (enum transcoder)pipe_config->bigjoiner_linked_crtc->pipe;
> >> +		intel_ddi_read_func_ctl(encoder, pipe_config);
> >> +		pipe_config->cpu_transcoder = save;
> >> +	}
> >>  
> >>  	pipe_config->has_audio =
> >>  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
> >> @@ -4348,7 +4381,8 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
> >>  		dev_priv->vbt.edp.bpp = pipe_config->pipe_bpp;
> >>  	}
> >>  
> >> -	intel_ddi_clock_get(encoder, pipe_config);
> >> +	if (!pipe_config->bigjoiner_slave)
> >> +		intel_ddi_clock_get(encoder, pipe_config);
> >>  
> >>  	if (IS_GEN9_LP(dev_priv))
> >>  		pipe_config->lane_lat_optim_mask =
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 955e19abb563..1cda8900d8f5 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -7023,6 +7023,45 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
> >>  	intel_de_write(dev_priv, reg, val);
> >>  }
> >>  
> >> +static void tgl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
> >> +					 const struct intel_crtc_state *crtc_state)
> >> +{
> >> +	struct intel_crtc *master = to_intel_crtc(crtc_state->uapi.crtc);
> >> +	struct intel_crtc_state *master_crtc_state;
> >> +	struct drm_connector_state *conn_state;
> >> +	struct drm_connector *conn;
> >> +	struct intel_encoder *encoder = NULL;
> >> +	int i;
> >> +
> >> +	if (crtc_state->bigjoiner_slave)
> >> +		master = crtc_state->bigjoiner_linked_crtc;
> >> +
> >> +	master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
> >> +
> >> +	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
> >> +		if (conn_state->crtc != &master->base)
> >> +			continue;
> >> +
> >> +		encoder = to_intel_encoder(conn_state->best_encoder);
> >> +		break;
> >> +	}
> >> +
> >> +	if (!crtc_state->bigjoiner_slave) {
> >> +		/* need to enable VDSC, which we skipped in pre-enable */
> >> +		intel_dsc_enable(encoder, crtc_state);
> >> +	} else {
> >> +		/*
> >> +		 * Enable sequence steps 1-7 on bigjoiner master
> >> +		 */
> >> +		intel_encoders_pre_pll_enable(state, master);
> >> +		intel_enable_shared_dpll(master_crtc_state);
> >> +		intel_encoders_pre_enable(state, master);
> >> +
> >> +		/* and DSC on slave */
> >> +		intel_dsc_enable(NULL, crtc_state);
> >> +	}
> >> +}
> >> +
> >>  static void hsw_crtc_enable(struct intel_atomic_state *state,
> >>  			    struct intel_crtc *crtc)
> >>  {
> >> @@ -7036,34 +7075,39 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> >>  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> >>  		return;
> >>  
> >> -	intel_encoders_pre_pll_enable(state, crtc);
> >> -
> >> -	if (new_crtc_state->shared_dpll)
> >> -		intel_enable_shared_dpll(new_crtc_state);
> >> +	if (!new_crtc_state->bigjoiner) {
> >> +		intel_encoders_pre_pll_enable(state, crtc);
> >>  
> >> -	intel_encoders_pre_enable(state, crtc);
> >> +		if (new_crtc_state->shared_dpll)
> >> +			intel_enable_shared_dpll(new_crtc_state);
> >>  
> >> -	if (!transcoder_is_dsi(cpu_transcoder))
> >> -		intel_set_transcoder_timings(new_crtc_state);
> >> +		intel_encoders_pre_enable(state, crtc);
> >> +	} else {
> >> +		tgl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> >> +	}
> >>  
> >>  	intel_set_pipe_src_size(new_crtc_state);
> >> +	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
> >> +		bdw_set_pipemisc(new_crtc_state);
> >>  
> >> -	if (cpu_transcoder != TRANSCODER_EDP &&
> >> -	    !transcoder_is_dsi(cpu_transcoder))
> >> -		intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
> >> -			       new_crtc_state->pixel_multiplier - 1);
> >> +	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder)) {
> >> +		if (!transcoder_is_dsi(cpu_transcoder))
> >> +			intel_set_transcoder_timings(new_crtc_state);
> >>  
> >> -	if (new_crtc_state->has_pch_encoder)
> >> -		intel_cpu_transcoder_set_m_n(new_crtc_state,
> >> -					     &new_crtc_state->fdi_m_n, NULL);
> >> +		if (cpu_transcoder != TRANSCODER_EDP &&
> >> +		    !transcoder_is_dsi(cpu_transcoder))
> >> +			intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
> >> +				       new_crtc_state->pixel_multiplier - 1);
> >> +
> >> +		if (new_crtc_state->has_pch_encoder)
> >> +			intel_cpu_transcoder_set_m_n(new_crtc_state,
> >> +						     &new_crtc_state->fdi_m_n, NULL);
> >>  
> >> -	if (!transcoder_is_dsi(cpu_transcoder)) {
> >>  		hsw_set_frame_start_delay(new_crtc_state);
> >> -		hsw_set_pipeconf(new_crtc_state);
> >>  	}
> >>  
> >> -	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
> >> -		bdw_set_pipemisc(new_crtc_state);
> >> +	if (!transcoder_is_dsi(cpu_transcoder))
> >> +		hsw_set_pipeconf(new_crtc_state);
> >>  
> >>  	crtc->active = true;
> >>  
> >> @@ -7099,6 +7143,11 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> >>  	if (INTEL_GEN(dev_priv) >= 11)
> >>  		icl_pipe_mbus_enable(crtc);
> >>  
> >> +	if (new_crtc_state->bigjoiner_slave) {
> >> +		trace_intel_pipe_enable(crtc);
> >> +		intel_crtc_vblank_on(new_crtc_state);
> >> +	}
> >> +
> >>  	intel_encoders_enable(state, crtc);
> >>  
> >>  	if (psl_clkgate_wa) {
> >> @@ -7381,6 +7430,9 @@ static u64 get_crtc_power_domains(struct intel_crtc_state *crtc_state)
> >>  	if (crtc_state->shared_dpll)
> >>  		mask |= BIT_ULL(POWER_DOMAIN_DISPLAY_CORE);
> >>  
> >> +	if (crtc_state->dsc.compression_enable)
> >> +		mask |= BIT_ULL(intel_dsc_power_domain(crtc_state));
> >> +
> >>  	return mask;
> >>  }
> >>  
> >> @@ -7999,6 +8051,30 @@ static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
> >>  		       pfit_w * pfit_h);
> >>  }
> >>  
> >> +static void intel_encoder_get_config(struct intel_encoder *encoder,
> >> +				     struct intel_crtc_state *crtc_state)
> >> +{
> >> +	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
> >> +
> >> +	encoder->get_config(encoder, crtc_state);
> >> +
> >> +	*pipe_mode = crtc_state->hw.adjusted_mode;
> >> +	if (crtc_state->bigjoiner) {
> >> +		/*
> >> +		 * transcoder is programmed to the full mode,
> >> +		 * but pipe timings are half of the transcoder mode
> >> +		 */
> >> +		pipe_mode->crtc_hdisplay /= 2;
> >> +		pipe_mode->crtc_hblank_start /= 2;
> >> +		pipe_mode->crtc_hblank_end /= 2;
> >> +		pipe_mode->crtc_hsync_start /= 2;
> >> +		pipe_mode->crtc_hsync_end /= 2;
> >> +		pipe_mode->crtc_htotal /= 2;
> >> +		pipe_mode->crtc_hskew /= 2;
> >> +		pipe_mode->crtc_clock /= 2;
> >> +	}
> >> +}
> >> +
> >>  static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
> >>  {
> >>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> >> @@ -8910,20 +8986,22 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
> >>  void intel_mode_from_pipe_config(struct drm_display_mode *mode,
> >>  				 struct intel_crtc_state *pipe_config)
> >>  {
> >> -	mode->hdisplay = pipe_config->hw.adjusted_mode.crtc_hdisplay;
> >> -	mode->htotal = pipe_config->hw.adjusted_mode.crtc_htotal;
> >> -	mode->hsync_start = pipe_config->hw.adjusted_mode.crtc_hsync_start;
> >> -	mode->hsync_end = pipe_config->hw.adjusted_mode.crtc_hsync_end;
> >> +	struct drm_display_mode *hw_mode = &pipe_config->hw.adjusted_mode;
> >>  
> >> -	mode->vdisplay = pipe_config->hw.adjusted_mode.crtc_vdisplay;
> >> -	mode->vtotal = pipe_config->hw.adjusted_mode.crtc_vtotal;
> >> -	mode->vsync_start = pipe_config->hw.adjusted_mode.crtc_vsync_start;
> >> -	mode->vsync_end = pipe_config->hw.adjusted_mode.crtc_vsync_end;
> >> +	mode->hdisplay = hw_mode->crtc_hdisplay;
> >> +	mode->htotal = hw_mode->crtc_htotal;
> >> +	mode->hsync_start = hw_mode->crtc_hsync_start;
> >> +	mode->hsync_end = hw_mode->crtc_hsync_end;
> >>  
> >> -	mode->flags = pipe_config->hw.adjusted_mode.flags;
> >> +	mode->vdisplay = hw_mode->crtc_vdisplay;
> >> +	mode->vtotal = hw_mode->crtc_vtotal;
> >> +	mode->vsync_start = hw_mode->crtc_vsync_start;
> >> +	mode->vsync_end = hw_mode->crtc_vsync_end;
> >> +
> >> +	mode->flags = hw_mode->flags;
> >>  	mode->type = DRM_MODE_TYPE_DRIVER;
> >>  
> >> -	mode->clock = pipe_config->hw.adjusted_mode.crtc_clock;
> >> +	mode->clock = hw_mode->crtc_clock;
> >>  
> >>  	drm_mode_set_name(mode);
> >>  }
> >> @@ -11081,6 +11159,9 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
> >>  	} else {
> >>  		tmp = intel_de_read(dev_priv,
> >>  				    TRANS_DDI_FUNC_CTL(cpu_transcoder));
> >> +		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
> >> +			return;
> >> +
> >>  		if (INTEL_GEN(dev_priv) >= 12)
> >>  			port = TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
> >>  		else
> >> @@ -11153,12 +11234,20 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> >>  		drm_WARN_ON(&dev_priv->drm, active);
> >>  		active = true;
> >>  	}
> >> +	intel_dsc_get_config(pipe_config);
> >>  
> >> -	if (!active)
> >> -		goto out;
> >> +	if (!active) {
> >> +		/* bigjoiner slave doesn't enable transcoder */
> >> +		if (!pipe_config->bigjoiner_slave)
> >> +			goto out;
> >>  
> >> -	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> >> -	    INTEL_GEN(dev_priv) >= 11) {
> >> +		active = true;
> >> +		pipe_config->pixel_multiplier = 1;
> >> +
> >> +		/* we cannot read out most state, so don't bother.. */
> >> +		pipe_config->quirks |= PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE;
> >> +	} else if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> >> +		   INTEL_GEN(dev_priv) >= 11) {
> >>  		hsw_get_ddi_port_state(crtc, pipe_config);
> >>  		intel_get_transcoder_timings(crtc, pipe_config);
> >>  	}
> >> @@ -11244,8 +11333,11 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> >>  		}
> >>  	}
> >>  
> >> -	if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
> >> -	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> >> +	if (pipe_config->bigjoiner_slave) {
> >> +		/* Cannot be read out as a slave, set to 0. */
> >> +		pipe_config->pixel_multiplier = 0;
> >> +	} else if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
> >> +		    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> >>  		pipe_config->pixel_multiplier =
> >>  			intel_de_read(dev_priv,
> >>  				      PIPE_MULT(pipe_config->cpu_transcoder)) + 1;
> >> @@ -12260,7 +12352,7 @@ intel_encoder_current_mode(struct intel_encoder *encoder)
> >>  		return NULL;
> >>  	}
> >>  
> >> -	encoder->get_config(encoder, crtc_state);
> >> +	intel_encoder_get_config(encoder, crtc_state);
> >>  
> >>  	intel_mode_from_pipe_config(mode, crtc_state);
> >>  
> >> @@ -13252,10 +13344,12 @@ intel_crtc_copy_uapi_to_hw_state(struct intel_atomic_state *state,
> >>  static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state,
> >>  					     struct drm_display_mode *user_mode)
> >>  {
> >> -	crtc_state->uapi.enable = crtc_state->hw.enable;
> >> -	crtc_state->uapi.active = crtc_state->hw.active;
> >> -	drm_WARN_ON(crtc_state->uapi.crtc->dev,
> >> -		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, user_mode) < 0);
> >> +	if (!crtc_state->bigjoiner_slave) {
> >> +		crtc_state->uapi.enable = crtc_state->hw.enable;
> >> +		crtc_state->uapi.active = crtc_state->hw.active;
> >> +		drm_WARN_ON(crtc_state->uapi.crtc->dev,
> >> +			    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, user_mode) < 0);
> >> +	}
> >>  
> >>  	crtc_state->uapi.adjusted_mode = crtc_state->hw.adjusted_mode;
> >>  
> >> @@ -13902,21 +13996,42 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >>  
> >>  	PIPE_CONF_CHECK_X(output_types);
> >>  
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_end);
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_start);
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_end);
> >> -
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vdisplay);
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vtotal);
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_start);
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_end);
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_start);
> >> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_end);
> >> -
> >> -	PIPE_CONF_CHECK_I(pixel_multiplier);
> >> +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
> >> +		/* bigjoiner mode = transcoder mode / 2, for calculations */
> >> +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
> >> +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_htotal);
> >> +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vdisplay);
> >> +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vtotal);
> >> +
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_end);
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_start);
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_end);
> >> +
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vdisplay);
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vtotal);
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_start);
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_end);
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_start);
> >> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_end);
> >> +
> >> +		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> +				      DRM_MODE_FLAG_INTERLACE);
> >> +
> >> +		if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> >> +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> +					      DRM_MODE_FLAG_PHSYNC);
> >> +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> +					      DRM_MODE_FLAG_NHSYNC);
> >> +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> +					      DRM_MODE_FLAG_PVSYNC);
> >> +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> +					      DRM_MODE_FLAG_NVSYNC);
> >> +		}
> >> +		PIPE_CONF_CHECK_I(pixel_multiplier);
> >> +	}
> >>  	PIPE_CONF_CHECK_I(output_format);
> >>  	PIPE_CONF_CHECK_BOOL(has_hdmi_sink);
> >>  	if ((INTEL_GEN(dev_priv) < 8 && !IS_HASWELL(dev_priv)) ||
> >> @@ -13926,24 +14041,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >>  	PIPE_CONF_CHECK_BOOL(hdmi_scrambling);
> >>  	PIPE_CONF_CHECK_BOOL(hdmi_high_tmds_clock_ratio);
> >>  	PIPE_CONF_CHECK_BOOL(has_infoframe);
> >> -	PIPE_CONF_CHECK_BOOL(fec_enable);
> >> +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE))
> >> +		PIPE_CONF_CHECK_BOOL(fec_enable);
> >>  
> >>  	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
> >>  
> >> -	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> -			      DRM_MODE_FLAG_INTERLACE);
> >> -
> >> -	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> >> -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> -				      DRM_MODE_FLAG_PHSYNC);
> >> -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> -				      DRM_MODE_FLAG_NHSYNC);
> >> -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> -				      DRM_MODE_FLAG_PVSYNC);
> >> -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> -				      DRM_MODE_FLAG_NVSYNC);
> >> -	}
> >> -
> >>  	PIPE_CONF_CHECK_X(gmch_pfit.control);
> >>  	/* pfit ratios are autocomputed by the hw on gen4+ */
> >>  	if (INTEL_GEN(dev_priv) < 4)
> >> @@ -13969,7 +14071,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >>  		}
> >>  
> >>  		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
> >> -		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
> >> +		if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE))
> >> +			PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
> >>  
> >>  		PIPE_CONF_CHECK_X(gamma_mode);
> >>  		if (IS_CHERRYVIEW(dev_priv))
> >> @@ -13990,48 +14093,51 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >>  	PIPE_CONF_CHECK_BOOL(double_wide);
> >>  
> >>  	PIPE_CONF_CHECK_P(shared_dpll);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.spll);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
> >> -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
> >> -
> >> -	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> >> -	PIPE_CONF_CHECK_X(dsi_pll.div);
> >> -
> >> -	if (IS_G4X(dev_priv) || INTEL_GEN(dev_priv) >= 5)
> >> -		PIPE_CONF_CHECK_I(pipe_bpp);
> >> -
> >> -	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
> >> -	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
> >> -
> >> -	PIPE_CONF_CHECK_I(min_voltage_level);
> >> +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.spll);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
> >> +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
> >> +
> >> +		PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> >> +		PIPE_CONF_CHECK_X(dsi_pll.div);
> >> +
> >> +		if (IS_G4X(dev_priv) || INTEL_GEN(dev_priv) >= 5)
> >> +			PIPE_CONF_CHECK_I(pipe_bpp);
> >> +
> >> +		PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
> >> +		PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
> >> +		PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
> >> +
> >> +		PIPE_CONF_CHECK_I(min_voltage_level);
> >> +	}
> >>  
> >>  	PIPE_CONF_CHECK_X(infoframes.enable);
> >>  	PIPE_CONF_CHECK_X(infoframes.gcp);
> >> @@ -14043,11 +14149,12 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >>  
> >>  	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
> >>  	PIPE_CONF_CHECK_I(master_transcoder);
> >> -
> >> +	PIPE_CONF_CHECK_BOOL(bigjoiner);
> >> +	PIPE_CONF_CHECK_BOOL(bigjoiner_slave);
> >> +	PIPE_CONF_CHECK_P(bigjoiner_linked_crtc);
> >>  	PIPE_CONF_CHECK_I(dsc.compression_enable);
> >>  	PIPE_CONF_CHECK_I(dsc.dsc_split);
> >>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
> >> -
> >>  	PIPE_CONF_CHECK_I(mst_master_transcoder);
> >>  
> >>  #undef PIPE_CONF_CHECK_X
> >> @@ -14314,6 +14421,7 @@ verify_crtc_state(struct intel_crtc *crtc,
> >>  	struct intel_encoder *encoder;
> >>  	struct intel_crtc_state *pipe_config = old_crtc_state;
> >>  	struct drm_atomic_state *state = old_crtc_state->uapi.state;
> >> +	struct intel_crtc *master = crtc;
> >>  	bool active;
> >>  
> >>  	__drm_atomic_helper_crtc_destroy_state(&old_crtc_state->uapi);
> >> @@ -14340,7 +14448,10 @@ verify_crtc_state(struct intel_crtc *crtc,
> >>  			"(expected %i, found %i)\n",
> >>  			new_crtc_state->hw.active, crtc->active);
> >>  
> >> -	for_each_encoder_on_crtc(dev, &crtc->base, encoder) {
> >> +	if (new_crtc_state->bigjoiner_slave)
> >> +		master = new_crtc_state->bigjoiner_linked_crtc;
> >> +
> >> +	for_each_encoder_on_crtc(dev, &master->base, encoder) {
> >>  		enum pipe pipe;
> >>  
> >>  		active = encoder->get_hw_state(encoder, &pipe);
> >> @@ -14349,12 +14460,12 @@ verify_crtc_state(struct intel_crtc *crtc,
> >>  				encoder->base.base.id, active,
> >>  				new_crtc_state->hw.active);
> >>  
> >> -		I915_STATE_WARN(active && crtc->pipe != pipe,
> >> +		I915_STATE_WARN(active && master->pipe != pipe,
> >>  				"Encoder connected to wrong pipe %c\n",
> >>  				pipe_name(pipe));
> >>  
> >>  		if (active)
> >> -			encoder->get_config(encoder, pipe_config);
> >> +			intel_encoder_get_config(encoder, pipe_config);
> >>  	}
> >>  
> >>  	intel_crtc_compute_pixel_rate(pipe_config);
> >> @@ -15376,7 +15487,12 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
> >>  {
> >>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> >>  
> >> +	drm_WARN_ON(&dev_priv->drm, old_crtc_state->bigjoiner_slave);
> >> +
> >>  	intel_crtc_disable_planes(state, crtc);
> >> +	if (old_crtc_state->bigjoiner)
> >> +		intel_crtc_disable_planes(state,
> >> +					  old_crtc_state->bigjoiner_linked_crtc);
> >>  
> >>  	/*
> >>  	 * We need to disable pipe CRC before disabling the pipe,
> >> @@ -15406,7 +15522,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> >>  	/* Only disable port sync and MST slaves */
> >>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> >>  					    new_crtc_state, i) {
> >> -		if (!needs_modeset(new_crtc_state))
> >> +		if (!needs_modeset(new_crtc_state) || old_crtc_state->bigjoiner_slave)
> >>  			continue;
> >>  
> >>  		if (!old_crtc_state->hw.active)
> >> @@ -15421,7 +15537,6 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> >>  		    !intel_dp_mst_is_slave_trans(old_crtc_state))
> >>  			continue;
> >>  
> >> -		intel_pre_plane_update(state, crtc);
> >>  		intel_old_crtc_state_disables(state, old_crtc_state,
> >>  					      new_crtc_state, crtc);
> >>  		handled |= BIT(crtc->pipe);
> >> @@ -15431,10 +15546,18 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> >>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> >>  					    new_crtc_state, i) {
> >>  		if (!needs_modeset(new_crtc_state) ||
> >> -		    (handled & BIT(crtc->pipe)))
> >> +		    (handled & BIT(crtc->pipe)) ||
> >> +		    old_crtc_state->bigjoiner_slave)
> >>  			continue;
> >>  
> >>  		intel_pre_plane_update(state, crtc);
> >> +		if (old_crtc_state->bigjoiner) {
> >> +			struct intel_crtc *slave =
> >> +				old_crtc_state->bigjoiner_linked_crtc;
> >> +
> >> +			intel_pre_plane_update(state, slave);
> >> +		}
> >> +
> >>  		if (old_crtc_state->hw.active)
> >>  			intel_old_crtc_state_disables(state, old_crtc_state,
> >>  						      new_crtc_state, crtc);
> >> @@ -18063,7 +18186,7 @@ int intel_modeset_init(struct drm_i915_private *i915)
> >>  	for_each_intel_crtc(dev, crtc) {
> >>  		struct intel_initial_plane_config plane_config = {};
> >>  
> >> -		if (!crtc->active)
> >> +		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> >>  			continue;
> >>  
> >>  		/*
> >> @@ -18562,7 +18685,17 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
> >>  			crtc_state = to_intel_crtc_state(crtc->base.state);
> >>  
> >>  			encoder->base.crtc = &crtc->base;
> >> -			encoder->get_config(encoder, crtc_state);
> >> +			intel_encoder_get_config(encoder, crtc_state);
> >> +
> >> +			/* read out to slave crtc as well for bigjoiner */
> >> +			if (crtc_state->bigjoiner) {
> >> +				/* encoder should read be linked to bigjoiner master */
> >> +				WARN_ON(crtc_state->bigjoiner_slave);
> >> +
> >> +				crtc = crtc_state->bigjoiner_linked_crtc;
> >> +				crtc_state = to_intel_crtc_state(crtc->base.state);
> >> +				intel_encoder_get_config(encoder, crtc_state);
> >> +			}
> >>  		} else {
> >>  			encoder->base.crtc = NULL;
> >>  		}
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index 4694cfd90a0a..943709f192f7 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -826,6 +826,7 @@ struct intel_crtc_state {
> >>  	 * accordingly.
> >>  	 */
> >>  #define PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS	(1<<0) /* unreliable sync mode.flags */
> >> +#define PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE      (1<<1) /* bigjoiner slave, partial readout */
> >>  	unsigned long quirks;
> >>  
> >>  	unsigned fb_bits; /* framebuffers to flip */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 29f45d2206af..41cb9f9c0292 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -2004,12 +2004,10 @@ static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
> >>  static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
> >>  				  const struct intel_crtc_state *crtc_state)
> >>  {
> >> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> >> -
> >> -	if (!intel_dp_is_edp(intel_dp) && !crtc_state->fec_enable)
> >> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fec_enable)
> >>  		return false;
> >>  
> >> -	return intel_dsc_source_support(encoder, crtc_state) &&
> >> +	return intel_dsc_source_support(crtc_state) &&
> >>  		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
> >>  }
> >>  
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> index c5735c365659..2d343ccef497 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> @@ -332,11 +332,10 @@ static const struct rc_parameters *get_rc_params(u16 compressed_bpp,
> >>  	return &rc_parameters[row_index][column_index];
> >>  }
> >>  
> >> -bool intel_dsc_source_support(struct intel_encoder *encoder,
> >> -			      const struct intel_crtc_state *crtc_state)
> >> +bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
> >>  {
> >>  	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> >> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >>  	enum pipe pipe = crtc->pipe;
> >>  
> >> @@ -490,11 +489,10 @@ intel_dsc_power_domain(const struct intel_crtc_state *crtc_state)
> >>  		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
> >>  }
> >>  
> >> -static void intel_dsc_pps_configure(struct intel_encoder *encoder,
> >> -				    const struct intel_crtc_state *crtc_state)
> >> +static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
> >>  {
> >>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >>  	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> >>  	enum pipe pipe = crtc->pipe;
> >>  	u32 pps_val = 0;
> >> @@ -503,6 +501,9 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
> >>  	u8 num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
> >>  	int i = 0;
> >>  
> >> +	if (crtc_state->bigjoiner)
> >> +		num_vdsc_instances *= 2;
> >> +
> >>  	/* Populate PICTURE_PARAMETER_SET_0 registers */
> >>  	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
> >>  		DSC_VER_MIN_SHIFT |
> >> @@ -973,55 +974,6 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
> >>  	}
> >>  }
> >>  
> >> -void intel_dsc_get_config(struct intel_encoder *encoder,
> >> -			  struct intel_crtc_state *crtc_state)
> >> -{
> >> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> >> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >> -	enum pipe pipe = crtc->pipe;
> >> -	enum intel_display_power_domain power_domain;
> >> -	intel_wakeref_t wakeref;
> >> -	u32 dss_ctl1, dss_ctl2, val;
> >> -
> >> -	if (!intel_dsc_source_support(encoder, crtc_state))
> >> -		return;
> >> -
> >> -	power_domain = intel_dsc_power_domain(crtc_state);
> >> -
> >> -	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
> >> -	if (!wakeref)
> >> -		return;
> >> -
> >> -	if (!is_pipe_dsc(crtc_state)) {
> >> -		dss_ctl1 = intel_de_read(dev_priv, DSS_CTL1);
> >> -		dss_ctl2 = intel_de_read(dev_priv, DSS_CTL2);
> >> -	} else {
> >> -		dss_ctl1 = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> >> -		dss_ctl2 = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL2(pipe));
> >> -	}
> >> -
> >> -	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
> >> -	if (!crtc_state->dsc.compression_enable)
> >> -		goto out;
> >> -
> >> -	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
> >> -		(dss_ctl1 & JOINER_ENABLE);
> >> -
> >> -	/* FIXME: add more state readout as needed */
> >> -
> >> -	/* PPS1 */
> >> -	if (!is_pipe_dsc(crtc_state))
> >> -		val = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> >> -	else
> >> -		val = intel_de_read(dev_priv,
> >> -				    ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> >> -	vdsc_cfg->bits_per_pixel = val;
> >> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> >> -out:
> >> -	intel_display_power_put(dev_priv, power_domain, wakeref);
> >> -}
> >> -
> >>  static void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
> >>  				    const struct intel_crtc_state *crtc_state)
> >>  {
> >> @@ -1060,77 +1012,130 @@ static void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
> >>  				  sizeof(dp_dsc_pps_sdp));
> >>  }
> >>  
> >> +static i915_reg_t dss_ctl1_reg(const struct intel_crtc_state *crtc_state)
> >> +{
> >> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> >> +
> >> +	if (crtc_state->cpu_transcoder == TRANSCODER_EDP)
> >> +		return DSS_CTL1;
> >> +
> >> +	return ICL_PIPE_DSS_CTL1(pipe);
> >> +}
> >> +
> >> +static i915_reg_t dss_ctl2_reg(const struct intel_crtc_state *crtc_state)
> >> +{
> >> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> >> +
> >> +	if (crtc_state->cpu_transcoder == TRANSCODER_EDP)
> >> +		return DSS_CTL2;
> >> +
> >> +	return ICL_PIPE_DSS_CTL2(pipe);
> >> +}
> >> +
> >>  void intel_dsc_enable(struct intel_encoder *encoder,
> >>  		      const struct intel_crtc_state *crtc_state)
> >>  {
> >>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> -	enum pipe pipe = crtc->pipe;
> >> -	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
> >> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >>  	u32 dss_ctl1_val = 0;
> >>  	u32 dss_ctl2_val = 0;
> >>  
> >>  	if (!crtc_state->dsc.compression_enable)
> >>  		return;
> >>  
> >> -	/* Enable Power wells for VDSC/joining */
> >> -	intel_display_power_get(dev_priv,
> >> -				intel_dsc_power_domain(crtc_state));
> > Why do we remove the power get for dsc_power_domains here? IMO this is causing the CI error since 
> > in dsc_disables we do try to put the dsc_power_domains but we error out saying on dsc disable:
> >
> > "Use count on VDSC POWER DOMAIN already 0"
> >
> > we need to get power domains here since for Pipe A/eDP on TGL, we do need a separate PW2 for VDSC.
> 
> It's the other way around, we need to remove it from dsc_disable.
> 
> get_crtc_power_domains() ensures we always have the dsc power domain correct, even when reading out from the original hw state. It had to be decoupled from the encoder as the slave pipe doesn't have an encoder, and we still want the DSC power domain in that case. :)
> 

Yes, I tried putting this power get call in intel_dsc_enable since I had put it originally while enabling DSC.
But that didnt fix it, so yes may be removing the put call from dsc_disable makes sense.
I will change that and resend the patches. Lets hope that fixes this CI error.

Manasi

> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
