Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMl1DRiyjmmPDwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 06:09:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95218132F05
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 06:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2814610E796;
	Fri, 13 Feb 2026 05:09:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PmnF0fR0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6614510E793;
 Fri, 13 Feb 2026 05:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770959379; x=1802495379;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TSQ8YD4lbPS2vMfolP/2ibPdtmsMUcucqsozAIh7C54=;
 b=PmnF0fR0Mbb+SC90FbMDEx0OEyhbLLABkhPMuGy2CHYDiB7O8S/as8Sv
 +kIXLUJNCVHcynYI+DxbpBVNflHi8s9WVQjgAfPiclOqolbA6O3fVYNnS
 zrvBIb8RvVKFFzcWGGCSPEKMHaMZu/RhWCYGi9O8NefaEhSi+LdO4l7F2
 /e9ZzXGmnTf24JBtGza1wjh5LT6knw7NEJhdasvOyy50hKbsJGizETOVD
 RJuyV44Cl/8pO/qm1Uv0ou0BKXDh9ci9sza9BejBmWhcO6ce/oODO8dl+
 Fz8GJ8zfGZY7Db44xKxSBcm2Kd1rbAlO58hk+UE74/NYKoPX5XvDTzmCV g==;
X-CSE-ConnectionGUID: y3X9Ki8FQTeazQiK9KjHoQ==
X-CSE-MsgGUID: ME0K/8dcQaudKyBr3WIEYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="75767921"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="75767921"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 21:09:39 -0800
X-CSE-ConnectionGUID: KQfsVkhWTdCGdPz3tqTuTg==
X-CSE-MsgGUID: zifoML88RRuIHPIPVN0kkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="217296794"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.239])
 by fmviesa005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 21:09:37 -0800
Date: Fri, 13 Feb 2026 07:09:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 13/15] drm/i915/display: convert W/As in intel_psr.c
 to new framework
Message-ID: <aY6yD6b2MJT4YQYM@intel.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-14-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260212184737.352515-14-luciano.coelho@intel.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 95218132F05
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 08:46:11PM +0200, Luca Coelho wrote:
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the
> workarounds all over, concentrate the checks in intel_wa.c.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_wa.c   | 15 ++++++++++++--
>  .../gpu/drm/i915/display/intel_display_wa.h   |  4 ++++
>  drivers/gpu/drm/i915/display/intel_psr.c      | 20 ++++++++-----------
>  3 files changed, 25 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 77ea2e5b8144..783e1383ff89 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -112,6 +112,13 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  		return DISPLAY_VER(display) == 20;
>  	case INTEL_DISPLAY_WA_15018326506:
>  		return display->platform.battlemage;
> +	case INTEL_DISPLAY_WA_16011303918:
> +	case INTEL_DISPLAY_WA_22011320316:
> +		return display->platform.alderlake_p &&
> +			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
> +	case INTEL_DISPLAY_WA_16011181250:
> +		return display->platform.rocketlake || display->platform.alderlake_s ||
> +			display->platform.dg2;
>  	case INTEL_DISPLAY_WA_16011342517:
>  		return display->platform.alderlake_p &&
>  			IS_DISPLAY_STEP(display, STEP_A0, STEP_D0);
> @@ -121,15 +128,19 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  		return intel_display_needs_wa_16023588340(display);
>  	case INTEL_DISPLAY_WA_16025573575:
>  		return intel_display_needs_wa_16025573575(display);
> +	case INTEL_DISPLAY_WA_16025596647:
> +		return DISPLAY_VER(display) != 20 &&
> +			!IS_DISPLAY_VERx100_STEP(display, 3000,
> +						 STEP_A0, STEP_B0);

This one is nuts. It declarates (incorrectly) which platforms don't
need the w/a. I don't think this sort of thing should be allowed here
ever.

Presumably the only reason it was OK in the old place is because 
those codepaths were only executed on some new platforms. But
__intel_display_wa() is so generic that is is clearly meant to
give correct answers regardless of where it gets called.

