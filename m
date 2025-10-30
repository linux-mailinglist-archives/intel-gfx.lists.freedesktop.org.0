Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 648E6C1EF76
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 09:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE96510E8C3;
	Thu, 30 Oct 2025 08:23:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qr9JWbFi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54AB510E8BD;
 Thu, 30 Oct 2025 08:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761812616; x=1793348616;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=z9rWyDVbFy/dXojmf+3QLfr+75tRrOhW1uhpv+PrOIU=;
 b=Qr9JWbFi2xo8/K7MFD3nABaq6+gtisVkd3IdNFdTibeDJy/zPrg6MHcd
 hO44hRNIVEnOAa5rpGfVUJPcpsdOXHkLGPdyrV04ZL3wmXrPs9tGtKnMC
 pcHL/4zp+s/bvAVarLZdD2jOO7A5ogFL8Tm/H99hb7S5J+tnysQa/87c1
 LOwNM/Dfk7tMoE7/TrD1VE7OaMpFM9fsezlrx142CWBvTZP1xxRb7ycW+
 4max4z1NfWqXFJa34XnPDNF5uq5H3GAW7bc6Q9Jx3K3RiUDs2FK0Ee/m/
 cDBd3IldHa3WDyZJB90r4wZPSBgdM8Ro8EW8ETUAzuCL3n95glUTzsbjF Q==;
X-CSE-ConnectionGUID: 5+DOXINVSHSV9SpRxbIUXw==
X-CSE-MsgGUID: rMwpDGzxStq0SmY/Vd00eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="62968839"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="62968839"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 01:23:36 -0700
X-CSE-ConnectionGUID: A1iFO3hbSDCB3X+pAFvF6w==
X-CSE-MsgGUID: ALbPr5ZRTCOlob3220FgSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="190254153"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.136])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 01:23:34 -0700
Date: Thu, 30 Oct 2025 10:23:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [PATCH 2/5] drm/i915/dp: Allow AS_SDP only if panel replay +
 auxless alpm is supported
Message-ID: <aQMghHM7AJAU6m0m@intel.com>
References: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
 <20251030051755.3071648-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251030051755.3071648-3-ankit.k.nautiyal@intel.com>
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

On Thu, Oct 30, 2025 at 10:47:52AM +0530, Ankit Nautiyal wrote:
> Adaptive Sync SDP is required when Panel replay is active and for
> supporting VRR on PCON.
> 
> Since VRR on PCON still needs some effort, enable adaptive sync SDP only
> when Panel replay with ALPM-Auxless is supported.

AFAICS we don't actually check for PCON vs. not anywhere, and thus
we are in fact allowing VRR with PCON. Or am I missign some check
somewhere?

> 
> Set the AS_SDP mode for Fixed Vtotal mode for fixed refresh rate case.
> 
> v2: Remove redundant target_rr assignments. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c013eb2e18a1..b5b855453845 100644
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
>  
>  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> @@ -2948,9 +2956,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>  		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>  		as_sdp->target_rr_divider = true;
> -	} else {
> +	} else if (crtc_state->vrr.enable) {
>  		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
> -		as_sdp->target_rr = 0;
> +	} else {
> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>  	}
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
