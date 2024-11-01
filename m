Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E48E79B8F24
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA3910E992;
	Fri,  1 Nov 2024 10:27:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LvM/y5im";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 185D310E992
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 10:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730456832; x=1761992832;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=wJ12pgEJjhNRAlwT7L7fVd+e8QyhrWD5sJMCL4BzYm8=;
 b=LvM/y5imPyuYMXvqt6SLjIPYGepTXpJ33V+aotHpC5syNhC7iLnkJV/3
 sY7fUtVx7N1jmrWBtalZvgVH6QSecxxhMoVJV2NQF4BzbK6o5srfs7SNw
 sBpvjvozlNYUpwj+UziVhnM4AfXj7T53mzg+x/NigeW8lTdrSJu60FkpI
 6Gk7zE867NGMb/GGnqzZOp0d+BUllOuT2WrbM2QNMcDNVPLc0wVvkmM/h
 IgbVDfWTOwIDHYKTe4aY5YodGfxJ4QazvRxl6/CNl2x0qhmo9knyoc/qj
 ruRUZVvz6NnTH7MGU/Sn12pzVfcSCX2Nuyfpyf5RL9oQcYako/KH0MEEY Q==;
X-CSE-ConnectionGUID: vDkdDiWcTb6YE2uWY2ZosQ==
X-CSE-MsgGUID: GSQvi2SKQNq4whNPlYEixw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30407639"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30407639"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:27:12 -0700
X-CSE-ConnectionGUID: o7ukbAp8TpWMwU38T4YVIg==
X-CSE-MsgGUID: +FmjirWMQSuvPVRLoiZVMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="113711068"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:27:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/6] drm/i915: Extract pipe_mbus_dbox_ctl()
In-Reply-To: <20241031155646.15165-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
 <20241031155646.15165-3-ville.syrjala@linux.intel.com>
Date: Fri, 01 Nov 2024 12:27:07 +0200
Message-ID: <87frobjll0.fsf@intel.com>
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

On Thu, 31 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We'll be wanting reprogram the PIPE_MBUS_DBOX_CTL registers

wanting *to* reprogram

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> during an upcoming MBUS sanitation stage. To make that easier
> extract a helper that computes the full register value for us.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 63 +++++++++++---------
>  1 file changed, 34 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 92794dfbd3bd..7a7caaf7e87d 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3271,23 +3271,12 @@ static bool xelpdp_is_only_pipe_per_dbuf_bank(enu=
m pipe pipe, u8 active_pipes)
>  	return false;
>  }
>=20=20
> -static void intel_mbus_dbox_update(struct intel_atomic_state *state)
> +static u32 pipe_mbus_dbox_ctl(const struct intel_crtc *crtc,
> +			      const struct intel_dbuf_state *dbuf_state)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> -	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
> -	const struct intel_crtc *crtc;
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	u32 val =3D 0;
>=20=20
> -	if (DISPLAY_VER(i915) < 11)
> -		return;
> -
> -	new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
> -	old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
> -	if (!new_dbuf_state ||
> -	    (new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mbus &&
> -	     new_dbuf_state->active_pipes =3D=3D old_dbuf_state->active_pipes))
> -		return;
> -
>  	if (DISPLAY_VER(i915) >=3D 14)
>  		val |=3D MBUS_DBOX_I_CREDIT(2);
>=20=20
> @@ -3298,12 +3287,12 @@ static void intel_mbus_dbox_update(struct intel_a=
tomic_state *state)
>  	}
>=20=20
>  	if (DISPLAY_VER(i915) >=3D 14)
> -		val |=3D new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(12) :
> -						     MBUS_DBOX_A_CREDIT(8);
> +		val |=3D dbuf_state->joined_mbus ?
> +			MBUS_DBOX_A_CREDIT(12) : MBUS_DBOX_A_CREDIT(8);
>  	else if (IS_ALDERLAKE_P(i915))
>  		/* Wa_22010947358:adl-p */
> -		val |=3D new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
> -						     MBUS_DBOX_A_CREDIT(4);
> +		val |=3D dbuf_state->joined_mbus ?
> +			MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
>  	else
>  		val |=3D MBUS_DBOX_A_CREDIT(2);
>=20=20
> @@ -3320,19 +3309,35 @@ static void intel_mbus_dbox_update(struct intel_a=
tomic_state *state)
>  		val |=3D MBUS_DBOX_B_CREDIT(8);
>  	}
>=20=20
> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->acti=
ve_pipes) {
> -		u32 pipe_val =3D val;
> +	if (DISPLAY_VERx100(i915) =3D=3D 1400) {
> +		if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe, dbuf_state->active_p=
ipes))
> +			val |=3D MBUS_DBOX_BW_8CREDITS_MTL;
> +		else
> +			val |=3D MBUS_DBOX_BW_4CREDITS_MTL;
> +	}
>=20=20
> -		if (DISPLAY_VERx100(i915) =3D=3D 1400) {
> -			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
> -							      new_dbuf_state->active_pipes))
> -				pipe_val |=3D MBUS_DBOX_BW_8CREDITS_MTL;
> -			else
> -				pipe_val |=3D MBUS_DBOX_BW_4CREDITS_MTL;
> -		}
> +	return val;
> +}
>=20=20
> -		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), pipe_val);
> -	}
> +static void intel_mbus_dbox_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
> +	const struct intel_crtc *crtc;
> +
> +	if (DISPLAY_VER(i915) < 11)
> +		return;
> +
> +	new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
> +	old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
> +	if (!new_dbuf_state ||
> +	    (new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mbus &&
> +	     new_dbuf_state->active_pipes =3D=3D old_dbuf_state->active_pipes))
> +		return;
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->acti=
ve_pipes)
> +		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe),
> +			       pipe_mbus_dbox_ctl(crtc, new_dbuf_state));
>  }
>=20=20
>  int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *st=
ate,

--=20
Jani Nikula, Intel
