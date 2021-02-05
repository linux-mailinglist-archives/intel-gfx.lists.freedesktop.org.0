Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D092310CD5
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 16:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE706E25B;
	Fri,  5 Feb 2021 15:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A8916E25B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 15:01:58 +0000 (UTC)
IronPort-SDR: Xdu486m251Do578yg2cdvNzYFYeFHrPloiu9npFQevkAZF6f9a7wfTUWZqPB6UughtvnNYU8E6
 VBwKjay/bq9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181589882"
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="181589882"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 07:01:56 -0800
IronPort-SDR: k7g+uoCAKK77+gxH0HwP5hO6QemnDvo/l4dVv/GrdmygZOr0qzNdVQr5t2E+pzit54Dzm5NQiz
 rITwD8q0Lw8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="416055862"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 05 Feb 2021 07:01:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Feb 2021 17:01:51 +0200
Date: Fri, 5 Feb 2021 17:01:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YB1d3z9vh6/tMml8@intel.com>
References: <cover.1612536383.git.jani.nikula@intel.com>
 <4e88a5c6b9ab3b93cc2b6c7d78c26ae86f6abbd0.1612536383.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e88a5c6b9ab3b93cc2b6c7d78c26ae86f6abbd0.1612536383.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v12 1/8] drm/i915: migrate skl planes code
 new file (v5)
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

On Fri, Feb 05, 2021 at 04:48:36PM +0200, Jani Nikula wrote:
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
> v4: drop wrong new includes (Ville)
> v5: integrate the ccs gen12 changes
> v6: fix unrelated code movement (Ville)
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> [Jani: fixed up sparse warnings.]
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                 |    3 +-
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |    4 -
>  drivers/gpu/drm/i915/display/icl_dsi.c        |    1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   13 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |    1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  948 +------
>  drivers/gpu/drm/i915/display/intel_display.h  |   27 +-
>  .../drm/i915/display/intel_display_types.h    |   27 +
>  drivers/gpu/drm/i915/display/intel_psr.c      |    1 +
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 1343 +---------
>  drivers/gpu/drm/i915/display/intel_sprite.h   |    6 +-
>  .../drm/i915/display/skl_universal_plane.c    | 2265 +++++++++++++++++
>  .../drm/i915/display/skl_universal_plane.h    |   33 +
>  drivers/gpu/drm/i915/intel_pm.c               |    1 +
>  14 files changed, 2380 insertions(+), 2293 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/skl_universal_plane.c
>  create mode 100644 drivers/gpu/drm/i915/display/skl_universal_plane.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index d571e87416dc..9388e09184fe 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -225,7 +225,8 @@ i915-y +=3D \
>  	display/intel_sprite.o \
>  	display/intel_tc.o \
>  	display/intel_vga.o \
> -	display/i9xx_plane.o
> +	display/i9xx_plane.o \
> +	display/skl_universal_plane.o
>  i915-$(CONFIG_ACPI) +=3D \
>  	display/intel_acpi.o \
>  	display/intel_opregion.o
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index d30374df67f0..d116dee201aa 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -743,10 +743,6 @@ intel_primary_plane_create(struct drm_i915_private *=
dev_priv, enum pipe pipe)
>  	int num_formats;
>  	int ret, zpos;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		return skl_universal_plane_create(dev_priv, pipe,
> -						  PLANE_PRIMARY);
> -
>  	plane =3D intel_plane_alloc();
>  	if (IS_ERR(plane))
>  		return plane;
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 9d245a689323..9eeec6fadec7 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -35,6 +35,7 @@
>  #include "intel_dsi.h"
>  #include "intel_panel.h"
>  #include "intel_vdsc.h"
> +#include "skl_universal_plane.h"
>  =

>  static int header_credits_available(struct drm_i915_private *dev_priv,
>  				    enum transcoder dsi_trans)
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 57b0a3ebe908..eb478712c381 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -20,6 +20,7 @@
>  #include "intel_pipe_crc.h"
>  #include "intel_sprite.h"
>  #include "i9xx_plane.h"
> +#include "skl_universal_plane.h"
>  =

>  static void assert_vblank_disabled(struct drm_crtc *crtc)
>  {
> @@ -243,7 +244,11 @@ int intel_crtc_init(struct drm_i915_private *dev_pri=
v, enum pipe pipe)
>  	crtc->pipe =3D pipe;
>  	crtc->num_scalers =3D RUNTIME_INFO(dev_priv)->num_scalers[pipe];
>  =

> -	primary =3D intel_primary_plane_create(dev_priv, pipe);
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		primary =3D skl_universal_plane_create(dev_priv, pipe,
> +						     PLANE_PRIMARY);
> +	else
> +		primary =3D intel_primary_plane_create(dev_priv, pipe);
>  	if (IS_ERR(primary)) {
>  		ret =3D PTR_ERR(primary);
>  		goto fail;
> @@ -253,7 +258,11 @@ int intel_crtc_init(struct drm_i915_private *dev_pri=
v, enum pipe pipe)
>  	for_each_sprite(dev_priv, pipe, sprite) {
>  		struct intel_plane *plane;
>  =

> -		plane =3D intel_sprite_plane_create(dev_priv, pipe, sprite);
> +		if (INTEL_GEN(dev_priv) >=3D 9)
> +			plane =3D skl_universal_plane_create(dev_priv, pipe,
> +							   PLANE_SPRITE0 + sprite);
> +		else
> +			plane =3D intel_sprite_plane_create(dev_priv, pipe, sprite);
>  		if (IS_ERR(plane)) {
>  			ret =3D PTR_ERR(plane);
>  			goto fail;
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 28877a31adc0..f4746c1edabe 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -54,6 +54,7 @@
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vrr.h"
> +#include "skl_universal_plane.h"
>  =

>  static const u8 index_to_dp_signal_levels[] =3D {
>  	[0] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_0,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 92c14f3f0abf..a259ca5433f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -94,6 +94,7 @@
>  #include "intel_tc.h"
>  #include "intel_vga.h"
>  #include "i9xx_plane.h"
> +#include "skl_universal_plane.h"
>  =

>  static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  				struct intel_crtc_state *pipe_config);
> @@ -116,7 +117,6 @@ static void vlv_prepare_pll(struct intel_crtc *crtc,
>  			    const struct intel_crtc_state *pipe_config);
>  static void chv_prepare_pll(struct intel_crtc *crtc,
>  			    const struct intel_crtc_state *pipe_config);
> -static void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
>  static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
>  static void intel_modeset_setup_hw_state(struct drm_device *dev,
>  					 struct drm_modeset_acquire_ctx *ctx);
> @@ -1082,32 +1082,6 @@ static unsigned int intel_tile_size(const struct d=
rm_i915_private *dev_priv)
>  	return IS_GEN(dev_priv, 2) ? 2048 : 4096;
>  }
>  =

> -static bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
> -{
> -	if (!is_ccs_modifier(fb->modifier))
> -		return false;
> -
> -	return plane >=3D fb->format->num_planes / 2;
> -}
> -
> -static bool is_gen12_ccs_modifier(u64 modifier)
> -{
> -	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> -	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
> -	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
> -}
> -
> -static bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int pla=
ne)
> -{
> -	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
> -}
> -
> -static bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int =
plane)
> -{
> -	return fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC &&
> -	       plane =3D=3D 2;
> -}
> -
>  static bool is_aux_plane(const struct drm_framebuffer *fb, int plane)
>  {
>  	if (is_ccs_modifier(fb->modifier))
> @@ -1116,38 +1090,6 @@ static bool is_aux_plane(const struct drm_framebuf=
fer *fb, int plane)
>  	return plane =3D=3D 1;
>  }
>  =

> -static int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_=
plane)
> -{
> -	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
> -		    (main_plane && main_plane >=3D fb->format->num_planes / 2));
> -
> -	return fb->format->num_planes / 2 + main_plane;
> -}
> -
> -static int ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_p=
lane)
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
> -int intel_main_to_aux_plane(const struct drm_framebuffer *fb, int main_p=
lane)
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
>  bool
>  intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
>  				    u64 modifier)
> @@ -1163,7 +1105,7 @@ static bool is_semiplanar_uv_plane(const struct drm=
_framebuffer *fb,
>  	       color_plane =3D=3D 1;
>  }
>  =

> -static unsigned int
> +unsigned int
>  intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> @@ -1217,7 +1159,7 @@ intel_tile_width_bytes(const struct drm_framebuffer=
 *fb, int color_plane)
>  	}
>  }
>  =

> -static unsigned int
> +unsigned int
>  intel_tile_height(const struct drm_framebuffer *fb, int color_plane)
>  {
>  	if (is_gen12_ccs_plane(fb, color_plane))
> @@ -1322,8 +1264,8 @@ static bool has_async_flips(struct drm_i915_private=
 *i915)
>  	return INTEL_GEN(i915) >=3D 5;
>  }
>  =

> -static unsigned int intel_surf_alignment(const struct drm_framebuffer *f=
b,
> -					 int color_plane)
> +unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
> +				  int color_plane)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
>  =

