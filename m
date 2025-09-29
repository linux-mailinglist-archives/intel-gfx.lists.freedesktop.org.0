Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C30BA87FF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 11:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C74110E3D6;
	Mon, 29 Sep 2025 09:00:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cj33hsAy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB79010E3DB;
 Mon, 29 Sep 2025 09:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759136433; x=1790672433;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FLpME14axuG3wSIdlI1q7JLI2mlbInFVH9dLcGX3jNI=;
 b=Cj33hsAyco03wy3SIZ7hl3n0huHRVjh6Yvjd1f4AjkSdoMzHxDIuTaqD
 Mt6OiBPTqYCt0hzHgk8civp1Om0stx9fBoGFIMz3snCzjJsL/9s5wekqO
 tjSjIeRR4OQGiEySeZ8OLxcadk27TRnh8joXWDlrnSQuR6iPJiX1BjzzD
 1geuhGl0L/JG2dcQ1S2islyp1DPNkl2YYOOchP/AdjNow7ayiXF+BZF/F
 XCQivlDiBbEgC64hbURhecgw711w0QgiCCc01Bdc39V3evvJQdqyGmQ9X
 osLz1Y2wpgaiTc0OxVTmBTeElre0/KJiyNJtIpZr/Q6lNMeyl4g7VfdbJ Q==;
X-CSE-ConnectionGUID: 4oBSGRpdQH+IgE4yhNH9fw==
X-CSE-MsgGUID: 7f87JC5kR5at+iUsOhVIpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61284841"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61284841"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 02:00:33 -0700
X-CSE-ConnectionGUID: HPChV/UZSeG7s7JvGfpnRA==
X-CSE-MsgGUID: DuBnbobUTrKECTsID6hf2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="178010747"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.198])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 02:00:31 -0700
Date: Mon, 29 Sep 2025 12:00:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/15] drm/i915/display: Use optimized guardband to set
 vblank start
Message-ID: <aNpKrMapLVw4bvGb@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
 <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Sun, Sep 28, 2025 at 12:35:40PM +0530, Ankit Nautiyal wrote:
> As we move towards using a shorter, optimized guardband, we need to adjust
> how the delayed vblank start is computed.
> 
> Use the helper intel_vrr_compute_guardband() to calculate the optimized
> guardband. Since this is measured from the vblank end, we shift the
> vblank-start accordingly.
> 
> Calculate the minimum delay required based on the guardband and apply it in
> intel_crtc_vblank_delay() to update crtc_vblank_start.
> 
> Additionally, introduce a new allow_vblank_delay_fastset() helper that
> combines the existing LRR-based logic with an additional check for the
> optimized guardband usage.
> 
> v2:
> - Check if optimized guardband is more than vblank length and add debug
>   print.
> - Extend vblank delay fastset logic to cover optimized guardband.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 79 +++++++++++++++++++-
>  1 file changed, 76 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4135f9be53fd..97a3121a204f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2361,6 +2361,67 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>  	return 0;
>  }
>  
> +static
> +int intel_crtc_min_guardband_delay(struct intel_atomic_state *state,
> +				   struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(state);
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	struct drm_connector_state *conn_state;
> +	struct drm_connector *drm_connector;
> +	int vblank_length;
> +	int i;
> +
> +	if (!intel_vrr_use_optimized_guardband(crtc_state))
> +		return 0;
> +
> +	vblank_length = crtc_state->vrr.vmin -
> +			adjusted_mode->crtc_vdisplay;
> +
> +	for_each_new_connector_in_state(&state->base,
> +					drm_connector,
> +					conn_state, i) {
> +		int guardband;
> +		struct intel_connector *connector;
> +
> +		if (conn_state->crtc != &crtc->base)
> +			continue;
> +
> +		connector = to_intel_connector(drm_connector);
> +		guardband = intel_vrr_compute_guardband(crtc_state,
> +							connector);
> +		if (guardband > vblank_length) {
> +			drm_dbg_kms(display->drm,
> +				    "[CRTC:%d:%s] Cannot optimize guardband (%d) exceeds max (%d)\n",
> +				    crtc->base.base.id, crtc->base.name,
> +				    guardband,
> +				    vblank_length);
> +			return 0;
> +		}
> +
> +		return vblank_length - guardband;
> +	}
> +
> +	return 0;
> +}
> +
> +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	int vblank_delay = 0;
> +
> +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
> +
> +	adjusted_mode->crtc_vblank_start += vblank_delay;
> +}
> +
>  static int intel_crtc_set_context_latency(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -2413,6 +2474,7 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  	ret = intel_crtc_compute_set_context_latency(state, crtc);
>  	if (ret)
>  		return ret;
> +	intel_crtc_vblank_delay(state, crtc);

IMO we should get rid of all this vblank_delay terminology here.
This one I think should just be our current
intel_vrr_compute_config_late() (renamed to eg.
intel_vrr_compute_guardband()).

After which we just have to solve all the chicken vs. egg problems
to really compute the approriate optimized guardband value.
  
>  	ret = intel_dpll_crtc_compute_clock(state, crtc);
>  	if (ret)
> @@ -5101,13 +5163,24 @@ static bool allow_vblank_delay_fastset_lrr(const struct intel_crtc_state *old_cr
>  {
>  	struct intel_display *display = to_intel_display(old_crtc_state);
>  
> +	return HAS_LRR(display) && old_crtc_state->inherited &&
> +		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
> +}
> +
> +static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state,
> +				       const struct intel_crtc_state *new_crtc_state)
> +{
>  	/*
>  	 * Allow fastboot to fix up vblank delay (handled via LRR
>  	 * codepaths), a bit dodgy as the registers aren't
>  	 * double buffered but seems to be working more or less...
> +	 *
> +	 * Additionally, with the optimized guardband the vblank start
> +	 * is moved further away from the undelayed vblank. Allow this
> +	 * vblank delay when optimized guardband is used.
>  	 */
> -	return HAS_LRR(display) && old_crtc_state->inherited &&
> -		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
> +	return allow_vblank_delay_fastset_lrr(old_crtc_state) ||
> +	       intel_vrr_use_optimized_guardband(new_crtc_state);
>  }
>  
>  bool
> @@ -5242,7 +5315,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
>  	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
>  	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> -	if (!fastset || !allow_vblank_delay_fastset_lrr(current_config)) \
> +	if (!fastset || !allow_vblank_delay_fastset(current_config, pipe_config)) \
>  		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
>  	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
>  	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
