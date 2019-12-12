Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 936C811D1A4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 16:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF14A6E1B6;
	Thu, 12 Dec 2019 15:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C66D66E1B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 15:59:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 07:59:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="216155619"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.54.75.159])
 by orsmga006.jf.intel.com with ESMTP; 12 Dec 2019 07:59:09 -0800
Date: Thu, 12 Dec 2019 07:59:20 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191212155920.GD21507@InViCtUs>
References: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
 <20191126002635.5779-5-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126002635.5779-5-radhakrishna.sripada@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v7 4/7] drm/i915/tgl: Gen-12 render
 decompression
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, nanley.g.chery@intel.com,
 dhinakaran.pandiyan@intel.com, ville.syrjala@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2019 at 04:26:32PM -0800, Radhakrishna Sripada wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> Gen-12 display decompression operates on Y-tiled compressed main surface.
> The CCS is linear and has 4 bits of metadata for each main surface cache
> line pair, a size ratio of 1:256. Gen-12 display decompression is
> incompatible with buffers compressed by earlier GPUs, so make use of a new
> modifier to identify gen-12 compression. Another notable change is that
> render decompression is supported on all planes except cursor and on all
> pipes. Start by adding render decompression support for [A,X]BGR888 pixel
> formats.
> =

> v2: Fix checkpatch warnings (Lucas)
> v3:
> Rebase, disable color clear, styling changes and modify
> intel_tile_width_bytes and intel_tile_height to handle linear CCS
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Nanley G Chery <nanley.g.chery@intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 85 ++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_sprite.c  | 23 ++++--
>  drivers/gpu/drm/i915/i915_reg.h              |  1 +
>  3 files changed, 84 insertions(+), 25 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 85f009500344..1ef1988b9e12 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1971,6 +1971,10 @@ intel_tile_width_bytes(const struct drm_framebuffe=
r *fb, int color_plane)
>  		if (color_plane =3D=3D 1)
>  			return 128;
>  		/* fall through */
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +		if (color_plane =3D=3D 1)
> +			return 64;
> +		/* fall through */
>  	case I915_FORMAT_MOD_Y_TILED:
>  		if (IS_GEN(dev_priv, 2) || HAS_128_BYTE_Y_TILING(dev_priv))
>  			return 128;
> @@ -2004,8 +2008,15 @@ intel_tile_width_bytes(const struct drm_framebuffe=
r *fb, int color_plane)
>  static unsigned int
>  intel_tile_height(const struct drm_framebuffer *fb, int color_plane)
>  {
> -	return intel_tile_size(to_i915(fb->dev)) /
> -		intel_tile_width_bytes(fb, color_plane);
> +	switch (fb->modifier) {
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +		if (color_plane =3D=3D 1)
> +			return 1;
> +		/* fall through */
> +	default:
> +		return intel_tile_size(to_i915(fb->dev)) /
> +			intel_tile_width_bytes(fb, color_plane);
> +	}
>  }
>  =

