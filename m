Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCOiBYvNgGl3AgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 17:15:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BACCEC92
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 17:15:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3E310E527;
	Mon,  2 Feb 2026 16:15:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HQnbwgj+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0674010E526;
 Mon,  2 Feb 2026 16:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770048902; x=1801584902;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MNtshAPjRtVYIcKAHTqWNLU0nQa9mBXz4LVFP2FXAQE=;
 b=HQnbwgj+Bxl2LVkIE2HfipMdlLWBaOBzh4vA+Vf8XBKTW+tSe+0bwLkM
 SwbxtSQ9HRC63Fj0hWWWhwKMAJbtAJAaVOZq3+fUzEeUlKEPCONTTe8JE
 DgsCyjzAoSVROEcoOaQfaex6+08IN6htXi2QfQX5GmdN3pz48v3PQwO4g
 nMM1t08amlOzK/OQjSRto3sMvU9Ljf1n3gHviang599qvGz1+AAo1t3s0
 ASdBW2eHDYQwPQs0+MKBYkZk69BSHC5Y1BrXOW59Yv2n4MKFRelapODpj
 PpBEHAcS5FVhZlSs4dgLkTHp4wuRHG0Sz91/bkXFeikGHHdxRcovbhhAy g==;
X-CSE-ConnectionGUID: ozxky5V1RIizo/WB62+2Bw==
X-CSE-MsgGUID: 04NKYq/gQJC2E/iLZa04UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71262815"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="71262815"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 08:14:22 -0800
X-CSE-ConnectionGUID: soP2zpFRRvaCj35G8AFABA==
X-CSE-MsgGUID: 42HwYyEFS5uGcXECEdG/1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="213678310"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.247])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 08:14:15 -0800
Date: Mon, 2 Feb 2026 18:14:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [PATCH 3/4] drm/i915/dp: Allow AS_SDP only if panel replay +
 auxless alpm is supported
Message-ID: <aYDNTXVr1CUQZcKn@intel.com>
References: <20251111093007.3771409-1-ankit.k.nautiyal@intel.com>
 <20251111093007.3771409-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251111093007.3771409-4-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 45BACCEC92
X-Rspamd-Action: no action

On Tue, Nov 11, 2025 at 03:00:06PM +0530, Ankit Nautiyal wrote:
> Adaptive Sync SDP is required when Panel replay is active and for
> supporting VRR on PCON.
> 
> Since VRR on PCON still needs some effort, enable adaptive sync SDP only
> when Panel replay with ALPM-Auxless is supported.
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
> index 92a553a76b57..2852a1d9f157 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2935,7 +2935,15 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
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
> @@ -2949,9 +2957,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>  		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>  		as_sdp->target_rr_divider = true;
> -	} else {
> +	} else if (crtc_state->vrr.enable) {
>  		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
> -		as_sdp->target_rr = 0;
> +	} else {
> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

But we're still not configuring DOWNSPREAD_CTRL correctly so PR+VRR
seems to be busted.

>  	}
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
