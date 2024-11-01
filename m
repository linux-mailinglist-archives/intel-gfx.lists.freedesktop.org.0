Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F0A9B8F33
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:30:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA25D10E995;
	Fri,  1 Nov 2024 10:30:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jHwXl4lR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0893A10E995
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 10:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730457008; x=1761993008;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=e4Bt1tdKLZ5UFxBCY5P3Mi9KkWHLzhKNy1BnQv9I5OE=;
 b=jHwXl4lRMDQ2/t7zCIhi7yd9xlQMaOsCFImHZIxkTcWziLp++l2AOldx
 eM4y6iedevcG3hKJCKKkIoG/QKLJKTyOpGlWQz8VVeXb5GvbqNDEqNy/l
 bvC8MpZqTsXPxDz1avv99dHLld6/tF0x1IsT2g4EV2HA6Tg9Jf12P65CR
 9N2G9R/Lsg8LWqod5PMup091gVZ+pVgij4TSLiAmsR7yYEUURxgb5bOra
 hYsVw35n7zJFnRwT7lKKofNEUPiBnkQS8BeV8NZDbNz/A5xJc5Hoqi1D0
 LJwEuBssaBzAc8fhT3tAYu7LVGpTujlQ0QLrZr50fQhFElGxEZDjbcL6H A==;
X-CSE-ConnectionGUID: KlzvPiOSSiK8m/nydzJYNA==
X-CSE-MsgGUID: AMjUxaPoROKFsfrrlmG8AA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30407797"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30407797"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:30:08 -0700
X-CSE-ConnectionGUID: dJsAoOAgR/Gwdw8shq8EEg==
X-CSE-MsgGUID: Bq7WA+lyS6ODQTwI188NpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="113711266"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:30:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/6] drm/i915: Extract mbus_ctl_join_update()
In-Reply-To: <20241031155646.15165-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
 <20241031155646.15165-5-ville.syrjala@linux.intel.com>
Date: Fri, 01 Nov 2024 12:30:02 +0200
Message-ID: <87a5ejjlg5.fsf@intel.com>
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
> We'll be wanting reprogram the MBUS_CTL register during an

*to* :)

And the same nitpick about intel_display.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> upcoming MBUS sanitation stage. Extract the reprogramming
> into a helper that doesn't depend on the full atomic state
> so that it can be reused.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 34 ++++++++++++--------
>  1 file changed, 21 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 8a31508f94bb..2eefeff6693a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3427,22 +3427,13 @@ static enum pipe intel_mbus_joined_pipe(struct in=
tel_atomic_state *state,
>  		return INVALID_PIPE;
>  }
>=20=20
> -static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state,
> -					enum pipe pipe)
> +static void mbus_ctl_join_update(struct drm_i915_private *i915,
> +				 const struct intel_dbuf_state *dbuf_state,
> +				 enum pipe pipe)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> -	const struct intel_dbuf_state *old_dbuf_state =3D
> -		intel_atomic_get_old_dbuf_state(state);
> -	const struct intel_dbuf_state *new_dbuf_state =3D
> -		intel_atomic_get_new_dbuf_state(state);
>  	u32 mbus_ctl;
>=20=20
> -	drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s (pipe: %c)\n",
> -		    str_yes_no(old_dbuf_state->joined_mbus),
> -		    str_yes_no(new_dbuf_state->joined_mbus),
> -		    pipe !=3D INVALID_PIPE ? pipe_name(pipe) : '*');
> -
> -	if (new_dbuf_state->joined_mbus)
> +	if (dbuf_state->joined_mbus)
>  		mbus_ctl =3D MBUS_HASHING_MODE_1x4 | MBUS_JOIN;
>  	else
>  		mbus_ctl =3D MBUS_HASHING_MODE_2x2;
> @@ -3457,6 +3448,23 @@ static void intel_dbuf_mbus_join_update(struct int=
el_atomic_state *state,
>  		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
>  }
>=20=20
> +static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state,
> +					enum pipe pipe)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
> +	const struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +
> +	drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s (pipe: %c)\n",
> +		    str_yes_no(old_dbuf_state->joined_mbus),
> +		    str_yes_no(new_dbuf_state->joined_mbus),
> +		    pipe !=3D INVALID_PIPE ? pipe_name(pipe) : '*');
> +
> +	mbus_ctl_join_update(i915, new_dbuf_state, pipe);
> +}
> +
>  void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state)
>  {
>  	const struct intel_dbuf_state *new_dbuf_state =3D

--=20
Jani Nikula, Intel
