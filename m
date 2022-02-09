Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 970674AF305
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:39:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2FD610E130;
	Wed,  9 Feb 2022 13:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ABB010E130
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 13:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644413947; x=1675949947;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=OEsIaUTM077LnuGY07VRgWn80w5a/6rvjf+EXoadg0M=;
 b=HNGaA6sAKap2ThIkIUVtmJf0RUIWw5Z9Ih+SHdCEwxgrf/nBsmMLUdw3
 zzTQ0X43z0MZ4xErewhkFixGB62pkxI/DgYd4DvIX1mdrK1crPK+dbKKs
 srkaSg2gjeCLJogQKJ7NUJkkyCnfqg0Zc9lzDvpleZ1Jlnmz7422NXEmg
 PeBgf5sDk/HRgY2WVLuBb4Kjb5vgWlxqA0jiBZjaphvodJELwDZ+/9kMU
 zoULFfJMTB72CJgq+KgWVEpVQW/Act995F7BXQfLUhrwSofJK6CZm0fnI
 SVHMlp4+CEPYkjoNSZDhI+v1AmkqXo9MX5FIMl267Dd22GUPt9M6jbZ4k w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="246787559"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="246787559"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:39:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="499968449"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:39:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220209113526.7595-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
 <20220209113526.7595-7-ville.syrjala@linux.intel.com>
Date: Wed, 09 Feb 2022 15:39:02 +0200
Message-ID: <87o83gnoqx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Consolidate all pre plane
 update vblank waits
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

