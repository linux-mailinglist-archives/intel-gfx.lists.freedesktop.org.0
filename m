Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DaLAqIfC2reDgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 16:18:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA4256E90A
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 16:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E243310E88B;
	Mon, 18 May 2026 14:18:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fyz+9Tc4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12EA910E889;
 Mon, 18 May 2026 14:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779113885; x=1810649885;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oJ4zgKFd8pxw17H9l8r8lD7Mw7hZSQVq852ZTL/I0uY=;
 b=fyz+9Tc4Lf9xDx91oR+ZcMvs8xDQZcPaLODkqxrsflTok+eDj/+zACnB
 sxNaYRy9MuwS5v66XwiE6L1pS58lIFFH4kG40VkfacKxJQkBp1Kt4ivMU
 aWyul6jE/RmyVCmVZaMBXaXhxiwbEeWG8hw9YQvg6FNV27hi+iubcwVWF
 AZeeyMAtaIBMkDAXvdOw/ANc0xNHCSlh+Kr/RU/BYBN7hjDZ/y89G56nA
 zIIt2Iu/7Jgls/yisqgkhBKgt52K9oSl5ocEEAc4DQVHxIlsxYzPa+h6d
 pzWAcvR752goVp4R0Lp7YCBKGRhkwX4WjhLJWbeEp3OYZc2HjltE0ouQL g==;
X-CSE-ConnectionGUID: hwA9YOkTTN+K88xBDxOW3A==
X-CSE-MsgGUID: txkCSn7WToWhyC5pVib7pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="91070124"
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="91070124"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 07:18:04 -0700
X-CSE-ConnectionGUID: hhi7NE2vQ/qmY584TOAvZg==
X-CSE-MsgGUID: 8wuJNg/qTMGwBRUuTH3+HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="238441715"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 07:18:02 -0700
Date: Mon, 18 May 2026 17:17:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 gustavo.sousa@intel.com, jani.nikula@intel.com
Subject: Re: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver
 >= 30
Message-ID: <agsflxLSJ-nmCu7I@intel.com>
References: <20260515155340.1000997-1-suraj.kandpal@intel.com>
 <20260515161056.1007030-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260515161056.1007030-1-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 6AA4256E90A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 15, 2026 at 09:40:56PM +0530, Suraj Kandpal wrote:
> Starting with display version 30, the per-pipe frame timestamp is read
> from the PIPEDMC register block (PIPEDMC_FRMTMSTMP) instead of the
> legacy PIPE_FRMTMSTMP MMIO. Extend PIPE_FRMTMSTMP() to take the display
> and select the appropriate register based on DISPLAY_VER(), and update
> all callers intel_vblank accordingly.
> 
> Bspec: 79482
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
> v1 -> v2:
> - Define registers in correct location (Jani)
> - Use the intel_display_wa() helper to select the correct register (Gustavo)
> - Fix early vblank timeout issue when DMC is not loaded
> 
>  .../gpu/drm/i915/display/intel_display_wa.c    |  2 ++
>  .../gpu/drm/i915/display/intel_display_wa.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h  |  6 ++++++
>  drivers/gpu/drm/i915/display/intel_vblank.c    | 18 ++++++++++++++----
>  4 files changed, 23 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 7d3d63a59882..44c2a503c911 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -110,6 +110,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  		return DISPLAY_VERx100(display) == 3000 ||
>  			DISPLAY_VERx100(display) == 2000 ||
>  			DISPLAY_VERx100(display) == 1401;
> +	case INTEL_DISPLAY_WA_14022946399:
> +		return DISPLAY_VER(display) >= 30;

According to bspec PIPEDMC_FRMTMSTMP shouldn't even exist on PTL.
Did you actually check that the register works?

And I believe the hw register corruption issue being addressed by
w/a 14022946399 (also applies to LNL) should anyway be fixed on the
platforms that have PIPEDMC_FRMTMSTMP so this w/a stuff here makes
no sense.

>  	case INTEL_DISPLAY_WA_14025769978:
>  		return DISPLAY_VER(display) == 35;
>  	case INTEL_DISPLAY_WA_15013987218:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 15fec843f15e..884463a894c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -42,6 +42,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_14014143976,
>  	INTEL_DISPLAY_WA_14016740474,
>  	INTEL_DISPLAY_WA_14020863754,
> +	INTEL_DISPLAY_WA_14022946399,
>  	INTEL_DISPLAY_WA_14025769978,
>  	INTEL_DISPLAY_WA_15013987218,
>  	INTEL_DISPLAY_WA_15018326506,
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 38e342b45af0..985642a79a52 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -644,4 +644,10 @@ enum pipedmc_event_id {
>  #define _PIPEDMC_DCB_BALANCE_RESET_B		0x986a8
>  #define PIPEDMC_DCB_BALANCE_RESET(pipe)		_MMIO_PIPE(pipe, _PIPEDMC_DCB_BALANCE_RESET_A,\
>  							   _PIPEDMC_DCB_BALANCE_RESET_B)
> +
> +#define _PIPEDMC_FRMTMSTMP_A			0x5f0ac
> +#define _PIPEDMC_FRMTMSTMP_B			0x5f4ac
> +#define PIPEDMC_FRMTMSTMP(pipe)			\
> +	_MMIO_PIPE(pipe, _PIPEDMC_FRMTMSTMP_A, _PIPEDMC_FRMTMSTMP_B)
> +
>  #endif /* __INTEL_DMC_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 28d81199792e..145c342f445f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -15,6 +15,8 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
> +#include "intel_dmc_regs.h"
>  #include "intel_vblank.h"
>  #include "intel_vrr.h"
>  
> @@ -156,8 +158,12 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
>  		 * pipe frame time stamp. The time stamp value
>  		 * is sampled at every start of vertical blank.
>  		 */
> -		scan_prev_time = intel_de_read_fw(display,
> -						  PIPE_FRMTMSTMP(crtc->pipe));
> +		if (intel_display_wa(display, INTEL_DISPLAY_WA_14022946399))
> +			scan_prev_time = intel_de_read_fw(display,
> +							  PIPEDMC_FRMTMSTMP(crtc->pipe));
> +		else
> +			scan_prev_time = intel_de_read_fw(display,
> +							  PIPE_FRMTMSTMP(crtc->pipe));
>  
>  		/*
>  		 * The TIMESTAMP_CTR register has the current
> @@ -165,8 +171,12 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
>  		 */
>  		scan_curr_time = intel_de_read_fw(display, IVB_TIMESTAMP_CTR);
>  
> -		scan_post_time = intel_de_read_fw(display,
> -						  PIPE_FRMTMSTMP(crtc->pipe));
> +		if (intel_display_wa(display, INTEL_DISPLAY_WA_14022946399))
> +			scan_post_time = intel_de_read_fw(display,
> +							  PIPEDMC_FRMTMSTMP(crtc->pipe));
> +		else
> +			scan_post_time = intel_de_read_fw(display,
> +							  PIPE_FRMTMSTMP(crtc->pipe));
>  	} while (scan_post_time != scan_prev_time);
>  
>  	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
