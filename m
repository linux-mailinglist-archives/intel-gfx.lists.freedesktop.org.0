Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4814AF280
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:18:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B47B210E237;
	Wed,  9 Feb 2022 13:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B5310E237
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 13:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644412683; x=1675948683;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ox39wVF/r5bkzyhCldUFglji1+T9sRfNLZRvMnrhvLY=;
 b=HDV8gfwp1wUGo7Qb65Ev5qOxIZSAaxsyhwip3hNxE6T8VA3Ijsqd57pT
 lY7211K2Bh+eyO6ZjFN0oD5wtxbeJ6nvKbxeULSWDUnISUoqjML40s9mv
 DRsW3g1MsRHx/O+LRxXUgZdHsKLEUDjJqB17UkdXlqsvdjNeGitM1mddl
 Ij4MZ2SZbYVEBfnkjgCCLNHXMWrM3yPBQPlMwL8DeNsZkMKmyZELUcWxX
 /e+Ag7AZRrHVXh1tnPP8SMyFfBRYBIhgqn1nkv0EcCKZIeIpgfM526euf
 x5cewDyXPlAYNqeviQ5cLbOsPIHtPtTj8cO5amFDDRXcuqNRUHwel9luW A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="236607282"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="236607282"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:18:02 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="541092133"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:18:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220209113526.7595-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
 <20220209113526.7595-2-ville.syrjala@linux.intel.com>
Date: Wed, 09 Feb 2022 15:17:58 +0200
Message-ID: <871r0cp4ah.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Change IPS calling convention
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
> Follow the modern state+crtc calling convention for the IPS
> code as well.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 38 +++++++++++---------
>  1 file changed, 22 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5cc142a83ad7..c5d30c683911 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1170,11 +1170,14 @@ static void intel_crtc_dpms_overlay_disable(struc=
t intel_crtc *crtc)
>  	 */
>  }
>=20=20
> -static bool hsw_pre_update_disable_ips(const struct intel_crtc_state *ol=
d_crtc_state,
> -				       const struct intel_crtc_state *new_crtc_state)
> +static bool hsw_pre_update_disable_ips(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>=20=20
>  	if (!old_crtc_state->ips_enabled)
>  		return false;
> @@ -1197,11 +1200,14 @@ static bool hsw_pre_update_disable_ips(const stru=
ct intel_crtc_state *old_crtc_s
>  	return !new_crtc_state->ips_enabled;
>  }
>=20=20
> -static bool hsw_post_update_enable_ips(const struct intel_crtc_state *ol=
d_crtc_state,
> -				       const struct intel_crtc_state *new_crtc_state)
> +static bool hsw_post_update_enable_ips(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>=20=20
>  	if (!new_crtc_state->ips_enabled)
>  		return false;
> @@ -1325,7 +1331,7 @@ static void intel_post_plane_update(struct intel_at=
omic_state *state,
>  	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
>  		intel_update_watermarks(dev_priv);
>=20=20
> -	if (hsw_post_update_enable_ips(old_crtc_state, new_crtc_state))
> +	if (hsw_post_update_enable_ips(state, crtc))
>  		hsw_enable_ips(new_crtc_state);
>=20=20
>  	intel_fbc_post_update(state, crtc);
> @@ -1430,7 +1436,7 @@ static void intel_pre_plane_update(struct intel_ato=
mic_state *state,
>=20=20
>  	intel_psr_pre_plane_update(state, crtc);
>=20=20
> -	if (hsw_pre_update_disable_ips(old_crtc_state, new_crtc_state) &&
> +	if (hsw_pre_update_disable_ips(state, crtc) &&
>  	    hsw_disable_ips(old_crtc_state))
>  		intel_crtc_wait_for_next_vblank(crtc);
>=20=20
> @@ -2812,12 +2818,12 @@ bool hsw_crtc_state_ips_capable(const struct inte=
l_crtc_state *crtc_state)
>  	return true;
>  }
>=20=20
> -static int hsw_compute_ips_config(struct intel_crtc_state *crtc_state)
> +static int hsw_ips_compute_config(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(crtc_state->uapi.crtc->dev);
> -	struct intel_atomic_state *state =3D
> -		to_intel_atomic_state(crtc_state->uapi.state);
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>=20=20
>  	crtc_state->ips_enabled =3D false;
>=20=20
> @@ -5322,7 +5328,7 @@ static int intel_crtc_atomic_check(struct intel_ato=
mic_state *state,
>  	}
>=20=20
>  	if (HAS_IPS(dev_priv)) {
> -		ret =3D hsw_compute_ips_config(crtc_state);
> +		ret =3D hsw_ips_compute_config(state, crtc);
>  		if (ret)
>  			return ret;
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