On Wed, 09 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> There are several reasons why we might have to do a vblank wait
> between some of the pre_plane_update() steps and the actual
> plane update. Currently we do a vblank wait for each of those
> individually. Let's consolidate things so that we just do a
> single vblank wait at the end of the pre_plane_update() step.
>
> Note that I don't think we should be hitting multiple vblank
> waits here currently, at least in most cases. But no real
> reason that couldn't happen in the future when some new
> features/workarounds are introduced.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 35 ++++++++++++--------
>  1 file changed, 22 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 401a339973bf..7c37c4355606 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -742,6 +742,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *=
crtc,
>  		to_intel_crtc_state(crtc->base.state);
>  	struct intel_plane_state *plane_state =3D
>  		to_intel_plane_state(plane->base.state);
> +	bool need_vblank_wait =3D false;
>=20=20
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "Disabling [PLANE:%d:%s] on [CRTC:%d:%s]\n",
> @@ -756,7 +757,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *=
crtc,
>  	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) =3D=3D 0 &&
>  	    hsw_ips_disable(crtc_state)) {
>  		crtc_state->ips_enabled =3D false;
> -		intel_crtc_wait_for_next_vblank(crtc);
> +		need_vblank_wait =3D true;
>  	}
>=20=20
>  	/*
> @@ -770,7 +771,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *=
crtc,
>  	 */
>  	if (HAS_GMCH(dev_priv) &&
>  	    intel_set_memory_cxsr(dev_priv, false))
> -		intel_crtc_wait_for_next_vblank(crtc);
> +		need_vblank_wait =3D true;
>=20=20
>  	/*
>  	 * Gen2 reports pipe underruns whenever all planes are disabled.
> @@ -779,6 +780,9 @@ void intel_plane_disable_noatomic(struct intel_crtc *=
crtc,
>  	if (DISPLAY_VER(dev_priv) =3D=3D 2 && !crtc_state->active_planes)
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
>=20=20
> +	if (need_vblank_wait)
> +		intel_crtc_wait_for_next_vblank(crtc);
> +
>  	intel_plane_disable_arm(plane, crtc_state);
>  	intel_crtc_wait_for_next_vblank(crtc);
>  }
> @@ -1258,7 +1262,7 @@ static void intel_crtc_disable_flip_done(struct int=
el_atomic_state *state,
>  	}
>  }
>=20=20
> -static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *=
state,
> +static bool intel_crtc_async_flip_disable_wa(struct intel_atomic_state *=
state,
>  					     struct intel_crtc *crtc)
>  {
>  	const struct intel_crtc_state *old_crtc_state =3D
> @@ -1268,7 +1272,7 @@ static void intel_crtc_async_flip_disable_wa(struct=
 intel_atomic_state *state,
>  	u8 update_planes =3D new_crtc_state->update_planes;
>  	const struct intel_plane_state *old_plane_state;
>  	struct intel_plane *plane;
> -	bool need_vbl_wait =3D false;
> +	bool need_vblank_wait =3D false;
>  	int i;
>=20=20
>  	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
> @@ -1281,12 +1285,11 @@ static void intel_crtc_async_flip_disable_wa(stru=
ct intel_atomic_state *state,
>  			 */
>  			plane->async_flip(plane, old_crtc_state,
>  					  old_plane_state, false);
> -			need_vbl_wait =3D true;
> +			need_vblank_wait =3D true;
>  		}
>  	}
>=20=20
> -	if (need_vbl_wait)
> -		intel_crtc_wait_for_next_vblank(crtc);
> +	return need_vblank_wait;
>  }
>=20=20
>  static void intel_pre_plane_update(struct intel_atomic_state *state,
> @@ -1298,14 +1301,15 @@ static void intel_pre_plane_update(struct intel_a=
tomic_state *state,
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum pipe pipe =3D crtc->pipe;
> +	bool need_vblank_wait =3D false;
>=20=20
>  	intel_psr_pre_plane_update(state, crtc);
>=20=20
>  	if (hsw_ips_pre_update(state, crtc))
> -		intel_crtc_wait_for_next_vblank(crtc);
> +		need_vblank_wait =3D true;
>=20=20
>  	if (intel_fbc_pre_update(state, crtc))
> -		intel_crtc_wait_for_next_vblank(crtc);
> +		need_vblank_wait =3D true;
>=20=20
>  	if (!needs_async_flip_vtd_wa(old_crtc_state) &&
>  	    needs_async_flip_vtd_wa(new_crtc_state))
> @@ -1337,7 +1341,7 @@ static void intel_pre_plane_update(struct intel_ato=
mic_state *state,
>  	 */
>  	if (HAS_GMCH(dev_priv) && old_crtc_state->hw.active &&
>  	    new_crtc_state->disable_cxsr && intel_set_memory_cxsr(dev_priv, fal=
se))
> -		intel_crtc_wait_for_next_vblank(crtc);
> +		need_vblank_wait =3D true;
>=20=20
>  	/*
>  	 * IVB workaround: must disable low power watermarks for at least
> @@ -1348,7 +1352,7 @@ static void intel_pre_plane_update(struct intel_ato=
mic_state *state,
>  	 */
>  	if (old_crtc_state->hw.active &&
>  	    new_crtc_state->disable_lp_wm && ilk_disable_lp_wm(dev_priv))
> -		intel_crtc_wait_for_next_vblank(crtc);
> +		need_vblank_wait =3D true;
>=20=20
>  	/*
>  	 * If we're doing a modeset we don't need to do any
> @@ -1389,8 +1393,13 @@ static void intel_pre_plane_update(struct intel_at=
omic_state *state,
>  	 * WA for platforms where async address update enable bit
>  	 * is double buffered and only latched at start of vblank.
>  	 */
> -	if (old_crtc_state->uapi.async_flip && !new_crtc_state->uapi.async_flip)
> -		intel_crtc_async_flip_disable_wa(state, crtc);
> +	if (old_crtc_state->uapi.async_flip &&
> +	    !new_crtc_state->uapi.async_flip &&
> +	    intel_crtc_async_flip_disable_wa(state, crtc))
> +		need_vblank_wait =3D true;
> +
> +	if (need_vblank_wait)
> +		intel_crtc_wait_for_next_vblank(crtc);
>  }
>=20=20
>  static void intel_crtc_disable_planes(struct intel_atomic_state *state,

--=20
Jani Nikula, Intel Open Source Graphics Center
