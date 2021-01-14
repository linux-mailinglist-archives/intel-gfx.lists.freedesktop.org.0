Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FAA2F6555
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 17:00:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6370688ED5;
	Thu, 14 Jan 2021 16:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A7088ED5
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 16:00:39 +0000 (UTC)
IronPort-SDR: timEXC4te78TGkkYA6/8dPFzrWiPmpOdJjPOqx/o8BPnp94wZopHg33f09F6YCTB046kKbfXRL
 T0wIDYNqgSxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="175809695"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="175809695"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 08:00:13 -0800
IronPort-SDR: M5xUJyL6ZeHGv3L9xJcqMoprF78tpkrep3Qs8XEcGS+nfeIpl26YpoRaM5WXzXMrrwqYUu1awK
 wc3Qab/W0Cvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="364262399"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 14 Jan 2021 08:00:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 18:00:07 +0200
Date: Thu, 14 Jan 2021 18:00:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YABqh2nLPZrBLmiC@intel.com>
References: <cover.1610622609.git.jani.nikula@intel.com>
 <9fbc056cb9773de6945f07d9318094fb6f5cd10c.1610622609.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fbc056cb9773de6945f07d9318094fb6f5cd10c.1610622609.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915: migrate i9xx plane get
 config
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 14, 2021 at 01:13:55PM +0200, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> Migrate this code out like the skylake code.
> =

> !!! FIXME: Dave's s-o-b !!!
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c    | 119 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/i9xx_plane.h    |   4 +
>  drivers/gpu/drm/i915/display/intel_display.c | 119 -------------------
>  3 files changed, 123 insertions(+), 119 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 6c568079f492..a063a92f04dc 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -698,3 +698,122 @@ intel_primary_plane_create(struct drm_i915_private =
*dev_priv, enum pipe pipe)
>  	return ERR_PTR(ret);
>  }
>  =

> +static int i9xx_format_to_fourcc(int format)
> +{
> +	switch (format) {
> +	case DISPPLANE_8BPP:
> +		return DRM_FORMAT_C8;
> +	case DISPPLANE_BGRA555:
> +		return DRM_FORMAT_ARGB1555;
> +	case DISPPLANE_BGRX555:
> +		return DRM_FORMAT_XRGB1555;
> +	case DISPPLANE_BGRX565:
> +		return DRM_FORMAT_RGB565;
> +	default:
> +	case DISPPLANE_BGRX888:
> +		return DRM_FORMAT_XRGB8888;
> +	case DISPPLANE_RGBX888:
> +		return DRM_FORMAT_XBGR8888;
> +	case DISPPLANE_BGRA888:
> +		return DRM_FORMAT_ARGB8888;
> +	case DISPPLANE_RGBA888:
> +		return DRM_FORMAT_ABGR8888;
> +	case DISPPLANE_BGRX101010:
> +		return DRM_FORMAT_XRGB2101010;
> +	case DISPPLANE_RGBX101010:
> +		return DRM_FORMAT_XBGR2101010;
> +	case DISPPLANE_BGRA101010:
> +		return DRM_FORMAT_ARGB2101010;
> +	case DISPPLANE_RGBA101010:
> +		return DRM_FORMAT_ABGR2101010;
> +	case DISPPLANE_RGBX161616:
> +		return DRM_FORMAT_XBGR16161616F;
> +	}
> +}
> +
> +void
> +i9xx_get_initial_plane_config(struct intel_crtc *crtc,
> +			      struct intel_initial_plane_config *plane_config)
> +{
> +	struct drm_device *dev =3D crtc->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> +	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> +	enum pipe pipe;
> +	u32 val, base, offset;
> +	int fourcc, pixel_format;
> +	unsigned int aligned_height;
> +	struct drm_framebuffer *fb;
> +	struct intel_framebuffer *intel_fb;
> +
> +	if (!plane->get_hw_state(plane, &pipe))
> +		return;
> +
> +	drm_WARN_ON(dev, pipe !=3D crtc->pipe);
> +
> +	intel_fb =3D kzalloc(sizeof(*intel_fb), GFP_KERNEL);
> +	if (!intel_fb) {
> +		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
> +		return;
> +	}
> +
> +	fb =3D &intel_fb->base;
> +
> +	fb->dev =3D dev;
> +
> +	val =3D intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
> +
> +	if (INTEL_GEN(dev_priv) >=3D 4) {
> +		if (val & DISPPLANE_TILED) {
> +			plane_config->tiling =3D I915_TILING_X;
> +			fb->modifier =3D I915_FORMAT_MOD_X_TILED;
> +		}
> +
> +		if (val & DISPPLANE_ROTATE_180)
> +			plane_config->rotation =3D DRM_MODE_ROTATE_180;
> +	}
> +
> +	if (IS_CHERRYVIEW(dev_priv) && pipe =3D=3D PIPE_B &&
> +	    val & DISPPLANE_MIRROR)
> +		plane_config->rotation |=3D DRM_MODE_REFLECT_X;
> +
> +	pixel_format =3D val & DISPPLANE_PIXFORMAT_MASK;
> +	fourcc =3D i9xx_format_to_fourcc(pixel_format);
> +	fb->format =3D drm_format_info(fourcc);
> +
> +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> +		offset =3D intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
> +		base =3D intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
> +	} else if (INTEL_GEN(dev_priv) >=3D 4) {
> +		if (plane_config->tiling)
> +			offset =3D intel_de_read(dev_priv,
> +					       DSPTILEOFF(i9xx_plane));
> +		else
> +			offset =3D intel_de_read(dev_priv,
> +					       DSPLINOFF(i9xx_plane));
> +		base =3D intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
> +	} else {
> +		base =3D intel_de_read(dev_priv, DSPADDR(i9xx_plane));
> +	}
> +	plane_config->base =3D base;
> +
> +	val =3D intel_de_read(dev_priv, PIPESRC(pipe));
> +	fb->width =3D ((val >> 16) & 0xfff) + 1;
> +	fb->height =3D ((val >> 0) & 0xfff) + 1;
> +
> +	val =3D intel_de_read(dev_priv, DSPSTRIDE(i9xx_plane));
> +	fb->pitches[0] =3D val & 0xffffffc0;
> +
> +	aligned_height =3D intel_fb_align_height(fb, 0, fb->height);
> +
> +	plane_config->size =3D fb->pitches[0] * aligned_height;
> +
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "%s/%s with fb: size=3D%dx%d@%d, offset=3D%x, pitch %d, size 0x%x\=
n",
> +		    crtc->base.name, plane->base.name, fb->width, fb->height,
> +		    fb->format->cpp[0] * 8, base, fb->pitches[0],
> +		    plane_config->size);
> +
> +	plane_config->fb =3D intel_fb;
> +}
> +
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/=
i915/display/i9xx_plane.h
> index bc2834a62735..191c312a7e97 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.h
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
> @@ -10,6 +10,8 @@
>  =

