Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 913EA8C9A03
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 10:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CBD310E198;
	Mon, 20 May 2024 08:56:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tm4qEJTP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B5610E198
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 08:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716195370; x=1747731370;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=t1EvL6uUDmN0QkgTt6KN91hcO8nKpejk7wVTBS7+Zwk=;
 b=Tm4qEJTPJVIxScWOMrXVcyi9+2pYtFNOcB4aBLA7FbeSN4hnfIr0z8tP
 JPwHthy7KDOFMj+LDpgbES41RxGB9PzorM+KC4cfWlO+taZOXiC2WKD/3
 3v9TMiQT2TQJUmWQVNHiEhZWSm4CM5tL0tWBC1C5EtpF7EcHuScFpha17
 IBYSsZoasu79Rv9Z2D6BqLKdCQFo8l74d6o8TBsIRPhWdfLjcLcW0Ai4J
 plW0nHc3fLFVWkiLu66Xvjdkua4U9/YtEAn+H8545VrHhq6gN7g15H7vq
 9lhDHGFWJ0nIGb0zvvJZd+PKIwms62oDe6PrmqTP6Hu4pwXOWi+eRe5Nu g==;
X-CSE-ConnectionGUID: SqoMwfuVTKiL1aPZAm8FyA==
X-CSE-MsgGUID: SreVHQMvTiGWlP7zNTYfhw==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="22918884"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="22918884"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 01:56:05 -0700
X-CSE-ConnectionGUID: ojedw5PkTFuVDiKzLIehMw==
X-CSE-MsgGUID: 4tdzufNYRJGRY1ZjtGrHbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="37407071"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 01:56:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 01/13] drm/i915: Add skl+ plane name aliases to enum
 plane_id
In-Reply-To: <20240517171208.21313-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-2-ville.syrjala@linux.intel.com>
 <20240517171208.21313-1-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 11:56:00 +0300
Message-ID: <87bk50vp3z.fsf@intel.com>
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

