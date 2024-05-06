Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3758D8BCFAE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 16:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDEAF10F053;
	Mon,  6 May 2024 14:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5yBVKF9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D53E710E921;
 Mon,  6 May 2024 14:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715004482; x=1746540482;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=+c3GrMAerlraFvtfbB/+sYjCQQFY+K5lyJoBJuVLhH0=;
 b=U5yBVKF9NMhZ1ETk7Pvuxj9im7XXloMRWxxwgBVd6HCDuvg/i/tsXUbj
 pBGvlnGyR2+2ahb3Q1XlLbUnsyvjNLlQnIlSmMeR8kJFbvJee42tcWBn+
 xIhRIwIqkzpzbpvLUsbOY39CPDzqV5kagvrP2WIbtutu9eCWAAHzPxaRJ
 KdIjpDm2oM8k7dIAb7vAAy28eurvuiYzMQKsDTT+vuL8WKqsyC+Y2n0lo
 6ZpxVp67bzkYWfpBo3dKx5dELG/C/Fae1KRptxxTVRAWxvFuHZgt30Z4j
 fHc4ugDHtmlB0Ot94VCaH0NQU4iqZveGL2PN/7/VZsrF80s4Yp8sUM3H4 w==;
X-CSE-ConnectionGUID: tvXJVNneSrmuEZ59e0ljDw==
X-CSE-MsgGUID: Mb2zLaT1RMu7SgFgeRtpQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="28275977"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28275977"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:08:00 -0700
X-CSE-ConnectionGUID: ofxdw4+gSZqyip1wVAiDjQ==
X-CSE-MsgGUID: KyaeDQ0WQRCxMnf2W273Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32764188"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:07:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/9] drm/i915: Polish types in fb calculations
In-Reply-To: <20240506125718.26001-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-6-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 17:07:55 +0300
Message-ID: <87v83rkp8k.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Be a bit more consistent in our use of integer types in
> the fb related calculatiosn. u32 we generally only use
> for ggtt offsets and such, and everything else can be regular
> (unsigned) ints.
>
> There's also an overabundance of consts for local variables
> in skl_check_main_surface() which is not something we generally
> do. So get rid of those while at it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_fb.c       | 27 +++++++++--------
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   |  2 +-
>  .../drm/i915/display/skl_universal_plane.c    | 29 +++++++++----------
>  4 files changed, 29 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 21303fa4f08f..ea4d8ba55ad8 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -266,7 +266,7 @@ int i9xx_check_plane_surface(struct intel_plane_state=
 *plane_state)
