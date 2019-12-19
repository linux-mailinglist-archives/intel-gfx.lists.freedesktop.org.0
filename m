Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D903A12645D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 15:14:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5332B6EB7F;
	Thu, 19 Dec 2019 14:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB806EB7F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 14:14:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 06:14:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="210470665"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
 by orsmga008.jf.intel.com with ESMTP; 19 Dec 2019 06:14:53 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 irsmsx105.ger.corp.intel.com ([169.254.7.165]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 14:14:49 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 10/15] drm/i915: Make sure CCS YUV
 semiplanar format checks work
Thread-Index: AQHVtb3kHpUfrYYKT0uS7Zrw8JFnv6fBgdqA
Date: Thu, 19 Dec 2019 14:14:48 +0000
Message-ID: <696880a60099bf372170f70052fa102efcd1fcda.camel@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-11-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-11-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <6DAE4075439D974D9BAC7DCA63F804EB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/15] drm/i915: Make sure CCS YUV
 semiplanar format checks work
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
Cc: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2019-12-18 at 18:11 +0200, Imre Deak wrote:
> For CCS formats, the current DRM core check for YUV semiplanar
> formats
> doesn't work; use an i915 specific function for that.
> =

> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

There is still one call for drm_format_info_is_yuv_semiplanar() in
intel_pm.c. For consistency reasons, maybe we could update that one too
to use i915 specific function? Anyway,

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 25 ++++++++++++++---
> --
>  drivers/gpu/drm/i915/display/intel_display.h  |  4 +++
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  8 +++---
>  drivers/gpu/drm/i915/intel_pm.c               |  7 +++---
>  5 files changed, 32 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 9429b8e17270..3e97af682b1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -250,7 +250,7 @@ int intel_plane_atomic_check_with_state(const
> struct intel_crtc_state *old_crtc_
>  		new_crtc_state->active_planes |=3D BIT(plane->id);
>  =

>  	if (new_plane_state->uapi.visible &&
> -	    drm_format_info_is_yuv_semiplanar(fb->format))
> +	    intel_format_info_is_yuv_semiplanar(fb->format, fb-
> >modifier))
>  		new_crtc_state->nv12_planes |=3D BIT(plane->id);
>  =

>  	if (new_plane_state->uapi.visible &&
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e350f1d40b88..8b36c33bb63e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1985,6 +1985,14 @@ intel_main_to_aux_plane(const struct
> drm_framebuffer *fb, int main_plane)
>  	return 1;
>  }
>  =

> +bool
> +intel_format_info_is_yuv_semiplanar(const struct drm_format_info
> *info,
> +				    uint64_t modifier)
> +{
> +	return info->is_yuv &&
> +	       info->num_planes =3D=3D (is_ccs_modifier(modifier) ? 4 : 2);
> +}
> +
>  static unsigned int
>  intel_tile_width_bytes(const struct drm_framebuffer *fb, int
> color_plane)
>  {
> @@ -3813,7 +3821,8 @@ int skl_check_plane_surface(struct
> intel_plane_state *plane_state)
>  	 * Handle the AUX surface first since
>  	 * the main surface setup depends on it.
>  	 */
> -	if (drm_format_info_is_yuv_semiplanar(fb->format)) {
> +	if (intel_format_info_is_yuv_semiplanar(fb->format,
> +					        fb->modifier)) {
>  		ret =3D skl_check_nv12_aux_surface(plane_state);
>  		if (ret)
>  			return ret;
> @@ -5742,7 +5751,8 @@ static int
>  skl_update_scaler(struct intel_crtc_state *crtc_state, bool
> force_detach,
>  		  unsigned int scaler_user, int *scaler_id,
>  		  int src_w, int src_h, int dst_w, int dst_h,
> -		  const struct drm_format_info *format, bool
> need_scaler)
> +		  const struct drm_format_info *format,
> +		  uint64_t modifier, bool need_scaler)
>  {
>  	struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
> @@ -5796,7 +5806,7 @@ skl_update_scaler(struct intel_crtc_state
> *crtc_state, bool force_detach,
>  		return 0;
>  	}
>  =

> -	if (format && drm_format_info_is_yuv_semiplanar(format) &&
> +	if (format && intel_format_info_is_yuv_semiplanar(format,
> modifier) &&
>  	    (src_h < SKL_MIN_YUV_420_SRC_H || src_w <
> SKL_MIN_YUV_420_SRC_W)) {
>  		DRM_DEBUG_KMS("Planar YUV: src dimensions not met\n");
>  		return -EINVAL;
> @@ -5848,7 +5858,8 @@ int skl_update_scaler_crtc(struct
> intel_crtc_state *state)
>  				 &state->scaler_state.scaler_id,
>  				 state->pipe_src_w, state->pipe_src_h,
>  				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_vdisplay, NULL,
> need_scaler);
> +				 adjusted_mode->crtc_vdisplay, NULL, 0,
> +				 need_scaler);
>  }
>  =

>  /**
> @@ -5873,7 +5884,7 @@ static int skl_update_scaler_plane(struct
> intel_crtc_state *crtc_state,
>  =

>  	/* Pre-gen11 and SDR planes always need a scaler for planar
> formats. */
>  	if (!icl_is_hdr_plane(dev_priv, intel_plane->id) &&
> -	    fb && drm_format_info_is_yuv_semiplanar(fb->format))
> +	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb-
> >modifier))
>  		need_scaler =3D true;
>  =

