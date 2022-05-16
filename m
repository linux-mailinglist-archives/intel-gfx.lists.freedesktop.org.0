Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CA85284F5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 15:08:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C4CE10FC4B;
	Mon, 16 May 2022 13:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E03910FC29
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652706496; x=1684242496;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=LbERdKKzOUcn6vtsyGXoF1qu3F0W5TZ6Ww4WGUiG060=;
 b=Sx+e8PrAPcdF0PhevfLQWvonXMlsi55C671LwJG8fhrzX4n18uIoahCo
 9qOhRf0CwVIsni8GR7W3W9Cm1tbQzP3s3Pq7jEh8wRxcKMdw01EQwGpRY
 SgbQi3TiulMo6NwoltZLOJUexf8R7dwD+vvVvpTVmxHl5Y+SlFUernO5h
 mGKgfuvt5skebV4m78RwiBaNLKaSWbJPKQ68pkoMN8WQEcdMEQgxdfdyl
 wbt2hDPkh9DnoqKxZXVSP8tQepdDRC9A4dNsx8YQEbBv6H0JVOLsX9PwV
 uAtZZRoZA2bHX0h99/oQBeSKCpkNAa0AGKJIH1tedOtujgltArmYxVvn4 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="270952840"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="270952840"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 06:08:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="568309229"
Received: from akuriata-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.145.127])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 06:08:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-5-ville.syrjala@linux.intel.com>
Date: Mon, 16 May 2022 16:07:59 +0300
Message-ID: <87ee0tfwwg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/26] drm/i915: Reassign DPLLs only for
 crtcs going throug .compute_config()
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Only reassign the pipe's DPLL if it's going through a full
> .compute_config() cycle. If OTOH it's just getting modeset
> eg. in order to change cdclk there doesn't seem much point in
> picking a new DPLL for it.
>
> This should also prevent .get_dplls() from seeing a funky port_clock
> for DP even in cases where the readout produces a non-standard
> clock and we (for some reason) have decided to not fully recompute
> the state to remedy the situation.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

A bit unsure if I can appreciate all the subtleties here, but

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 17 +----------------
>  drivers/gpu/drm/i915/display/intel_dpll.c    |  6 ++----
>  2 files changed, 3 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5e50e0d56088..7d488d320762 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6955,20 +6955,6 @@ intel_crtc_update_active_timings(const struct inte=
l_crtc_state *crtc_state)
>  	}
>  }
>=20=20
> -static void intel_modeset_clear_plls(struct intel_atomic_state *state)
> -{
> -	struct intel_crtc_state *new_crtc_state;
> -	struct intel_crtc *crtc;
> -	int i;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> -		if (!intel_crtc_needs_modeset(new_crtc_state))
> -			continue;
> -
> -		intel_release_shared_dplls(state, crtc);
> -	}
> -}
> -
>  /*
>   * This implements the workaround described in the "notes" section of th=
e mode
>   * set sequence documentation. When going from no pipes or single pipe to
> @@ -7802,6 +7788,7 @@ static int intel_atomic_check(struct drm_device *de=
v,
>  			if (ret)
>  				goto fail;
>=20=20
> +			intel_release_shared_dplls(state, crtc);
>  			continue;
>  		}
>=20=20
> @@ -7849,8 +7836,6 @@ static int intel_atomic_check(struct drm_device *de=
v,
>  		ret =3D intel_modeset_calc_cdclk(state);
>  		if (ret)
>  			return ret;
> -
> -		intel_modeset_clear_plls(state);
>  	}
>=20=20
>  	ret =3D intel_atomic_check_crtcs(state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 2b3f72550e5a..afd30c6cc34c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1436,11 +1436,9 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_a=
tomic_state *state,
>  	int ret;
>=20=20
>  	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
> +	drm_WARN_ON(&i915->drm, !crtc_state->hw.enable && crtc_state->shared_dp=
ll);
>=20=20
> -	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
> -		return 0;
> -
> -	if (!crtc_state->hw.enable)
> +	if (!crtc_state->hw.enable || crtc_state->shared_dpll)
>  		return 0;
>=20=20
>  	if (!i915->dpll_funcs->crtc_get_shared_dpll)

--=20
Jani Nikula, Intel Open Source Graphics Center