> @@ -1590,10 +1532,10 @@ static u32 intel_adjust_aligned_offset(int *x, in=
t *y,
>   * Adjust the tile offset by moving the difference into
>   * the x/y offsets.
>   */
> -static u32 intel_plane_adjust_aligned_offset(int *x, int *y,
> -					     const struct intel_plane_state *state,
> -					     int color_plane,
> -					     u32 old_offset, u32 new_offset)
> +u32 intel_plane_adjust_aligned_offset(int *x, int *y,
> +				      const struct intel_plane_state *state,
> +				      int color_plane,
> +				      u32 old_offset, u32 new_offset)
>  {
>  	return intel_adjust_aligned_offset(x, y, state->hw.fb, color_plane,
>  					   state->hw.rotation,
> @@ -1892,7 +1834,7 @@ bool is_ccs_modifier(u64 modifier)
>  =

>  static int gen12_ccs_aux_stride(struct drm_framebuffer *fb, int ccs_plan=
e)
>  {
> -	return DIV_ROUND_UP(fb->pitches[ccs_to_main_plane(fb, ccs_plane)],
> +	return DIV_ROUND_UP(fb->pitches[skl_ccs_to_main_plane(fb, ccs_plane)],
>  			    512) * 64;
>  }
>  =

> @@ -2050,7 +1992,7 @@ static bool intel_plane_needs_remap(const struct in=
tel_plane_state *plane_state)
>  	return stride > max_stride;
>  }
>  =

> -static void
> +void
>  intel_fb_plane_get_subsampling(int *hsub, int *vsub,
>  			       const struct drm_framebuffer *fb,
>  			       int color_plane)
> @@ -2075,7 +2017,7 @@ intel_fb_plane_get_subsampling(int *hsub, int *vsub,
>  		return;
>  	}
>  =

> -	main_plane =3D ccs_to_main_plane(fb, color_plane);
> +	main_plane =3D skl_ccs_to_main_plane(fb, color_plane);
>  	*hsub =3D drm_format_info_block_width(fb->format, color_plane) /
>  		drm_format_info_block_width(fb->format, main_plane);
>  =

> @@ -2115,7 +2057,7 @@ intel_fb_check_ccs_xy(struct drm_framebuffer *fb, i=
nt ccs_plane, int x, int y)
>  	ccs_x =3D (x * hsub) % tile_width;
>  	ccs_y =3D (y * vsub) % tile_height;
>  =

> -	main_plane =3D ccs_to_main_plane(fb, ccs_plane);
> +	main_plane =3D skl_ccs_to_main_plane(fb, ccs_plane);
>  	main_x =3D intel_fb->normal[main_plane].x % tile_width;
>  	main_y =3D intel_fb->normal[main_plane].y % tile_height;
>  =

> @@ -2141,7 +2083,7 @@ static void
>  intel_fb_plane_dims(int *w, int *h, struct drm_framebuffer *fb, int colo=
r_plane)
>  {
>  	int main_plane =3D is_ccs_plane(fb, color_plane) ?
> -			 ccs_to_main_plane(fb, color_plane) : 0;
> +			 skl_ccs_to_main_plane(fb, color_plane) : 0;
>  	int main_hsub, main_vsub;
>  	int hsub, vsub;
>  =

> @@ -2528,73 +2470,6 @@ static int i9xx_format_to_fourcc(int format)
>  	}
>  }
>  =

> -int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
> -{
> -	switch (format) {
> -	case PLANE_CTL_FORMAT_RGB_565:
> -		return DRM_FORMAT_RGB565;
> -	case PLANE_CTL_FORMAT_NV12:
> -		return DRM_FORMAT_NV12;
> -	case PLANE_CTL_FORMAT_XYUV:
> -		return DRM_FORMAT_XYUV8888;
> -	case PLANE_CTL_FORMAT_P010:
> -		return DRM_FORMAT_P010;
> -	case PLANE_CTL_FORMAT_P012:
> -		return DRM_FORMAT_P012;
> -	case PLANE_CTL_FORMAT_P016:
> -		return DRM_FORMAT_P016;
> -	case PLANE_CTL_FORMAT_Y210:
> -		return DRM_FORMAT_Y210;
> -	case PLANE_CTL_FORMAT_Y212:
> -		return DRM_FORMAT_Y212;
> -	case PLANE_CTL_FORMAT_Y216:
> -		return DRM_FORMAT_Y216;
> -	case PLANE_CTL_FORMAT_Y410:
> -		return DRM_FORMAT_XVYU2101010;
> -	case PLANE_CTL_FORMAT_Y412:
> -		return DRM_FORMAT_XVYU12_16161616;
> -	case PLANE_CTL_FORMAT_Y416:
> -		return DRM_FORMAT_XVYU16161616;
> -	default:
> -	case PLANE_CTL_FORMAT_XRGB_8888:
> -		if (rgb_order) {
> -			if (alpha)
> -				return DRM_FORMAT_ABGR8888;
> -			else
> -				return DRM_FORMAT_XBGR8888;
> -		} else {
> -			if (alpha)
> -				return DRM_FORMAT_ARGB8888;
> -			else
> -				return DRM_FORMAT_XRGB8888;
> -		}
> -	case PLANE_CTL_FORMAT_XRGB_2101010:
> -		if (rgb_order) {
> -			if (alpha)
> -				return DRM_FORMAT_ABGR2101010;
> -			else
> -				return DRM_FORMAT_XBGR2101010;
> -		} else {
> -			if (alpha)
> -				return DRM_FORMAT_ARGB2101010;
> -			else
> -				return DRM_FORMAT_XRGB2101010;
> -		}
> -	case PLANE_CTL_FORMAT_XRGB_16161616F:
> -		if (rgb_order) {
> -			if (alpha)
> -				return DRM_FORMAT_ABGR16161616F;
> -			else
> -				return DRM_FORMAT_XBGR16161616F;
> -		} else {
> -			if (alpha)
> -				return DRM_FORMAT_ARGB16161616F;
> -			else
> -				return DRM_FORMAT_XRGB16161616F;
> -		}
> -	}
> -}
> -
>  static struct i915_vma *
>  initial_plane_vma(struct drm_i915_private *i915,
>  		  struct intel_initial_plane_config *plane_config)
> @@ -2899,52 +2774,6 @@ intel_find_initial_plane_obj(struct intel_crtc *in=
tel_crtc,
>  		  &to_intel_frontbuffer(fb)->bits);
>  }
>  =

> -
> -static bool
> -skl_check_main_ccs_coordinates(struct intel_plane_state *plane_state,
> -			       int main_x, int main_y, u32 main_offset,
> -			       int ccs_plane)
> -{
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int aux_x =3D plane_state->color_plane[ccs_plane].x;
> -	int aux_y =3D plane_state->color_plane[ccs_plane].y;
> -	u32 aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> -	u32 alignment =3D intel_surf_alignment(fb, ccs_plane);
> -	int hsub;
> -	int vsub;
> -
> -	intel_fb_plane_get_subsampling(&hsub, &vsub, fb, ccs_plane);
> -	while (aux_offset >=3D main_offset && aux_y <=3D main_y) {
> -		int x, y;
> -
> -		if (aux_x =3D=3D main_x && aux_y =3D=3D main_y)
> -			break;
> -
> -		if (aux_offset =3D=3D 0)
> -			break;
> -
> -		x =3D aux_x / hsub;
> -		y =3D aux_y / vsub;
> -		aux_offset =3D intel_plane_adjust_aligned_offset(&x, &y,
> -							       plane_state,
> -							       ccs_plane,
> -							       aux_offset,
> -							       aux_offset -
> -								alignment);
> -		aux_x =3D x * hsub + aux_x % hsub;
> -		aux_y =3D y * vsub + aux_y % vsub;
> -	}
> -
> -	if (aux_x !=3D main_x || aux_y !=3D main_y)
> -		return false;
> -
> -	plane_state->color_plane[ccs_plane].offset =3D aux_offset;
> -	plane_state->color_plane[ccs_plane].x =3D aux_x;
> -	plane_state->color_plane[ccs_plane].y =3D aux_y;
> -
> -	return true;
> -}
> -
>  unsigned int
>  intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
>  {
> @@ -2956,310 +2785,6 @@ intel_plane_fence_y_offset(const struct intel_pla=
ne_state *plane_state)
>  	return y;
>  }
>  =

> -static int intel_plane_min_width(struct intel_plane *plane,
> -				 const struct drm_framebuffer *fb,
> -				 int color_plane,
> -				 unsigned int rotation)
> -{
> -	if (plane->min_width)
> -		return plane->min_width(fb, color_plane, rotation);
> -	else
> -		return 1;
> -}
> -
> -static int intel_plane_max_width(struct intel_plane *plane,
> -				 const struct drm_framebuffer *fb,
> -				 int color_plane,
> -				 unsigned int rotation)
> -{
> -	if (plane->max_width)
> -		return plane->max_width(fb, color_plane, rotation);
> -	else
> -		return INT_MAX;
> -}
> -
> -static int intel_plane_max_height(struct intel_plane *plane,
> -				  const struct drm_framebuffer *fb,
> -				  int color_plane,
> -				  unsigned int rotation)
> -{
> -	if (plane->max_height)
> -		return plane->max_height(fb, color_plane, rotation);
> -	else
> -		return INT_MAX;
> -}
> -
> -int skl_calc_main_surface_offset(const struct intel_plane_state *plane_s=
tate,
> -				 int *x, int *y, u32 *offset)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	const int aux_plane =3D intel_main_to_aux_plane(fb, 0);
> -	const u32 aux_offset =3D plane_state->color_plane[aux_plane].offset;
> -	const u32 alignment =3D intel_surf_alignment(fb, 0);
> -	const int w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> -
> -	intel_add_fb_offsets(x, y, plane_state, 0);
> -	*offset =3D intel_plane_compute_aligned_offset(x, y, plane_state, 0);
> -	if (drm_WARN_ON(&dev_priv->drm, alignment && !is_power_of_2(alignment)))
> -		return -EINVAL;
> -
> -	/*
> -	 * AUX surface offset is specified as the distance from the
> -	 * main surface offset, and it must be non-negative. Make
> -	 * sure that is what we will get.
> -	 */
> -	if (aux_plane && *offset > aux_offset)
> -		*offset =3D intel_plane_adjust_aligned_offset(x, y, plane_state, 0,
> -							    *offset,
> -							    aux_offset & ~(alignment - 1));
> -
> -	/*
> -	 * When using an X-tiled surface, the plane blows up
> -	 * if the x offset + width exceed the stride.
> -	 *
> -	 * TODO: linear and Y-tiled seem fine, Yf untested,
> -	 */
> -	if (fb->modifier =3D=3D I915_FORMAT_MOD_X_TILED) {
> -		int cpp =3D fb->format->cpp[0];
> -
> -		while ((*x + w) * cpp > plane_state->color_plane[0].stride) {
> -			if (*offset =3D=3D 0) {
> -				drm_dbg_kms(&dev_priv->drm,
> -					    "Unable to find suitable display surface offset due to X-tiling=
\n");
> -				return -EINVAL;
> -			}
> -
> -			*offset =3D intel_plane_adjust_aligned_offset(x, y, plane_state, 0,
> -								    *offset,
> -								    *offset - alignment);
> -		}
> -	}
> -
> -	return 0;
> -}
> -
> -static int skl_check_main_surface(struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	const unsigned int rotation =3D plane_state->hw.rotation;
> -	int x =3D plane_state->uapi.src.x1 >> 16;
> -	int y =3D plane_state->uapi.src.y1 >> 16;
> -	const int w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> -	const int h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> -	const int min_width =3D intel_plane_min_width(plane, fb, 0, rotation);
> -	const int max_width =3D intel_plane_max_width(plane, fb, 0, rotation);
> -	const int max_height =3D intel_plane_max_height(plane, fb, 0, rotation);
> -	const int aux_plane =3D intel_main_to_aux_plane(fb, 0);
> -	const u32 alignment =3D intel_surf_alignment(fb, 0);
> -	u32 offset;
> -	int ret;
> -
> -	if (w > max_width || w < min_width || h > max_height) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "requested Y/RGB source size %dx%d outside limits (min: %dx1 max:=
 %dx%d)\n",
> -			    w, h, min_width, max_width, max_height);
> -		return -EINVAL;
> -	}
> -
> -	ret =3D skl_calc_main_surface_offset(plane_state, &x, &y, &offset);
> -	if (ret)
> -		return ret;
> -
> -	/*
> -	 * CCS AUX surface doesn't have its own x/y offsets, we must make sure
> -	 * they match with the main surface x/y offsets.
> -	 */
> -	if (is_ccs_modifier(fb->modifier)) {
> -		while (!skl_check_main_ccs_coordinates(plane_state, x, y,
> -						       offset, aux_plane)) {
> -			if (offset =3D=3D 0)
> -				break;
> -
> -			offset =3D intel_plane_adjust_aligned_offset(&x, &y, plane_state, 0,
> -								   offset, offset - alignment);
> -		}
> -
> -		if (x !=3D plane_state->color_plane[aux_plane].x ||
> -		    y !=3D plane_state->color_plane[aux_plane].y) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "Unable to find suitable display surface offset due to CCS\n");
> -			return -EINVAL;
> -		}
> -	}
> -
> -	drm_WARN_ON(&dev_priv->drm, x > 8191 || y > 8191);
> -
> -	plane_state->color_plane[0].offset =3D offset;
> -	plane_state->color_plane[0].x =3D x;
> -	plane_state->color_plane[0].y =3D y;
> -
> -	/*
> -	 * Put the final coordinates back so that the src
> -	 * coordinate checks will see the right values.
> -	 */
> -	drm_rect_translate_to(&plane_state->uapi.src,
> -			      x << 16, y << 16);
> -
> -	return 0;
> -}
> -
> -static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_st=
ate)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	unsigned int rotation =3D plane_state->hw.rotation;
> -	int uv_plane =3D 1;
> -	int max_width =3D intel_plane_max_width(plane, fb, uv_plane, rotation);
> -	int max_height =3D intel_plane_max_height(plane, fb, uv_plane, rotation=
);
> -	int x =3D plane_state->uapi.src.x1 >> 17;
> -	int y =3D plane_state->uapi.src.y1 >> 17;
> -	int w =3D drm_rect_width(&plane_state->uapi.src) >> 17;
> -	int h =3D drm_rect_height(&plane_state->uapi.src) >> 17;
> -	u32 offset;
> -
> -	/* FIXME not quite sure how/if these apply to the chroma plane */
> -	if (w > max_width || h > max_height) {
> -		drm_dbg_kms(&i915->drm,
> -			    "CbCr source size %dx%d too big (limit %dx%d)\n",
> -			    w, h, max_width, max_height);
> -		return -EINVAL;
> -	}
> -
> -	intel_add_fb_offsets(&x, &y, plane_state, uv_plane);
> -	offset =3D intel_plane_compute_aligned_offset(&x, &y,
> -						    plane_state, uv_plane);
> -
> -	if (is_ccs_modifier(fb->modifier)) {
> -		int ccs_plane =3D main_to_ccs_plane(fb, uv_plane);
> -		u32 aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> -		u32 alignment =3D intel_surf_alignment(fb, uv_plane);
> -
> -		if (offset > aux_offset)
> -			offset =3D intel_plane_adjust_aligned_offset(&x, &y,
> -								   plane_state,
> -								   uv_plane,
> -								   offset,
> -								   aux_offset & ~(alignment - 1));
> -
> -		while (!skl_check_main_ccs_coordinates(plane_state, x, y,
> -						       offset, ccs_plane)) {
> -			if (offset =3D=3D 0)
> -				break;
> -
> -			offset =3D intel_plane_adjust_aligned_offset(&x, &y,
> -								   plane_state,
> -								   uv_plane,
> -								   offset, offset - alignment);
> -		}
> -
> -		if (x !=3D plane_state->color_plane[ccs_plane].x ||
> -		    y !=3D plane_state->color_plane[ccs_plane].y) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Unable to find suitable display surface offset due to CCS\n");
> -			return -EINVAL;
> -		}
> -	}
> -
> -	drm_WARN_ON(&i915->drm, x > 8191 || y > 8191);
> -
> -	plane_state->color_plane[uv_plane].offset =3D offset;
> -	plane_state->color_plane[uv_plane].x =3D x;
> -	plane_state->color_plane[uv_plane].y =3D y;
> -
> -	return 0;
> -}
> -
> -static int skl_check_ccs_aux_surface(struct intel_plane_state *plane_sta=
te)
> -{
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int src_x =3D plane_state->uapi.src.x1 >> 16;
> -	int src_y =3D plane_state->uapi.src.y1 >> 16;
> -	u32 offset;
> -	int ccs_plane;
> -
> -	for (ccs_plane =3D 0; ccs_plane < fb->format->num_planes; ccs_plane++) {
> -		int main_hsub, main_vsub;
> -		int hsub, vsub;
> -		int x, y;
> -
> -		if (!is_ccs_plane(fb, ccs_plane) ||
> -		    is_gen12_ccs_cc_plane(fb, ccs_plane))
> -			continue;
> -
> -		intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb,
> -					       ccs_to_main_plane(fb, ccs_plane));
> -		intel_fb_plane_get_subsampling(&hsub, &vsub, fb, ccs_plane);
> -
> -		hsub *=3D main_hsub;
> -		vsub *=3D main_vsub;
> -		x =3D src_x / hsub;
> -		y =3D src_y / vsub;
> -
> -		intel_add_fb_offsets(&x, &y, plane_state, ccs_plane);
> -
> -		offset =3D intel_plane_compute_aligned_offset(&x, &y,
> -							    plane_state,
> -							    ccs_plane);
> -
> -		plane_state->color_plane[ccs_plane].offset =3D offset;
> -		plane_state->color_plane[ccs_plane].x =3D (x * hsub +
> -							 src_x % hsub) /
> -							main_hsub;
> -		plane_state->color_plane[ccs_plane].y =3D (y * vsub +
> -							 src_y % vsub) /
> -							main_vsub;
> -	}
> -
> -	return 0;
> -}
> -
> -int skl_check_plane_surface(struct intel_plane_state *plane_state)
> -{
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int ret, i;
> -
> -	ret =3D intel_plane_compute_gtt(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	if (!plane_state->uapi.visible)
> -		return 0;
> -
> -	/*
> -	 * Handle the AUX surface first since the main surface setup depends on
> -	 * it.
> -	 */
> -	if (is_ccs_modifier(fb->modifier)) {
> -		ret =3D skl_check_ccs_aux_surface(plane_state);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	if (intel_format_info_is_yuv_semiplanar(fb->format,
> -						fb->modifier)) {
> -		ret =3D skl_check_nv12_aux_surface(plane_state);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	for (i =3D fb->format->num_planes; i < ARRAY_SIZE(plane_state->color_pl=
ane); i++) {
> -		plane_state->color_plane[i].offset =3D 0;
> -		plane_state->color_plane[i].x =3D 0;
> -		plane_state->color_plane[i].y =3D 0;
> -	}
> -
> -	ret =3D skl_check_main_surface(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	return 0;
> -}
> -
>  static void skl_detach_scaler(struct intel_crtc *intel_crtc, int id)
>  {
>  	struct drm_device *dev =3D intel_crtc->base.dev;
> @@ -3292,307 +2817,6 @@ static void skl_detach_scalers(const struct intel=
_crtc_state *crtc_state)
>  	}
>  }
>  =

> -static unsigned int skl_plane_stride_mult(const struct drm_framebuffer *=
fb,
> -					  int color_plane, unsigned int rotation)
> -{
> -	/*
> -	 * The stride is either expressed as a multiple of 64 bytes chunks for
> -	 * linear buffers or in number of tiles for tiled buffers.
> -	 */
> -	if (is_surface_linear(fb, color_plane))
> -		return 64;
> -	else if (drm_rotation_90_or_270(rotation))
> -		return intel_tile_height(fb, color_plane);
> -	else
> -		return intel_tile_width_bytes(fb, color_plane);
> -}
> -
> -u32 skl_plane_stride(const struct intel_plane_state *plane_state,
> -		     int color_plane)
> -{
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	unsigned int rotation =3D plane_state->hw.rotation;
> -	u32 stride =3D plane_state->color_plane[color_plane].stride;
> -
> -	if (color_plane >=3D fb->format->num_planes)
> -		return 0;
> -
> -	return stride / skl_plane_stride_mult(fb, color_plane, rotation);
> -}
> -
> -static u32 skl_plane_ctl_format(u32 pixel_format)
> -{
> -	switch (pixel_format) {
> -	case DRM_FORMAT_C8:
> -		return PLANE_CTL_FORMAT_INDEXED;
> -	case DRM_FORMAT_RGB565:
> -		return PLANE_CTL_FORMAT_RGB_565;
> -	case DRM_FORMAT_XBGR8888:
> -	case DRM_FORMAT_ABGR8888:
> -		return PLANE_CTL_FORMAT_XRGB_8888 | PLANE_CTL_ORDER_RGBX;
> -	case DRM_FORMAT_XRGB8888:
> -	case DRM_FORMAT_ARGB8888:
> -		return PLANE_CTL_FORMAT_XRGB_8888;
> -	case DRM_FORMAT_XBGR2101010:
> -	case DRM_FORMAT_ABGR2101010:
> -		return PLANE_CTL_FORMAT_XRGB_2101010 | PLANE_CTL_ORDER_RGBX;
> -	case DRM_FORMAT_XRGB2101010:
> -	case DRM_FORMAT_ARGB2101010:
> -		return PLANE_CTL_FORMAT_XRGB_2101010;
> -	case DRM_FORMAT_XBGR16161616F:
> -	case DRM_FORMAT_ABGR16161616F:
> -		return PLANE_CTL_FORMAT_XRGB_16161616F | PLANE_CTL_ORDER_RGBX;
> -	case DRM_FORMAT_XRGB16161616F:
> -	case DRM_FORMAT_ARGB16161616F:
> -		return PLANE_CTL_FORMAT_XRGB_16161616F;
> -	case DRM_FORMAT_XYUV8888:
> -		return PLANE_CTL_FORMAT_XYUV;
> -	case DRM_FORMAT_YUYV:
> -		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YUYV;
> -	case DRM_FORMAT_YVYU:
> -		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YVYU;
> -	case DRM_FORMAT_UYVY:
> -		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_UYVY;
> -	case DRM_FORMAT_VYUY:
> -		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_VYUY;
> -	case DRM_FORMAT_NV12:
> -		return PLANE_CTL_FORMAT_NV12;
> -	case DRM_FORMAT_P010:
> -		return PLANE_CTL_FORMAT_P010;
> -	case DRM_FORMAT_P012:
> -		return PLANE_CTL_FORMAT_P012;
> -	case DRM_FORMAT_P016:
> -		return PLANE_CTL_FORMAT_P016;
> -	case DRM_FORMAT_Y210:
> -		return PLANE_CTL_FORMAT_Y210;
> -	case DRM_FORMAT_Y212:
> -		return PLANE_CTL_FORMAT_Y212;
> -	case DRM_FORMAT_Y216:
> -		return PLANE_CTL_FORMAT_Y216;
> -	case DRM_FORMAT_XVYU2101010:
> -		return PLANE_CTL_FORMAT_Y410;
> -	case DRM_FORMAT_XVYU12_16161616:
> -		return PLANE_CTL_FORMAT_Y412;
> -	case DRM_FORMAT_XVYU16161616:
> -		return PLANE_CTL_FORMAT_Y416;
> -	default:
> -		MISSING_CASE(pixel_format);
> -	}
> -
> -	return 0;
> -}
> -
> -static u32 skl_plane_ctl_alpha(const struct intel_plane_state *plane_sta=
te)
> -{
> -	if (!plane_state->hw.fb->format->has_alpha)
> -		return PLANE_CTL_ALPHA_DISABLE;
> -
> -	switch (plane_state->hw.pixel_blend_mode) {
> -	case DRM_MODE_BLEND_PIXEL_NONE:
> -		return PLANE_CTL_ALPHA_DISABLE;
> -	case DRM_MODE_BLEND_PREMULTI:
> -		return PLANE_CTL_ALPHA_SW_PREMULTIPLY;
> -	case DRM_MODE_BLEND_COVERAGE:
> -		return PLANE_CTL_ALPHA_HW_PREMULTIPLY;
> -	default:
> -		MISSING_CASE(plane_state->hw.pixel_blend_mode);
> -		return PLANE_CTL_ALPHA_DISABLE;
> -	}
> -}
> -
> -static u32 glk_plane_color_ctl_alpha(const struct intel_plane_state *pla=
ne_state)
> -{
> -	if (!plane_state->hw.fb->format->has_alpha)
> -		return PLANE_COLOR_ALPHA_DISABLE;
> -
> -	switch (plane_state->hw.pixel_blend_mode) {
> -	case DRM_MODE_BLEND_PIXEL_NONE:
> -		return PLANE_COLOR_ALPHA_DISABLE;
> -	case DRM_MODE_BLEND_PREMULTI:
> -		return PLANE_COLOR_ALPHA_SW_PREMULTIPLY;
> -	case DRM_MODE_BLEND_COVERAGE:
> -		return PLANE_COLOR_ALPHA_HW_PREMULTIPLY;
> -	default:
> -		MISSING_CASE(plane_state->hw.pixel_blend_mode);
> -		return PLANE_COLOR_ALPHA_DISABLE;
> -	}
> -}
> -
> -static u32 skl_plane_ctl_tiling(u64 fb_modifier)
> -{
> -	switch (fb_modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -		break;
> -	case I915_FORMAT_MOD_X_TILED:
> -		return PLANE_CTL_TILED_X;
> -	case I915_FORMAT_MOD_Y_TILED:
> -		return PLANE_CTL_TILED_Y;
> -	case I915_FORMAT_MOD_Y_TILED_CCS:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> -		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> -		return PLANE_CTL_TILED_Y |
> -		       PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
> -		       PLANE_CTL_CLEAR_COLOR_DISABLE;
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> -		return PLANE_CTL_TILED_Y | PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE;
> -	case I915_FORMAT_MOD_Yf_TILED:
> -		return PLANE_CTL_TILED_YF;
> -	case I915_FORMAT_MOD_Yf_TILED_CCS:
> -		return PLANE_CTL_TILED_YF | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> -	default:
> -		MISSING_CASE(fb_modifier);
> -	}
> -
> -	return 0;
> -}
> -
> -static u32 skl_plane_ctl_rotate(unsigned int rotate)
> -{
> -	switch (rotate) {
> -	case DRM_MODE_ROTATE_0:
> -		break;
> -	/*
> -	 * DRM_MODE_ROTATE_ is counter clockwise to stay compatible with Xrandr
> -	 * while i915 HW rotation is clockwise, thats why this swapping.
> -	 */
> -	case DRM_MODE_ROTATE_90:
> -		return PLANE_CTL_ROTATE_270;
> -	case DRM_MODE_ROTATE_180:
> -		return PLANE_CTL_ROTATE_180;
> -	case DRM_MODE_ROTATE_270:
> -		return PLANE_CTL_ROTATE_90;
> -	default:
> -		MISSING_CASE(rotate);
> -	}
> -
> -	return 0;
> -}
> -
> -static u32 cnl_plane_ctl_flip(unsigned int reflect)
> -{
> -	switch (reflect) {
> -	case 0:
> -		break;
> -	case DRM_MODE_REFLECT_X:
> -		return PLANE_CTL_FLIP_HORIZONTAL;
> -	case DRM_MODE_REFLECT_Y:
> -	default:
> -		MISSING_CASE(reflect);
> -	}
> -
> -	return 0;
> -}
> -
> -u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	u32 plane_ctl =3D 0;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> -		return plane_ctl;
> -
> -	if (crtc_state->gamma_enable)
> -		plane_ctl |=3D PLANE_CTL_PIPE_GAMMA_ENABLE;
> -
> -	if (crtc_state->csc_enable)
> -		plane_ctl |=3D PLANE_CTL_PIPE_CSC_ENABLE;
> -
> -	return plane_ctl;
> -}
> -
> -u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
> -		  const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(plane_state->uapi.plane->dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	unsigned int rotation =3D plane_state->hw.rotation;
> -	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> -	u32 plane_ctl;
> -
> -	plane_ctl =3D PLANE_CTL_ENABLE;
> -
> -	if (INTEL_GEN(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
> -		plane_ctl |=3D skl_plane_ctl_alpha(plane_state);
> -		plane_ctl |=3D PLANE_CTL_PLANE_GAMMA_DISABLE;
> -
> -		if (plane_state->hw.color_encoding =3D=3D DRM_COLOR_YCBCR_BT709)
> -			plane_ctl |=3D PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709;
> -
> -		if (plane_state->hw.color_range =3D=3D DRM_COLOR_YCBCR_FULL_RANGE)
> -			plane_ctl |=3D PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE;
> -	}
> -
> -	plane_ctl |=3D skl_plane_ctl_format(fb->format->format);
> -	plane_ctl |=3D skl_plane_ctl_tiling(fb->modifier);
> -	plane_ctl |=3D skl_plane_ctl_rotate(rotation & DRM_MODE_ROTATE_MASK);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10)
> -		plane_ctl |=3D cnl_plane_ctl_flip(rotation &
> -						DRM_MODE_REFLECT_MASK);
> -
> -	if (key->flags & I915_SET_COLORKEY_DESTINATION)
> -		plane_ctl |=3D PLANE_CTL_KEY_ENABLE_DESTINATION;
> -	else if (key->flags & I915_SET_COLORKEY_SOURCE)
> -		plane_ctl |=3D PLANE_CTL_KEY_ENABLE_SOURCE;
> -
> -	return plane_ctl;
> -}
> -
> -u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	u32 plane_color_ctl =3D 0;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 11)
> -		return plane_color_ctl;
> -
> -	if (crtc_state->gamma_enable)
> -		plane_color_ctl |=3D PLANE_COLOR_PIPE_GAMMA_ENABLE;
> -
> -	if (crtc_state->csc_enable)
> -		plane_color_ctl |=3D PLANE_COLOR_PIPE_CSC_ENABLE;
> -
> -	return plane_color_ctl;
> -}
> -
> -u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
> -			const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(plane_state->uapi.plane->dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	u32 plane_color_ctl =3D 0;
> -
> -	plane_color_ctl |=3D PLANE_COLOR_PLANE_GAMMA_DISABLE;
> -	plane_color_ctl |=3D glk_plane_color_ctl_alpha(plane_state);
> -
> -	if (fb->format->is_yuv && !icl_is_hdr_plane(dev_priv, plane->id)) {
> -		switch (plane_state->hw.color_encoding) {
> -		case DRM_COLOR_YCBCR_BT709:
> -			plane_color_ctl |=3D PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> -			break;
> -		case DRM_COLOR_YCBCR_BT2020:
> -			plane_color_ctl |=3D
> -				PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> -			break;
> -		default:
> -			plane_color_ctl |=3D
> -				PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
> -		}
> -		if (plane_state->hw.color_range =3D=3D DRM_COLOR_YCBCR_FULL_RANGE)
> -			plane_color_ctl |=3D PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> -	} else if (fb->format->is_yuv) {
> -		plane_color_ctl |=3D PLANE_COLOR_INPUT_CSC_ENABLE;
> -		if (plane_state->hw.color_range =3D=3D DRM_COLOR_YCBCR_FULL_RANGE)
> -			plane_color_ctl |=3D PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> -	}
> -
> -	return plane_color_ctl;
> -}
> -
>  static int
>  __intel_display_resume(struct drm_device *dev,
>  		       struct drm_atomic_state *state,
> @@ -8276,150 +7500,6 @@ static void skl_get_pfit_config(struct intel_crtc=
_state *crtc_state)
>  		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);
>  }
>  =

> -static void
> -skl_get_initial_plane_config(struct intel_crtc *crtc,
> -			     struct intel_initial_plane_config *plane_config)
> -{
> -	struct intel_crtc_state *crtc_state =3D to_intel_crtc_state(crtc->base.=
state);
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> -	enum plane_id plane_id =3D plane->id;
> -	enum pipe pipe;
> -	u32 val, base, offset, stride_mult, tiling, alpha;
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
> -	if (crtc_state->bigjoiner) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Unsupported bigjoiner configuration for initial FB\n");
> -		return;
> -	}
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
> -	val =3D intel_de_read(dev_priv, PLANE_CTL(pipe, plane_id));
> -
> -	if (INTEL_GEN(dev_priv) >=3D 11)
> -		pixel_format =3D val & ICL_PLANE_CTL_FORMAT_MASK;
> -	else
> -		pixel_format =3D val & PLANE_CTL_FORMAT_MASK;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> -		alpha =3D intel_de_read(dev_priv,
> -				      PLANE_COLOR_CTL(pipe, plane_id));
> -		alpha &=3D PLANE_COLOR_ALPHA_MASK;
> -	} else {
> -		alpha =3D val & PLANE_CTL_ALPHA_MASK;
> -	}
> -
> -	fourcc =3D skl_format_to_fourcc(pixel_format,
> -				      val & PLANE_CTL_ORDER_RGBX, alpha);
> -	fb->format =3D drm_format_info(fourcc);
> -
> -	tiling =3D val & PLANE_CTL_TILED_MASK;
> -	switch (tiling) {
> -	case PLANE_CTL_TILED_LINEAR:
> -		fb->modifier =3D DRM_FORMAT_MOD_LINEAR;
> -		break;
> -	case PLANE_CTL_TILED_X:
> -		plane_config->tiling =3D I915_TILING_X;
> -		fb->modifier =3D I915_FORMAT_MOD_X_TILED;
> -		break;
> -	case PLANE_CTL_TILED_Y:
> -		plane_config->tiling =3D I915_TILING_Y;
> -		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> -			fb->modifier =3D INTEL_GEN(dev_priv) >=3D 12 ?
> -				I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS :
> -				I915_FORMAT_MOD_Y_TILED_CCS;
> -		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
> -			fb->modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
> -		else
> -			fb->modifier =3D I915_FORMAT_MOD_Y_TILED;
> -		break;
> -	case PLANE_CTL_TILED_YF:
> -		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> -			fb->modifier =3D I915_FORMAT_MOD_Yf_TILED_CCS;
> -		else
> -			fb->modifier =3D I915_FORMAT_MOD_Yf_TILED;
> -		break;
> -	default:
> -		MISSING_CASE(tiling);
> -		goto error;
> -	}
> -
> -	/*
> -	 * DRM_MODE_ROTATE_ is counter clockwise to stay compatible with Xrandr
> -	 * while i915 HW rotation is clockwise, thats why this swapping.
> -	 */
> -	switch (val & PLANE_CTL_ROTATE_MASK) {
> -	case PLANE_CTL_ROTATE_0:
> -		plane_config->rotation =3D DRM_MODE_ROTATE_0;
> -		break;
> -	case PLANE_CTL_ROTATE_90:
> -		plane_config->rotation =3D DRM_MODE_ROTATE_270;
> -		break;
> -	case PLANE_CTL_ROTATE_180:
> -		plane_config->rotation =3D DRM_MODE_ROTATE_180;
> -		break;
> -	case PLANE_CTL_ROTATE_270:
> -		plane_config->rotation =3D DRM_MODE_ROTATE_90;
> -		break;
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10 &&
> -	    val & PLANE_CTL_FLIP_HORIZONTAL)
> -		plane_config->rotation |=3D DRM_MODE_REFLECT_X;
> -
> -	/* 90/270 degree rotation would require extra work */
> -	if (drm_rotation_90_or_270(plane_config->rotation))
> -		goto error;
> -
> -	base =3D intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & 0xfffff0=
00;
> -	plane_config->base =3D base;
> -
> -	offset =3D intel_de_read(dev_priv, PLANE_OFFSET(pipe, plane_id));
> -
> -	val =3D intel_de_read(dev_priv, PLANE_SIZE(pipe, plane_id));
> -	fb->height =3D ((val >> 16) & 0xffff) + 1;
> -	fb->width =3D ((val >> 0) & 0xffff) + 1;
> -
> -	val =3D intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
> -	stride_mult =3D skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
> -	fb->pitches[0] =3D (val & 0x3ff) * stride_mult;
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
> -	return;
> -
> -error:
> -	kfree(intel_fb);
> -}
> -
>  static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index c72e41b61349..3c153eb78092 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -52,6 +52,7 @@ struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_dp;
>  struct intel_encoder;
> +struct intel_initial_plane_config;
>  struct intel_load_detect_pipe;
>  struct intel_plane;
>  struct intel_plane_state;
> @@ -517,7 +518,6 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
>  			    struct intel_link_m_n *m_n,
>  			    bool constant_n, bool fec_enable);
>  bool is_ccs_modifier(u64 modifier);
> -int intel_main_to_aux_plane(const struct drm_framebuffer *fb, int main_p=
lane);
>  void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
>  u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>  			      u32 pixel_format, u64 modifier);
> @@ -629,18 +629,7 @@ u32 skl_scaler_get_filter_select(enum drm_scaling_fi=
lter filter, int set);
>  void skl_scaler_setup_filter(struct drm_i915_private *dev_priv, enum pip=
e pipe,
>  			     int id, int set, enum drm_scaling_filter filter);
>  void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
> -u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
> -			const struct intel_plane_state *plane_state);
> -u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state);
> -u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
> -		  const struct intel_plane_state *plane_state);
> -u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state);
> -u32 skl_plane_stride(const struct intel_plane_state *plane_state,
> -		     int plane);
> -int skl_check_plane_surface(struct intel_plane_state *plane_state);
> -int skl_calc_main_surface_offset(const struct intel_plane_state *plane_s=
tate,
> -				 int *x, int *y, u32 *offset);
> -int skl_format_to_fourcc(int format, bool rgb_order, bool alpha);
> +
>  int bdw_get_pipemisc_bpp(struct intel_crtc *crtc);
>  unsigned int intel_plane_fence_y_offset(const struct intel_plane_state *=
plane_state);
>  =

