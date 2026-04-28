Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0H6+H0qJ8GloUgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 12:17:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 314EC48270E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 12:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4B010EAE0;
	Tue, 28 Apr 2026 10:17:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vl8CNF1Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AFA810E307;
 Tue, 28 Apr 2026 10:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777371461; x=1808907461;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fqgwBRWiQl40IswQSq7+m4k7ZzDJblg+YGYIifM9SaQ=;
 b=Vl8CNF1Z/wFukUqFuC7Og2aJz7gXREV6LP/sBTdHtxFigMeh1u5oFSSF
 AW9gZ1venlH9TDMECGGojdS0geHAm0Nl7drMulMc/IWBGBhRe9sJr8bJW
 Zw9eKl3M3GbsvYkGuv7i1qO/pqUtvpJfs26FUYnV8YC5IBfLsa3gJ4Qsh
 sHYIfB2LFRu7vgeIdkISEMRqnJeZJcpVAmovfzWhy1mRk5pqkRUe3k2Mp
 xNTrOuvUt7M/v+Iw7huIj3yZSCpywJKlHrBauEdloYVQPX043hPSUfMom
 Lsh80aEAZ1sW0FOehcANp/lTBoTGrTqlXZ1YHmRksdHkFs2y0NnXH50+B Q==;
X-CSE-ConnectionGUID: t0yoMcF4STOAA+FYBG+2vg==
X-CSE-MsgGUID: jzdAUChzQR6mwq8Y8wSMLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78165344"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78165344"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:17:41 -0700
X-CSE-ConnectionGUID: cnCXHnMbQQGGYItedGyZhA==
X-CSE-MsgGUID: xlHEt5ERRky2gzyHTmOTfg==
X-ExtLoop1: 1
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.208])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:17:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 9/9] drm/dp: Use drm_printf_indent for DP SDP logging
In-Reply-To: <20260428074457.3566918-10-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428074457.3566918-1-ankit.k.nautiyal@intel.com>
 <20260428074457.3566918-10-ankit.k.nautiyal@intel.com>
Date: Tue, 28 Apr 2026 13:17:36 +0300
Message-ID: <df337712f741896f11b15852597900a4eb3f84b0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Queue-Id: 314EC48270E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Tue, 28 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Currently the DP SDP log helpers use spaces for indentation. Switch to
> tabs for indentation and use drm_printf_indent to keep the format
> strings readable.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 36 +++++++++++++------------
>  1 file changed, 19 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index fc550b48fd85..4bf7b783ac39 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -3519,15 +3519,16 @@ void drm_dp_vsc_sdp_log(struct drm_printer *p, const struct drm_dp_vsc_sdp *vsc)
>  {
>  	drm_printf(p, "DP SDP: %s, revision %u, length %u\n",
>  		   dp_sdp_type_get_name(vsc->sdp_type), vsc->revision, vsc->length);
> -	drm_printf(p, "    pixelformat: %s\n",
> -		   dp_pixelformat_get_name(vsc->pixelformat));
> -	drm_printf(p, "    colorimetry: %s\n",
> -		   dp_colorimetry_get_name(vsc->pixelformat, vsc->colorimetry));
> -	drm_printf(p, "    bpc: %u\n", vsc->bpc);
> -	drm_printf(p, "    dynamic range: %s\n",
> -		   dp_dynamic_range_get_name(vsc->dynamic_range));
> -	drm_printf(p, "    content type: %s\n",
> -		   dp_content_type_get_name(vsc->content_type));
> +
> +	drm_printf_indent(p, 1, "pixelformat: %s\n",
> +			  dp_pixelformat_get_name(vsc->pixelformat));
> +	drm_printf_indent(p, 1, "colorimetry: %s\n",
> +			  dp_colorimetry_get_name(vsc->pixelformat, vsc->colorimetry));
> +	drm_printf_indent(p, 1, "bpc: %u\n", vsc->bpc);
> +	drm_printf_indent(p, 1, "dynamic range: %s\n",
> +			  dp_dynamic_range_get_name(vsc->dynamic_range));
> +	drm_printf_indent(p, 1, "content type: %s\n",
> +			  dp_content_type_get_name(vsc->content_type));
>  }
>  EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
>  
> @@ -3535,14 +3536,15 @@ void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp
>  {
>  	drm_printf(p, "DP SDP: %s, revision %u, length %u\n",
>  		   dp_sdp_type_get_name(as_sdp->sdp_type), as_sdp->revision, as_sdp->length);
> -	drm_printf(p, "    vtotal: %d\n", as_sdp->vtotal);
> -	drm_printf(p, "    target rr: %d\n", as_sdp->target_rr);
> -	drm_printf(p, "    duration increase ms: %d\n", as_sdp->duration_incr_ms);
> -	drm_printf(p, "    duration decrease ms: %d\n", as_sdp->duration_decr_ms);
> -	drm_printf(p, "    operation mode: %d\n", as_sdp->mode);
> -	drm_printf(p, "    target rr divider: %s\n",
> -		   as_sdp->target_rr_divider ? "1.001" : "1.000");
> -	drm_printf(p, "    coasting vtotal: %d\n", as_sdp->coasting_vtotal);
> +
> +	drm_printf_indent(p, 1, "vtotal: %d\n", as_sdp->vtotal);
> +	drm_printf_indent(p, 1, "target rr: %d\n", as_sdp->target_rr);
> +	drm_printf_indent(p, 1, "duration increase ms: %d\n", as_sdp->duration_incr_ms);
> +	drm_printf_indent(p, 1, "duration decrease ms: %d\n", as_sdp->duration_decr_ms);
> +	drm_printf_indent(p, 1, "operation mode: %d\n", as_sdp->mode);
> +	drm_printf_indent(p, 1, "target rr divider: %s\n",
> +			  as_sdp->target_rr_divider ? "1.001" : "1.000");
> +	drm_printf_indent(p, 1, "coasting vtotal: %d\n", as_sdp->coasting_vtotal);
>  }
>  EXPORT_SYMBOL(drm_dp_as_sdp_log);

-- 
Jani Nikula, Intel
