Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ID9AFRHnFmruvgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 14:44:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2CF5E45DB
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 14:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 726CC10E7AF;
	Wed, 27 May 2026 12:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jYC5/zRC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3AFF10E266;
 Wed, 27 May 2026 12:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779885839; x=1811421839;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ryFvF2A6rag22LBzt9AhOddzooqAxaTNHmhr4DeZwiE=;
 b=jYC5/zRCQOa1PWLoCvp+EoAJl8kA/gwZ0yrn2JZ4lGxr44W6X4n1C8VA
 ZcKrHXzpLquZ9rGDYTwx6YiAFmlspH/WQe8Fu7QtgfN2tywBYJQggw94G
 oqirC9ouWduxIYNGnPxBrc/PRtETEob1PykSvblSSkN8AIWZUo54nVVin
 BLk3/pR1sAMaVYkL1mjarcbNT1FIAdn68vStpbwtS1QTyrS300fV/Ws7G
 QSXIIZwpx5X/zxm3VA9pgFOCPDgaDykee9CxtfFM97rnj8it9n36w5XOK
 Fm+uB9u2Y6YhXVcFW67MtEPjTIDxHNiiNZX/rk+dKFZrxZTjBEihvmOpR w==;
X-CSE-ConnectionGUID: RPrfQGrYSmyuBbJafYeg8A==
X-CSE-MsgGUID: La2ypY2YSayf+pUuxi1KUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80696570"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80696570"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 05:43:59 -0700
X-CSE-ConnectionGUID: MCTVSCbTSw264KqepFJwnQ==
X-CSE-MsgGUID: 0m4/oQUORsy1BlqwbiIF1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="272566457"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.80])
 by orviesa002-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 05:43:56 -0700
Date: Wed, 27 May 2026 15:43:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 11/12] drm/i915/dp: Enable AS SDP whenever VRR is
 possible or PR !async
Message-ID: <ahbnCRbvwftnXy9P@intel.com>
References: <20260527041050.601735-1-ankit.k.nautiyal@intel.com>
 <20260527041050.601735-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260527041050.601735-12-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: EE2CF5E45DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 27, 2026 at 09:40:49AM +0530, Ankit Nautiyal wrote:
> Currently AS SDP is only configured when VRR is enabled.
> With optimized guardband, we also need to account for wakeup time and other
> relevant details that depend on the AS SDP position whenever AS SDP is
> enabled. If a feature enabling AS SDP gets turned on later (after modeset),
> the guardband might not be sufficient and may need to increase, triggering
> a full modeset.
> 
> Additionally, for Panel Replay with Aux-less ALPM where the sink does
> not support asynchronous video timing in PR active, the source must
> keep transmitting Adaptive-Sync SDPs while PR is active.
> 
> So, always send AS SDP whenever there is a possibility to use it for VRR
> OR for Panel Replay for synchronization.
> 
> v2: Check if AS SDP can be used for synchronization for VRR or PR. (Ville)
> v3: Use intel_psr_needs_alpm_aux_less() instead of
>     intel_alpm_is_alpm_aux_less() to avoid including the LOBF case. (Ville)
>     Modify the commit message and subject.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index af52ba636f55..a84fd6bb4053 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3181,7 +3181,11 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
>  	if (drm_dp_is_branch(intel_dp->dpcd))
>  		return false;
>  
> -	return crtc_state->vrr.enable;
> +	if (intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) &&
> +	    !intel_psr_pr_async_video_timing_supported(intel_dp))
> +		return true;
> +
> +	return intel_vrr_possible(crtc_state);
>  }
>  
>  static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
