Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C50EC337933
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F8446E51C;
	Thu, 11 Mar 2021 16:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF346E51C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:23:08 +0000 (UTC)
IronPort-SDR: LJjVvkExqImRYtg3SqjjEGZraNQADZOi4/sv63tIBEZAXdusBZRDyO1EpAngz6jOl8yPS7wiBo
 y6+2UTM84YbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="176286763"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="176286763"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:23:07 -0800
IronPort-SDR: msAUEEwQDSPliq+dTWGgz6+FtZDdKVLGTlrFB6+vn5r8md4qn/UYdokKzw6aLJnt2YnUdb49x8
 yt3XFeH6BoeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="409537977"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 11 Mar 2021 08:23:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:23:03 +0200
Date: Thu, 11 Mar 2021 18:23:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpD55bdz1Y2cA+c@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-12-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-12-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 11/23] drm/i915/intel_fb: Pull FB plane
 functions from intel_display.c
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

On Thu, Mar 11, 2021 at 12:17:24AM +0200, Imre Deak wrote:
> Move the FB plane specific functions from intel_display.c to intel_fb.c.
> There's more functions like this, but I leave moving those as well for a
> follow up, and for now moving only the ones needed by the end of this
> patchset (adding support for padding tile-rows in an FB GGTT view).
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c    |   1 +
>  drivers/gpu/drm/i915/display/intel_cursor.c  |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c | 818 -------------------
>  drivers/gpu/drm/i915/display/intel_display.h |  17 -
>  drivers/gpu/drm/i915/display/intel_fb.c      | 807 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h      |  31 +
>  6 files changed, 840 insertions(+), 835 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 8a52beaed2da..6052e627ae57 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -11,6 +11,7 @@
>  #include "intel_atomic.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_display_types.h"
> +#include "intel_fb.h"
>  #include "intel_sprite.h"
>  #include "i9xx_plane.h"
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index 21fe4d2753e9..a245f45f5b3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -15,6 +15,7 @@
>  #include "intel_cursor.h"
>  #include "intel_display_types.h"
>  #include "intel_display.h"
> +#include "intel_fb.h"
>  =

>  #include "intel_frontbuffer.h"
>  #include "intel_pm.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index deaf7ddadff1..6117d43a4e49 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -854,19 +854,6 @@ void intel_disable_pipe(const struct intel_crtc_stat=
e *old_crtc_state)
>  		intel_wait_for_pipe_off(old_crtc_state);
>  }
>  =

> -static unsigned int intel_tile_size(const struct drm_i915_private *dev_p=
riv)
> -{
> -	return IS_GEN(dev_priv, 2) ? 2048 : 4096;
> -}
> -
> -static bool is_aux_plane(const struct drm_framebuffer *fb, int plane)
> -{
> -	if (is_ccs_modifier(fb->modifier))
> -		return is_ccs_plane(fb, plane);
> -
> -	return plane =3D=3D 1;
> -}
> -
>  bool
>  intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
>  				    u64 modifier)
> @@ -875,13 +862,6 @@ intel_format_info_is_yuv_semiplanar(const struct drm=
_format_info *info,
>  	       info->num_planes =3D=3D (is_ccs_modifier(modifier) ? 4 : 2);
>  }
>  =

> -static bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb,
> -				   int color_plane)
> -{
> -	return intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> -	       color_plane =3D=3D 1;
> -}
> -
>  unsigned int
>  intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  {
> @@ -936,38 +916,6 @@ intel_tile_width_bytes(const struct drm_framebuffer =
*fb, int color_plane)
>  	}
>  }
>  =

> -unsigned int
> -intel_tile_height(const struct drm_framebuffer *fb, int color_plane)
> -{
> -	if (is_gen12_ccs_plane(fb, color_plane))
> -		return 1;
> -
> -	return intel_tile_size(to_i915(fb->dev)) /
> -		intel_tile_width_bytes(fb, color_plane);
> -}
> -
> -/* Return the tile dimensions in pixel units */
> -static void intel_tile_dims(const struct drm_framebuffer *fb, int color_=
plane,
> -			    unsigned int *tile_width,
> -			    unsigned int *tile_height)
> -{
> -	unsigned int tile_width_bytes =3D intel_tile_width_bytes(fb, color_plan=
e);
> -	unsigned int cpp =3D fb->format->cpp[color_plane];
> -
> -	*tile_width =3D tile_width_bytes / cpp;
> -	*tile_height =3D intel_tile_height(fb, color_plane);
> -}
> -
> -static unsigned int intel_tile_row_size(const struct drm_framebuffer *fb,
> -					int color_plane)
> -{
> -	unsigned int tile_width, tile_height;
> -
> -	intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
> -
> -	return fb->pitches[color_plane] * tile_height;
> -}
> -
>  unsigned int
>  intel_fb_align_height(const struct drm_framebuffer *fb,
>  		      int color_plane, unsigned int height)
> @@ -999,32 +947,6 @@ unsigned int intel_remapped_info_size(const struct i=
ntel_remapped_info *rem_info
>  	return size;
>  }
>  =

> -static void
> -intel_fill_fb_ggtt_view(struct i915_ggtt_view *view,
> -			const struct drm_framebuffer *fb,
> -			unsigned int rotation)
> -{
> -	memset(view, 0, sizeof(*view));
> -
> -	view->type =3D I915_GGTT_VIEW_NORMAL;
> -	if (drm_rotation_90_or_270(rotation)) {
> -		view->type =3D I915_GGTT_VIEW_ROTATED;
> -		view->rotated =3D to_intel_framebuffer(fb)->rot_info;
> -	}
> -}
> -
> -static unsigned int intel_cursor_alignment(const struct drm_i915_private=
 *dev_priv)
> -{
> -	if (IS_I830(dev_priv))
> -		return 16 * 1024;
> -	else if (IS_I85X(dev_priv))
> -		return 256;
> -	else if (IS_I845G(dev_priv) || IS_I865G(dev_priv))
> -		return 32;
> -	else
> -		return 4 * 1024;
> -}
> -
>  static unsigned int intel_linear_alignment(const struct drm_i915_private=
 *dev_priv)
>  {
>  	if (INTEL_GEN(dev_priv) >=3D 9)
> @@ -1195,15 +1117,6 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsi=
gned long flags)
>  	i915_vma_put(vma);
>  }
>  =

