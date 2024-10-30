Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 343D29B6239
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD21110E794;
	Wed, 30 Oct 2024 11:49:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ADlSvoNy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FBCC10E794
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288958; x=1761824958;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=LOsvAqfwwhZjPbLncdTu5AE72lDR6/DlAKri1b8+8dA=;
 b=ADlSvoNy0y8cys5Ey9BbM8LY7SkbefmM6aRv8C8GwXm13+VRsmC3IKSu
 1c039FXJP/9M3VDKzXI8imdIiEZ9xTppNdNflyeBgGZcgayDDq/6qgHu3
 MZOZxO/DX7Zh3XFiTiUsNhkG/2vPvFBKDerEa5XgDV9Z2gXXC8Y3QUup2
 5S5wvoXOE/eULImiKSVphYSct+aDFxByZ0ZiKr5D01hRNZpoqiErbKJfQ
 p7naWDgdjapipF2MBn/X9D+UavDcgC5vdBLw4HboRi2yHVfHEpKANjkM1
 xhC3pC59EEjj5Ck0fu20/1z5zLiJMjIvQypy2MbWSc8AWJNanK2ZuZSvN g==;
X-CSE-ConnectionGUID: 1wCJshzbSDGphWXXExo3bA==
X-CSE-MsgGUID: msVLbxtvTkyuAQcpIettcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41350583"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="41350583"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:49:18 -0700
X-CSE-ConnectionGUID: GgHNLdN9TfWL+FTpWAftjw==
X-CSE-MsgGUID: 7YcvCJfzQ2ipfs+PEmiXXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="86227928"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:49:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/9] drm/i915/scaler: Convert the scaler code to
 intel_display
In-Reply-To: <20241029211030.13255-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
 <20241029211030.13255-6-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:49:13 +0200
Message-ID: <87plnhlsjq.fsf@intel.com>
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

