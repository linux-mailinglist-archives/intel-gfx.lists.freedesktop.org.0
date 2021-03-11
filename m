Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 412D1337937
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:24:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A93A76EE5A;
	Thu, 11 Mar 2021 16:23:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E6A6EE5A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:23:58 +0000 (UTC)
IronPort-SDR: 2t4PQfgs+zKLAM7fdLdtfKYggq+IteOu3oR0xwbsTPhwQFZgYu/6/E1meC/s5AmQ+XoD+YWcc4
 4pa1S8MtCXZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188789703"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="188789703"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:23:57 -0800
IronPort-SDR: Wt7mGzpw4fq84mlfSCPBw4p5ylwFeEqdRjSW3kctETFHmE1WNaDYlhrHMhiwomQ3JkYyGTs05d
 l9PgyOsfga7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438752545"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 11 Mar 2021 08:23:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:23:54 +0200
Date: Thu, 11 Mar 2021 18:23:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpEGlTSI4CGLaWv@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-14-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-14-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 13/23] drm/i915/intel_fb: s/dev_priv/i915/
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

On Thu, Mar 11, 2021 at 12:17:26AM +0200, Imre Deak wrote:
> Rename dev_priv to i915 in the intel_fb.[ch] files.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 66 ++++++++++++-------------
>  drivers/gpu/drm/i915/display/intel_fb.h |  6 +--
>  2 files changed, 36 insertions(+), 36 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index c06c0875612d..b96849ec32df 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -80,9 +80,9 @@ int skl_main_to_aux_plane(const struct drm_framebuffer =
*fb, int main_plane)
>  		return 0;
>  }
>  =

> -unsigned int intel_tile_size(const struct drm_i915_private *dev_priv)
> +unsigned int intel_tile_size(const struct drm_i915_private *i915)
>  {
> -	return IS_GEN(dev_priv, 2) ? 2048 : 4096;
> +	return IS_GEN(i915, 2) ? 2048 : 4096;
>  }
>  =

>  unsigned int intel_tile_height(const struct drm_framebuffer *fb, int col=
or_plane)
> @@ -115,13 +115,13 @@ unsigned int intel_tile_row_size(const struct drm_f=
ramebuffer *fb, int color_pla
>  	return fb->pitches[color_plane] * tile_height;
>  }
>  =

