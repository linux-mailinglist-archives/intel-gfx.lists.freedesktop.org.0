Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPQgAW7Aymk//wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 20:26:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C741035FBE2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 20:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B195310E651;
	Mon, 30 Mar 2026 18:26:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WHFUFl6p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3A8510E1E7;
 Mon, 30 Mar 2026 18:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774895207; x=1806431207;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HvZ/3BeNvE0Xz59u4abtmO2yGkWQ7JC65eBVTPjZc68=;
 b=WHFUFl6p/Hspi8llsE5VrWA6Rog1E73AhVqLGVeelQu5uvDrCHfRnePg
 LbSPeqGsBnPjnVdJ3XXItKkq/mjtzuNvDzK37DPxMgdj2oi16/5FwYRUD
 yRN/bVBtGGke3szai8WR8frS9AYNdi17yf2NPG9LVTwegtcWCZSLQ4D7W
 6Yok3cZ/KLAwv0A7IjOrB89OA9+0QQzVazimsxr3JKLkaeEdk0H2z95gE
 GDPTGx9s7LRh6boTR5L9weoXqzGj8xCvNUeD+m4ZymViiEsS/PQt1XfEu
 s6yiCKb/it4C7+i2nF9X4QNuF8pkXEsMMF8wxGGwCtUHsjAmvmDqOzpxk Q==;
X-CSE-ConnectionGUID: y4M2/ciOSiGPc8VBwSYA4w==
X-CSE-MsgGUID: 53rsQY2ARw2YFw/BiRtxuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="74928240"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="74928240"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 11:26:47 -0700
X-CSE-ConnectionGUID: RynDOM0FTNqd5qTa+4pCVQ==
X-CSE-MsgGUID: txLIgMbMRzW2cSW1Hh8Pxw==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 11:26:45 -0700
Date: Mon, 30 Mar 2026 21:26:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 11/19] drm/i915/dp: Include all relevant AS SDP fields in
 comparison
Message-ID: <acrAY8wl5oduAZVT@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260330040656.4116502-12-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: C741035FBE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 09:36:48AM +0530, Ankit Nautiyal wrote:
> Add missing drm_dp_as_sdp header fields to intel_compare_dp_as_sdp()
> comparison.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 57870baebfa5..a0e7ef2574b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4906,11 +4906,14 @@ static bool
>  intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
>  			const struct drm_dp_as_sdp *b)
>  {
> -	return a->revision == b->revision &&
> +	return a->sdp_type == b->sdp_type &&
> +		a->revision == b->revision &&
> +		a->length == b->length &&
>  		a->vtotal == b->vtotal &&
>  		a->target_rr == b->target_rr &&
>  		a->duration_incr_ms == b->duration_incr_ms &&
>  		a->duration_decr_ms == b->duration_decr_ms &&
> +		a->target_rr_divider == b->target_rr_divider &&
>  		a->mode == b->mode;

BTW do we know if the hardware actually modifies the AS SDP DIP buffer,
or does it just override some of the values as the SDP is being
transmitted? If the former then I guess we have to keep in mind that
the readout may have to do some sanitizing to avoid mismatches,
if we do anything that require the hardware to dynamically adjust
the AS SDP.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
