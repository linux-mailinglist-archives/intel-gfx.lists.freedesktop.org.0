Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFYBJ6VOzmmjmgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 13:10:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0B8388212
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 13:10:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D1310E339;
	Thu,  2 Apr 2026 11:10:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AS8PaWq9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EA0510E2D0;
 Thu,  2 Apr 2026 11:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775128224; x=1806664224;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=P/kcbzwxHFaQxKzowYCpts8tUu3qPtOnV6ryxc0e6C4=;
 b=AS8PaWq9qx/CMQDZGNZReHD+e6dsL+Pt4npm40VAXcbxnQu1Xcqee8an
 uISfeZC8QSMixOHYOBBj5q2t36SaKUvEnRV81HYF55UJqxorpOdMKrsYn
 QrO4a8Kff4aFV1vVIuBYOHbwNFqpihvjhnUVZm009JCFl+MNFVoEZhzqE
 AxME2g6vjrOkD0mzdG+HdTwxf2SVaAoKYVIUNWqMbPEJ3WDE7LIS5G2UI
 bS8SEsAfEMpIXRhnFatmkMNY85Yx/vd0PDuFwsBVf/AhBnyrDQCOtcPam
 MFG5sRLIMuykBABw8O9H2IFo7xwo0oETKHhBhK/cgocsQUn2aDzA5X5TD w==;
X-CSE-ConnectionGUID: NKrdIlyET5SSV5r3fn8bBQ==
X-CSE-MsgGUID: z8GDGX2NQheLo2HE0en62Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="87257264"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="87257264"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 04:10:23 -0700
X-CSE-ConnectionGUID: T3XWu8G0S7CgIy4Gxk79Rw==
X-CSE-MsgGUID: 8Zj0b7U1S2eYt4AlHR4+zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="226820646"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.61])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 04:10:22 -0700
Date: Thu, 2 Apr 2026 14:10:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 22/23] drm/i915/dp: Compute and include coasting vtotal
 for AS SDP
Message-ID: <ac5Omw5rDxuGO-Bp@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
 <20260402080425.548702-23-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260402080425.548702-23-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	URIBL_MULTI_FAIL(0.00)[intel.com:server fail,gabe.freedesktop.org:server fail];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3A0B8388212
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 01:34:22PM +0530, Ankit Nautiyal wrote:
> DP v2.1 allows the source to temporarily suspend Adaptive-Sync SDP
> transmission while Panel Replay is active when the sink supports
> asynchronous video timing.
> 
> In such cases, the sink relies on the last transmitted AS SDP timing
> information to maintain the refresh rate. To support this behavior,
> compute and populate the coasting vtotal field in the AS SDP payload.
> 
> Include coasting vtotal in AS SDP packing, unpacking, and comparison,
> and set it during late AS SDP configuration for PR with Aux-less ALPM
> when asynchronous video timing is supported.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 19 +++++++++++++++++++
>  2 files changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a0e7ef2574b2..747dd3112d66 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4914,7 +4914,8 @@ intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
>  		a->duration_incr_ms == b->duration_incr_ms &&
>  		a->duration_decr_ms == b->duration_decr_ms &&
>  		a->target_rr_divider == b->target_rr_divider &&
> -		a->mode == b->mode;
> +		a->mode == b->mode &&
> +		a->coasting_vtotal == b->coasting_vtotal;
>  }
>  
>  static bool
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 902c09e0780f..de6f88a5400d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5123,6 +5123,9 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>  	if (as_sdp->target_rr_divider)
>  		sdp->db[4] |= 0x20;
>  
> +	sdp->db[7] = as_sdp->coasting_vtotal & 0xFF;
> +	sdp->db[8] = (as_sdp->coasting_vtotal >> 8) & 0xFF;
> +
>  	return length;
>  }
>  
> @@ -5306,6 +5309,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
>  	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
>  	as_sdp->target_rr = ((sdp->db[4] & 0x3) << 8) | sdp->db[3];
>  	as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
> +	as_sdp->coasting_vtotal = (sdp->db[8] << 8) | sdp->db[7];
>  
>  	return 0;
>  }
> @@ -7383,6 +7387,21 @@ void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
>  	} else {
>  		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>  	}
> +
> +	/*
> +	 * For Panel Replay with Async Video Timing support, the source can
> +	 * disable sending the AS SDP during PR Active state. In that case,
> +	 * the sink needs the coasting vtotal value to maintain the refresh
> +	 * rate.
> +	 *
> +	 * #TODO:
> +	 * If we ever advertise support for coasting at other refresh targets,
> +	 * this logic could be revisited. For now, use the minimum refresh rate
> +	 * as the only safe coasting value.
> +	 */
> +	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state) &&
> +	    intel_psr_pr_async_video_timing_supported(intel_dp))
> +		as_sdp->coasting_vtotal = crtc_state->vrr.vmax;

Seems reasonable.

Is this always under our control or could the hardware overwrite
this with the current vtotal at the time of PR entry? Assuming
we can enter PR before the vtotal goes back to vmax on its own
anyway.

>  }
>  
>  static
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