On Fri, 17 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Using PLANE_PRIMARY + PLANE_SPRITE? on skl+ results in a bunch
> of unnecessary head scratching. Add aliases using the skl+ plane
> names.
> And for pre-skl we only need to keep PRIMARY,SPRITE0,SPRITE1
> as we only ever have 0-2 sprites per pipe on those platforms.
>
> v2: Don't break icl_nv12_y_plane_mask() (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  6 ++----
>  drivers/gpu/drm/i915/display/intel_display.c  |  8 +++----
>  .../drm/i915/display/intel_display_limits.h   | 21 ++++++++++++-------
>  .../gpu/drm/i915/display/intel_sprite_uapi.c  |  2 +-
>  .../drm/i915/display/skl_universal_plane.c    | 19 ++++++++---------
>  5 files changed, 30 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 339010384b86..ca6dc1dc56c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -310,8 +310,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv=
, enum pipe pipe)
>  	crtc->num_scalers =3D DISPLAY_RUNTIME_INFO(dev_priv)->num_scalers[pipe];
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 9)
> -		primary =3D skl_universal_plane_create(dev_priv, pipe,
> -						     PLANE_PRIMARY);
> +		primary =3D skl_universal_plane_create(dev_priv, pipe, PLANE_1);
>  	else
>  		primary =3D intel_primary_plane_create(dev_priv, pipe);
>  	if (IS_ERR(primary)) {
> @@ -326,8 +325,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv=
, enum pipe pipe)
>  		struct intel_plane *plane;
>=20=20
>  		if (DISPLAY_VER(dev_priv) >=3D 9)
> -			plane =3D skl_universal_plane_create(dev_priv, pipe,
> -							   PLANE_SPRITE0 + sprite);
> +			plane =3D skl_universal_plane_create(dev_priv, pipe, PLANE_2 + sprite=
);
>  		else
>  			plane =3D intel_sprite_plane_create(dev_priv, pipe, sprite);
>  		if (IS_ERR(plane)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cce1420fb541..ee2df655b0ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4121,13 +4121,13 @@ static int icl_check_nv12_planes(struct intel_crt=
c_state *crtc_state)
>  		linked_state->uapi.dst =3D plane_state->uapi.dst;
>=20=20
>  		if (icl_is_hdr_plane(dev_priv, plane->id)) {
> -			if (linked->id =3D=3D PLANE_SPRITE5)
> +			if (linked->id =3D=3D PLANE_7)
>  				plane_state->cus_ctl |=3D PLANE_CUS_Y_PLANE_7_ICL;
> -			else if (linked->id =3D=3D PLANE_SPRITE4)
> +			else if (linked->id =3D=3D PLANE_6)
>  				plane_state->cus_ctl |=3D PLANE_CUS_Y_PLANE_6_ICL;
> -			else if (linked->id =3D=3D PLANE_SPRITE3)
> +			else if (linked->id =3D=3D PLANE_5)
>  				plane_state->cus_ctl |=3D PLANE_CUS_Y_PLANE_5_RKL;
> -			else if (linked->id =3D=3D PLANE_SPRITE2)
> +			else if (linked->id =3D=3D PLANE_4)
>  				plane_state->cus_ctl |=3D PLANE_CUS_Y_PLANE_4_RKL;
>  			else
>  				MISSING_CASE(linked->id);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/driver=
s/gpu/drm/i915/display/intel_display_limits.h
> index 5126d0b5ae5d..c4775c99dc83 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
> @@ -60,16 +60,23 @@ enum transcoder {
>   * (eg. PLANE_CTL(), PS_PLANE_SEL(), etc.) so adjust with care.
>   */
>  enum plane_id {
> -	PLANE_PRIMARY,
> -	PLANE_SPRITE0,
> -	PLANE_SPRITE1,
> -	PLANE_SPRITE2,
> -	PLANE_SPRITE3,
> -	PLANE_SPRITE4,
> -	PLANE_SPRITE5,
> +	/* skl+ universal plane names */
> +	PLANE_1,
> +	PLANE_2,
> +	PLANE_3,
> +	PLANE_4,
> +	PLANE_5,
> +	PLANE_6,
> +	PLANE_7,
> +
>  	PLANE_CURSOR,
>=20=20
>  	I915_MAX_PLANES,
> +
> +	/* pre-skl plane names */
> +	PLANE_PRIMARY =3D PLANE_1,
> +	PLANE_SPRITE0,
> +	PLANE_SPRITE1,
>  };
>=20=20
>  enum port {
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c b/drivers/g=
pu/drm/i915/display/intel_sprite_uapi.c
> index a76b48ebc2d3..4853c4806004 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
> @@ -74,7 +74,7 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *=
dev, void *data,
>  	 * pipe simultaneously.
>  	 */
>  	if (DISPLAY_VER(dev_priv) >=3D 9 &&
> -	    to_intel_plane(plane)->id >=3D PLANE_SPRITE1 &&
> +	    to_intel_plane(plane)->id >=3D PLANE_3 &&
>  	    set->flags & I915_SET_COLORKEY_DESTINATION)
>  		return -EINVAL;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 32d10e62b2b9..d99fec8e5233 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -238,9 +238,9 @@ int skl_format_to_fourcc(int format, bool rgb_order, =
bool alpha)
>  static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
>  {
>  	if (DISPLAY_VER(i915) >=3D 13 || HAS_D12_PLANE_MINIMIZATION(i915))
> -		return BIT(PLANE_SPRITE2) | BIT(PLANE_SPRITE3);
> +		return BIT(PLANE_4) | BIT(PLANE_5);
>  	else
> -		return BIT(PLANE_SPRITE4) | BIT(PLANE_SPRITE5);
> +		return BIT(PLANE_6) | BIT(PLANE_7);
>  }
>=20=20
>  bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
> @@ -252,7 +252,7 @@ bool icl_is_nv12_y_plane(struct drm_i915_private *dev=
_priv,
>=20=20
>  u8 icl_hdr_plane_mask(void)
>  {
> -	return BIT(PLANE_PRIMARY) | BIT(PLANE_SPRITE0) | BIT(PLANE_SPRITE1);
> +	return BIT(PLANE_1) | BIT(PLANE_2) | BIT(PLANE_3);
>  }
>=20=20
>  bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id p=
lane_id)
> @@ -2099,7 +2099,7 @@ static bool skl_plane_has_fbc(struct drm_i915_priva=
te *i915,
>  	if (DISPLAY_VER(i915) >=3D 20)
>  		return icl_is_hdr_plane(i915, plane_id);
>  	else
> -		return plane_id =3D=3D PLANE_PRIMARY;
> +		return plane_id =3D=3D PLANE_1;
>  }
>=20=20
>  static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
> @@ -2123,7 +2123,7 @@ static bool skl_plane_has_planar(struct drm_i915_pr=
ivate *dev_priv,
>  	if (DISPLAY_VER(dev_priv) =3D=3D 9 && pipe =3D=3D PIPE_C)
>  		return false;
>=20=20
> -	if (plane_id !=3D PLANE_PRIMARY && plane_id !=3D PLANE_SPRITE0)
> +	if (plane_id !=3D PLANE_1 && plane_id !=3D PLANE_2)
>  		return false;
>=20=20
>  	return true;
> @@ -2331,8 +2331,7 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_pr=
ivate *i915,
>  		return pipe !=3D PIPE_C;
>=20=20
>  	return pipe !=3D PIPE_C &&
> -		(plane_id =3D=3D PLANE_PRIMARY ||
> -		 plane_id =3D=3D PLANE_SPRITE0);
> +		(plane_id =3D=3D PLANE_1 || plane_id =3D=3D PLANE_2);
>  }
>=20=20
>  static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> @@ -2350,7 +2349,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_=
private *i915,
>  	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>  		return false;
>=20=20
> -	return plane_id < PLANE_SPRITE4;
> +	return plane_id < PLANE_6;
>  }
>=20=20
>  static u8 skl_get_plane_caps(struct drm_i915_private *i915,
> @@ -2439,7 +2438,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  	plane->get_hw_state =3D skl_plane_get_hw_state;
>  	plane->check_plane =3D skl_plane_check;
>=20=20
> -	if (plane_id =3D=3D PLANE_PRIMARY) {
> +	if (plane_id =3D=3D PLANE_1) {
>  		plane->need_async_flip_toggle_wa =3D IS_DISPLAY_VER(dev_priv, 9, 10);
>  		plane->async_flip =3D skl_plane_async_flip;
>  		plane->enable_flip_done =3D skl_plane_enable_flip_done;
> @@ -2461,7 +2460,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  	else
>  		plane_funcs =3D &skl_plane_funcs;
>=20=20
> -	if (plane_id =3D=3D PLANE_PRIMARY)
> +	if (plane_id =3D=3D PLANE_1)
>  		plane_type =3D DRM_PLANE_TYPE_PRIMARY;
>  	else
>  		plane_type =3D DRM_PLANE_TYPE_OVERLAY;

--=20
Jani Nikula, Intel