> -static int intel_fb_pitch(const struct drm_framebuffer *fb, int color_pl=
ane,
> -			  unsigned int rotation)
> -{
> -	if (drm_rotation_90_or_270(rotation))
> -		return to_intel_framebuffer(fb)->rotated[color_plane].pitch;
> -	else
> -		return fb->pitches[color_plane];
> -}
> -
>  /*
>   * Convert the x/y offsets into a linear offset.
>   * Only valid with 0/180 degree rotation, which is fine since linear
> @@ -1235,224 +1148,6 @@ void intel_add_fb_offsets(int *x, int *y,
>  	*y +=3D state->color_plane[color_plane].y;
>  }
>  =

> -static u32 intel_adjust_tile_offset(int *x, int *y,
> -				    unsigned int tile_width,
> -				    unsigned int tile_height,
> -				    unsigned int tile_size,
> -				    unsigned int pitch_tiles,
> -				    u32 old_offset,
> -				    u32 new_offset)
> -{
> -	unsigned int pitch_pixels =3D pitch_tiles * tile_width;
> -	unsigned int tiles;
> -
> -	WARN_ON(old_offset & (tile_size - 1));
> -	WARN_ON(new_offset & (tile_size - 1));
> -	WARN_ON(new_offset > old_offset);
> -
> -	tiles =3D (old_offset - new_offset) / tile_size;
> -
> -	*y +=3D tiles / pitch_tiles * tile_height;
> -	*x +=3D tiles % pitch_tiles * tile_width;
> -
> -	/* minimize x in case it got needlessly big */
> -	*y +=3D *x / pitch_pixels * tile_height;
> -	*x %=3D pitch_pixels;
> -
> -	return new_offset;
> -}
> -
> -static u32 intel_adjust_aligned_offset(int *x, int *y,
> -				       const struct drm_framebuffer *fb,
> -				       int color_plane,
> -				       unsigned int rotation,
> -				       unsigned int pitch,
> -				       u32 old_offset, u32 new_offset)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> -	unsigned int cpp =3D fb->format->cpp[color_plane];
> -
> -	drm_WARN_ON(&dev_priv->drm, new_offset > old_offset);
> -
> -	if (!is_surface_linear(fb, color_plane)) {
> -		unsigned int tile_size, tile_width, tile_height;
> -		unsigned int pitch_tiles;
> -
> -		tile_size =3D intel_tile_size(dev_priv);
> -		intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
> -
> -		if (drm_rotation_90_or_270(rotation)) {
> -			pitch_tiles =3D pitch / tile_height;
> -			swap(tile_width, tile_height);
> -		} else {
> -			pitch_tiles =3D pitch / (tile_width * cpp);
> -		}
> -
> -		intel_adjust_tile_offset(x, y, tile_width, tile_height,
> -					 tile_size, pitch_tiles,
> -					 old_offset, new_offset);
> -	} else {
> -		old_offset +=3D *y * pitch + *x * cpp;
> -
> -		*y =3D (old_offset - new_offset) / pitch;
> -		*x =3D ((old_offset - new_offset) - *y * pitch) / cpp;
> -	}
> -
> -	return new_offset;
> -}
> -
> -/*
> - * Adjust the tile offset by moving the difference into
> - * the x/y offsets.
> - */
> -u32 intel_plane_adjust_aligned_offset(int *x, int *y,
> -				      const struct intel_plane_state *state,
> -				      int color_plane,
> -				      u32 old_offset, u32 new_offset)
> -{
> -	return intel_adjust_aligned_offset(x, y, state->hw.fb, color_plane,
> -					   state->hw.rotation,
> -					   state->color_plane[color_plane].stride,
> -					   old_offset, new_offset);
> -}
> -
> -/*
> - * Computes the aligned offset to the base tile and adjusts
> - * x, y. bytes per pixel is assumed to be a power-of-two.
> - *
> - * In the 90/270 rotated case, x and y are assumed
> - * to be already rotated to match the rotated GTT view, and
> - * pitch is the tile_height aligned framebuffer height.
> - *
> - * This function is used when computing the derived information
> - * under intel_framebuffer, so using any of that information
> - * here is not allowed. Anything under drm_framebuffer can be
> - * used. This is why the user has to pass in the pitch since it
> - * is specified in the rotated orientation.
> - */
> -static u32 intel_compute_aligned_offset(struct drm_i915_private *dev_pri=
v,
> -					int *x, int *y,
> -					const struct drm_framebuffer *fb,
> -					int color_plane,
> -					unsigned int pitch,
> -					unsigned int rotation,
> -					u32 alignment)
> -{
> -	unsigned int cpp =3D fb->format->cpp[color_plane];
> -	u32 offset, offset_aligned;
> -
> -	if (!is_surface_linear(fb, color_plane)) {
> -		unsigned int tile_size, tile_width, tile_height;
> -		unsigned int tile_rows, tiles, pitch_tiles;
> -
> -		tile_size =3D intel_tile_size(dev_priv);
> -		intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
> -
> -		if (drm_rotation_90_or_270(rotation)) {
> -			pitch_tiles =3D pitch / tile_height;
> -			swap(tile_width, tile_height);
> -		} else {
> -			pitch_tiles =3D pitch / (tile_width * cpp);
> -		}
> -
> -		tile_rows =3D *y / tile_height;
> -		*y %=3D tile_height;
> -
> -		tiles =3D *x / tile_width;
> -		*x %=3D tile_width;
> -
> -		offset =3D (tile_rows * pitch_tiles + tiles) * tile_size;
> -
> -		offset_aligned =3D offset;
> -		if (alignment)
> -			offset_aligned =3D rounddown(offset_aligned, alignment);
> -
> -		intel_adjust_tile_offset(x, y, tile_width, tile_height,
> -					 tile_size, pitch_tiles,
> -					 offset, offset_aligned);
> -	} else {
> -		offset =3D *y * pitch + *x * cpp;
> -		offset_aligned =3D offset;
> -		if (alignment) {
> -			offset_aligned =3D rounddown(offset_aligned, alignment);
> -			*y =3D (offset % alignment) / pitch;
> -			*x =3D ((offset % alignment) - *y * pitch) / cpp;
> -		} else {
> -			*y =3D *x =3D 0;
> -		}
> -	}
> -
> -	return offset_aligned;
> -}
> -
> -u32 intel_plane_compute_aligned_offset(int *x, int *y,
> -				       const struct intel_plane_state *state,
> -				       int color_plane)
> -{
> -	struct intel_plane *intel_plane =3D to_intel_plane(state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_plane->base.dev);
> -	const struct drm_framebuffer *fb =3D state->hw.fb;
> -	unsigned int rotation =3D state->hw.rotation;
> -	int pitch =3D state->color_plane[color_plane].stride;
> -	u32 alignment;
> -
> -	if (intel_plane->id =3D=3D PLANE_CURSOR)
> -		alignment =3D intel_cursor_alignment(dev_priv);
> -	else
> -		alignment =3D intel_surf_alignment(fb, color_plane);
> -
> -	return intel_compute_aligned_offset(dev_priv, x, y, fb, color_plane,
> -					    pitch, rotation, alignment);
> -}
> -
> -/* Convert the fb->offset[] into x/y offsets */
> -static int intel_fb_offset_to_xy(int *x, int *y,
> -				 const struct drm_framebuffer *fb,
> -				 int color_plane)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> -	unsigned int height;
> -	u32 alignment;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 12 &&
> -	    is_semiplanar_uv_plane(fb, color_plane))
> -		alignment =3D intel_tile_row_size(fb, color_plane);
> -	else if (fb->modifier !=3D DRM_FORMAT_MOD_LINEAR)
> -		alignment =3D intel_tile_size(dev_priv);
> -	else
> -		alignment =3D 0;
> -
> -	if (alignment !=3D 0 && fb->offsets[color_plane] % alignment) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Misaligned offset 0x%08x for color plane %d\n",
> -			    fb->offsets[color_plane], color_plane);
> -		return -EINVAL;
> -	}
> -
> -	height =3D drm_framebuffer_plane_height(fb->height, fb, color_plane);
> -	height =3D ALIGN(height, intel_tile_height(fb, color_plane));
> -
> -	/* Catch potential overflows early */
> -	if (add_overflows_t(u32, mul_u32_u32(height, fb->pitches[color_plane]),
> -			    fb->offsets[color_plane])) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Bad offset 0x%08x or pitch %d for color plane %d\n",
> -			    fb->offsets[color_plane], fb->pitches[color_plane],
> -			    color_plane);
> -		return -ERANGE;
> -	}
> -
> -	*x =3D 0;
> -	*y =3D 0;
> -
> -	intel_adjust_aligned_offset(x, y,
> -				    fb, color_plane, DRM_MODE_ROTATE_0,
> -				    fb->pitches[color_plane],
> -				    fb->offsets[color_plane], 0);
> -
> -	return 0;
> -}
> -
>  static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
>  {
>  	switch (fb_modifier) {
> @@ -1688,519 +1383,6 @@ intel_fb_stride_alignment(const struct drm_frameb=
uffer *fb, int color_plane)
>  	return tile_width;
>  }
>  =

> -bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int i;
> -
> -	/* We don't want to deal with remapping with cursors */
> -	if (plane->id =3D=3D PLANE_CURSOR)
> -		return false;
> -
> -	/*
> -	 * The display engine limits already match/exceed the
> -	 * render engine limits, so not much point in remapping.
> -	 * Would also need to deal with the fence POT alignment
> -	 * and gen2 2KiB GTT tile size.
> -	 */
> -	if (INTEL_GEN(dev_priv) < 4)
> -		return false;
> -
> -	/*
> -	 * The new CCS hash mode isn't compatible with remapping as
> -	 * the virtual address of the pages affects the compressed data.
> -	 */
> -	if (is_ccs_modifier(fb->modifier))
> -		return false;
> -
> -	/* Linear needs a page aligned stride for remapping */
> -	if (fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR) {
> -		unsigned int alignment =3D intel_tile_size(dev_priv) - 1;
> -
> -		for (i =3D 0; i < fb->format->num_planes; i++) {
> -			if (fb->pitches[i] & alignment)
> -				return false;
> -		}
> -	}
> -
> -	return true;
> -}
> -
> -static bool intel_plane_needs_remap(const struct intel_plane_state *plan=
e_state)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	unsigned int rotation =3D plane_state->hw.rotation;
> -	u32 stride, max_stride;
> -
> -	/*
> -	 * No remapping for invisible planes since we don't have
> -	 * an actual source viewport to remap.
> -	 */
> -	if (!plane_state->uapi.visible)
> -		return false;
> -
> -	if (!intel_plane_can_remap(plane_state))
> -		return false;
> -
> -	/*
> -	 * FIXME: aux plane limits on gen9+ are
> -	 * unclear in Bspec, for now no checking.
> -	 */
> -	stride =3D intel_fb_pitch(fb, 0, rotation);
> -	max_stride =3D plane->max_stride(plane, fb->format->format,
> -				       fb->modifier, rotation);
> -
> -	return stride > max_stride;
> -}
> -
> -void
> -intel_fb_plane_get_subsampling(int *hsub, int *vsub,
> -			       const struct drm_framebuffer *fb,
> -			       int color_plane)
> -{
> -	int main_plane;
> -
> -	if (color_plane =3D=3D 0) {
> -		*hsub =3D 1;
> -		*vsub =3D 1;
> -
> -		return;
> -	}
> -
> -	/*
> -	 * TODO: Deduct the subsampling from the char block for all CCS
> -	 * formats and planes.
> -	 */
> -	if (!is_gen12_ccs_plane(fb, color_plane)) {
> -		*hsub =3D fb->format->hsub;
> -		*vsub =3D fb->format->vsub;
> -
> -		return;
> -	}
> -
> -	main_plane =3D skl_ccs_to_main_plane(fb, color_plane);
> -	*hsub =3D drm_format_info_block_width(fb->format, color_plane) /
> -		drm_format_info_block_width(fb->format, main_plane);
> -
> -	/*
> -	 * The min stride check in the core framebuffer_check() function
> -	 * assumes that format->hsub applies to every plane except for the
> -	 * first plane. That's incorrect for the CCS AUX plane of the first
> -	 * plane, but for the above check to pass we must define the block
> -	 * width with that subsampling applied to it. Adjust the width here
> -	 * accordingly, so we can calculate the actual subsampling factor.
> -	 */
> -	if (main_plane =3D=3D 0)
> -		*hsub *=3D fb->format->hsub;
> -
> -	*vsub =3D 32;
> -}
> -static int
> -intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_plane, int x, =
int y)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(fb->dev);
> -	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> -	int main_plane;
> -	int hsub, vsub;
> -	int tile_width, tile_height;
> -	int ccs_x, ccs_y;
> -	int main_x, main_y;
> -
> -	if (!is_ccs_plane(fb, ccs_plane) || is_gen12_ccs_cc_plane(fb, ccs_plane=
))
> -		return 0;
> -
> -	intel_tile_dims(fb, ccs_plane, &tile_width, &tile_height);
> -	intel_fb_plane_get_subsampling(&hsub, &vsub, fb, ccs_plane);
> -
> -	tile_width *=3D hsub;
> -	tile_height *=3D vsub;
> -
> -	ccs_x =3D (x * hsub) % tile_width;
> -	ccs_y =3D (y * vsub) % tile_height;
> -
> -	main_plane =3D skl_ccs_to_main_plane(fb, ccs_plane);
> -	main_x =3D intel_fb->normal[main_plane].x % tile_width;
> -	main_y =3D intel_fb->normal[main_plane].y % tile_height;
> -
> -	/*
> -	 * CCS doesn't have its own x/y offset register, so the intra CCS tile
> -	 * x/y offsets must match between CCS and the main surface.
> -	 */
> -	if (main_x !=3D ccs_x || main_y !=3D ccs_y) {
> -		drm_dbg_kms(&i915->drm,
> -			      "Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)=
\n",
> -			      main_x, main_y,
> -			      ccs_x, ccs_y,
> -			      intel_fb->normal[main_plane].x,
> -			      intel_fb->normal[main_plane].y,
> -			      x, y);
> -		return -EINVAL;
> -	}
> -
> -	return 0;
> -}
> -
> -static void
> -intel_fb_plane_dims(int *w, int *h, struct drm_framebuffer *fb, int colo=
r_plane)
> -{
> -	int main_plane =3D is_ccs_plane(fb, color_plane) ?
> -			 skl_ccs_to_main_plane(fb, color_plane) : 0;
> -	int main_hsub, main_vsub;
> -	int hsub, vsub;
> -
> -	intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb, main_plane);
> -	intel_fb_plane_get_subsampling(&hsub, &vsub, fb, color_plane);
> -	*w =3D fb->width / main_hsub / hsub;
> -	*h =3D fb->height / main_vsub / vsub;
> -}
> -
> -/*
> - * Setup the rotated view for an FB plane and return the size the GTT ma=
pping
> - * requires for this view.
> - */
> -static u32
> -setup_fb_rotation(int plane, const struct intel_remapped_plane_info *pla=
ne_info,
> -		  u32 gtt_offset_rotated, int x, int y,
> -		  unsigned int width, unsigned int height,
> -		  unsigned int tile_size,
> -		  unsigned int tile_width, unsigned int tile_height,
> -		  struct drm_framebuffer *fb)
> -{
> -	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> -	struct intel_rotation_info *rot_info =3D &intel_fb->rot_info;
> -	unsigned int pitch_tiles;
> -	struct drm_rect r;
> -
> -	/* Y or Yf modifiers required for 90/270 rotation */
> -	if (fb->modifier !=3D I915_FORMAT_MOD_Y_TILED &&
> -	    fb->modifier !=3D I915_FORMAT_MOD_Yf_TILED)
> -		return 0;
> -
> -	if (drm_WARN_ON(fb->dev, plane >=3D ARRAY_SIZE(rot_info->plane)))
> -		return 0;
> -
> -	rot_info->plane[plane] =3D *plane_info;
> -
> -	intel_fb->rotated[plane].pitch =3D plane_info->height * tile_height;
> -
> -	/* rotate the x/y offsets to match the GTT view */
> -	drm_rect_init(&r, x, y, width, height);
> -	drm_rect_rotate(&r,
> -			plane_info->width * tile_width,
> -			plane_info->height * tile_height,
> -			DRM_MODE_ROTATE_270);
> -	x =3D r.x1;
> -	y =3D r.y1;
> -
> -	/* rotate the tile dimensions to match the GTT view */
> -	pitch_tiles =3D intel_fb->rotated[plane].pitch / tile_height;
> -	swap(tile_width, tile_height);
> -
> -	/*
> -	 * We only keep the x/y offsets, so push all of the
> -	 * gtt offset into the x/y offsets.
> -	 */
> -	intel_adjust_tile_offset(&x, &y,
> -				 tile_width, tile_height,
> -				 tile_size, pitch_tiles,
> -				 gtt_offset_rotated * tile_size, 0);
> -
> -	/*
> -	 * First pixel of the framebuffer from
> -	 * the start of the rotated gtt mapping.
> -	 */
> -	intel_fb->rotated[plane].x =3D x;
> -	intel_fb->rotated[plane].y =3D y;
> -
> -	return plane_info->width * plane_info->height;
> -}
> -
> -static int
> -intel_fill_fb_info(struct drm_i915_private *dev_priv,
> -		   struct drm_framebuffer *fb)
> -{
> -	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> -	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> -	u32 gtt_offset_rotated =3D 0;
> -	unsigned int max_size =3D 0;
> -	int i, num_planes =3D fb->format->num_planes;
> -	unsigned int tile_size =3D intel_tile_size(dev_priv);
> -
> -	for (i =3D 0; i < num_planes; i++) {
> -		unsigned int width, height;
> -		unsigned int cpp, size;
> -		u32 offset;
> -		int x, y;
> -		int ret;
> -
> -		/*
> -		 * Plane 2 of Render Compression with Clear Color fb modifier
> -		 * is consumed by the driver and not passed to DE. Skip the
> -		 * arithmetic related to alignment and offset calculation.
> -		 */
> -		if (is_gen12_ccs_cc_plane(fb, i)) {
> -			if (IS_ALIGNED(fb->offsets[i], PAGE_SIZE))
> -				continue;
> -			else
> -				return -EINVAL;
> -		}
> -
> -		cpp =3D fb->format->cpp[i];
> -		intel_fb_plane_dims(&width, &height, fb, i);
> -
> -		ret =3D intel_fb_offset_to_xy(&x, &y, fb, i);
> -		if (ret) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "bad fb plane %d offset: 0x%x\n",
> -				    i, fb->offsets[i]);
> -			return ret;
> -		}
> -
> -		ret =3D intel_fb_check_ccs_xy(fb, i, x, y);
> -		if (ret)
> -			return ret;
> -
> -		/*
> -		 * The fence (if used) is aligned to the start of the object
> -		 * so having the framebuffer wrap around across the edge of the
> -		 * fenced region doesn't really work. We have no API to configure
> -		 * the fence start offset within the object (nor could we probably
> -		 * on gen2/3). So it's just easier if we just require that the
> -		 * fb layout agrees with the fence layout. We already check that the
> -		 * fb stride matches the fence stride elsewhere.
> -		 */
> -		if (i =3D=3D 0 && i915_gem_object_is_tiled(obj) &&
> -		    (x + width) * cpp > fb->pitches[i]) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "bad fb plane %d offset: 0x%x\n",
> -				     i, fb->offsets[i]);
> -			return -EINVAL;
> -		}
> -
> -		/*
> -		 * First pixel of the framebuffer from
> -		 * the start of the normal gtt mapping.
> -		 */
> -		intel_fb->normal[i].x =3D x;
> -		intel_fb->normal[i].y =3D y;
> -
> -		offset =3D intel_compute_aligned_offset(dev_priv, &x, &y, fb, i,
> -						      fb->pitches[i],
> -						      DRM_MODE_ROTATE_0,
> -						      tile_size);
> -		offset /=3D tile_size;
> -
> -		if (!is_surface_linear(fb, i)) {
> -			struct intel_remapped_plane_info plane_info;
> -			unsigned int tile_width, tile_height;
> -
> -			intel_tile_dims(fb, i, &tile_width, &tile_height);
> -
> -			plane_info.offset =3D offset;
> -			plane_info.stride =3D DIV_ROUND_UP(fb->pitches[i],
> -							 tile_width * cpp);
> -			plane_info.width =3D DIV_ROUND_UP(x + width, tile_width);
> -			plane_info.height =3D DIV_ROUND_UP(y + height,
> -							 tile_height);
> -
> -			/* how many tiles does this plane need */
> -			size =3D plane_info.stride * plane_info.height;
> -			/*
> -			 * If the plane isn't horizontally tile aligned,
> -			 * we need one more tile.
> -			 */
> -			if (x !=3D 0)
> -				size++;
> -
> -			gtt_offset_rotated +=3D
> -				setup_fb_rotation(i, &plane_info,
> -						  gtt_offset_rotated,
> -						  x, y, width, height,
> -						  tile_size,
> -						  tile_width, tile_height,
> -						  fb);
> -		} else {
> -			size =3D DIV_ROUND_UP((y + height) * fb->pitches[i] +
> -					    x * cpp, tile_size);
> -		}
> -
> -		/* how many tiles in total needed in the bo */
> -		max_size =3D max(max_size, offset + size);
> -	}
> -
> -	if (mul_u32_u32(max_size, tile_size) > obj->base.size) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "fb too big for bo (need %llu bytes, have %zu bytes)\n",
> -			    mul_u32_u32(max_size, tile_size), obj->base.size);
> -		return -EINVAL;
> -	}
> -
> -	return 0;
> -}
> -
> -static void
> -intel_plane_remap_gtt(struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(plane_state->uapi.plane->dev);
> -	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> -	struct intel_rotation_info *info =3D &plane_state->view.rotated;
> -	unsigned int rotation =3D plane_state->hw.rotation;
> -	int i, num_planes =3D fb->format->num_planes;
> -	unsigned int tile_size =3D intel_tile_size(dev_priv);
> -	unsigned int src_x, src_y;
> -	unsigned int src_w, src_h;
> -	u32 gtt_offset =3D 0;
> -
> -	memset(&plane_state->view, 0, sizeof(plane_state->view));
> -	plane_state->view.type =3D drm_rotation_90_or_270(rotation) ?
> -		I915_GGTT_VIEW_ROTATED : I915_GGTT_VIEW_REMAPPED;
> -
> -	src_x =3D plane_state->uapi.src.x1 >> 16;
> -	src_y =3D plane_state->uapi.src.y1 >> 16;
> -	src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> -	src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> -
> -	drm_WARN_ON(&dev_priv->drm, is_ccs_modifier(fb->modifier));
> -
> -	/* Make src coordinates relative to the viewport */
> -	drm_rect_translate(&plane_state->uapi.src,
> -			   -(src_x << 16), -(src_y << 16));
> -
> -	/* Rotate src coordinates to match rotated GTT view */
> -	if (drm_rotation_90_or_270(rotation))
> -		drm_rect_rotate(&plane_state->uapi.src,
> -				src_w << 16, src_h << 16,
> -				DRM_MODE_ROTATE_270);
> -
> -	for (i =3D 0; i < num_planes; i++) {
> -		unsigned int hsub =3D i ? fb->format->hsub : 1;
> -		unsigned int vsub =3D i ? fb->format->vsub : 1;
> -		unsigned int cpp =3D fb->format->cpp[i];
> -		unsigned int tile_width, tile_height;
> -		unsigned int width, height;
> -		unsigned int pitch_tiles;
> -		unsigned int x, y;
> -		u32 offset;
> -
> -		intel_tile_dims(fb, i, &tile_width, &tile_height);
> -
> -		x =3D src_x / hsub;
> -		y =3D src_y / vsub;
> -		width =3D src_w / hsub;
> -		height =3D src_h / vsub;
> -
> -		/*
> -		 * First pixel of the src viewport from the
> -		 * start of the normal gtt mapping.
> -		 */
> -		x +=3D intel_fb->normal[i].x;
> -		y +=3D intel_fb->normal[i].y;
> -
> -		offset =3D intel_compute_aligned_offset(dev_priv, &x, &y,
> -						      fb, i, fb->pitches[i],
> -						      DRM_MODE_ROTATE_0, tile_size);
> -		offset /=3D tile_size;
> -
> -		drm_WARN_ON(&dev_priv->drm, i >=3D ARRAY_SIZE(info->plane));
> -		info->plane[i].offset =3D offset;
> -		info->plane[i].stride =3D DIV_ROUND_UP(fb->pitches[i],
> -						     tile_width * cpp);
> -		info->plane[i].width =3D DIV_ROUND_UP(x + width, tile_width);
> -		info->plane[i].height =3D DIV_ROUND_UP(y + height, tile_height);
> -
> -		if (drm_rotation_90_or_270(rotation)) {
> -			struct drm_rect r;
> -
> -			/* rotate the x/y offsets to match the GTT view */
> -			drm_rect_init(&r, x, y, width, height);
> -			drm_rect_rotate(&r,
> -					info->plane[i].width * tile_width,
> -					info->plane[i].height * tile_height,
> -					DRM_MODE_ROTATE_270);
> -			x =3D r.x1;
> -			y =3D r.y1;
> -
> -			pitch_tiles =3D info->plane[i].height;
> -			plane_state->color_plane[i].stride =3D pitch_tiles * tile_height;
> -
> -			/* rotate the tile dimensions to match the GTT view */
> -			swap(tile_width, tile_height);
> -		} else {
> -			pitch_tiles =3D info->plane[i].width;
> -			plane_state->color_plane[i].stride =3D pitch_tiles * tile_width * cpp;
> -		}
> -
> -		/*
> -		 * We only keep the x/y offsets, so push all of the
> -		 * gtt offset into the x/y offsets.
> -		 */
> -		intel_adjust_tile_offset(&x, &y,
> -					 tile_width, tile_height,
> -					 tile_size, pitch_tiles,
> -					 gtt_offset * tile_size, 0);
> -
> -		gtt_offset +=3D info->plane[i].width * info->plane[i].height;
> -
> -		plane_state->color_plane[i].offset =3D 0;
> -		plane_state->color_plane[i].x =3D x;
> -		plane_state->color_plane[i].y =3D y;
> -	}
> -}
> -
> -int
> -intel_plane_compute_gtt(struct intel_plane_state *plane_state)
> -{
> -	const struct intel_framebuffer *fb =3D
> -		to_intel_framebuffer(plane_state->hw.fb);
> -	unsigned int rotation =3D plane_state->hw.rotation;
> -	int i, num_planes;
> -
> -	if (!fb)
> -		return 0;
> -
> -	num_planes =3D fb->base.format->num_planes;
> -
> -	if (intel_plane_needs_remap(plane_state)) {
> -		intel_plane_remap_gtt(plane_state);
> -
> -		/*
> -		 * Sometimes even remapping can't overcome
> -		 * the stride limitations :( Can happen with
> -		 * big plane sizes and suitably misaligned
> -		 * offsets.
> -		 */
> -		return intel_plane_check_stride(plane_state);
> -	}
> -
> -	intel_fill_fb_ggtt_view(&plane_state->view, &fb->base, rotation);
> -
> -	for (i =3D 0; i < num_planes; i++) {
> -		plane_state->color_plane[i].stride =3D intel_fb_pitch(&fb->base, i, ro=
tation);
> -		plane_state->color_plane[i].offset =3D 0;
> -
> -		if (drm_rotation_90_or_270(rotation)) {
> -			plane_state->color_plane[i].x =3D fb->rotated[i].x;
> -			plane_state->color_plane[i].y =3D fb->rotated[i].y;
> -		} else {
> -			plane_state->color_plane[i].x =3D fb->normal[i].x;
> -			plane_state->color_plane[i].y =3D fb->normal[i].y;
> -		}
> -	}
> -
> -	/* Rotate src coordinates to match rotated GTT view */
> -	if (drm_rotation_90_or_270(rotation))
> -		drm_rect_rotate(&plane_state->uapi.src,
> -				fb->base.width << 16, fb->base.height << 16,
> -				DRM_MODE_ROTATE_270);
> -
> -	return intel_plane_check_stride(plane_state);
> -}
> -
>  static struct i915_vma *
>  initial_plane_vma(struct drm_i915_private *i915,
>  		  struct intel_initial_plane_config *plane_config)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 32ef99c09efc..5a87080bdbfa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -515,7 +515,6 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
>  void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
>  u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>  			      u32 pixel_format, u64 modifier);
> -bool intel_plane_can_remap(const struct intel_plane_state *plane_state);
>  enum drm_mode_status
>  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>  				const struct drm_display_mode *mode,
> @@ -627,31 +626,15 @@ bool
>  intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
>  				    u64 modifier);
>  =