>  	 * despite them not using the linear offset anymore.
>  	 */
>  	if (DISPLAY_VER(dev_priv) >=3D 4 && fb->modifier =3D=3D I915_FORMAT_MOD=
_X_TILED) {
> -		u32 alignment =3D intel_surf_alignment(fb, 0);
> +		unsigned int alignment =3D intel_surf_alignment(fb, 0);
>  		int cpp =3D fb->format->cpp[0];
>=20=20
>  		while ((src_x + src_w) * cpp > plane_state->view.color_plane[0].mappin=
g_stride) {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index bf24f48a1e76..b6638726949d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1045,7 +1045,7 @@ static u32 intel_compute_aligned_offset(struct drm_=
i915_private *i915,
>  					int color_plane,
>  					unsigned int pitch,
>  					unsigned int rotation,
> -					u32 alignment)
> +					unsigned int alignment)
>  {
>  	unsigned int cpp =3D fb->format->cpp[color_plane];
>  	u32 offset, offset_aligned;
> @@ -1102,8 +1102,8 @@ u32 intel_plane_compute_aligned_offset(int *x, int =
*y,
>  	struct drm_i915_private *i915 =3D to_i915(intel_plane->base.dev);
>  	const struct drm_framebuffer *fb =3D state->hw.fb;
>  	unsigned int rotation =3D state->hw.rotation;
> -	int pitch =3D state->view.color_plane[color_plane].mapping_stride;
> -	u32 alignment;
> +	unsigned int pitch =3D state->view.color_plane[color_plane].mapping_str=
ide;
> +	unsigned int alignment;
>=20=20
>  	if (intel_plane->id =3D=3D PLANE_CURSOR)
>  		alignment =3D intel_cursor_alignment(i915);
> @@ -1120,8 +1120,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
>  				 int color_plane)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(fb->dev);
> -	unsigned int height;
> -	u32 alignment, unused;
> +	unsigned int height, alignment, unused;
>=20=20
>  	if (DISPLAY_VER(i915) >=3D 12 &&
>  	    !intel_fb_needs_pot_stride_remap(to_intel_framebuffer(fb)) &&
> @@ -1508,8 +1507,8 @@ static u32 calc_plane_remap_info(const struct intel=
_framebuffer *fb, int color_p
>  		check_array_bounds(i915, view->gtt.remapped.plane, color_plane);
>=20=20
>  		if (view->gtt.remapped.plane_alignment) {
> -			unsigned int aligned_offset =3D ALIGN(gtt_offset,
> -							    view->gtt.remapped.plane_alignment);
> +			u32 aligned_offset =3D ALIGN(gtt_offset,
> +						   view->gtt.remapped.plane_alignment);
>=20=20
>  			size +=3D aligned_offset - gtt_offset;
>  			gtt_offset =3D aligned_offset;
> @@ -1795,16 +1794,16 @@ u32 intel_fb_max_stride(struct drm_i915_private *=
dev_priv,
>  		return 128 * 1024;
>  }
>=20=20
> -static u32
> +static unsigned int
>  intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_pl=
ane)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> -	u32 tile_width;
> +	unsigned int tile_width;
>=20=20
>  	if (is_surface_linear(fb, color_plane)) {
> -		u32 max_stride =3D intel_plane_fb_max_stride(dev_priv,
> -							   fb->format->format,
> -							   fb->modifier);
> +		unsigned int max_stride =3D intel_plane_fb_max_stride(dev_priv,
> +								    fb->format->format,
> +								    fb->modifier);
>=20=20
>  		/*
>  		 * To make remapping with linear generally feasible
> @@ -2061,7 +2060,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  	drm_helper_mode_fill_fb_struct(&dev_priv->drm, fb, mode_cmd);
>=20=20
>  	for (i =3D 0; i < fb->format->num_planes; i++) {
> -		u32 stride_alignment;
> +		unsigned int stride_alignment;
>=20=20
>  		if (mode_cmd->handles[i] !=3D mode_cmd->handles[0]) {
>  			drm_dbg_kms(&dev_priv->drm, "bad plane %d handle\n",
> @@ -2078,7 +2077,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  		}
>=20=20
>  		if (intel_fb_is_gen12_ccs_aux_plane(fb, i)) {
> -			int ccs_aux_stride =3D gen12_ccs_aux_stride(intel_fb, i);
> +			unsigned int ccs_aux_stride =3D gen12_ccs_aux_stride(intel_fb, i);
>=20=20
>  			if (fb->pitches[i] !=3D ccs_aux_stride) {
>  				drm_dbg_kms(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index 5b71d9488184..041f09f76628 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -113,9 +113,9 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>  	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
>  	intel_wakeref_t wakeref;
>  	struct i915_gem_ww_ctx ww;
> +	unsigned int alignment;
>  	struct i915_vma *vma;
>  	unsigned int pinctl;
> -	u32 alignment;
>  	int ret;
>=20=20
>  	if (drm_WARN_ON(dev, !i915_gem_object_is_framebuffer(obj)))
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index b8103d6ebc1f..24f90368d344 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1619,7 +1619,7 @@ skl_check_main_ccs_coordinates(struct intel_plane_s=
tate *plane_state,
>  	int aux_x =3D plane_state->view.color_plane[ccs_plane].x;
>  	int aux_y =3D plane_state->view.color_plane[ccs_plane].y;
>  	u32 aux_offset =3D plane_state->view.color_plane[ccs_plane].offset;
> -	u32 alignment =3D intel_surf_alignment(fb, ccs_plane);
> +	unsigned int alignment =3D intel_surf_alignment(fb, ccs_plane);
>  	int hsub;
>  	int vsub;
>=20=20
> @@ -1639,8 +1639,7 @@ skl_check_main_ccs_coordinates(struct intel_plane_s=
tate *plane_state,
>  							       plane_state,
>  							       ccs_plane,
>  							       aux_offset,
> -							       aux_offset -
> -								alignment);
> +							       aux_offset - alignment);
>  		aux_x =3D x * hsub + aux_x % hsub;
>  		aux_y =3D y * vsub + aux_y % vsub;
>  	}
> @@ -1662,10 +1661,10 @@ int skl_calc_main_surface_offset(const struct int=
el_plane_state *plane_state,
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	const int aux_plane =3D skl_main_to_aux_plane(fb, 0);
> -	const u32 aux_offset =3D plane_state->view.color_plane[aux_plane].offse=
t;
> -	const u32 alignment =3D intel_surf_alignment(fb, 0);
> -	const int w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +	int aux_plane =3D skl_main_to_aux_plane(fb, 0);
> +	u32 aux_offset =3D plane_state->view.color_plane[aux_plane].offset;
> +	unsigned int alignment =3D intel_surf_alignment(fb, 0);
> +	int w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
>=20=20
>  	intel_add_fb_offsets(x, y, plane_state, 0);
>  	*offset =3D intel_plane_compute_aligned_offset(x, y, plane_state, 0);
> @@ -1715,13 +1714,13 @@ static int skl_check_main_surface(struct intel_pl=
ane_state *plane_state)
>  	const unsigned int rotation =3D plane_state->hw.rotation;
>  	int x =3D plane_state->uapi.src.x1 >> 16;
>  	int y =3D plane_state->uapi.src.y1 >> 16;
> -	const int w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> -	const int h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> -	const int min_width =3D intel_plane_min_width(plane, fb, 0, rotation);
> -	const int max_width =3D intel_plane_max_width(plane, fb, 0, rotation);
> -	const int max_height =3D intel_plane_max_height(plane, fb, 0, rotation);
> -	const int aux_plane =3D skl_main_to_aux_plane(fb, 0);
> -	const u32 alignment =3D intel_surf_alignment(fb, 0);
> +	int w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +	int h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> +	int min_width =3D intel_plane_min_width(plane, fb, 0, rotation);
> +	int max_width =3D intel_plane_max_width(plane, fb, 0, rotation);
> +	int max_height =3D intel_plane_max_height(plane, fb, 0, rotation);
> +	unsigned int alignment =3D intel_surf_alignment(fb, 0);
> +	int aux_plane =3D skl_main_to_aux_plane(fb, 0);
>  	u32 offset;
>  	int ret;
>=20=20
> @@ -1809,7 +1808,7 @@ static int skl_check_nv12_aux_surface(struct intel_=
plane_state *plane_state)
>=20=20
>  	if (ccs_plane) {
>  		u32 aux_offset =3D plane_state->view.color_plane[ccs_plane].offset;
> -		u32 alignment =3D intel_surf_alignment(fb, uv_plane);
> +		unsigned int alignment =3D intel_surf_alignment(fb, uv_plane);
>=20=20
>  		if (offset > aux_offset)
>  			offset =3D intel_plane_adjust_aligned_offset(&x, &y,

--=20
Jani Nikula, Intel
