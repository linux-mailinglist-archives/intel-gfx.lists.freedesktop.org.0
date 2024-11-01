Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B913B9B8F60
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:39:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D8610E997;
	Fri,  1 Nov 2024 10:39:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mw3QJPt/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAF610E997
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 10:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730457549; x=1761993549;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=39trQpMao9R3K2a43EwvLixtyg+8SivRTmrcDjwQG3w=;
 b=mw3QJPt/s3yiuv9PcUN08mAkRBkYY6zONEL33eoWAij6uu5Gam/osfOQ
 Vy/XbyNsbvIBQG9jnbMZtg/dRTaMTujGh+ZusSXkOFwzw53GSm+d4EU9j
 A+wXUdY6Wf8A5y7ifIUJQ+84f2N2F6rAsvUHlGcKhgdNJDDUDu2mECkJc
 FAS6Zi5jmiy5mwEuhbtRPDtIBaLDvGwX/sNRKvq4jyKz3HbzLlNYZW8Dg
 Jy4KRgUaT+ldOwYRahcH0aXqpPysjpVpOspGEeHCQv2bdEqszUAlLvSFk
 R8SWWjZqSjn4HbEvze/xIei3dqOWlVEciAEfFffubXqTgZspwRepP7yKt w==;
X-CSE-ConnectionGUID: +jGZvV3BS+SM1Fr+oWf3Jw==
X-CSE-MsgGUID: urN3C36+RjOs2msD6aLQjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="55621331"
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="55621331"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:39:09 -0700
X-CSE-ConnectionGUID: D6OIpy2NTdmv/8IzEMEZYQ==
X-CSE-MsgGUID: 5AFov2NGR4Wb6zhsz0a9GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="120385951"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:39:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/6] drm/i915: Sanitize MBUS joining
In-Reply-To: <20241031155646.15165-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
 <20241031155646.15165-6-ville.syrjala@linux.intel.com>
Date: Fri, 01 Nov 2024 12:39:04 +0200
Message-ID: <874j4rjl13.fsf@intel.com>
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
> If the system boots with MBUS joining enabled but we disable
> the relevant pipe during sanitaion we later get into trouble

*sanitation

> as the rest of the code doesn't expect MBUS joining to be
> enabled unless the set of active pipes is in agreement.
>
> We could relax some of the MBUS joining related checks during
> normal atomic commits to let this slide, but that might also
> let some real bugs through. So let's sanitize the MBUS joining
> instead. And in order to keep things more or less in sync we'll
> do the related credit, cdclk/mdclk ratio, etc. updates as well.

Okay, I'm a bit lacking on confidence with this part of the driver, but
it looks sensible. Fingers crossed.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

And the same nitpick about i915 usage.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 29 ++++++++++++++++++--
>  1 file changed, 27 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 2eefeff6693a..98f9e01b2a1c 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3567,6 +3567,29 @@ void intel_dbuf_post_plane_update(struct intel_ato=
mic_state *state)
>  	gen9_dbuf_slices_update(i915, new_slices);
>  }
>=20=20
> +static void skl_mbus_sanitize(struct drm_i915_private *i915)
> +{
> +	struct intel_dbuf_state *dbuf_state =3D
> +		to_intel_dbuf_state(i915->display.dbuf.obj.state);
> +
> +	if (!HAS_MBUS_JOINING(i915))
> +		return;
> +
> +	if (!dbuf_state->joined_mbus ||
> +	    adlp_check_mbus_joined(dbuf_state->active_pipes))
> +		return;
> +
> +	drm_dbg_kms(&i915->drm, "Disabling redundant MBUS joining (active pipes=
 0x%x)\n",
> +		    dbuf_state->active_pipes);
> +
> +	dbuf_state->joined_mbus =3D false;
> +	intel_dbuf_mdclk_cdclk_ratio_update(i915,
> +					    dbuf_state->mdclk_cdclk_ratio,
> +					    dbuf_state->joined_mbus);
> +	pipe_mbus_dbox_ctl_update(i915, dbuf_state);
> +	mbus_ctl_join_update(i915, dbuf_state, INVALID_PIPE);
> +}
> +
>  static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
>  {
>  	const struct intel_dbuf_state *dbuf_state =3D
> @@ -3599,7 +3622,7 @@ static bool skl_dbuf_is_misconfigured(struct drm_i9=
15_private *i915)
>  	return false;
>  }
>=20=20
> -static void skl_wm_sanitize(struct drm_i915_private *i915)
> +static void skl_dbuf_sanitize(struct drm_i915_private *i915)
>  {
>  	struct intel_crtc *crtc;
>=20=20
> @@ -3638,7 +3661,9 @@ static void skl_wm_sanitize(struct drm_i915_private=
 *i915)
>  static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i9=
15)
>  {
>  	skl_wm_get_hw_state(i915);
> -	skl_wm_sanitize(i915);
> +
> +	skl_mbus_sanitize(i915);
> +	skl_dbuf_sanitize(i915);
>  }
>=20=20
>  void intel_wm_state_verify(struct intel_atomic_state *state,

--=20
Jani Nikula, Intel
