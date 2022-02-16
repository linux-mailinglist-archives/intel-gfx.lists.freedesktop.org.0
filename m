Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2D34B848E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 10:38:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D0210ED8C;
	Wed, 16 Feb 2022 09:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4251910ED8C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 09:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645004331; x=1676540331;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Qk8uGb9jlIOIGCCplnEX4QjRG0MoFLFQRYbBG6O+P9U=;
 b=guBDrs8svsYar7sqgCNdm5wYftzK1/ke32sJIkTf9WbKZf2obTpMnfu6
 EG3Xs1F4xW8zp6PIdh5/qmipyxLFNFqNqQKXD8Ze4WVtRsbqOsTa5r8N8
 lZk0p/C5+bQoqvMJ2SHBZrc2iyUopPssw+pFEn1HGEqlJPur2r/mE+lfm
 FB3wJCV2JSlWWRJF8tDNpM53AQoxHjT0DeQBKRKZW2QRY2NPVEOK/xOX9
 0Aqn5sf0qp0zw57iV2TwSI3CXoeh6ltuMqAdsiWOHSm0PnLYX/oHiR0i5
 kzp5VFtaYkMhXJeL+C7cohSVVCtTkGkjrYD2E4WvyoKtncApGaIZcapUu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250507061"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="250507061"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:38:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="529365451"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.113])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:38:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220211090629.15555-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
 <20220211090629.15555-3-ville.syrjala@linux.intel.com>
Date: Wed, 16 Feb 2022 11:38:44 +0200
Message-ID: <877d9v5exn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915: Introduce
 intel_arm_planes_on_crtc()
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

On Fri, 11 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No reason the high level intel_update_crtc() needs to know
> that there is something magical about the commit order of
> planes between different platforms. So let's hide that
> detail even better.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 19 +++++++++++++++----
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  6 ++----
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +-----
>  3 files changed, 18 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index 3355eb637eac..bba2f105b7dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -716,8 +716,8 @@ void intel_update_planes_on_crtc(struct intel_atomic_=
state *state,
>  	}
>  }
>=20=20
> -void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
> -			    struct intel_crtc *crtc)
> +static void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
> +				   struct intel_crtc *crtc)
>  {
>  	struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
> @@ -751,8 +751,8 @@ void skl_arm_planes_on_crtc(struct intel_atomic_state=
 *state,
>  	}
>  }
>=20=20
> -void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
> -			     struct intel_crtc *crtc)
> +static void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
>  {
>  	struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -777,6 +777,17 @@ void i9xx_arm_planes_on_crtc(struct intel_atomic_sta=
te *state,
>  	}
>  }
>=20=20
> +void intel_arm_planes_on_crtc(struct intel_atomic_state *state,
> +			      struct intel_crtc *crtc)
> +{

I don't much like the intel_arm_ prefix here. I'd go for intel_plane_
something or other.

Can be fixed while applying, or later. *shrug*

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +
> +	if (DISPLAY_VER(i915) >=3D 9)
> +		skl_arm_planes_on_crtc(state, crtc);
> +	else
> +		i9xx_arm_planes_on_crtc(state, crtc);
> +}
> +
>  int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_st=
ate,
>  				      struct intel_crtc_state *crtc_state,
>  				      int min_scale, int max_scale,
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index 9822b921279c..b7973e932e78 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -46,10 +46,8 @@ void intel_plane_destroy_state(struct drm_plane *plane,
>  			       struct drm_plane_state *state);
>  void intel_update_planes_on_crtc(struct intel_atomic_state *state,
>  				 struct intel_crtc *crtc);
> -void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
> -			    struct intel_crtc *crtc);
> -void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
> -			     struct intel_crtc *crtc);
> +void intel_arm_planes_on_crtc(struct intel_atomic_state *state,
> +			      struct intel_crtc *crtc);
>  int intel_plane_atomic_check_with_state(const struct intel_crtc_state *o=
ld_crtc_state,
>  					struct intel_crtc_state *crtc_state,
>  					const struct intel_plane_state *old_plane_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 3f68fb656fb5..aac1695657df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7796,7 +7796,6 @@ static void intel_enable_crtc(struct intel_atomic_s=
tate *state,
>  static void intel_update_crtc(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc_state *new_crtc_state =3D
> @@ -7824,10 +7823,7 @@ static void intel_update_crtc(struct intel_atomic_=
state *state,
>=20=20
>  	commit_pipe_pre_planes(state, crtc);
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 9)
> -		skl_arm_planes_on_crtc(state, crtc);
> -	else
> -		i9xx_arm_planes_on_crtc(state, crtc);
> +	intel_arm_planes_on_crtc(state, crtc);
>=20=20
>  	commit_pipe_post_planes(state, crtc);

--=20
Jani Nikula, Intel Open Source Graphics Center