> -int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
> -u32 intel_plane_compute_aligned_offset(int *x, int *y,
> -				       const struct intel_plane_state *state,
> -				       int color_plane);
>  int intel_plane_pin_fb(struct intel_plane_state *plane_state);
>  void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
>  struct intel_encoder *
>  intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
>  			   const struct intel_crtc_state *crtc_state);
> -u32 intel_plane_adjust_aligned_offset(int *x, int *y,
> -				      const struct intel_plane_state *state,
> -				      int color_plane,
> -				      u32 old_offset, u32 new_offset);
>  =

>  unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
>  				  int color_plane);
> -void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
> -				    const struct drm_framebuffer *fb,
> -				    int color_plane);
> -u32 intel_plane_adjust_aligned_offset(int *x, int *y,
> -				      const struct intel_plane_state *state,
> -				      int color_plane,
> -				      u32 old_offset, u32 new_offset);
>  unsigned int intel_tile_width_bytes(const struct drm_framebuffer *fb, in=
t color_plane);
> -unsigned int intel_tile_height(const struct drm_framebuffer *fb, int col=
or_plane);
>  =

>  void intel_display_driver_register(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 8ebcded6a472..f0efff22c145 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -5,6 +5,7 @@
>  =

>  #include <drm/drm_framebuffer.h>
>  =

> +#include "display/intel_display.h"
>  #include "display/intel_display_types.h"
>  #include "display/intel_fb.h"
>  =

> @@ -27,6 +28,20 @@ bool is_gen12_ccs_cc_plane(const struct drm_framebuffe=
r *fb, int plane)
>  	       plane =3D=3D 2;
>  }
>  =

