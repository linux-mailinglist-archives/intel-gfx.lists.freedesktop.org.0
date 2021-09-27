Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 890A1419397
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 13:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B75A489A59;
	Mon, 27 Sep 2021 11:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484DC89A59
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 11:49:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10119"; a="211545517"
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="211545517"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 04:49:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="478020791"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 04:49:32 -0700
Date: Mon, 27 Sep 2021 05:01:20 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210927120114.GA28419@labuser-Z97X-UD5H>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-14-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210913144440.23008-14-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 13/16] drm/i915: Split PPS write from DSC
 enable
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

On Mon, Sep 13, 2021 at 05:44:37PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The PPS SDP is fed into the transcoder whereas the DSC
> block is (or at least can be) per pipe. Let's split these
> into two distinct operations in an effort to untagle the
> bigjoiner mess where we have two pipes feeding a single
> transcoder.
>

Yes makes sense.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi
 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       |  6 ++--
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 14 +++++++--
>  drivers/gpu/drm/i915/display/intel_display.c |  5 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 33 +++++++++-----------
>  drivers/gpu/drm/i915/display/intel_vdsc.h    | 10 +++---
>  6 files changed, 39 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 060bc8fb0d30..070ad144ef83 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1246,7 +1246,9 @@ static void gen11_dsi_pre_enable(struct intel_atomic_state *state,
>  	/* step5: program and powerup panel */
>  	gen11_dsi_powerup_panel(encoder);
>  
> -	intel_dsc_enable(encoder, pipe_config);
> +	intel_dsc_dsi_pps_write(encoder, pipe_config);
> +
> +	intel_dsc_enable(pipe_config);
>  
>  	/* step6c: configure transcoder timings */
>  	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
> @@ -1636,7 +1638,7 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
>  	/* FIXME: initialize from VBT */
>  	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
>  
> -	ret = intel_dsc_compute_params(encoder, crtc_state);
> +	ret = intel_dsc_compute_params(crtc_state);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4fbffce501dc..f51c5d732d41 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2434,7 +2434,10 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	/* 5.k Configure and enable FEC if needed */
>  	intel_ddi_enable_fec(encoder, crtc_state);
> -	intel_dsc_enable(encoder, crtc_state);
> +
> +	intel_dsc_dp_pps_write(encoder, crtc_state);
> +
> +	intel_dsc_enable(crtc_state);
>  }
>  
>  static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> @@ -2575,8 +2578,11 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	/* 7.l Configure and enable FEC if needed */
>  	intel_ddi_enable_fec(encoder, crtc_state);
> +
> +	intel_dsc_dp_pps_write(encoder, crtc_state);
> +
>  	if (!crtc_state->bigjoiner)
> -		intel_dsc_enable(encoder, crtc_state);
> +		intel_dsc_enable(crtc_state);
>  }
>  
>  static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
> @@ -2641,8 +2647,10 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	if (!is_mst)
>  		intel_ddi_enable_pipe_clock(encoder, crtc_state);
>  
> +	intel_dsc_dp_pps_write(encoder, crtc_state);
> +
>  	if (!crtc_state->bigjoiner)
> -		intel_dsc_enable(encoder, crtc_state);
> +		intel_dsc_enable(crtc_state);
>  }
>  
>  static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 5716085e15f5..4e659a103984 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3007,7 +3007,7 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
>  
>  	if (!crtc_state->bigjoiner_slave) {
>  		/* need to enable VDSC, which we skipped in pre-enable */
> -		intel_dsc_enable(encoder, crtc_state);
> +		intel_dsc_enable(crtc_state);
>  	} else {
>  		/*
>  		 * Enable sequence steps 1-7 on bigjoiner master
> @@ -3017,8 +3017,7 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
>  			intel_enable_shared_dpll(master_crtc_state);
>  		intel_encoders_pre_enable(state, master_crtc);
>  
> -		/* and DSC on slave */
> -		intel_dsc_enable(NULL, crtc_state);
> +		intel_dsc_enable(crtc_state);
>  	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 13)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e898834cc5f9..68ddd9a490e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1260,7 +1260,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  	else
>  		vdsc_cfg->slice_height = 2;
>  
> -	ret = intel_dsc_compute_params(encoder, crtc_state);
> +	ret = intel_dsc_compute_params(crtc_state);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 2275f99ce9d7..fa84be609d5d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -442,10 +442,10 @@ calculate_rc_params(struct rc_parameters *rc,
>  	}
>  }
>  
> -int intel_dsc_compute_params(struct intel_encoder *encoder,
> -			     struct intel_crtc_state *pipe_config)
> +int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	struct drm_dsc_config *vdsc_cfg = &pipe_config->dsc.config;
>  	u16 compressed_bpp = pipe_config->dsc.compressed_bpp;
>  	const struct rc_parameters *rc_params;
> @@ -1055,8 +1055,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> -static void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *crtc_state)
> +void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state)
>  {
>  	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> @@ -1064,6 +1064,9 @@ static void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
>  	struct drm_dsc_picture_parameter_set pps;
>  	enum port port;
>  
> +	if (!crtc_state->dsc.compression_enable)
> +		return;
> +
>  	drm_dsc_pps_payload_pack(&pps, vdsc_cfg);
>  
>  	for_each_dsi_port(port, intel_dsi->ports) {
> @@ -1074,14 +1077,16 @@ static void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
>  	}
>  }
>  
> -static void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *crtc_state)
> +void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>  	struct drm_dsc_pps_infoframe dp_dsc_pps_sdp;
>  
> +	if (!crtc_state->dsc.compression_enable)
> +		return;
> +
>  	/* Prepare DP SDP PPS header as per DP 1.4 spec, Table 2-123 */
>  	drm_dsc_dp_pps_header_init(&dp_dsc_pps_sdp.pps_header);
>  
> @@ -1142,8 +1147,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> -void intel_dsc_enable(struct intel_encoder *encoder,
> -		      const struct intel_crtc_state *crtc_state)
> +void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -1155,13 +1159,6 @@ void intel_dsc_enable(struct intel_encoder *encoder,
>  
>  	intel_dsc_pps_configure(crtc_state);
>  
> -	if (!crtc_state->bigjoiner_slave) {
> -		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> -			intel_dsc_dsi_pps_write(encoder, crtc_state);
> -		else
> -			intel_dsc_dp_pps_write(encoder, crtc_state);
> -	}
> -
>  	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
>  	if (crtc_state->dsc.dsc_split) {
>  		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 0c5d80a572da..4ec75f715986 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -15,15 +15,17 @@ struct intel_encoder;
>  
>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
>  void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
> -void intel_dsc_enable(struct intel_encoder *encoder,
> -		      const struct intel_crtc_state *crtc_state);
> +void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
> -int intel_dsc_compute_params(struct intel_encoder *encoder,
> -			     struct intel_crtc_state *pipe_config);
> +int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
>  void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state);
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
>  intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
>  struct intel_crtc *intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc);
> +void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state);
> +void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VDSC_H__ */
> -- 
> 2.32.0
> 
