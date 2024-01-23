Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C79838ECD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 13:50:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0404B10E78C;
	Tue, 23 Jan 2024 12:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F3010E78C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 12:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706014235; x=1737550235;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JjknoEXtP+FqPcTREVMtHx9cFoSBwPhKXZxD+Qx+7qo=;
 b=VvQbHLzObsP0gsZ9UlBr/YQQaCpVD/uTULEVuCZKIU1Y2MoTLFBB2GkT
 7xz/lqQCuwSO9xiWIQ4/cG4ngiJs6LYRVVhwyhgJwKUl8wMZqE2w25/4p
 zQKc+9pER2q820L4iKVgOmtz/3ptHhL7i55XDE7ZO/PtGmNjXwElRSXRU
 Z2FQmKZI+CWcYYVE05i1hGO2ZzTgM7L9HK3H3pppWwpPptxJIJyt4zRER
 cnlcnNm3UMqRU7hljrN+4cgTWb/KByYEau7mT0HpZTDQdzPQoTKoyo/im
 qDQqisfsBwqC6fmXRASjYRENnT+/51iMey9UkcDqKscaif6PWLPzogdz1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="398661311"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="398661311"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 04:50:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="820083221"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="820083221"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 04:50:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jan 2024 14:50:24 +0200
Date: Tue, 23 Jan 2024 14:50:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
Message-ID: <Za-2EFbpUcaLZkbb@intel.com>
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 02, 2024 at 08:24:22PM +0200, Juha-Pekka Heikkila wrote:
> Aux ccs framebuffers don't work on Xe driver hence disable them
> from plane capabilities until they are fixed. Flat ccs framebuffers
> work and they are left enabled. Here is separated plane capabilities
> check on i915 so it can behave differencly depending on the driver.
> 
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/display/intel_plane_caps.c   | 68 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_plane_caps.h   | 14 ++++
>  .../drm/i915/display/skl_universal_plane.c    | 61 +----------------
>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 23 +++++++
>  5 files changed, 107 insertions(+), 60 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index e777686190ca..c5e3c2dd0a01 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -302,6 +302,7 @@ i915-y += \
>  	display/intel_overlay.o \
>  	display/intel_pch_display.o \
>  	display/intel_pch_refclk.o \
> +	display/intel_plane_caps.o \
>  	display/intel_plane_initial.o \
>  	display/intel_pmdemand.o \
>  	display/intel_psr.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.c b/drivers/gpu/drm/i915/display/intel_plane_caps.c
> new file mode 100644
> index 000000000000..6206ae11f296
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.c
> @@ -0,0 +1,68 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#include "i915_drv.h"
> +#include "intel_fb.h"
> +#include "intel_plane_caps.h"
> +
> +static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> +				 enum pipe pipe, enum plane_id plane_id)
> +{
> +	/* Wa_22011186057 */
> +	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> +		return false;
> +
> +	if (DISPLAY_VER(i915) >= 11)
> +		return true;
> +
> +	if (IS_GEMINILAKE(i915))
> +		return pipe != PIPE_C;
> +
> +	return pipe != PIPE_C &&
> +		(plane_id == PLANE_PRIMARY ||
> +		 plane_id == PLANE_SPRITE0);
> +}

These are about the *hardware* capabilities of the skl+
univeral planes. Thus IMO they belong in
skl_universal_plane.c and nowhere else.