> +bool is_aux_plane(const struct drm_framebuffer *fb, int plane)
> +{
> +	if (is_ccs_modifier(fb->modifier))
> +		return is_ccs_plane(fb, plane);
> +
> +	return plane =3D=3D 1;
> +}
> +
> +bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_=
plane)
> +{
> +	return intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> +		color_plane =3D=3D 1;
> +}
> +
>  bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane)
>  {
>  	return fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> @@ -65,6 +80,750 @@ int skl_main_to_aux_plane(const struct drm_framebuffe=
r *fb, int main_plane)
>  		return 0;
>  }
>  =

> +unsigned int intel_tile_size(const struct drm_i915_private *dev_priv)
> +{
> +	return IS_GEN(dev_priv, 2) ? 2048 : 4096;
> +}
> +
> +unsigned int intel_tile_height(const struct drm_framebuffer *fb, int col=
or_plane)
> +{
> +	if (is_gen12_ccs_plane(fb, color_plane))
> +		return 1;
> +
> +	return intel_tile_size(to_i915(fb->dev)) /
> +		intel_tile_width_bytes(fb, color_plane);
> +}
> +
> +/* Return the tile dimensions in pixel units */
> +static void intel_tile_dims(const struct drm_framebuffer *fb, int color_=
plane,
> +			    unsigned int *tile_width,
> +			    unsigned int *tile_height)
> +{
> +	unsigned int tile_width_bytes =3D intel_tile_width_bytes(fb, color_plan=
e);
> +	unsigned int cpp =3D fb->format->cpp[color_plane];
> +
> +	*tile_width =3D tile_width_bytes / cpp;
> +	*tile_height =3D intel_tile_height(fb, color_plane);
> +}
> +
> +unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int c=
olor_plane)
> +{
> +	unsigned int tile_width, tile_height;
> +
> +	intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
> +
> +	return fb->pitches[color_plane] * tile_height;
> +}
> +
> +unsigned int intel_cursor_alignment(const struct drm_i915_private *dev_p=
riv)
> +{
> +	if (IS_I830(dev_priv))
> +		return 16 * 1024;
> +	else if (IS_I85X(dev_priv))
> +		return 256;
> +	else if (IS_I845G(dev_priv) || IS_I865G(dev_priv))
> +		return 32;
> +	else
> +		return 4 * 1024;
> +}
> +
> +void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
> +				    const struct drm_framebuffer *fb,
> +				    int color_plane)
> +{
> +	int main_plane;
> +
> +	if (color_plane =3D=3D 0) {
> +		*hsub =3D 1;
> +		*vsub =3D 1;
> +
> +		return;
> +	}
> +
> +	/*
> +	 * TODO: Deduct the subsampling from the char block for all CCS
> +	 * formats and planes.
> +	 */
> +	if (!is_gen12_ccs_plane(fb, color_plane)) {
> +		*hsub =3D fb->format->hsub;
> +		*vsub =3D fb->format->vsub;
> +
> +		return;
> +	}
> +
> +	main_plane =3D skl_ccs_to_main_plane(fb, color_plane);
> +	*hsub =3D drm_format_info_block_width(fb->format, color_plane) /
> +		drm_format_info_block_width(fb->format, main_plane);
> +
> +	/*
> +	 * The min stride check in the core framebuffer_check() function
> +	 * assumes that format->hsub applies to every plane except for the
> +	 * first plane. That's incorrect for the CCS AUX plane of the first
> +	 * plane, but for the above check to pass we must define the block
> +	 * width with that subsampling applied to it. Adjust the width here
> +	 * accordingly, so we can calculate the actual subsampling factor.
> +	 */
> +	if (main_plane =3D=3D 0)
> +		*hsub *=3D fb->format->hsub;
> +
> +	*vsub =3D 32;
> +}
> +
> +static void intel_fb_plane_dims(int *w, int *h, struct drm_framebuffer *=
fb, int color_plane)
> +{
> +	int main_plane =3D is_ccs_plane(fb, color_plane) ?
> +			 skl_ccs_to_main_plane(fb, color_plane) : 0;
> +	int main_hsub, main_vsub;
> +	int hsub, vsub;
> +
> +	intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb, main_plane);
> +	intel_fb_plane_get_subsampling(&hsub, &vsub, fb, color_plane);
> +	*w =3D fb->width / main_hsub / hsub;
> +	*h =3D fb->height / main_vsub / vsub;
> +}
> +
> +static u32 intel_adjust_tile_offset(int *x, int *y,
> +				    unsigned int tile_width,
> +				    unsigned int tile_height,
> +				    unsigned int tile_size,
> +				    unsigned int pitch_tiles,
> +				    u32 old_offset,
> +				    u32 new_offset)
> +{
> +	unsigned int pitch_pixels =3D pitch_tiles * tile_width;
> +	unsigned int tiles;
> +
> +	WARN_ON(old_offset & (tile_size - 1));
> +	WARN_ON(new_offset & (tile_size - 1));
> +	WARN_ON(new_offset > old_offset);
> +
> +	tiles =3D (old_offset - new_offset) / tile_size;
> +
> +	*y +=3D tiles / pitch_tiles * tile_height;
> +	*x +=3D tiles % pitch_tiles * tile_width;
> +
> +	/* minimize x in case it got needlessly big */
> +	*y +=3D *x / pitch_pixels * tile_height;
> +	*x %=3D pitch_pixels;
> +
> +	return new_offset;
> +}
> +
> +static u32 intel_adjust_aligned_offset(int *x, int *y,
> +				       const struct drm_framebuffer *fb,
> +				       int color_plane,
> +				       unsigned int rotation,
> +				       unsigned int pitch,
> +				       u32 old_offset, u32 new_offset)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> +	unsigned int cpp =3D fb->format->cpp[color_plane];
> +
> +	drm_WARN_ON(&dev_priv->drm, new_offset > old_offset);
> +
> +	if (!is_surface_linear(fb, color_plane)) {
> +		unsigned int tile_size, tile_width, tile_height;
> +		unsigned int pitch_tiles;
> +
> +		tile_size =3D intel_tile_size(dev_priv);
> +		intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
> +
> +		if (drm_rotation_90_or_270(rotation)) {
> +			pitch_tiles =3D pitch / tile_height;
> +			swap(tile_width, tile_height);
> +		} else {
> +			pitch_tiles =3D pitch / (tile_width * cpp);
> +		}
> +
> +		intel_adjust_tile_offset(x, y, tile_width, tile_height,
> +					 tile_size, pitch_tiles,
> +					 old_offset, new_offset);
> +	} else {
> +		old_offset +=3D *y * pitch + *x * cpp;
> +
> +		*y =3D (old_offset - new_offset) / pitch;
> +		*x =3D ((old_offset - new_offset) - *y * pitch) / cpp;
> +	}
> +
> +	return new_offset;
> +}
> +
> +/*
> + * Adjust the tile offset by moving the difference into
> + * the x/y offsets.
> + */
> +u32 intel_plane_adjust_aligned_offset(int *x, int *y,
> +				      const struct intel_plane_state *state,
> +				      int color_plane,
> +				      u32 old_offset, u32 new_offset)
> +{
> +	return intel_adjust_aligned_offset(x, y, state->hw.fb, color_plane,
> +					   state->hw.rotation,
> +					   state->color_plane[color_plane].stride,
> +					   old_offset, new_offset);
> +}
> +
> +/*
> + * Computes the aligned offset to the base tile and adjusts
> + * x, y. bytes per pixel is assumed to be a power-of-two.
> + *
> + * In the 90/270 rotated case, x and y are assumed
> + * to be already rotated to match the rotated GTT view, and
> + * pitch is the tile_height aligned framebuffer height.
> + *
> + * This function is used when computing the derived information
> + * under intel_framebuffer, so using any of that information
> + * here is not allowed. Anything under drm_framebuffer can be
> + * used. This is why the user has to pass in the pitch since it
> + * is specified in the rotated orientation.
> + */
> +static u32 intel_compute_aligned_offset(struct drm_i915_private *dev_pri=
v,
> +					int *x, int *y,
> +					const struct drm_framebuffer *fb,
> +					int color_plane,
> +					unsigned int pitch,
> +					unsigned int rotation,
> +					u32 alignment)
> +{
> +	unsigned int cpp =3D fb->format->cpp[color_plane];
> +	u32 offset, offset_aligned;
> +
> +	if (!is_surface_linear(fb, color_plane)) {
> +		unsigned int tile_size, tile_width, tile_height;
> +		unsigned int tile_rows, tiles, pitch_tiles;
> +
> +		tile_size =3D intel_tile_size(dev_priv);
> +		intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
> +
> +		if (drm_rotation_90_or_270(rotation)) {
> +			pitch_tiles =3D pitch / tile_height;
> +			swap(tile_width, tile_height);
> +		} else {
> +			pitch_tiles =3D pitch / (tile_width * cpp);
> +		}
> +
> +		tile_rows =3D *y / tile_height;
> +		*y %=3D tile_height;
> +
> +		tiles =3D *x / tile_width;
> +		*x %=3D tile_width;
> +
> +		offset =3D (tile_rows * pitch_tiles + tiles) * tile_size;
> +
> +		offset_aligned =3D offset;
> +		if (alignment)
> +			offset_aligned =3D rounddown(offset_aligned, alignment);
> +
> +		intel_adjust_tile_offset(x, y, tile_width, tile_height,
> +					 tile_size, pitch_tiles,
> +					 offset, offset_aligned);
> +	} else {
> +		offset =3D *y * pitch + *x * cpp;
> +		offset_aligned =3D offset;
> +		if (alignment) {
> +			offset_aligned =3D rounddown(offset_aligned, alignment);
> +			*y =3D (offset % alignment) / pitch;
> +			*x =3D ((offset % alignment) - *y * pitch) / cpp;
> +		} else {
> +			*y =3D *x =3D 0;
> +		}
> +	}
> +
> +	return offset_aligned;
> +}
> +
> +u32 intel_plane_compute_aligned_offset(int *x, int *y,
> +				       const struct intel_plane_state *state,
> +				       int color_plane)
> +{
> +	struct intel_plane *intel_plane =3D to_intel_plane(state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_plane->base.dev);
> +	const struct drm_framebuffer *fb =3D state->hw.fb;
> +	unsigned int rotation =3D state->hw.rotation;
> +	int pitch =3D state->color_plane[color_plane].stride;
> +	u32 alignment;
> +
> +	if (intel_plane->id =3D=3D PLANE_CURSOR)
> +		alignment =3D intel_cursor_alignment(dev_priv);
> +	else
> +		alignment =3D intel_surf_alignment(fb, color_plane);
> +
> +	return intel_compute_aligned_offset(dev_priv, x, y, fb, color_plane,
> +					    pitch, rotation, alignment);
> +}
> +
> +/* Convert the fb->offset[] into x/y offsets */
> +static int intel_fb_offset_to_xy(int *x, int *y,
> +				 const struct drm_framebuffer *fb,
> +				 int color_plane)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> +	unsigned int height;
> +	u32 alignment;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12 &&
> +	    is_semiplanar_uv_plane(fb, color_plane))
> +		alignment =3D intel_tile_row_size(fb, color_plane);
> +	else if (fb->modifier !=3D DRM_FORMAT_MOD_LINEAR)
> +		alignment =3D intel_tile_size(dev_priv);
> +	else
> +		alignment =3D 0;
> +
> +	if (alignment !=3D 0 && fb->offsets[color_plane] % alignment) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Misaligned offset 0x%08x for color plane %d\n",
> +			    fb->offsets[color_plane], color_plane);
> +		return -EINVAL;
> +	}
> +
> +	height =3D drm_framebuffer_plane_height(fb->height, fb, color_plane);
> +	height =3D ALIGN(height, intel_tile_height(fb, color_plane));
> +
> +	/* Catch potential overflows early */
> +	if (add_overflows_t(u32, mul_u32_u32(height, fb->pitches[color_plane]),
> +			    fb->offsets[color_plane])) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Bad offset 0x%08x or pitch %d for color plane %d\n",
> +			    fb->offsets[color_plane], fb->pitches[color_plane],
> +			    color_plane);
> +		return -ERANGE;
> +	}
> +
> +	*x =3D 0;
> +	*y =3D 0;
> +
> +	intel_adjust_aligned_offset(x, y,
> +				    fb, color_plane, DRM_MODE_ROTATE_0,
> +				    fb->pitches[color_plane],
> +				    fb->offsets[color_plane], 0);
> +
> +	return 0;
> +}
> +
> +static int intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_pla=
ne, int x, int y)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(fb->dev);
> +	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +	int main_plane;
> +	int hsub, vsub;
> +	int tile_width, tile_height;
> +	int ccs_x, ccs_y;
> +	int main_x, main_y;
> +
> +	if (!is_ccs_plane(fb, ccs_plane) || is_gen12_ccs_cc_plane(fb, ccs_plane=
))
> +		return 0;
> +
> +	intel_tile_dims(fb, ccs_plane, &tile_width, &tile_height);
> +	intel_fb_plane_get_subsampling(&hsub, &vsub, fb, ccs_plane);
> +
> +	tile_width *=3D hsub;
> +	tile_height *=3D vsub;
> +
> +	ccs_x =3D (x * hsub) % tile_width;
> +	ccs_y =3D (y * vsub) % tile_height;
> +
> +	main_plane =3D skl_ccs_to_main_plane(fb, ccs_plane);
> +	main_x =3D intel_fb->normal[main_plane].x % tile_width;
> +	main_y =3D intel_fb->normal[main_plane].y % tile_height;
> +
> +	/*
> +	 * CCS doesn't have its own x/y offset register, so the intra CCS tile
> +	 * x/y offsets must match between CCS and the main surface.
> +	 */
> +	if (main_x !=3D ccs_x || main_y !=3D ccs_y) {
> +		drm_dbg_kms(&i915->drm,
> +			      "Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)=
\n",
> +			      main_x, main_y,
> +			      ccs_x, ccs_y,
> +			      intel_fb->normal[main_plane].x,
> +			      intel_fb->normal[main_plane].y,
> +			      x, y);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static bool intel_plane_can_remap(const struct intel_plane_state *plane_=
state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	int i;
> +
> +	/* We don't want to deal with remapping with cursors */
> +	if (plane->id =3D=3D PLANE_CURSOR)
> +		return false;
> +
> +	/*
> +	 * The display engine limits already match/exceed the
> +	 * render engine limits, so not much point in remapping.
> +	 * Would also need to deal with the fence POT alignment
> +	 * and gen2 2KiB GTT tile size.
> +	 */
> +	if (INTEL_GEN(dev_priv) < 4)
> +		return false;
> +
> +	/*
> +	 * The new CCS hash mode isn't compatible with remapping as
> +	 * the virtual address of the pages affects the compressed data.
> +	 */
> +	if (is_ccs_modifier(fb->modifier))
> +		return false;
> +
> +	/* Linear needs a page aligned stride for remapping */
> +	if (fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR) {
> +		unsigned int alignment =3D intel_tile_size(dev_priv) - 1;
> +
> +		for (i =3D 0; i < fb->format->num_planes; i++) {
> +			if (fb->pitches[i] & alignment)
> +				return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
> +int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane, un=
signed int rotation)
> +{
> +	if (drm_rotation_90_or_270(rotation))
> +		return to_intel_framebuffer(fb)->rotated[color_plane].pitch;
> +	else
> +		return fb->pitches[color_plane];
> +}
> +
> +static bool intel_plane_needs_remap(const struct intel_plane_state *plan=
e_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	u32 stride, max_stride;
> +
> +	/*
> +	 * No remapping for invisible planes since we don't have
> +	 * an actual source viewport to remap.
> +	 */
> +	if (!plane_state->uapi.visible)
> +		return false;
> +
> +	if (!intel_plane_can_remap(plane_state))
> +		return false;
> +
> +	/*
> +	 * FIXME: aux plane limits on gen9+ are
> +	 * unclear in Bspec, for now no checking.
> +	 */
> +	stride =3D intel_fb_pitch(fb, 0, rotation);
> +	max_stride =3D plane->max_stride(plane, fb->format->format,
> +				       fb->modifier, rotation);
> +
> +	return stride > max_stride;
> +}
> +
> +/*
> + * Setup the rotated view for an FB plane and return the size the GTT ma=
pping
> + * requires for this view.
> + */
> +static u32 setup_fb_rotation(int plane, const struct intel_remapped_plan=
e_info *plane_info,
> +			     u32 gtt_offset_rotated, int x, int y,
> +			     unsigned int width, unsigned int height,
> +			     unsigned int tile_size,
> +			     unsigned int tile_width, unsigned int tile_height,
> +			     struct drm_framebuffer *fb)
> +{
> +	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +	struct intel_rotation_info *rot_info =3D &intel_fb->rot_info;
> +	unsigned int pitch_tiles;
> +	struct drm_rect r;
> +
> +	/* Y or Yf modifiers required for 90/270 rotation */
> +	if (fb->modifier !=3D I915_FORMAT_MOD_Y_TILED &&
> +	    fb->modifier !=3D I915_FORMAT_MOD_Yf_TILED)
> +		return 0;
> +
> +	if (drm_WARN_ON(fb->dev, plane >=3D ARRAY_SIZE(rot_info->plane)))
> +		return 0;
> +
> +	rot_info->plane[plane] =3D *plane_info;
> +
> +	intel_fb->rotated[plane].pitch =3D plane_info->height * tile_height;
> +
> +	/* rotate the x/y offsets to match the GTT view */
> +	drm_rect_init(&r, x, y, width, height);
> +	drm_rect_rotate(&r,
> +			plane_info->width * tile_width,
> +			plane_info->height * tile_height,
> +			DRM_MODE_ROTATE_270);
> +	x =3D r.x1;
> +	y =3D r.y1;
> +
> +	/* rotate the tile dimensions to match the GTT view */
> +	pitch_tiles =3D intel_fb->rotated[plane].pitch / tile_height;
> +	swap(tile_width, tile_height);
> +
> +	/*
> +	 * We only keep the x/y offsets, so push all of the
> +	 * gtt offset into the x/y offsets.
> +	 */
> +	intel_adjust_tile_offset(&x, &y,
> +				 tile_width, tile_height,
> +				 tile_size, pitch_tiles,
> +				 gtt_offset_rotated * tile_size, 0);
> +
> +	/*
> +	 * First pixel of the framebuffer from
> +	 * the start of the rotated gtt mapping.
> +	 */
> +	intel_fb->rotated[plane].x =3D x;
> +	intel_fb->rotated[plane].y =3D y;
> +
> +	return plane_info->width * plane_info->height;
> +}
> +
> +int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_fra=
mebuffer *fb)
> +{
> +	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> +	u32 gtt_offset_rotated =3D 0;
> +	unsigned int max_size =3D 0;
> +	int i, num_planes =3D fb->format->num_planes;
> +	unsigned int tile_size =3D intel_tile_size(dev_priv);
> +
> +	for (i =3D 0; i < num_planes; i++) {
> +		unsigned int width, height;
> +		unsigned int cpp, size;
> +		u32 offset;
> +		int x, y;
> +		int ret;
> +
> +		/*
> +		 * Plane 2 of Render Compression with Clear Color fb modifier
> +		 * is consumed by the driver and not passed to DE. Skip the
> +		 * arithmetic related to alignment and offset calculation.
> +		 */
> +		if (is_gen12_ccs_cc_plane(fb, i)) {
> +			if (IS_ALIGNED(fb->offsets[i], PAGE_SIZE))
> +				continue;
> +			else
> +				return -EINVAL;
> +		}
> +
> +		cpp =3D fb->format->cpp[i];
> +		intel_fb_plane_dims(&width, &height, fb, i);
> +
> +		ret =3D intel_fb_offset_to_xy(&x, &y, fb, i);
> +		if (ret) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "bad fb plane %d offset: 0x%x\n",
> +				    i, fb->offsets[i]);
> +			return ret;
> +		}
> +
> +		ret =3D intel_fb_check_ccs_xy(fb, i, x, y);
> +		if (ret)
> +			return ret;
> +
> +		/*
> +		 * The fence (if used) is aligned to the start of the object
> +		 * so having the framebuffer wrap around across the edge of the
> +		 * fenced region doesn't really work. We have no API to configure
> +		 * the fence start offset within the object (nor could we probably
> +		 * on gen2/3). So it's just easier if we just require that the
> +		 * fb layout agrees with the fence layout. We already check that the
> +		 * fb stride matches the fence stride elsewhere.
> +		 */
> +		if (i =3D=3D 0 && i915_gem_object_is_tiled(obj) &&
> +		    (x + width) * cpp > fb->pitches[i]) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "bad fb plane %d offset: 0x%x\n",
> +				     i, fb->offsets[i]);
> +			return -EINVAL;
> +		}
> +
> +		/*
> +		 * First pixel of the framebuffer from
> +		 * the start of the normal gtt mapping.
> +		 */
> +		intel_fb->normal[i].x =3D x;
> +		intel_fb->normal[i].y =3D y;
> +
> +		offset =3D intel_compute_aligned_offset(dev_priv, &x, &y, fb, i,
> +						      fb->pitches[i],
> +						      DRM_MODE_ROTATE_0,
> +						      tile_size);
> +		offset /=3D tile_size;
> +
> +		if (!is_surface_linear(fb, i)) {
> +			struct intel_remapped_plane_info plane_info;
> +			unsigned int tile_width, tile_height;
> +
> +			intel_tile_dims(fb, i, &tile_width, &tile_height);
> +
> +			plane_info.offset =3D offset;
> +			plane_info.stride =3D DIV_ROUND_UP(fb->pitches[i],
> +							 tile_width * cpp);
> +			plane_info.width =3D DIV_ROUND_UP(x + width, tile_width);
> +			plane_info.height =3D DIV_ROUND_UP(y + height,
> +							 tile_height);
> +
> +			/* how many tiles does this plane need */
> +			size =3D plane_info.stride * plane_info.height;
> +			/*
> +			 * If the plane isn't horizontally tile aligned,
> +			 * we need one more tile.
> +			 */
> +			if (x !=3D 0)
> +				size++;
> +
> +			gtt_offset_rotated +=3D
> +				setup_fb_rotation(i, &plane_info,
> +						  gtt_offset_rotated,
> +						  x, y, width, height,
> +						  tile_size,
> +						  tile_width, tile_height,
> +						  fb);
> +		} else {
> +			size =3D DIV_ROUND_UP((y + height) * fb->pitches[i] +
> +					    x * cpp, tile_size);
> +		}
> +
> +		/* how many tiles in total needed in the bo */
> +		max_size =3D max(max_size, offset + size);
> +	}
> +
> +	if (mul_u32_u32(max_size, tile_size) > obj->base.size) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "fb too big for bo (need %llu bytes, have %zu bytes)\n",
> +			    mul_u32_u32(max_size, tile_size), obj->base.size);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv =3D
> +		to_i915(plane_state->uapi.plane->dev);
> +	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +	struct intel_rotation_info *info =3D &plane_state->view.rotated;
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	int i, num_planes =3D fb->format->num_planes;
> +	unsigned int tile_size =3D intel_tile_size(dev_priv);
> +	unsigned int src_x, src_y;
> +	unsigned int src_w, src_h;
> +	u32 gtt_offset =3D 0;
> +
> +	memset(&plane_state->view, 0, sizeof(plane_state->view));
> +	plane_state->view.type =3D drm_rotation_90_or_270(rotation) ?
> +		I915_GGTT_VIEW_ROTATED : I915_GGTT_VIEW_REMAPPED;
> +
> +	src_x =3D plane_state->uapi.src.x1 >> 16;
> +	src_y =3D plane_state->uapi.src.y1 >> 16;
> +	src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +	src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> +
> +	drm_WARN_ON(&dev_priv->drm, is_ccs_modifier(fb->modifier));
> +
> +	/* Make src coordinates relative to the viewport */
> +	drm_rect_translate(&plane_state->uapi.src,
> +			   -(src_x << 16), -(src_y << 16));
> +
> +	/* Rotate src coordinates to match rotated GTT view */
> +	if (drm_rotation_90_or_270(rotation))
> +		drm_rect_rotate(&plane_state->uapi.src,
> +				src_w << 16, src_h << 16,
> +				DRM_MODE_ROTATE_270);
> +
> +	for (i =3D 0; i < num_planes; i++) {
> +		unsigned int hsub =3D i ? fb->format->hsub : 1;
> +		unsigned int vsub =3D i ? fb->format->vsub : 1;
> +		unsigned int cpp =3D fb->format->cpp[i];
> +		unsigned int tile_width, tile_height;
> +		unsigned int width, height;
> +		unsigned int pitch_tiles;
> +		unsigned int x, y;
> +		u32 offset;
> +
> +		intel_tile_dims(fb, i, &tile_width, &tile_height);
> +
> +		x =3D src_x / hsub;
> +		y =3D src_y / vsub;
> +		width =3D src_w / hsub;
> +		height =3D src_h / vsub;
> +
> +		/*
> +		 * First pixel of the src viewport from the
> +		 * start of the normal gtt mapping.
> +		 */
> +		x +=3D intel_fb->normal[i].x;
> +		y +=3D intel_fb->normal[i].y;
> +
> +		offset =3D intel_compute_aligned_offset(dev_priv, &x, &y,
> +						      fb, i, fb->pitches[i],
> +						      DRM_MODE_ROTATE_0, tile_size);
> +		offset /=3D tile_size;
> +
> +		drm_WARN_ON(&dev_priv->drm, i >=3D ARRAY_SIZE(info->plane));
> +		info->plane[i].offset =3D offset;
> +		info->plane[i].stride =3D DIV_ROUND_UP(fb->pitches[i],
> +						     tile_width * cpp);
> +		info->plane[i].width =3D DIV_ROUND_UP(x + width, tile_width);
> +		info->plane[i].height =3D DIV_ROUND_UP(y + height, tile_height);
> +
> +		if (drm_rotation_90_or_270(rotation)) {
> +			struct drm_rect r;
> +
> +			/* rotate the x/y offsets to match the GTT view */
> +			drm_rect_init(&r, x, y, width, height);
> +			drm_rect_rotate(&r,
> +					info->plane[i].width * tile_width,
> +					info->plane[i].height * tile_height,
> +					DRM_MODE_ROTATE_270);
> +			x =3D r.x1;
> +			y =3D r.y1;
> +
> +			pitch_tiles =3D info->plane[i].height;
> +			plane_state->color_plane[i].stride =3D pitch_tiles * tile_height;
> +
> +			/* rotate the tile dimensions to match the GTT view */
> +			swap(tile_width, tile_height);
> +		} else {
> +			pitch_tiles =3D info->plane[i].width;
> +			plane_state->color_plane[i].stride =3D pitch_tiles * tile_width * cpp;
> +		}
> +
> +		/*
> +		 * We only keep the x/y offsets, so push all of the
> +		 * gtt offset into the x/y offsets.
> +		 */
> +		intel_adjust_tile_offset(&x, &y,
> +					 tile_width, tile_height,
> +					 tile_size, pitch_tiles,
> +					 gtt_offset * tile_size, 0);
> +
> +		gtt_offset +=3D info->plane[i].width * info->plane[i].height;
> +
> +		plane_state->color_plane[i].offset =3D 0;
> +		plane_state->color_plane[i].x =3D x;
> +		plane_state->color_plane[i].y =3D y;
> +	}
> +}
> +
> +void intel_fill_fb_ggtt_view(struct i915_ggtt_view *view,
> +			     const struct drm_framebuffer *fb,
> +			     unsigned int rotation)
> +{
> +	memset(view, 0, sizeof(*view));
> +
> +	view->type =3D I915_GGTT_VIEW_NORMAL;
> +	if (drm_rotation_90_or_270(rotation)) {
> +		view->type =3D I915_GGTT_VIEW_ROTATED;
> +		view->rotated =3D to_intel_framebuffer(fb)->rot_info;
> +	}
> +}
> +
>  int intel_plane_check_stride(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> @@ -96,3 +855,51 @@ int intel_plane_check_stride(const struct intel_plane=
_state *plane_state)
>  =

>  	return 0;
>  }
> +
> +int intel_plane_compute_gtt(struct intel_plane_state *plane_state)
> +{
> +	const struct intel_framebuffer *fb =3D
> +		to_intel_framebuffer(plane_state->hw.fb);
> +	unsigned int rotation =3D plane_state->hw.rotation;
> +	int i, num_planes;
> +
> +	if (!fb)
> +		return 0;
> +
> +	num_planes =3D fb->base.format->num_planes;
> +
> +	if (intel_plane_needs_remap(plane_state)) {
> +		intel_plane_remap_gtt(plane_state);
> +
> +		/*
> +		 * Sometimes even remapping can't overcome
> +		 * the stride limitations :( Can happen with
> +		 * big plane sizes and suitably misaligned
> +		 * offsets.
> +		 */
> +		return intel_plane_check_stride(plane_state);
> +	}
> +
> +	intel_fill_fb_ggtt_view(&plane_state->view, &fb->base, rotation);
> +
> +	for (i =3D 0; i < num_planes; i++) {
> +		plane_state->color_plane[i].stride =3D intel_fb_pitch(&fb->base, i, ro=
tation);
> +		plane_state->color_plane[i].offset =3D 0;
> +
> +		if (drm_rotation_90_or_270(rotation)) {
> +			plane_state->color_plane[i].x =3D fb->rotated[i].x;
> +			plane_state->color_plane[i].y =3D fb->rotated[i].y;
> +		} else {
> +			plane_state->color_plane[i].x =3D fb->normal[i].x;
> +			plane_state->color_plane[i].y =3D fb->normal[i].y;
> +		}
> +	}
> +
> +	/* Rotate src coordinates to match rotated GTT view */
> +	if (drm_rotation_90_or_270(rotation))
> +		drm_rect_rotate(&plane_state->uapi.src,
> +				fb->base.width << 16, fb->base.height << 16,
> +				DRM_MODE_ROTATE_270);
> +
> +	return intel_plane_check_stride(plane_state);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 8c15f4c9561b..59f8715e0bda 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -10,11 +10,17 @@
>  =

>  struct drm_framebuffer;
>  =

> +struct drm_i915_private;
> +
> +struct i915_ggtt_view;
> +
>  struct intel_plane_state;
>  =

>  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
> +bool is_aux_plane(const struct drm_framebuffer *fb, int plane);
> +bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_=
plane);
>  =

