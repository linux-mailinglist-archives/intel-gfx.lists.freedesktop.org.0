Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38427B14CC1
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 13:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554C210E1EA;
	Tue, 29 Jul 2025 11:10:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OeFzT0sz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F89810E061;
 Tue, 29 Jul 2025 11:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753787439; x=1785323439;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0PTL29KARTY7t5rtUpFvmcmY8ETOAX2WRpp/BRWEj2k=;
 b=OeFzT0szLmsTusA6JWndEDIuTdvP+/MWJS0TM3NkGmwGpP5YwodFVFmt
 RtNqrwXe1wvWwRO7unJErm9sT0Q49NiR3DZ0LSvH2eaLdWXHtvAHueeAD
 3nuJZHFUupC8hvobHR9SnqLm0citf3703lLQI8ZuzjLkcd0Nff/TRRxFv
 Kycxa3fpkEW2dosjfs44fEgRvN2gtP85fqUMVIbbtqwWqDIqNOrEkZCJp
 G1vBzn4dJo7UwflIgMpSJyEu+Pv3scXdoWTJ2ELsD0OKR4/8j+fzZXzrr
 gk/TBNHmyTvhgrU2L1ucmS/CQkqCaMkUHgowK5Fq993z/AOzIA0pLaVej A==;
X-CSE-ConnectionGUID: Jjvakqj+RFu0QRjbEmbMFg==
X-CSE-MsgGUID: 44OkMWqJT3O/qws2oT3rTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="67406919"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="67406919"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 04:10:39 -0700
X-CSE-ConnectionGUID: 1KBj7uUtSSiyo/X74w1MIQ==
X-CSE-MsgGUID: uvU2pwHoQhqITLlNt25YDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="199817436"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 04:10:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, ville.syrjala@linux.intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 6/9] drm/i915/display_wa: Add support for Wa_14021768792
In-Reply-To: <20250721091529.3864004-7-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
 <20250721091529.3864004-7-ankit.k.nautiyal@intel.com>
Date: Tue, 29 Jul 2025 14:10:33 +0300
Message-ID: <fce4d22ba4d2aaa2a79a2826185d28538f469a63@intel.com>
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

On Mon, 21 Jul 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Some BMG ultrajoiner configurations require support for Link M/N ratios
> between 10.0 and 15.0. This range is not natively supported and requires
> a workaround.
>
> Wa_14021768792 enables this support by utilizing HDMI_EMP_DATA,
> CHICKEN_BITs, and extended bits in the LINK_N registers.
>
> Add the necessary logic to enable the workaround on applicable platforms.
>
> Bspec: 49266
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_wa.c    | 18 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_wa.h    |  1 +
>  2 files changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 399c08902413..541967168e97 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -5,11 +5,13 @@
>  
>  #include <drm/drm_print.h>
>  
> +#include "i915_drv.h"

Please do not add new includes of i915_drv.h in display/.

>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_core.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_wa.h"
> +#include "intel_step.h"
>  
>  static void gen11_display_wa_apply(struct intel_display *display)
>  {
> @@ -52,6 +54,20 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
>  	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
>  }
>  
> +/*
> + * Wa_14021768792:
> + * Fixes: Limitation of Link M/N ratio > 10 for specific Xe2HPD platforms.
> + * Workaround: Use HDMI_EMP_DATA, CHICKEN_BITs and extended bits in LINK_N registers to support
> + * LINK M/N ratios from > 10 but < 15.
> + */
> +static bool intel_display_needs_wa_14021768792(struct intel_display *display)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);

Please do not add new uses of struct drm_i915_private under display/.

> +
> +	return (DISPLAY_VER(display) == 14 && IS_DGFX(i915) &&

s/IS_DGFX(i915)/display->platform.dgfx/

> +		IS_DISPLAY_STEP(display, STEP_C0, STEP_FOREVER));
> +}
> +
>  bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
>  {
>  	switch (wa) {
> @@ -59,6 +75,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  		return intel_display_needs_wa_16023588340(display);
>  	case INTEL_DISPLAY_WA_16025573575:
>  		return intel_display_needs_wa_16025573575(display);
> +	case INTEL_DISPLAY_WA_14021768792:
> +		return intel_display_needs_wa_14021768792(display);
>  	default:
>  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index aedea4cfa3ce..8470f4ceea1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -24,6 +24,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
>  enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
> +	INTEL_DISPLAY_WA_14021768792,
>  };
>  
>  bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);

-- 
Jani Nikula, Intel
