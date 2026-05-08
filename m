Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEtsCOv0/WlxlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:36:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B404F7D48
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FE6C10F525;
	Fri,  8 May 2026 14:36:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kIBRV1av";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 441E810F520;
 Fri,  8 May 2026 14:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250983; x=1809786983;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=19d6fMLq/yP1Oz/GqLaIRiRsL1ahBYmi+GC3F8ZzaEg=;
 b=kIBRV1av4b6htVLJtZLPvQAVRdAHT81RuiYP69U/rpBTAJ+yc7HXmHQj
 4o3fVitN/isLBO8Hm6Cc28YYSgJS0pLnF1iKUneJfLAqxsxH26x0SLGzx
 U7Wf1E1PWCUHDWeReN1ZTQRGpreKtAWxG5mhTz8W6vYacAInqx9wkCk61
 P3e2mCXKEdvdu9C6lbwNwTuuuXEx6x61yAn3jq4i94K9kx/QOmVuUBZSM
 CQM1zxp4FOY6r/L1X1AS2j9zXuSqnGfCYPVQPngLEBuuLMdHf1JaCYhlu
 vr5J/s/LfhNC3HVLjT0sOjmdLTh67P6HL8nplf+LCw2Qr3ZzzDLq0BfzV Q==;
X-CSE-ConnectionGUID: 2BCWyudMSJWNnNKmEZfSQg==
X-CSE-MsgGUID: /0HYO5F9Sa+IyKf86qsnbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="89531677"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89531677"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:36:23 -0700
X-CSE-ConnectionGUID: OmA2tfsnSxCGa/W9qQa2zQ==
X-CSE-MsgGUID: zLicy3sFTXOlRPyQt2YWEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241748094"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:36:16 -0700
Date: Fri, 8 May 2026 17:36:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
Subject: Re: [PATCH 5/9] drm/dp: Refactor AS SDP logging to use
 space-separated field names
Message-ID: <af303Td06fAH4kuy@intel.com>
References: <20260428074457.3566918-1-ankit.k.nautiyal@intel.com>
 <20260428074457.3566918-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260428074457.3566918-6-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: B5B404F7D48
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Tue, Apr 28, 2026 at 01:14:53PM +0530, Ankit Nautiyal wrote:
> Replace underscores with spaces in AS SDP log field labels to be
> consistent with the VSC SDP logging style.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index a697cc227e28..745559826cd9 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -3508,10 +3508,10 @@ void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp
>  	drm_printf(p, "DP SDP: AS_SDP, revision %u, length %u\n",
>  		   as_sdp->revision, as_sdp->length);
>  	drm_printf(p, "    vtotal: %d\n", as_sdp->vtotal);
> -	drm_printf(p, "    target_rr: %d\n", as_sdp->target_rr);
> -	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
> -	drm_printf(p, "    duration_decr_ms: %d\n", as_sdp->duration_decr_ms);
> -	drm_printf(p, "    operation_mode: %d\n", as_sdp->mode);
> +	drm_printf(p, "    target rr: %d\n", as_sdp->target_rr);
> +	drm_printf(p, "    duration increase ms: %d\n", as_sdp->duration_incr_ms);
> +	drm_printf(p, "    duration decrease ms: %d\n", as_sdp->duration_decr_ms);
> +	drm_printf(p, "    operation mode: %d\n", as_sdp->mode);
>  }
>  EXPORT_SYMBOL(drm_dp_as_sdp_log);
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