On Tue, 29 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> struct intel_display will replace struct drm_i915_private as
> the main thing for display code. Convert the scaler code to
> use it (as much as possible at this stage).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 105 +++++++++++-----------
>  1 file changed, 53 insertions(+), 52 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index 9f11ecf7066d..437fc19972c6 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -105,10 +105,10 @@ skl_update_scaler(struct intel_crtc_state *crtc_sta=
te, bool force_detach,
>  		  const struct drm_format_info *format,
>  		  u64 modifier, bool need_scaler)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  	int pipe_src_w =3D drm_rect_width(&crtc_state->pipe_src);
> @@ -130,9 +130,9 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>  	 * Once NV12 is enabled, handle it here while allocating scaler
>  	 * for NV12.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 9 && crtc_state->hw.enable &&
> +	if (DISPLAY_VER(display) >=3D 9 && crtc_state->hw.enable &&
>  	    need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Pipe/Plane scaling not supported with IF-ID mode\n");
>  		return -EINVAL;
>  	}
> @@ -152,7 +152,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>  			scaler_state->scaler_users &=3D ~(1 << scaler_user);
>  			scaler_state->scalers[*scaler_id].in_use =3D 0;
>=20=20
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(display->drm,
>  				    "scaler_user index %u.%u: "
>  				    "Staged freeing scaler id %d scaler_users =3D 0x%x\n",
>  				    crtc->pipe, scaler_user, *scaler_id,
> @@ -164,7 +164,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>=20=20
>  	if (format && intel_format_info_is_yuv_semiplanar(format, modifier) &&
>  	    (src_h < SKL_MIN_YUV_420_SRC_H || src_w < SKL_MIN_YUV_420_SRC_W)) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Planar YUV: src dimensions not met\n");
>  		return -EINVAL;
>  	}
> @@ -174,17 +174,17 @@ skl_update_scaler(struct intel_crtc_state *crtc_sta=
te, bool force_detach,
>  	min_dst_w =3D SKL_MIN_DST_W;
>  	min_dst_h =3D SKL_MIN_DST_H;
>=20=20
> -	if (DISPLAY_VER(dev_priv) < 11) {
> +	if (DISPLAY_VER(display) < 11) {
>  		max_src_w =3D SKL_MAX_SRC_W;
>  		max_src_h =3D SKL_MAX_SRC_H;
>  		max_dst_w =3D SKL_MAX_DST_W;
>  		max_dst_h =3D SKL_MAX_DST_H;
> -	} else if (DISPLAY_VER(dev_priv) < 12) {
> +	} else if (DISPLAY_VER(display) < 12) {
>  		max_src_w =3D ICL_MAX_SRC_W;
>  		max_src_h =3D ICL_MAX_SRC_H;
>  		max_dst_w =3D ICL_MAX_DST_W;
>  		max_dst_h =3D ICL_MAX_DST_H;
> -	} else if (DISPLAY_VER(dev_priv) < 14) {
> +	} else if (DISPLAY_VER(display) < 14) {
>  		max_src_w =3D TGL_MAX_SRC_W;
>  		max_src_h =3D TGL_MAX_SRC_H;
>  		max_dst_w =3D TGL_MAX_DST_W;
> @@ -201,7 +201,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>  	    dst_w < min_dst_w || dst_h < min_dst_h ||
>  	    src_w > max_src_w || src_h > max_src_h ||
>  	    dst_w > max_dst_w || dst_h > max_dst_h) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
>  			    "size is out of scaler range\n",
>  			    crtc->pipe, scaler_user, src_w, src_h,
> @@ -218,7 +218,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>  	 * now.
>  	 */
>  	if (pipe_src_w > max_dst_w || pipe_src_h > max_dst_h) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "scaler_user index %u.%u: pipe src size %ux%u "
>  			    "is out of scaler range\n",
>  			    crtc->pipe, scaler_user, pipe_src_w, pipe_src_h);
> @@ -227,7 +227,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>=20=20
>  	/* mark this plane as a scaler user in crtc_state */
>  	scaler_state->scaler_users |=3D (1 << scaler_user);
> -	drm_dbg_kms(&dev_priv->drm, "scaler_user index %u.%u: "
> +	drm_dbg_kms(display->drm, "scaler_user index %u.%u: "
>  		    "staged scaling request for %ux%u->%ux%u scaler_users =3D 0x%x\n",
>  		    crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h,
>  		    scaler_state->scaler_users);
> @@ -297,6 +297,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  				     struct intel_plane_state *plane_state,
>  				     int *scaler_id)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	int j;
>  	u32 mode;
> @@ -313,7 +314,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  		}
>  	}
>=20=20
> -	if (drm_WARN(&dev_priv->drm, *scaler_id < 0,
> +	if (drm_WARN(display->drm, *scaler_id < 0,
>  		     "Cannot find scaler for %s:%d\n", name, idx))
>  		return -EINVAL;
>=20=20
> @@ -323,7 +324,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  	    plane_state->hw.fb->format->num_planes > 1) {
>  		struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>=20=20
> -		if (DISPLAY_VER(dev_priv) =3D=3D 9) {
> +		if (DISPLAY_VER(display) =3D=3D 9) {
>  			mode =3D SKL_PS_SCALER_MODE_NV12;
>  		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
>  			/*
> @@ -341,7 +342,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  			if (linked)
>  				mode |=3D PS_BINDING_Y_PLANE(linked->id);
>  		}
> -	} else if (DISPLAY_VER(dev_priv) >=3D 10) {
> +	} else if (DISPLAY_VER(display) >=3D 10) {
>  		mode =3D PS_SCALER_MODE_NORMAL;
>  	} else if (num_scalers_need =3D=3D 1 && crtc->num_scalers > 1) {
>  		/*
> @@ -375,7 +376,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  		 * unnecessarily.
>  		 */
>=20=20
> -		if (DISPLAY_VER(dev_priv) >=3D 14) {
> +		if (DISPLAY_VER(display) >=3D 14) {
>  			/*
>  			 * On versions 14 and up, only the first
>  			 * scaler supports a vertical scaling factor
> @@ -388,7 +389,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  			else
>  				max_vscale =3D 0x10000;
>=20=20
> -		} else if (DISPLAY_VER(dev_priv) >=3D 10 ||
> +		} else if (DISPLAY_VER(display) >=3D 10 ||
>  			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
>  			max_hscale =3D 0x30000 - 1;
>  			max_vscale =3D 0x30000 - 1;
> @@ -407,7 +408,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  		vscale =3D drm_rect_calc_vscale(src, dst, 1, max_vscale);
>=20=20
>  		if (hscale < 0 || vscale < 0) {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(display->drm,
>  				    "Scaler %d doesn't support required plane scaling\n",
>  				    *scaler_id);
>  			drm_rect_debug_print("src: ", src, true);
> @@ -417,7 +418,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  		}
>  	}
>=20=20
> -	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
> +	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
>  		    crtc->pipe, *scaler_id, name, idx);
>  	scaler_state->scalers[*scaler_id].mode =3D mode;
>=20=20
> @@ -443,7 +444,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  int intel_atomic_setup_scalers(struct intel_atomic_state *state,
>  			       struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(crtc);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_crtc_scaler_state *scaler_state =3D
> @@ -467,7 +468,7 @@ int intel_atomic_setup_scalers(struct intel_atomic_st=
ate *state,
>=20=20
>  	/* fail if required scalers > available scalers */
>  	if (num_scalers_need > crtc->num_scalers) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Too many scaling requests %d > %d\n",
>  			    num_scalers_need, crtc->num_scalers);
>  		return -EINVAL;
> @@ -492,10 +493,10 @@ int intel_atomic_setup_scalers(struct intel_atomic_=
state *state,
>  			scaler_id =3D &scaler_state->scaler_id;
>  		} else {
>  			struct intel_plane *plane =3D
> -				to_intel_plane(drm_plane_from_index(&dev_priv->drm, i));
> +				to_intel_plane(drm_plane_from_index(display->drm, i));
>=20=20
>  			/* plane on different crtc cannot be a scaler user of this crtc */
> -			if (drm_WARN_ON(&dev_priv->drm, plane->pipe !=3D crtc->pipe))
> +			if (drm_WARN_ON(display->drm, plane->pipe !=3D crtc->pipe))
>  				continue;
>=20=20
>  			plane_state =3D intel_atomic_get_new_plane_state(state, plane);
> @@ -505,7 +506,7 @@ int intel_atomic_setup_scalers(struct intel_atomic_st=
ate *state,
>  			 * isn't necessary to change between HQ and dyn mode
>  			 * on those platforms.
>  			 */
> -			if (!plane_state && DISPLAY_VER(dev_priv) >=3D 10)
> +			if (!plane_state && DISPLAY_VER(display) >=3D 10)
>  				continue;
>=20=20
>  			plane_state =3D intel_atomic_get_plane_state(state, plane);
> @@ -574,12 +575,12 @@ static u16 glk_nearest_filter_coef(int t)
>   *
>   */
>=20=20
> -static void glk_program_nearest_filter_coefs(struct drm_i915_private *de=
v_priv,
> +static void glk_program_nearest_filter_coefs(struct intel_display *displ=
ay,
>  					     enum pipe pipe, int id, int set)
>  {
>  	int i;
>=20=20
> -	intel_de_write_fw(dev_priv, GLK_PS_COEF_INDEX_SET(pipe, id, set),
> +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(pipe, id, set),
>  			  PS_COEF_INDEX_AUTO_INC);
>=20=20
>  	for (i =3D 0; i < 17 * 7; i +=3D 2) {
> @@ -592,11 +593,11 @@ static void glk_program_nearest_filter_coefs(struct=
 drm_i915_private *dev_priv,
>  		t =3D glk_coef_tap(i + 1);
>  		tmp |=3D glk_nearest_filter_coef(t) << 16;
>=20=20
> -		intel_de_write_fw(dev_priv, GLK_PS_COEF_DATA_SET(pipe, id, set),
> +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(pipe, id, set),
>  				  tmp);
>  	}
>=20=20
> -	intel_de_write_fw(dev_priv, GLK_PS_COEF_INDEX_SET(pipe, id, set), 0);
> +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(pipe, id, set), 0);
>  }
>=20=20
>  static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, =
int set)
> @@ -612,14 +613,14 @@ static u32 skl_scaler_get_filter_select(enum drm_sc=
aling_filter filter, int set)
>  	return PS_FILTER_MEDIUM;
>  }
>=20=20
> -static void skl_scaler_setup_filter(struct drm_i915_private *dev_priv, e=
num pipe pipe,
> +static void skl_scaler_setup_filter(struct intel_display *display, enum =
pipe pipe,
>  				    int id, int set, enum drm_scaling_filter filter)
>  {
>  	switch (filter) {
>  	case DRM_SCALING_FILTER_DEFAULT:
>  		break;
>  	case DRM_SCALING_FILTER_NEAREST_NEIGHBOR:
> -		glk_program_nearest_filter_coefs(dev_priv, pipe, id, set);
> +		glk_program_nearest_filter_coefs(display, pipe, id, set);
>  		break;
>  	default:
>  		MISSING_CASE(filter);
> @@ -628,8 +629,8 @@ static void skl_scaler_setup_filter(struct drm_i915_p=
rivate *dev_priv, enum pipe
>=20=20
>  void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
>  	const struct drm_rect *dst =3D &crtc_state->pch_pfit.dst;
> @@ -647,7 +648,7 @@ void skl_pfit_enable(const struct intel_crtc_state *c=
rtc_state)
>  	if (!crtc_state->pch_pfit.enabled)
>  		return;
>=20=20
> -	if (drm_WARN_ON(&dev_priv->drm,
> +	if (drm_WARN_ON(display->drm,
>  			crtc_state->scaler_state.scaler_id < 0))
>  		return;
>=20=20
> @@ -666,18 +667,18 @@ void skl_pfit_enable(const struct intel_crtc_state =
*crtc_state)
>  	ps_ctrl =3D PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].=
mode |
>  		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, 0);
>=20=20
> -	skl_scaler_setup_filter(dev_priv, pipe, id, 0,
> +	skl_scaler_setup_filter(display, pipe, id, 0,
>  				crtc_state->hw.scaling_filter);
>=20=20
> -	intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, id), ps_ctrl);
> +	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
>=20=20
> -	intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, id),
> +	intel_de_write_fw(display, SKL_PS_VPHASE(pipe, id),
>  			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> -	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
> +	intel_de_write_fw(display, SKL_PS_HPHASE(pipe, id),
>  			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, id),
> +	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
>  			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
> +	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
>  			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
>  }
>=20=20
> @@ -686,6 +687,7 @@ skl_program_plane_scaler(struct intel_plane *plane,
>  			 const struct intel_crtc_state *crtc_state,
>  			 const struct intel_plane_state *plane_state)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	enum pipe pipe =3D plane->pipe;
> @@ -729,28 +731,27 @@ skl_program_plane_scaler(struct intel_plane *plane,
>  	ps_ctrl =3D PS_SCALER_EN | PS_BINDING_PLANE(plane->id) | scaler->mode |
>  		skl_scaler_get_filter_select(plane_state->hw.scaling_filter, 0);
>=20=20
> -	skl_scaler_setup_filter(dev_priv, pipe, scaler_id, 0,
> +	skl_scaler_setup_filter(display, pipe, scaler_id, 0,
>  				plane_state->hw.scaling_filter);
>=20=20
> -	intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, scaler_id), ps_ctrl);
> -	intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, scaler_id),
> +	intel_de_write_fw(display, SKL_PS_CTRL(pipe, scaler_id), ps_ctrl);
> +	intel_de_write_fw(display, SKL_PS_VPHASE(pipe, scaler_id),
>  			  PS_Y_PHASE(y_vphase) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> -	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, scaler_id),
> +	intel_de_write_fw(display, SKL_PS_HPHASE(pipe, scaler_id),
>  			  PS_Y_PHASE(y_hphase) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, scaler_id),
> +	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, scaler_id),
>  			  PS_WIN_XPOS(crtc_x) | PS_WIN_YPOS(crtc_y));
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, scaler_id),
> +	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, scaler_id),
>  			  PS_WIN_XSIZE(crtc_w) | PS_WIN_YSIZE(crtc_h));
>  }
>=20=20
>  static void skl_detach_scaler(struct intel_crtc *crtc, int id)
>  {
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_display *display =3D to_intel_display(crtc);
>=20=20
> -	intel_de_write_fw(dev_priv, SKL_PS_CTRL(crtc->pipe, id), 0);
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(crtc->pipe, id), 0);
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, id), 0);
> +	intel_de_write_fw(display, SKL_PS_CTRL(crtc->pipe, id), 0);
> +	intel_de_write_fw(display, SKL_PS_WIN_POS(crtc->pipe, id), 0);
> +	intel_de_write_fw(display, SKL_PS_WIN_SZ(crtc->pipe, id), 0);
>  }
>=20=20
>  /*
> @@ -781,8 +782,8 @@ void skl_scaler_disable(const struct intel_crtc_state=
 *old_crtc_state)
>=20=20
>  void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_crtc_scaler_state *scaler_state =3D &crtc_state->scaler_st=
ate;
>  	int id =3D -1;
>  	int i;
> @@ -791,15 +792,15 @@ void skl_scaler_get_config(struct intel_crtc_state =
*crtc_state)
>  	for (i =3D 0; i < crtc->num_scalers; i++) {
>  		u32 ctl, pos, size;
>=20=20
> -		ctl =3D intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
> +		ctl =3D intel_de_read(display, SKL_PS_CTRL(crtc->pipe, i));
>  		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) !=3D (PS_SCALER_EN | PS_B=
INDING_PIPE))
>  			continue;
>=20=20
>  		id =3D i;
>  		crtc_state->pch_pfit.enabled =3D true;
>=20=20
> -		pos =3D intel_de_read(dev_priv, SKL_PS_WIN_POS(crtc->pipe, i));
> -		size =3D intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
> +		pos =3D intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, i));
> +		size =3D intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, i));
>=20=20
>  		drm_rect_init(&crtc_state->pch_pfit.dst,
>  			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),

--=20
Jani Nikula, Intel