> @@ -663,6 +652,18 @@ struct intel_encoder *
>  intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
>  			   const struct intel_crtc_state *crtc_state);
>  =

> +unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
> +				  int color_plane);
> +void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
> +				    const struct drm_framebuffer *fb,
> +				    int color_plane);
> +u32 intel_plane_adjust_aligned_offset(int *x, int *y,
> +				      const struct intel_plane_state *state,
> +				      int color_plane,
> +				      u32 old_offset, u32 new_offset);
> +unsigned int intel_tile_width_bytes(const struct drm_framebuffer *fb, in=
t color_plane);
> +unsigned int intel_tile_height(const struct drm_framebuffer *fb, int col=
or_plane);
> +
>  /* modesetting */
>  void intel_modeset_init_hw(struct drm_i915_private *i915);
>  int intel_modeset_init_noirq(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 307ff4b771f4..6183f2f0424b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -37,6 +37,7 @@
>  #include <drm/drm_dp_mst_helper.h>
>  #include <drm/drm_encoder.h>
>  #include <drm/drm_fb_helper.h>
> +#include <drm/drm_fourcc.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_rect.h>
>  #include <drm/drm_vblank.h>
> @@ -1945,4 +1946,30 @@ static inline u32 intel_fdi_link_freq(struct drm_i=
915_private *dev_priv,
>  		return dev_priv->fdi_pll_freq;
>  }
>  =

> +static inline bool is_ccs_plane(const struct drm_framebuffer *fb, int pl=
ane)
> +{
> +	if (!is_ccs_modifier(fb->modifier))
> +		return false;
> +
> +	return plane >=3D fb->format->num_planes / 2;
> +}
> +
> +static inline bool is_gen12_ccs_modifier(u64 modifier)
> +{
> +	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> +	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
> +	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
> +}
> +
> +static inline bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, =
int plane)
> +{
> +	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
> +}
> +
> +static inline bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *f=
b, int plane)
> +{
> +	return fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC &&
> +	       plane =3D=3D 2;
> +}
> +
>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 28423356d53b..bf214d0e2dec 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -32,6 +32,7 @@
>  #include "intel_hdmi.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> +#include "skl_universal_plane.h"
>  =

>  /**
>   * DOC: Panel Self Refresh (PSR/SRD)
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 26025251b038..93f3afc245b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -376,212 +376,7 @@ int intel_plane_check_src_coordinates(struct intel_=
plane_state *plane_state)
>  	return 0;
>  }
>  =

> -static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
> -{
> -	if (HAS_D12_PLANE_MINIMIZATION(i915))
> -		return BIT(PLANE_SPRITE2) | BIT(PLANE_SPRITE3);
> -	else
> -		return BIT(PLANE_SPRITE4) | BIT(PLANE_SPRITE5);
> -}
> -
> -bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
> -			 enum plane_id plane_id)
> -{
> -	return INTEL_GEN(dev_priv) >=3D 11 &&
> -		icl_nv12_y_plane_mask(dev_priv) & BIT(plane_id);
> -}
> -
> -bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id p=
lane_id)
> -{
> -	return INTEL_GEN(dev_priv) >=3D 11 &&
> -		icl_hdr_plane_mask() & BIT(plane_id);
> -}
> -
> -static void
> -skl_plane_ratio(const struct intel_crtc_state *crtc_state,
> -		const struct intel_plane_state *plane_state,
> -		unsigned int *num, unsigned int *den)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane_state->uapi.plane->=
dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -
> -	if (fb->format->cpp[0] =3D=3D 8) {
> -		if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> -			*num =3D 10;
> -			*den =3D 8;
> -		} else {
> -			*num =3D 9;
> -			*den =3D 8;
> -		}
> -	} else {
> -		*num =3D 1;
> -		*den =3D 1;
> -	}
> -}
> -
> -static int skl_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
> -			       const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane_state->uapi.plane->=
dev);
> -	unsigned int num, den;
> -	unsigned int pixel_rate =3D intel_plane_pixel_rate(crtc_state, plane_st=
ate);
> -
> -	skl_plane_ratio(crtc_state, plane_state, &num, &den);
> -
> -	/* two pixels per clock on glk+ */
> -	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> -		den *=3D 2;
> -
> -	return DIV_ROUND_UP(pixel_rate * num, den);
> -}
> -
> -static int skl_plane_max_width(const struct drm_framebuffer *fb,
> -			       int color_plane,
> -			       unsigned int rotation)
> -{
> -	int cpp =3D fb->format->cpp[color_plane];
> -
> -	switch (fb->modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -		/*
> -		 * Validated limit is 4k, but has 5k should
> -		 * work apart from the following features:
> -		 * - Ytile (already limited to 4k)
> -		 * - FP16 (already limited to 4k)
> -		 * - render compression (already limited to 4k)
> -		 * - KVMR sprite and cursor (don't care)
> -		 * - horizontal panning (TODO verify this)
> -		 * - pipe and plane scaling (TODO verify this)
> -		 */
> -		if (cpp =3D=3D 8)
> -			return 4096;
> -		else
> -			return 5120;
> -	case I915_FORMAT_MOD_Y_TILED_CCS:
> -	case I915_FORMAT_MOD_Yf_TILED_CCS:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> -		/* FIXME AUX plane? */
> -	case I915_FORMAT_MOD_Y_TILED:
> -	case I915_FORMAT_MOD_Yf_TILED:
> -		if (cpp =3D=3D 8)
> -			return 2048;
> -		else
> -			return 4096;
> -	default:
> -		MISSING_CASE(fb->modifier);
> -		return 2048;
> -	}
> -}
> -
> -static int glk_plane_max_width(const struct drm_framebuffer *fb,
> -			       int color_plane,
> -			       unsigned int rotation)
> -{
> -	int cpp =3D fb->format->cpp[color_plane];
> -
> -	switch (fb->modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -		if (cpp =3D=3D 8)
> -			return 4096;
> -		else
> -			return 5120;
> -	case I915_FORMAT_MOD_Y_TILED_CCS:
> -	case I915_FORMAT_MOD_Yf_TILED_CCS:
> -		/* FIXME AUX plane? */
> -	case I915_FORMAT_MOD_Y_TILED:
> -	case I915_FORMAT_MOD_Yf_TILED:
> -		if (cpp =3D=3D 8)
> -			return 2048;
> -		else
> -			return 5120;
> -	default:
> -		MISSING_CASE(fb->modifier);
> -		return 2048;
> -	}
> -}
> -
> -static int icl_plane_min_width(const struct drm_framebuffer *fb,
> -			       int color_plane,
> -			       unsigned int rotation)
> -{
> -	/* Wa_14011264657, Wa_14011050563: gen11+ */
> -	switch (fb->format->format) {
> -	case DRM_FORMAT_C8:
> -		return 18;
> -	case DRM_FORMAT_RGB565:
> -		return 10;
> -	case DRM_FORMAT_XRGB8888:
> -	case DRM_FORMAT_XBGR8888:
> -	case DRM_FORMAT_ARGB8888:
> -	case DRM_FORMAT_ABGR8888:
> -	case DRM_FORMAT_XRGB2101010:
> -	case DRM_FORMAT_XBGR2101010:
> -	case DRM_FORMAT_ARGB2101010:
> -	case DRM_FORMAT_ABGR2101010:
> -	case DRM_FORMAT_XVYU2101010:
> -	case DRM_FORMAT_Y212:
> -	case DRM_FORMAT_Y216:
> -		return 6;
> -	case DRM_FORMAT_NV12:
> -		return 20;
> -	case DRM_FORMAT_P010:
> -	case DRM_FORMAT_P012:
> -	case DRM_FORMAT_P016:
> -		return 12;
> -	case DRM_FORMAT_XRGB16161616F:
> -	case DRM_FORMAT_XBGR16161616F:
> -	case DRM_FORMAT_ARGB16161616F:
> -	case DRM_FORMAT_ABGR16161616F:
> -	case DRM_FORMAT_XVYU12_16161616:
> -	case DRM_FORMAT_XVYU16161616:
> -		return 4;
> -	default:
> -		return 1;
> -	}
> -}
> -
> -static int icl_plane_max_width(const struct drm_framebuffer *fb,
> -			       int color_plane,
> -			       unsigned int rotation)
> -{
> -	return 5120;
> -}
> -
> -static int skl_plane_max_height(const struct drm_framebuffer *fb,
> -				int color_plane,
> -				unsigned int rotation)
> -{
> -	return 4096;
> -}
> -
> -static int icl_plane_max_height(const struct drm_framebuffer *fb,
> -				int color_plane,
> -				unsigned int rotation)
> -{
> -	return 4320;
> -}
> -
> -static unsigned int
> -skl_plane_max_stride(struct intel_plane *plane,
> -		     u32 pixel_format, u64 modifier,
> -		     unsigned int rotation)
> -{
> -	const struct drm_format_info *info =3D drm_format_info(pixel_format);
> -	int cpp =3D info->cpp[0];
> -
> -	/*
> -	 * "The stride in bytes must not exceed the
> -	 * of the size of 8K pixels and 32K bytes."
> -	 */
> -	if (drm_rotation_90_or_270(rotation))
> -		return min(8192, 32768 / cpp);
> -	else
> -		return min(8192 * cpp, 32768);
> -}
> -
> -static void
> +void
>  skl_program_scaler(struct intel_plane *plane,
>  		   const struct intel_crtc_state *crtc_state,
>  		   const struct intel_plane_state *plane_state)
> @@ -643,317 +438,6 @@ skl_program_scaler(struct intel_plane *plane,
>  			  (crtc_w << 16) | crtc_h);
>  }
>  =

> -/* Preoffset values for YUV to RGB Conversion */
> -#define PREOFF_YUV_TO_RGB_HI		0x1800
> -#define PREOFF_YUV_TO_RGB_ME		0x0000
> -#define PREOFF_YUV_TO_RGB_LO		0x1800
> -
> -#define  ROFF(x)          (((x) & 0xffff) << 16)
> -#define  GOFF(x)          (((x) & 0xffff) << 0)
> -#define  BOFF(x)          (((x) & 0xffff) << 16)
> -
> -/*
> - * Programs the input color space conversion stage for ICL HDR planes.
> - * Note that it is assumed that this stage always happens after YUV
> - * range correction. Thus, the input to this stage is assumed to be
> - * in full-range YCbCr.
> - */
> -static void
> -icl_program_input_csc(struct intel_plane *plane,
> -		      const struct intel_crtc_state *crtc_state,
> -		      const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum pipe pipe =3D plane->pipe;
> -	enum plane_id plane_id =3D plane->id;
> -
> -	static const u16 input_csc_matrix[][9] =3D {
> -		/*
> -		 * BT.601 full range YCbCr -> full range RGB
> -		 * The matrix required is :
> -		 * [1.000, 0.000, 1.371,
> -		 *  1.000, -0.336, -0.698,
> -		 *  1.000, 1.732, 0.0000]
> -		 */
> -		[DRM_COLOR_YCBCR_BT601] =3D {
> -			0x7AF8, 0x7800, 0x0,
> -			0x8B28, 0x7800, 0x9AC0,
> -			0x0, 0x7800, 0x7DD8,
> -		},
> -		/*
> -		 * BT.709 full range YCbCr -> full range RGB
> -		 * The matrix required is :
> -		 * [1.000, 0.000, 1.574,
> -		 *  1.000, -0.187, -0.468,
> -		 *  1.000, 1.855, 0.0000]
> -		 */
> -		[DRM_COLOR_YCBCR_BT709] =3D {
> -			0x7C98, 0x7800, 0x0,
> -			0x9EF8, 0x7800, 0xAC00,
> -			0x0, 0x7800,  0x7ED8,
> -		},
> -		/*
> -		 * BT.2020 full range YCbCr -> full range RGB
> -		 * The matrix required is :
> -		 * [1.000, 0.000, 1.474,
> -		 *  1.000, -0.1645, -0.5713,
> -		 *  1.000, 1.8814, 0.0000]
> -		 */
> -		[DRM_COLOR_YCBCR_BT2020] =3D {
> -			0x7BC8, 0x7800, 0x0,
> -			0x8928, 0x7800, 0xAA88,
> -			0x0, 0x7800, 0x7F10,
> -		},
> -	};
> -	const u16 *csc =3D input_csc_matrix[plane_state->hw.color_encoding];
> -
> -	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 0),
> -			  ROFF(csc[0]) | GOFF(csc[1]));
> -	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 1),
> -			  BOFF(csc[2]));
> -	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 2),
> -			  ROFF(csc[3]) | GOFF(csc[4]));
> -	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 3),
> -			  BOFF(csc[5]));
> -	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 4),
> -			  ROFF(csc[6]) | GOFF(csc[7]));
> -	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 5),
> -			  BOFF(csc[8]));
> -
> -	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 0),
> -			  PREOFF_YUV_TO_RGB_HI);
> -	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
> -			  PREOFF_YUV_TO_RGB_ME);
> -	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 2),
> -			  PREOFF_YUV_TO_RGB_LO);
> -	intel_de_write_fw(dev_priv,
> -			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 0), 0x0);
> -	intel_de_write_fw(dev_priv,
> -			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 1), 0x0);
> -	intel_de_write_fw(dev_priv,
> -			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
> -}
> -
> -static void
> -skl_plane_async_flip(struct intel_plane *plane,
> -		     const struct intel_crtc_state *crtc_state,
> -		     const struct intel_plane_state *plane_state,
> -		     bool async_flip)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	unsigned long irqflags;
> -	enum plane_id plane_id =3D plane->id;
> -	enum pipe pipe =3D plane->pipe;
> -	u32 surf_addr =3D plane_state->color_plane[0].offset;
> -	u32 plane_ctl =3D plane_state->ctl;
> -
> -	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state);
> -
> -	if (async_flip)
> -		plane_ctl |=3D PLANE_CTL_ASYNC_FLIP;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
> -	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> -			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -}
> -
> -static void
> -skl_program_plane(struct intel_plane *plane,
> -		  const struct intel_crtc_state *crtc_state,
> -		  const struct intel_plane_state *plane_state,
> -		  int color_plane)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum plane_id plane_id =3D plane->id;
> -	enum pipe pipe =3D plane->pipe;
> -	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> -	u32 surf_addr =3D plane_state->color_plane[color_plane].offset;
> -	u32 stride =3D skl_plane_stride(plane_state, color_plane);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int aux_plane =3D intel_main_to_aux_plane(fb, color_plane);
> -	int crtc_x =3D plane_state->uapi.dst.x1;
> -	int crtc_y =3D plane_state->uapi.dst.y1;
> -	u32 x =3D plane_state->color_plane[color_plane].x;
> -	u32 y =3D plane_state->color_plane[color_plane].y;
> -	u32 src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> -	u32 src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> -	u8 alpha =3D plane_state->hw.alpha >> 8;
> -	u32 plane_color_ctl =3D 0, aux_dist =3D 0;
> -	unsigned long irqflags;
> -	u32 keymsk, keymax;
> -	u32 plane_ctl =3D plane_state->ctl;
> -
> -	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> -		plane_color_ctl =3D plane_state->color_ctl |
> -			glk_plane_color_ctl_crtc(crtc_state);
> -
> -	/* Sizes are 0 based */
> -	src_w--;
> -	src_h--;
> -
> -	keymax =3D (key->max_value & 0xffffff) | PLANE_KEYMAX_ALPHA(alpha);
> -
> -	keymsk =3D key->channel_mask & 0x7ffffff;
> -	if (alpha < 0xff)
> -		keymsk |=3D PLANE_KEYMSK_ALPHA_ENABLE;
> -
> -	/* The scaler will handle the output position */
> -	if (plane_state->scaler_id >=3D 0) {
> -		crtc_x =3D 0;
> -		crtc_y =3D 0;
> -	}
> -
> -	if (aux_plane) {
> -		aux_dist =3D plane_state->color_plane[aux_plane].offset - surf_addr;
> -
> -		if (INTEL_GEN(dev_priv) < 12)
> -			aux_dist |=3D skl_plane_stride(plane_state, aux_plane);
> -	}
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
> -	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id), stride);
> -	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
> -			  (crtc_y << 16) | crtc_x);
> -	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
> -			  (src_h << 16) | src_w);
> -
> -	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id), aux_dist);
> -
> -	if (icl_is_hdr_plane(dev_priv, plane_id))
> -		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
> -				  plane_state->cus_ctl);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> -		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
> -				  plane_color_ctl);
> -
> -	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
> -		icl_program_input_csc(plane, crtc_state, plane_state);
> -
> -	if (fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)
> -		intel_uncore_write64_fw(&dev_priv->uncore,
> -					PLANE_CC_VAL(pipe, plane_id), plane_state->ccval);
> -
> -	skl_write_plane_wm(plane, crtc_state);
> -
> -	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id),
> -			  key->min_value);
> -	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), keymsk);
> -	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), keymax);
> -
> -	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
> -			  (y << 16) | x);
> -
> -	if (INTEL_GEN(dev_priv) < 11)
> -		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
> -				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1=
].x);
> -
> -	if (!drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
> -		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, col=
or_plane);
> -
> -	/*
> -	 * The control register self-arms if the plane was previously
> -	 * disabled. Try to make the plane enable atomic by writing
> -	 * the control register just before the surface register.
> -	 */
> -	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> -			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> -
> -	if (plane_state->scaler_id >=3D 0)
> -		skl_program_scaler(plane, crtc_state, plane_state);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -}
> -
> -static void
> -skl_update_plane(struct intel_plane *plane,
> -		 const struct intel_crtc_state *crtc_state,
> -		 const struct intel_plane_state *plane_state)
> -{
> -	int color_plane =3D 0;
> -
> -	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
> -		/* Program the UV plane on planar master */
> -		color_plane =3D 1;
> -
> -	skl_program_plane(plane, crtc_state, plane_state, color_plane);
> -}
> -static void
> -skl_disable_plane(struct intel_plane *plane,
> -		  const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum plane_id plane_id =3D plane->id;
> -	enum pipe pipe =3D plane->pipe;
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
> -	if (icl_is_hdr_plane(dev_priv, plane_id))
> -		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
> -
> -	skl_write_plane_wm(plane, crtc_state);
> -
> -	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
> -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -}
> -
> -static bool
> -skl_plane_get_hw_state(struct intel_plane *plane,
> -		       enum pipe *pipe)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum intel_display_power_domain power_domain;
> -	enum plane_id plane_id =3D plane->id;
> -	intel_wakeref_t wakeref;
> -	bool ret;
> -
> -	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> -	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
> -	if (!wakeref)
> -		return false;
> -
> -	ret =3D intel_de_read(dev_priv, PLANE_CTL(plane->pipe, plane_id)) & PLA=
NE_CTL_ENABLE;
> -
> -	*pipe =3D plane->pipe;
> -
> -	intel_display_power_put(dev_priv, power_domain, wakeref);
> -
> -	return ret;
> -}
> -
> -static void
> -skl_plane_enable_flip_done(struct intel_plane *plane)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> -	enum pipe pipe =3D plane->pipe;
> -
> -	spin_lock_irq(&i915->irq_lock);
> -	bdw_enable_pipe_irq(i915, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
> -	spin_unlock_irq(&i915->irq_lock);
> -}
> -
> -static void
> -skl_plane_disable_flip_done(struct intel_plane *plane)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> -	enum pipe pipe =3D plane->pipe;
> -
> -	spin_lock_irq(&i915->irq_lock);
> -	bdw_disable_pipe_irq(i915, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
> -	spin_unlock_irq(&i915->irq_lock);
> -}
> -
>  static void i9xx_plane_linear_gamma(u16 gamma[8])
>  {
>  	/* The points are not evenly spaced. */
> @@ -2297,253 +1781,19 @@ vlv_sprite_check(struct intel_crtc_state *crtc_s=
tate,
>  	return 0;
>  }
>  =

> -static bool intel_format_is_p01x(u32 format)
> +static bool has_dst_key_in_primary_plane(struct drm_i915_private *dev_pr=
iv)
>  {
> -	switch (format) {
> -	case DRM_FORMAT_P010:
> -	case DRM_FORMAT_P012:
> -	case DRM_FORMAT_P016:
> -		return true;
> -	default:
> -		return false;
> -	}
> +	return INTEL_GEN(dev_priv) >=3D 9;
>  }
>  =

> -static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
> -			      const struct intel_plane_state *plane_state)
> +static void intel_plane_set_ckey(struct intel_plane_state *plane_state,
> +				 const struct drm_intel_sprite_colorkey *set)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	unsigned int rotation =3D plane_state->hw.rotation;
> -	struct drm_format_name_buf format_name;
> +	struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
>  =

