Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 854D02B55A5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 01:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CB56E0B6;
	Tue, 17 Nov 2020 00:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B34626E0B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 00:21:51 +0000 (UTC)
IronPort-SDR: jbHi1N0KfEhBiiLNskPjCZQ1Vg9atv7tocPlcvLUcil/jWwVp5S6cQny0FlVO3wpF5opkQcRkM
 JC6wnujr+C5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="168260419"
X-IronPort-AV: E=Sophos;i="5.77,484,1596524400"; d="scan'208";a="168260419"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 16:21:46 -0800
IronPort-SDR: rOK+Wr/WOhLUXODTeZoKAkLOm1vbeENg6vi266uaCfMP5KtProWFx+M508yeWKPM5y+HkEdrrU
 ihKdWtpQ6qGA==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="543807245"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 16:21:46 -0800
Date: Mon, 16 Nov 2020 16:24:15 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201117002408.GB29250@labuser-Z97X-UD5H>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-18-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113220358.24794-18-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 17/23] drm/i915: Get the uapi state from the
 correct plane when bigjoiner is used
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

On Sat, Nov 14, 2020 at 12:03:52AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> When using bigjoiner userspace is only controlling the "master"
> plane, so use its uapi state for the "slave" plane as well.
> =

> hw.crtc needs a bit of magic since we don't want to copy that from
> the uapi state (as it points to the wrong pipe for the "slave
> " plane). Instead we pass the right crtc in explicitly but only
> assign it when the uapi state indicates the plane to be logically
> enabled (ie. uapi.crtc !=3D NULL).
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 59 +++++++++++++------
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
>  3 files changed, 46 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index f47558efb3c2..7abb0e3d6c0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -247,11 +247,19 @@ static void intel_plane_clear_hw_state(struct intel=
_plane_state *plane_state)
>  }
>  =

>  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_s=
tate,
> -				       const struct intel_plane_state *from_plane_state)
> +				       const struct intel_plane_state *from_plane_state,
> +				       struct intel_crtc *crtc)
>  {
>  	intel_plane_clear_hw_state(plane_state);
>  =

> -	plane_state->hw.crtc =3D from_plane_state->uapi.crtc;
> +	/*
> +	 * For the bigjoiner slave uapi.crtc will point at
> +	 * the master crtc. So we explicitly assign the right
> +	 * slave crtc to hw.crtc. uapi.crtc!=3DNULL simply indicates
> +	 * the plane is logically enabled on the uapi level.
> +	 */
> +	plane_state->hw.crtc =3D from_plane_state->uapi.crtc ? &crtc->base : NU=
LL;

But here in case of bigjoiner_slave we actualy compute new_master_plane_sta=
te from master_plane which is
obtained from the slaves linked crtc.

So here, even for the slave plane's hw.crtc we are using master's uapi.crtc=
? Is that what is happening here?

Manasi

> +
>  	plane_state->hw.fb =3D from_plane_state->uapi.fb;
>  	if (plane_state->hw.fb)
>  		drm_framebuffer_get(plane_state->hw.fb);
> @@ -331,15 +339,16 @@ int intel_plane_atomic_check_with_state(const struc=
t intel_crtc_state *old_crtc_
>  					       old_plane_state, new_plane_state);
>  }
>  =

> -static struct intel_crtc *
> -get_crtc_from_states(const struct intel_plane_state *old_plane_state,
> -		     const struct intel_plane_state *new_plane_state)
> +static struct intel_plane *
> +intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
>  {
> -	if (new_plane_state->uapi.crtc)
> -		return to_intel_crtc(new_plane_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_plane *plane;
>  =

> -	if (old_plane_state->uapi.crtc)
> -		return to_intel_crtc(old_plane_state->uapi.crtc);
> +	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
> +		if (plane->id =3D=3D plane_id)
> +			return plane;
> +	}
>  =

>  	return NULL;
>  }
> @@ -347,23 +356,37 @@ get_crtc_from_states(const struct intel_plane_state=
 *old_plane_state,
>  int intel_plane_atomic_check(struct intel_atomic_state *state,
>  			     struct intel_plane *plane)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	struct intel_plane_state *new_plane_state =3D
>  		intel_atomic_get_new_plane_state(state, plane);
>  	const struct intel_plane_state *old_plane_state =3D
>  		intel_atomic_get_old_plane_state(state, plane);
> -	struct intel_crtc *crtc =3D
> -		get_crtc_from_states(old_plane_state, new_plane_state);
> -	const struct intel_crtc_state *old_crtc_state;
> -	struct intel_crtc_state *new_crtc_state;
> +	const struct intel_plane_state *new_master_plane_state;
> +	struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(i915, plane->pipe);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (new_crtc_state && new_crtc_state->bigjoiner_slave) {
> +		struct intel_plane *master_plane =3D
> +			intel_crtc_get_plane(new_crtc_state->bigjoiner_linked_crtc,
> +					     plane->id);
> +
> +		new_master_plane_state =3D
> +			intel_atomic_get_new_plane_state(state, master_plane);
> +	} else {
> +		new_master_plane_state =3D new_plane_state;
> +	}
> +
> +	intel_plane_copy_uapi_to_hw_state(new_plane_state,
> +					  new_master_plane_state,
> +					  crtc);
>  =

> -	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state);
>  	new_plane_state->uapi.visible =3D false;
> -	if (!crtc)
> +	if (!new_crtc_state)
>  		return 0;
>  =

> -	old_crtc_state =3D intel_atomic_get_old_crtc_state(state, crtc);
> -	new_crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
> -
>  	return intel_plane_atomic_check_with_state(old_crtc_state,
>  						   new_crtc_state,
>  						   old_plane_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index 24a3a148aa62..5cae9db41062 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -24,7 +24,8 @@ unsigned int intel_plane_pixel_rate(const struct intel_=
crtc_state *crtc_state,
>  unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_s=
tate,
>  				   const struct intel_plane_state *plane_state);
>  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_s=
tate,
> -				       const struct intel_plane_state *from_plane_state);
> +				       const struct intel_plane_state *from_plane_state,
> +				       struct intel_crtc *crtc);
>  void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
>  			       const struct intel_plane_state *from_plane_state);
>  void intel_update_plane(struct intel_plane *plane,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1118ff73c0d4..55e0a2f21d98 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3718,7 +3718,8 @@ intel_find_initial_plane_obj(struct intel_crtc *int=
el_crtc,
>  	drm_framebuffer_get(fb);
>  =

>  	plane_state->crtc =3D &intel_crtc->base;
> -	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state);
> +	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state,
> +					  intel_crtc);
>  =

>  	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
>  =

> @@ -16942,7 +16943,7 @@ intel_legacy_cursor_update(struct drm_plane *_pla=
ne,
>  	new_plane_state->uapi.crtc_w =3D crtc_w;
>  	new_plane_state->uapi.crtc_h =3D crtc_h;
>  =

> -	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state);
> +	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state, crt=
c);
>  =

>  	ret =3D intel_plane_atomic_check_with_state(crtc_state, new_crtc_state,
>  						  old_plane_state, new_plane_state);
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