>  enum pipe;
>  struct drm_i915_private;
> +struct intel_crtc;
> +struct intel_initial_plane_config;
>  struct intel_plane;
>  struct intel_plane_state;
>  =

> @@ -21,4 +23,6 @@ int i9xx_check_plane_surface(struct intel_plane_state *=
plane_state);
>  struct intel_plane *
>  intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe =
pipe);
>  =

> +void i9xx_get_initial_plane_config(struct intel_crtc *crtc,
> +				   struct intel_initial_plane_config *plane_config);
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8abd49cf9c2b..0539357e34b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2162,39 +2162,6 @@ intel_plane_compute_gtt(struct intel_plane_state *=
plane_state)
>  	return intel_plane_check_stride(plane_state);
>  }
>  =

> -static int i9xx_format_to_fourcc(int format)
> -{
> -	switch (format) {
> -	case DISPPLANE_8BPP:
> -		return DRM_FORMAT_C8;
> -	case DISPPLANE_BGRA555:
> -		return DRM_FORMAT_ARGB1555;
> -	case DISPPLANE_BGRX555:
> -		return DRM_FORMAT_XRGB1555;
> -	case DISPPLANE_BGRX565:
> -		return DRM_FORMAT_RGB565;
> -	default:
> -	case DISPPLANE_BGRX888:
> -		return DRM_FORMAT_XRGB8888;
> -	case DISPPLANE_RGBX888:
> -		return DRM_FORMAT_XBGR8888;
> -	case DISPPLANE_BGRA888:
> -		return DRM_FORMAT_ARGB8888;
> -	case DISPPLANE_RGBA888:
> -		return DRM_FORMAT_ABGR8888;
> -	case DISPPLANE_BGRX101010:
> -		return DRM_FORMAT_XRGB2101010;
> -	case DISPPLANE_RGBX101010:
> -		return DRM_FORMAT_XBGR2101010;
> -	case DISPPLANE_BGRA101010:
> -		return DRM_FORMAT_ARGB2101010;
> -	case DISPPLANE_RGBA101010:
> -		return DRM_FORMAT_ABGR2101010;
> -	case DISPPLANE_RGBX161616:
> -		return DRM_FORMAT_XBGR16161616F;
> -	}
> -}
> -
>  static struct i915_vma *
>  initial_plane_vma(struct drm_i915_private *i915,
>  		  struct intel_initial_plane_config *plane_config)
> @@ -5850,92 +5817,6 @@ static void vlv_crtc_clock_get(struct intel_crtc *=
crtc,
>  	pipe_config->port_clock =3D vlv_calc_dpll_params(refclk, &clock);
>  }
>  =

