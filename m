Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 369D1C158B3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 16:42:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D031510E5F5;
	Tue, 28 Oct 2025 15:42:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWnijWi3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A982710E5F5;
 Tue, 28 Oct 2025 15:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761666147; x=1793202147;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NFNgFi9as9dZRDmLfPwtsgsOF50y1ZdTwOPuws8hmvQ=;
 b=EWnijWi3w4CMghHblOlDrA3Owdqtt59Z/s+z1REqbuADVrgelkBdlZHt
 kHhyeRjg3PUtglBzoIGyijtMlHoFyp0LcIicFiIjZ4w9NVJkVsbYpwPsg
 9ECLyXXSiLN57BbA0ft2IKdjXn7AMeT++tEGC7rnhlDMuQLSpDcxShfzz
 4xFneYAZq/aexbhwt5Qmt8EDjEM7o0h7UrYdGXFWWbGD+LrQuhimAs0fn
 BbAypMqvRINQhEOqei659PwLzK+lK5HHtgGho7720LqtfPpHkjlGv6c3N
 /tqWX5R4ZmOb7fgacR/5t1DpOvjiNqwhloWSxOwGpHI63rrYxgfw6lv2x g==;
X-CSE-ConnectionGUID: kQnL5+liTTCE9stPsrbKMA==
X-CSE-MsgGUID: jn2dln9jQyiC9cMy1yoauQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66385940"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="66385940"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 08:42:27 -0700
X-CSE-ConnectionGUID: Fpsi6WXsS4qCr9gwlKZP9w==
X-CSE-MsgGUID: vqRm71N+TZeb3BpNTKYGvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="185699353"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 08:42:25 -0700
Date: Tue, 28 Oct 2025 17:42:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [PATCH 2/3] drm/i915/dp: Allow AS_SDP only if panel replay +
 auxless alpm is supported
Message-ID: <aQDkX6dk_Ek5OhpJ@intel.com>
References: <20251028043502.2977803-1-ankit.k.nautiyal@intel.com>
 <20251028043502.2977803-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251028043502.2977803-3-ankit.k.nautiyal@intel.com>
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

On Tue, Oct 28, 2025 at 10:05:01AM +0530, Ankit Nautiyal wrote:
> Adaptive Sync SDP is required when Panel replay is active and for
> supporting VRR on PCON.
> 
> Since VRR on PCON still needs some effort, enable adaptive sync SDP only
> when Panel replay with ALPM-Auxless is supported.
> 
> Set the AS_SDP mode for Fixed Vtotal mode for fixed refresh rate case.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ee113e118fed..8583cab37123 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2934,7 +2934,15 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  
> -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
> +	if (!intel_dp->as_sdp_supported)
> +		return;
> +
> +	/*
> +	 * Support Adaptive-Sync SDP only for PR+AUX-less ALPM for now.
> +	 * It can be enabled for PCON + VRR, but that is currently not supported.
> +	 */
> +	if (!CAN_PANEL_REPLAY(intel_dp) ||
> +	    !intel_alpm_aux_less_wake_supported(intel_dp))
>  		return;

You're not using any of the the psr/alpm crtc_state stuff in here,
so I'm not sure why you did the reordering in the previous patch?

>  
>  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> @@ -2948,9 +2956,12 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>  		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>  		as_sdp->target_rr_divider = true;
> -	} else {
> +	} else if (crtc_state->vrr.enable) {
>  		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;

We do not seem to configure the other bit in DOWNSPREAD_CTRL
properly for AS SDP v2, so technically this value looks to be
illegal. Same for the CMRR case.

The AS SDP (and SDP in general) code seems to have a myriad
of problems. Here are the ones off the top of my head:
- lack of SDP header validation in intel_compare_*_sdp()
- nothing seems to check that AS SDP v2 is actually
  supported and not just v1. I suppose maybe the PR+AUX-less
  check might be enough for that?
- intel_dp_as_sdp_unpack() target_rr readout looks broken
- intel_dp_as_sdp_pack() hardcodes HB2 instead of getting it
  from the input
- atomic updates/double buffering of all video DIPs is probably
  completely broken
- already discussed the vblank evasion issues in the previous mail

I suppose we don't need to fix it right now, but just a heads up 
that a significant amount of work os needed to get this code into
decent shape.

>  		as_sdp->target_rr = 0;
> +	} else {
> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
> +		as_sdp->target_rr = 0;

These target_rr assignments look completely redundant.

>  	}
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
