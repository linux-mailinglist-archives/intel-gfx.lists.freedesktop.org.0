Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D66E9AED572
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 09:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B261F10E206;
	Mon, 30 Jun 2025 07:23:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SzJCgFQm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64EF110E206;
 Mon, 30 Jun 2025 07:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751268198; x=1782804198;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=g6IAyAwi7sUMKoFt1jxmRrS6IoOUVjJfnaTX1t2hwqg=;
 b=SzJCgFQmBVgTDZIuDDIg0uiSdOW9XrX5hjaF0k6mUsUbw13QHMn+Fff4
 sSfdDGyFX5U4BQXtzDmA13tqgc9z/US4HT7SDEN3FdkSD3u1bQvucxZcJ
 cexAf+YdhmRS2zSSLrHFuZS5xVVLeqGLRaUWfMD/iQpL5a2hH6DbnFFIH
 lTu4if5fWVO1kZFnZgqiSjtQ1Xw/DTnOMscYpSQAK9+D+6Wu5HDctUkaW
 gQSpIy9IikiqsV+YNIl+dXsl0wYIF58WSyflvEL60Z0UGNQSQff9Kkj6h
 VNZSZKu45xuQXRfafgZksDusaT4DUBbgRknssuMU/V4/Sh0mHBR/Tck+w w==;
X-CSE-ConnectionGUID: d3Kqf+c9QviB87eQx3uYkg==
X-CSE-MsgGUID: lU87EtIrSdSY1bFZYPjQAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11479"; a="57288657"
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="57288657"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 00:23:17 -0700
X-CSE-ConnectionGUID: wqDRNxJjQ56+25eHhefPhQ==
X-CSE-MsgGUID: VqsMLumFRjy71+CEqEpfCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="184402063"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.189])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 00:23:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, gustavo.sousa@intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
In-Reply-To: <20250630054918.2823537-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250630054918.2823537-1-ankit.k.nautiyal@intel.com>
 <20250630054918.2823537-2-ankit.k.nautiyal@intel.com>
Date: Mon, 30 Jun 2025 10:23:11 +0300
Message-ID: <80a481128d5f979c59c4c5c6856452969d014474@intel.com>
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

On Mon, 30 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Introduce a generic helper to check display workarounds using an enum.
>
> Convert Wa_16023588340 to use the new interface, simplifying WA checks
> and making future additions easier.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>  3 files changed, 23 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index f57280e9d041..70ba66fc7e26 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -39,3 +39,16 @@ void intel_display_wa_apply(struct intel_display *display)
>  	else if (DISPLAY_VER(display) == 11)
>  		gen11_display_wa_apply(display);
>  }
> +
> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
> +{
> +	switch (wa) {
> +	case INTEL_DISPLAY_WA_16023588340:
> +		return intel_display_needs_wa_16023588340(display);
> +	default:
> +		MISSING_CASE(wa);

MISSING_CASE() is a bit of a problem for i915 and display
separation. Please let's not add more. Use drm_WARN() or something.

> +		break;
> +	}
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index babd9d16603d..853939ebf1ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -7,6 +7,7 @@
>  #define __INTEL_DISPLAY_WA_H__
>  
>  #include <linux/types.h>
> +#include <i915_utils.h>

Please don't put that in the header. And shouldn't be needed anyway if
you drop the MISSING_CASE().

>  
>  struct intel_display;
>  
> @@ -21,4 +22,12 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
>  bool intel_display_needs_wa_16023588340(struct intel_display *display);
>  #endif
>  
> +enum intel_display_wa {
> +	INTEL_DISPLAY_WA_16023588340,
> +};
> +
> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);
> +
> +#define _intel_display_wa_expand(__wa) INTEL_DISPLAY_WA_##__wa

Can't we just do this inline instead of adding another macro?

> +#define intel_display_wa(__display, __wa) __intel_display_wa((__display), _intel_display_wa_expand(__wa))
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index ec1ef8694c35..f4b7ff549fd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1464,7 +1464,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> -	if (intel_display_needs_wa_16023588340(display)) {
> +	if (intel_display_wa(display, 16023588340)) {
>  		plane_state->no_fbc_reason = "Wa_16023588340";
>  		return 0;
>  	}

-- 
Jani Nikula, Intel
