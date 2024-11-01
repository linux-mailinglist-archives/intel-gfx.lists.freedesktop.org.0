Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3739B8F32
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:29:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A616E10E994;
	Fri,  1 Nov 2024 10:29:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qd2EUrDn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF1810E994
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 10:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730456948; x=1761992948;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Pl0iae61k0W0RcBGyQF1cTYFVyJYinwCOILkIG52+fg=;
 b=Qd2EUrDnQkLvovAZTF3lyeoVMK5I8YiNA59N7JVtOsc5WJWXc7XgS4Fg
 giU8X4DtO1pGHOqjn4mgbUzH7e+Kgz49lxYUqEcxqTn3oLstJrxPQoByz
 klGKWTFHuJUI0MlGucS86o/4FTV4k0jNZUupRGcPp4b5QYPdI9X95B4ZL
 S97ZAI0XNTLpHB64YzA7ozsUkLf7+g1SyoB1tXg8kFFXWO1c7I4zucD0l
 TbQ+2Y0rvV3ztvEqSp8wlnL0Odsmst363crsLuOF0MB31NXCaMi34GR7I
 t4VP0CaUsS8EhKQI3wfc0PoU50jOnowjJoFl+yPz5h1wJtiDopGTINVt6 Q==;
X-CSE-ConnectionGUID: DcQCkwivQNCY6fThpCUSLQ==
X-CSE-MsgGUID: Xi9hZG0fR7GpT+cByjYBtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33911041"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33911041"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:29:08 -0700
X-CSE-ConnectionGUID: e20U2cf3TemdQ9uY0+aAWw==
X-CSE-MsgGUID: lWavLs+JRxCccdZclQC4/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="87465505"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:29:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915: Extract pipe_mbus_dbox_ctl_update()
In-Reply-To: <20241031155646.15165-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
 <20241031155646.15165-4-ville.syrjala@linux.intel.com>
Date: Fri, 01 Nov 2024 12:29:03 +0200
Message-ID: <87cyjfjlhs.fsf@intel.com>
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

I would've wanted to see conversion to struct intel_display here too, or
at least a mention we're keeping it this way for backports, or
something. A patch on top changing everything in one go is fine too.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> during an upcoming MBUS sanitation stage. Extract the reprogramming
> loop into a helper that doesn't depend on the full atomic state
> so that it can be reused.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 7a7caaf7e87d..8a31508f94bb 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3319,11 +3319,20 @@ static u32 pipe_mbus_dbox_ctl(const struct intel_=
crtc *crtc,
>  	return val;
>  }
>=20=20
> +static void pipe_mbus_dbox_ctl_update(struct drm_i915_private *i915,
> +				      const struct intel_dbuf_state *dbuf_state)
> +{
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, dbuf_state->active_p=
ipes)
> +		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe),
> +			       pipe_mbus_dbox_ctl(crtc, dbuf_state));
> +}
> +
>  static void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
> -	const struct intel_crtc *crtc;
>=20=20
>  	if (DISPLAY_VER(i915) < 11)
>  		return;
> @@ -3335,9 +3344,7 @@ static void intel_mbus_dbox_update(struct intel_ato=
mic_state *state)
>  	     new_dbuf_state->active_pipes =3D=3D old_dbuf_state->active_pipes))
>  		return;
>=20=20
> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->acti=
ve_pipes)
> -		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe),
> -			       pipe_mbus_dbox_ctl(crtc, new_dbuf_state));
> +	pipe_mbus_dbox_ctl_update(i915, new_dbuf_state);
>  }
>=20=20
>  int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *st=
ate,

--=20
Jani Nikula, Intel
