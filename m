Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A82DDC3F5DA
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 11:16:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0881D10EA69;
	Fri,  7 Nov 2025 10:16:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PTgzp4Wq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECEEA10EA60;
 Fri,  7 Nov 2025 10:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762510581; x=1794046581;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=H6UfRJMKeG4Oo8SKwS1TWf/EvxTNIQumbRuOSCTLak4=;
 b=PTgzp4WqFfdaMxrGQgXwviBfd9GJhbLnfMJ1NczhW6IjzRYF4c5zk/ZE
 zsw0paj/pzT7asRA7ptBbWN8Uc9Qo//o6L62Dt84ALL7HsFKRqZa7kIKd
 LxsDHCNNKl+kaWydyPTEqyOdYWkH6lnX0B+jzLDzTN8NhUasPDJBPrE2M
 Z8ChPWtqHCZIVQjj356SajUz4MXAgIqEPmcc/XzX+bYe8+JwBuLXD9nr5
 3t0O49amA2t3ghAvLVZARP3mvZp20u4N0vDL7/JJWsr92hDO4Ckgmxst9
 xzwo86VO+u1ln2WU3TCj6HKGNTS4Ue66NHdoROYLNKYM5mT0dkGmOHlFX g==;
X-CSE-ConnectionGUID: sLjCZI01RpyJ3AagdPYNdg==
X-CSE-MsgGUID: OxTJqnLfQc2j6Nxd1rSZfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="90129538"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="90129538"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 02:16:21 -0800
X-CSE-ConnectionGUID: 7euSyXmKSRacHGGawJU6ZA==
X-CSE-MsgGUID: QOupXzkuRjq963b+kSf+gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="211448477"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.124])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 02:16:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com,
 kunal1.joshi@intel.com
Subject: Re: [PATCH] drm/i915/fbc: Apply wa_15018326506
In-Reply-To: <20251107100734.67236-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251107100734.67236-1-vinod.govindapillai@intel.com>
Date: Fri, 07 Nov 2025 12:16:15 +0200
Message-ID: <fb7031734a4c6b9cc0f26ff287fdf9fb23d07e65@intel.com>
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

On Fri, 07 Nov 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Disable FBC as part for the wa for the bmg variant
>
> Bspec: 74212
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c |  4 ++++
>  drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
>  drivers/gpu/drm/i915/display/intel_fbc.c        | 10 ++++++++++
>  3 files changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index c528aaa679ca..ba2272d85a04 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -10,6 +10,7 @@
>  #include "intel_display_core.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_wa.h"
> +#include "intel_step.h"
>  
>  static void gen11_display_wa_apply(struct intel_display *display)
>  {
> @@ -69,6 +70,9 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  		return DISPLAY_VER(display) == 13;
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
> +	case INTEL_DISPLAY_WA_15018326506:
> +		return DISPLAY_VERx100(display) == 1401 &&
> +		       INTEL_DISPLAY_STEP(display) == STEP_C0;

IS_DISPLAY_VERx100_STEP().

>  	default:
>  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 3644e8e2b724..f648b00cb97d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -26,6 +26,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16025573575,
>  	INTEL_DISPLAY_WA_14011503117,
>  	INTEL_DISPLAY_WA_22014263786,
> +	INTEL_DISPLAY_WA_15018326506,
>  };
>  
>  bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index a1e3083022ee..16cd99db2978 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1521,6 +1521,16 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> +	/*
> +	 * wa_15018326506:
> +	 * Fixes: Underrun during media decode
> +	 * Workaround: Do not enable FBC
> +	 */
> +	if (intel_display_wa(display, 15018326506)) {
> +		plane_state->no_fbc_reason = "Wa_15018326506";
> +		return 0;
> +	}
> +
>  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>  	if (intel_display_vtd_active(display) &&
>  	    (display->platform.skylake || display->platform.broxton)) {

-- 
Jani Nikula, Intel