> +
> +static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> +				   enum plane_id plane_id)
> +{
> +	if (DISPLAY_VER(i915) < 12)
> +		return false;
> +
> +	/* Wa_14010477008 */
> +	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> +	    (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
> +		return false;
> +
> +	/* Wa_22011186057 */
> +	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> +		return false;
> +
> +	return plane_id < PLANE_SPRITE4;
> +}
> +
> +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> +		      enum pipe pipe, enum plane_id plane_id)
> +{
> +	u8 caps = INTEL_PLANE_CAP_TILING_X;
> +
> +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> +		caps |= INTEL_PLANE_CAP_TILING_Y;
> +	if (DISPLAY_VER(i915) < 12)
> +		caps |= INTEL_PLANE_CAP_TILING_Yf;
> +	if (HAS_4TILE(i915))
> +		caps |= INTEL_PLANE_CAP_TILING_4;
> +
> +	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> +		caps |= INTEL_PLANE_CAP_CCS_RC;
> +		if (DISPLAY_VER(i915) >= 12)
> +			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
> +	}
> +
> +	if (gen12_plane_has_mc_ccs(i915, plane_id))
> +		caps |= INTEL_PLANE_CAP_CCS_MC;
> +
> +	return caps;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.h b/drivers/gpu/drm/i915/display/intel_plane_caps.h
> new file mode 100644
> index 000000000000..60a941c76f23
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_PLANE_CAPS_H__
> +#define __INTEL_PLANE_CAPS_H__
> +
> +#include "intel_display_types.h"
> +
> +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> +		      enum pipe pipe, enum plane_id plane_id);
> +
> +#endif /* __INTEL_PLANE_CAPS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 511dc1544854..f2fd3833c61d 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -17,6 +17,7 @@
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
>  #include "intel_frontbuffer.h"
> +#include "intel_plane_caps.h"
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
>  #include "skl_scaler.h"
> @@ -2242,66 +2243,6 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>  
> -static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> -				 enum pipe pipe, enum plane_id plane_id)
> -{
> -	/* Wa_22011186057 */
> -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> -		return false;
> -
> -	if (DISPLAY_VER(i915) >= 11)
> -		return true;
> -
> -	if (IS_GEMINILAKE(i915))
> -		return pipe != PIPE_C;
> -
> -	return pipe != PIPE_C &&
> -		(plane_id == PLANE_PRIMARY ||
> -		 plane_id == PLANE_SPRITE0);
> -}
> -
> -static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> -				   enum plane_id plane_id)
> -{
> -	if (DISPLAY_VER(i915) < 12)
> -		return false;
> -
> -	/* Wa_14010477008 */
> -	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> -		(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
> -		return false;
> -
> -	/* Wa_22011186057 */
> -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> -		return false;
> -
> -	return plane_id < PLANE_SPRITE4;
> -}
> -
> -static u8 skl_get_plane_caps(struct drm_i915_private *i915,
> -			     enum pipe pipe, enum plane_id plane_id)
> -{
> -	u8 caps = INTEL_PLANE_CAP_TILING_X;
> -
> -	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> -		caps |= INTEL_PLANE_CAP_TILING_Y;
> -	if (DISPLAY_VER(i915) < 12)
> -		caps |= INTEL_PLANE_CAP_TILING_Yf;
> -	if (HAS_4TILE(i915))
> -		caps |= INTEL_PLANE_CAP_TILING_4;
> -
> -	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> -		caps |= INTEL_PLANE_CAP_CCS_RC;
> -		if (DISPLAY_VER(i915) >= 12)
> -			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
> -	}
> -
> -	if (gen12_plane_has_mc_ccs(i915, plane_id))
> -		caps |= INTEL_PLANE_CAP_CCS_MC;
> -
> -	return caps;
> -}
> -
>  struct intel_plane *
>  skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  			   enum pipe pipe, enum plane_id plane_id)
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> index ccf83c12b545..425c6e6744a6 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -15,6 +15,7 @@
>  #include "intel_fb.h"
>  #include "intel_fb_pin.h"
>  #include "intel_frontbuffer.h"
> +#include "intel_plane_caps.h"
>  #include "intel_plane_initial.h"
>  
>  static bool
> @@ -289,3 +290,25 @@ void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
>  
>  	plane_config_fini(&plane_config);
>  }
> +
> +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> +		      enum pipe pipe, enum plane_id plane_id)
> +{
> +	u8 caps = INTEL_PLANE_CAP_TILING_X;
> +
> +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> +		caps |= INTEL_PLANE_CAP_TILING_Y;
> +	if (DISPLAY_VER(i915) < 12)
> +		caps |= INTEL_PLANE_CAP_TILING_Yf;
> +	if (HAS_4TILE(i915))
> +		caps |= INTEL_PLANE_CAP_TILING_4;
> +
> +	if (HAS_FLAT_CCS(i915)) {
> +		caps |= INTEL_PLANE_CAP_CCS_RC | INTEL_PLANE_CAP_CCS_RC_CC;
> +
> +		if (plane_id < PLANE_SPRITE4)
> +			caps |= INTEL_PLANE_CAP_CCS_MC;
> +	}
> +
> +	return caps;
> +}
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
