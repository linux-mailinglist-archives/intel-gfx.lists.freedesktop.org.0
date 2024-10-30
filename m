Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DA99B616D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:26:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAD4510E2B5;
	Wed, 30 Oct 2024 11:26:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUdbH2e6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57B0310E2B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730287574; x=1761823574;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=VlSbbZ54AzOIEbqrUZBAIsDuSVPk4xLoGrxC2VE42Uk=;
 b=kUdbH2e6H1pRYrLSa9ts4lYJJh7wmSzHyldUdYv71l2ZIdXpyzw8XBYs
 fiPSzpAbWN5NYrxJD7s+aOxjfSb1KBKkhJbpbd0SVY8kt3De84U1EuloN
 HP/74TwFlOp14DO+b4k3zRxYsandB6pj+urrTAOw+ZugJCpomiBlVCyVV
 ts+dMBQsALxKeq1TUJ2ma/jiispvOkXN0cV/a8d2LgZ/w4bjbiPAG9Kur
 fkKE0RbPd7dbWyQ2agrznpYpyLgJNutOAfCvtW+aNKqHcJOCrgZhRQfIk
 D1PpOumxkfOB9PFWA+zi/ZWKHxu4yk2pv7SOX72Kag26pSXsgNTKzRrPD A==;
X-CSE-ConnectionGUID: Gu/qLKs+RVKgWOXJYEdkww==
X-CSE-MsgGUID: FiDg1NyqTJCsUTxgeIQgjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29941444"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29941444"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:26:14 -0700
X-CSE-ConnectionGUID: iXHo+DsUTY6XzX1lhzd39g==
X-CSE-MsgGUID: +koQOkSAQ6SiVtZ/fuapCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="87429264"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:26:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 03/11] drm/i915/cdclk: Extract hsw_ips_min_cdclk()
In-Reply-To: <20241029215217.3697-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-4-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:26:09 +0200
Message-ID: <87o731n86m.fsf@intel.com>
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
> Pull the whole BDW IPS min CDCLK stuff into the IPS code
> so that all the details around IPS are contained in once
> place.
>
> Note that while
> - min_cdclk =3D DIV_ROUND_UP(min_cdclk * 100, 95);
> vs.
> + min_cdclk =3D max(DIV_ROUND_UP(crtc_state->pixel_rate * 100, 95), min_c=
dclk)
> may look different, they are in fact the same because
> min_cdclk=3D=3Dcrtc_state->pixel_rate at this point in
> intel_crtc_compute_min_cdclk() on BDW.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c     | 16 +++++++++++++++-
>  drivers/gpu/drm/i915/display/hsw_ips.h     |  6 +++---
>  drivers/gpu/drm/i915/display/intel_cdclk.c |  5 +----
>  3 files changed, 19 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i91=
5/display/hsw_ips.c
> index c571c6e76d4a..5a0fc9f2bd6f 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -186,7 +186,7 @@ bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
>  	return HAS_IPS(to_i915(crtc->base.dev)) && crtc->pipe =3D=3D PIPE_A;
>  }
>=20=20
> -bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e)
> +static bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *cr=
tc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> @@ -215,6 +215,20 @@ bool hsw_crtc_state_ips_capable(const struct intel_c=
rtc_state *crtc_state)
>  	return true;
>  }
>=20=20
> +int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +
> +	if (!IS_BROADWELL(i915))
> +		return 0;
> +
> +	if (!hsw_crtc_state_ips_capable(crtc_state))
> +		return 0;
> +
> +	/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
> +	return DIV_ROUND_UP(crtc_state->pixel_rate * 100, 95);
> +}
> +
>  int hsw_ips_compute_config(struct intel_atomic_state *state,
>  			   struct intel_crtc *crtc)
>  {
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.h b/drivers/gpu/drm/i91=
5/display/hsw_ips.h
> index 35364228e1c1..7af12f88a8ce 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.h
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.h
> @@ -19,7 +19,7 @@ bool hsw_ips_pre_update(struct intel_atomic_state *stat=
e,
>  void hsw_ips_post_update(struct intel_atomic_state *state,
>  			 struct intel_crtc *crtc);
>  bool hsw_crtc_supports_ips(struct intel_crtc *crtc);
> -bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e);
> +int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state);
>  int hsw_ips_compute_config(struct intel_atomic_state *state,
>  			   struct intel_crtc *crtc);
>  void hsw_ips_get_config(struct intel_crtc_state *crtc_state);
> @@ -42,9 +42,9 @@ static inline bool hsw_crtc_supports_ips(struct intel_c=
rtc *crtc)
>  {
>  	return false;
>  }
> -static inline bool hsw_crtc_state_ips_capable(const struct intel_crtc_st=
ate *crtc_state)
> +static inline int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_=
state)
>  {
> -	return false;
> +	return 0;
>  }
>  static inline int hsw_ips_compute_config(struct intel_atomic_state *stat=
e,
>  					 struct intel_crtc *crtc)
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 977fcdaa7372..3103ecab980c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2857,10 +2857,7 @@ int intel_crtc_compute_min_cdclk(const struct inte=
l_crtc_state *crtc_state)
>  		return 0;
>=20=20
>  	min_cdclk =3D intel_pixel_rate_to_cdclk(crtc_state);
> -
> -	/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
> -	if (IS_BROADWELL(dev_priv) && hsw_crtc_state_ips_capable(crtc_state))
> -		min_cdclk =3D DIV_ROUND_UP(min_cdclk * 100, 95);
> +	min_cdclk =3D max(hsw_ips_min_cdclk(crtc_state), min_cdclk);
>=20=20
>  	/* BSpec says "Do not use DisplayPort with CDCLK less than 432 MHz,
>  	 * audio enabled, port width x4, and link rate HBR2 (5.4 GHz), or else

--=20
Jani Nikula, Intel