>  	ret =3D skl_update_scaler(crtc_state, force_detach,
> @@ -5883,7 +5894,9 @@ static int skl_update_scaler_plane(struct
> intel_crtc_state *crtc_state,
>  				drm_rect_height(&plane_state->uapi.src) =

> >> 16,
>  				drm_rect_width(&plane_state->uapi.dst),
>  				drm_rect_height(&plane_state-
> >uapi.dst),
> -				fb ? fb->format : NULL, need_scaler);
> +				fb ? fb->format : NULL,
> +				fb ? fb->modifier : 0,
> +				need_scaler);
>  =

>  	if (ret || plane_state->scaler_id < 0)
>  		return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index ff496cfbd4ab..0fef9263cddc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -601,6 +601,10 @@ intel_display_capture_error_state(struct
> drm_i915_private *dev_priv);
>  void intel_display_print_error_state(struct drm_i915_error_state_buf
> *e,
>  				     struct intel_display_error_state
> *error);
>  =

> +bool
> +intel_format_info_is_yuv_semiplanar(const struct drm_format_info
> *info,
> +				    uint64_t modifier);
> +
>  /* modesetting */
>  void intel_modeset_init_hw(struct drm_i915_private *i915);
>  int intel_modeset_init(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> b/drivers/gpu/drm/i915/display/intel_sprite.c
> index 67a90059900f..b7f3a1b3358f 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -417,7 +417,7 @@ skl_program_scaler(struct intel_plane *plane,
>  				      0, INT_MAX);
>  =

>  	/* TODO: handle sub-pixel coordinates */
> -	if (drm_format_info_is_yuv_semiplanar(fb->format) &&
> +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb-
> >modifier) &&
>  	    !icl_is_hdr_plane(dev_priv, plane->id)) {
>  		y_hphase =3D skl_scaler_calc_phase(1, hscale, false);
>  		y_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> @@ -2151,7 +2151,7 @@ static int skl_plane_check_nv12_rotation(const
> struct intel_plane_state *plane_s
>  	int src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
>  =

>  	/* Display WA #1106 */
> -	if (drm_format_info_is_yuv_semiplanar(fb->format) && src_w & 3
> &&
> +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb-
> >modifier) && src_w & 3 &&
>  	    (rotation =3D=3D DRM_MODE_ROTATE_270 ||
>  	     rotation =3D=3D (DRM_MODE_REFLECT_X | DRM_MODE_ROTATE_90))) {
>  		DRM_DEBUG_KMS("src width must be multiple of 4 for
> rotated planar YUV\n");
> @@ -2171,7 +2171,7 @@ static int skl_plane_max_scale(struct
> drm_i915_private *dev_priv,
>  	 * FIXME need to properly check this later.
>  	 */
>  	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv) ||
> -	    !drm_format_info_is_yuv_semiplanar(fb->format))
> +	    !intel_format_info_is_yuv_semiplanar(fb->format, fb-
> >modifier))
>  		return 0x30000 - 1;
>  	else
>  		return 0x20000 - 1;
> @@ -2233,7 +2233,7 @@ static int skl_plane_check(struct
> intel_crtc_state *crtc_state,
>  		plane_state->color_ctl =3D
> glk_plane_color_ctl(crtc_state,
>  							     plane_stat
> e);
>  =

> -	if (drm_format_info_is_yuv_semiplanar(fb->format) &&
> +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb-
> >modifier) &&
>  	    icl_is_hdr_plane(dev_priv, plane->id))
>  		/* Enable and use MPEG-2 chroma siting */
>  		plane_state->cus_ctl =3D PLANE_CUS_ENABLE |
> diff --git a/drivers/gpu/drm/i915/intel_pm.c
> b/drivers/gpu/drm/i915/intel_pm.c
> index 7cdca06be3bd..31ec82337e4f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4135,7 +4135,7 @@ skl_plane_relative_data_rate(const struct
> intel_crtc_state *crtc_state,
>  		return 0;
>  =

>  	if (color_plane =3D=3D 1 &&
> -	    !drm_format_info_is_yuv_semiplanar(fb->format))
> +	    !intel_format_info_is_yuv_semiplanar(fb->format, fb-
> >modifier))
>  		return 0;
>  =

>  	/*
> @@ -4559,7 +4559,8 @@ skl_compute_wm_params(const struct
> intel_crtc_state *crtc_state,
>  	u32 interm_pbpl;
>  =

>  	/* only planar format has two planes */
> -	if (color_plane =3D=3D 1 &&
> !drm_format_info_is_yuv_semiplanar(format)) {
> +	if (color_plane =3D=3D 1 &&
> +	    !intel_format_info_is_yuv_semiplanar(format, modifier)) {
>  		DRM_DEBUG_KMS("Non planar format have single plane\n");
>  		return -EINVAL;
>  	}
> @@ -4571,7 +4572,7 @@ skl_compute_wm_params(const struct
> intel_crtc_state *crtc_state,
>  	wp->x_tiled =3D modifier =3D=3D I915_FORMAT_MOD_X_TILED;
>  	wp->rc_surface =3D modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
>  			 modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
> -	wp->is_planar =3D drm_format_info_is_yuv_semiplanar(format);
> +	wp->is_planar =3D intel_format_info_is_yuv_semiplanar(format,
> modifier);
>  =

>  	wp->width =3D width;
>  	if (color_plane =3D=3D 1 && wp->is_planar)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
