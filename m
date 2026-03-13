Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPrOOqkDtGnjfQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:31:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D83A828300E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:31:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22EAA10EBD2;
	Fri, 13 Mar 2026 12:31:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IgqFVxMo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B13BC10E11E;
 Fri, 13 Mar 2026 12:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773405094; x=1804941094;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ryg7LcAzGnLhuGSQQgnKEqRRr72019WNOG5PlffixHg=;
 b=IgqFVxMoFWMYMDdRvaqhr703vL2OdSYTAF6q0OouSzFiOfYdZzGTqJ7p
 Hwor459Su0fSGJGyCsu5NDX3CPupq1h7mqEZkjHOcoZvR+qiypgvtD6aC
 RBUNzrGJib54hSROZYLs5nr7iOEJcsVYwp6O+6Nf6CB2fW5GvbKT6uRNh
 qbb9A3xzjb3bUKepPkRmUjUHx41RNGmIzC6HQWAVA57/8fMuDxBitajBa
 izsChoJn2M2eaW+RVgkPN/5iMha5N23963fg2Bk3MSwGoGEo21nO3QkhM
 TRc4ogrSV1ZR3xAAErJTVoz3SHr1auDA4JqWd9xWj5NNLOgSnE//BgfDb g==;
X-CSE-ConnectionGUID: hxAB5ejJS7+iXjPGtcbDgw==
X-CSE-MsgGUID: z14317TwQLi9cE8iAVy/8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="77117475"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="77117475"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:31:33 -0700
X-CSE-ConnectionGUID: 1OHoAhI+Q6uXyYD2mDf9Og==
X-CSE-MsgGUID: NTVsS05fTI+vyueAVfZyJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="225271055"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:31:31 -0700
Date: Fri, 13 Mar 2026 14:31:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 11/19] drm/i915/dp: Add member to intel_dp to store AS
 SDP v2 support
Message-ID: <abQDnyVJ-Ps1p7wp@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311113611.3393194-12-ankit.k.nautiyal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D83A828300E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 05:06:03PM +0530, Ankit Nautiyal wrote:
> DP v2.1 mentions support for FAVT payload fields parsing in DPCD 0x2214
> Bit 2. This essentially signals the support for AS SDP version 2, that
> allows source to set the version in HB2[4:0] and the payload length in
> HB3[5:0] of the AS SDP header.
> 
> Read this bit and store the AS SDP v2 capability in intel_dp.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 21 +++++++++++++++++++
>  2 files changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e189f8c39ccb..d783cea06aed 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1870,6 +1870,7 @@ struct intel_dp {
>  	/* connector directly attached - won't be use for modeset in mst world */
>  	struct intel_connector *attached_connector;
>  	bool as_sdp_supported;
> +	bool as_sdp_v2_supported;
>  
>  	struct drm_dp_tunnel *tunnel;
>  	bool tunnel_suspended:1;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0d2403d48528..e6148e7f0ebc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6291,6 +6291,24 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>  					       false);
>  }
>  
> +static bool
> +intel_dp_sink_supports_as_sdp_v2(struct intel_dp *intel_dp)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	u8 rx_features;
> +
> +	if (drm_dp_dpcd_read_byte(&intel_dp->aux,
> +				  DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1,
> +				  &rx_features) < 0) {
> +		drm_dbg_kms(display->drm,
> +			    "Failed to read DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1\n");
> +
> +		return false;
> +	}
> +
> +	return rx_features & DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED;

Hmm. So the name seems to imply it's only about the FAVT stuff.
But even when running in AVT mode some of the payload bytes
can still be valid. Dunno how much the other stuff actually matters
for VRR itself, but I think for PR the coasting vtotal would at
least be important if we don't send AS SDP while in PR active
state.

The problematic case would be if we have to send the AS SDP
for VRR purposes, but want to suspend it during PR active
for power savings, assuming the sink has the
!ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR capability.

So I suppose we might want to also check for PR+ALPM here,
in case some of those don't also set the
DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED bit.

Sadly there doesn't seem to be a proper AS SDP v2 supported
bit anywhere. We just have to guess based on other capabilities :(

> +}
> +
>  static void
>  intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>  {
> @@ -6298,6 +6316,9 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>  
>  	intel_dp->as_sdp_supported = HAS_AS_SDP(display) &&
>  		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
> +
> +	intel_dp->as_sdp_v2_supported = intel_dp->as_sdp_supported &&
> +					intel_dp_sink_supports_as_sdp_v2(intel_dp);
>  }
>  
>  static bool intel_dp_needs_dpcd_probe(struct intel_dp *intel_dp, bool force_on_external)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
