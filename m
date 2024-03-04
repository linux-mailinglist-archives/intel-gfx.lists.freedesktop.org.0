Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1722E870855
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 18:33:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0284588A3E;
	Mon,  4 Mar 2024 17:33:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fC+85ahW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FEE51123C4
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 17:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709573612; x=1741109612;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Vy8J5xV0ejgnLsyJPR8FBliH/VT6BjcueRo7Wxi3SIU=;
 b=fC+85ahW/4CLHr2gI303HtjkbeCE+XznBJ+Iw47U65+zSVqMUxtuZa8J
 qrPvgezUqU6jPqFYfIejRjRGl5n9Fq1Ta6CkLijIop2tmlRj9kGQ0GFy7
 K1wphuFVaE3TGojV1WmHc1lEXWwvT7PP/XHXvLYty5mOC+wbxLPRpV0Gx
 y8FvgQp6R1hgQnzlFoPpPLtFe8/3OE5+6MmHbolx87Ry3WWuuwJH2zSXP
 YPa/3xM4J+J84xWkk/uOj0BRKBEOLjBu2f4UZEzDVF7QoI0bwRpsdzee9
 cfd4+EctCqZzJ+/7lsgKaUcm3XOsVT7GGOKV1ZTj9bkWG3tPLn9Ag2Tid Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="14662560"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="14662560"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 09:33:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="9013913"
Received: from syakovle-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.3])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 09:33:29 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, arun.r.murthy@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [RFC 2/3] drm/i915/alpm: Add compute config for lobf
In-Reply-To: <20240304074303.202882-3-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240304074303.202882-1-animesh.manna@intel.com>
 <20240304074303.202882-3-animesh.manna@intel.com>
Date: Mon, 04 Mar 2024 19:33:17 +0200
Message-ID: <87edcp52ci.fsf@intel.com>
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

On Mon, 04 Mar 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> Link Off Between Active Frames, is a new feature for eDP
> that allows the panel to go to lower power state after
> transmission of data. This is a feature on top of ALPM, AS SDP.
> Add compute config during atomic-check phase.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  3 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 45 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_psr.h      |  3 ++
>  4 files changed, 52 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index d473d8dca90a..4d2161eeb686 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1851,6 +1851,9 @@ struct intel_dp {
>  		u8 silence_period_sym_clocks;
>  		u8 lfps_half_cycle_num_of_syms;
>  	} alpm_parameters;
> +
> +	/* LOBF flags*/
> +	bool lobf_supported;
>  };
>  
>  enum lspcon_vendor {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8304ef912767..e34b70d88b9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2979,6 +2979,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_dp_compute_as_sdp(intel_dp, pipe_config, conn_state);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> +	intel_psr_lobf_compute_config(intel_dp, pipe_config, conn_state);
>  	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4adcddba69c1..c08bffc2921a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -436,6 +436,16 @@ static bool intel_dp_get_alpm_status(struct intel_dp *intel_dp)
>  	return alpm_caps & DP_ALPM_CAP;
>  }
>  
> +static bool intel_dp_get_aux_less_alpm_status(struct intel_dp *intel_dp)
> +{
> +	u8 alpm_caps = 0;
> +
> +	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
> +			      &alpm_caps) != 1)

The compute config path must not access the hardware.

BR,
Jani.

> +		return false;
> +	return alpm_caps & DP_ALPM_AUX_LESS_CAP;
> +}
> +
>  static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> @@ -1569,6 +1579,41 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
>  }
>  
> +void intel_psr_lobf_compute_config(struct intel_dp *intel_dp,
> +			       struct intel_crtc_state *crtc_state,
> +			       struct drm_connector_state *conn_state)
> +{
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	int waketime_in_lines, first_sdp_position;
> +	int context_latency, guardband;
> +	bool auxless_alpm;
> +
> +	intel_dp->lobf_supported = false;
> +
> +	if (!intel_dp_is_edp(intel_dp))
> +		return;
> +
> +	if (!intel_dp_as_sdp_supported(intel_dp))
> +		return;
> +
> +	if (CAN_PSR(intel_dp) || CAN_PANEL_REPLAY(intel_dp))
> +		return;
> +
> +	if (_compute_alpm_params(intel_dp, crtc_state)) {
> +		context_latency = adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
> +		guardband = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - context_latency;
> +		first_sdp_position = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vsync_start;
> +		auxless_alpm = intel_dp_get_aux_less_alpm_status(intel_dp);
> +		if (auxless_alpm)
> +			waketime_in_lines = intel_dp->alpm_parameters.io_wake_lines;
> +		else
> +			waketime_in_lines = intel_dp->alpm_parameters.aux_less_wake_lines;
> +
> +		if ((context_latency + guardband) > (first_sdp_position + waketime_in_lines))
> +			intel_dp->lobf_supported = true;
> +	}
> +}
> +
>  void intel_psr_get_config(struct intel_encoder *encoder,
>  			  struct intel_crtc_state *pipe_config)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index cde781df84d5..4bb77295288f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -40,6 +40,9 @@ void intel_psr_init(struct intel_dp *intel_dp);
>  void intel_psr_compute_config(struct intel_dp *intel_dp,
>  			      struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state);
> +void intel_psr_lobf_compute_config(struct intel_dp *intel_dp,
> +				   struct intel_crtc_state *crtc_state,
> +				   struct drm_connector_state *conn_state);
>  void intel_psr_get_config(struct intel_encoder *encoder,
>  			  struct intel_crtc_state *pipe_config);
>  void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);

-- 
Jani Nikula, Intel
