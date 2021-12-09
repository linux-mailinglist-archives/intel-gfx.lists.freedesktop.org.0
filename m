Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0029946EF1E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B48710E4A9;
	Thu,  9 Dec 2021 16:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5199210E119
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:15:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="324354473"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="324354473"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:15:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="516291782"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:15:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211203112029.1057-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211203112029.1057-1-ville.syrjala@linux.intel.com>
Date: Thu, 09 Dec 2021 15:14:52 +0200
Message-ID: <87zgp93ooj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Nuke {pipe,
 plane}_to_crtc_mapping[]
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

On Fri, 03 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> These plane/pipe->crtc mapping arrays are rather pointless.
> Get rid of them and just iterate the lists instead.

Nice follow-up to my cleanups. On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

intel_crtc_first() might have been nice for the prefix, but does it
sound too awkward? *shrug*

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 44 ++++++++++-------------
>  drivers/gpu/drm/i915/display/intel_crtc.h |  1 -
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 13 ++-----
>  drivers/gpu/drm/i915/i915_drv.h           |  3 --
>  4 files changed, 20 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 43554b591904..96554f5652f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -36,14 +36,6 @@ static void assert_vblank_disabled(struct drm_crtc *cr=
tc)
>  		drm_crtc_vblank_put(crtc);
>  }
>=20=20
> -bool intel_pipe_valid(struct drm_i915_private *i915, enum pipe pipe)
> -{
> -	return (pipe >=3D 0 &&
> -		pipe < ARRAY_SIZE(i915->pipe_to_crtc_mapping) &&
> -		INTEL_INFO(i915)->pipe_mask & BIT(pipe) &&
> -		i915->pipe_to_crtc_mapping[pipe]);
> -}
> -
>  struct intel_crtc *intel_get_first_crtc(struct drm_i915_private *i915)
>  {
>  	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
> @@ -52,16 +44,28 @@ struct intel_crtc *intel_get_first_crtc(struct drm_i9=
15_private *i915)
>  struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
>  				       enum pipe pipe)
>  {
> -	/* pipe_to_crtc_mapping may have hole on any of 3 display pipe system */
> -	drm_WARN_ON(&i915->drm,
> -		    !(INTEL_INFO(i915)->pipe_mask & BIT(pipe)));
> -	return i915->pipe_to_crtc_mapping[pipe];
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		if (crtc->pipe =3D=3D pipe)
> +			return crtc;
> +	}
> +
> +	return NULL;
>  }
>=20=20
>  struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
> -					enum i9xx_plane_id plane)
> +					enum i9xx_plane_id i9xx_plane)
>  {
> -	return i915->plane_to_crtc_mapping[plane];
> +	struct intel_plane *plane;
> +
> +	for_each_intel_plane(&i915->drm, plane) {
> +		if (plane->id =3D=3D PLANE_PRIMARY &&
> +		    plane->i9xx_plane =3D=3D i9xx_plane)
> +			return intel_crtc_for_pipe(i915, plane->pipe);
> +	}
> +
> +	return NULL;
>  }
>=20=20
>  void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
> @@ -369,18 +373,6 @@ int intel_crtc_init(struct drm_i915_private *dev_pri=
v, enum pipe pipe)
>  	if (ret)
>  		goto fail;
>=20=20
> -	BUG_ON(pipe >=3D ARRAY_SIZE(dev_priv->pipe_to_crtc_mapping) ||
> -	       dev_priv->pipe_to_crtc_mapping[pipe] !=3D NULL);
> -	dev_priv->pipe_to_crtc_mapping[pipe] =3D crtc;
> -
> -	if (DISPLAY_VER(dev_priv) < 9) {
> -		enum i9xx_plane_id i9xx_plane =3D primary->i9xx_plane;
> -
> -		BUG_ON(i9xx_plane >=3D ARRAY_SIZE(dev_priv->plane_to_crtc_mapping) ||
> -		       dev_priv->plane_to_crtc_mapping[i9xx_plane] !=3D NULL);
> -		dev_priv->plane_to_crtc_mapping[i9xx_plane] =3D crtc;
> -	}
> -
>  	if (DISPLAY_VER(dev_priv) >=3D 11)
>  		drm_crtc_create_scaling_filter_property(&crtc->base,
>  						BIT(DRM_SCALING_FILTER_DEFAULT) |
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/=
i915/display/intel_crtc.h
> index 23110e91ecd6..4654f0eb65a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -29,7 +29,6 @@ void intel_crtc_vblank_off(const struct intel_crtc_stat=
e *crtc_state);
>  void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state);
>  void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
>  void intel_wait_for_vblank_workers(struct intel_atomic_state *state);
> -bool intel_pipe_valid(struct drm_i915_private *i915, enum pipe pipe);
>  struct intel_crtc *intel_get_first_crtc(struct drm_i915_private *i915);
>  struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
>  				       enum pipe pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/=
i915/display/intel_vdsc.c
> index c6851b0e0bed..7fe5d328c721 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1110,25 +1110,16 @@ static i915_reg_t dss_ctl2_reg(struct intel_crtc =
*crtc, enum transcoder cpu_tran
>  		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
>  }
>=20=20
> -static struct intel_crtc *
> -_get_crtc_for_pipe(struct drm_i915_private *i915, enum pipe pipe)
> -{
> -	if (!intel_pipe_valid(i915, pipe))
> -		return NULL;
> -
> -	return intel_crtc_for_pipe(i915, pipe);
> -}
> -
>  struct intel_crtc *
>  intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc)
>  {
> -	return _get_crtc_for_pipe(to_i915(primary_crtc->base.dev), primary_crtc=
->pipe + 1);
> +	return intel_crtc_for_pipe(to_i915(primary_crtc->base.dev), primary_crt=
c->pipe + 1);
>  }
>=20=20
>  static struct intel_crtc *
>  intel_dsc_get_bigjoiner_primary(const struct intel_crtc *secondary_crtc)
>  {
> -	return _get_crtc_for_pipe(to_i915(secondary_crtc->base.dev), secondary_=
crtc->pipe - 1);
> +	return intel_crtc_for_pipe(to_i915(secondary_crtc->base.dev), secondary=
_crtc->pipe - 1);
>  }
>=20=20
>  void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crt=
c_state)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 262783d5db2b..60f11b114031 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -943,9 +943,6 @@ struct drm_i915_private {
>=20=20
>  	/* Kernel Modesetting */
>=20=20
> -	struct intel_crtc *plane_to_crtc_mapping[I915_MAX_PIPES];
> -	struct intel_crtc *pipe_to_crtc_mapping[I915_MAX_PIPES];
> -
>  	/**
>  	 * dpll and cdclk state is protected by connection_mutex
>  	 * dpll.lock serializes intel_{prepare,enable,disable}_shared_dpll.

--=20
Jani Nikula, Intel Open Source Graphics Center
