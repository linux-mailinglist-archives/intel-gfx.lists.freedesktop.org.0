Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7522F34ACAF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A0E6F404;
	Fri, 26 Mar 2021 16:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F08E6F404
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 16:42:59 +0000 (UTC)
IronPort-SDR: dS83AcCBtsBlA+a/XR9few6CZh0l1j+6Li5Q35cQl8wjnBGDBrvWLUJflNgCopY+guthXOKEMo
 4BGVZRYjyG3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="255174776"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="255174776"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:42:58 -0700
IronPort-SDR: FtHPoi4cb3hPWl6mk+1TxS3agwNOxVd1SZDVsa2wRsE8lxj3F17XxEo1xkudThUC5NttUHeem7
 IDf5pH1iK8YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="409972895"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 26 Mar 2021 09:42:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Mar 2021 18:42:55 +0200
Date: Fri, 26 Mar 2021 18:42:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YF4PD6pUpQ615gaL@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
 <20210325214808.2071517-19-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325214808.2071517-19-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 18/25] drm/i915: Simplify copying the FB
 view state to the plane state
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

On Thu, Mar 25, 2021 at 11:48:01PM +0200, Imre Deak wrote:
> Instead of copying separately the GTT remapped and color plane view info
> from the FB to the plane state, do this by copying the whole
> intel_fb_view struct. For this we make sure the FB view state is fully
> inited (that is also including the view type) already during FB
> creation, so this init is not required during atomic check time. This
> also means the we don't need to reset the unused color plane info during
> atomic check, as these are already reset during FB creation.
> =