>  	case INTEL_DISPLAY_WA_18034343758:
>  		return DISPLAY_VER(display) == 20 ||
>  			(display->platform.pantherlake &&
>  			 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0));
>  	case INTEL_DISPLAY_WA_22010178259:
>  		return DISPLAY_VER(display) == 12;
> -	case INTEL_DISPLAY_WA_22011320316:
> +	case INTEL_DISPLAY_WA_22012278275:
>  		return display->platform.alderlake_p &&
> -			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
> +			IS_DISPLAY_STEP(display, STEP_A0, STEP_E0);
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
>  	case INTEL_DISPLAY_WA_22021048059:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 3d2cf05ffacc..35d8df4c75a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -44,13 +44,17 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_14025769978,
>  	INTEL_DISPLAY_WA_15013987218,
>  	INTEL_DISPLAY_WA_15018326506,
> +	INTEL_DISPLAY_WA_16011181250,
> +	INTEL_DISPLAY_WA_16011303918,
>  	INTEL_DISPLAY_WA_16011342517,
>  	INTEL_DISPLAY_WA_16011863758,
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
> +	INTEL_DISPLAY_WA_16025596647,
>  	INTEL_DISPLAY_WA_18034343758,
>  	INTEL_DISPLAY_WA_22010178259,
>  	INTEL_DISPLAY_WA_22011320316,
> +	INTEL_DISPLAY_WA_22012278275,
>  	INTEL_DISPLAY_WA_22012358565,
>  	INTEL_DISPLAY_WA_22014263786,
>  	INTEL_DISPLAY_WA_22021048059,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5bea2eda744b..b21e52f0c461 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -40,6 +40,7 @@
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> @@ -1082,7 +1083,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	}
>  
>  	/* Wa_22012278275:adl-p */
> -	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_E0)) {
> +	if (intel_display_wa(display, 22012278275)) {
>  		static const u8 map[] = {
>  			2, /* 5 lines */
>  			1, /* 6 lines */
> @@ -1263,7 +1264,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>  		return;
>  
>  	/* Wa_16011303918:adl-p */
> -	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
> +	if (intel_display_wa(display, 16011303918))
>  		return;
>  
>  	/*
> @@ -1540,8 +1541,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  	}
>  
>  	/* Wa_16011181250 */
> -	if (display->platform.rocketlake || display->platform.alderlake_s ||
> -	    display->platform.dg2) {
> +	if (intel_display_wa(display, 16011181250)) {
>  		drm_dbg_kms(display->drm,
>  			    "PSR2 is defeatured for this platform\n");
>  		return false;
> @@ -1823,8 +1823,7 @@ void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
>  	u8 active_pipes = 0;
>  
>  	/* Wa_16025596647 */
> -	if (DISPLAY_VER(display) != 20 &&
> -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> +	if (intel_display_wa(display, 16025596647))
>  		return;
>  
>  	/* Not needed by Panel Replay  */
> @@ -3973,8 +3972,7 @@ static void psr_dc5_dc6_wa_work(struct work_struct *work)
>   */
>  void intel_psr_notify_dc5_dc6(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(display) != 20 &&
> -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> +	if (intel_display_wa(display, 16025596647))
>  		return;
>  
>  	schedule_work(&display->psr_dc5_dc6_wa_work);
> @@ -3989,8 +3987,7 @@ void intel_psr_notify_dc5_dc6(struct intel_display *display)
>   */
>  void intel_psr_dc5_dc6_wa_init(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(display) != 20 &&
> -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> +	if (intel_display_wa(display, 16025596647))
>  		return;
>  
>  	INIT_WORK(&display->psr_dc5_dc6_wa_work, psr_dc5_dc6_wa_work);
> @@ -4011,8 +4008,7 @@ void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_encoder *encoder;
>  
> -	if (DISPLAY_VER(display) != 20 &&
> -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> +	if (intel_display_wa(display, 16025596647))
>  		return;
>  
>  	for_each_intel_encoder_with_psr(display->drm, encoder) {
> -- 
> 2.51.0

-- 
Ville Syrjälä
Intel
