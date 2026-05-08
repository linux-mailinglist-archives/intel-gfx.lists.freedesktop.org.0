Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KiOA2X1/Wn5lAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:38:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D014F7DDE
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE99810F526;
	Fri,  8 May 2026 14:38:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IInGxdR2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA7E410F526;
 Fri,  8 May 2026 14:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778251106; x=1809787106;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GPJJjl5X/3lXWI/FH29zpPakong5zTs42mxiQE1zlZU=;
 b=IInGxdR2KNZFzirFQ/ws3SmdUwpHas1yZrxTysMXc/gMiss5Ejcz9lMX
 qfUGydPpeWOV8yKQzzOUpr8AUeI6tpBNvnEAi9cvX6FTUEIt2zfPjHkKx
 umjqTn6isR/NOi6hfMUA505V+kc3QJw+7uGOpD3Is/+VmIRdLv79osWXi
 oCs8oIJ6/mSPEqMCtTqyGxod77a2C6x4AeVG6D88DO8MxNhkxcGntcDU0
 RPwIH7yjMr+me6iItMA2AEvhfNm+iQ0xulBYDdQ/L4SGzlAOgopHqtkgy
 d0cMAvefRBXu1MZTpDTEBWnAxQHlz5mF1l2xPOIElxKmpzYmM6Q43NkUh w==;
X-CSE-ConnectionGUID: w6wI6KCpSbm6ANp7EVFXdw==
X-CSE-MsgGUID: 7hy1z8P9T62Nk6RCd/ww5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="101894066"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="101894066"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:38:26 -0700
X-CSE-ConnectionGUID: etR/9558QrKvskR7Gq6ywQ==
X-CSE-MsgGUID: lhLNZetiS8CXwfdRp0JJSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="236897761"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:38:23 -0700
Date: Fri, 8 May 2026 17:38:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
Subject: Re: [PATCH 7/9] drm/dp: Add a helper to get the SDP type as a string
Message-ID: <af31XJIB7mrif6BX@intel.com>
References: <20260428074457.3566918-1-ankit.k.nautiyal@intel.com>
 <20260428074457.3566918-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260428074457.3566918-8-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 66D014F7DDE
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Tue, Apr 28, 2026 at 01:14:55PM +0530, Ankit Nautiyal wrote:
> Introduce dp_sdp_type_get_name() to get the SDP type as a string.
> Use this to log the SDP type based on the sdp_type fields of the
> VSC and AS SDPs instead of the hardcoded strings.
> 
> v2: Modify the SDP names to match the DisplayPort Spec. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 36 ++++++++++++++++++++++---
>  1 file changed, 32 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index 5f523d0514a5..654be04431ad 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -3487,10 +3487,38 @@ static const char *dp_content_type_get_name(enum dp_content_type content_type)
>  	}
>  }
>  
> +static const char *dp_sdp_type_get_name(unsigned char type)
> +{
> +	switch (type) {
> +	case DP_SDP_AUDIO_TIMESTAMP:
> +		return "Audio_TimeStamp";
> +	case DP_SDP_AUDIO_STREAM:
> +		return "Audio_Stream";
> +	case DP_SDP_EXTENSION:
> +		return "Extension";
> +	case DP_SDP_AUDIO_COPYMANAGEMENT:
> +		return "Audio_CopyManagement";
> +	case DP_SDP_ISRC:
> +		return "ISRC";
> +	case DP_SDP_VSC:
> +		return "VSC";
> +	case DP_SDP_PPS:
> +		return "PPS";
> +	case DP_SDP_VSC_EXT_VESA:
> +		return "VSC_EXT_VESA";
> +	case DP_SDP_VSC_EXT_CEA:
> +		return "VSC_EXT_CEA";
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		return "Adaptive-Sync";
> +	default:
> +		return "Unknown";
> +	}
> +}
> +
>  void drm_dp_vsc_sdp_log(struct drm_printer *p, const struct drm_dp_vsc_sdp *vsc)
>  {
> -	drm_printf(p, "DP SDP: VSC, revision %u, length %u\n",
> -		   vsc->revision, vsc->length);
> +	drm_printf(p, "DP SDP: %s, revision %u, length %u\n",
> +		   dp_sdp_type_get_name(vsc->sdp_type), vsc->revision, vsc->length);
>  	drm_printf(p, "    pixelformat: %s\n",
>  		   dp_pixelformat_get_name(vsc->pixelformat));
>  	drm_printf(p, "    colorimetry: %s\n",
> @@ -3505,8 +3533,8 @@ EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
>  
>  void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp)
>  {
> -	drm_printf(p, "DP SDP: AS_SDP, revision %u, length %u\n",
> -		   as_sdp->revision, as_sdp->length);
> +	drm_printf(p, "DP SDP: %s, revision %u, length %u\n",
> +		   dp_sdp_type_get_name(as_sdp->sdp_type), as_sdp->revision, as_sdp->length);
>  	drm_printf(p, "    vtotal: %d\n", as_sdp->vtotal);
>  	drm_printf(p, "    target rr: %d\n", as_sdp->target_rr);
>  	drm_printf(p, "    duration increase ms: %d\n", as_sdp->duration_incr_ms);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
