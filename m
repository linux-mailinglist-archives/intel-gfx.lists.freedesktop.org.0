Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C016419C6EA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 18:17:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104386E116;
	Thu,  2 Apr 2020 16:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79606E116
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 16:17:56 +0000 (UTC)
IronPort-SDR: a2dIo4deJurrFiHBatvxSumk/GL9QOUmoG0ycr7XxzDP0MKPQx0XDOl7ryHagJfkNMQDW4+Gfm
 dKH4Q6uvoxGg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 09:17:55 -0700
IronPort-SDR: VPtBwuV9PYcppB5CZBWnLAIoErLoUEIqd58zL41z/RUuE7bNsyMjuYN8PndBwSLVXFztggslUd
 ILVJvBh3nKww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="268073585"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 02 Apr 2020 09:17:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Apr 2020 19:17:52 +0300
Date: Thu, 2 Apr 2020 19:17:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200402161752.GY13686@intel.com>
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
 <20200326181005.11775-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326181005.11775-3-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v20 02/10] drm/i915: Eliminate magic numbers
 "0" and "1" from color plane
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 26, 2020 at 08:09:57PM +0200, Stanislav Lisovskiy wrote:
> According to many computer science sources - magic values
> in code _are_ _bad_. For many reasons: the reason is that "0"
> or "1" or whatever magic values confuses and doesn't give any
> info why this parameter is this value and what it's meaning
> is.
> I renamed "0" to COLOR_PLANE_Y and "1" to COLOR_PLANE_UV,
> because we in fact already use this naming in many other places
> and function names, when dealing with color planes.

And now it's incosistent with all the rest of the codebase :(

> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  5 +++
>  drivers/gpu/drm/i915/intel_pm.c               | 40 +++++++++----------
>  2 files changed, 25 insertions(+), 20 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 176ab5f1e867..523e0444b373 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -682,6 +682,11 @@ struct skl_plane_wm {
>  	bool is_planar;
>  };
>  =

> +enum color_plane {
> +	COLOR_PLANE_Y,
> +	COLOR_PLANE_UV
> +};
> +
>  struct skl_pipe_wm {
>  	struct skl_plane_wm planes[I915_MAX_PLANES];
>  };
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index b632b6bb9c3e..9e9a4612d842 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4013,7 +4013,7 @@ static int skl_compute_wm_params(const struct intel=
_crtc_state *crtc_state,
>  				 int width, const struct drm_format_info *format,
>  				 u64 modifier, unsigned int rotation,
>  				 u32 plane_pixel_rate, struct skl_wm_params *wp,
> -				 int color_plane);
> +				 enum color_plane);
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
>  				 int level,
>  				 unsigned int latency,
> @@ -4035,7 +4035,7 @@ skl_cursor_allocation(const struct intel_crtc_state=
 *crtc_state,
>  				    drm_format_info(DRM_FORMAT_ARGB8888),
>  				    DRM_FORMAT_MOD_LINEAR,
>  				    DRM_MODE_ROTATE_0,
> -				    crtc_state->pixel_rate, &wp, 0);
> +				    crtc_state->pixel_rate, &wp, COLOR_PLANE_Y);
>  	drm_WARN_ON(&dev_priv->drm, ret);
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> @@ -4431,7 +4431,7 @@ static u8 skl_compute_dbuf_slices(const struct inte=
l_crtc_state *crtc_state,
>  static u64
>  skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  			     const struct intel_plane_state *plane_state,
> -			     int color_plane)
> +			     enum color_plane color_plane)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> @@ -4446,7 +4446,7 @@ skl_plane_relative_data_rate(const struct intel_crt=
c_state *crtc_state,
>  	if (plane->id =3D=3D PLANE_CURSOR)
>  		return 0;
>  =

> -	if (color_plane =3D=3D 1 &&
> +	if (color_plane =3D=3D COLOR_PLANE_UV &&
>  	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
>  		return 0;
>  =

> @@ -4459,7 +4459,7 @@ skl_plane_relative_data_rate(const struct intel_crt=
c_state *crtc_state,
>  	height =3D drm_rect_height(&plane_state->uapi.src) >> 16;
>  =

>  	/* UV plane does 1/2 pixel sub-sampling */
> -	if (color_plane =3D=3D 1) {
> +	if (color_plane =3D=3D COLOR_PLANE_UV) {
>  		width /=3D 2;
>  		height /=3D 2;
>  	}
> @@ -4489,12 +4489,12 @@ skl_get_total_relative_data_rate(struct intel_crt=
c_state *crtc_state,
>  		u64 rate;
>  =

>  		/* packed/y */
> -		rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, 0);
> +		rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_P=
LANE_Y);
>  		plane_data_rate[plane_id] =3D rate;
>  		total_data_rate +=3D rate;
>  =

>  		/* uv-plane */
> -		rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, 1);
> +		rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_P=
LANE_UV);
>  		uv_plane_data_rate[plane_id] =3D rate;
>  		total_data_rate +=3D rate;
>  	}
> @@ -4516,7 +4516,7 @@ icl_get_total_relative_data_rate(struct intel_crtc_=
state *crtc_state,
>  		u64 rate;
>  =

>  		if (!plane_state->planar_linked_plane) {
> -			rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, 0);
> +			rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_=
PLANE_Y);
>  			plane_data_rate[plane_id] =3D rate;
>  			total_data_rate +=3D rate;
>  		} else {
> @@ -4533,12 +4533,12 @@ icl_get_total_relative_data_rate(struct intel_crt=
c_state *crtc_state,
>  				continue;
>  =

>  			/* Y plane rate is calculated on the slave */
> -			rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, 0);
> +			rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_=
PLANE_Y);
>  			y_plane_id =3D plane_state->planar_linked_plane->id;
>  			plane_data_rate[y_plane_id] =3D rate;
>  			total_data_rate +=3D rate;
>  =