>  bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane=
);
>  =

> @@ -24,4 +30,29 @@ int skl_main_to_aux_plane(const struct drm_framebuffer=
 *fb, int main_plane);
>  =

>  int intel_plane_check_stride(const struct intel_plane_state *plane_state=
);
>  =

> +unsigned int intel_tile_size(const struct drm_i915_private *dev_priv);
> +unsigned int intel_tile_height(const struct drm_framebuffer *fb, int col=
or_plane);
> +unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int c=
olor_plane);
> +
> +unsigned int intel_cursor_alignment(const struct drm_i915_private *dev_p=
riv);
> +
> +void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
> +				    const struct drm_framebuffer *fb,
> +				    int color_plane);
> +
> +u32 intel_plane_adjust_aligned_offset(int *x, int *y,
> +				      const struct intel_plane_state *state,
> +				      int color_plane,
> +				      u32 old_offset, u32 new_offset);
> +u32 intel_plane_compute_aligned_offset(int *x, int *y,
> +				       const struct intel_plane_state *state,
> +				       int color_plane);
> +
> +int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane, un=
signed int rotation);
> +
> +int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_fra=
mebuffer *fb);
> +void intel_fill_fb_ggtt_view(struct i915_ggtt_view *view, const struct d=
rm_framebuffer *fb,
> +			     unsigned int rotation);
> +int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
> +
>  #endif /* __INTEL_FB_H__ */
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