> -static void
> -i9xx_get_initial_plane_config(struct intel_crtc *crtc,
> -			      struct intel_initial_plane_config *plane_config)
> -{
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> -	enum i9xx_plane_id i9xx_plane =3D plane->i9xx_plane;
> -	enum pipe pipe;
> -	u32 val, base, offset;
> -	int fourcc, pixel_format;
> -	unsigned int aligned_height;
> -	struct drm_framebuffer *fb;
> -	struct intel_framebuffer *intel_fb;
> -
> -	if (!plane->get_hw_state(plane, &pipe))
> -		return;
> -
> -	drm_WARN_ON(dev, pipe !=3D crtc->pipe);
> -
> -	intel_fb =3D kzalloc(sizeof(*intel_fb), GFP_KERNEL);
> -	if (!intel_fb) {
> -		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
> -		return;
> -	}
> -
> -	fb =3D &intel_fb->base;
> -
> -	fb->dev =3D dev;
> -
> -	val =3D intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
> -
> -	if (INTEL_GEN(dev_priv) >=3D 4) {
> -		if (val & DISPPLANE_TILED) {
> -			plane_config->tiling =3D I915_TILING_X;
> -			fb->modifier =3D I915_FORMAT_MOD_X_TILED;
> -		}
> -
> -		if (val & DISPPLANE_ROTATE_180)
> -			plane_config->rotation =3D DRM_MODE_ROTATE_180;
> -	}
> -
> -	if (IS_CHERRYVIEW(dev_priv) && pipe =3D=3D PIPE_B &&
> -	    val & DISPPLANE_MIRROR)
> -		plane_config->rotation |=3D DRM_MODE_REFLECT_X;
> -
> -	pixel_format =3D val & DISPPLANE_PIXFORMAT_MASK;
> -	fourcc =3D i9xx_format_to_fourcc(pixel_format);
> -	fb->format =3D drm_format_info(fourcc);
> -
> -	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> -		offset =3D intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
> -		base =3D intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
> -	} else if (INTEL_GEN(dev_priv) >=3D 4) {
> -		if (plane_config->tiling)
> -			offset =3D intel_de_read(dev_priv,
> -					       DSPTILEOFF(i9xx_plane));
> -		else
> -			offset =3D intel_de_read(dev_priv,
> -					       DSPLINOFF(i9xx_plane));
> -		base =3D intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
> -	} else {
> -		base =3D intel_de_read(dev_priv, DSPADDR(i9xx_plane));
> -	}
> -	plane_config->base =3D base;
> -
> -	val =3D intel_de_read(dev_priv, PIPESRC(pipe));
> -	fb->width =3D ((val >> 16) & 0xfff) + 1;
> -	fb->height =3D ((val >> 0) & 0xfff) + 1;
> -
> -	val =3D intel_de_read(dev_priv, DSPSTRIDE(i9xx_plane));
> -	fb->pitches[0] =3D val & 0xffffffc0;
> -
> -	aligned_height =3D intel_fb_align_height(fb, 0, fb->height);
> -
> -	plane_config->size =3D fb->pitches[0] * aligned_height;
> -
> -	drm_dbg_kms(&dev_priv->drm,
> -		    "%s/%s with fb: size=3D%dx%d@%d, offset=3D%x, pitch %d, size 0x%x\=
n",
> -		    crtc->base.name, plane->base.name, fb->width, fb->height,
> -		    fb->format->cpp[0] * 8, base, fb->pitches[0],
> -		    plane_config->size);
> -
> -	plane_config->fb =3D intel_fb;
> -}
> -
>  static void chv_crtc_clock_get(struct intel_crtc *crtc,
>  			       struct intel_crtc_state *pipe_config)
>  {
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
