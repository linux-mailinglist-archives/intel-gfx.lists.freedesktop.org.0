Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF689B6215
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:41:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0D8610E092;
	Wed, 30 Oct 2024 11:41:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gLW1l4Cz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49CAC10E092
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288497; x=1761824497;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ImDw2K01aJFG6G02KuNb/G9/k3tlKnH/ZDqWSmOcky0=;
 b=gLW1l4Czm5st3ylG4qRknWXwip0awhqkGp2MDGbbEOBLTT/ojiGx40HS
 z/ltPfb6qG5s56FEApI0l13TioyDuWAEo2r6A+yg4QJFulhZojWUetT/C
 dt2l2oD15gZqZViPT5wy6ZU7ObMYSJtssds66f8QQwW7xpflY/Pm7ng2Q
 7JGPZbpce+I32qAYcufg4xoANw7ZZGidw0r524i7WEo5RofuzwD4o0M+u
 RxvnPgmJNboQzuz6K04apDhTqVm2pq7f/r4Og1zbrD1ANSSd6IYhibu0V
 2DvrYr5bju5g3wTjvEJP2md1p3C6hTDeaZ6ZEX8Vimwsod+MxuX96B74/ A==;
X-CSE-ConnectionGUID: zekyPSHpQpuOFPxiUHcPHQ==
X-CSE-MsgGUID: 4Kl0vA6aTKmd7XHR540hfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="32824926"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="32824926"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:41:37 -0700
X-CSE-ConnectionGUID: Js26a+4VRmqFiVeLqzTtbg==
X-CSE-MsgGUID: N09eEXAcSgaC/1q+mYhTLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82602863"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:41:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/11] drm/i915/cdclk: Unify cdclk max() parameter order
In-Reply-To: <20241029215217.3697-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-12-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:41:32 +0200
Message-ID: <871pzxn7gz.fsf@intel.com>
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
> In some places we do
>  min_cdclk =3D max(min_cdclk, other_min_cdclk)
> and in other places we have the arguments swapped as
>  min_cdclk =3D max(other_min_cdclk, min_cdclk)
>
> Unify everyone to use the first order of arguments, because
> it looks cleaner, especially within intel_crtc_compute_min_cdclk()
> which is doing a lot of these back-to-back.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c |  8 ++++----
>  drivers/gpu/drm/i915/display/intel_bw.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 18 +++++++++---------
>  3 files changed, 14 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index af0bfdc44072..047cc5a2ef1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -997,10 +997,10 @@ int intel_audio_min_cdclk(const struct intel_crtc_s=
tate *crtc_state)
>  	    crtc_state->lane_count =3D=3D 4) {
>  		if (DISPLAY_VER(display) =3D=3D 10) {
>  			/* Display WA #1145: glk */
> -			min_cdclk =3D max(316800, min_cdclk);
> +			min_cdclk =3D max(min_cdclk, 316800);
>  		} else if (DISPLAY_VER(display) =3D=3D 9 || IS_BROADWELL(dev_priv)) {
>  			/* Display WA #1144: skl,bxt */
> -			min_cdclk =3D max(432000, min_cdclk);
> +			min_cdclk =3D max(min_cdclk, 432000);
>  		}
>  	}
>=20=20
> @@ -1009,7 +1009,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_s=
tate *crtc_state)
>  	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
>  	 */
>  	if (DISPLAY_VER(display) >=3D 9)
> -		min_cdclk =3D max(2 * 96000, min_cdclk);
> +		min_cdclk =3D max(min_cdclk, 2 * 96000);
>=20=20
>  	/*
>  	 * "For DP audio configuration, cdclk frequency shall be set to
> @@ -1020,7 +1020,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_s=
tate *crtc_state)
>  	 */
>  	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
>  	    intel_crtc_has_dp_encoder(crtc_state))
> -		min_cdclk =3D max(crtc_state->port_clock, min_cdclk);
> +		min_cdclk =3D max(min_cdclk, crtc_state->port_clock);
>=20=20
>  	return min_cdclk;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 47036d4abb33..5f91b009df0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -1256,7 +1256,7 @@ int intel_bw_min_cdclk(struct drm_i915_private *i91=
5,
>  	min_cdclk =3D intel_bw_dbuf_min_cdclk(i915, bw_state);
>=20=20
>  	for_each_pipe(i915, pipe)
> -		min_cdclk =3D max(bw_state->min_cdclk[pipe], min_cdclk);
> +		min_cdclk =3D max(min_cdclk, bw_state->min_cdclk[pipe]);
>=20=20
>  	return min_cdclk;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 9f38dd14b2d8..f16a37ef7316 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2799,7 +2799,7 @@ static int intel_planes_min_cdclk(const struct inte=
l_crtc_state *crtc_state)
>  	int min_cdclk =3D 0;
>=20=20
>  	for_each_intel_plane_on_crtc(display->drm, crtc, plane)
> -		min_cdclk =3D max(crtc_state->min_cdclk[plane->id], min_cdclk);
> +		min_cdclk =3D max(min_cdclk, crtc_state->min_cdclk[plane->id]);
>=20=20
>  	return min_cdclk;
>  }
> @@ -2812,10 +2812,10 @@ int intel_crtc_compute_min_cdclk(const struct int=
el_crtc_state *crtc_state)
>  		return 0;
>=20=20
>  	min_cdclk =3D intel_pixel_rate_to_cdclk(crtc_state);
> -	min_cdclk =3D max(hsw_ips_min_cdclk(crtc_state), min_cdclk);
> -	min_cdclk =3D max(intel_audio_min_cdclk(crtc_state), min_cdclk);
> -	min_cdclk =3D max(vlv_dsi_min_cdclk(crtc_state), min_cdclk);
> -	min_cdclk =3D max(intel_planes_min_cdclk(crtc_state), min_cdclk);
> +	min_cdclk =3D max(min_cdclk, hsw_ips_min_cdclk(crtc_state));
> +	min_cdclk =3D max(min_cdclk, intel_audio_min_cdclk(crtc_state));
> +	min_cdclk =3D max(min_cdclk, vlv_dsi_min_cdclk(crtc_state));
> +	min_cdclk =3D max(min_cdclk, intel_planes_min_cdclk(crtc_state));
>  	min_cdclk =3D max(min_cdclk, intel_vdsc_min_cdclk(crtc_state));
>=20=20
>  	return min_cdclk;
> @@ -2868,7 +2868,7 @@ static int intel_compute_min_cdclk(struct intel_ato=
mic_state *state)
>  	min_cdclk =3D max(cdclk_state->force_min_cdclk,
>  			cdclk_state->bw_min_cdclk);
>  	for_each_pipe(display, pipe)
> -		min_cdclk =3D max(cdclk_state->min_cdclk[pipe], min_cdclk);
> +		min_cdclk =3D max(min_cdclk, cdclk_state->min_cdclk[pipe]);
>=20=20
>  	/*
>  	 * Avoid glk_force_audio_cdclk() causing excessive screen
> @@ -2880,7 +2880,7 @@ static int intel_compute_min_cdclk(struct intel_ato=
mic_state *state)
>  	 */
>  	if (IS_GEMINILAKE(dev_priv) && cdclk_state->active_pipes &&
>  	    !is_power_of_2(cdclk_state->active_pipes))
> -		min_cdclk =3D max(2 * 96000, min_cdclk);
> +		min_cdclk =3D max(min_cdclk, 2 * 96000);
>=20=20
>  	if (min_cdclk > display->cdclk.max_cdclk_freq) {
>  		drm_dbg_kms(display->drm,
> @@ -2936,8 +2936,8 @@ static int bxt_compute_min_voltage_level(struct int=
el_atomic_state *state)
>=20=20
>  	min_voltage_level =3D 0;
>  	for_each_pipe(display, pipe)
> -		min_voltage_level =3D max(cdclk_state->min_voltage_level[pipe],
> -					min_voltage_level);
> +		min_voltage_level =3D max(min_voltage_level,
> +					cdclk_state->min_voltage_level[pipe]);
>=20=20
>  	return min_voltage_level;
>  }

--=20
Jani Nikula, Intel