> -	if (!fb)
> -		return 0;
> -
> -	if (rotation & ~(DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180) &&
> -	    is_ccs_modifier(fb->modifier)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "RC support only with 0/180 degree rotation (%x)\n",
> -			    rotation);
> -		return -EINVAL;
> -	}
> -
> -	if (rotation & DRM_MODE_REFLECT_X &&
> -	    fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "horizontal flip is not supported with linear surface formats\n");
> -		return -EINVAL;
> -	}
> -
> -	if (drm_rotation_90_or_270(rotation)) {
> -		if (fb->modifier !=3D I915_FORMAT_MOD_Y_TILED &&
> -		    fb->modifier !=3D I915_FORMAT_MOD_Yf_TILED) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "Y/Yf tiling required for 90/270!\n");
> -			return -EINVAL;
> -		}
> -
> -		/*
> -		 * 90/270 is not allowed with RGB64 16:16:16:16 and
> -		 * Indexed 8-bit. RGB 16-bit 5:6:5 is allowed gen11 onwards.
> -		 */
> -		switch (fb->format->format) {
> -		case DRM_FORMAT_RGB565:
> -			if (INTEL_GEN(dev_priv) >=3D 11)
> -				break;
> -			fallthrough;
> -		case DRM_FORMAT_C8:
> -		case DRM_FORMAT_XRGB16161616F:
> -		case DRM_FORMAT_XBGR16161616F:
> -		case DRM_FORMAT_ARGB16161616F:
> -		case DRM_FORMAT_ABGR16161616F:
> -		case DRM_FORMAT_Y210:
> -		case DRM_FORMAT_Y212:
> -		case DRM_FORMAT_Y216:
> -		case DRM_FORMAT_XVYU12_16161616:
> -		case DRM_FORMAT_XVYU16161616:
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "Unsupported pixel format %s for 90/270!\n",
> -				    drm_get_format_name(fb->format->format,
> -							&format_name));
> -			return -EINVAL;
> -		default:
> -			break;
> -		}
> -	}
> -
> -	/* Y-tiling is not supported in IF-ID Interlace mode */
> -	if (crtc_state->hw.enable &&
> -	    crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE &&
> -	    (fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED ||
> -	     fb->modifier =3D=3D I915_FORMAT_MOD_Yf_TILED ||
> -	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> -	     fb->modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS ||
> -	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> -	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> -	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Y/Yf tiling not supported in IF-ID mode\n");
> -		return -EINVAL;
> -	}
> -
> -	/* Wa_1606054188:tgl,adl-s */
> -	if ((IS_ALDERLAKE_S(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
> -	    plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE &&
> -	    intel_format_is_p01x(fb->format->format)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Source color keying not supported with P01x formats\n");
> -		return -EINVAL;
> -	}
> -
> -	return 0;
> -}
> -
> -static int skl_plane_check_dst_coordinates(const struct intel_crtc_state=
 *crtc_state,
> -					   const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(plane_state->uapi.plane->dev);
> -	int crtc_x =3D plane_state->uapi.dst.x1;
> -	int crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> -	int pipe_src_w =3D crtc_state->pipe_src_w;
> -
> -	/*
> -	 * Display WA #1175: cnl,glk
> -	 * Planes other than the cursor may cause FIFO underflow and display
> -	 * corruption if starting less than 4 pixels from the right edge of
> -	 * the screen.
> -	 * Besides the above WA fix the similar problem, where planes other
> -	 * than the cursor ending less than 4 pixels from the left edge of the
> -	 * screen may cause FIFO underflow and display corruption.
> -	 */
> -	if ((IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv)) &&
> -	    (crtc_x + crtc_w < 4 || crtc_x > pipe_src_w - 4)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "requested plane X %s position %d invalid (valid range %d-%d)\n",
> -			    crtc_x + crtc_w < 4 ? "end" : "start",
> -			    crtc_x + crtc_w < 4 ? crtc_x + crtc_w : crtc_x,
> -			    4, pipe_src_w - 4);
> -		return -ERANGE;
> -	}
> -
> -	return 0;
> -}
> -
> -static int skl_plane_check_nv12_rotation(const struct intel_plane_state =
*plane_state)
> -{
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	unsigned int rotation =3D plane_state->hw.rotation;
> -	int src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> -
> -	/* Display WA #1106 */
> -	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> -	    src_w & 3 &&
> -	    (rotation =3D=3D DRM_MODE_ROTATE_270 ||
> -	     rotation =3D=3D (DRM_MODE_REFLECT_X | DRM_MODE_ROTATE_90))) {
> -		DRM_DEBUG_KMS("src width must be multiple of 4 for rotated planar YUV\=
n");
> -		return -EINVAL;
> -	}
> -
> -	return 0;
> -}
> -
> -static int skl_plane_max_scale(struct drm_i915_private *dev_priv,
> -			       const struct drm_framebuffer *fb)
> -{
> -	/*
> -	 * We don't yet know the final source width nor
> -	 * whether we can use the HQ scaler mode. Assume
> -	 * the best case.
> -	 * FIXME need to properly check this later.
> -	 */
> -	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv) ||
> -	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> -		return 0x30000 - 1;
> -	else
> -		return 0x20000 - 1;
> -}
> -
> -static int skl_plane_check(struct intel_crtc_state *crtc_state,
> -			   struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int min_scale =3D DRM_PLANE_HELPER_NO_SCALING;
> -	int max_scale =3D DRM_PLANE_HELPER_NO_SCALING;
> -	int ret;
> -
> -	ret =3D skl_plane_check_fb(crtc_state, plane_state);
> -	if (ret)
> -		return ret;
> -
> -	/* use scaler when colorkey is not required */
> -	if (!plane_state->ckey.flags && intel_fb_scalable(fb)) {
> -		min_scale =3D 1;
> -		max_scale =3D skl_plane_max_scale(dev_priv, fb);
> -	}
> -
> -	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> -						min_scale, max_scale, true);
> -	if (ret)
> -		return ret;
> -
> -	ret =3D skl_check_plane_surface(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	if (!plane_state->uapi.visible)
> -		return 0;
> -
> -	ret =3D skl_plane_check_dst_coordinates(crtc_state, plane_state);
> -	if (ret)
> -		return ret;
> -
> -	ret =3D intel_plane_check_src_coordinates(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	ret =3D skl_plane_check_nv12_rotation(plane_state);
> -	if (ret)
> -		return ret;
> -
> -	/* HW only has 8 bits pixel precision, disable plane if invisible */
> -	if (!(plane_state->hw.alpha >> 8))
> -		plane_state->uapi.visible =3D false;
> -
> -	plane_state->ctl =3D skl_plane_ctl(crtc_state, plane_state);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> -		plane_state->color_ctl =3D glk_plane_color_ctl(crtc_state,
> -							     plane_state);
> -
> -	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> -	    icl_is_hdr_plane(dev_priv, plane->id))
> -		/* Enable and use MPEG-2 chroma siting */
> -		plane_state->cus_ctl =3D PLANE_CUS_ENABLE |
> -			PLANE_CUS_HPHASE_0 |
> -			PLANE_CUS_VPHASE_SIGN_NEGATIVE | PLANE_CUS_VPHASE_0_25;
> -	else
> -		plane_state->cus_ctl =3D 0;
> -
> -	return 0;
> -}
> -
> -static bool has_dst_key_in_primary_plane(struct drm_i915_private *dev_pr=
iv)
> -{
> -	return INTEL_GEN(dev_priv) >=3D 9;
> -}
> -
> -static void intel_plane_set_ckey(struct intel_plane_state *plane_state,
> -				 const struct drm_intel_sprite_colorkey *set)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> -
> -	*key =3D *set;
> +	*key =3D *set;
>  =

