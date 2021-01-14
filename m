Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAA02F653B
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 16:57:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA3B56E431;
	Thu, 14 Jan 2021 15:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A23E26E431
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 15:57:00 +0000 (UTC)
IronPort-SDR: NrxpaXycOHodhaTxBWbY8NbKmOd1VAusPhZ47LqfMTrQ9CQglDb8nf+aAFG69sfAkdj0OgG2mf
 kkXubL+aoQ0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="177609257"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="177609257"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 07:56:59 -0800
IronPort-SDR: IiU/u+2R3hz69cHSVuoZoB7zCzFTmWY/6kFhQPuKMjLhp1Vp+q1BCKxM0VPb2ghPV1Hluhr9ij
 8QjvsET4fmNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="382309493"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 14 Jan 2021 07:56:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 17:56:55 +0200
Date: Thu, 14 Jan 2021 17:56:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YABpx599AISB4xD0@intel.com>
References: <cover.1610622609.git.jani.nikula@intel.com>
 <9b51add03de3ffce8a1e9dd59ede79e4e1134c89.1610622609.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b51add03de3ffce8a1e9dd59ede79e4e1134c89.1610622609.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915: migrate skl planes code new
 file (v3)
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 14, 2021 at 01:13:50PM +0200, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> Rework the plane init calls to do the gen test one level higher.
> =

> Rework some of the plane helpers so they can live in new file,
> there is still some scope to clean up the plane/fb interactions
> later.
> =

> v2: drop atomic code back, rename file to Ville suggestions,
> add header file.
> v3: move scaler bits back
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> [Jani: fixed up sparse warnings.]
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
<snip>
> -unsigned int
> -intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
> -{
> -	int x =3D 0, y =3D 0;
> -
> -	intel_plane_adjust_aligned_offset(&x, &y, plane_state, 0,
> -					  plane_state->color_plane[0].offset, 0);
> -
> -	return y;
> -}

This getting moved around is messing up the diff.

<snip>
> @@ -4386,15 +3633,6 @@ static int skl_update_scaler_plane(struct intel_cr=
tc_state *crtc_state,
>  	return 0;
>  }
>  =

> -void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> -	int i;
> -
> -	for (i =3D 0; i < crtc->num_scalers; i++)
> -		skl_detach_scaler(crtc, i);
> -}

Same here.

<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index f76e2c2a83b8..8e4b6647752f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -39,6 +39,7 @@
>  #include "intel_dp_mst.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_hdcp.h"
> +#include "skl_universal_plane.h"

Why is this here?

>  =

>  static int intel_dp_mst_compute_link_config(struct intel_encoder *encode=
r,
>  					    struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index c24ae69426cf..0d0b0d3c52a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -31,6 +31,7 @@
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
>  #include "intel_hdmi.h"
> +#include "skl_universal_plane.h"

Is this due to the psr damage stuff?

<snip>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index f94025ec603a..ebf266457518 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -38,6 +38,7 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_panel.h"
>  #include "intel_sideband.h"
> +#include "skl_universal_plane.h"

Why do we need this here?

>  =

>  /* return pixels in terms of txbyteclkhs */
>  static u16 txbyteclkhs(u16 pixels, int bpp, int lane_count,
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index bbc73df7f753..bc40ecc17a52 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -38,6 +38,7 @@
>  #include "display/intel_display_types.h"
>  #include "display/intel_fbc.h"
>  #include "display/intel_sprite.h"
> +#include "display/skl_universal_plane.h"
>  =

>  #include "gt/intel_llc.h"
>  =

> -- =

> 2.20.1
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
