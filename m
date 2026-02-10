Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SC60EXsCi2npPAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 11:03:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C907119549
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 11:03:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 212F410E536;
	Tue, 10 Feb 2026 10:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bRTekHu8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37CA910E536
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 10:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770717816; x=1802253816;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=C5sQnzwh9oJ4YSn10nBBGhR2aWF08XDU0KFaeQ3yYBs=;
 b=bRTekHu8ZCZPRFzq6QZhw7hMlns6eX/sm1IQ2MUjT2Elva6umDznfjug
 TbaKvLsKAmeidsKIBR5unKc4ZSOAkCvtsDdXycEzfCmg/qPmK+Fwb5svm
 XlVrA2OIwiUrEJfdo5Old1CJlV9t1NyFOBr4QX85eqVgXnXmUWifQrBep
 TAiIGzB/dfyyg9pW4yPXBiCUA+g1OXE36o+pF1Hk0TgyTky7dc3hu6SNF
 rGHgRe9jGTYbpUOf1S7hS60ENZgyPlSMDp3w0mZSUvyAg1QbP/0yl8yk5
 tsoVIObuFo0Xj++wTaCt0yIReL5JMAqNIarb8gOqQQuplDfRTMM7356jM Q==;
X-CSE-ConnectionGUID: LWTsAqp/RQWLdUkECfcNWg==
X-CSE-MsgGUID: Ww4w54fmTFiLZTOPLSUL8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="71911779"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71911779"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 02:03:36 -0800
X-CSE-ConnectionGUID: Is8WX3moQo2VgyACGca/1Q==
X-CSE-MsgGUID: 0VrDC+e3RR2ZS26lr4Z+hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216388423"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 02:03:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Austin Hu <austin.hu@intel.com>, intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com
Subject: Re: [PATCH 1/3] drm/i915/color: Add 3D LUT to color pipeline since
 Lunar Lake.
In-Reply-To: <20260209213422.2640277-1-austin.hu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260209213422.2640277-1-austin.hu@intel.com>
Date: Tue, 10 Feb 2026 12:03:31 +0200
Message-ID: <028fc38db18ebc6cefa67d9ae9d45182f24de432@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8C907119549
X-Rspamd-Action: no action

On Mon, 09 Feb 2026, Austin Hu <austin.hu@intel.com> wrote:
> Verified on PTL, where IGT case kms_color_pipeline passes for PipeA
> and PipeB.

I replied to an earlier version of the series, the comments seem to be
valid for this one too.

Please indicate patch versions when sending new versions, and what
changed.

BR,
Jani.

>
> Signed-off-by: Austin Hu <austin.hu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color_pipeline.c | 5 ++---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_display_regs.h   | 1 +
>  4 files changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> index 04af552b3..d26b0f134 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> +++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> @@ -47,9 +47,8 @@ int _intel_color_pipeline_plane_init(struct drm_plane *plane, struct drm_prop_en
>  	drm_colorop_set_next_property(prev_op, &colorop->base);
>  	prev_op = &colorop->base;
>  
> -	if (DISPLAY_VER(display) >= 35 &&
> -	    intel_color_crtc_has_3dlut(display, pipe) &&
> -	    plane->type == DRM_PLANE_TYPE_PRIMARY) {
> +	if ((DISPLAY_VER(display) >= 15) && HAS_3D_LUT(display) &&
> +			intel_color_crtc_has_3dlut(display, pipe)) {
>  		colorop = intel_colorop_create(INTEL_PLANE_CB_3DLUT);
>  
>  		ret = drm_plane_colorop_3dlut_init(dev, &colorop->base, plane, 17,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 471f236c9..423f99a75 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1908,6 +1908,12 @@ static void __intel_display_device_info_runtime_init(struct intel_display *displ
>  				if (display_runtime->num_scalers[pipe])
>  					display_runtime->num_scalers[pipe] = 1;
>  		}
> +
> +		if (REG_FIELD_GET(XE2LPD_DE_CAP_3DLUT_MASK, cap) ==
> +		    XE2LPD_DE_CAP_3DLUT_REMOVED)
> +			display_runtime->has_3d_lut = false;
> +		else
> +			display_runtime->has_3d_lut = true;
>  	}
>  
>  	if (DISPLAY_VER(display) >= 30)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index e84c190dc..f91ccca6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -173,6 +173,7 @@ struct intel_display_platforms {
>  #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
>  #define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(__display) == 1401 && HAS_DSC(__display))
>  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
> +#define HAS_3D_LUT(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_3d_lut)
>  #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
>  #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
>  #define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >= 35 && !(__display)->platform.dgfx)
> @@ -302,6 +303,7 @@ struct intel_display_runtime_info {
>  	bool has_hdcp;
>  	bool has_dmc;
>  	bool has_dsc;
> +	bool has_3d_lut;
>  	bool edp_typec_support;
>  	bool has_dbuf_overlap_detection;
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9740f32ce..75fc7748a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1554,6 +1554,7 @@
>  
>  #define XE2LPD_DE_CAP			_MMIO(0x41100)
>  #define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
> +#define   XE2LPD_DE_CAP_3DLUT_REMOVED	1
>  #define   XE2LPD_DE_CAP_DSC_MASK	REG_GENMASK(29, 28)
>  #define   XE2LPD_DE_CAP_DSC_REMOVED	1
>  #define   XE2LPD_DE_CAP_SCALER_MASK	REG_GENMASK(27, 26)

-- 
Jani Nikula, Intel
