Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A3C91F0CE
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 10:09:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F268310E55A;
	Tue,  2 Jul 2024 08:09:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="amkui5BR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85BDD10E559
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2024 08:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719907748; x=1751443748;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=afqZT+A44z4oJOsXUnIn1tfW6x9j6JJrOpTGhP3TZpM=;
 b=amkui5BRpe7BxExxc2iSOpwYcV1Iqq7Ct6VFPnat8K8kgg1xB9S+y+R4
 xVTW+SbJe3SWHoBTu/PajI/DUtBQDoVLmE6s5fT7f8q8yfsPCGyNfGH9W
 YDibI1LWqwQmkjkv2hsCN42l1ufBk3//+hy5X8EaMBRX1sT/z3EUFEoeP
 LHOzengBVHuNwCmZkNufjnBAosQMSDLDFCl8qKT8c/b3aLWUUjpL9ommd
 gf7+QmKUE+mJWp4XL9nz22ljITaeM5C3sDHzcIuBhg81p/n7OHNJlVC+B
 gMfmZlkuuxCC7nORmswfL0TcWrP69oVe9/eQI6u69YL9HXd6KCZr7kEA2 g==;
X-CSE-ConnectionGUID: TrmVuYQFTL+N1zjtjpF+mA==
X-CSE-MsgGUID: OWIP3isYT6GuE3JEX59mHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="16909795"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="16909795"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 01:09:08 -0700
X-CSE-ConnectionGUID: G2XTCxJHQFWfJwErdOKZnA==
X-CSE-MsgGUID: F/9GBIeDTS2kT0xXVW7VtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="76543575"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.179])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 01:09:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, ankit.k.nautiyal@intel.com,
 mitulkumar.ajitkumar.golani@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v8 1/2] drm/i915/panelreplay: Panel replay workaround
 with VRR
In-Reply-To: <20240702055631.3722013-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240702055631.3722013-1-animesh.manna@intel.com>
Date: Tue, 02 Jul 2024 11:09:01 +0300
Message-ID: <87o77g9pwi.fsf@intel.com>
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

On Tue, 02 Jul 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> Panel Replay VSC SDP not getting sent when VRR is enabled
> and W1 and W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.

The patch does a whole lot more than what's explained in the commit
message. Feels like the patch should maybe do less.

>
> HSD: 14015406119
>
> v1: Initial version.
> v2: Update timings stored in adjusted_mode struct. [Ville]
> v3: Add WA in compute_config(). [Ville]
> v4:
> - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> v5: Move to crtc_compute_config(). [Ville]
> v6: Restrict DISPLAY_VER till 14. [Mitul]
> v7:
> - Corrected code-comment. [Mitul]
> - dev_priv local variable removed. [Jani]
> v8: Introduce late_compute_config() which will take care late
> vblank-delay adjustment. [Ville]

I presume this change is based on [1], but I have a hard time mentally
mapping what's going on in the patch to what Ville asks there.

[1] https://lore.kernel.org/r/ZnlvWk-sOzDfMa0E@intel.com

>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c    |  3 +-
>  drivers/gpu/drm/i915/display/intel_alpm.h    |  6 ++-
>  drivers/gpu/drm/i915/display/intel_display.c | 54 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_display.h |  2 +
>  drivers/gpu/drm/i915/display/intel_dp.c      | 20 +++++++-
>  drivers/gpu/drm/i915/display/intel_dp.h      |  2 +
>  drivers/gpu/drm/i915/display/intel_psr.c     | 12 ++---
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 13 -----
>  8 files changed, 84 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 866b3b409c4d..021e970d8209 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -266,8 +266,7 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>  }
>  
>  void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> -				    struct intel_crtc_state *crtc_state,
> -				    struct drm_connector_state *conn_state)
> +				    struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
> index 8c409b10dce6..8abe7bd9bc37 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -16,9 +16,11 @@ struct intel_connector;
>  void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
>  bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state);
> +bool intel_alpm_config_valid(struct intel_dp *intel_dp,
> +			     const struct intel_crtc_state *crtc_state,
> +			     bool aux_less);
>  void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> -				    struct intel_crtc_state *crtc_state,
> -				    struct drm_connector_state *conn_state);
> +				    struct intel_crtc_state *crtc_state);
>  void intel_alpm_configure(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state);
>  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c2c388212e2e..cdab71f81eaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2512,9 +2512,21 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>  static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  				     struct intel_crtc *crtc)
>  {
> +	struct drm_connector *connector;
> +	struct drm_connector_state *connector_state;
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	int ret;
> +	int ret, i;
> +
> +	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> +		struct intel_encoder *encoder =
> +			to_intel_encoder(connector_state->best_encoder);
> +
> +		if (connector_state->crtc != &crtc->base)
> +			continue;
> +
> +		intel_crtc_adjust_vblank_delay(crtc_state, encoder);
> +	}
>  
>  	ret = intel_dpll_crtc_compute_clock(state, crtc);
>  	if (ret)
> @@ -3925,6 +3937,46 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
>  	return true;
>  }
>  
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
> +				    struct intel_encoder *encoder)

