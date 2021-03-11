Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3465633790D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F81A6EE53;
	Thu, 11 Mar 2021 16:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ABE76EE53
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:18:44 +0000 (UTC)
IronPort-SDR: J7KL0ph2ojRmUFSRQ01R23o7sBGmok6i6otAd8IhdMrufg4vjxFGL/j8Ae1uVTrtEmwbwzV7fR
 p9k3uXbLFQDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="252709034"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="252709034"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:18:43 -0800
IronPort-SDR: 0PBBjNIZ6Q0IxShSLu6gzN2CG9ef//WYRjUUMtVZtZITL3+ekFwzC8EWuWf+VUNEHoME5VuhGj
 StrbIuyjXrIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="410659135"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 11 Mar 2021 08:18:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:18:40 +0200
Date: Thu, 11 Mar 2021 18:18:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpC4G1807tT66fZ@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-9-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-9-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 08/23] drm/i915/intel_fb: Pull FB plane
 functions from skl_universal_plane.c
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

On Thu, Mar 11, 2021 at 12:17:21AM +0200, Imre Deak wrote:
> Move the FB plane related functions from skl_universal_plane.c to
> intel_fb.c.

Some are only used by the skl plane code, but since these are all
related with each other I guess it's still better to collect it
all into one place.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c       | 32 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h       |  4 +++
>  .../drm/i915/display/skl_universal_plane.c    | 34 -------------------
>  .../drm/i915/display/skl_universal_plane.h    |  2 --
>  4 files changed, 36 insertions(+), 36 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 29b8ec087f53..977ee2acaed1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -26,3 +26,35 @@ bool is_gen12_ccs_cc_plane(const struct drm_framebuffe=
r *fb, int plane)
>  	return fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC &&
>  	       plane =3D=3D 2;
>  }
> +
> +int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
> +{
> +	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
> +		    (main_plane && main_plane >=3D fb->format->num_planes / 2));
> +
> +	return fb->format->num_planes / 2 + main_plane;
> +}
> +
> +int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plan=
e)
> +{
> +	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
> +		    ccs_plane < fb->format->num_planes / 2);
> +
> +	if (is_gen12_ccs_cc_plane(fb, ccs_plane))
> +		return 0;
> +
> +	return ccs_plane - fb->format->num_planes / 2;
> +}
> +
> +int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_pla=
ne)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(fb->dev);
> +
> +	if (is_ccs_modifier(fb->modifier))
> +		return main_to_ccs_plane(fb, main_plane);
> +	else if (INTEL_GEN(i915) < 11 &&
> +		 intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> +		return 1;
> +	else
> +		return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 64e6a2521320..3cde53c75cb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -14,4 +14,8 @@ bool is_ccs_plane(const struct drm_framebuffer *fb, int=
 plane);
>  bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
>  =

> +int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
> +int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plan=
e);
> +int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_pla=
ne);
> +
>  #endif /* __INTEL_FB_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 3ff1008b0b4a..9a456b3d19a9 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -915,40 +915,6 @@ static u32 glk_plane_color_ctl(const struct intel_cr=
tc_state *crtc_state,
>  	return plane_color_ctl;
>  }
>  =

> -static int
> -main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
> -{
> -	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
> -		    (main_plane && main_plane >=3D fb->format->num_planes / 2));
> -
> -	return fb->format->num_planes / 2 + main_plane;
> -}
> -
> -int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plan=
e)
> -{
> -	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
> -		    ccs_plane < fb->format->num_planes / 2);
> -
> -	if (is_gen12_ccs_cc_plane(fb, ccs_plane))
> -		return 0;
> -
> -	return ccs_plane - fb->format->num_planes / 2;
> -}
> -
> -static int
> -skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(fb->dev);
> -
> -	if (is_ccs_modifier(fb->modifier))
> -		return main_to_ccs_plane(fb, main_plane);
> -	else if (INTEL_GEN(i915) < 11 &&
> -		 intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> -		return 1;
> -	else
> -		return 0;
> -}
> -
>  static void
>  skl_program_plane(struct intel_plane *plane,
>  		  const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers=
/gpu/drm/i915/display/skl_universal_plane.h
> index 818266653630..351040b64dc7 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> @@ -8,7 +8,6 @@
>  =

>  #include <linux/types.h>
>  =

> -struct drm_framebuffer;
>  struct drm_i915_private;
>  struct intel_crtc;
>  struct intel_initial_plane_config;
> @@ -26,7 +25,6 @@ void skl_get_initial_plane_config(struct intel_crtc *cr=
tc,
>  =

>  int skl_format_to_fourcc(int format, bool rgb_order, bool alpha);
>  =

> -int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plan=
e);
>  int skl_calc_main_surface_offset(const struct intel_plane_state *plane_s=
tate,
>  				 int *x, int *y, u32 *offset);
>  =

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
