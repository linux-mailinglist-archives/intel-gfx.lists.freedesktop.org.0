Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E471782223C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jan 2024 20:45:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6919010E148;
	Tue,  2 Jan 2024 19:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A2110E148
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jan 2024 19:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704224717; x=1735760717;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=xFqegp7HeERxYrrwal82llRkmOE3XWvO9xvOJh5Yfc0=;
 b=a+dBs6nP8hMki/OpVydbyAZZ7WUVqVs5mxWZCG4phR1TSDuGZ3solS7/
 dATJqmGSGiHGn7O6aMFmDNF+Zg77TKP2nPcZRm7bFz6K+Mi7sf9Nev6ws
 OHjzR0f1LmRpGmqCOf1GdeinCFn75LuHmRdAMOmUS9D7W7VWEcr8RfKpT
 P4XT0GiHrbaRfFWEhSu6bjZGwVpAY+aiROdwy6DOFFCwdFWkx8To03Z0E
 foTZIwJWv5JiPhkcDFV3awRFHxK4SbE0WrI5iRNB2Y+2wYCHVjk7zABgf
 wvwBGg8VeAPy3TLGmZmlYtSe5LVShjF7o6CYVyUs99f6J1gbrkt4r6/Kq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="400719023"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="400719023"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 11:45:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="14268088"
Received: from adent-mobl3.amr.corp.intel.com (HELO localhost) ([10.252.35.38])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 11:45:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
In-Reply-To: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
Date: Tue, 02 Jan 2024 21:44:48 +0200
Message-ID: <87il4b1pvz.fsf@intel.com>
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
Cc: Oded Gabbay <ogabbay@kernel.org>, "Hellstrom,
 Thomas" <thomas.hellstrom@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 02 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wro=
te:
> Aux ccs framebuffers don't work on Xe driver hence disable them
> from plane capabilities until they are fixed. Flat ccs framebuffers
> work and they are left enabled. Here is separated plane capabilities
> check on i915 so it can behave differencly depending on the driver.

Cc: Rodrigo and xe maintainers

We need to figure out the proper workflow, the mailing lists to use, the
subject prefix to use, the acks to require, etc, for changes touching
both xe and i915.

I'd very much prefer changes to i915 display to be merged via
drm-intel-next as always. For one thing, it'll take a while to sync
stuff back from drm-xe-next to drm-intel-next, and most display
development still happens on drm-intel-next.

But this patch can't be applied to drm-intel-next, because xe doesn't
even exist on drm-intel-next yet...


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
