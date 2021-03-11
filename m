Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7403378F4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:15:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B9146EE44;
	Thu, 11 Mar 2021 16:15:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713616EE44
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:15:30 +0000 (UTC)
IronPort-SDR: B4qL6egxh/gIVrB5K4hngEH6jDdPGy63NngZhW6f1kgBIT+PPzHi5+uetoMYzvbNEu+pyT0JXi
 xbsVn5nEErKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188788156"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="188788156"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:15:29 -0800
IronPort-SDR: OfBG7sRNp7GJWWDsyZWsT7xgGzgdN8McWxmKQfUtiPR06GGbm8VFo/A2wLi8iQPXXmZu5Zehy3
 SLaV3y/Bz/Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="448327105"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 11 Mar 2021 08:15:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:15:26 +0200
Date: Thu, 11 Mar 2021 18:15:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpCHqY2Mc9AEHK4@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-8-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 07/23] drm/i915/intel_fb: Pull FB plane
 functions from intel_display_types.h
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 11, 2021 at 12:17:20AM +0200, Imre Deak wrote:
> Start collecting all the FB plane related functions into a new intel_fb.c
> file.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>  .../drm/i915/display/intel_display_types.h    | 19 -------------
>  drivers/gpu/drm/i915/display/intel_fb.c       | 28 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h       | 17 +++++++++++
>  .../drm/i915/display/skl_universal_plane.c    |  1 +
>  6 files changed, 48 insertions(+), 19 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_fb.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_fb.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index bc6138880c67..30c50bacb363 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -210,6 +210,7 @@ i915-y +=3D \
>  	display/intel_dpll.o \
>  	display/intel_dpll_mgr.o \
>  	display/intel_dsb.o \
> +	display/intel_fb.o \
>  	display/intel_fbc.o \
>  	display/intel_fdi.o \
>  	display/intel_fifo_underrun.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7bc541b75eef..39584a82550d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -54,6 +54,7 @@
>  #include "display/intel_dpll_mgr.h"
>  #include "display/intel_dsi.h"
>  #include "display/intel_dvo.h"
> +#include "display/intel_fb.h"
>  #include "display/intel_gmbus.h"
>  #include "display/intel_hdmi.h"
>  #include "display/intel_lvds.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index f159dce0f744..65159a1ea7dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1976,14 +1976,6 @@ static inline bool is_ccs_modifier(u64 modifier)
>  	       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
>  }
>  =

> -static inline bool is_ccs_plane(const struct drm_framebuffer *fb, int pl=
ane)
> -{
> -	if (!is_ccs_modifier(fb->modifier))
> -		return false;
> -
> -	return plane >=3D fb->format->num_planes / 2;
> -}
> -
>  static inline bool is_gen12_ccs_modifier(u64 modifier)
>  {
>  	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> @@ -1991,15 +1983,4 @@ static inline bool is_gen12_ccs_modifier(u64 modif=
ier)
>  	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
>  }
>  =

> -static inline bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, =
int plane)
> -{
> -	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
> -}
> -
> -static inline bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *f=
b, int plane)
> -{
> -	return fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC &&
> -	       plane =3D=3D 2;
> -}
> -
>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> new file mode 100644
> index 000000000000..29b8ec087f53
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -0,0 +1,28 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =A9 2021 Intel Corporation
> + */
> +
> +#include <drm/drm_framebuffer.h>
> +
> +#include "display/intel_display_types.h"
> +#include "display/intel_fb.h"

I don't think we usually have the "display/" part in these.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
> +bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
> +{
> +	if (!is_ccs_modifier(fb->modifier))
> +		return false;
> +
> +	return plane >=3D fb->format->num_planes / 2;
> +}
> +
> +bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
> +{
> +	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
> +}
> +
> +bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
> +{
> +	return fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC &&
> +	       plane =3D=3D 2;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> new file mode 100644
> index 000000000000..64e6a2521320
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020-2021 Intel Corporation
> + */
> +
> +#ifndef __INTEL_FB_H__
> +#define __INTEL_FB_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_framebuffer;
> +
> +bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
> +bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
> +bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
> +
> +#endif /* __INTEL_FB_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 1f335cb09149..3ff1008b0b4a 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -11,6 +11,7 @@
>  #include "i915_drv.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_display_types.h"
> +#include "intel_fb.h"
>  #include "intel_pm.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> -- =

> 2.25.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
