Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A711AF62CA
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 21:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 890BF10E33F;
	Wed,  2 Jul 2025 19:40:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X87gHWYS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E2010E33F;
 Wed,  2 Jul 2025 19:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751485237; x=1783021237;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/b6Q3XHmYCWdwTuNMrmZMv27f/8Nwdt6Y/pl4qWA7V4=;
 b=X87gHWYS65YqYdFard3fey9BtjaFBLAALwzF0okvvwtXBvxgPQUHCAz2
 rE4D7tbjZjmJvfOCah3dg+jI4dyAq3aeoWcJ0Uafw1NsgnYQodslBz8Xl
 51yoB35zgvYGp2aimuQcQh2/+RMiB1IWgzhbVxT1iXC4mD6hhYO80SQog
 2v/dd3zklWLnS6ZrWW36NaJx/RW2/4mQjeLvmWnLBEBhlElwMR2mRodMu
 6TRK+oJHQcvHWXHFwVJdNWqHE8+GqNiaYteaTRU0EmKELVx+prJLKbxAR
 J23FYgzf+e4Mk0W+s/INYZjkLO2ZEnlJWxOODnm04b5teC9jSCDS44V3s w==;
X-CSE-ConnectionGUID: M9lIy/KqSa62sj41C8i1Dw==
X-CSE-MsgGUID: wkQBcKYTQB6vck7b6y2ptg==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="57472571"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="57472571"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 12:40:37 -0700
X-CSE-ConnectionGUID: B07tIWP5REukFJF4YITPwQ==
X-CSE-MsgGUID: AOZog8T/TBOG2b34SZUf4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="159856904"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.30])
 by orviesa005.jf.intel.com with SMTP; 02 Jul 2025 12:40:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Jul 2025 22:40:34 +0300
Date: Wed, 2 Jul 2025 22:40:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, gustavo.sousa@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
Message-ID: <aGWLMinfzWd9IkFJ@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Jul 02, 2025 at 02:16:18PM +0530, Ankit Nautiyal wrote:
> Introduce a generic helper to check display workarounds using an enum.
> 
> Convert Wa_16023588340 to use the new interface, simplifying WA checks
> and making future additions easier.
> 
> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
> macro. (Jani)
> 
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>  3 files changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index f57280e9d041..f5e8d58d9a68 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -3,6 +3,8 @@
>   * Copyright © 2023 Intel Corporation
>   */
>  
> +#include "drm/drm_print.h"
> +
>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_core.h"
> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *display)
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
> +		drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
> +		break;
> +	}
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index babd9d16603d..146ee70d66f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
>  bool intel_display_needs_wa_16023588340(struct intel_display *display);
>  #endif
>  
> +enum intel_display_wa {
> +	INTEL_DISPLAY_WA_16023588340,

How is anyone supposed to keep track of these random numbers
and what they mean?

The only time I want to see these numbers is if I really have to
open the spec/hsd for it to double check some details. Othwerwise
it just seems like pointless noise that makes it harder to follow
the code/figure out what the heck is going on.

> +};
> +
> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);
> +
> +#define intel_display_wa(__display, __wa) \
> +	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa)
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 6e26cb4c5724..e2e03af520b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1464,7 +1464,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> -	if (intel_display_needs_wa_16023588340(display)) {
> +	if (intel_display_wa(display, 16023588340)) {
>  		plane_state->no_fbc_reason = "Wa_16023588340";

This here for instance is completely useless. I have no idea what that
w/a is about or why it requires FBC to be disabled. And if I jump into
intel_display_needs_wa_16023588340() I am none the wiser.

>  		return 0;
>  	}
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
