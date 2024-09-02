Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD65968708
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 14:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D4C510E2CB;
	Mon,  2 Sep 2024 12:05:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F7F8l1q0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B84D110E2CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 12:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725278747; x=1756814747;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=j2WjPxnVgcGjwAW4P/Uyxw8oS4mVlYS4ikAvJhAARxk=;
 b=F7F8l1q0x7V+81jj4MemDTBRzjxa4Z/40+wA3eFrIvEaTDmYQYB146x6
 xt8IW0ZKtbHvyGHyDVQgbkMiJX0s9fUJUr2upMTYx6C0xSrPKsScMkp6l
 Y6IetmXcMsgypVSKE3HGYD1mO+tKhtxDstjP372hqc3mipEm41xTsShCq
 Qn6tKmUub6lhZcf0JwUvFLg7O+h0Vsut7YP9doid7RRRINDJJ4VV8N/5B
 v0vuyaqAaQJ6SAouSHUKW0lG2G2j6VoL6h7HkCx7Kh6hHwx3qIcGPqqMA
 moN3mqRwAYOV3LCifH33pFDUCYdSqTPOMCBHeKJBNxJuYcN3KfB1L4Ezb g==;
X-CSE-ConnectionGUID: 1HFLLnggQG+HJka2qFTxQg==
X-CSE-MsgGUID: CKKSrCRFRha242pwIlWtKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="27645778"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="27645778"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 05:05:47 -0700
X-CSE-ConnectionGUID: Hx4EJXW2T+q/eByzrY9TWQ==
X-CSE-MsgGUID: a5Tl7kLzRkC+qC4UbQsb3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65310783"
Received: from ltuz-desk.ger.corp.intel.com (HELO localhost) ([10.245.246.4])
 by orviesa008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2024 05:05:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, ankit.k.nautiyal@intel.com,
 mitulkumar.ajitkumar.golani@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v9 1/3] drm/i915/panelreplay: Panel replay workaround
 with VRR
In-Reply-To: <20240708152231.4170265-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240708152231.4170265-1-animesh.manna@intel.com>
Date: Mon, 02 Sep 2024 15:05:31 +0300
Message-ID: <877cbuuupg.fsf@intel.com>
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

On Mon, 08 Jul 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> Panel Replay VSC SDP not getting sent when VRR is enabled
> and W1 and W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> The same is applicable for PSR1/PSR2 as well.
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
> v9: Implementation simplified and split into multiple patches.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 50 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_display.h |  2 +
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 13 -----
>  3 files changed, 51 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c2c388212e2e..be30eb22f3d1 100644
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

for_each_new_intel_connector_in_state()

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
> @@ -3925,6 +3937,26 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
>  	return true;
>  }
>  
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
> +				    struct intel_encoder *encoder)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	/*
> +	 * wa_14015401596 for display versions 13, 14.
> +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
> +	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled with VRR.
> +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
> +	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
> +	 * by 1 if both are equal.
> +	 */
> +	if (crtc_state->vrr.enable && crtc_state->has_psr &&
> +	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
> +	    IS_DISPLAY_VER(to_i915(crtc->base.dev), 13, 14))
> +		adjusted_mode->crtc_vblank_start += 1;
> +}
> +
>  int intel_dotclock_calculate(int link_freq,
>  			     const struct intel_link_m_n *m_n)
>  {
> @@ -4783,10 +4815,26 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>  {
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	struct drm_connector_state *conn_state;
>  	struct drm_connector *connector;
>  	int i;
>  
> +	if (crtc_state->vrr.enable) {
> +		/*
> +		 * For XE_LPD+, we use guardband and pipeline override
> +		 * is deprecated.
> +		 */
> +		if (DISPLAY_VER(to_i915(crtc->base.dev)) >= 13) {
> +			crtc_state->vrr.guardband =
> +				crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> +		} else {
> +			crtc_state->vrr.pipeline_full =
> +				min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> +				crtc_state->framestart_delay - 1);
> +		}
> +	}
> +
>  	for_each_new_connector_in_state(&state->base, connector,
>  					conn_state, i) {
>  		struct intel_encoder *encoder =
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