> I noticed that initial FBs will only work atm if they are page aligned
> (which BIOS most probably always ensures), but add a comment to sanitize
> this part once. Also we won't disable the plane if
> get_initial_plane_config() failed for some reason (for instance due to
> unsupported rotation), add a TODO: comment for this too.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 11 ++--
>  drivers/gpu/drm/i915/display/intel_fb.c       | 59 ++++++++-----------
>  drivers/gpu/drm/i915/display/intel_fb.h       |  7 +--
>  .../drm/i915/display/skl_universal_plane.c    |  8 +--
>  4 files changed, 34 insertions(+), 51 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 4ee7e72142a5f..48b8e2083e14a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1629,6 +1629,11 @@ intel_find_initial_plane_obj(struct intel_crtc *in=
tel_crtc,
>  	struct drm_framebuffer *fb;
>  	struct i915_vma *vma;
>  =

> +	/*
> +	 * TODO:
> +	 *   Disable planes if get_initial_plane_config() failed.
> +	 *   Make sure things work if the surface base is not page aligned.
> +	 */
>  	if (!plane_config->fb)
>  		return;
>  =

> @@ -1680,10 +1685,8 @@ intel_find_initial_plane_obj(struct intel_crtc *in=
tel_crtc,
>  =

>  valid_fb:
>  	plane_state->rotation =3D plane_config->rotation;
> -	intel_fill_fb_ggtt_view(&intel_state->view.gtt, fb,
> -				plane_state->rotation);
> -	intel_state->view.color_plane[0].pitch =3D
> -		intel_fb_pitch(fb, 0, plane_state->rotation);
> +	intel_fb_fill_view(to_intel_framebuffer(fb), plane_state->rotation,
> +			   &intel_state->view);
>  =

>  	__i915_vma_pin(vma);
>  	intel_state->vma =3D i915_vma_get(vma);
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 31fd8480f707e..16dcfb538b448 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -484,10 +484,8 @@ static bool intel_plane_can_remap(const struct intel=
_plane_state *plane_state)
>  	return true;
>  }
>  =

> -int intel_fb_pitch(const struct drm_framebuffer *drm_fb, int color_plane=
, unsigned int rotation)
> +static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_=
plane, unsigned int rotation)
>  {
> -	struct intel_framebuffer *fb =3D to_intel_framebuffer(drm_fb);
> -
>  	if (drm_rotation_90_or_270(rotation))
>  		return fb->rotated_view.color_plane[color_plane].pitch;
>  	else
> @@ -497,7 +495,7 @@ int intel_fb_pitch(const struct drm_framebuffer *drm_=
fb, int color_plane, unsign
>  static bool intel_plane_needs_remap(const struct intel_plane_state *plan=
e_state)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	const struct intel_framebuffer *fb =3D to_intel_framebuffer(plane_state=
->hw.fb);
>  	unsigned int rotation =3D plane_state->hw.rotation;
>  	u32 stride, max_stride;
>  =

> @@ -516,8 +514,8 @@ static bool intel_plane_needs_remap(const struct inte=
l_plane_state *plane_state)
>  	 * unclear in Bspec, for now no checking.
>  	 */
>  	stride =3D intel_fb_pitch(fb, 0, rotation);
> -	max_stride =3D plane->max_stride(plane, fb->format->format,
> -				       fb->modifier, rotation);
> +	max_stride =3D plane->max_stride(plane, fb->base.format->format,
> +				       fb->base.modifier, rotation);
>  =

>  	return stride > max_stride;
>  }
> @@ -702,6 +700,12 @@ calc_plane_normal_size(const struct intel_framebuffe=
r *fb, int color_plane,
>  	return tiles;
>  }
>  =

> +static void intel_fb_view_init(struct intel_fb_view *view, enum i915_ggt=
t_view_type view_type)
> +{
> +	memset(view, 0, sizeof(*view));
> +	view->gtt.type =3D view_type;
> +}
> +
>  int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebu=
ffer *fb)
>  {
>  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> @@ -711,6 +715,9 @@ int intel_fill_fb_info(struct drm_i915_private *i915,=
 struct drm_framebuffer *fb
>  	int i, num_planes =3D fb->format->num_planes;
>  	unsigned int tile_size =3D intel_tile_size(i915);
>  =

> +	intel_fb_view_init(&intel_fb->normal_view, I915_GGTT_VIEW_NORMAL);
> +	intel_fb_view_init(&intel_fb->rotated_view, I915_GGTT_VIEW_ROTATED);
> +
>  	for (i =3D 0; i < num_planes; i++) {
>  		struct fb_plane_view_dims view_dims;
>  		unsigned int width, height;
> @@ -796,9 +803,9 @@ static void intel_plane_remap_gtt(struct intel_plane_=
state *plane_state)
>  	unsigned int src_w, src_h;
>  	u32 gtt_offset =3D 0;
>  =

> -	memset(&plane_state->view.gtt, 0, sizeof(plane_state->view.gtt));
> -	plane_state->view.gtt.type =3D drm_rotation_90_or_270(rotation) ?
> -		I915_GGTT_VIEW_ROTATED : I915_GGTT_VIEW_REMAPPED;
> +	intel_fb_view_init(&plane_state->view,
> +			   drm_rotation_90_or_270(rotation) ? I915_GGTT_VIEW_ROTATED :
> +							      I915_GGTT_VIEW_REMAPPED);
>  =

>  	src_x =3D plane_state->uapi.src.x1 >> 16;
>  	src_y =3D plane_state->uapi.src.y1 >> 16;
> @@ -889,17 +896,13 @@ static void intel_plane_remap_gtt(struct intel_plan=
e_state *plane_state)
>  	}
>  }
>  =

> -void intel_fill_fb_ggtt_view(struct i915_ggtt_view *view,
> -			     const struct drm_framebuffer *fb,
> -			     unsigned int rotation)
> +void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int=
 rotation,
> +			struct intel_fb_view *view)
>  {
> -	memset(view, 0, sizeof(*view));
> -
> -	view->type =3D I915_GGTT_VIEW_NORMAL;
> -	if (drm_rotation_90_or_270(rotation)) {
> -		view->type =3D I915_GGTT_VIEW_ROTATED;
> -		view->rotated =3D to_intel_framebuffer(fb)->rotated_view.gtt.rotated;
> -	}
> +	if (drm_rotation_90_or_270(rotation))
> +		*view =3D fb->rotated_view;
> +	else
> +		*view =3D fb->normal_view;
>  }
>  =

