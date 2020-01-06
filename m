Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A27A13158A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 16:58:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B544A6E486;
	Mon,  6 Jan 2020 15:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5EC6E486
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 15:58:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 07:58:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,403,1571727600"; d="scan'208";a="217446827"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.212])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jan 2020 07:58:19 -0800
Date: Mon, 6 Jan 2020 07:58:31 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200106155831.GA14331@InViCtUs>
References: <20191231233756.18753-1-imre.deak@intel.com>
 <20191231233756.18753-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191231233756.18753-8-imre.deak@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/tgl: Gen-12 display can
 decompress surfaces compressed by the media engine
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
Cc: Nanley G Chery <nanley.g.chery@intel.com>,
 Yang A Shi <yang.a.shi@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 01, 2020 at 01:37:56AM +0200, Imre Deak wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> Detect the modifier corresponding to media compression to enable
> display decompression for YUV and xRGB packed formats. A new modifier is
> added so that the driver can distinguish between media and render
> compressed buffers. Unlike render decompression, plane 6 and  plane 7 do =
not
> support media decompression.
> =

> v2: Fix checkpatch warnings on code style (Lucas)
> =

> From DK:
> Separate modifier array for planes that cannot decompress media (Ville)
> =

> v3: Support planar formats
> v4: Switch plane order
> v5:
> - Use format block descriptors to get CCS subsampling calculation right
>   everywhere.
> - Extend the plane state normal view array to accommodate 4 color planes.
> - Use helpers to convert between main and CCS planes.
> v6: Add missing packed YUV formats to the MC format list. (Yang)
> v7: Align UV planes to tile-row size.
> =

> Cc: Nanley G Chery <nanley.g.chery@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Yang A Shi <yang.a.shi@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com> (v6)
For v7,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

- Radhakrishna(RK) Sripada
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 176 ++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_display.h  |   1 +
>  .../drm/i915/display/intel_display_types.h    |   6 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  55 ++++--
>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>  5 files changed, 188 insertions(+), 51 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d5128e900660..da4db5052579 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1945,7 +1945,9 @@ static bool is_ccs_plane(const struct drm_framebuff=
er *fb, int plane)
>  =

>  static bool is_gen12_ccs_modifier(u64 modifier)
>  {
> -	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS;
> +	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> +	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
> +
>  }
>  =

>  static bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int pla=
ne)
> @@ -1978,8 +1980,7 @@ static int ccs_to_main_plane(const struct drm_frame=
buffer *fb, int ccs_plane)
>  }
>  =

