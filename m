Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCegJnVjEGraWwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 16:08:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 390BD5B5DCC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 16:08:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D67B710E202;
	Fri, 22 May 2026 14:08:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a4jx5hvx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB67E10E1ED;
 Fri, 22 May 2026 14:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779458930; x=1810994930;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Vm4n9I38bDwV1F+v+pvhZe4NGJLBXnnZfAzj+nt5bZY=;
 b=a4jx5hvxpVZM5LaSp5vcG4oFGBO4ujlV60GVyH6afNf0mXux6bje5s9F
 UKsueyc6I7jx14Ml8jv9r6ZYkxJ0yjEdhBoR4I28/WOw1s/d31aIn0KFO
 j8K+IUku8YfnzJmVxOdT+k4ieFDpd3/m5PXoSU4LK7y/hgjgxt2dvd7pe
 Z3sMaWcTY+nGDCpPV9v9yEtLwtE/lKoWryq6XAIYvbjnKD1NA7TNDEXTG
 92tPQy5/df1td1USSHEQKAHZ09f+05SCOb49Q907QZ6GM1XHkdR2z8+30
 Ch2x5FtsLN1B2UdZ+Zsl3QgdpU9oXo4WRIAITV89AjSZUPwUat3o0gRzR w==;
X-CSE-ConnectionGUID: +a1QN0ToSSuMJOpPe52T6Q==
X-CSE-MsgGUID: HYpbVMNmT9mRqJh/DwDc/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84272268"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="84272268"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 07:08:49 -0700
X-CSE-ConnectionGUID: hsJ6D2p4TUWvDr08nK8q5Q==
X-CSE-MsgGUID: GxQ52Bx9SbuBJGux8Pjbcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="240079862"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.187])
 by orviesa010-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2026 07:08:48 -0700
Date: Fri, 22 May 2026 17:08:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 02/11] drm/i915/dp: Add member to intel_dp to store AS
 SDP v2 support
Message-ID: <ahBjbN-lIHz4_jFm@intel.com>
References: <20260518035502.2909359-1-ankit.k.nautiyal@intel.com>
 <20260518035502.2909359-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260518035502.2909359-3-ankit.k.nautiyal@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 390BD5B5DCC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 09:24:52AM +0530, Ankit Nautiyal wrote:
> eDP v1.5a advertises support for Adaptive Sync SDP and with that the
> support for AS SDP v2 is mandatory.
> 
> DP v2.1 SCR advertises support for FAVT payload fields parsing in DPCD
> 0x2214 Bit 2. This indicates the support for Adaptive-Sync SDP version 2
> (AS SDP v2), which allows the source to set the version in HB2[4:0] and the
> payload length in HB3[5:0] of the AS SDP header.
> 
> DP v2.1 SCR also introduces ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR in the
> Panel Replay Capability DPCD 0x00b1 (Bit 3). When this bit is set, the sink
> does not support asynchronous video timing while in a Panel Replay Active
> state and the source is required to keep transmitting Adaptive-Sync
> SDPs. The spec mandates that such sinks shall support AS SDP v2.
> 
> Infer AS SDP v2 support from these capabilities and store it in
> struct intel_dp for use by subsequent feature enablement changes.
> 
> v2:
>  - Include parsing ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR bit to
>    determine AS SDP v2 support. (Ville)
> v3:
>  - Use helper to determine asynch video timing support.
> v4:
>  - Add AS SDP v2 support for eDP as per v1.5a.
>  - Add a check for Panel Replay support before checking for Async video
>    timing support in PR
>  - Add a TODO for Display ID and PCON considerations. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 49 +++++++++++++++++++
>  2 files changed, 50 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index b7bcf8fefa3e..e9b95879c797 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1871,6 +1871,7 @@ struct intel_dp {
>  	/* connector directly attached - won't be use for modeset in mst world */
>  	struct intel_connector *attached_connector;
>  	bool as_sdp_supported;
> +	bool as_sdp_v2_supported;
>  
>  	struct drm_dp_tunnel *tunnel;
>  	bool tunnel_suspended:1;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1920d2f02666..92a650a728d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6365,6 +6365,46 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>  					       false);
>  }
>  
> +static bool
> +intel_dp_sink_supports_as_sdp_v2(struct intel_dp *intel_dp)
> +{
> +	u8 rx_features;
> +
> +	/*
> +	 * The DP spec does not explicitly provide the AS SDP v2 capability.
> +	 * So based on the DP v2.1 SCR, we infer it from the following bits:
> +	 *
> +	 * DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED indicates support for
> +	 * FAVT, which is explicitly defined to use AS SDP v2.
> +	 *
> +	 * DP_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR indicates that the sink
> +	 * does not support asynchronous video timing while in PR Active,
> +	 * requiring the source to keep transmitting Adaptive-Sync SDPs. The
> +	 * spec mandates that such sinks shall support AS SDP v2.
> +	 *
> +	 * #TODO: Check the Adaptive-Sync DisplayID 2.1 block once DisplayID
> +	 * parsing is available. This may help detect AS SDP v2 support for
> +	 * native DP 2.1 sinks that do not expose FAVT or PR-based capability
> +	 * bits.
> +	 *
> +	 * In the presence of PCONs, check PCON support from DPCD and sink
> +	 * support from Display ID.
> +	 */
> +
> +	if (drm_dp_dpcd_read_byte(&intel_dp->aux,
> +				  DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1,
> +				  &rx_features) == 1) {
> +		if (rx_features & DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED)
> +			return true;
> +	}
> +
> +	if (intel_dp->psr.sink_panel_replay_support &&
> +	    !intel_psr_pr_async_video_timing_supported(intel_dp))
> +		return true;
> +
> +	return false;
> +}
> +
>  static void
>  intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>  {
> @@ -6372,6 +6412,15 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>  
>  	intel_dp->as_sdp_supported = HAS_AS_SDP(display) &&
>  		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
> +
> +	if (!intel_dp->as_sdp_supported)
> +		return;
> +
> +	/* eDP Adaptive-Sync SDP always uses AS SDP v2 */
> +	if (intel_dp_is_edp(intel_dp))
> +		intel_dp->as_sdp_v2_supported =  true;

I really hope eDP 1.5 (not 1.5a) was never adopted by anyone because it
seems to make a complete mess of the AS SDP version number.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	else
> +		intel_dp->as_sdp_v2_supported = intel_dp_sink_supports_as_sdp_v2(intel_dp);
>  }
>  
>  static bool intel_dp_needs_dpcd_probe(struct intel_dp *intel_dp, bool force_on_external)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