> -unsigned int intel_cursor_alignment(const struct drm_i915_private *dev_p=
riv)
> +unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
>  {
> -	if (IS_I830(dev_priv))
> +	if (IS_I830(i915))
>  		return 16 * 1024;
> -	else if (IS_I85X(dev_priv))
> +	else if (IS_I85X(i915))
>  		return 256;
> -	else if (IS_I845G(dev_priv) || IS_I865G(dev_priv))
> +	else if (IS_I845G(i915) || IS_I865G(i915))
>  		return 32;
>  	else
>  		return 4 * 1024;
> @@ -216,16 +216,16 @@ static u32 intel_adjust_aligned_offset(int *x, int =
*y,
>  				       unsigned int pitch,
>  				       u32 old_offset, u32 new_offset)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> +	struct drm_i915_private *i915 =3D to_i915(fb->dev);
>  	unsigned int cpp =3D fb->format->cpp[color_plane];
>  =

> -	drm_WARN_ON(&dev_priv->drm, new_offset > old_offset);
> +	drm_WARN_ON(&i915->drm, new_offset > old_offset);
>  =

>  	if (!is_surface_linear(fb, color_plane)) {
>  		unsigned int tile_size, tile_width, tile_height;
>  		unsigned int pitch_tiles;
>  =

> -		tile_size =3D intel_tile_size(dev_priv);
> +		tile_size =3D intel_tile_size(i915);
>  		intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
>  =

>  		if (drm_rotation_90_or_270(rotation)) {
> @@ -277,7 +277,7 @@ u32 intel_plane_adjust_aligned_offset(int *x, int *y,
>   * used. This is why the user has to pass in the pitch since it
>   * is specified in the rotated orientation.
>   */
> -static u32 intel_compute_aligned_offset(struct drm_i915_private *dev_pri=
v,
> +static u32 intel_compute_aligned_offset(struct drm_i915_private *i915,
>  					int *x, int *y,
>  					const struct drm_framebuffer *fb,
>  					int color_plane,
> @@ -292,7 +292,7 @@ static u32 intel_compute_aligned_offset(struct drm_i9=
15_private *dev_priv,
>  		unsigned int tile_size, tile_width, tile_height;
>  		unsigned int tile_rows, tiles, pitch_tiles;
>  =

> -		tile_size =3D intel_tile_size(dev_priv);
> +		tile_size =3D intel_tile_size(i915);
>  		intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
>  =

>  		if (drm_rotation_90_or_270(rotation)) {
> @@ -337,18 +337,18 @@ u32 intel_plane_compute_aligned_offset(int *x, int =
*y,
>  				       int color_plane)
>  {
>  	struct intel_plane *intel_plane =3D to_intel_plane(state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_plane->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(intel_plane->base.dev);
>  	const struct drm_framebuffer *fb =3D state->hw.fb;
>  	unsigned int rotation =3D state->hw.rotation;
>  	int pitch =3D state->color_plane[color_plane].stride;
>  	u32 alignment;
>  =

>  	if (intel_plane->id =3D=3D PLANE_CURSOR)
> -		alignment =3D intel_cursor_alignment(dev_priv);
> +		alignment =3D intel_cursor_alignment(i915);
>  	else
>  		alignment =3D intel_surf_alignment(fb, color_plane);
>  =

> -	return intel_compute_aligned_offset(dev_priv, x, y, fb, color_plane,
> +	return intel_compute_aligned_offset(i915, x, y, fb, color_plane,
>  					    pitch, rotation, alignment);
>  }
>  =

> @@ -357,20 +357,20 @@ static int intel_fb_offset_to_xy(int *x, int *y,
>  				 const struct drm_framebuffer *fb,
>  				 int color_plane)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> +	struct drm_i915_private *i915 =3D to_i915(fb->dev);
>  	unsigned int height;
>  	u32 alignment;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 12 &&
> +	if (INTEL_GEN(i915) >=3D 12 &&
>  	    is_semiplanar_uv_plane(fb, color_plane))
>  		alignment =3D intel_tile_row_size(fb, color_plane);
>  	else if (fb->modifier !=3D DRM_FORMAT_MOD_LINEAR)
> -		alignment =3D intel_tile_size(dev_priv);
> +		alignment =3D intel_tile_size(i915);
>  	else
>  		alignment =3D 0;
>  =

>  	if (alignment !=3D 0 && fb->offsets[color_plane] % alignment) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Misaligned offset 0x%08x for color plane %d\n",
>  			    fb->offsets[color_plane], color_plane);
>  		return -EINVAL;
> @@ -382,7 +382,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
>  	/* Catch potential overflows early */
>  	if (add_overflows_t(u32, mul_u32_u32(height, fb->pitches[color_plane]),
>  			    fb->offsets[color_plane])) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Bad offset 0x%08x or pitch %d for color plane %d\n",
>  			    fb->offsets[color_plane], fb->pitches[color_plane],
>  			    color_plane);
> @@ -447,7 +447,7 @@ static int intel_fb_check_ccs_xy(struct drm_framebuff=
er *fb, int ccs_plane, int
>  static bool intel_plane_can_remap(const struct intel_plane_state *plane_=
state)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	int i;
>  =

> @@ -461,7 +461,7 @@ static bool intel_plane_can_remap(const struct intel_=
plane_state *plane_state)
>  	 * Would also need to deal with the fence POT alignment
>  	 * and gen2 2KiB GTT tile size.
>  	 */
> -	if (INTEL_GEN(dev_priv) < 4)
> +	if (INTEL_GEN(i915) < 4)
>  		return false;
>  =

>  	/*
> @@ -473,7 +473,7 @@ static bool intel_plane_can_remap(const struct intel_=
plane_state *plane_state)
>  =

>  	/* Linear needs a page aligned stride for remapping */
>  	if (fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR) {
> -		unsigned int alignment =3D intel_tile_size(dev_priv) - 1;
> +		unsigned int alignment =3D intel_tile_size(i915) - 1;
>  =

>  		for (i =3D 0; i < fb->format->num_planes; i++) {
>  			if (fb->pitches[i] & alignment)
> @@ -580,14 +580,14 @@ static u32 setup_fb_rotation(int plane, const struc=
t intel_remapped_plane_info *
>  	return plane_info->width * plane_info->height;
>  }
>  =

> -int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_fra=
mebuffer *fb)
> +int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebu=
ffer *fb)
>  {
>  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
>  	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
>  	u32 gtt_offset_rotated =3D 0;
>  	unsigned int max_size =3D 0;
>  	int i, num_planes =3D fb->format->num_planes;
> -	unsigned int tile_size =3D intel_tile_size(dev_priv);
> +	unsigned int tile_size =3D intel_tile_size(i915);
>  =

>  	for (i =3D 0; i < num_planes; i++) {
>  		unsigned int width, height;
> @@ -613,7 +613,7 @@ int intel_fill_fb_info(struct drm_i915_private *dev_p=
riv, struct drm_framebuffer
>  =

>  		ret =3D intel_fb_offset_to_xy(&x, &y, fb, i);
>  		if (ret) {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "bad fb plane %d offset: 0x%x\n",
>  				    i, fb->offsets[i]);
>  			return ret;
> @@ -634,7 +634,7 @@ int intel_fill_fb_info(struct drm_i915_private *dev_p=
riv, struct drm_framebuffer
>  		 */
>  		if (i =3D=3D 0 && i915_gem_object_is_tiled(obj) &&
>  		    (x + width) * cpp > fb->pitches[i]) {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "bad fb plane %d offset: 0x%x\n",
>  				     i, fb->offsets[i]);
>  			return -EINVAL;
> @@ -647,7 +647,7 @@ int intel_fill_fb_info(struct drm_i915_private *dev_p=
riv, struct drm_framebuffer
>  		intel_fb->normal[i].x =3D x;
>  		intel_fb->normal[i].y =3D y;
>  =

> -		offset =3D intel_compute_aligned_offset(dev_priv, &x, &y, fb, i,
> +		offset =3D intel_compute_aligned_offset(i915, &x, &y, fb, i,
>  						      fb->pitches[i],
>  						      DRM_MODE_ROTATE_0,
>  						      tile_size);
> @@ -692,7 +692,7 @@ int intel_fill_fb_info(struct drm_i915_private *dev_p=
riv, struct drm_framebuffer
>  	}
>  =

>  	if (mul_u32_u32(max_size, tile_size) > obj->base.size) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "fb too big for bo (need %llu bytes, have %zu bytes)\n",
>  			    mul_u32_u32(max_size, tile_size), obj->base.size);
>  		return -EINVAL;
> @@ -703,14 +703,14 @@ int intel_fill_fb_info(struct drm_i915_private *dev=
_priv, struct drm_framebuffer
>  =

>  static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *dev_priv =3D
> +	struct drm_i915_private *i915 =3D
>  		to_i915(plane_state->uapi.plane->dev);
>  	struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
>  	struct intel_rotation_info *info =3D &plane_state->view.rotated;
>  	unsigned int rotation =3D plane_state->hw.rotation;
>  	int i, num_planes =3D fb->format->num_planes;
> -	unsigned int tile_size =3D intel_tile_size(dev_priv);
> +	unsigned int tile_size =3D intel_tile_size(i915);
>  	unsigned int src_x, src_y;
>  	unsigned int src_w, src_h;
>  	u32 gtt_offset =3D 0;
> @@ -724,7 +724,7 @@ static void intel_plane_remap_gtt(struct intel_plane_=
state *plane_state)
>  	src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
>  	src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
>  =

> -	drm_WARN_ON(&dev_priv->drm, is_ccs_modifier(fb->modifier));
> +	drm_WARN_ON(&i915->drm, is_ccs_modifier(fb->modifier));
>  =

>  	/* Make src coordinates relative to the viewport */
>  	drm_rect_translate(&plane_state->uapi.src,
> @@ -760,12 +760,12 @@ static void intel_plane_remap_gtt(struct intel_plan=
e_state *plane_state)
>  		x +=3D intel_fb->normal[i].x;
>  		y +=3D intel_fb->normal[i].y;
>  =

> -		offset =3D intel_compute_aligned_offset(dev_priv, &x, &y,
> +		offset =3D intel_compute_aligned_offset(i915, &x, &y,
>  						      fb, i, fb->pitches[i],
>  						      DRM_MODE_ROTATE_0, tile_size);
>  		offset /=3D tile_size;
>  =

> -		drm_WARN_ON(&dev_priv->drm, i >=3D ARRAY_SIZE(info->plane));
> +		drm_WARN_ON(&i915->drm, i >=3D ARRAY_SIZE(info->plane));
>  		info->plane[i].offset =3D offset;
>  		info->plane[i].stride =3D DIV_ROUND_UP(fb->pitches[i],
>  						     tile_width * cpp);
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 042946f452f0..bd1551c694eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -28,11 +28,11 @@ int main_to_ccs_plane(const struct drm_framebuffer *f=
b, int main_plane);
>  int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plan=
e);
>  int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_pla=
ne);
>  =

> -unsigned int intel_tile_size(const struct drm_i915_private *dev_priv);
> +unsigned int intel_tile_size(const struct drm_i915_private *i915);
>  unsigned int intel_tile_height(const struct drm_framebuffer *fb, int col=
or_plane);
>  unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int c=
olor_plane);
>  =

> -unsigned int intel_cursor_alignment(const struct drm_i915_private *dev_p=
riv);
> +unsigned int intel_cursor_alignment(const struct drm_i915_private *i915);
>  =

>  void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
>  				    const struct drm_framebuffer *fb,
> @@ -48,7 +48,7 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
>  =

>  int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane, un=
signed int rotation);
>  =

> -int intel_fill_fb_info(struct drm_i915_private *dev_priv, struct drm_fra=
mebuffer *fb);
> +int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebu=
ffer *fb);
>  void intel_fill_fb_ggtt_view(struct i915_ggtt_view *view, const struct d=
rm_framebuffer *fb,
>  			     unsigned int rotation);
>  int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
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
