Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +L4nJrGFjGmfqAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 14:35:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D68124CFD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 14:35:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6F2110E138;
	Wed, 11 Feb 2026 13:35:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1wUl1Le";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5543E10E124;
 Wed, 11 Feb 2026 13:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770816942; x=1802352942;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=2acvhPj9xj95pA6ph7eUyLc6tqO/rQNjW4Et3anclKU=;
 b=c1wUl1Le7IVfxADz+85KhPw9Gw4sCdsKXJNkBckwVicFAe2FqrUrcCj5
 ilFBEaAtzBMIArGTA433gDRuPbX8uBm/W9GPWoqZ2pWyzp9hZrjLvLsWb
 IBHxf5aPZOPA0BX80xnKSfiKth5/cQ8NdxwrxmAewwbvE8voZjQOKI9wP
 6zKY5XZ9TmhuvzXXqqqNbFoqM6M2dNoTF1klhvING+A+1KXoR90wxt8pp
 XR7cMg1QoRr7ZxoWkOM2m2L0kGbmXEbF8idAFMsu6/g+EmJU21WQAbRc+
 t8ekdelw/axEDPZnT0tfWztAvHo6qQ/AXiF7+B3rIZDIH7ZMXDJw8dHoB w==;
X-CSE-ConnectionGUID: bfVxgotiRlynrfsQp3ltRg==
X-CSE-MsgGUID: 4pV3VqRiQL6WbIXdur31/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="71951022"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71951022"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 05:35:41 -0800
X-CSE-ConnectionGUID: 3L/0rthAQJ60xi+jri9HZA==
X-CSE-MsgGUID: a4a/dZQgQraQtOi6mkJRqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="242033329"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 05:35:40 -0800
Date: Wed, 11 Feb 2026 14:35:37 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Imre Deak <imre.deak@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/display: Clarify target pipe bpp variable
 name in compute_sink_pipe_bpp()<
In-Reply-To: <20260211115811.508496-1-imre.deak@intel.com>
Message-ID: <394b5ad6-d8d5-0de8-1792-aac286a9446b@intel.com>
References: <20260211115811.508496-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-279549755-1770816039=:161755"
Content-ID: <b03fabb8-1a3b-9602-b38b-7cd6427ca23e@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: E1D68124CFD
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-279549755-1770816039=:161755
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <e809608e-daa4-3d60-9c6d-cf246e09171e@intel.com>

Hello Imre,

Some comments below wrt commit messages. No functional change requested.

On Wed, 11 Feb 2026, Imre Deak wrote:
> Clarify that the baseline pipe BPP - i.e. the non-DP specific
> platform/EDID maximum BPP limited by any user-requested max-bpc setting
> - set by compute_sink_pipe_bpp() is a baseline _target_ pipe BPP. This
> target BPP can get either rejected or adjusted (lowering or increasing
> it as needed) by the encoder state computation based on other
> constrains, like a minimum pipe BPP dictated by a non-RGB output format

s/contrains/contraints

> (24 BPP) or a min/max DSC input BPP dictated by a DSC sink. Whether an
> out-of-bound target BPP is adjusted or rejected depends on the max-bpc
> property's semantic assumed by the driver, which is atm to reject such a

s/semantic/semantics

> request.
>
> A follow-up change will also compute the baseline _maximum_ pipe BPP,
> which is the non-DP specific platform/EDID maximum BPP w/o the requested
> max-bpc adjustment and as such is a hard limit: The encoder state

s/The/the

> computation must ensure that the final BPP selected for the modeset is
> below this maximum. Tracking the baseline maximum pipe BPP separately
> will allow for adjusting the baseline target BPP as needed, clamping it
> to the valid DP min/max pipe BPP range, instead of rejecting an
> out-of-bound BPC/BPP request.
>
> To clarify the above semantics rename bpp in compute_sink_bpp() to

s/compute_sink_bpp()/compute_sink_pipe_bpp()

> target_pipe_bpp in this patch, preparing for a follow-up change also
> computing max_pipe_bpp in the same function.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---

> drivers/gpu/drm/i915/display/intel_display.c | 47 +++++++++++---------
> 1 file changed, 25 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 295f14416be70..ab4b59916d2e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4350,6 +4350,23 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
> 	return 0;
> }
>
> +static int bpc_to_bpp(int bpc)
> +{
> +	switch (bpc) {
> +	case 6 ... 7:
> +		return 6 * 3;
> +	case 8 ... 9:
> +		return 8 * 3;
> +	case 10 ... 11:
> +		return 10 * 3;
> +	case 12 ... 16:
> +		return 12 * 3;
> +	default:
> +		MISSING_CASE(bpc);
> +		return -EINVAL;
> +	}
> +}
> +
> static int
> compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
> 		      struct intel_crtc_state *crtc_state)
> @@ -4357,36 +4374,22 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
> 	struct intel_display *display = to_intel_display(crtc_state);
> 	struct drm_connector *connector = conn_state->connector;
> 	const struct drm_display_info *info = &connector->display_info;
> -	int bpp;
> +	int target_pipe_bpp;
>
> -	switch (conn_state->max_bpc) {
> -	case 6 ... 7:
> -		bpp = 6 * 3;
> -		break;
> -	case 8 ... 9:
> -		bpp = 8 * 3;
> -		break;
> -	case 10 ... 11:
> -		bpp = 10 * 3;
> -		break;
> -	case 12 ... 16:
> -		bpp = 12 * 3;
> -		break;
> -	default:
> -		MISSING_CASE(conn_state->max_bpc);
> -		return -EINVAL;
> -	}
> +	target_pipe_bpp = bpc_to_bpp(conn_state->max_bpc);
> +	if (target_pipe_bpp < 0)
> +		return target_pipe_bpp;
>
> -	if (bpp < crtc_state->pipe_bpp) {
> +	if (target_pipe_bpp < crtc_state->pipe_bpp) {
> 		drm_dbg_kms(display->drm,
> -			    "[CONNECTOR:%d:%s] Limiting display bpp to %d "
> +			    "[CONNECTOR:%d:%s] Limiting target display pipe bpp to %d "
> 			    "(EDID bpp %d, max requested bpp %d, max platform bpp %d)\n",
> 			    connector->base.id, connector->name,
> -			    bpp, 3 * info->bpc,
> +			    target_pipe_bpp, 3 * info->bpc,
> 			    3 * conn_state->max_requested_bpc,
> 			    crtc_state->pipe_bpp);
>
> -		crtc_state->pipe_bpp = bpp;
> +		crtc_state->pipe_bpp = target_pipe_bpp;
> 	}
>
> 	return 0;
> -- 
> 2.49.1
>
>
--1527428566-279549755-1770816039=:161755--