>  static int intel_plane_check_stride(const struct intel_plane_state *plan=
e_state)
> @@ -939,13 +942,10 @@ int intel_plane_compute_gtt(struct intel_plane_stat=
e *plane_state)
>  	const struct intel_framebuffer *fb =3D
>  		to_intel_framebuffer(plane_state->hw.fb);
>  	unsigned int rotation =3D plane_state->hw.rotation;
> -	int i, num_planes;
>  =

>  	if (!fb)
>  		return 0;
>  =

> -	num_planes =3D fb->base.format->num_planes;
> -
>  	if (intel_plane_needs_remap(plane_state)) {
>  		intel_plane_remap_gtt(plane_state);
>  =

> @@ -958,20 +958,7 @@ int intel_plane_compute_gtt(struct intel_plane_state=
 *plane_state)
>  		return intel_plane_check_stride(plane_state);
>  	}
>  =

> -	intel_fill_fb_ggtt_view(&plane_state->view.gtt, &fb->base, rotation);
> -
> -	for (i =3D 0; i < num_planes; i++) {
> -		plane_state->view.color_plane[i].pitch =3D intel_fb_pitch(&fb->base, i=
, rotation);
> -		plane_state->view.color_plane[i].offset =3D 0;
> -
> -		if (drm_rotation_90_or_270(rotation)) {
> -			plane_state->view.color_plane[i].x =3D fb->rotated_view.color_plane[i=
].x;
> -			plane_state->view.color_plane[i].y =3D fb->rotated_view.color_plane[i=
].y;
> -		} else {
> -			plane_state->view.color_plane[i].x =3D fb->normal_view.color_plane[i]=
.x;
> -			plane_state->view.color_plane[i].y =3D fb->normal_view.color_plane[i]=
.y;
> -		}
> -	}
> +	intel_fb_fill_view(fb, rotation, &plane_state->view);
>  =

>  	/* Rotate src coordinates to match rotated GTT view */
>  	if (drm_rotation_90_or_270(rotation))
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 8ffc883a83c34..0ea9da360450d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -15,6 +15,7 @@ struct drm_i915_private;
>  struct i915_ggtt_view;
>  =

>  struct intel_fb_view;
> +struct intel_framebuffer;
>  struct intel_plane_state;
>  =

>  enum i915_ggtt_view_type;
> @@ -49,11 +50,9 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
>  				       const struct intel_plane_state *state,
>  				       int color_plane);
>  =

> -int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane, un=
signed int rotation);
> -
>  int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebu=
ffer *fb);
> -void intel_fill_fb_ggtt_view(struct i915_ggtt_view *view, const struct d=
rm_framebuffer *fb,
> -			     unsigned int rotation);
> +void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int=
 rotation,
> +			struct intel_fb_view *view);
>  int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
>  =

>  #endif /* __INTEL_FB_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 00a11fb516e52..00a53512ef6cd 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1538,7 +1538,7 @@ static int skl_check_ccs_aux_surface(struct intel_p=
lane_state *plane_state)
>  static int skl_check_plane_surface(struct intel_plane_state *plane_state)
>  {
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int ret, i;
> +	int ret;
>  =

>  	ret =3D intel_plane_compute_gtt(plane_state);
>  	if (ret)
> @@ -1564,12 +1564,6 @@ static int skl_check_plane_surface(struct intel_pl=
ane_state *plane_state)
>  			return ret;
>  	}
>  =

> -	for (i =3D fb->format->num_planes; i < ARRAY_SIZE(plane_state->view.col=
or_plane); i++) {
> -		plane_state->view.color_plane[i].offset =3D 0;
> -		plane_state->view.color_plane[i].x =3D 0;
> -		plane_state->view.color_plane[i].y =3D 0;
> -	}
> -
>  	ret =3D skl_check_main_surface(plane_state);
>  	if (ret)
>  		return ret;
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