This could be static.

> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	/*
> +	 * wa_14015401596 for display versions 13, 14.
> +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
> +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
> +	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
> +	 * by 1 if both are equal.
> +	 */
> +	if (crtc_state->vrr.enable && crtc_state->has_panel_replay &&
> +	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
> +	    IS_DISPLAY_VER(to_i915(crtc->base.dev), 13, 14))
> +		adjusted_mode->crtc_vblank_start += 1;
> +
> +	if (crtc_state->vrr.enable) {
> +		/*
> +		 * For XE_LPD+, we use guardband and pipeline override
> +		 * is deprecated.
> +		 */
> +		if (DISPLAY_VER(to_i915(crtc->base.dev)) >= 13) {
> +			crtc_state->vrr.guardband =
> +			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> +		} else {
> +			crtc_state->vrr.pipeline_full =
> +			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -

Misleading indentation (see where you're copy-pasting this from).

> +			    crtc_state->framestart_delay - 1);
> +		}

I think only intel_vrr.c should be modifying vrr.guardband, vrr.pipeline_full.

> +	}
> +
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) ||
> +	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> +		intel_dp_late_compute_config(encoder, crtc_state);

So, ugh. Naming this intel_dp_late_compute_config() is *very* confusing.

We have intel_modeset_pipe_config() calling encoder->compute_config().

Now you're adding intel_modeset_pipe_config() calling
intel_crtc_compute_config() calling intel_crtc_adjust_vblank_delay()
calling intel_dp_late_compute_config().

Yet there's separate intel_modeset_pipe_config_late() and
encoder->compute_config_late().

In general, it's very surprising to have a function called
intel_crtc_adjust_vblank_delay() do *much* more than, well, adjust
vblank delay.

> +	}
> +}
> +
>  int intel_dotclock_calculate(int link_freq,
>  			     const struct intel_link_m_n *m_n)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index b0cf6ca70952..21fd330b8834 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -428,6 +428,8 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>  struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
> +				    struct intel_encoder *encoder);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3903f6ead6e6..e01e72ec48b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3009,7 +3009,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> -	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
>  	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
> @@ -3018,6 +3017,25 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  							pipe_config);
>  }
>  
> +void intel_dp_late_compute_config(struct intel_encoder *encoder,
> +				  struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +	if (crtc_state->has_sel_update &&
> +	    !intel_alpm_config_valid(intel_dp, crtc_state, false)) {
> +		crtc_state->enable_psr2_sel_fetch = false;
> +		crtc_state->has_sel_update = false;
> +	}
> +
> +	if (crtc_state->has_panel_replay && intel_dp_is_edp(intel_dp) &&
> +	    !intel_alpm_config_valid(intel_dp, crtc_state, false)) {
> +		crtc_state->has_panel_replay = false;
> +	}

I think only intel_psr.c should be modifying enable_psr2_sel_fetch,
has_sel_update, has_panel_replay.

> +
> +	intel_alpm_lobf_compute_config(intel_dp, crtc_state);
> +}
> +
>  void intel_dp_set_link_params(struct intel_dp *intel_dp,
>  			      int link_rate, int lane_count)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index a0f990a95ecc..cd473f939941 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -74,6 +74,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder);
>  int intel_dp_compute_config(struct intel_encoder *encoder,
>  			    struct intel_crtc_state *pipe_config,
>  			    struct drm_connector_state *conn_state);
> +void intel_dp_late_compute_config(struct intel_encoder *encoder,
> +				  struct intel_crtc_state *crtc_state);
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9cb1cdaaeefa..4dc917b7f447 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1344,9 +1344,9 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -static bool alpm_config_valid(struct intel_dp *intel_dp,
> -			      const struct intel_crtc_state *crtc_state,
> -			      bool aux_less)
> +bool intel_alpm_config_valid(struct intel_dp *intel_dp,
> +			     const struct intel_crtc_state *crtc_state,
> +			     bool aux_less)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
> @@ -1442,9 +1442,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> -	if (!alpm_config_valid(intel_dp, crtc_state, false))
> -		return false;
> -

The commit message does not explain this.

>  	if (!crtc_state->enable_psr2_sel_fetch &&
>  	    (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -1583,9 +1580,6 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> -	if (!alpm_config_valid(intel_dp, crtc_state, true))
> -		return false;
> -

Ditto.

>  	return true;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5a0da64c7db3..46341367d250 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -242,19 +242,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>  			 crtc_state->hw.adjusted_mode.vsync_end);
>  	}
> -
> -	/*
> -	 * For XE_LPD+, we use guardband and pipeline override
> -	 * is deprecated.
> -	 */
> -	if (DISPLAY_VER(i915) >= 13) {
> -		crtc_state->vrr.guardband =
> -			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> -	} else {
> -		crtc_state->vrr.pipeline_full =
> -			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> -			    crtc_state->framestart_delay - 1);
> -	}
>  }
>  
>  static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)

-- 
Jani Nikula, Intel
