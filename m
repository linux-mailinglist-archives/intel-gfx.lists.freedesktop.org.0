Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OMiEBdmzmmXnQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 14:50:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001ED3893D7
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 14:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 384D910F247;
	Thu,  2 Apr 2026 12:50:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mMGi7gu0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B64E10F247;
 Thu,  2 Apr 2026 12:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775134225; x=1806670225;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=swZojEHC4nSRlFXFC4dd5NZrP9brXTQD1ScaHxbSyMQ=;
 b=mMGi7gu0J+GB5LiTXtcqKy8L9sThN48AzBDMZDLrX07uFoO2BWCBL18+
 8nV3XW/FxC4kZqcr6IFkdDEUpXwLuIvQVnJXZ82Q/+SfnYNIvucJYEoZD
 Cvq+RCJhcM0n4pC+n2f4KDNf6rDOelY+MuJV/K0WjtEdO63Al6Q/27xQC
 gASZqsKZABg/l1+Kw5is4uHgl+RRz05VklaRmWdxYeUnMOu+KNyfglFJk
 goJaWwbMfzavkVzmxPJyt61NmMzpdzjMzPbwAXtlWgSnMr6/kHlycpkZY
 5U3wrGsbd3vafSi4tNEc6GX3HPYdNsf+H8HvEAKOQrThaC52eVP9SeaFF w==;
X-CSE-ConnectionGUID: FAFO9PrnRxiDKd9zRlwYMw==
X-CSE-MsgGUID: Ui+Xy25rQcG1VakLIsqP4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="93583276"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="93583276"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 05:50:14 -0700
X-CSE-ConnectionGUID: 2RKdu956QQyVKhJd2YULTA==
X-CSE-MsgGUID: wJBUhp7FSw+oMH4nCVqETg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="226837110"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.61])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 05:50:12 -0700
Date: Thu, 2 Apr 2026 15:50:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 14/23] drm/i915/dp: Add member to intel_dp to store AS
 SDP v2 support
Message-ID: <ac5mAUhmxqn-_J0W@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
 <20260402080425.548702-15-ankit.k.nautiyal@intel.com>
 <ac5NPL2yG1aH12DF@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ac5NPL2yG1aH12DF@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 001ED3893D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 02:04:28PM +0300, Ville Syrjälä wrote:
> On Thu, Apr 02, 2026 at 01:34:14PM +0530, Ankit Nautiyal wrote:
> > DP v2.1 SCR advertises support for FAVT payload fields parsing in DPCD
> > 0x2214 Bit 2. This indicates the support for Adaptive-Sync SDP version 2
> > (AS SDP v2), which allows the source to set the version in HB2[4:0] and the
> > payload length in HB3[5:0] of the AS SDP header.
> > 
> > DP v2.1 SCR also introduces ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR in the
> > Panel Replay Capability DPCD 0x00b1 (Bit 3). When this bit is set, the sink
> > does not support asynchronous video timing while in a Panel Replay Active
> > state and the source is required to keep transmitting Adaptive-Sync
> > SDPs. The spec mandates that such sinks shall support AS SDP v2.
> > 
> > Infer AS SDP v2 support from these capabilities and store it in
> > struct intel_dp for use by subsequent feature enablement changes.
> 
> Hmm. After some more reading I think we might actually want to consult
> the DisplayID for this. The presence of the new adaptive sync block
> there might be a good indication for AS SDP v2 support. While the
> DisplayID 2.1 spec itself doesn't say that AS SDP v2 must be supported
> when the block is present, the DP 2.1 spec does at least say the converse.
> Ie. adaptive sync capable DP 2.1 sink must have the DisplayID block. And
> DP 2.1 seems to be all about the AS SDP v2 and not AS SDP v1 (that's a DP
> 2.0 thing really).

Hmm. But the EDID comes from the display, and we could have a PCON
in between that doesn't understand AS SDP v2. Sigh. What a mess.

> 
> I think there was a patch posted very recently on dri-devel, adding the
> adaptive sync DisplayID block parsing. Or at least some DisplayID block
> related to this.
> 
> The intel_psr_pr_async_video_timing_supported() check I think we want
> to keep regardless, because you could have a sink with PR but no
> adaptive sync. But the FAVT check could perhaps be dropped if we add 
> the DisplayID check.
> 
> > 
> > v2: Include parsing ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR bit to
> >     determine AS SDP v2 support. (Ville)
> > v3: Use helper to determine asynch video timing support.
> > 
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 33 +++++++++++++++++++
> >  2 files changed, 34 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index e2496db1642a..efc609eef4f5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1870,6 +1870,7 @@ struct intel_dp {
> >  	/* connector directly attached - won't be use for modeset in mst world */
> >  	struct intel_connector *attached_connector;
> >  	bool as_sdp_supported;
> > +	bool as_sdp_v2_supported;
> >  
> >  	struct drm_dp_tunnel *tunnel;
> >  	bool tunnel_suspended:1;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index cec0f3d03c2f..9fd768447f28 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -6306,6 +6306,36 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
> >  					       false);
> >  }
> >  
> > +static bool
> > +intel_dp_sink_supports_as_sdp_v2(struct intel_dp *intel_dp)
> > +{
> > +	u8 rx_features;
> > +
> > +	/*
> > +	 * The DP spec does not explicitly provide the AS SDP v2 capability.
> > +	 * So based on the DP v2.1 SCR, we infer it from the following bits:
> > +	 *
> > +	 * DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED indicates support for
> > +	 * FAVT, which is explicitly defined to use AS SDP v2.
> > +	 *
> > +	 * DP_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR indicates that the sink
> > +	 * does not support asynchronous video timing while in PR Active,
> > +	 * requiring the source to keep transmitting Adaptive-Sync SDPs. The
> > +	 * spec mandates that such sinks shall support AS SDP v2.
> > +	 */
> > +	if (drm_dp_dpcd_read_byte(&intel_dp->aux,
> > +				  DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1,
> > +				  &rx_features) == 1) {
> > +		if (rx_features & DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED)
> > +			return true;
> > +	}
> > +
> > +	if (!intel_psr_pr_async_video_timing_supported(intel_dp))
> > +		return true;
> > +
> > +	return false;
> > +}
> > +
> >  static void
> >  intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
> >  {
> > @@ -6313,6 +6343,9 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
> >  
> >  	intel_dp->as_sdp_supported = HAS_AS_SDP(display) &&
> >  		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
> > +
> > +	intel_dp->as_sdp_v2_supported = intel_dp->as_sdp_supported &&
> > +					intel_dp_sink_supports_as_sdp_v2(intel_dp);
> >  }
> >  
> >  static bool intel_dp_needs_dpcd_probe(struct intel_dp *intel_dp, bool force_on_external)
> > -- 
> > 2.45.2
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
