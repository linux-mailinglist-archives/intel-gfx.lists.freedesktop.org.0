Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6604B990C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 07:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B1D110E89C;
	Thu, 17 Feb 2022 06:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04B9310E89C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 06:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645078565; x=1676614565;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=VholmawEwKWN6Uffo6MsLqczThgDR/MFYWGKvzd4u0k=;
 b=k/NC2mR8H8JFY+7vRHTGPAAbI23UvkP3fkcYSNb7EyxO4JZXlKdqVuQH
 gJXXM6qlRICEV/8ybnGBZKNgB+NargkvtnTfhtGPAS4C68Dz8hPHwgA02
 igVY+vm9OhEh18GPkVwfReT4BECDbtuE/nUVanNK/tgYXex2/KeDxtU0F
 b42059eEEpmT3L3Lf/H75kL3RBGxWnnED6i6PzaIovR8ZNtQezk/algvp
 of3kkYGoKj9znaPfXrJL/qKdowP72N/nXwS2uI5KlywWCIyKX3wGHIR4X
 9AgaLb9tjucsATyYfUjjbiYFRHRlJgxkSr94tgNQPKW9pszEOT9xwNRXI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="234334322"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="234334322"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 22:16:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="529975022"
Received: from dsloan-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.14.34])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 22:15:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220216232806.6194-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220216232806.6194-1-ville.syrjala@linux.intel.com>
 <20220216232806.6194-2-ville.syrjala@linux.intel.com>
Date: Thu, 17 Feb 2022 08:15:56 +0200
Message-ID: <87czjm3tnn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Introduce
 intel_crtc_planes_update_arm()
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

On Thu, 17 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No reason the high level intel_update_crtc() needs to know
> that there is something magical about the commit order of
> planes between different platforms. So let's hide that
> detail even better.
>
> In order to keep to somewhat consistent naming between
> things we shall call this intel_crtc_planes_update_arm()
> to match the plane->update_arm() vfunc naming convention.
> And let's rename the noarm counterpart to
> intel_crtc_planes_update_noarm() to more clearly associate
> it with the plane->update_noarm() vfunc.
>
> v2: Change the naming convention a bit
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1

Holds for v2.

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 23 ++++++++++++++-----
>  .../gpu/drm/i915/display/intel_atomic_plane.h | 10 ++++----
>  drivers/gpu/drm/i915/display/intel_display.c  |  8 ++-----
>  3 files changed, 23 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index e9893e314037..c53aa6a4c7a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -693,8 +693,8 @@ void intel_plane_disable_arm(struct intel_plane *plan=
e,
>  	plane->disable_arm(plane, crtc_state);
>  }
>=20=20
> -void intel_update_planes_on_crtc(struct intel_atomic_state *state,
> -				 struct intel_crtc *crtc)
> +void intel_crtc_planes_update_noarm(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
>  {
>  	struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -722,8 +722,8 @@ void intel_update_planes_on_crtc(struct intel_atomic_=
state *state,
>  	}
>  }
>=20=20
> -void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
> -			    struct intel_crtc *crtc)
> +static void skl_crtc_planes_update_arm(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc)
>  {
>  	struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
> @@ -757,8 +757,8 @@ void skl_arm_planes_on_crtc(struct intel_atomic_state=
 *state,
>  	}
>  }
>=20=20
> -void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
> -			     struct intel_crtc *crtc)
> +static void i9xx_crtc_planes_update_arm(struct intel_atomic_state *state,
> +					struct intel_crtc *crtc)
>  {
>  	struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -783,6 +783,17 @@ void i9xx_arm_planes_on_crtc(struct intel_atomic_sta=
te *state,
>  	}
>  }
>=20=20
> +void intel_crtc_planes_update_arm(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +
> +	if (DISPLAY_VER(i915) >=3D 9)
> +		skl_crtc_planes_update_arm(state, crtc);
> +	else
> +		i9xx_crtc_planes_update_arm(state, crtc);
> +}
> +
>  int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_st=
ate,
>  				      struct intel_crtc_state *crtc_state,
>  				      int min_scale, int max_scale,
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index 9822b921279c..f4763a53541e 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -44,12 +44,10 @@ void intel_plane_free(struct intel_plane *plane);
>  struct drm_plane_state *intel_plane_duplicate_state(struct drm_plane *pl=
ane);
>  void intel_plane_destroy_state(struct drm_plane *plane,
>  			       struct drm_plane_state *state);
> -void intel_update_planes_on_crtc(struct intel_atomic_state *state,
> -				 struct intel_crtc *crtc);
> -void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
> -			    struct intel_crtc *crtc);
> -void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
> -			     struct intel_crtc *crtc);
> +void intel_crtc_planes_update_noarm(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc);
> +void intel_crtc_planes_update_arm(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc);
>  int intel_plane_atomic_check_with_state(const struct intel_crtc_state *o=
ld_crtc_state,
>  					struct intel_crtc_state *crtc_state,
>  					const struct intel_plane_state *old_plane_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 59961621fe4a..740620ef07ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7954,7 +7954,6 @@ static void intel_enable_crtc(struct intel_atomic_s=
tate *state,
>  static void intel_update_crtc(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc_state *new_crtc_state =3D
> @@ -7975,17 +7974,14 @@ static void intel_update_crtc(struct intel_atomic=
_state *state,
>=20=20
>  	intel_fbc_update(state, crtc);
>=20=20
> -	intel_update_planes_on_crtc(state, crtc);
> +	intel_crtc_planes_update_noarm(state, crtc);
>=20=20
>  	/* Perform vblank evasion around commit operation */
>  	intel_pipe_update_start(new_crtc_state);
>=20=20
>  	commit_pipe_pre_planes(state, crtc);
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 9)
> -		skl_arm_planes_on_crtc(state, crtc);
> -	else
> -		i9xx_arm_planes_on_crtc(state, crtc);
> +	intel_crtc_planes_update_arm(state, crtc);
>=20=20
>  	commit_pipe_post_planes(state, crtc);

--=20
Jani Nikula, Intel Open Source Graphics Center
