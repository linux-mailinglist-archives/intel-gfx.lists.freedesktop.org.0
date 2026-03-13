Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPUcJlcGtGnjfQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:43:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D152832DB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F52510EBDC;
	Fri, 13 Mar 2026 12:43:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G6cmPtgE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C3310EBD9;
 Fri, 13 Mar 2026 12:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773405780; x=1804941780;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=T/oAZlQntOauE8Rca7++5NByj8AgYQDNRpE72LJMUt4=;
 b=G6cmPtgE0I3MWzEKfM42y5cTDkluCRqqWte52Uipm45EHoTST3cvaexh
 VNs73ZjqlxTPzalwAFIo5u/ichfs53hqi8y8oM38zcODF5rvXw1QCeGpS
 RnjhQuBzAgZSB9jP63mM5XrTU4QJ2FS+5q8HmesC3TZehX0i5yhEFz72I
 vT4seqgyvVOvl4cGsu+PH8BswFr0gMHFVJ2lgRZHirxq67Fxvq7GiM69h
 v1YtInywEUpy3xIzFkyMWRtzWtw0fdbmVVCpoBjzjuNy0nEAVgGpbP+TP
 YFnppEI4i4rbCgdcL8Dudbp+93tocpu+dM0ucK4Wtybjq4q4Krh2EaaOw g==;
X-CSE-ConnectionGUID: cp1DEFCtTn2c0HIrNmLHWg==
X-CSE-MsgGUID: pAUsKrl6R+Sx1rFyckbT/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="74479034"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74479034"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:43:00 -0700
X-CSE-ConnectionGUID: CxYTJHTHSI6KUe/0TAKrDg==
X-CSE-MsgGUID: Lw7L+tRNQXKppgebK+Tqhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="221215692"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:42:58 -0700
Date: Fri, 13 Mar 2026 14:42:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 18/19] drm/i915/dp: Make provision for AS SDP version 1
Message-ID: <abQGT0gcL7SsDCh9@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-19-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311113611.3393194-19-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: F1D152832DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 05:06:10PM +0530, Ankit Nautiyal wrote:
> Currently we are setting AS SDP version to 2 without checking if the sink
> supports it or whether we need to send version 1.
> 
> For PR with Link ON, the AS SDP version V1 is used.
> When using AS SDP Version 1, AS SDP payload and parity bytes
> are all set to zeroes.
> 
> Add a helper to compute the AS SDP version based on sink support and
> feature requirement.
> 
> If AS SDP V2 is supported we use V2, unless Panel Replay with Link On is
> enabled, for which we use V1.
> If AS SDP V1 is not supported, we always send V1, without the payload.
> 
> Bspec: 75639
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4d0a7695be5a..6b45894e40e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5109,6 +5109,10 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>  	sdp->sdp_header.HB2 = as_sdp->revision;
>  	sdp->sdp_header.HB3 = as_sdp->length;
>  
> +	/* No Payload Data bytes for Version 1 */
> +	if (as_sdp->revision == 0x1)
> +		return length;
> +
>  	/* Fill AS (Adaptive Sync) SDP Payload */
>  	sdp->db[0] = as_sdp->mode;
>  	sdp->db[1] = as_sdp->vtotal & 0xFF;
> @@ -7330,6 +7334,19 @@ void intel_dp_mst_resume(struct intel_display *display)
>  	}
>  }
>  
> +static bool intel_dp_get_as_sdp_revision(struct intel_dp *intel_dp,
> +					 struct intel_crtc_state *crtc_state)
> +{
> +	if (crtc_state->has_panel_replay &&
> +	    !intel_alpm_is_alpm_aux_less(intel_dp, crtc_state))
> +		return 1;

The bogus v1 in PR link ON requirement got nuked from bspec.

> +
> +	if (intel_dp->as_sdp_v2_supported)
> +		return 2;
> +
> +	return 1;
> +}
> +
>  static
>  void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
>  					 struct intel_crtc_state *crtc_state)
> @@ -7345,7 +7362,12 @@ void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
>  	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>  	as_sdp->length = 0x9;
>  	as_sdp->duration_incr_ms = 0;
> -	as_sdp->revision = 0x2;
> +	as_sdp->revision = intel_dp_get_as_sdp_revision(intel_dp, crtc_state);
> +
> +	/* No payload data bytes for Version 1 */
> +	if (as_sdp->revision == 1)
> +		return;
> +
>  	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>  
>  	if (crtc_state->cmrr.enable) {
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
