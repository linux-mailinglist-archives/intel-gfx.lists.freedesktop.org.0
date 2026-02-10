Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDAxC0IDi2kMPQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 11:06:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 903FE119665
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 11:06:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F9410E538;
	Tue, 10 Feb 2026 10:06:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Slszz1Iq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173E810E538
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 10:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770718015; x=1802254015;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ftNOwNkkOmLQ26Fq4DmyFdUOSUS5HNGjGmbXhx14xBE=;
 b=Slszz1IqIJjZFrcU5nBc+hrGhuvR+zBGCXODKpD09oYC+D8NOP5cIKrH
 lyN75lMbR18f1njJcsfaKp7GINev5DFs5Wfb1aQSkrPuhoFyz7VjHu9fi
 0sqHqLtM6Luaftd6WcoFtoasXLk9rH71gRN7/2hBHSz9iUbvLM2nCDJPX
 p+YatqOMEiAmPbjDHOSivyumO3+aqkcdnFUtLg+hcCgwr3my5XZgnYr8J
 38Jx8chc1zbHvB7HISvQbQJeiqdpFl9bvN5vU5GJG7/9KTxnM8cX7D+yN
 vZGXDk9NiwZu9Pwuf/4dQ0fFa8jyLtanAhIpCM1iHYGbllRr3A/5FGnVy Q==;
X-CSE-ConnectionGUID: kvrqqd6MTtiM6y+2fyY4Cg==
X-CSE-MsgGUID: LAVz+RgjT6GCiP3aakBbQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="70856812"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="70856812"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 02:06:04 -0800
X-CSE-ConnectionGUID: uyCZ8QUhQDqQ/8jzB7yBPQ==
X-CSE-MsgGUID: VJmRC/aXSciUTsALA7zIhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211913552"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 02:06:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Austin Hu <austin.hu@intel.com>, intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com
Subject: Re: [PATCH 3/3] drm/i915/color: Adjust DE version checking for 3D LUT.
In-Reply-To: <20260209213422.2640277-3-austin.hu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260209213422.2640277-1-austin.hu@intel.com>
 <20260209213422.2640277-3-austin.hu@intel.com>
Date: Tue, 10 Feb 2026 12:05:59 +0200
Message-ID: <85aa5857896ded36df2d744fff07fcc504dd2d83@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:austin.hu@intel.com,m:chaitanya.kumar.borah@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 903FE119665
X-Rspamd-Action: no action

On Mon, 09 Feb 2026, Austin Hu <austin.hu@intel.com> wrote:
> To distinguish the valid 3D LUT settings for Intel platforms with
> different Display Engine IPs.

Details, please.

> Signed-off-by: Austin Hu <austin.hu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c    | 38 +++++++++++--------
>  .../drm/i915/display/intel_color_pipeline.c   |  6 +--
>  2 files changed, 25 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index dff33c9c1..1e89dc006 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -4106,22 +4106,28 @@ static void glk_lut_3d_commit(struct intel_dsb *dsb,
>  	}
>  
>  	if (enable) {
> -		val = LUT_3D_ENABLE | LUT_3D_READY;
> -
> -		switch (plane->id) {
> -		case PLANE_1:
> -			val |= LUT_3D_BIND_PLANE_1;
> -			break;
> -		case PLANE_2:
> -			val |= LUT_3D_BIND_PLANE_2;
> -			break;
> -		case PLANE_3:
> -			val |= LUT_3D_BIND_PLANE_3;
> -			break;
> -		default:
> -			/* Attached the 3D LUT block to Pipe. */
> -			val |= LUT_3D_BIND_PIPE;
> -			break;
> +		val = LUT_3D_ENABLE;
> +
> +		if (DISPLAY_VER(display) >= 30) {
> +			val |= LUT_3D_READY;
> +
> +			if (DISPLAY_VER(display) >= 35) {
> +				switch (plane->id) {
> +				case PLANE_1:
> +					val |= LUT_3D_BIND_PLANE_1;
> +					break;
> +				case PLANE_2:
> +					val |= LUT_3D_BIND_PLANE_2;
> +					break;
> +				case PLANE_3:
> +					val |= LUT_3D_BIND_PLANE_3;
> +					break;
> +				default:
> +					/* Attached the 3D LUT block to Pipe. */
> +					val |= LUT_3D_BIND_PIPE;
> +					break;
> +				}
> +			}

You just added this in a previous patch, don't change it again. Get it
right the first time you add it, incrementally.

>  		}
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> index d26b0f134..e1bf7990c 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> +++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> @@ -12,6 +12,7 @@
>  #define MAX_COLOR_PIPELINES 1
>  #define PLANE_DEGAMMA_SIZE 128
>  #define PLANE_GAMMA_SIZE 32
> +#define DIM_SIZE_3D_LUT 17

Unrelated change.

>  
>  static
>  int _intel_color_pipeline_plane_init(struct drm_plane *plane, struct drm_prop_enum_list *list,
> @@ -47,11 +48,10 @@ int _intel_color_pipeline_plane_init(struct drm_plane *plane, struct drm_prop_en
>  	drm_colorop_set_next_property(prev_op, &colorop->base);
>  	prev_op = &colorop->base;
>  
> -	if ((DISPLAY_VER(display) >= 15) && HAS_3D_LUT(display) &&
> -			intel_color_crtc_has_3dlut(display, pipe)) {
> +	if (HAS_3D_LUT(display) && intel_color_crtc_has_3dlut(display, pipe)) {
>  		colorop = intel_colorop_create(INTEL_PLANE_CB_3DLUT);
>  
> -		ret = drm_plane_colorop_3dlut_init(dev, &colorop->base, plane, 17,
> +		ret = drm_plane_colorop_3dlut_init(dev, &colorop->base, plane, DIM_SIZE_3D_LUT,
>  						   DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL,
>  						   true);
>  		if (ret)

-- 
Jani Nikula, Intel
