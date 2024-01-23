Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1C1838C7E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 11:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E5510E4D9;
	Tue, 23 Jan 2024 10:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8986C10E725
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 10:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706006961; x=1737542961;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zex/AgRtmJ3LF/SABXTDLuCib5CF6bbk0N91/Kznamw=;
 b=Xa6gtY2NahH4ssR8aarrV9uzRNdkfaklb/QKV/FiePQAj+4U1+WbA+ie
 nzLWUVMEVVboyXVfSQJIkPuYificXFQMpHTY+csb8xeA1PPqD2qa6/o90
 99ki4lvJLxDaBVrKHYfXYQiFnOoVW/3cV48isXyOcMPTQUMSl1r763ru4
 EWxQn9lNfanCgS46w86RSgMX3geDS3qLM87ismHyEp2+Xq3phCkxbRuQm
 if1eN8MZR/o2jY/pjOcRkZSThpROp8LahOaWG85jpDTWRnza1UaB1l3ZG
 0xeDJOego8OSeNF532S+byyGKDqhmV8Hi3zwGa7wRID4shRJ2A4kyr/hn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="376744"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="376744"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 02:49:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="1554369"
Received: from pzsolt-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.40.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 02:49:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
In-Reply-To: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
Date: Tue, 23 Jan 2024 12:49:12 +0200
Message-ID: <87bk9cnx3r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 02 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wro=
te:
> Aux ccs framebuffers don't work on Xe driver hence disable them
> from plane capabilities until they are fixed. Flat ccs framebuffers
> work and they are left enabled. Here is separated plane capabilities
> check on i915 so it can behave differencly depending on the driver.

I still think there's too much going on in this one patch. It refactors
i915 and modifies xe behaviour in one go.

It adds intel_plane_caps.[ch] in i915, but extracts them from skl+
specific functions and files. xe uses the .h but adds the code in
existing xe_plane_initial.c. There's also intel_plane_initial.c i915
side, but that's not where the functions get moved in i915 side.

I'm trying to look at the actual functional change, and I'm wondering if
it isn't just this:

index 511dc1544854..8bba6c2e5098 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2290,6 +2290,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private =
*i915,
 	if (HAS_4TILE(i915))
 		caps |=3D INTEL_PLANE_CAP_TILING_4;
=20
+	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
+		return caps;
+
 	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
 		caps |=3D INTEL_PLANE_CAP_CCS_RC;
 		if (DISPLAY_VER(i915) >=3D 12)

I'm not saying that's exactly pretty, either, but IIUC this is supposed
to be a temporary measure ("until they are fixed"), I'd rather take this
small thing instead.

