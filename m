Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0F63KOMEtGnjfQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:36:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7332831F2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80DC510EBDA;
	Fri, 13 Mar 2026 12:36:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g2ME5+X2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF0A10EBD9;
 Fri, 13 Mar 2026 12:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773405408; x=1804941408;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OiywfZZz9X7mSQWjGkQMDgLg9Z7aFyRNyM78GGXllTE=;
 b=g2ME5+X2tHAgqTym+db9tiCtxGiyZ20UBVo2h0zD2G9+TwRElmnDMgyy
 /sbPeyLzfbK7Z/gyhnvdeiwfbDwWjbU3S9or5OQQ4p/lz/WLxiAI7fxGD
 AGa/7AN7xPrbwtC4XwJaCoaltf+OA6wz+KkgBHWNK0el6vG4e2fU1OQuZ
 n5tbEA/ixsDUg1wu0fUE4qR4mr66ILWZGjn6XQ4axrGGFEudEIdT368kQ
 sNII86I1+7rIxwCGcdZHLcusFZwNaWYF+utO5FAngyAfMm8QCQLzsST3N
 F7wNCW5ezJozUdlsVy1wl8W1McAG2G4HdnXW1KCXiNdpoxfpXZD6uQSO2 g==;
X-CSE-ConnectionGUID: 4qeb7HfKS+ik8Tt35ptGtg==
X-CSE-MsgGUID: jZQxiR9LR7eewKQGrKawCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="97121194"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="97121194"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:36:48 -0700
X-CSE-ConnectionGUID: RXHd62X/TraqObGOYi0hUQ==
X-CSE-MsgGUID: OEjpapsvRlGpHjYzZGG5YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="225609084"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:36:45 -0700
Date: Fri, 13 Mar 2026 14:36:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 13/19] drm/i915/display: Add helper for AS SDP
 transmission time selection
Message-ID: <abQE2snfAjPn0st5@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-14-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311113611.3393194-14-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 0E7332831F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 05:06:05PM +0530, Ankit Nautiyal wrote:
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
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 20 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.c   |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h   |  2 ++
>  3 files changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index a7350ce8e716..0a6da3f926d3 100644
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
> +static int get_pr_alpm_as_sdp_transmission_time(const struct intel_crtc_state *crtc_state)

The type should be u32 since it returns a (partial) register value.

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
> index e6148e7f0ebc..74a8af3cf18c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7439,3 +7439,12 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  
>  	return true;
>  }
> +
> +int intel_dp_as_sdp_transmission_time(void)
> +{
> +	/*
> +	 * For now we use T1 as the transmission time.
> +	 * This can be later changed as per requirements.
> +	 */

IIRC Bspec actually says we must use T1.

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