>  /* Return the tile dimensions in pixel units */
> @@ -2104,6 +2115,8 @@ static unsigned int intel_surf_alignment(const stru=
ct drm_framebuffer *fb,
>  		if (INTEL_GEN(dev_priv) >=3D 9)
>  			return 256 * 1024;
>  		return 0;
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +		return 16 * 1024;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
>  	case I915_FORMAT_MOD_Y_TILED:
> @@ -2300,7 +2313,8 @@ static u32 intel_adjust_tile_offset(int *x, int *y,
>  =

>  static bool is_surface_linear(u64 modifier, int color_plane)
>  {
> -	return modifier =3D=3D DRM_FORMAT_MOD_LINEAR;
> +	return modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> +	       (modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS && color_p=
lane =3D=3D 1);
>  }
>  =

>  static u32 intel_adjust_aligned_offset(int *x, int *y,
> @@ -2487,6 +2501,7 @@ static unsigned int intel_fb_modifier_to_tiling(u64=
 fb_modifier)
>  		return I915_TILING_X;
>  	case I915_FORMAT_MOD_Y_TILED:
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>  		return I915_TILING_Y;
>  	default:
>  		return I915_TILING_NONE;
> @@ -2507,7 +2522,7 @@ static unsigned int intel_fb_modifier_to_tiling(u64=
 fb_modifier)
>   * us a ratio of one byte in the CCS for each 8x16 pixels in the
>   * main surface.
>   */
> -static const struct drm_format_info ccs_formats[] =3D {
> +static const struct drm_format_info skl_ccs_formats[] =3D {
>  	{ .format =3D DRM_FORMAT_XRGB8888, .depth =3D 24, .num_planes =3D 2,
>  	  .cpp =3D { 4, 1, }, .hsub =3D 8, .vsub =3D 16, },
>  	{ .format =3D DRM_FORMAT_XBGR8888, .depth =3D 24, .num_planes =3D 2,
> @@ -2518,6 +2533,24 @@ static const struct drm_format_info ccs_formats[] =
=3D {
>  	  .cpp =3D { 4, 1, }, .hsub =3D 8, .vsub =3D 16, .has_alpha =3D true, },
>  };
>  =

> +/*
> + * Gen-12 compression uses 4 bits of CCS data for each cache line pair i=
n the
> + * main surface. And each 64B CCS cache line represents an area of 4x1 Y=
-tiles
> + * in the main surface. With 4 byte pixels and each Y-tile having dimens=
ions of
> + * 32x32 pixels, the ratio turns out to 1B in the CCS for every 2x32 pix=
els in
> + * the main surface.
> + */
> +static const struct drm_format_info gen12_ccs_formats[] =3D {
> +	{ .format =3D DRM_FORMAT_XRGB8888, .depth =3D 24, .num_planes =3D 2,
> +	  .cpp =3D { 4, 1, }, .hsub =3D 2, .vsub =3D 32, },
> +	{ .format =3D DRM_FORMAT_XBGR8888, .depth =3D 24, .num_planes =3D 2,
> +	  .cpp =3D { 4, 1, }, .hsub =3D 2, .vsub =3D 32, },
> +	{ .format =3D DRM_FORMAT_ARGB8888, .depth =3D 32, .num_planes =3D 2,
> +	  .cpp =3D { 4, 1, }, .hsub =3D 2, .vsub =3D 32, .has_alpha =3D true },
> +	{ .format =3D DRM_FORMAT_ABGR8888, .depth =3D 32, .num_planes =3D 2,
> +	  .cpp =3D { 4, 1, }, .hsub =3D 2, .vsub =3D 32, .has_alpha =3D true },
> +};
> +
>  static const struct drm_format_info *
>  lookup_format_info(const struct drm_format_info formats[],
>  		   int num_formats, u32 format)
> @@ -2538,8 +2571,12 @@ intel_get_format_info(const struct drm_mode_fb_cmd=
2 *cmd)
>  	switch (cmd->modifier[0]) {
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
> -		return lookup_format_info(ccs_formats,
> -					  ARRAY_SIZE(ccs_formats),
> +		return lookup_format_info(skl_ccs_formats,
> +					  ARRAY_SIZE(skl_ccs_formats),
> +					  cmd->pixel_format);
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +		return lookup_format_info(gen12_ccs_formats,
> +					  ARRAY_SIZE(gen12_ccs_formats),
>  					  cmd->pixel_format);
>  	default:
>  		return NULL;
> @@ -2548,7 +2585,8 @@ intel_get_format_info(const struct drm_mode_fb_cmd2=
 *cmd)
>  =

>  bool is_ccs_modifier(u64 modifier)
>  {
> -	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> +	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> +	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
>  	       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
>  }
>  =

> @@ -2596,8 +2634,9 @@ static u32
>  intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_pl=
ane)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> +	u32 tile_width;
>  =

> -	if (fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR) {
> +	if (is_surface_linear(fb->modifier, color_plane)) {
>  		u32 max_stride =3D intel_plane_fb_max_stride(dev_priv,
>  							   fb->format->format,
>  							   fb->modifier);
> @@ -2606,13 +2645,14 @@ intel_fb_stride_alignment(const struct drm_frameb=
uffer *fb, int color_plane)
>  		 * To make remapping with linear generally feasible
>  		 * we need the stride to be page aligned.
>  		 */
> -		if (fb->pitches[color_plane] > max_stride)
> +		if (fb->pitches[color_plane] > max_stride && !is_ccs_modifier(fb->modi=
fier))
>  			return intel_tile_size(dev_priv);
>  		else
>  			return 64;
> -	} else {
> -		u32 tile_width =3D intel_tile_width_bytes(fb, color_plane);
> +	}
>  =

> +	tile_width =3D intel_tile_width_bytes(fb, color_plane);
> +	if (is_ccs_modifier(fb->modifier) && color_plane =3D=3D 0) {
>  		/*
>  		 * Display WA #0531: skl,bxt,kbl,glk
>  		 *
> @@ -2622,12 +2662,16 @@ intel_fb_stride_alignment(const struct drm_frameb=
uffer *fb, int color_plane)
>  		 * require the entire fb to accommodate that to avoid
>  		 * potential runtime errors at plane configuration time.
>  		 */
> -		if (IS_GEN(dev_priv, 9) && is_ccs_modifier(fb->modifier) &&
> -		    color_plane =3D=3D 0 && fb->width > 3840)
> +		if (IS_GEN(dev_priv, 9) && fb->width > 3840)
> +			tile_width *=3D 4;
> +		/*
> +		 * The main surface pitch must be padded to a multiple of four
> +		 * tile widths.
> +		 */
> +		else if (INTEL_GEN(dev_priv) >=3D 12)
>  			tile_width *=3D 4;
> -
> -		return tile_width;
>  	}
> +	return tile_width;
>  }
>  =

>  bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
> @@ -2736,6 +2780,7 @@ intel_fill_fb_info(struct drm_i915_private *dev_pri=
v,
>  			int ccs_x, ccs_y;
>  =

>  			intel_tile_dims(fb, i, &tile_width, &tile_height);
> +
>  			tile_width *=3D hsub;
>  			tile_height *=3D vsub;
>  =

> @@ -4112,7 +4157,7 @@ static unsigned int skl_plane_stride_mult(const str=
uct drm_framebuffer *fb,
>  	 * The stride is either expressed as a multiple of 64 bytes chunks for
>  	 * linear buffers or in number of tiles for tiled buffers.
>  	 */
> -	if (fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR)
> +	if (is_surface_linear(fb->modifier, color_plane))
>  		return 64;
>  	else if (drm_rotation_90_or_270(rotation))
>  		return intel_tile_height(fb, color_plane);
> @@ -4240,6 +4285,10 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>  		return PLANE_CTL_TILED_Y;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +		return PLANE_CTL_TILED_Y |
> +		       PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
> +		       PLANE_CTL_CLEAR_COLOR_DISABLE;
>  	case I915_FORMAT_MOD_Yf_TILED:
>  		return PLANE_CTL_TILED_YF;
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
> @@ -10074,7 +10123,9 @@ skylake_get_initial_plane_config(struct intel_crt=
c *crtc,
>  	case PLANE_CTL_TILED_Y:
>  		plane_config->tiling =3D I915_TILING_Y;
>  		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> -			fb->modifier =3D I915_FORMAT_MOD_Y_TILED_CCS;
> +			fb->modifier =3D INTEL_GEN(dev_priv) >=3D 12 ?
> +				I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS :
> +				I915_FORMAT_MOD_Y_TILED_CCS;
>  		else
>  			fb->modifier =3D I915_FORMAT_MOD_Y_TILED;
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 8394502b092d..67a90059900f 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -583,6 +583,7 @@ skl_program_plane(struct intel_plane *plane,
>  	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
>  	u32 surf_addr =3D plane_state->color_plane[color_plane].offset;
>  	u32 stride =3D skl_plane_stride(plane_state, color_plane);
> +	u32 aux_dist =3D plane_state->color_plane[1].offset - surf_addr;
>  	u32 aux_stride =3D skl_plane_stride(plane_state, 1);
>  	int crtc_x =3D plane_state->uapi.dst.x1;
>  	int crtc_y =3D plane_state->uapi.dst.y1;
> @@ -624,8 +625,10 @@ skl_program_plane(struct intel_plane *plane,
>  	I915_WRITE_FW(PLANE_STRIDE(pipe, plane_id), stride);
>  	I915_WRITE_FW(PLANE_POS(pipe, plane_id), (crtc_y << 16) | crtc_x);
>  	I915_WRITE_FW(PLANE_SIZE(pipe, plane_id), (src_h << 16) | src_w);
> -	I915_WRITE_FW(PLANE_AUX_DIST(pipe, plane_id),
> -		      (plane_state->color_plane[1].offset - surf_addr) | aux_stride);
> +
> +	if (INTEL_GEN(dev_priv) < 12)
> +		aux_dist |=3D aux_stride;
> +	I915_WRITE_FW(PLANE_AUX_DIST(pipe, plane_id), aux_dist);
>  =

>  	if (icl_is_hdr_plane(dev_priv, plane_id))
>  		I915_WRITE_FW(PLANE_CUS_CTL(pipe, plane_id), plane_state->cus_ctl);
> @@ -2102,7 +2105,8 @@ static int skl_plane_check_fb(const struct intel_cr=
tc_state *crtc_state,
>  	    (fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED ||
>  	     fb->modifier =3D=3D I915_FORMAT_MOD_Yf_TILED ||
>  	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> -	     fb->modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS)) {
> +	     fb->modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS ||
> +	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS)) {
>  		DRM_DEBUG_KMS("Y/Yf tiling not supported in IF-ID mode\n");
>  		return -EINVAL;
>  	}
> @@ -2573,7 +2577,8 @@ static const u64 skl_plane_format_modifiers_ccs[] =
=3D {
>  	DRM_FORMAT_MOD_INVALID
>  };
>  =

> -static const u64 gen12_plane_format_modifiers_noccs[] =3D {
> +static const u64 gen12_plane_format_modifiers_ccs[] =3D {
> +	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
>  	I915_FORMAT_MOD_Y_TILED,
>  	I915_FORMAT_MOD_X_TILED,
>  	DRM_FORMAT_MOD_LINEAR,
> @@ -2744,6 +2749,7 @@ static bool gen12_plane_format_mod_supported(struct=
 drm_plane *_plane,
>  	case DRM_FORMAT_MOD_LINEAR:
>  	case I915_FORMAT_MOD_X_TILED:
>  	case I915_FORMAT_MOD_Y_TILED:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>  		break;
>  	default:
>  		return false;
> @@ -2754,6 +2760,9 @@ static bool gen12_plane_format_mod_supported(struct=
 drm_plane *_plane,
>  	case DRM_FORMAT_XBGR8888:
>  	case DRM_FORMAT_ARGB8888:
>  	case DRM_FORMAT_ABGR8888:
> +		if (is_ccs_modifier(modifier))
> +			return true;
> +		/* fall through */
>  	case DRM_FORMAT_RGB565:
>  	case DRM_FORMAT_XRGB2101010:
>  	case DRM_FORMAT_XBGR2101010:
> @@ -2963,13 +2972,11 @@ skl_universal_plane_create(struct drm_i915_privat=
e *dev_priv,
>  		formats =3D skl_get_plane_formats(dev_priv, pipe,
>  						plane_id, &num_formats);
>  =

> +	plane->has_ccs =3D skl_plane_has_ccs(dev_priv, pipe, plane_id);
>  	if (INTEL_GEN(dev_priv) >=3D 12) {
> -		/* TODO: Implement support for gen-12 CCS modifiers */
> -		plane->has_ccs =3D false;
> -		modifiers =3D gen12_plane_format_modifiers_noccs;
> +		modifiers =3D gen12_plane_format_modifiers_ccs;
>  		plane_funcs =3D &gen12_plane_funcs;
>  	} else {
> -		plane->has_ccs =3D skl_plane_has_ccs(dev_priv, pipe, plane_id);
>  		if (plane->has_ccs)
>  			modifiers =3D skl_plane_format_modifiers_ccs;
>  		else
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 94d0f593eeb7..2e444a18ed0b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6800,6 +6800,7 @@ enum {
>  #define   PLANE_CTL_YUV422_VYUY			(3 << 16)
>  #define   PLANE_CTL_RENDER_DECOMPRESSION_ENABLE	(1 << 15)
>  #define   PLANE_CTL_TRICKLE_FEED_DISABLE	(1 << 14)
> +#define   PLANE_CTL_CLEAR_COLOR_DISABLE		(1 << 13) /* TGL+ */
>  #define   PLANE_CTL_PLANE_GAMMA_DISABLE		(1 << 13) /* Pre-GLK */
>  #define   PLANE_CTL_TILED_MASK			(0x7 << 10)
>  #define   PLANE_CTL_TILED_LINEAR		(0 << 10)
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
