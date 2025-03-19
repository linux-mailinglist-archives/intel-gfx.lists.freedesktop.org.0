Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E7FA68F55
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 15:36:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B3D10E262;
	Wed, 19 Mar 2025 14:36:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GcypAqVs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E365410E248;
 Wed, 19 Mar 2025 14:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742394996; x=1773930996;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LWiQw8BtqHFLoAzGPmXWrrPcfGGaYXblLh2pl9DjJkk=;
 b=GcypAqVsgcapcw3y3b4BdaxhDQe4FuV7/bn/jLKZN/oTiHe5R12DPiTM
 bk4bDMNvIqKeEhXskd1XXsdG9iLVcVG2d9XRg+MF9kdybNDqbtypzvFWo
 pmNk4/qLEhrldnTXcb2kPLEf4XzsUKK4pRI3EaCyLdAbLi9RNfqYUnGan
 /TbNxOtElMwu+ZKVxcFm1EuMby3OUdT9JzuhhQ2dXdZEkyQzQIFfXMO13
 bZrGDAGYliCWzXK4Gq51j/dIMxHsWnY1xcQa1ARnpFi4ktjxzJbxSKwWR
 9++k37T9BbtRVyQc4qJpy72eGsW0/d3r9IfIfYArb3vH8KqLl/gtO6024 A==;
X-CSE-ConnectionGUID: qlsBT2R5SSakhlQZStcDww==
X-CSE-MsgGUID: 5yFm0bt4SfeyfoWMWxSKqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="43758260"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43758260"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 07:36:35 -0700
X-CSE-ConnectionGUID: tzsgyriaSZm4ip0yDYoeow==
X-CSE-MsgGUID: NLSZaOnlRC61ZPJp65RI2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="127855803"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 19 Mar 2025 07:36:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Mar 2025 16:36:31 +0200
Date: Wed, 19 Mar 2025 16:36:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 10/16] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Message-ID: <Z9rWb5WfuRd6FWoP@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-11-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250318073540.2773890-11-ankit.k.nautiyal@intel.com>
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

On Tue, Mar 18, 2025 at 01:05:34PM +0530, Ankit Nautiyal wrote:
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
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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
> index 66afa66c66af..d4912199c3ac 100644
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

Seems to me that removing this is what causes the state checker woes
in BAT. I think we can leave this in, as our own computed state should
always have a valid flipline and it's only the GOP that doesn't have one.

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
>  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>  {
>  	return crtc_state->vrr.flipline &&
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 65d2b0eead51..859f1dc8a6d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -36,5 +36,7 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VRR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
