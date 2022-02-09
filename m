Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DEC4AF276
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:15:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B4C10E237;
	Wed,  9 Feb 2022 13:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7B2510E237
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 13:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644412547; x=1675948547;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=OGvPOl9zr7BM2xKCJTC8+0e+6vmOeq/MVorlC8oF2yw=;
 b=Segw1Xr2GzNUijUl/UBiIWHA3XElHUMdAX5utH9uV8Opo+uEjhZX6PYe
 bv54lNvXeMretaX5fRGC+UVyaq0cZYBpjZFx2/m3d2kxeFvM585XjJyi8
 E8tZgp6/Mc1wCN+ii9WNN16X2QnG+VMajnAQwdF4797yvL+7p0FE+3c74
 M7UdrKz+vKokXVcf+8eag8LgsvuYpSRCZsQIMau92gEEm8xxmuaKvgZiV
 tv0MOSrlh6KKHR1HUe+zwn4CQnbxBqyhRNpVVPV8/YZJJoXWR5hYEn2Tr
 8ZBhJ7NKJ0I6ST1Oqt2OdoeDI33manwiO92DkYe3QlzxBWGH1Zj1E7NRf w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="246783983"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="246783983"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:15:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="701249115"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:15:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
Date: Wed, 09 Feb 2022 15:15:43 +0200
Message-ID: <874k58p4e8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Move vblank waits out from
 IPS code
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
> Hoist the IPS related vblank waits one level up. Later on we'll
> want to consolidate all the potential pre-plane update vblank
> waits into one so we can't be hiding any in low level code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_display.h |  2 +-
>  2 files changed, 13 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7f512f9e9e5c..5cc142a83ad7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -752,8 +752,9 @@ void intel_plane_disable_noatomic(struct intel_crtc *=
crtc,
>  	crtc_state->data_rate[plane->id] =3D 0;
>  	crtc_state->min_cdclk[plane->id] =3D 0;
>=20=20
> -	if (plane->id =3D=3D PLANE_PRIMARY)
> -		hsw_disable_ips(crtc_state);
> +	if (plane->id =3D=3D PLANE_PRIMARY &&
> +	    hsw_disable_ips(crtc_state))
> +		intel_crtc_wait_for_next_vblank(crtc);
>=20=20
>  	/*
>  	 * Vblank time updates from the shadow to live plane control register
> @@ -1127,14 +1128,15 @@ void hsw_enable_ips(const struct intel_crtc_state=
 *crtc_state)
>  	}
>  }
>=20=20
> -void hsw_disable_ips(const struct intel_crtc_state *crtc_state)
> +bool hsw_disable_ips(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	bool need_vblank_wait =3D false;
>=20=20
>  	if (!crtc_state->ips_enabled)
> -		return;
> +		return need_vblank_wait;
>=20=20
>  	if (IS_BROADWELL(dev_priv)) {
>  		drm_WARN_ON(dev,
> @@ -1153,7 +1155,9 @@ void hsw_disable_ips(const struct intel_crtc_state =
*crtc_state)
>  	}
>=20=20
>  	/* We need to wait for a vblank before we can disable the plane. */
> -	intel_crtc_wait_for_next_vblank(crtc);
> +	need_vblank_wait =3D true;
> +
> +	return need_vblank_wait;
>  }
>=20=20
>  static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
> @@ -1426,8 +1430,9 @@ static void intel_pre_plane_update(struct intel_ato=
mic_state *state,
>=20=20
>  	intel_psr_pre_plane_update(state, crtc);
>=20=20
> -	if (hsw_pre_update_disable_ips(old_crtc_state, new_crtc_state))
> -		hsw_disable_ips(old_crtc_state);
> +	if (hsw_pre_update_disable_ips(old_crtc_state, new_crtc_state) &&
> +	    hsw_disable_ips(old_crtc_state))
> +		intel_crtc_wait_for_next_vblank(crtc);
>=20=20
>  	if (intel_fbc_pre_update(state, crtc))
>  		intel_crtc_wait_for_next_vblank(crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 457738aeee3e..8f9bec36898e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -634,7 +634,7 @@ void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n =
*m_n);
>  bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e);
>  void hsw_enable_ips(const struct intel_crtc_state *crtc_state);
> -void hsw_disable_ips(const struct intel_crtc_state *crtc_state);
> +bool hsw_disable_ips(const struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain intel_port_to_power_domain(enum port por=
t);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);

--=20
Jani Nikula, Intel Open Source Graphics Center
