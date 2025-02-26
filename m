Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E20ADA46410
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 16:06:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A646F10E92A;
	Wed, 26 Feb 2025 15:06:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kQ1OnAWX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5B6310E6B4;
 Wed, 26 Feb 2025 15:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740582401; x=1772118401;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wQ1ce1l8HrOOQXPbRK9rz0Sg5urx3F+W0NMuQWnCIuk=;
 b=kQ1OnAWXBvrLM95+RJmb4B7Bk70fjUtLczbUP7XYs7J20xGe0lz+mQJH
 xqLVuh+g6h7y/zGGzjYGA+0GjiNQBXz31MFu05ny+Uunv0Z+64OorWh20
 /GWkn1H+uAJYMTKn4eXPDDtG0d9Ep7g6wUd3xUXBFFukrQQIWGR0rtoOS
 Mjmu0Cnk3AcUOC2SdG3tWPR3cJ7bB1raxnMxqGhDEmhCGNOMP5fJ9v5VJ
 278D3UTYNJr64B/eRIOYkq5udMDurtcKF7uaM2Jtuoh0iIZxP02v3pUC4
 zQgywyUR5Sn9rCQlrSLDhXxwjIBYNTduBqEmsHKenxR0OVF1sUxfsW/cd Q==;
X-CSE-ConnectionGUID: ajdrt346QNWIpOtPMZ7xHw==
X-CSE-MsgGUID: btaOnzv2RsCIzj+TRSe5Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41355729"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="41355729"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 07:06:39 -0800
X-CSE-ConnectionGUID: sV2dB02fTdG985Btpb78Uw==
X-CSE-MsgGUID: pEJ55+GoSL6bARpCgrqSAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121981153"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 07:06:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 17:06:34 +0200
Date: Wed, 26 Feb 2025 17:06:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 17/20] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Message-ID: <Z78t-r9fZwr15eMo@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-18-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-18-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:14AM +0530, Ankit Nautiyal wrote:
> During modeset enable sequence, program the fixed timings, and turn on the
> VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
> 
> For this intel_vrr_set_transcoder now always programs fixed timings.
> Later if vrr timings are required, vrr_enable() will switch
> to the real VRR timings.
> 
> For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
> and reset in the transcoder enable/disable path.
> 
> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
> v4: Have separate functions to enable/disable VRR CTL
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +++
>  drivers/gpu/drm/i915/display/intel_vrr.c    | 40 +++++++++++++--------
>  drivers/gpu/drm/i915/display/intel_vrr.h    |  3 ++
>  4 files changed, 38 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 5082f38b0a02..8863d1526aea 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -77,6 +77,7 @@
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vdsc_regs.h"
> +#include "intel_vrr.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  
> @@ -3276,6 +3277,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>  				   const struct intel_crtc_state *old_crtc_state,
>  				   const struct drm_connector_state *old_conn_state)
>  {
> +	intel_vrr_transcoder_disable(old_crtc_state);
> +
>  	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
>  		intel_ddi_post_disable_hdmi_or_sst(state, encoder, old_crtc_state,
>  						   old_conn_state);
> @@ -3524,6 +3527,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>  
>  	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>  
> +	intel_vrr_transcoder_enable(crtc_state);
> +
>  	/* Enable/Disable DP2.0 SDP split config before transcoder */
>  	intel_audio_sdp_split_update(crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 2c4a9ac6f61e..5ec353eceab4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1048,6 +1048,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>  		intel_crtc_vblank_off(old_pipe_crtc_state);
>  	}
>  
> +	intel_vrr_transcoder_disable(old_crtc_state);
> +
>  	intel_disable_transcoder(old_crtc_state);
>  
>  	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
> @@ -1325,6 +1327,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>  
>  	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>  
> +	intel_vrr_transcoder_enable(pipe_config);
> +
>  	intel_ddi_clear_act_sent(encoder, pipe_config);
>  
>  	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index e77f5b483b09..551dcc16f0d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -434,6 +434,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	bool needs_modeset = intel_crtc_needs_modeset(crtc_state);
>  
>  	if (intel_crtc_is_joiner_secondary(crtc_state))
>  		return;
> @@ -447,12 +448,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>  			     0, PIPE_VBLANK_WITH_DELAY);
>  
> -	if (!intel_vrr_possible(crtc_state)) {
> -		intel_de_write(display,
> -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
> -		return;
> -	}
> -
>  	if (crtc_state->cmrr.enable) {
>  		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>  			       upper_32_bits(crtc_state->cmrr.cmrr_m));
> @@ -464,14 +459,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>  	}
>  
> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> -		       crtc_state->vrr.vmin - 1);
> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> -		       crtc_state->vrr.vmax - 1);
> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -		       trans_vrr_ctl(crtc_state));
> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> -		       crtc_state->vrr.flipline - 1);
> +	intel_vrr_set_fixed_rr_timings(crtc_state);
> +	intel_vrr_update_guardband(crtc_state, needs_modeset);
>  
>  	if (HAS_AS_SDP(display))
>  		intel_de_write(display,
> @@ -614,6 +603,29 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>  }
>  
> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (!intel_vrr_always_use_vrr_tg(display))
> +		return;
> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));

Hmm. Maybe we should actually program this even for the
!intel_vrr_always_use_vrr_tg() case, but just leave the enable
bit unset. That way we shouldn't need the intel_vrr_update_guardband()
stuff in vrr_set_transcoder_timings().

We'd still need something for the _lrr() case, but I think that
could simply call intel_vrr_transcoder_enable() as well.

> +}
> +
> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (!intel_vrr_always_use_vrr_tg(display))
> +		return;

And if we do the change to the enable() path, then we should probably
also do this for the !intel_vrr_always_use_vrr_tg() in the name of 
symmetry.

> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
> +}
> +
>  static
>  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index e4e9cadcdf9e..750a380da9e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -12,6 +12,7 @@ struct drm_connector_state;
>  struct intel_atomic_state;
>  struct intel_connector;
>  struct intel_crtc_state;
> +struct intel_display;
>  struct intel_dsb;
>  
>  bool intel_vrr_is_capable(struct intel_connector *connector);
> @@ -37,5 +38,7 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_update_guardband(const struct intel_crtc_state *crtc_state, bool needs_modeset);
>  void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VRR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
