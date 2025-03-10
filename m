Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0474AA5A1A9
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 19:07:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B23510E4A2;
	Mon, 10 Mar 2025 18:07:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MbFwKYvD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E91B10E4A2;
 Mon, 10 Mar 2025 18:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741630064; x=1773166064;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lzMYLeE147nl0JNQ+nwm5AnSmGQvwba4X65E8QfK1fM=;
 b=MbFwKYvD8ZKdCEMWSr98yZu10qOWNTOEio8OCy9X+t14YYFnucIP3eYy
 2a5su3eZCnNeNjFFx9MynszLoPqc75JN9S1rts27wK+X+S7xRKmcQsPTW
 SInd73ymgursbxggw+8JDebTPdcIKuiR5kJK2x4o07/tkKI9rDP1xi516
 1tXuS4T8nkDub7otpsDLdDXLhuzW+ZtbhGLPnHNwHSSsft2/u6oGzYC/8
 ieYxXyP25aaIIFJsNZ4d+OtdouZ6TKQg7T0nohTsNDj2R8XJ5XOStLIAj
 RqLBBP+LC/gcXnzv+IvIRpWBeOjd6xQc56QQ6wRkAQthc/jrKb3tjycAO g==;
X-CSE-ConnectionGUID: q1npKeqyQgOIsUyaV4W9+w==
X-CSE-MsgGUID: rxMhO+n9QkqAmBiROw8D4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="41887254"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="41887254"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:07:43 -0700
X-CSE-ConnectionGUID: K53cG57wRlOBgTrkgUzWgg==
X-CSE-MsgGUID: BthTkCQQR4qV1Jcw8+qtfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="125292764"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Mar 2025 11:07:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Mar 2025 20:07:40 +0200
Date: Mon, 10 Mar 2025 20:07:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 15/21] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Message-ID: <Z88qbNRLv4u6YOua@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
 <20250310121615.1077079-16-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310121615.1077079-16-ankit.k.nautiyal@intel.com>
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

On Mon, Mar 10, 2025 at 05:46:09PM +0530, Ankit Nautiyal wrote:
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
> v5:
> -For platforms that do not always have VRRTG on, do write bits other
> than enable bit and also use write the TRANS_VRR_PUSH register. (Ville)
> -Avoid writing trans_ctl_vrr if !vrr_possible().
> v6:
> -Disable VRR just before intel_ddi_disable_transcoder_func(). (Ville)
> -Correct the sequence of configuring PUSH and VRR Enable/Disable. (Ville)
> v7: Reset trans_vrr_ctl to 0 unconditionally in
> intel_vrr_transcoder_disable(). (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
>  drivers/gpu/drm/i915/display/intel_vrr.c    | 57 ++++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_vrr.h    |  2 +
>  4 files changed, 54 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index f38c998935b9..44f4465c27e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -78,6 +78,7 @@
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vdsc_regs.h"
> +#include "intel_vrr.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  
> @@ -3249,6 +3250,8 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
>  	}
>  
> +	intel_vrr_transcoder_disable(old_crtc_state);
> +
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  
>  	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> @@ -3522,6 +3525,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>  
>  	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>  
> +	intel_vrr_transcoder_enable(crtc_state);
> +
>  	/* Enable/Disable DP2.0 SDP split config before transcoder */
>  	intel_audio_sdp_split_update(crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index bd47cf127b4c..d2988b9a6e7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1065,6 +1065,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>  	drm_dp_remove_payload_part2(&intel_dp->mst.mgr, new_mst_state,
>  				    old_payload, new_payload);
>  
> +	intel_vrr_transcoder_disable(old_crtc_state);
> +
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  
>  	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> @@ -1326,6 +1328,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>  
>  	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>  
> +	intel_vrr_transcoder_enable(pipe_config);
> +
>  	intel_ddi_clear_act_sent(encoder, pipe_config);
>  
>  	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index f523a48e6186..cefdf1900e43 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -460,12 +460,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
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
> @@ -477,14 +471,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
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
>  
>  	if (HAS_AS_SDP(display))
>  		intel_de_write(display,
> @@ -618,6 +605,48 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>  }
>  
> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (!HAS_VRR(display))
> +		return;
> +
> +	if (!intel_vrr_possible(crtc_state))
> +		return;
> +
> +	if (!intel_vrr_always_use_vrr_tg(display)) {
> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +			       trans_vrr_ctl(crtc_state));
> +		return;
> +	}
> +
> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> +		       TRANS_PUSH_EN);
> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +}
> +
> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (!HAS_VRR(display))
> +		return;
> +
> +	if (!intel_vrr_possible(crtc_state))
> +		return;
> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
> +
> +	intel_de_wait_for_clear(display, TRANS_VRR_STATUS(display, cpu_transcoder),
> +				VRR_STATUS_VRR_EN_LIVE, 1000);
> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +}
> +
>  static
>  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 514822577e8a..c4ee8a758e19 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -35,5 +35,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VRR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
