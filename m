Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMu4MIJwoGk7jwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 17:10:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3A11A9B90
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 17:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D5510E9A8;
	Thu, 26 Feb 2026 16:10:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hPpZmbws";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70DED10E9A7;
 Thu, 26 Feb 2026 16:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772122239; x=1803658239;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NesaAmDGNDNKftP2Km0/w/5Qj9J6FQ4owwWaaKG4noE=;
 b=hPpZmbws20m1snlj8mCtbf8AwgrsT6u956aJKUpEI2K0yms5Yta5PZR6
 DlkLhzsXynp9xeYreP+JngR9DXDwRPBNPcGce8ZtSk4vt/qPGIxEqtEhH
 IozMzh3F/Cba0yRsFUPGCc9jBP/kCJQJ2GN5C+AoP6T1vzgwHW3LIu8tF
 1hcnpG3LtuoroKHtj9gW64fCzJM8z6ipPoQ49h1UljW+3C/m2gWV72dib
 bwn2g61HBvtBn4dX+9Kt2S6ygS2VHjUqLl7QRoJjt2/iuY9MpKyjgjmEC
 MFsGQV4tr2CDq6vcbJ0fhD4AWcQ3I7YwmtNsg9EFP5/zuEcp25/D8Og6t w==;
X-CSE-ConnectionGUID: OKMbsEl7TAmYb9eB7LCfBw==
X-CSE-MsgGUID: Ur9jWEybSZu2Rd7CcifFmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="72221967"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="72221967"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 08:10:39 -0800
X-CSE-ConnectionGUID: WkIGlrO1Rj2OYFYlHLfL5w==
X-CSE-MsgGUID: PdmQA7VYQ2mE02ZELM2zOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221612255"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 08:10:38 -0800
Date: Thu, 26 Feb 2026 18:10:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 08/14] drm/i915/dp: Add AS SDP support for PR with link ON
Message-ID: <aaBwesODSUbEdvjR@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-9-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260223134431.1639308-9-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2C3A11A9B90
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 07:14:25PM +0530, Ankit Nautiyal wrote:
> Adaptive Sync SDP (AS SDP) is also used for Panel Replay (PR).
> For PR with Link ON, the AS SDP version V1 is used. When using
> AS SDP Version 1, AS SDP payload and parity bytes are all set to zeroes.

I don't think we should need to transmit any AS SDP in link ON mode.

> 
> Bspec: 75639
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d08db4938638..5952db6197cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3115,7 +3115,8 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
>  				  struct intel_crtc_state *crtc_state)
>  {
>  	return crtc_state->vrr.enable ||
> -	       crtc_state->cmrr.enable;
> +	       crtc_state->cmrr.enable ||
> +	       crtc_state->has_panel_replay;
>  }
>  
>  static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> @@ -3137,6 +3138,16 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  	as_sdp->length = 0x9;
>  	as_sdp->duration_incr_ms = 0;
>  	as_sdp->version = 0x2;
> +
> +	if (crtc_state->vrr.enable)
> +		as_sdp->version = 0x2;

I think we rather need some versions checks or something to
make sure the device actually supports v2. VRR itself shouldn't
need v2 since the v1 was originally added exactly for VRR+PCON
use cases. PR+ALPM definitely does need v2, but not sure anything
else actually needs it.

> +	else
> +		as_sdp->version = 0x1;
> +
> +	/* No payload data bytes for Version 1 */
> +	if (as_sdp->version == 0x1)
> +		return;
> +
>  	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>  
>  	if (crtc_state->cmrr.enable) {
> @@ -5005,6 +5016,10 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>  	sdp->sdp_header.HB2 = as_sdp->version;
>  	sdp->sdp_header.HB3 = as_sdp->length;
>  
> +	/* No Payload Data bytes for Version 1 */
> +	if (as_sdp->version == 0x1)
> +		return length;
> +
>  	/* Fill AS (Adaptive Sync) SDP Payload */
>  	sdp->db[0] = as_sdp->mode;
>  	sdp->db[1] = as_sdp->vtotal & 0xFF;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
