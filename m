Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNNFGwdooGm+jQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 16:34:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CE41A8CB9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 16:34:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1840F10E987;
	Thu, 26 Feb 2026 15:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hMgNx0yR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6C9C10E987;
 Thu, 26 Feb 2026 15:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772120068; x=1803656068;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KVjuPV2PnmKImjY/YU+O9UZg7YjfMtTA0ylSXStBQRE=;
 b=hMgNx0yRxsgk62uGHydIDnHjC0nRwe2/4rXKQR9aABz69On+oortFULD
 LDQv2Mi+SLO8eivxJH1Zn1yAcdcmmI+kvGJo3XtuT42VzQJuy38kP6eQI
 TVxGG40okHsQKXJbX8DoQY33lhaXtwD3x4DvzHA4ZChikogYfyAcggu3n
 DIf8XOpjHGvFv/XZ1HgtFVCJ5btIAS13HTTljU9EHhwmzGPax66gOGnb6
 GHPpy1LuD+a9JjjmDyiztHnzet4/NjOzB4uskHc1DfZynSiIHAATdghNb
 fAhvxN1t1qU3AMzfC4O2PB58XRGkzZ73/O0dZtGHVdDVBrJkm6perc+jq g==;
X-CSE-ConnectionGUID: IscowrINTWaP6kc/8Q9DCQ==
X-CSE-MsgGUID: DtGK52+oQtODtkUodkVQjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="95801226"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="95801226"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 07:34:28 -0800
X-CSE-ConnectionGUID: g6RoppsQSIms/jLFx64A7A==
X-CSE-MsgGUID: xe6UvlSNTKuTlJaXipDpXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="215832635"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 07:34:26 -0800
Date: Thu, 26 Feb 2026 17:34:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 05/14] include/drm/display/dp: Add field for storing AS
 SDP version
Message-ID: <aaBn_kzDTiO3EnV8@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260223134431.1639308-6-ankit.k.nautiyal@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 05CE41A8CB9
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 07:14:22PM +0530, Ankit Nautiyal wrote:
> Add a new member to store Adaptive Sync SDP version and include it in AS
> SDP logs.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 1 +
>  include/drm/display/drm_dp_helper.h     | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index a697cc227e28..9469943d8194 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -3507,6 +3507,7 @@ void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp
>  {
>  	drm_printf(p, "DP SDP: AS_SDP, revision %u, length %u\n",
>  		   as_sdp->revision, as_sdp->length);
> +	drm_printf(p, "    version: %d\n", as_sdp->version);
>  	drm_printf(p, "    vtotal: %d\n", as_sdp->vtotal);
>  	drm_printf(p, "    target_rr: %d\n", as_sdp->target_rr);
>  	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> index 1d0acd58f486..c71787fc31c1 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -120,6 +120,7 @@ struct drm_dp_as_sdp {
>  	unsigned char sdp_type;
>  	unsigned char revision;
                      ^^^^^^^^

Isn't that already the thing you're trying to add here?

>  	unsigned char length;
> +	int version;
>  	int vtotal;
>  	int target_rr;
>  	int duration_incr_ms;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