BR,
Jani.




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
> @@ -302,6 +302,7 @@ i915-y +=3D \
>  	display/intel_overlay.o \
>  	display/intel_pch_display.o \
>  	display/intel_pch_refclk.o \
> +	display/intel_plane_caps.o \
>  	display/intel_plane_initial.o \
>  	display/intel_pmdemand.o \
>  	display/intel_psr.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.c b/drivers/gp=
u/drm/i915/display/intel_plane_caps.c
> new file mode 100644
> index 000000000000..6206ae11f296
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.c
> @@ -0,0 +1,68 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
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
> +	if (DISPLAY_VER(i915) >=3D 11)
> +		return true;
> +
> +	if (IS_GEMINILAKE(i915))
> +		return pipe !=3D PIPE_C;
> +
> +	return pipe !=3D PIPE_C &&
> +		(plane_id =3D=3D PLANE_PRIMARY ||
> +		 plane_id =3D=3D PLANE_SPRITE0);
> +}
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
> +	u8 caps =3D INTEL_PLANE_CAP_TILING_X;
> +
> +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> +		caps |=3D INTEL_PLANE_CAP_TILING_Y;
> +	if (DISPLAY_VER(i915) < 12)
> +		caps |=3D INTEL_PLANE_CAP_TILING_Yf;
> +	if (HAS_4TILE(i915))
> +		caps |=3D INTEL_PLANE_CAP_TILING_4;
> +
> +	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> +		caps |=3D INTEL_PLANE_CAP_CCS_RC;
> +		if (DISPLAY_VER(i915) >=3D 12)
> +			caps |=3D INTEL_PLANE_CAP_CCS_RC_CC;
> +	}
> +
> +	if (gen12_plane_has_mc_ccs(i915, plane_id))
> +		caps |=3D INTEL_PLANE_CAP_CCS_MC;
> +
> +	return caps;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.h b/drivers/gp=
u/drm/i915/display/intel_plane_caps.h
> new file mode 100644
> index 000000000000..60a941c76f23
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
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
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
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
> @@ -2242,66 +2243,6 @@ skl_plane_disable_flip_done(struct intel_plane *pl=
ane)
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20=20
> -static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> -				 enum pipe pipe, enum plane_id plane_id)
> -{
> -	/* Wa_22011186057 */
> -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> -		return false;
> -
> -	if (DISPLAY_VER(i915) >=3D 11)
> -		return true;
> -
> -	if (IS_GEMINILAKE(i915))
> -		return pipe !=3D PIPE_C;
> -
> -	return pipe !=3D PIPE_C &&
> -		(plane_id =3D=3D PLANE_PRIMARY ||
> -		 plane_id =3D=3D PLANE_SPRITE0);
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
> -	u8 caps =3D INTEL_PLANE_CAP_TILING_X;
> -
> -	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> -		caps |=3D INTEL_PLANE_CAP_TILING_Y;
> -	if (DISPLAY_VER(i915) < 12)
> -		caps |=3D INTEL_PLANE_CAP_TILING_Yf;
> -	if (HAS_4TILE(i915))
> -		caps |=3D INTEL_PLANE_CAP_TILING_4;
> -
> -	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> -		caps |=3D INTEL_PLANE_CAP_CCS_RC;
> -		if (DISPLAY_VER(i915) >=3D 12)
> -			caps |=3D INTEL_PLANE_CAP_CCS_RC_CC;
> -	}
> -
> -	if (gen12_plane_has_mc_ccs(i915, plane_id))
> -		caps |=3D INTEL_PLANE_CAP_CCS_MC;
> -
> -	return caps;
> -}
> -
>  struct intel_plane *
>  skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  			   enum pipe pipe, enum plane_id plane_id)
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/=
drm/xe/display/xe_plane_initial.c
> index ccf83c12b545..425c6e6744a6 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -15,6 +15,7 @@
>  #include "intel_fb.h"
>  #include "intel_fb_pin.h"
>  #include "intel_frontbuffer.h"
> +#include "intel_plane_caps.h"
>  #include "intel_plane_initial.h"
>=20=20
>  static bool
> @@ -289,3 +290,25 @@ void intel_crtc_initial_plane_config(struct intel_cr=
tc *crtc)
>=20=20
>  	plane_config_fini(&plane_config);
>  }
> +
> +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> +		      enum pipe pipe, enum plane_id plane_id)
> +{
> +	u8 caps =3D INTEL_PLANE_CAP_TILING_X;
> +
> +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> +		caps |=3D INTEL_PLANE_CAP_TILING_Y;
> +	if (DISPLAY_VER(i915) < 12)
> +		caps |=3D INTEL_PLANE_CAP_TILING_Yf;
> +	if (HAS_4TILE(i915))
> +		caps |=3D INTEL_PLANE_CAP_TILING_4;
> +
> +	if (HAS_FLAT_CCS(i915)) {
> +		caps |=3D INTEL_PLANE_CAP_CCS_RC | INTEL_PLANE_CAP_CCS_RC_CC;
> +
> +		if (plane_id < PLANE_SPRITE4)
> +			caps |=3D INTEL_PLANE_CAP_CCS_MC;
> +	}
> +
> +	return caps;
> +}

--=20
Jani Nikula, Intel
