Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8E72Ll37s2n4egAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:56:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F64028284B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:56:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F406310EBBA;
	Fri, 13 Mar 2026 11:56:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgEwug9f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 328E910EBBA;
 Fri, 13 Mar 2026 11:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773402967; x=1804938967;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LOnaTDGC51VgqbQ1maJ7Rj1bBIfxNyBbFiCTiX4kJkU=;
 b=mgEwug9f7Q7ABwTYhx9dVkroRN5veJ4dD3VfGc/SZp9FdY+LeEGd8j4J
 1cz3A+gix5vLwziqtN5jCKD4pjWmDEtb690z3ososgvxpt2HmPV1ul3/O
 upLdydlgg9+o69BMro0f1xOrc7CvkhL7VfMGozH3GrVF3e3+SvNvOl3dt
 1sxpSUGYqwnYnZl+mfvY7S9ZbYabB7Mi/ixAOmsoR14G4gGi1WNXiXZ7/
 fwxs9Hvha9RZG9Le/hhgHlxHm+z7oQBqo04B1LtU79lH1cYQHyXMCGp7I
 AzhOarllbSgtmv7uISQn3MEMUvhTjqHDY6eam3WIKGVuucX929EYM6O0y w==;
X-CSE-ConnectionGUID: vrMqpdkPQhudpzyIZE6now==
X-CSE-MsgGUID: R8vZt/rxReGSNiRkPeRRwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="78106891"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78106891"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:55:31 -0700
X-CSE-ConnectionGUID: hPfhKbCCQgeKFntlc8En4w==
X-CSE-MsgGUID: +FaFAoLxT5iJZKLp6UhaFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="225602127"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:55:29 -0700
Date: Fri, 13 Mar 2026 13:55:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 10/19] drm/i915/dp: Use revision field of AS SDP data
 structure
Message-ID: <abP7Lq--PC69q5ex@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-11-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311113611.3393194-11-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.95 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:?];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DMARC_DNSFAIL(0.00)[intel.com : SPF/DKIM temp error,none];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	R_DKIM_TEMPFAIL(0.00)[intel.com:s=Intel];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 6F64028284B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 05:06:02PM +0530, Ankit Nautiyal wrote:
> Use the revision field of struct drm_dp_as_sdp instead of current
> hardcoding for the AS SDP revisions.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 7 +++----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b18ce0c36a64..88e1b503d301 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4900,7 +4900,8 @@ static bool
>  intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
>  			const struct drm_dp_as_sdp *b)
>  {
> -	return a->vtotal == b->vtotal &&
> +	return a->revision == b->revision &&

Someone should add the check for the type and length as well
(and other relevant stuff in the header if any). But that
can be a separate patch.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +		a->vtotal == b->vtotal &&
>  		a->target_rr == b->target_rr &&
>  		a->duration_incr_ms == b->duration_incr_ms &&
>  		a->duration_decr_ms == b->duration_decr_ms &&
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 17af68a1a9e5..0d2403d48528 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3154,6 +3154,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>  	as_sdp->length = 0x9;
>  	as_sdp->duration_incr_ms = 0;
> +	as_sdp->revision = 0x2;
>  	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>  
>  	if (crtc_state->cmrr.enable) {
> @@ -5117,7 +5118,7 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>  	/* Prepare AS (Adaptive Sync) SDP Header */
>  	sdp->sdp_header.HB0 = 0;
>  	sdp->sdp_header.HB1 = as_sdp->sdp_type;
> -	sdp->sdp_header.HB2 = 0x02;
> +	sdp->sdp_header.HB2 = as_sdp->revision;
>  	sdp->sdp_header.HB3 = as_sdp->length;
>  
>  	/* Fill AS (Adaptive Sync) SDP Payload */
> @@ -5304,13 +5305,11 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
>  	if (sdp->sdp_header.HB1 != DP_SDP_ADAPTIVE_SYNC)
>  		return -EINVAL;
>  
> -	if (sdp->sdp_header.HB2 != 0x02)
> -		return -EINVAL;
> -
>  	if ((sdp->sdp_header.HB3 & 0x3F) != 9)
>  		return -EINVAL;
>  
>  	as_sdp->length = sdp->sdp_header.HB3 & DP_AS_SDP_LENGTH_MASK;
> +	as_sdp->revision = sdp->sdp_header.HB2;
>  	as_sdp->mode = sdp->db[0] & DP_AS_SDP_OPERATION_MODE_MASK;
>  	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
>  	as_sdp->target_rr = ((sdp->db[4] & 0x3) << 8) | sdp->db[3];
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