>  /* Return either the main plane's CCS or - if not a CCS FB - UV plane */
> -static int
> -intel_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
> +int intel_main_to_aux_plane(const struct drm_framebuffer *fb, int main_p=
lane)
>  {
>  	if (is_ccs_modifier(fb->modifier))
>  		return main_to_ccs_plane(fb, main_plane);
> @@ -2021,6 +2022,7 @@ intel_tile_width_bytes(const struct drm_framebuffer=
 *fb, int color_plane)
>  			return 128;
>  		/* fall through */
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>  		if (is_ccs_plane(fb, color_plane))
>  			return 64;
>  		/* fall through */
> @@ -2171,6 +2173,10 @@ static unsigned int intel_surf_alignment(const str=
uct drm_framebuffer *fb,
>  		if (INTEL_GEN(dev_priv) >=3D 9)
>  			return 256 * 1024;
>  		return 0;
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> +		if (is_semiplanar_uv_plane(fb, color_plane))
> +			return intel_tile_row_size(fb, color_plane);
> +		/* Fall-through */
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>  		return 16 * 1024;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
> @@ -2574,6 +2580,7 @@ static unsigned int intel_fb_modifier_to_tiling(u64=
 fb_modifier)
>  	case I915_FORMAT_MOD_Y_TILED:
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>  		return I915_TILING_Y;
>  	default:
>  		return I915_TILING_NONE;
> @@ -2625,6 +2632,30 @@ static const struct drm_format_info gen12_ccs_form=
ats[] =3D {
>  	{ .format =3D DRM_FORMAT_ABGR8888, .depth =3D 32, .num_planes =3D 2,
>  	  .char_per_block =3D { 4, 1 }, .block_w =3D { 1, 2 }, .block_h =3D { 1=
, 1 },
>  	  .hsub =3D 1, .vsub =3D 1, .has_alpha =3D true },
> +	{ .format =3D DRM_FORMAT_YUYV, .num_planes =3D 2,
> +	  .char_per_block =3D { 2, 1 }, .block_w =3D { 1, 2 }, .block_h =3D { 1=
, 1 },
> +	  .hsub =3D 2, .vsub =3D 1, .is_yuv =3D true },
> +	{ .format =3D DRM_FORMAT_YVYU, .num_planes =3D 2,
> +	  .char_per_block =3D { 2, 1 }, .block_w =3D { 1, 2 }, .block_h =3D { 1=
, 1 },
> +	  .hsub =3D 2, .vsub =3D 1, .is_yuv =3D true },
> +	{ .format =3D DRM_FORMAT_UYVY, .num_planes =3D 2,
> +	  .char_per_block =3D { 2, 1 }, .block_w =3D { 1, 2 }, .block_h =3D { 1=
, 1 },
> +	  .hsub =3D 2, .vsub =3D 1, .is_yuv =3D true },
> +	{ .format =3D DRM_FORMAT_VYUY, .num_planes =3D 2,
> +	  .char_per_block =3D { 2, 1 }, .block_w =3D { 1, 2 }, .block_h =3D { 1=
, 1 },
> +	  .hsub =3D 2, .vsub =3D 1, .is_yuv =3D true },
> +	{ .format =3D DRM_FORMAT_NV12, .num_planes =3D 4,
> +	  .char_per_block =3D { 1, 2, 1, 1 }, .block_w =3D { 1, 1, 4, 4 }, .blo=
ck_h =3D { 1, 1, 1, 1 },
> +	  .hsub =3D 2, .vsub =3D 2, .is_yuv =3D true },
> +	{ .format =3D DRM_FORMAT_P010, .num_planes =3D 4,
> +	  .char_per_block =3D { 2, 4, 1, 1 }, .block_w =3D { 1, 1, 2, 2 }, .blo=
ck_h =3D { 1, 1, 1, 1 },
> +	  .hsub =3D 2, .vsub =3D 2, .is_yuv =3D true },
> +	{ .format =3D DRM_FORMAT_P012, .num_planes =3D 4,
> +	  .char_per_block =3D { 2, 4, 1, 1 }, .block_w =3D { 1, 1, 2, 2 }, .blo=
ck_h =3D { 1, 1, 1, 1 },
> +	  .hsub =3D 2, .vsub =3D 2, .is_yuv =3D true },
> +	{ .format =3D DRM_FORMAT_P016, .num_planes =3D 4,
> +	  .char_per_block =3D { 2, 4, 1, 1 }, .block_w =3D { 1, 1, 2, 2 }, .blo=
ck_h =3D { 1, 1, 1, 1 },
> +	  .hsub =3D 2, .vsub =3D 2, .is_yuv =3D true },
>  };
>  =

>  static const struct drm_format_info *
> @@ -2651,6 +2682,7 @@ intel_get_format_info(const struct drm_mode_fb_cmd2=
 *cmd)
>  					  ARRAY_SIZE(skl_ccs_formats),
>  					  cmd->pixel_format);
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>  		return lookup_format_info(gen12_ccs_formats,
>  					  ARRAY_SIZE(gen12_ccs_formats),
>  					  cmd->pixel_format);
> @@ -2662,6 +2694,7 @@ intel_get_format_info(const struct drm_mode_fb_cmd2=
 *cmd)
>  bool is_ccs_modifier(u64 modifier)
>  {
>  	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> +	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
>  	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
>  	       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
>  }
> @@ -2735,7 +2768,7 @@ intel_fb_stride_alignment(const struct drm_framebuf=
fer *fb, int color_plane)
>  	}
>  =

