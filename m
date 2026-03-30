Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGpuBDbFymnE/wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 20:47:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B6235FEEC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 20:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2BF210E65A;
	Mon, 30 Mar 2026 18:47:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W6FstmcK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A0010E65A;
 Mon, 30 Mar 2026 18:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774896436; x=1806432436;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PIWI0crOj+P0FxeQumFWmGWyqU1qNqCXu0ML4qoFNbM=;
 b=W6FstmcKRzwAMNOluV3HWXwXMWBFW81j8dZmz9VUZJ1S5zjfKukrRHLG
 yylCFw+87V1ccgrP+xfzYJboQjmr9Ei655bwBX0YUZeY5WaRZBrDv9QlA
 D8nwsv4MFlU7i9Nt2UMJ+wyBZpTp/wtC+3F+dZJ3j7ywCxiSy8PAov2cM
 TN71OJDm5wwIgN3Lohbl+pTUK3XgBlxtQZcz2M4Y9AdI7O2jArdB1Yira
 vTU+chNapUeqGdsZmaQap2oGqW8dVV4qyOym3HFdkfioySuooQRsdjFV/
 lqfM5adErlmc8D5PtvQ9QdI1S5GVAhGO66Y40AJMZ/PGw9BC4BdOiF7UG w==;
X-CSE-ConnectionGUID: zmHf9mL8S9W7C9qV+B45jg==
X-CSE-MsgGUID: TgAjxVElQSWWhyJ6OGjTgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75614681"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="75614681"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 11:47:15 -0700
X-CSE-ConnectionGUID: En751reBR6uDEdfE4dj2Qg==
X-CSE-MsgGUID: qFzwAGSpRweXkPUdVcwvXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="225305660"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 11:47:12 -0700
Date: Mon, 30 Mar 2026 21:47:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 14/19] drm/i915/display: Add helper for AS SDP
 transmission time selection
Message-ID: <acrFLD9186X5EOyM@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-15-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260330040656.4116502-15-ankit.k.nautiyal@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 74B6235FEEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 09:36:51AM +0530, Ankit Nautiyal wrote:
> AS SDP may be transmitted at T1 or T2 depending on Panel Replay and
> Adaptive Sync SDP configuration as per DP 2.1. Current we are using
> T1 only, but future PR/AS SDP modes/features may require T2 or dynamic
> selection.
> 
> Introduce a helper to return the appropriate AS SDP transmission time so
> that a single value is consistently used for programming PR_ALPM.
> For now this returns T1.
> 
> v2: Avoid adding new member to crtc_state; use a helper. (Ville)
> v3: Clarify why AS SDP transmission time is fixed to T1. (Ville)
> 
> Bspec: 68920
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 20 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.c   | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h   |  2 ++
>  3 files changed, 32 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index a7350ce8e716..76de24a03f61 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -11,6 +11,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
>  #include "intel_psr.h"
> @@ -359,6 +360,23 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  	crtc_state->has_lobf = true;
>  }
>  
> +static u32 get_pr_alpm_as_sdp_transmission_time(const struct intel_crtc_state *crtc_state)
> +{
> +	int as_sdp_setup_time = intel_dp_as_sdp_transmission_time();
> +
> +	switch (as_sdp_setup_time) {
> +	case DP_PR_AS_SDP_SETUP_TIME_T1:
> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
> +	case DP_PR_AS_SDP_SETUP_TIME_DYNAMIC:
> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1_OR_T2;
> +	case DP_PR_AS_SDP_SETUP_TIME_T2:
> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T2;
> +	default:
> +		MISSING_CASE(as_sdp_setup_time);
> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
> +	}
> +}
> +
>  static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state)
>  {
> @@ -382,7 +400,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  			ALPM_CTL_AUX_LESS_WAKE_TIME(crtc_state->alpm_state.aux_less_wake_lines);
>  
>  		if (intel_dp->as_sdp_supported) {
> -			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
> +			u32 pr_alpm_ctl = get_pr_alpm_as_sdp_transmission_time(crtc_state);
>  
>  			if (crtc_state->link_off_after_as_sdp_when_pr_active)
>  				pr_alpm_ctl |= PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b2007ffe18bc..108e97b26748 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7465,3 +7465,14 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  
>  	return true;
>  }
> +
> +int intel_dp_as_sdp_transmission_time(void)

This is a DPCD register value, so u8 would seem like the more
appropriate return type.

With that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +{
> +	/*
> +	 * DP allows AS SDP position to move during PR active in some cases, but
> +	 * software-controlled refresh rate changes with DC6v / ALPM require the
> +	 * AS SDP to remain at T1. Use T1 unconditionally for now.
> +	 */
> +
> +	return DP_PR_AS_SDP_SETUP_TIME_T1;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 2849b9ecdc71..2e4609d9d05c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -238,4 +238,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>  		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>  
> +int intel_dp_as_sdp_transmission_time(void);
> +
>  #endif /* __INTEL_DP_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