> -			rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, 1);
> +			rate =3D skl_plane_relative_data_rate(crtc_state, plane_state, COLOR_=
PLANE_UV);
>  			plane_data_rate[plane_id] =3D rate;
>  			total_data_rate +=3D rate;
>  		}
> @@ -4854,14 +4854,14 @@ skl_compute_wm_params(const struct intel_crtc_sta=
te *crtc_state,
>  		      int width, const struct drm_format_info *format,
>  		      u64 modifier, unsigned int rotation,
>  		      u32 plane_pixel_rate, struct skl_wm_params *wp,
> -		      int color_plane)
> +		      enum color_plane color_plane)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 interm_pbpl;
>  =

>  	/* only planar format has two planes */
> -	if (color_plane =3D=3D 1 &&
> +	if (color_plane =3D=3D COLOR_PLANE_UV &&
>  	    !intel_format_info_is_yuv_semiplanar(format, modifier)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Non planar format have single plane\n");
> @@ -4878,7 +4878,7 @@ skl_compute_wm_params(const struct intel_crtc_state=
 *crtc_state,
>  	wp->is_planar =3D intel_format_info_is_yuv_semiplanar(format, modifier);
>  =

>  	wp->width =3D width;
> -	if (color_plane =3D=3D 1 && wp->is_planar)
> +	if (color_plane =3D=3D COLOR_PLANE_UV && wp->is_planar)
>  		wp->width /=3D 2;
>  =

>  	wp->cpp =3D format->cpp[color_plane];
> @@ -4945,7 +4945,7 @@ skl_compute_wm_params(const struct intel_crtc_state=
 *crtc_state,
>  static int
>  skl_compute_plane_wm_params(const struct intel_crtc_state *crtc_state,
>  			    const struct intel_plane_state *plane_state,
> -			    struct skl_wm_params *wp, int color_plane)
> +			    struct skl_wm_params *wp, enum color_plane color_plane)
>  {
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	int width;
> @@ -5187,7 +5187,7 @@ static void skl_compute_transition_wm(const struct =
intel_crtc_state *crtc_state,
>  =

>  static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
>  				     const struct intel_plane_state *plane_state,
> -				     enum plane_id plane_id, int color_plane)
> +				     enum plane_id plane_id, enum color_plane color_plane)
>  {
>  	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.optimal.planes[plane_id=
];
>  	struct skl_wm_params wm_params;
> @@ -5216,7 +5216,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_=
state *crtc_state,
>  =

>  	/* uv plane watermarks must also be validated for NV12/Planar */
>  	ret =3D skl_compute_plane_wm_params(crtc_state, plane_state,
> -					  &wm_params, 1);
> +					  &wm_params, COLOR_PLANE_UV);
>  	if (ret)
>  		return ret;
>  =

> @@ -5237,7 +5237,7 @@ static int skl_build_plane_wm(struct intel_crtc_sta=
te *crtc_state,
>  		return 0;
>  =

>  	ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> -					plane_id, 0);
> +					plane_id, COLOR_PLANE_Y);
>  	if (ret)
>  		return ret;
>  =

> @@ -5270,17 +5270,17 @@ static int icl_build_plane_wm(struct intel_crtc_s=
tate *crtc_state,
>  			fb->format->num_planes =3D=3D 1);
>  =

>  		ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> -						y_plane_id, 0);
> +						y_plane_id, COLOR_PLANE_Y);
>  		if (ret)
>  			return ret;
>  =

>  		ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> -						plane_id, 1);
> +						plane_id, COLOR_PLANE_UV);
>  		if (ret)
>  			return ret;
>  	} else if (intel_wm_plane_visible(crtc_state, plane_state)) {
>  		ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> -						plane_id, 0);
> +						plane_id, COLOR_PLANE_Y);
>  		if (ret)
>  			return ret;
>  	}
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