>  	tile_width =3D intel_tile_width_bytes(fb, color_plane);
> -	if (is_ccs_modifier(fb->modifier) && color_plane =3D=3D 0) {
> +	if (is_ccs_modifier(fb->modifier)) {
>  		/*
>  		 * Display WA #0531: skl,bxt,kbl,glk
>  		 *
> @@ -2745,7 +2778,7 @@ intel_fb_stride_alignment(const struct drm_framebuf=
fer *fb, int color_plane)
>  		 * require the entire fb to accommodate that to avoid
>  		 * potential runtime errors at plane configuration time.
>  		 */
> -		if (IS_GEN(dev_priv, 9) && fb->width > 3840)
> +		if (IS_GEN(dev_priv, 9) && color_plane =3D=3D 0 && fb->width > 3840)
>  			tile_width *=3D 4;
>  		/*
>  		 * The main surface pitch must be padded to a multiple of four
> @@ -3639,6 +3672,7 @@ static int skl_max_plane_width(const struct drm_fra=
mebuffer *fb,
>  			return 5120;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>  		/* FIXME AUX plane? */
>  	case I915_FORMAT_MOD_Y_TILED:
>  	case I915_FORMAT_MOD_Yf_TILED:
> @@ -3697,11 +3731,12 @@ static int icl_max_plane_height(void)
>  	return 4320;
>  }
>  =

> -static bool skl_check_main_ccs_coordinates(struct intel_plane_state *pla=
ne_state,
> -					   int main_x, int main_y, u32 main_offset)
> +static bool
> +skl_check_main_ccs_coordinates(struct intel_plane_state *plane_state,
> +			       int main_x, int main_y, u32 main_offset,
> +			       int ccs_plane)
>  {
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int ccs_plane =3D main_to_ccs_plane(fb, 0);
>  	int aux_x =3D plane_state->color_plane[ccs_plane].x;
>  	int aux_y =3D plane_state->color_plane[ccs_plane].y;
>  	u32 aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> @@ -3815,7 +3850,8 @@ static int skl_check_main_surface(struct intel_plan=
e_state *plane_state)
>  	 * they match with the main surface x/y offsets.
>  	 */
>  	if (is_ccs_modifier(fb->modifier)) {
> -		while (!skl_check_main_ccs_coordinates(plane_state, x, y, offset)) {
> +		while (!skl_check_main_ccs_coordinates(plane_state, x, y,
> +						       offset, aux_plane)) {
>  			if (offset =3D=3D 0)
>  				break;
>  =

> @@ -3848,7 +3884,8 @@ static int skl_check_nv12_aux_surface(struct intel_=
plane_state *plane_state)
>  {
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	unsigned int rotation =3D plane_state->hw.rotation;
> -	int max_width =3D skl_max_plane_width(fb, 1, rotation);
> +	int uv_plane =3D 1;
> +	int max_width =3D skl_max_plane_width(fb, uv_plane, rotation);
>  	int max_height =3D 4096;
>  	int x =3D plane_state->uapi.src.x1 >> 17;
>  	int y =3D plane_state->uapi.src.y1 >> 17;
> @@ -3856,8 +3893,9 @@ static int skl_check_nv12_aux_surface(struct intel_=
plane_state *plane_state)
>  	int h =3D drm_rect_height(&plane_state->uapi.src) >> 17;
>  	u32 offset;
>  =

> -	intel_add_fb_offsets(&x, &y, plane_state, 1);
> -	offset =3D intel_plane_compute_aligned_offset(&x, &y, plane_state, 1);
> +	intel_add_fb_offsets(&x, &y, plane_state, uv_plane);
> +	offset =3D intel_plane_compute_aligned_offset(&x, &y,
> +						    plane_state, uv_plane);
>  =

>  	/* FIXME not quite sure how/if these apply to the chroma plane */
>  	if (w > max_width || h > max_height) {
> @@ -3866,9 +3904,39 @@ static int skl_check_nv12_aux_surface(struct intel=
_plane_state *plane_state)
>  		return -EINVAL;
>  	}
>  =

> -	plane_state->color_plane[1].offset =3D offset;
> -	plane_state->color_plane[1].x =3D x;
> -	plane_state->color_plane[1].y =3D y;
> +	if (is_ccs_modifier(fb->modifier)) {
> +		int ccs_plane =3D main_to_ccs_plane(fb, uv_plane);
> +		int aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> +		int alignment =3D intel_surf_alignment(fb, uv_plane);
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
> +			DRM_DEBUG_KMS("Unable to find suitable display surface offset due to =
CCS\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	plane_state->color_plane[uv_plane].offset =3D offset;
> +	plane_state->color_plane[uv_plane].x =3D x;
> +	plane_state->color_plane[uv_plane].y =3D y;
>  =

>  	return 0;
>  }
> @@ -3878,21 +3946,40 @@ static int skl_check_ccs_aux_surface(struct intel=
_plane_state *plane_state)
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	int src_x =3D plane_state->uapi.src.x1 >> 16;
>  	int src_y =3D plane_state->uapi.src.y1 >> 16;
> -	int hsub;
> -	int vsub;
> -	int x;
> -	int y;
>  	u32 offset;
> +	int ccs_plane;
> +
> +	for (ccs_plane =3D 0; ccs_plane < fb->format->num_planes; ccs_plane++) {
> +		int main_hsub, main_vsub;
> +		int hsub, vsub;
> +		int x, y;
>  =

> -	intel_fb_plane_get_subsampling(&hsub, &vsub, fb, 1);
> -	x =3D src_x / hsub;
> -	y =3D src_y / vsub;
> -	intel_add_fb_offsets(&x, &y, plane_state, 1);
> -	offset =3D intel_plane_compute_aligned_offset(&x, &y, plane_state, 1);
> +		if (!is_ccs_plane(fb, ccs_plane))
> +			continue;
> +
> +		intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb,
> +					       ccs_to_main_plane(fb, ccs_plane));
> +		intel_fb_plane_get_subsampling(&hsub, &vsub, fb, ccs_plane);
> +
> +		hsub *=3D main_hsub;
> +		vsub *=3D main_vsub;
> +		x =3D src_x / hsub;
> +		y =3D src_y / vsub;
> +
> +		intel_add_fb_offsets(&x, &y, plane_state, ccs_plane);
>  =

> -	plane_state->color_plane[1].offset =3D offset;
> -	plane_state->color_plane[1].x =3D x * hsub + src_x % hsub;
> -	plane_state->color_plane[1].y =3D y * vsub + src_y % vsub;
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
>  =

>  	return 0;
>  }
> @@ -3901,6 +3988,7 @@ int skl_check_plane_surface(struct intel_plane_stat=
e *plane_state)
>  {
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	int ret;
> +	bool needs_aux =3D false;
>  =

>  	ret =3D intel_plane_compute_gtt(plane_state);
>  	if (ret)
> @@ -3910,22 +3998,32 @@ int skl_check_plane_surface(struct intel_plane_st=
ate *plane_state)
>  		return 0;
>  =

>  	/*
> -	 * Handle the AUX surface first since
> -	 * the main surface setup depends on it.
> +	 * Handle the AUX surface first since the main surface setup depends on
> +	 * it.
>  	 */
> +	if (is_ccs_modifier(fb->modifier)) {
> +		needs_aux =3D true;
> +		ret =3D skl_check_ccs_aux_surface(plane_state);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	if (intel_format_info_is_yuv_semiplanar(fb->format,
>  						fb->modifier)) {
> +		needs_aux =3D true;
>  		ret =3D skl_check_nv12_aux_surface(plane_state);
>  		if (ret)
>  			return ret;
> -	} else if (is_ccs_modifier(fb->modifier)) {
> -		ret =3D skl_check_ccs_aux_surface(plane_state);
> -		if (ret)
> -			return ret;
> -	} else {
> -		plane_state->color_plane[1].offset =3D ~0xfff;
> -		plane_state->color_plane[1].x =3D 0;
> -		plane_state->color_plane[1].y =3D 0;
> +	}
> +
> +	if (!needs_aux) {
> +		int i;
> +
> +		for (i =3D 1; i < fb->format->num_planes; i++) {
> +			plane_state->color_plane[i].offset =3D ~0xfff;
> +			plane_state->color_plane[i].x =3D 0;
> +			plane_state->color_plane[i].y =3D 0;
> +		}
>  	}
>  =

>  	ret =3D skl_check_main_surface(plane_state);
> @@ -4515,6 +4613,8 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>  		return PLANE_CTL_TILED_Y |
>  		       PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
>  		       PLANE_CTL_CLEAR_COLOR_DISABLE;
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> +		return PLANE_CTL_TILED_Y | PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE;
>  	case I915_FORMAT_MOD_Yf_TILED:
>  		return PLANE_CTL_TILED_YF;
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
> @@ -10236,6 +10336,8 @@ skl_get_initial_plane_config(struct intel_crtc *c=
rtc,
>  			fb->modifier =3D INTEL_GEN(dev_priv) >=3D 12 ?
>  				I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS :
>  				I915_FORMAT_MOD_Y_TILED_CCS;
> +		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
> +			fb->modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
>  		else
>  			fb->modifier =3D I915_FORMAT_MOD_Y_TILED;
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index bc2c5104f755..028aab728514 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -474,6 +474,7 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
>  			    struct intel_link_m_n *m_n,
>  			    bool constant_n, bool fec_enable);
>  bool is_ccs_modifier(u64 modifier);
> +int intel_main_to_aux_plane(const struct drm_framebuffer *fb, int main_p=
lane);
>  void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
>  u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>  			      u32 pixel_format, u64 modifier);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 630a94892b7b..a1a73209d824 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -90,8 +90,8 @@ struct intel_framebuffer {
>  	/* for each plane in the normal GTT view */
>  	struct {
>  		unsigned int x, y;
> -	} normal[2];
> -	/* for each plane in the rotated GTT view */
> +	} normal[4];
> +	/* for each plane in the rotated GTT view for no-CCS formats */
>  	struct {
>  		unsigned int x, y;
>  		unsigned int pitch; /* pixels */
> @@ -555,7 +555,7 @@ struct intel_plane_state {
>  		 */
>  		u32 stride;
>  		int x, y;
> -	} color_plane[2];
> +	} color_plane[4];
>  =

>  	/* plane control register */
>  	u32 ctl;
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 3f7b8f2ff671..fca77ec1e0dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -583,15 +583,16 @@ skl_program_plane(struct intel_plane *plane,
>  	const struct drm_intel_sprite_colorkey *key =3D &plane_state->ckey;
>  	u32 surf_addr =3D plane_state->color_plane[color_plane].offset;
>  	u32 stride =3D skl_plane_stride(plane_state, color_plane);
> -	u32 aux_dist =3D plane_state->color_plane[1].offset - surf_addr;
> -	u32 aux_stride =3D skl_plane_stride(plane_state, 1);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	int aux_plane =3D intel_main_to_aux_plane(fb, color_plane);
> +	u32 aux_dist =3D plane_state->color_plane[aux_plane].offset - surf_addr;
> +	u32 aux_stride =3D skl_plane_stride(plane_state, aux_plane);
>  	int crtc_x =3D plane_state->uapi.dst.x1;
>  	int crtc_y =3D plane_state->uapi.dst.y1;
>  	u32 x =3D plane_state->color_plane[color_plane].x;
>  	u32 y =3D plane_state->color_plane[color_plane].y;
>  	u32 src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
>  	u32 src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	u8 alpha =3D plane_state->hw.alpha >> 8;
>  	u32 plane_color_ctl =3D 0;
>  	unsigned long irqflags;
> @@ -2106,7 +2107,8 @@ static int skl_plane_check_fb(const struct intel_cr=
tc_state *crtc_state,
>  	     fb->modifier =3D=3D I915_FORMAT_MOD_Yf_TILED ||
>  	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
>  	     fb->modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS ||
> -	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS)) {
> +	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> +	     fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS)) {
>  		DRM_DEBUG_KMS("Y/Yf tiling not supported in IF-ID mode\n");
>  		return -EINVAL;
>  	}
> @@ -2578,7 +2580,16 @@ static const u64 skl_plane_format_modifiers_ccs[] =
=3D {
>  	DRM_FORMAT_MOD_INVALID
>  };
>  =

> -static const u64 gen12_plane_format_modifiers_ccs[] =3D {
> +static const u64 gen12_plane_format_modifiers_mc_ccs[] =3D {
> +	I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> +	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> +	I915_FORMAT_MOD_Y_TILED,
> +	I915_FORMAT_MOD_X_TILED,
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID
> +};
> +
> +static const u64 gen12_plane_format_modifiers_rc_ccs[] =3D {
>  	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
>  	I915_FORMAT_MOD_Y_TILED,
>  	I915_FORMAT_MOD_X_TILED,
> @@ -2743,10 +2754,21 @@ static bool skl_plane_format_mod_supported(struct=
 drm_plane *_plane,
>  	}
>  }
>  =

> +static bool gen12_plane_supports_mc_ccs(enum plane_id plane_id)
> +{
> +	return plane_id < PLANE_SPRITE4;
> +}
> +
>  static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  					     u32 format, u64 modifier)
>  {
> +	struct intel_plane *plane =3D to_intel_plane(_plane);
> +
>  	switch (modifier) {
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> +		if (!gen12_plane_supports_mc_ccs(plane->id))
> +			return false;
> +		/* fall through */
>  	case DRM_FORMAT_MOD_LINEAR:
>  	case I915_FORMAT_MOD_X_TILED:
>  	case I915_FORMAT_MOD_Y_TILED:
> @@ -2764,11 +2786,6 @@ static bool gen12_plane_format_mod_supported(struc=
t drm_plane *_plane,
>  		if (is_ccs_modifier(modifier))
>  			return true;
>  		/* fall through */
> -	case DRM_FORMAT_RGB565:
> -	case DRM_FORMAT_XRGB2101010:
> -	case DRM_FORMAT_XBGR2101010:
> -	case DRM_FORMAT_ARGB2101010:
> -	case DRM_FORMAT_ABGR2101010:
>  	case DRM_FORMAT_YUYV:
>  	case DRM_FORMAT_YVYU:
>  	case DRM_FORMAT_UYVY:
> @@ -2777,6 +2794,14 @@ static bool gen12_plane_format_mod_supported(struc=
t drm_plane *_plane,
>  	case DRM_FORMAT_P010:
>  	case DRM_FORMAT_P012:
>  	case DRM_FORMAT_P016:
> +		if (modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS)
> +			return true;
> +		/* fall through */
> +	case DRM_FORMAT_RGB565:
> +	case DRM_FORMAT_XRGB2101010:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_ARGB2101010:
> +	case DRM_FORMAT_ABGR2101010:
>  	case DRM_FORMAT_XVYU2101010:
>  	case DRM_FORMAT_C8:
>  	case DRM_FORMAT_XBGR16161616F:
> @@ -2910,6 +2935,14 @@ static const u32 *icl_get_plane_formats(struct drm=
_i915_private *dev_priv,
>  	}
>  }
>  =

> +static const u64 *gen12_get_plane_modifiers(enum plane_id plane_id)
> +{
> +	if (gen12_plane_supports_mc_ccs(plane_id))
> +		return gen12_plane_format_modifiers_mc_ccs;
> +	else
> +		return gen12_plane_format_modifiers_rc_ccs;
> +}
> +
>  static bool skl_plane_has_ccs(struct drm_i915_private *dev_priv,
>  			      enum pipe pipe, enum plane_id plane_id)
>  {
> @@ -2975,7 +3008,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  =

>  	plane->has_ccs =3D skl_plane_has_ccs(dev_priv, pipe, plane_id);
>  	if (INTEL_GEN(dev_priv) >=3D 12) {
> -		modifiers =3D gen12_plane_format_modifiers_ccs;
> +		modifiers =3D gen12_get_plane_modifiers(plane_id);
>  		plane_funcs =3D &gen12_plane_funcs;
>  	} else {
>  		if (plane->has_ccs)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 030a3f3e69af..36d631273684 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6813,6 +6813,7 @@ enum {
>  #define   PLANE_CTL_TILED_Y			(4 << 10)
>  #define   PLANE_CTL_TILED_YF			(5 << 10)
>  #define   PLANE_CTL_FLIP_HORIZONTAL		(1 << 8)
> +#define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	(1 << 4) /* TGL+ */
>  #define   PLANE_CTL_ALPHA_MASK			(0x3 << 4) /* Pre-GLK */
>  #define   PLANE_CTL_ALPHA_DISABLE		(0 << 4)
>  #define   PLANE_CTL_ALPHA_SW_PREMULTIPLY	(2 << 4)
> -- =

> 2.23.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