>  	/*
>  	 * We want src key enabled on the
> @@ -2708,186 +1958,6 @@ static const u32 chv_pipe_b_sprite_formats[] =3D {
>  	DRM_FORMAT_VYUY,
>  };
>  =

> -static const u32 skl_plane_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_ARGB8888,
> -	DRM_FORMAT_ABGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_XRGB16161616F,
> -	DRM_FORMAT_XBGR16161616F,
> -	DRM_FORMAT_YUYV,
> -	DRM_FORMAT_YVYU,
> -	DRM_FORMAT_UYVY,
> -	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_XYUV8888,
> -};
> -
> -static const u32 skl_planar_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_ARGB8888,
> -	DRM_FORMAT_ABGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_XRGB16161616F,
> -	DRM_FORMAT_XBGR16161616F,
> -	DRM_FORMAT_YUYV,
> -	DRM_FORMAT_YVYU,
> -	DRM_FORMAT_UYVY,
> -	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_XYUV8888,
> -};
> -
> -static const u32 glk_planar_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_ARGB8888,
> -	DRM_FORMAT_ABGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_XRGB16161616F,
> -	DRM_FORMAT_XBGR16161616F,
> -	DRM_FORMAT_YUYV,
> -	DRM_FORMAT_YVYU,
> -	DRM_FORMAT_UYVY,
> -	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_XYUV8888,
> -	DRM_FORMAT_P010,
> -	DRM_FORMAT_P012,
> -	DRM_FORMAT_P016,
> -};
> -
> -static const u32 icl_sdr_y_plane_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_ARGB8888,
> -	DRM_FORMAT_ABGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_ARGB2101010,
> -	DRM_FORMAT_ABGR2101010,
> -	DRM_FORMAT_YUYV,
> -	DRM_FORMAT_YVYU,
> -	DRM_FORMAT_UYVY,
> -	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_Y210,
> -	DRM_FORMAT_Y212,
> -	DRM_FORMAT_Y216,
> -	DRM_FORMAT_XYUV8888,
> -	DRM_FORMAT_XVYU2101010,
> -	DRM_FORMAT_XVYU12_16161616,
> -	DRM_FORMAT_XVYU16161616,
> -};
> -
> -static const u32 icl_sdr_uv_plane_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_ARGB8888,
> -	DRM_FORMAT_ABGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_ARGB2101010,
> -	DRM_FORMAT_ABGR2101010,
> -	DRM_FORMAT_YUYV,
> -	DRM_FORMAT_YVYU,
> -	DRM_FORMAT_UYVY,
> -	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_P010,
> -	DRM_FORMAT_P012,
> -	DRM_FORMAT_P016,
> -	DRM_FORMAT_Y210,
> -	DRM_FORMAT_Y212,
> -	DRM_FORMAT_Y216,
> -	DRM_FORMAT_XYUV8888,
> -	DRM_FORMAT_XVYU2101010,
> -	DRM_FORMAT_XVYU12_16161616,
> -	DRM_FORMAT_XVYU16161616,
> -};
> -
> -static const u32 icl_hdr_plane_formats[] =3D {
> -	DRM_FORMAT_C8,
> -	DRM_FORMAT_RGB565,
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_XBGR8888,
> -	DRM_FORMAT_ARGB8888,
> -	DRM_FORMAT_ABGR8888,
> -	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_ARGB2101010,
> -	DRM_FORMAT_ABGR2101010,
> -	DRM_FORMAT_XRGB16161616F,
> -	DRM_FORMAT_XBGR16161616F,
> -	DRM_FORMAT_ARGB16161616F,
> -	DRM_FORMAT_ABGR16161616F,
> -	DRM_FORMAT_YUYV,
> -	DRM_FORMAT_YVYU,
> -	DRM_FORMAT_UYVY,
> -	DRM_FORMAT_VYUY,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_P010,
> -	DRM_FORMAT_P012,
> -	DRM_FORMAT_P016,
> -	DRM_FORMAT_Y210,
> -	DRM_FORMAT_Y212,
> -	DRM_FORMAT_Y216,
> -	DRM_FORMAT_XYUV8888,
> -	DRM_FORMAT_XVYU2101010,
> -	DRM_FORMAT_XVYU12_16161616,
> -	DRM_FORMAT_XVYU16161616,
> -};
> -
> -static const u64 skl_plane_format_modifiers_noccs[] =3D {
> -	I915_FORMAT_MOD_Yf_TILED,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
> -static const u64 skl_plane_format_modifiers_ccs[] =3D {
> -	I915_FORMAT_MOD_Yf_TILED_CCS,
> -	I915_FORMAT_MOD_Y_TILED_CCS,
> -	I915_FORMAT_MOD_Yf_TILED,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
> -static const u64 gen12_plane_format_modifiers_mc_ccs[] =3D {
> -	I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
> -static const u64 gen12_plane_format_modifiers_rc_ccs[] =3D {
> -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
>  static bool g4x_sprite_format_mod_supported(struct drm_plane *_plane,
>  					    u32 format, u64 modifier)
>  {
> @@ -2980,150 +2050,6 @@ static bool vlv_sprite_format_mod_supported(struc=
t drm_plane *_plane,
>  	}
>  }
>  =

> -static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
> -					   u32 format, u64 modifier)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(_plane);
> -
> -	switch (modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -	case I915_FORMAT_MOD_Y_TILED:
> -	case I915_FORMAT_MOD_Yf_TILED:
> -		break;
> -	case I915_FORMAT_MOD_Y_TILED_CCS:
> -	case I915_FORMAT_MOD_Yf_TILED_CCS:
> -		if (!plane->has_ccs)
> -			return false;
> -		break;
> -	default:
> -		return false;
> -	}
> -
> -	switch (format) {
> -	case DRM_FORMAT_XRGB8888:
> -	case DRM_FORMAT_XBGR8888:
> -	case DRM_FORMAT_ARGB8888:
> -	case DRM_FORMAT_ABGR8888:
> -		if (is_ccs_modifier(modifier))
> -			return true;
> -		fallthrough;
> -	case DRM_FORMAT_RGB565:
> -	case DRM_FORMAT_XRGB2101010:
> -	case DRM_FORMAT_XBGR2101010:
> -	case DRM_FORMAT_ARGB2101010:
> -	case DRM_FORMAT_ABGR2101010:
> -	case DRM_FORMAT_YUYV:
> -	case DRM_FORMAT_YVYU:
> -	case DRM_FORMAT_UYVY:
> -	case DRM_FORMAT_VYUY:
> -	case DRM_FORMAT_NV12:
> -	case DRM_FORMAT_XYUV8888:
> -	case DRM_FORMAT_P010:
> -	case DRM_FORMAT_P012:
> -	case DRM_FORMAT_P016:
> -	case DRM_FORMAT_XVYU2101010:
> -		if (modifier =3D=3D I915_FORMAT_MOD_Yf_TILED)
> -			return true;
> -		fallthrough;
> -	case DRM_FORMAT_C8:
> -	case DRM_FORMAT_XBGR16161616F:
> -	case DRM_FORMAT_ABGR16161616F:
> -	case DRM_FORMAT_XRGB16161616F:
> -	case DRM_FORMAT_ARGB16161616F:
> -	case DRM_FORMAT_Y210:
> -	case DRM_FORMAT_Y212:
> -	case DRM_FORMAT_Y216:
> -	case DRM_FORMAT_XVYU12_16161616:
> -	case DRM_FORMAT_XVYU16161616:
> -		if (modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> -		    modifier =3D=3D I915_FORMAT_MOD_X_TILED ||
> -		    modifier =3D=3D I915_FORMAT_MOD_Y_TILED)
> -			return true;
> -		fallthrough;
> -	default:
> -		return false;
> -	}
> -}
> -
> -static bool gen12_plane_supports_mc_ccs(struct drm_i915_private *dev_pri=
v,
> -					enum plane_id plane_id)
> -{
> -	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> -	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> -	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_C0))
> -		return false;
> -
> -	return plane_id < PLANE_SPRITE4;
> -}
> -
> -static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
> -					     u32 format, u64 modifier)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(_plane->dev);
> -	struct intel_plane *plane =3D to_intel_plane(_plane);
> -
> -	switch (modifier) {
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> -		if (!gen12_plane_supports_mc_ccs(dev_priv, plane->id))
> -			return false;
> -		fallthrough;
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -	case I915_FORMAT_MOD_Y_TILED:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> -		break;
> -	default:
> -		return false;
> -	}
> -
> -	switch (format) {
> -	case DRM_FORMAT_XRGB8888:
> -	case DRM_FORMAT_XBGR8888:
> -	case DRM_FORMAT_ARGB8888:
> -	case DRM_FORMAT_ABGR8888:
> -		if (is_ccs_modifier(modifier))
> -			return true;
> -		fallthrough;
> -	case DRM_FORMAT_YUYV:
> -	case DRM_FORMAT_YVYU:
> -	case DRM_FORMAT_UYVY:
> -	case DRM_FORMAT_VYUY:
> -	case DRM_FORMAT_NV12:
> -	case DRM_FORMAT_XYUV8888:
> -	case DRM_FORMAT_P010:
> -	case DRM_FORMAT_P012:
> -	case DRM_FORMAT_P016:
> -		if (modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS)
> -			return true;
> -		fallthrough;
> -	case DRM_FORMAT_RGB565:
> -	case DRM_FORMAT_XRGB2101010:
> -	case DRM_FORMAT_XBGR2101010:
> -	case DRM_FORMAT_ARGB2101010:
> -	case DRM_FORMAT_ABGR2101010:
> -	case DRM_FORMAT_XVYU2101010:
> -	case DRM_FORMAT_C8:
> -	case DRM_FORMAT_XBGR16161616F:
> -	case DRM_FORMAT_ABGR16161616F:
> -	case DRM_FORMAT_XRGB16161616F:
> -	case DRM_FORMAT_ARGB16161616F:
> -	case DRM_FORMAT_Y210:
> -	case DRM_FORMAT_Y212:
> -	case DRM_FORMAT_Y216:
> -	case DRM_FORMAT_XVYU12_16161616:
> -	case DRM_FORMAT_XVYU16161616:
> -		if (modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> -		    modifier =3D=3D I915_FORMAT_MOD_X_TILED ||
> -		    modifier =3D=3D I915_FORMAT_MOD_Y_TILED)
> -			return true;
> -		fallthrough;
> -	default:
> -		return false;
> -	}
> -}
> -
>  static const struct drm_plane_funcs g4x_sprite_funcs =3D {
>  	.update_plane =3D drm_atomic_helper_update_plane,
>  	.disable_plane =3D drm_atomic_helper_disable_plane,
> @@ -3151,257 +2077,6 @@ static const struct drm_plane_funcs vlv_sprite_fu=
ncs =3D {
>  	.format_mod_supported =3D vlv_sprite_format_mod_supported,
>  };
>  =

> -static const struct drm_plane_funcs skl_plane_funcs =3D {
> -	.update_plane =3D drm_atomic_helper_update_plane,
> -	.disable_plane =3D drm_atomic_helper_disable_plane,
> -	.destroy =3D intel_plane_destroy,
> -	.atomic_duplicate_state =3D intel_plane_duplicate_state,
> -	.atomic_destroy_state =3D intel_plane_destroy_state,
> -	.format_mod_supported =3D skl_plane_format_mod_supported,
> -};
> -
> -static const struct drm_plane_funcs gen12_plane_funcs =3D {
> -	.update_plane =3D drm_atomic_helper_update_plane,
> -	.disable_plane =3D drm_atomic_helper_disable_plane,
> -	.destroy =3D intel_plane_destroy,
> -	.atomic_duplicate_state =3D intel_plane_duplicate_state,
> -	.atomic_destroy_state =3D intel_plane_destroy_state,
> -	.format_mod_supported =3D gen12_plane_format_mod_supported,
> -};
> -
> -static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
> -			      enum pipe pipe, enum plane_id plane_id)
> -{
> -	if (!HAS_FBC(dev_priv))
> -		return false;
> -
> -	return pipe =3D=3D PIPE_A && plane_id =3D=3D PLANE_PRIMARY;
> -}
> -
> -static bool skl_plane_has_planar(struct drm_i915_private *dev_priv,
> -				 enum pipe pipe, enum plane_id plane_id)
> -{
> -	/* Display WA #0870: skl, bxt */
> -	if (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		return false;
> -
> -	if (IS_GEN(dev_priv, 9) && !IS_GEMINILAKE(dev_priv) && pipe =3D=3D PIPE=
_C)
> -		return false;
> -
> -	if (plane_id !=3D PLANE_PRIMARY && plane_id !=3D PLANE_SPRITE0)
> -		return false;
> -
> -	return true;
> -}
> -
> -static const u32 *skl_get_plane_formats(struct drm_i915_private *dev_pri=
v,
> -					enum pipe pipe, enum plane_id plane_id,
> -					int *num_formats)
> -{
> -	if (skl_plane_has_planar(dev_priv, pipe, plane_id)) {
> -		*num_formats =3D ARRAY_SIZE(skl_planar_formats);
> -		return skl_planar_formats;
> -	} else {
> -		*num_formats =3D ARRAY_SIZE(skl_plane_formats);
> -		return skl_plane_formats;
> -	}
> -}
> -
> -static const u32 *glk_get_plane_formats(struct drm_i915_private *dev_pri=
v,
> -					enum pipe pipe, enum plane_id plane_id,
> -					int *num_formats)
> -{
> -	if (skl_plane_has_planar(dev_priv, pipe, plane_id)) {
> -		*num_formats =3D ARRAY_SIZE(glk_planar_formats);
> -		return glk_planar_formats;
> -	} else {
> -		*num_formats =3D ARRAY_SIZE(skl_plane_formats);
> -		return skl_plane_formats;
> -	}
> -}
> -
> -static const u32 *icl_get_plane_formats(struct drm_i915_private *dev_pri=
v,
> -					enum pipe pipe, enum plane_id plane_id,
> -					int *num_formats)
> -{
> -	if (icl_is_hdr_plane(dev_priv, plane_id)) {
> -		*num_formats =3D ARRAY_SIZE(icl_hdr_plane_formats);
> -		return icl_hdr_plane_formats;
> -	} else if (icl_is_nv12_y_plane(dev_priv, plane_id)) {
> -		*num_formats =3D ARRAY_SIZE(icl_sdr_y_plane_formats);
> -		return icl_sdr_y_plane_formats;
> -	} else {
> -		*num_formats =3D ARRAY_SIZE(icl_sdr_uv_plane_formats);
> -		return icl_sdr_uv_plane_formats;
> -	}
> -}
> -
> -static const u64 *gen12_get_plane_modifiers(struct drm_i915_private *dev=
_priv,
> -					    enum plane_id plane_id)
> -{
> -	if (gen12_plane_supports_mc_ccs(dev_priv, plane_id))
> -		return gen12_plane_format_modifiers_mc_ccs;
> -	else
> -		return gen12_plane_format_modifiers_rc_ccs;
> -}
> -
> -static bool skl_plane_has_ccs(struct drm_i915_private *dev_priv,
> -			      enum pipe pipe, enum plane_id plane_id)
> -{
> -	if (plane_id =3D=3D PLANE_CURSOR)
> -		return false;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10)
> -		return true;
> -
> -	if (IS_GEMINILAKE(dev_priv))
> -		return pipe !=3D PIPE_C;
> -
> -	return pipe !=3D PIPE_C &&
> -		(plane_id =3D=3D PLANE_PRIMARY ||
> -		 plane_id =3D=3D PLANE_SPRITE0);
> -}
> -
> -struct intel_plane *
> -skl_universal_plane_create(struct drm_i915_private *dev_priv,
> -			   enum pipe pipe, enum plane_id plane_id)
> -{
> -	const struct drm_plane_funcs *plane_funcs;
> -	struct intel_plane *plane;
> -	enum drm_plane_type plane_type;
> -	unsigned int supported_rotations;
> -	unsigned int supported_csc;
> -	const u64 *modifiers;
> -	const u32 *formats;
> -	int num_formats;
> -	int ret;
> -
> -	plane =3D intel_plane_alloc();
> -	if (IS_ERR(plane))
> -		return plane;
> -
> -	plane->pipe =3D pipe;
> -	plane->id =3D plane_id;
> -	plane->frontbuffer_bit =3D INTEL_FRONTBUFFER(pipe, plane_id);
> -
> -	plane->has_fbc =3D skl_plane_has_fbc(dev_priv, pipe, plane_id);
> -	if (plane->has_fbc) {
> -		struct intel_fbc *fbc =3D &dev_priv->fbc;
> -
> -		fbc->possible_framebuffer_bits |=3D plane->frontbuffer_bit;
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 11) {
> -		plane->min_width =3D icl_plane_min_width;
> -		plane->max_width =3D icl_plane_max_width;
> -		plane->max_height =3D icl_plane_max_height;
> -	} else if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> -		plane->max_width =3D glk_plane_max_width;
> -		plane->max_height =3D skl_plane_max_height;
> -	} else {
> -		plane->max_width =3D skl_plane_max_width;
> -		plane->max_height =3D skl_plane_max_height;
> -	}
> -
> -	plane->max_stride =3D skl_plane_max_stride;
> -	plane->update_plane =3D skl_update_plane;
> -	plane->disable_plane =3D skl_disable_plane;
> -	plane->get_hw_state =3D skl_plane_get_hw_state;
> -	plane->check_plane =3D skl_plane_check;
> -	plane->min_cdclk =3D skl_plane_min_cdclk;
> -
> -	if (plane_id =3D=3D PLANE_PRIMARY) {
> -		plane->need_async_flip_disable_wa =3D IS_GEN_RANGE(dev_priv, 9, 10);
> -		plane->async_flip =3D skl_plane_async_flip;
> -		plane->enable_flip_done =3D skl_plane_enable_flip_done;
> -		plane->disable_flip_done =3D skl_plane_disable_flip_done;
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 11)
> -		formats =3D icl_get_plane_formats(dev_priv, pipe,
> -						plane_id, &num_formats);
> -	else if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> -		formats =3D glk_get_plane_formats(dev_priv, pipe,
> -						plane_id, &num_formats);
> -	else
> -		formats =3D skl_get_plane_formats(dev_priv, pipe,
> -						plane_id, &num_formats);
> -
> -	plane->has_ccs =3D skl_plane_has_ccs(dev_priv, pipe, plane_id);
> -	if (INTEL_GEN(dev_priv) >=3D 12) {
> -		modifiers =3D gen12_get_plane_modifiers(dev_priv, plane_id);
> -		plane_funcs =3D &gen12_plane_funcs;
> -	} else {
> -		if (plane->has_ccs)
> -			modifiers =3D skl_plane_format_modifiers_ccs;
> -		else
> -			modifiers =3D skl_plane_format_modifiers_noccs;
> -		plane_funcs =3D &skl_plane_funcs;
> -	}
> -
> -	if (plane_id =3D=3D PLANE_PRIMARY)
> -		plane_type =3D DRM_PLANE_TYPE_PRIMARY;
> -	else
> -		plane_type =3D DRM_PLANE_TYPE_OVERLAY;
> -
> -	ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> -				       0, plane_funcs,
> -				       formats, num_formats, modifiers,
> -				       plane_type,
> -				       "plane %d%c", plane_id + 1,
> -				       pipe_name(pipe));
> -	if (ret)
> -		goto fail;
> -
> -	supported_rotations =3D
> -		DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
> -		DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10)
> -		supported_rotations |=3D DRM_MODE_REFLECT_X;
> -
> -	drm_plane_create_rotation_property(&plane->base,
> -					   DRM_MODE_ROTATE_0,
> -					   supported_rotations);
> -
> -	supported_csc =3D BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT70=
9);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> -		supported_csc |=3D BIT(DRM_COLOR_YCBCR_BT2020);
> -
> -	drm_plane_create_color_properties(&plane->base,
> -					  supported_csc,
> -					  BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
> -					  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
> -					  DRM_COLOR_YCBCR_BT709,
> -					  DRM_COLOR_YCBCR_LIMITED_RANGE);
> -
> -	drm_plane_create_alpha_property(&plane->base);
> -	drm_plane_create_blend_mode_property(&plane->base,
> -					     BIT(DRM_MODE_BLEND_PIXEL_NONE) |
> -					     BIT(DRM_MODE_BLEND_PREMULTI) |
> -					     BIT(DRM_MODE_BLEND_COVERAGE));
> -
> -	drm_plane_create_zpos_immutable_property(&plane->base, plane_id);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 12)
> -		drm_plane_enable_fb_damage_clips(&plane->base);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10)
> -		drm_plane_create_scaling_filter_property(&plane->base,
> -						BIT(DRM_SCALING_FILTER_DEFAULT) |
> -						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
> -
> -	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> -
> -	return plane;
> -
> -fail:
> -	intel_plane_free(plane);
> -
> -	return ERR_PTR(ret);
> -}
> -
>  struct intel_plane *
>  intel_sprite_plane_create(struct drm_i915_private *dev_priv,
>  			  enum pipe pipe, int sprite)
> @@ -3414,10 +2089,6 @@ intel_sprite_plane_create(struct drm_i915_private =
*dev_priv,
>  	int num_formats;
>  	int ret, zpos;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		return skl_universal_plane_create(dev_priv, pipe,
> -						  PLANE_SPRITE0 + sprite);
> -
>  	plane =3D intel_plane_alloc();
>  	if (IS_ERR(plane))
>  		return plane;
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/dr=
m/i915/display/intel_sprite.h
> index 76126dd8d584..418897f953fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.h
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.h
> @@ -38,9 +38,6 @@ void intel_pipe_update_end(struct intel_crtc_state *new=
_crtc_state);
>  int intel_plane_check_stride(const struct intel_plane_state *plane_state=
);
>  int intel_plane_check_src_coordinates(struct intel_plane_state *plane_st=
ate);
>  int chv_plane_check_rotation(const struct intel_plane_state *plane_state=
);
> -struct intel_plane *
> -skl_universal_plane_create(struct drm_i915_private *dev_priv,
> -			   enum pipe pipe, enum plane_id plane_id);
>  =

>  static inline u8 icl_hdr_plane_mask(void)
>  {
> @@ -59,4 +56,7 @@ int hsw_plane_min_cdclk(const struct intel_crtc_state *=
crtc_state,
>  int vlv_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
>  			const struct intel_plane_state *plane_state);
>  =

> +void skl_program_scaler(struct intel_plane *plane,
> +			const struct intel_crtc_state *crtc_state,
> +			const struct intel_plane_state *plane_state);
>  #endif /* __INTEL_SPRITE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> new file mode 100644
> index 000000000000..29c2e3693e8b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -0,0 +1,2265 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_damage_helper.h>
> +#include <drm/drm_fourcc.h>
> +#include <drm/drm_plane_helper.h>
> +
> +#include "i915_drv.h"
> +#include "intel_atomic_plane.h"
> +#include "intel_display_types.h"
> +#include "intel_pm.h"
> +#include "intel_psr.h"
> +#include "intel_sprite.h"
> +#include "skl_universal_plane.h"
> +
> +static const u32 skl_plane_formats[] =3D {
> +	DRM_FORMAT_C8,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +	DRM_FORMAT_XRGB16161616F,
> +	DRM_FORMAT_XBGR16161616F,
> +	DRM_FORMAT_YUYV,
> +	DRM_FORMAT_YVYU,
> +	DRM_FORMAT_UYVY,
> +	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_XYUV8888,
> +};
> +
> +static const u32 skl_planar_formats[] =3D {
> +	DRM_FORMAT_C8,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +	DRM_FORMAT_XRGB16161616F,
> +	DRM_FORMAT_XBGR16161616F,
> +	DRM_FORMAT_YUYV,
> +	DRM_FORMAT_YVYU,
> +	DRM_FORMAT_UYVY,
> +	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_NV12,
> +	DRM_FORMAT_XYUV8888,
> +};
> +
> +static const u32 glk_planar_formats[] =3D {
> +	DRM_FORMAT_C8,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +	DRM_FORMAT_XRGB16161616F,
> +	DRM_FORMAT_XBGR16161616F,
> +	DRM_FORMAT_YUYV,
> +	DRM_FORMAT_YVYU,
> +	DRM_FORMAT_UYVY,
> +	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_NV12,
> +	DRM_FORMAT_XYUV8888,
> +	DRM_FORMAT_P010,
> +	DRM_FORMAT_P012,
> +	DRM_FORMAT_P016,
> +};
> +
> +static const u32 icl_sdr_y_plane_formats[] =3D {
> +	DRM_FORMAT_C8,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +	DRM_FORMAT_ARGB2101010,
> +	DRM_FORMAT_ABGR2101010,
> +	DRM_FORMAT_YUYV,
> +	DRM_FORMAT_YVYU,
> +	DRM_FORMAT_UYVY,
> +	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_Y210,
> +	DRM_FORMAT_Y212,
> +	DRM_FORMAT_Y216,
> +	DRM_FORMAT_XYUV8888,
> +	DRM_FORMAT_XVYU2101010,
> +	DRM_FORMAT_XVYU12_16161616,
> +	DRM_FORMAT_XVYU16161616,
> +};
> +
> +static const u32 icl_sdr_uv_plane_formats[] =3D {
> +	DRM_FORMAT_C8,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +	DRM_FORMAT_ARGB2101010,
> +	DRM_FORMAT_ABGR2101010,
> +	DRM_FORMAT_YUYV,
> +	DRM_FORMAT_YVYU,
> +	DRM_FORMAT_UYVY,
> +	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_NV12,
> +	DRM_FORMAT_P010,
> +	DRM_FORMAT_P012,
> +	DRM_FORMAT_P016,
> +	DRM_FORMAT_Y210,
> +	DRM_FORMAT_Y212,
> +	DRM_FORMAT_Y216,
> +	DRM_FORMAT_XYUV8888,
> +	DRM_FORMAT_XVYU2101010,
> +	DRM_FORMAT_XVYU12_16161616,
> +	DRM_FORMAT_XVYU16161616,
> +};
> +
> +static const u32 icl_hdr_plane_formats[] =3D {
> +	DRM_FORMAT_C8,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +	DRM_FORMAT_ARGB2101010,
> +	DRM_FORMAT_ABGR2101010,
> +	DRM_FORMAT_XRGB16161616F,
> +	DRM_FORMAT_XBGR16161616F,
> +	DRM_FORMAT_ARGB16161616F,
> +	DRM_FORMAT_ABGR16161616F,
> +	DRM_FORMAT_YUYV,
> +	DRM_FORMAT_YVYU,
> +	DRM_FORMAT_UYVY,
> +	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_NV12,
> +	DRM_FORMAT_P010,
> +	DRM_FORMAT_P012,
> +	DRM_FORMAT_P016,
> +	DRM_FORMAT_Y210,
> +	DRM_FORMAT_Y212,
> +	DRM_FORMAT_Y216,
> +	DRM_FORMAT_XYUV8888,
> +	DRM_FORMAT_XVYU2101010,
> +	DRM_FORMAT_XVYU12_16161616,
> +	DRM_FORMAT_XVYU16161616,
> +};
> +
> +static const u64 skl_plane_format_modifiers_noccs[] =3D {
> +	I915_FORMAT_MOD_Yf_TILED,
> +	I915_FORMAT_MOD_Y_TILED,
> +	I915_FORMAT_MOD_X_TILED,
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID
> +};
> +
> +static const u64 skl_plane_format_modifiers_ccs[] =3D {
> +	I915_FORMAT_MOD_Yf_TILED_CCS,
> +	I915_FORMAT_MOD_Y_TILED_CCS,
> +	I915_FORMAT_MOD_Yf_TILED,
> +	I915_FORMAT_MOD_Y_TILED,
> +	I915_FORMAT_MOD_X_TILED,
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID
> +};
> +
> +static const u64 gen12_plane_format_modifiers_mc_ccs[] =3D {
> +	I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> +	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> +	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> +	I915_FORMAT_MOD_Y_TILED,
> +	I915_FORMAT_MOD_X_TILED,
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID
> +};
> +
> +static const u64 gen12_plane_format_modifiers_rc_ccs[] =3D {
> +	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> +	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> +	I915_FORMAT_MOD_Y_TILED,
> +	I915_FORMAT_MOD_X_TILED,
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID
> +};
> +
> +int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
> +{
> +	switch (format) {
> +	case PLANE_CTL_FORMAT_RGB_565:
> +		return DRM_FORMAT_RGB565;
> +	case PLANE_CTL_FORMAT_NV12:
> +		return DRM_FORMAT_NV12;
> +	case PLANE_CTL_FORMAT_XYUV:
> +		return DRM_FORMAT_XYUV8888;
> +	case PLANE_CTL_FORMAT_P010:
> +		return DRM_FORMAT_P010;
> +	case PLANE_CTL_FORMAT_P012:
> +		return DRM_FORMAT_P012;
> +	case PLANE_CTL_FORMAT_P016:
> +		return DRM_FORMAT_P016;
> +	case PLANE_CTL_FORMAT_Y210:
> +		return DRM_FORMAT_Y210;
> +	case PLANE_CTL_FORMAT_Y212:
> +		return DRM_FORMAT_Y212;
> +	case PLANE_CTL_FORMAT_Y216:
> +		return DRM_FORMAT_Y216;
> +	case PLANE_CTL_FORMAT_Y410:
> +		return DRM_FORMAT_XVYU2101010;
> +	case PLANE_CTL_FORMAT_Y412:
> +		return DRM_FORMAT_XVYU12_16161616;
> +	case PLANE_CTL_FORMAT_Y416:
> +		return DRM_FORMAT_XVYU16161616;
> +	default:
> +	case PLANE_CTL_FORMAT_XRGB_8888:
> +		if (rgb_order) {
> +			if (alpha)
> +				return DRM_FORMAT_ABGR8888;
> +			else
> +				return DRM_FORMAT_XBGR8888;
> +		} else {
> +			if (alpha)
> +				return DRM_FORMAT_ARGB8888;
> +			else
> +				return DRM_FORMAT_XRGB8888;
> +		}
> +	case PLANE_CTL_FORMAT_XRGB_2101010:
> +		if (rgb_order) {
> +			if (alpha)
> +				return DRM_FORMAT_ABGR2101010;
> +			else
> +				return DRM_FORMAT_XBGR2101010;
> +		} else {
> +			if (alpha)
> +				return DRM_FORMAT_ARGB2101010;
> +			else
> +				return DRM_FORMAT_XRGB2101010;
> +		}
> +	case PLANE_CTL_FORMAT_XRGB_16161616F:
> +		if (rgb_order) {
> +			if (alpha)
> +				return DRM_FORMAT_ABGR16161616F;
> +			else
> +				return DRM_FORMAT_XBGR16161616F;
> +		} else {
> +			if (alpha)
> +				return DRM_FORMAT_ARGB16161616F;
> +			else
> +				return DRM_FORMAT_XRGB16161616F;
> +		}
> +	}
> +}
> +
> +static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
> +{
> +	if (HAS_D12_PLANE_MINIMIZATION(i915))
> +		return BIT(PLANE_SPRITE2) | BIT(PLANE_SPRITE3);
> +	else
> +		return BIT(PLANE_SPRITE4) | BIT(PLANE_SPRITE5);
> +}
> +
> +bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
> +			 enum plane_id plane_id)
> +{
> +	return INTEL_GEN(dev_priv) >=3D 11 &&
> +		icl_nv12_y_plane_mask(dev_priv) & BIT(plane_id);
> +}
> +
> +bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id p=
lane_id)
> +{
> +	return INTEL_GEN(dev_priv) >=3D 11 &&
> +		icl_hdr_plane_mask() & BIT(plane_id);
> +}
> +
> +static void
> +skl_plane_ratio(const struct intel_crtc_state *crtc_state,
> +		const struct intel_plane_state *plane_state,
> +		unsigned int *num, unsigned int *den)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane_state->uapi.plane->=
dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +
> +	if (fb->format->cpp[0] =3D=3D 8) {
> +		if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> +			*num =3D 10;
> +			*den =3D 8;
> +		} else {
> +			*num =3D 9;
> +			*den =3D 8;
> +		}
> +	} else {
> +		*num =3D 1;
> +		*den =3D 1;
> +	}
> +}
> +
> +static int skl_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
> +			       const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane_state->uapi.plane->=
dev);
> +	unsigned int num, den;
> +	unsigned int pixel_rate =3D intel_plane_pixel_rate(crtc_state, plane_st=
ate);
> +
> +	skl_plane_ratio(crtc_state, plane_state, &num, &den);
> +
> +	/* two pixels per clock on glk+ */
> +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +		den *=3D 2;
> +
> +	return DIV_ROUND_UP(pixel_rate * num, den);
> +}
> +
> +static int skl_plane_max_width(const struct drm_framebuffer *fb,
> +			       int color_plane,
> +			       unsigned int rotation)
> +{
> +	int cpp =3D fb->format->cpp[color_plane];
> +
> +	switch (fb->modifier) {
> +	case DRM_FORMAT_MOD_LINEAR:
> +	case I915_FORMAT_MOD_X_TILED:
> +		/*
> +		 * Validated limit is 4k, but has 5k should
> +		 * work apart from the following features:
> +		 * - Ytile (already limited to 4k)
> +		 * - FP16 (already limited to 4k)
> +		 * - render compression (already limited to 4k)
> +		 * - KVMR sprite and cursor (don't care)
> +		 * - horizontal panning (TODO verify this)
> +		 * - pipe and plane scaling (TODO verify this)
> +		 */
> +		if (cpp =3D=3D 8)
> +			return 4096;
> +		else
> +			return 5120;
> +	case I915_FORMAT_MOD_Y_TILED_CCS:
> +	case I915_FORMAT_MOD_Yf_TILED_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> +		/* FIXME AUX plane? */
> +	case I915_FORMAT_MOD_Y_TILED:
> +	case I915_FORMAT_MOD_Yf_TILED:
> +		if (cpp =3D=3D 8)
> +			return 2048;
> +		else
> +			return 4096;
> +	default:
> +		MISSING_CASE(fb->modifier);
> +		return 2048;
> +	}
> +}
> +
> +static int glk_plane_max_width(const struct drm_framebuffer *fb,
> +			       int color_plane,
> +			       unsigned int rotation)
> +{
> +	int cpp =3D fb->format->cpp[color_plane];
> +
> +	switch (fb->modifier) {
> +	case DRM_FORMAT_MOD_LINEAR:
> +	case I915_FORMAT_MOD_X_TILED:
> +		if (cpp =3D=3D 8)
> +			return 4096;
> +		else
> +			return 5120;
> +	case I915_FORMAT_MOD_Y_TILED_CCS:
> +	case I915_FORMAT_MOD_Yf_TILED_CCS:
> +		/* FIXME AUX plane? */
> +	case I915_FORMAT_MOD_Y_TILED:
> +	case I915_FORMAT_MOD_Yf_TILED:
> +		if (cpp =3D=3D 8)
> +			return 2048;
> +		else
> +			return 5120;
> +	default:
> +		MISSING_CASE(fb->modifier);
> +		return 2048;
> +	}
> +}
> +
> +static int icl_plane_min_width(const struct drm_framebuffer *fb,
> +			       int color_plane,
> +			       unsigned int rotation)
> +{
> +	/* Wa_14011264657, Wa_14011050563: gen11+ */
> +	switch (fb->format->format) {
> +	case DRM_FORMAT_C8:
> +		return 18;
> +	case DRM_FORMAT_RGB565:
> +		return 10;
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_ARGB8888:
> +	case DRM_FORMAT_ABGR8888:
> +	case DRM_FORMAT_XRGB2101010:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_ARGB2101010:
> +	case DRM_FORMAT_ABGR2101010:
> +	case DRM_FORMAT_XVYU2101010:
> +	case DRM_FORMAT_Y212:
> +	case DRM_FORMAT_Y216:
> +		return 6;
> +	case DRM_FORMAT_NV12:
> +		return 20;
> +	case DRM_FORMAT_P010:
> +	case DRM_FORMAT_P012:
> +	case DRM_FORMAT_P016:
> +		return 12;
> +	case DRM_FORMAT_XRGB16161616F:
> +	case DRM_FORMAT_XBGR16161616F:
> +	case DRM_FORMAT_ARGB16161616F:
> +	case DRM_FORMAT_ABGR16161616F:
> +	case DRM_FORMAT_XVYU12_16161616:
> +	case DRM_FORMAT_XVYU16161616:
> +		return 4;
> +	default:
> +		return 1;
> +	}
> +}
> +
> +static int icl_plane_max_width(const struct drm_framebuffer *fb,
> +			       int color_plane,
> +			       unsigned int rotation)
> +{
> +	return 5120;
> +}
> +
> +static int skl_plane_max_height(const struct drm_framebuffer *fb,
> +				int color_plane,
> +				unsigned int rotation)
> +{
> +	return 4096;
> +}
> +
> +static int icl_plane_max_height(const struct drm_framebuffer *fb,
> +				int color_plane,
> +				unsigned int rotation)
> +{
> +	return 4320;
> +}
> +
> +static unsigned int
> +skl_plane_max_stride(struct intel_plane *plane,
> +		     u32 pixel_format, u64 modifier,
> +		     unsigned int rotation)
> +{
> +	const struct drm_format_info *info =3D drm_format_info(pixel_format);
> +	int cpp =3D info->cpp[0];
> +
> +	/*
> +	 * "The stride in bytes must not exceed the
> +	 * of the size of 8K pixels and 32K bytes."
> +	 */
> +	if (drm_rotation_90_or_270(rotation))
> +		return min(8192, 32768 / cpp);
> +	else
> +		return min(8192 * cpp, 32768);
> +}
> +
> +
> +/* Preoffset values for YUV to RGB Conversion */
> +#define PREOFF_YUV_TO_RGB_HI		0x1800
> +#define PREOFF_YUV_TO_RGB_ME		0x0000
> +#define PREOFF_YUV_TO_RGB_LO		0x1800
> +
> +#define  ROFF(x)          (((x) & 0xffff) << 16)
> +#define  GOFF(x)          (((x) & 0xffff) << 0)
> +#define  BOFF(x)          (((x) & 0xffff) << 16)
> +
> +/*
> + * Programs the input color space conversion stage for ICL HDR planes.
> + * Note that it is assumed that this stage always happens after YUV
> + * range correction. Thus, the input to this stage is assumed to be
> + * in full-range YCbCr.
> + */
> +static void
> +icl_program_input_csc(struct intel_plane *plane,
> +		      const struct intel_crtc_state *crtc_state,
> +		      const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum pipe pipe =3D plane->pipe;
> +	enum plane_id plane_id =3D plane->id;
> +
> +	static const u16 input_csc_matrix[][9] =3D {
> +		/*
> +		 * BT.601 full range YCbCr -> full range RGB
> +		 * The matrix required is :
> +		 * [1.000, 0.000, 1.371,
> +		 *  1.000, -0.336, -0.698,
> +		 *  1.000, 1.732, 0.0000]
> +		 */
> +		[DRM_COLOR_YCBCR_BT601] =3D {
> +			0x7AF8, 0x7800, 0x0,
> +			0x8B28, 0x7800, 0x9AC0,
> +			0x0, 0x7800, 0x7DD8,
> +		},
> +		/*
> +		 * BT.709 full range YCbCr -> full range RGB
> +		 * The matrix required is :
> +		 * [1.000, 0.000, 1.574,
> +		 *  1.000, -0.187, -0.468,
> +		 *  1.000, 1.855, 0.0000]
> +		 */
> +		[DRM_COLOR_YCBCR_BT709] =3D {
> +			0x7C98, 0x7800, 0x0,
> +			0x9EF8, 0x7800, 0xAC00,
> +			0x0, 0x7800,  0x7ED8,
> +		},
> +		/*
> +		 * BT.2020 full range YCbCr -> full range RGB
> +		 * The matrix required is :
> +		 * [1.000, 0.000, 1.474,
> +		 *  1.000, -0.1645, -0.5713,
> +		 *  1.000, 1.8814, 0.0000]
> +		 */
> +		[DRM_COLOR_YCBCR_BT2020] =3D {
> +			0x7BC8, 0x7800, 0x0,
> +			0x8928, 0x7800, 0xAA88,
> +			0x0, 0x7800, 0x7F10,
> +		},
> +	};
> +	const u16 *csc =3D input_csc_matrix[plane_state->hw.color_encoding];
> +
> +	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 0),
> +			  ROFF(csc[0]) | GOFF(csc[1]));
> +	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 1),
> +			  BOFF(csc[2]));
> +	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 2),
> +			  ROFF(csc[3]) | GOFF(csc[4]));
> +	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 3),
> +			  BOFF(csc[5]));
> +	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 4),
> +			  ROFF(csc[6]) | GOFF(csc[7]));
> +	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 5),
> +			  BOFF(csc[8]));
> +
> +	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 0),
> +			  PREOFF_YUV_TO_RGB_HI);
> +	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
> +			  PREOFF_YUV_TO_RGB_ME);
> +	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 2),
> +			  PREOFF_YUV_TO_RGB_LO);
> +	intel_de_write_fw(dev_priv,
> +			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 0), 0x0);
> +	intel_de_write_fw(dev_priv,
> +			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 1), 0x0);
> +	intel_de_write_fw(dev_priv,
> +			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
> +}
> +
> +static bool is_surface_linear(const struct drm_framebuffer *fb, int colo=
r_plane)
> +{
> +	return fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> +	       is_gen12_ccs_plane(fb, color_plane);
> +}
> +
> +static unsigned int skl_plane_stride_mult(const struct drm_framebuffer *=
fb,
> +					  int color_plane, unsigned int rotation)
> +{
> +	/*
> +	 * The stride is either expressed as a multiple of 64 bytes chunks for
> +	 * linear buffers or in number of tiles for tiled buffers.
> +	 */
> +	if (is_surface_linear(fb, color_plane))
> +		return 64;
> +	else if (drm_rotation_90_or_270(rotation))
> +		return intel_tile_height(fb, color_plane);
> +	else
> +		return intel_tile_width_bytes(fb, color_plane);
> +}
> +
> +static u32 skl_plane_stride(const struct intel_plane_state *plane_state,
> +			    int color_plane)
> +{
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	u32 stride =3D plane_state->color_plane[color_plane].stride;
> +
> +	if (color_plane >=3D fb->format->num_planes)
> +		return 0;
> +
> +	return stride / skl_plane_stride_mult(fb, color_plane, rotation);
> +}
> +
> +static void
> +skl_disable_plane(struct intel_plane *plane,
> +		  const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum plane_id plane_id =3D plane->id;
> +	enum pipe pipe =3D plane->pipe;
> +	unsigned long irqflags;
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	if (icl_is_hdr_plane(dev_priv, plane_id))
> +		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
> +
> +	skl_write_plane_wm(plane, crtc_state);
> +
> +	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
> +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static bool
> +skl_plane_get_hw_state(struct intel_plane *plane,
> +		       enum pipe *pipe)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum intel_display_power_domain power_domain;
> +	enum plane_id plane_id =3D plane->id;
> +	intel_wakeref_t wakeref;
> +	bool ret;
> +
> +	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> +	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
> +	if (!wakeref)
> +		return false;
> +
> +	ret =3D intel_de_read(dev_priv, PLANE_CTL(plane->pipe, plane_id)) & PLA=
NE_CTL_ENABLE;
> +
> +	*pipe =3D plane->pipe;
> +
> +	intel_display_power_put(dev_priv, power_domain, wakeref);
> +
> +	return ret;
> +}
> +
> +static u32 skl_plane_ctl_format(u32 pixel_format)
> +{
> +	switch (pixel_format) {
> +	case DRM_FORMAT_C8:
> +		return PLANE_CTL_FORMAT_INDEXED;
> +	case DRM_FORMAT_RGB565:
> +		return PLANE_CTL_FORMAT_RGB_565;
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_ABGR8888:
> +		return PLANE_CTL_FORMAT_XRGB_8888 | PLANE_CTL_ORDER_RGBX;
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_ARGB8888:
> +		return PLANE_CTL_FORMAT_XRGB_8888;
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_ABGR2101010:
> +		return PLANE_CTL_FORMAT_XRGB_2101010 | PLANE_CTL_ORDER_RGBX;
> +	case DRM_FORMAT_XRGB2101010:
> +	case DRM_FORMAT_ARGB2101010:
> +		return PLANE_CTL_FORMAT_XRGB_2101010;
> +	case DRM_FORMAT_XBGR16161616F:
> +	case DRM_FORMAT_ABGR16161616F:
> +		return PLANE_CTL_FORMAT_XRGB_16161616F | PLANE_CTL_ORDER_RGBX;
> +	case DRM_FORMAT_XRGB16161616F:
> +	case DRM_FORMAT_ARGB16161616F:
> +		return PLANE_CTL_FORMAT_XRGB_16161616F;
> +	case DRM_FORMAT_XYUV8888:
> +		return PLANE_CTL_FORMAT_XYUV;
> +	case DRM_FORMAT_YUYV:
> +		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YUYV;
> +	case DRM_FORMAT_YVYU:
> +		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YVYU;
> +	case DRM_FORMAT_UYVY:
> +		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_UYVY;
> +	case DRM_FORMAT_VYUY:
> +		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_VYUY;
> +	case DRM_FORMAT_NV12:
> +		return PLANE_CTL_FORMAT_NV12;
> +	case DRM_FORMAT_P010:
> +		return PLANE_CTL_FORMAT_P010;
> +	case DRM_FORMAT_P012:
> +		return PLANE_CTL_FORMAT_P012;
> +	case DRM_FORMAT_P016:
> +		return PLANE_CTL_FORMAT_P016;
> +	case DRM_FORMAT_Y210:
> +		return PLANE_CTL_FORMAT_Y210;
> +	case DRM_FORMAT_Y212:
> +		return PLANE_CTL_FORMAT_Y212;
> +	case DRM_FORMAT_Y216:
> +		return PLANE_CTL_FORMAT_Y216;
> +	case DRM_FORMAT_XVYU2101010:
> +		return PLANE_CTL_FORMAT_Y410;
> +	case DRM_FORMAT_XVYU12_16161616:
> +		return PLANE_CTL_FORMAT_Y412;
> +	case DRM_FORMAT_XVYU16161616:
> +		return PLANE_CTL_FORMAT_Y416;
> +	default:
> +		MISSING_CASE(pixel_format);
> +	}
> +
> +	return 0;
> +}
> +
> +static u32 skl_plane_ctl_alpha(const struct intel_plane_state *plane_sta=
te)
> +{
> +	if (!plane_state->hw.fb->format->has_alpha)
> +		return PLANE_CTL_ALPHA_DISABLE;
> +
> +	switch (plane_state->hw.pixel_blend_mode) {
> +	case DRM_MODE_BLEND_PIXEL_NONE:
> +		return PLANE_CTL_ALPHA_DISABLE;
> +	case DRM_MODE_BLEND_PREMULTI:
> +		return PLANE_CTL_ALPHA_SW_PREMULTIPLY;
> +	case DRM_MODE_BLEND_COVERAGE:
> +		return PLANE_CTL_ALPHA_HW_PREMULTIPLY;
> +	default:
> +		MISSING_CASE(plane_state->hw.pixel_blend_mode);
> +		return PLANE_CTL_ALPHA_DISABLE;
> +	}
> +}
> +
> +static u32 glk_plane_color_ctl_alpha(const struct intel_plane_state *pla=
ne_state)
> +{
> +	if (!plane_state->hw.fb->format->has_alpha)
> +		return PLANE_COLOR_ALPHA_DISABLE;
> +
> +	switch (plane_state->hw.pixel_blend_mode) {
> +	case DRM_MODE_BLEND_PIXEL_NONE:
> +		return PLANE_COLOR_ALPHA_DISABLE;
> +	case DRM_MODE_BLEND_PREMULTI:
> +		return PLANE_COLOR_ALPHA_SW_PREMULTIPLY;
> +	case DRM_MODE_BLEND_COVERAGE:
> +		return PLANE_COLOR_ALPHA_HW_PREMULTIPLY;
> +	default:
> +		MISSING_CASE(plane_state->hw.pixel_blend_mode);
> +		return PLANE_COLOR_ALPHA_DISABLE;
> +	}
> +}
> +
> +static u32 skl_plane_ctl_tiling(u64 fb_modifier)
> +{
> +	switch (fb_modifier) {
> +	case DRM_FORMAT_MOD_LINEAR:
> +		break;
> +	case I915_FORMAT_MOD_X_TILED:
> +		return PLANE_CTL_TILED_X;
> +	case I915_FORMAT_MOD_Y_TILED:
> +		return PLANE_CTL_TILED_Y;
> +	case I915_FORMAT_MOD_Y_TILED_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> +		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +		return PLANE_CTL_TILED_Y |
> +		       PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
> +		       PLANE_CTL_CLEAR_COLOR_DISABLE;
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> +		return PLANE_CTL_TILED_Y | PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE;
> +	case I915_FORMAT_MOD_Yf_TILED:
> +		return PLANE_CTL_TILED_YF;
> +	case I915_FORMAT_MOD_Yf_TILED_CCS:
> +		return PLANE_CTL_TILED_YF | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> +	default:
> +		MISSING_CASE(fb_modifier);
> +	}
> +
> +	return 0;
> +}
> +
> +static u32 skl_plane_ctl_rotate(unsigned int rotate)
> +{
> +	switch (rotate) {
> +	case DRM_MODE_ROTATE_0:
> +		break;
> +	/*
> +	 * DRM_MODE_ROTATE_ is counter clockwise to stay compatible with Xrandr
> +	 * while i915 HW rotation is clockwise, thats why this swapping.
> +	 */
> +	case DRM_MODE_ROTATE_90:
> +		return PLANE_CTL_ROTATE_270;
> +	case DRM_MODE_ROTATE_180:
> +		return PLANE_CTL_ROTATE_180;
> +	case DRM_MODE_ROTATE_270:
> +		return PLANE_CTL_ROTATE_90;
> +	default:
> +		MISSING_CASE(rotate);
> +	}
> +
> +	return 0;
> +}
> +
> +static u32 cnl_plane_ctl_flip(unsigned int reflect)
> +{
> +	switch (reflect) {
> +	case 0:
> +		break;
> +	case DRM_MODE_REFLECT_X:
> +		return PLANE_CTL_FLIP_HORIZONTAL;
> +	case DRM_MODE_REFLECT_Y:
> +	default:
> +		MISSING_CASE(reflect);
> +	}
> +
> +	return 0;
> +}
> +
> +static u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	u32 plane_ctl =3D 0;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +		return plane_ctl;
> +
> +	if (crtc_state->gamma_enable)
> +		plane_ctl |=3D PLANE_CTL_PIPE_GAMMA_ENABLE;
> +
> +	if (crtc_state->csc_enable)
> +		plane_ctl |=3D PLANE_CTL_PIPE_CSC_ENABLE;
> +
> +	return plane_ctl;
> +}
> +
> +static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
> +			 const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D
> +		to_i915(plane_state->uapi.plane->dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> +	u32 plane_ctl;
> +
> +	plane_ctl =3D PLANE_CTL_ENABLE;
> +
> +	if (INTEL_GEN(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
> +		plane_ctl |=3D skl_plane_ctl_alpha(plane_state);
> +		plane_ctl |=3D PLANE_CTL_PLANE_GAMMA_DISABLE;
> +
> +		if (plane_state->hw.color_encoding =3D=3D DRM_COLOR_YCBCR_BT709)
> +			plane_ctl |=3D PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709;
> +
> +		if (plane_state->hw.color_range =3D=3D DRM_COLOR_YCBCR_FULL_RANGE)
> +			plane_ctl |=3D PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE;
> +	}
> +
> +	plane_ctl |=3D skl_plane_ctl_format(fb->format->format);
> +	plane_ctl |=3D skl_plane_ctl_tiling(fb->modifier);
> +	plane_ctl |=3D skl_plane_ctl_rotate(rotation & DRM_MODE_ROTATE_MASK);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10)
> +		plane_ctl |=3D cnl_plane_ctl_flip(rotation &
> +						DRM_MODE_REFLECT_MASK);
> +
> +	if (key->flags & I915_SET_COLORKEY_DESTINATION)
> +		plane_ctl |=3D PLANE_CTL_KEY_ENABLE_DESTINATION;
> +	else if (key->flags & I915_SET_COLORKEY_SOURCE)
> +		plane_ctl |=3D PLANE_CTL_KEY_ENABLE_SOURCE;
> +
> +	return plane_ctl;
> +}
> +
> +static u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_=
state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	u32 plane_color_ctl =3D 0;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 11)
> +		return plane_color_ctl;
> +
> +	if (crtc_state->gamma_enable)
> +		plane_color_ctl |=3D PLANE_COLOR_PIPE_GAMMA_ENABLE;
> +
> +	if (crtc_state->csc_enable)
> +		plane_color_ctl |=3D PLANE_COLOR_PIPE_CSC_ENABLE;
> +
> +	return plane_color_ctl;
> +}
> +
> +static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
> +			       const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D
> +		to_i915(plane_state->uapi.plane->dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	u32 plane_color_ctl =3D 0;
> +
> +	plane_color_ctl |=3D PLANE_COLOR_PLANE_GAMMA_DISABLE;
> +	plane_color_ctl |=3D glk_plane_color_ctl_alpha(plane_state);
> +
> +	if (fb->format->is_yuv && !icl_is_hdr_plane(dev_priv, plane->id)) {
> +		switch (plane_state->hw.color_encoding) {
> +		case DRM_COLOR_YCBCR_BT709:
> +			plane_color_ctl |=3D PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> +			break;
> +		case DRM_COLOR_YCBCR_BT2020:
> +			plane_color_ctl |=3D
> +				PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> +			break;
> +		default:
> +			plane_color_ctl |=3D
> +				PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
> +		}
> +		if (plane_state->hw.color_range =3D=3D DRM_COLOR_YCBCR_FULL_RANGE)
> +			plane_color_ctl |=3D PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> +	} else if (fb->format->is_yuv) {
> +		plane_color_ctl |=3D PLANE_COLOR_INPUT_CSC_ENABLE;
> +		if (plane_state->hw.color_range =3D=3D DRM_COLOR_YCBCR_FULL_RANGE)
> +			plane_color_ctl |=3D PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> +	}
> +
> +	return plane_color_ctl;
> +}
> +
> +static int
> +main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
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
> +static int
> +skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
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
> +
> +static void
> +skl_program_plane(struct intel_plane *plane,
> +		  const struct intel_crtc_state *crtc_state,
> +		  const struct intel_plane_state *plane_state,
> +		  int color_plane)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	enum plane_id plane_id =3D plane->id;
> +	enum pipe pipe =3D plane->pipe;
> +	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
> +	u32 surf_addr =3D plane_state->color_plane[color_plane].offset;
> +	u32 stride =3D skl_plane_stride(plane_state, color_plane);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	int aux_plane =3D skl_main_to_aux_plane(fb, color_plane);
> +	int crtc_x =3D plane_state->uapi.dst.x1;
> +	int crtc_y =3D plane_state->uapi.dst.y1;
> +	u32 x =3D plane_state->color_plane[color_plane].x;
> +	u32 y =3D plane_state->color_plane[color_plane].y;
> +	u32 src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +	u32 src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> +	u8 alpha =3D plane_state->hw.alpha >> 8;
> +	u32 plane_color_ctl =3D 0, aux_dist =3D 0;
> +	unsigned long irqflags;
> +	u32 keymsk, keymax;
> +	u32 plane_ctl =3D plane_state->ctl;
> +
> +	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +		plane_color_ctl =3D plane_state->color_ctl |
> +			glk_plane_color_ctl_crtc(crtc_state);
> +
> +	/* Sizes are 0 based */
> +	src_w--;
> +	src_h--;
> +
> +	keymax =3D (key->max_value & 0xffffff) | PLANE_KEYMAX_ALPHA(alpha);
> +
> +	keymsk =3D key->channel_mask & 0x7ffffff;
> +	if (alpha < 0xff)
> +		keymsk |=3D PLANE_KEYMSK_ALPHA_ENABLE;
> +
> +	/* The scaler will handle the output position */
> +	if (plane_state->scaler_id >=3D 0) {
> +		crtc_x =3D 0;
> +		crtc_y =3D 0;
> +	}
> +
> +	if (aux_plane) {
> +		aux_dist =3D plane_state->color_plane[aux_plane].offset - surf_addr;
> +
> +		if (INTEL_GEN(dev_priv) < 12)
> +			aux_dist |=3D skl_plane_stride(plane_state, aux_plane);
> +	}
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id), stride);
> +	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
> +			  (crtc_y << 16) | crtc_x);
> +	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
> +			  (src_h << 16) | src_w);
> +
> +	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id), aux_dist);
> +
> +	if (icl_is_hdr_plane(dev_priv, plane_id))
> +		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
> +				  plane_state->cus_ctl);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
> +				  plane_color_ctl);
> +
> +	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
> +		icl_program_input_csc(plane, crtc_state, plane_state);
> +
> +	if (fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)
> +		intel_uncore_write64_fw(&dev_priv->uncore,
> +					PLANE_CC_VAL(pipe, plane_id), plane_state->ccval);
> +
> +	skl_write_plane_wm(plane, crtc_state);
> +
> +	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id),
> +			  key->min_value);
> +	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), keymsk);
> +	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), keymax);
> +
> +	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
> +			  (y << 16) | x);
> +
> +	if (INTEL_GEN(dev_priv) < 11)
> +		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
> +				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1=
].x);
> +
> +	if (!drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
> +		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, col=
or_plane);
> +
> +	/*
> +	 * The control register self-arms if the plane was previously
> +	 * disabled. Try to make the plane enable atomic by writing
> +	 * the control register just before the surface register.
> +	 */
> +	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> +			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> +
> +	if (plane_state->scaler_id >=3D 0)
> +		skl_program_scaler(plane, crtc_state, plane_state);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void
> +skl_plane_async_flip(struct intel_plane *plane,
> +		     const struct intel_crtc_state *crtc_state,
> +		     const struct intel_plane_state *plane_state,
> +		     bool async_flip)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	unsigned long irqflags;
> +	enum plane_id plane_id =3D plane->id;
> +	enum pipe pipe =3D plane->pipe;
> +	u32 surf_addr =3D plane_state->color_plane[0].offset;
> +	u32 plane_ctl =3D plane_state->ctl;
> +
> +	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state);
> +
> +	if (async_flip)
> +		plane_ctl |=3D PLANE_CTL_ASYNC_FLIP;
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> +			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void
> +skl_update_plane(struct intel_plane *plane,
> +		 const struct intel_crtc_state *crtc_state,
> +		 const struct intel_plane_state *plane_state)
> +{
> +	int color_plane =3D 0;
> +
> +	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
> +		/* Program the UV plane on planar master */
> +		color_plane =3D 1;
> +
> +	skl_program_plane(plane, crtc_state, plane_state, color_plane);
> +}
> +
> +static bool intel_format_is_p01x(u32 format)
> +{
> +	switch (format) {
> +	case DRM_FORMAT_P010:
> +	case DRM_FORMAT_P012:
> +	case DRM_FORMAT_P016:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
> +			      const struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	struct drm_format_name_buf format_name;
> +
> +	if (!fb)
> +		return 0;
> +
> +	if (rotation & ~(DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180) &&
> +	    is_ccs_modifier(fb->modifier)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "RC support only with 0/180 degree rotation (%x)\n",
> +			    rotation);
> +		return -EINVAL;
> +	}
> +
> +	if (rotation & DRM_MODE_REFLECT_X &&
> +	    fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "horizontal flip is not supported with linear surface formats\n");
> +		return -EINVAL;
> +	}
> +
> +	if (drm_rotation_90_or_270(rotation)) {
> +		if (fb->modifier !=3D I915_FORMAT_MOD_Y_TILED &&
> +		    fb->modifier !=3D I915_FORMAT_MOD_Yf_TILED) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Y/Yf tiling required for 90/270!\n");
> +			return -EINVAL;
> +		}
> +
> +		/*
> +		 * 90/270 is not allowed with RGB64 16:16:16:16 and
> +		 * Indexed 8-bit. RGB 16-bit 5:6:5 is allowed gen11 onwards.
> +		 */
> +		switch (fb->format->format) {
> +		case DRM_FORMAT_RGB565:
> +			if (INTEL_GEN(dev_priv) >=3D 11)
> +				break;
> +			fallthrough;
> +		case DRM_FORMAT_C8:
> +		case DRM_FORMAT_XRGB16161616F:
> +		case DRM_FORMAT_XBGR16161616F:
> +		case DRM_FORMAT_ARGB16161616F:
> +		case DRM_FORMAT_ABGR16161616F:
> +		case DRM_FORMAT_Y210:
> +		case DRM_FORMAT_Y212:
> +		case DRM_FORMAT_Y216:
> +		case DRM_FORMAT_XVYU12_16161616:
> +		case DRM_FORMAT_XVYU16161616:
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Unsupported pixel format %s for 90/270!\n",
> +				    drm_get_format_name(fb->format->format,
> +							&format_name));
> +			return -EINVAL;
> +		default:
> +			break;
> +		}
> +	}
> +
> +	/* Y-tiling is not supported in IF-ID Interlace mode */
> +	if (crtc_state->hw.enable &&
> +	    crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE &&
> +	    (fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED ||
> +	     fb->modifier =3D=3D I915_FORMAT_MOD_Yf_TILED ||
> +	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> +	     fb->modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS ||
> +	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> +	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> +	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Y/Yf tiling not supported in IF-ID mode\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Wa_1606054188:tgl,adl-s */
> +	if ((IS_ALDERLAKE_S(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
> +	    plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE &&
> +	    intel_format_is_p01x(fb->format->format)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Source color keying not supported with P01x formats\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int skl_plane_check_dst_coordinates(const struct intel_crtc_state=
 *crtc_state,
> +					   const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D
> +		to_i915(plane_state->uapi.plane->dev);
> +	int crtc_x =3D plane_state->uapi.dst.x1;
> +	int crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> +	int pipe_src_w =3D crtc_state->pipe_src_w;
> +
> +	/*
> +	 * Display WA #1175: cnl,glk
> +	 * Planes other than the cursor may cause FIFO underflow and display
> +	 * corruption if starting less than 4 pixels from the right edge of
> +	 * the screen.
> +	 * Besides the above WA fix the similar problem, where planes other
> +	 * than the cursor ending less than 4 pixels from the left edge of the
> +	 * screen may cause FIFO underflow and display corruption.
> +	 */
> +	if ((IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv)) &&
> +	    (crtc_x + crtc_w < 4 || crtc_x > pipe_src_w - 4)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "requested plane X %s position %d invalid (valid range %d-%d)\n",
> +			    crtc_x + crtc_w < 4 ? "end" : "start",
> +			    crtc_x + crtc_w < 4 ? crtc_x + crtc_w : crtc_x,
> +			    4, pipe_src_w - 4);
> +		return -ERANGE;
> +	}
> +
> +	return 0;
> +}
> +
> +static int skl_plane_check_nv12_rotation(const struct intel_plane_state =
*plane_state)
> +{
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	int src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +
> +	/* Display WA #1106 */
> +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> +	    src_w & 3 &&
> +	    (rotation =3D=3D DRM_MODE_ROTATE_270 ||
> +	     rotation =3D=3D (DRM_MODE_REFLECT_X | DRM_MODE_ROTATE_90))) {
> +		DRM_DEBUG_KMS("src width must be multiple of 4 for rotated planar YUV\=
n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int skl_plane_max_scale(struct drm_i915_private *dev_priv,
> +			       const struct drm_framebuffer *fb)
> +{
> +	/*
> +	 * We don't yet know the final source width nor
> +	 * whether we can use the HQ scaler mode. Assume
> +	 * the best case.
> +	 * FIXME need to properly check this later.
> +	 */
> +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv) ||
> +	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> +		return 0x30000 - 1;
> +	else
> +		return 0x20000 - 1;
> +}
> +
> +static int intel_plane_min_width(struct intel_plane *plane,
> +				 const struct drm_framebuffer *fb,
> +				 int color_plane,
> +				 unsigned int rotation)
> +{
> +	if (plane->min_width)
> +		return plane->min_width(fb, color_plane, rotation);
> +	else
> +		return 1;
> +}
> +
> +static int intel_plane_max_width(struct intel_plane *plane,
> +				 const struct drm_framebuffer *fb,
> +				 int color_plane,
> +				 unsigned int rotation)
> +{
> +	if (plane->max_width)
> +		return plane->max_width(fb, color_plane, rotation);
> +	else
> +		return INT_MAX;
> +}
> +
> +static int intel_plane_max_height(struct intel_plane *plane,
> +				  const struct drm_framebuffer *fb,
> +				  int color_plane,
> +				  unsigned int rotation)
> +{
> +	if (plane->max_height)
> +		return plane->max_height(fb, color_plane, rotation);
> +	else
> +		return INT_MAX;
> +}
> +
> +static bool
> +skl_check_main_ccs_coordinates(struct intel_plane_state *plane_state,
> +			       int main_x, int main_y, u32 main_offset,
> +			       int ccs_plane)
> +{
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	int aux_x =3D plane_state->color_plane[ccs_plane].x;
> +	int aux_y =3D plane_state->color_plane[ccs_plane].y;
> +	u32 aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> +	u32 alignment =3D intel_surf_alignment(fb, ccs_plane);
> +	int hsub;
> +	int vsub;
> +
> +	intel_fb_plane_get_subsampling(&hsub, &vsub, fb, ccs_plane);
> +	while (aux_offset >=3D main_offset && aux_y <=3D main_y) {
> +		int x, y;
> +
> +		if (aux_x =3D=3D main_x && aux_y =3D=3D main_y)
> +			break;
> +
> +		if (aux_offset =3D=3D 0)
> +			break;
> +
> +		x =3D aux_x / hsub;
> +		y =3D aux_y / vsub;
> +		aux_offset =3D intel_plane_adjust_aligned_offset(&x, &y,
> +							       plane_state,
> +							       ccs_plane,
> +							       aux_offset,
> +							       aux_offset -
> +								alignment);
> +		aux_x =3D x * hsub + aux_x % hsub;
> +		aux_y =3D y * vsub + aux_y % vsub;
> +	}
> +
> +	if (aux_x !=3D main_x || aux_y !=3D main_y)
> +		return false;
> +
> +	plane_state->color_plane[ccs_plane].offset =3D aux_offset;
> +	plane_state->color_plane[ccs_plane].x =3D aux_x;
> +	plane_state->color_plane[ccs_plane].y =3D aux_y;
> +
> +	return true;
> +}
> +
> +
> +int skl_calc_main_surface_offset(const struct intel_plane_state *plane_s=
tate,
> +				 int *x, int *y, u32 *offset)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	const int aux_plane =3D skl_main_to_aux_plane(fb, 0);
> +	const u32 aux_offset =3D plane_state->color_plane[aux_plane].offset;
> +	const u32 alignment =3D intel_surf_alignment(fb, 0);
> +	const int w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +
> +	intel_add_fb_offsets(x, y, plane_state, 0);
> +	*offset =3D intel_plane_compute_aligned_offset(x, y, plane_state, 0);
> +	if (drm_WARN_ON(&dev_priv->drm, alignment && !is_power_of_2(alignment)))
> +		return -EINVAL;
> +
> +	/*
> +	 * AUX surface offset is specified as the distance from the
> +	 * main surface offset, and it must be non-negative. Make
> +	 * sure that is what we will get.
> +	 */
> +	if (aux_plane && *offset > aux_offset)
> +		*offset =3D intel_plane_adjust_aligned_offset(x, y, plane_state, 0,
> +							    *offset,
> +							    aux_offset & ~(alignment - 1));
> +
> +	/*
> +	 * When using an X-tiled surface, the plane blows up
> +	 * if the x offset + width exceed the stride.
> +	 *
> +	 * TODO: linear and Y-tiled seem fine, Yf untested,
> +	 */
> +	if (fb->modifier =3D=3D I915_FORMAT_MOD_X_TILED) {
> +		int cpp =3D fb->format->cpp[0];
> +
> +		while ((*x + w) * cpp > plane_state->color_plane[0].stride) {
> +			if (*offset =3D=3D 0) {
> +				drm_dbg_kms(&dev_priv->drm,
> +					    "Unable to find suitable display surface offset due to X-tiling=
\n");
> +				return -EINVAL;
> +			}
> +
> +			*offset =3D intel_plane_adjust_aligned_offset(x, y, plane_state, 0,
> +								    *offset,
> +								    *offset - alignment);
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int skl_check_main_surface(struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	const unsigned int rotation =3D plane_state->hw.rotation;
> +	int x =3D plane_state->uapi.src.x1 >> 16;
> +	int y =3D plane_state->uapi.src.y1 >> 16;
> +	const int w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +	const int h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> +	const int min_width =3D intel_plane_min_width(plane, fb, 0, rotation);
> +	const int max_width =3D intel_plane_max_width(plane, fb, 0, rotation);
> +	const int max_height =3D intel_plane_max_height(plane, fb, 0, rotation);
> +	const int aux_plane =3D skl_main_to_aux_plane(fb, 0);
> +	const u32 alignment =3D intel_surf_alignment(fb, 0);
> +	u32 offset;
> +	int ret;
> +
> +	if (w > max_width || w < min_width || h > max_height) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "requested Y/RGB source size %dx%d outside limits (min: %dx1 max:=
 %dx%d)\n",
> +			    w, h, min_width, max_width, max_height);
> +		return -EINVAL;
> +	}
> +
> +	ret =3D skl_calc_main_surface_offset(plane_state, &x, &y, &offset);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * CCS AUX surface doesn't have its own x/y offsets, we must make sure
> +	 * they match with the main surface x/y offsets.
> +	 */
> +	if (is_ccs_modifier(fb->modifier)) {
> +		while (!skl_check_main_ccs_coordinates(plane_state, x, y,
> +						       offset, aux_plane)) {
> +			if (offset =3D=3D 0)
> +				break;
> +
> +			offset =3D intel_plane_adjust_aligned_offset(&x, &y, plane_state, 0,
> +								   offset, offset - alignment);
> +		}
> +
> +		if (x !=3D plane_state->color_plane[aux_plane].x ||
> +		    y !=3D plane_state->color_plane[aux_plane].y) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Unable to find suitable display surface offset due to CCS\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	drm_WARN_ON(&dev_priv->drm, x > 8191 || y > 8191);
> +
> +	plane_state->color_plane[0].offset =3D offset;
> +	plane_state->color_plane[0].x =3D x;
> +	plane_state->color_plane[0].y =3D y;
> +
> +	/*
> +	 * Put the final coordinates back so that the src
> +	 * coordinate checks will see the right values.
> +	 */
> +	drm_rect_translate_to(&plane_state->uapi.src,
> +			      x << 16, y << 16);
> +
> +	return 0;
> +}
> +
> +static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_st=
ate)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	int uv_plane =3D 1;
> +	int max_width =3D intel_plane_max_width(plane, fb, uv_plane, rotation);
> +	int max_height =3D intel_plane_max_height(plane, fb, uv_plane, rotation=
);
> +	int x =3D plane_state->uapi.src.x1 >> 17;
> +	int y =3D plane_state->uapi.src.y1 >> 17;
> +	int w =3D drm_rect_width(&plane_state->uapi.src) >> 17;
> +	int h =3D drm_rect_height(&plane_state->uapi.src) >> 17;
> +	u32 offset;
> +
> +	/* FIXME not quite sure how/if these apply to the chroma plane */
> +	if (w > max_width || h > max_height) {
> +		drm_dbg_kms(&i915->drm,
> +			    "CbCr source size %dx%d too big (limit %dx%d)\n",
> +			    w, h, max_width, max_height);
> +		return -EINVAL;
> +	}
> +
> +	intel_add_fb_offsets(&x, &y, plane_state, uv_plane);
> +	offset =3D intel_plane_compute_aligned_offset(&x, &y,
> +						    plane_state, uv_plane);
> +
> +	if (is_ccs_modifier(fb->modifier)) {
> +		int ccs_plane =3D main_to_ccs_plane(fb, uv_plane);
> +		u32 aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> +		u32 alignment =3D intel_surf_alignment(fb, uv_plane);
> +
> +		if (offset > aux_offset)
> +			offset =3D intel_plane_adjust_aligned_offset(&x, &y,
> +								   plane_state,
> +								   uv_plane,
> +								   offset,
> +								   aux_offset & ~(alignment - 1));
> +
> +		while (!skl_check_main_ccs_coordinates(plane_state, x, y,
> +						       offset, ccs_plane)) {
> +			if (offset =3D=3D 0)
> +				break;
> +
> +			offset =3D intel_plane_adjust_aligned_offset(&x, &y,
> +								   plane_state,
> +								   uv_plane,
> +								   offset, offset - alignment);
> +		}
> +
> +		if (x !=3D plane_state->color_plane[ccs_plane].x ||
> +		    y !=3D plane_state->color_plane[ccs_plane].y) {
> +			drm_dbg_kms(&i915->drm,
> +				    "Unable to find suitable display surface offset due to CCS\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	drm_WARN_ON(&i915->drm, x > 8191 || y > 8191);
> +
> +	plane_state->color_plane[uv_plane].offset =3D offset;
> +	plane_state->color_plane[uv_plane].x =3D x;
> +	plane_state->color_plane[uv_plane].y =3D y;
> +
> +	return 0;
> +}
> +
> +static int skl_check_ccs_aux_surface(struct intel_plane_state *plane_sta=
te)
> +{
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	int src_x =3D plane_state->uapi.src.x1 >> 16;
> +	int src_y =3D plane_state->uapi.src.y1 >> 16;
> +	u32 offset;
> +	int ccs_plane;
> +
> +	for (ccs_plane =3D 0; ccs_plane < fb->format->num_planes; ccs_plane++) {
> +		int main_hsub, main_vsub;
> +		int hsub, vsub;
> +		int x, y;
> +
> +		if (!is_ccs_plane(fb, ccs_plane) ||
> +		    is_gen12_ccs_cc_plane(fb, ccs_plane))
> +			continue;
> +
> +		intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb,
> +					       skl_ccs_to_main_plane(fb, ccs_plane));
> +		intel_fb_plane_get_subsampling(&hsub, &vsub, fb, ccs_plane);
> +
> +		hsub *=3D main_hsub;
> +		vsub *=3D main_vsub;
> +		x =3D src_x / hsub;
> +		y =3D src_y / vsub;
> +
> +		intel_add_fb_offsets(&x, &y, plane_state, ccs_plane);
> +
> +		offset =3D intel_plane_compute_aligned_offset(&x, &y,
> +							    plane_state,
> +							    ccs_plane);
> +
> +		plane_state->color_plane[ccs_plane].offset =3D offset;
> +		plane_state->color_plane[ccs_plane].x =3D (x * hsub +
> +							 src_x % hsub) /
> +							main_hsub;
> +		plane_state->color_plane[ccs_plane].y =3D (y * vsub +
> +							 src_y % vsub) /
> +							main_vsub;
> +	}
> +
> +	return 0;
> +}
> +
> +static int skl_check_plane_surface(struct intel_plane_state *plane_state)
> +{
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	int ret, i;
> +
> +	ret =3D intel_plane_compute_gtt(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	if (!plane_state->uapi.visible)
> +		return 0;
> +
> +	/*
> +	 * Handle the AUX surface first since the main surface setup depends on
> +	 * it.
> +	 */
> +	if (is_ccs_modifier(fb->modifier)) {
> +		ret =3D skl_check_ccs_aux_surface(plane_state);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (intel_format_info_is_yuv_semiplanar(fb->format,
> +						fb->modifier)) {
> +		ret =3D skl_check_nv12_aux_surface(plane_state);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	for (i =3D fb->format->num_planes; i < ARRAY_SIZE(plane_state->color_pl=
ane); i++) {
> +		plane_state->color_plane[i].offset =3D 0;
> +		plane_state->color_plane[i].x =3D 0;
> +		plane_state->color_plane[i].y =3D 0;
> +	}
> +
> +	ret =3D skl_check_main_surface(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static bool intel_fb_scalable(const struct drm_framebuffer *fb)
> +{
> +	if (!fb)
> +		return false;
> +
> +	switch (fb->format->format) {
> +	case DRM_FORMAT_C8:
> +		return false;
> +	case DRM_FORMAT_XRGB16161616F:
> +	case DRM_FORMAT_ARGB16161616F:
> +	case DRM_FORMAT_XBGR16161616F:
> +	case DRM_FORMAT_ABGR16161616F:
> +		return INTEL_GEN(to_i915(fb->dev)) >=3D 11;
> +	default:
> +		return true;
> +	}
> +}
> +
> +static int skl_plane_check(struct intel_crtc_state *crtc_state,
> +			   struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	int min_scale =3D DRM_PLANE_HELPER_NO_SCALING;
> +	int max_scale =3D DRM_PLANE_HELPER_NO_SCALING;
> +	int ret;
> +
> +	ret =3D skl_plane_check_fb(crtc_state, plane_state);
> +	if (ret)
> +		return ret;
> +
> +	/* use scaler when colorkey is not required */
> +	if (!plane_state->ckey.flags && intel_fb_scalable(fb)) {
> +		min_scale =3D 1;
> +		max_scale =3D skl_plane_max_scale(dev_priv, fb);
> +	}
> +
> +	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						min_scale, max_scale, true);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D skl_check_plane_surface(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	if (!plane_state->uapi.visible)
> +		return 0;
> +
> +	ret =3D skl_plane_check_dst_coordinates(crtc_state, plane_state);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D intel_plane_check_src_coordinates(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D skl_plane_check_nv12_rotation(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	/* HW only has 8 bits pixel precision, disable plane if invisible */
> +	if (!(plane_state->hw.alpha >> 8))
> +		plane_state->uapi.visible =3D false;
> +
> +	plane_state->ctl =3D skl_plane_ctl(crtc_state, plane_state);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +		plane_state->color_ctl =3D glk_plane_color_ctl(crtc_state,
> +							     plane_state);
> +
> +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> +	    icl_is_hdr_plane(dev_priv, plane->id))
> +		/* Enable and use MPEG-2 chroma siting */
> +		plane_state->cus_ctl =3D PLANE_CUS_ENABLE |
> +			PLANE_CUS_HPHASE_0 |
> +			PLANE_CUS_VPHASE_SIGN_NEGATIVE | PLANE_CUS_VPHASE_0_25;
> +	else
> +		plane_state->cus_ctl =3D 0;
> +
> +	return 0;
> +}
> +
> +static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
> +			      enum pipe pipe, enum plane_id plane_id)
> +{
> +	if (!HAS_FBC(dev_priv))
> +		return false;
> +
> +	return pipe =3D=3D PIPE_A && plane_id =3D=3D PLANE_PRIMARY;
> +}
> +
> +static bool skl_plane_has_planar(struct drm_i915_private *dev_priv,
> +				 enum pipe pipe, enum plane_id plane_id)
> +{
> +	/* Display WA #0870: skl, bxt */
> +	if (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))
> +		return false;
> +
> +	if (IS_GEN(dev_priv, 9) && !IS_GEMINILAKE(dev_priv) && pipe =3D=3D PIPE=
_C)
> +		return false;
> +
> +	if (plane_id !=3D PLANE_PRIMARY && plane_id !=3D PLANE_SPRITE0)
> +		return false;
> +
> +	return true;
> +}
> +
> +static const u32 *skl_get_plane_formats(struct drm_i915_private *dev_pri=
v,
> +					enum pipe pipe, enum plane_id plane_id,
> +					int *num_formats)
> +{
> +	if (skl_plane_has_planar(dev_priv, pipe, plane_id)) {
> +		*num_formats =3D ARRAY_SIZE(skl_planar_formats);
> +		return skl_planar_formats;
> +	} else {
> +		*num_formats =3D ARRAY_SIZE(skl_plane_formats);
> +		return skl_plane_formats;
> +	}
> +}
> +
> +static const u32 *glk_get_plane_formats(struct drm_i915_private *dev_pri=
v,
> +					enum pipe pipe, enum plane_id plane_id,
> +					int *num_formats)
> +{
> +	if (skl_plane_has_planar(dev_priv, pipe, plane_id)) {
> +		*num_formats =3D ARRAY_SIZE(glk_planar_formats);
> +		return glk_planar_formats;
> +	} else {
> +		*num_formats =3D ARRAY_SIZE(skl_plane_formats);
> +		return skl_plane_formats;
> +	}
> +}
> +
> +static const u32 *icl_get_plane_formats(struct drm_i915_private *dev_pri=
v,
> +					enum pipe pipe, enum plane_id plane_id,
> +					int *num_formats)
> +{
> +	if (icl_is_hdr_plane(dev_priv, plane_id)) {
> +		*num_formats =3D ARRAY_SIZE(icl_hdr_plane_formats);
> +		return icl_hdr_plane_formats;
> +	} else if (icl_is_nv12_y_plane(dev_priv, plane_id)) {
> +		*num_formats =3D ARRAY_SIZE(icl_sdr_y_plane_formats);
> +		return icl_sdr_y_plane_formats;
> +	} else {
> +		*num_formats =3D ARRAY_SIZE(icl_sdr_uv_plane_formats);
> +		return icl_sdr_uv_plane_formats;
> +	}
> +}
> +
> +static bool skl_plane_has_ccs(struct drm_i915_private *dev_priv,
> +			      enum pipe pipe, enum plane_id plane_id)
> +{
> +	if (plane_id =3D=3D PLANE_CURSOR)
> +		return false;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10)
> +		return true;
> +
> +	if (IS_GEMINILAKE(dev_priv))
> +		return pipe !=3D PIPE_C;
> +
> +	return pipe !=3D PIPE_C &&
> +		(plane_id =3D=3D PLANE_PRIMARY ||
> +		 plane_id =3D=3D PLANE_SPRITE0);
> +}
> +
> +static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
> +					   u32 format, u64 modifier)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(_plane);
> +
> +	switch (modifier) {
> +	case DRM_FORMAT_MOD_LINEAR:
> +	case I915_FORMAT_MOD_X_TILED:
> +	case I915_FORMAT_MOD_Y_TILED:
> +	case I915_FORMAT_MOD_Yf_TILED:
> +		break;
> +	case I915_FORMAT_MOD_Y_TILED_CCS:
> +	case I915_FORMAT_MOD_Yf_TILED_CCS:
> +		if (!plane->has_ccs)
> +			return false;
> +		break;
> +	default:
> +		return false;
> +	}
> +
> +	switch (format) {
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_ARGB8888:
> +	case DRM_FORMAT_ABGR8888:
> +		if (is_ccs_modifier(modifier))
> +			return true;
> +		fallthrough;
> +	case DRM_FORMAT_RGB565:
> +	case DRM_FORMAT_XRGB2101010:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_ARGB2101010:
> +	case DRM_FORMAT_ABGR2101010:
> +	case DRM_FORMAT_YUYV:
> +	case DRM_FORMAT_YVYU:
> +	case DRM_FORMAT_UYVY:
> +	case DRM_FORMAT_VYUY:
> +	case DRM_FORMAT_NV12:
> +	case DRM_FORMAT_XYUV8888:
> +	case DRM_FORMAT_P010:
> +	case DRM_FORMAT_P012:
> +	case DRM_FORMAT_P016:
> +	case DRM_FORMAT_XVYU2101010:
> +		if (modifier =3D=3D I915_FORMAT_MOD_Yf_TILED)
> +			return true;
> +		fallthrough;
> +	case DRM_FORMAT_C8:
> +	case DRM_FORMAT_XBGR16161616F:
> +	case DRM_FORMAT_ABGR16161616F:
> +	case DRM_FORMAT_XRGB16161616F:
> +	case DRM_FORMAT_ARGB16161616F:
> +	case DRM_FORMAT_Y210:
> +	case DRM_FORMAT_Y212:
> +	case DRM_FORMAT_Y216:
> +	case DRM_FORMAT_XVYU12_16161616:
> +	case DRM_FORMAT_XVYU16161616:
> +		if (modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> +		    modifier =3D=3D I915_FORMAT_MOD_X_TILED ||
> +		    modifier =3D=3D I915_FORMAT_MOD_Y_TILED)
> +			return true;
> +		fallthrough;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool gen12_plane_supports_mc_ccs(struct drm_i915_private *dev_pri=
v,
> +					enum plane_id plane_id)
> +{
> +	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> +	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> +	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_C0))
> +		return false;
> +
> +	return plane_id < PLANE_SPRITE4;
> +}
> +
> +static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
> +					     u32 format, u64 modifier)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(_plane->dev);
> +	struct intel_plane *plane =3D to_intel_plane(_plane);
> +
> +	switch (modifier) {
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> +		if (!gen12_plane_supports_mc_ccs(dev_priv, plane->id))
> +			return false;
> +		fallthrough;
> +	case DRM_FORMAT_MOD_LINEAR:
> +	case I915_FORMAT_MOD_X_TILED:
> +	case I915_FORMAT_MOD_Y_TILED:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> +		break;
> +	default:
> +		return false;
> +	}
> +
> +	switch (format) {
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_ARGB8888:
> +	case DRM_FORMAT_ABGR8888:
> +		if (is_ccs_modifier(modifier))
> +			return true;
> +		fallthrough;
> +	case DRM_FORMAT_YUYV:
> +	case DRM_FORMAT_YVYU:
> +	case DRM_FORMAT_UYVY:
> +	case DRM_FORMAT_VYUY:
> +	case DRM_FORMAT_NV12:
> +	case DRM_FORMAT_XYUV8888:
> +	case DRM_FORMAT_P010:
> +	case DRM_FORMAT_P012:
> +	case DRM_FORMAT_P016:
> +		if (modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS)
> +			return true;
> +		fallthrough;
> +	case DRM_FORMAT_RGB565:
> +	case DRM_FORMAT_XRGB2101010:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_ARGB2101010:
> +	case DRM_FORMAT_ABGR2101010:
> +	case DRM_FORMAT_XVYU2101010:
> +	case DRM_FORMAT_C8:
> +	case DRM_FORMAT_XBGR16161616F:
> +	case DRM_FORMAT_ABGR16161616F:
> +	case DRM_FORMAT_XRGB16161616F:
> +	case DRM_FORMAT_ARGB16161616F:
> +	case DRM_FORMAT_Y210:
> +	case DRM_FORMAT_Y212:
> +	case DRM_FORMAT_Y216:
> +	case DRM_FORMAT_XVYU12_16161616:
> +	case DRM_FORMAT_XVYU16161616:
> +		if (modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> +		    modifier =3D=3D I915_FORMAT_MOD_X_TILED ||
> +		    modifier =3D=3D I915_FORMAT_MOD_Y_TILED)
> +			return true;
> +		fallthrough;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static const u64 *gen12_get_plane_modifiers(struct drm_i915_private *dev=
_priv,
> +					    enum plane_id plane_id)
> +{
> +	if (gen12_plane_supports_mc_ccs(dev_priv, plane_id))
> +		return gen12_plane_format_modifiers_mc_ccs;
> +	else
> +		return gen12_plane_format_modifiers_rc_ccs;
> +}
> +
> +static const struct drm_plane_funcs skl_plane_funcs =3D {
> +	.update_plane =3D drm_atomic_helper_update_plane,
> +	.disable_plane =3D drm_atomic_helper_disable_plane,
> +	.destroy =3D intel_plane_destroy,
> +	.atomic_duplicate_state =3D intel_plane_duplicate_state,
> +	.atomic_destroy_state =3D intel_plane_destroy_state,
> +	.format_mod_supported =3D skl_plane_format_mod_supported,
> +};
> +
> +static const struct drm_plane_funcs gen12_plane_funcs =3D {
> +	.update_plane =3D drm_atomic_helper_update_plane,
> +	.disable_plane =3D drm_atomic_helper_disable_plane,
> +	.destroy =3D intel_plane_destroy,
> +	.atomic_duplicate_state =3D intel_plane_duplicate_state,
> +	.atomic_destroy_state =3D intel_plane_destroy_state,
> +	.format_mod_supported =3D gen12_plane_format_mod_supported,
> +};
> +
> +static void
> +skl_plane_enable_flip_done(struct intel_plane *plane)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	enum pipe pipe =3D plane->pipe;
> +
> +	spin_lock_irq(&i915->irq_lock);
> +	bdw_enable_pipe_irq(i915, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
> +	spin_unlock_irq(&i915->irq_lock);
> +}
> +
> +static void
> +skl_plane_disable_flip_done(struct intel_plane *plane)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	enum pipe pipe =3D plane->pipe;
> +
> +	spin_lock_irq(&i915->irq_lock);
> +	bdw_disable_pipe_irq(i915, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
> +	spin_unlock_irq(&i915->irq_lock);
> +}
> +
> +struct intel_plane *
> +skl_universal_plane_create(struct drm_i915_private *dev_priv,
> +			   enum pipe pipe, enum plane_id plane_id)
> +{
> +	const struct drm_plane_funcs *plane_funcs;
> +	struct intel_plane *plane;
> +	enum drm_plane_type plane_type;
> +	unsigned int supported_rotations;
> +	unsigned int supported_csc;
> +	const u64 *modifiers;
> +	const u32 *formats;
> +	int num_formats;
> +	int ret;
> +
> +	plane =3D intel_plane_alloc();
> +	if (IS_ERR(plane))
> +		return plane;
> +
> +	plane->pipe =3D pipe;
> +	plane->id =3D plane_id;
> +	plane->frontbuffer_bit =3D INTEL_FRONTBUFFER(pipe, plane_id);
> +
> +	plane->has_fbc =3D skl_plane_has_fbc(dev_priv, pipe, plane_id);
> +	if (plane->has_fbc) {
> +		struct intel_fbc *fbc =3D &dev_priv->fbc;
> +
> +		fbc->possible_framebuffer_bits |=3D plane->frontbuffer_bit;
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 11) {
> +		plane->min_width =3D icl_plane_min_width;
> +		plane->max_width =3D icl_plane_max_width;
> +		plane->max_height =3D icl_plane_max_height;
> +	} else if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> +		plane->max_width =3D glk_plane_max_width;
> +		plane->max_height =3D skl_plane_max_height;
> +	} else {
> +		plane->max_width =3D skl_plane_max_width;
> +		plane->max_height =3D skl_plane_max_height;
> +	}
> +
> +	plane->max_stride =3D skl_plane_max_stride;
> +	plane->update_plane =3D skl_update_plane;
> +	plane->disable_plane =3D skl_disable_plane;
> +	plane->get_hw_state =3D skl_plane_get_hw_state;
> +	plane->check_plane =3D skl_plane_check;
> +	plane->min_cdclk =3D skl_plane_min_cdclk;
> +
> +	if (plane_id =3D=3D PLANE_PRIMARY) {
> +		plane->need_async_flip_disable_wa =3D IS_GEN_RANGE(dev_priv, 9, 10);
> +		plane->async_flip =3D skl_plane_async_flip;
> +		plane->enable_flip_done =3D skl_plane_enable_flip_done;
> +		plane->disable_flip_done =3D skl_plane_disable_flip_done;
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 11)
> +		formats =3D icl_get_plane_formats(dev_priv, pipe,
> +						plane_id, &num_formats);
> +	else if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +		formats =3D glk_get_plane_formats(dev_priv, pipe,
> +						plane_id, &num_formats);
> +	else
> +		formats =3D skl_get_plane_formats(dev_priv, pipe,
> +						plane_id, &num_formats);
> +
> +	plane->has_ccs =3D skl_plane_has_ccs(dev_priv, pipe, plane_id);
> +	if (INTEL_GEN(dev_priv) >=3D 12) {
> +		modifiers =3D gen12_get_plane_modifiers(dev_priv, plane_id);
> +		plane_funcs =3D &gen12_plane_funcs;
> +	} else {
> +		if (plane->has_ccs)
> +			modifiers =3D skl_plane_format_modifiers_ccs;
> +		else
> +			modifiers =3D skl_plane_format_modifiers_noccs;
> +		plane_funcs =3D &skl_plane_funcs;
> +	}
> +
> +	if (plane_id =3D=3D PLANE_PRIMARY)
> +		plane_type =3D DRM_PLANE_TYPE_PRIMARY;
> +	else
> +		plane_type =3D DRM_PLANE_TYPE_OVERLAY;
> +
> +	ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> +				       0, plane_funcs,
> +				       formats, num_formats, modifiers,
> +				       plane_type,
> +				       "plane %d%c", plane_id + 1,
> +				       pipe_name(pipe));
> +	if (ret)
> +		goto fail;
> +
> +	supported_rotations =3D
> +		DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
> +		DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10)
> +		supported_rotations |=3D DRM_MODE_REFLECT_X;
> +
> +	drm_plane_create_rotation_property(&plane->base,
> +					   DRM_MODE_ROTATE_0,
> +					   supported_rotations);
> +
> +	supported_csc =3D BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT70=
9);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +		supported_csc |=3D BIT(DRM_COLOR_YCBCR_BT2020);
> +
> +	drm_plane_create_color_properties(&plane->base,
> +					  supported_csc,
> +					  BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
> +					  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
> +					  DRM_COLOR_YCBCR_BT709,
> +					  DRM_COLOR_YCBCR_LIMITED_RANGE);
> +
> +	drm_plane_create_alpha_property(&plane->base);
> +	drm_plane_create_blend_mode_property(&plane->base,
> +					     BIT(DRM_MODE_BLEND_PIXEL_NONE) |
> +					     BIT(DRM_MODE_BLEND_PREMULTI) |
> +					     BIT(DRM_MODE_BLEND_COVERAGE));
> +
> +	drm_plane_create_zpos_immutable_property(&plane->base, plane_id);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		drm_plane_enable_fb_damage_clips(&plane->base);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10)
> +		drm_plane_create_scaling_filter_property(&plane->base,
> +						BIT(DRM_SCALING_FILTER_DEFAULT) |
> +						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
> +
> +	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> +
> +	return plane;
> +
> +fail:
> +	intel_plane_free(plane);
> +
> +	return ERR_PTR(ret);
> +}
> +
> +void
> +skl_get_initial_plane_config(struct intel_crtc *crtc,
> +			     struct intel_initial_plane_config *plane_config)
> +{
> +	struct intel_crtc_state *crtc_state =3D to_intel_crtc_state(crtc->base.=
state);
> +	struct drm_device *dev =3D crtc->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> +	enum plane_id plane_id =3D plane->id;
> +	enum pipe pipe;
> +	u32 val, base, offset, stride_mult, tiling, alpha;
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
> +	if (crtc_state->bigjoiner) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Unsupported bigjoiner configuration for initial FB\n");
> +		return;
> +	}
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
> +	val =3D intel_de_read(dev_priv, PLANE_CTL(pipe, plane_id));
> +
> +	if (INTEL_GEN(dev_priv) >=3D 11)
> +		pixel_format =3D val & ICL_PLANE_CTL_FORMAT_MASK;
> +	else
> +		pixel_format =3D val & PLANE_CTL_FORMAT_MASK;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> +		alpha =3D intel_de_read(dev_priv,
> +				      PLANE_COLOR_CTL(pipe, plane_id));
> +		alpha &=3D PLANE_COLOR_ALPHA_MASK;
> +	} else {
> +		alpha =3D val & PLANE_CTL_ALPHA_MASK;
> +	}
> +
> +	fourcc =3D skl_format_to_fourcc(pixel_format,
> +				      val & PLANE_CTL_ORDER_RGBX, alpha);
> +	fb->format =3D drm_format_info(fourcc);
> +
> +	tiling =3D val & PLANE_CTL_TILED_MASK;
> +	switch (tiling) {
> +	case PLANE_CTL_TILED_LINEAR:
> +		fb->modifier =3D DRM_FORMAT_MOD_LINEAR;
> +		break;
> +	case PLANE_CTL_TILED_X:
> +		plane_config->tiling =3D I915_TILING_X;
> +		fb->modifier =3D I915_FORMAT_MOD_X_TILED;
> +		break;
> +	case PLANE_CTL_TILED_Y:
> +		plane_config->tiling =3D I915_TILING_Y;
> +		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> +			fb->modifier =3D INTEL_GEN(dev_priv) >=3D 12 ?
> +				I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS :
> +				I915_FORMAT_MOD_Y_TILED_CCS;
> +		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
> +			fb->modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
> +		else
> +			fb->modifier =3D I915_FORMAT_MOD_Y_TILED;
> +		break;
> +	case PLANE_CTL_TILED_YF:
> +		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> +			fb->modifier =3D I915_FORMAT_MOD_Yf_TILED_CCS;
> +		else
> +			fb->modifier =3D I915_FORMAT_MOD_Yf_TILED;
> +		break;
> +	default:
> +		MISSING_CASE(tiling);
> +		goto error;
> +	}
> +
> +	/*
> +	 * DRM_MODE_ROTATE_ is counter clockwise to stay compatible with Xrandr
> +	 * while i915 HW rotation is clockwise, thats why this swapping.
> +	 */
> +	switch (val & PLANE_CTL_ROTATE_MASK) {
> +	case PLANE_CTL_ROTATE_0:
> +		plane_config->rotation =3D DRM_MODE_ROTATE_0;
> +		break;
> +	case PLANE_CTL_ROTATE_90:
> +		plane_config->rotation =3D DRM_MODE_ROTATE_270;
> +		break;
> +	case PLANE_CTL_ROTATE_180:
> +		plane_config->rotation =3D DRM_MODE_ROTATE_180;
> +		break;
> +	case PLANE_CTL_ROTATE_270:
> +		plane_config->rotation =3D DRM_MODE_ROTATE_90;
> +		break;
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10 &&
> +	    val & PLANE_CTL_FLIP_HORIZONTAL)
> +		plane_config->rotation |=3D DRM_MODE_REFLECT_X;
> +
> +	/* 90/270 degree rotation would require extra work */
> +	if (drm_rotation_90_or_270(plane_config->rotation))
> +		goto error;
> +
> +	base =3D intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & 0xfffff0=
00;
> +	plane_config->base =3D base;
> +
> +	offset =3D intel_de_read(dev_priv, PLANE_OFFSET(pipe, plane_id));
> +
> +	val =3D intel_de_read(dev_priv, PLANE_SIZE(pipe, plane_id));
> +	fb->height =3D ((val >> 16) & 0xffff) + 1;
> +	fb->width =3D ((val >> 0) & 0xffff) + 1;
> +
> +	val =3D intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
> +	stride_mult =3D skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
> +	fb->pitches[0] =3D (val & 0x3ff) * stride_mult;
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
> +	return;
> +
> +error:
> +	kfree(intel_fb);
> +}
> +
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers=
/gpu/drm/i915/display/skl_universal_plane.h
> new file mode 100644
> index 000000000000..70eb5010cd28
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#ifndef _SKL_UNIVERSAL_PLANE_H_
> +#define _SKL_UNIVERSAL_PLANE_H_
> +
> +#include <linux/types.h>
> +
> +struct drm_framebuffer;
> +struct drm_i915_private;
> +struct intel_crtc;
> +struct intel_initial_plane_config;
> +struct intel_plane_state;
> +
> +enum pipe;
> +enum plane_id;
> +
> +struct intel_plane *
> +skl_universal_plane_create(struct drm_i915_private *dev_priv,
> +			   enum pipe pipe, enum plane_id plane_id);
> +
> +void skl_get_initial_plane_config(struct intel_crtc *crtc,
> +				  struct intel_initial_plane_config *plane_config);
> +
> +int skl_format_to_fourcc(int format, bool rgb_order, bool alpha);
> +
> +int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plan=
e);
> +int skl_calc_main_surface_offset(const struct intel_plane_state *plane_s=
tate,
> +				 int *x, int *y, u32 *offset);
> +
> +#endif
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index c58e5077590d..8c42fa51c0f6 100644
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

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
