Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE174D2C17
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 10:34:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD31810E11B;
	Wed,  9 Mar 2022 09:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1BC10E11B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 09:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646818466; x=1678354466;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=FPAtWmZHNjgO2INZs2NEJOMMJ5Frwe0Pk9oYkKOGjqE=;
 b=REcMZqFcmaCBYDrJ4b6bVdxZydSyfkYL8/NqP45Sywb+YNb+Y20l2K6/
 3a0I5kqRtMC5zjAcGmcyABQAI0nhWIrOapJgbFlkchbQCR4hMEFGTaQeL
 2NNXgWLmdZnJQDCLkM2wJeVV0iSSYOhKQRNGNYdjQKXY0Pcu/aAbouwtt
 2s/eDvmVN63WSqj2y3EA2gqbveEpIM3b8gCvCiuxT4w6Qb2nOd/0Sw1Kr
 hiZ1clznUTTwIEr2gPbwhcHbGo0/eddnHSon8h1uGLwFPMZDjZxK/eeNn
 ANrdBEtvTZuM7Gn1MiGDZLpURVO3tDr5P2v7xHXgqofrAQW8f0FOZzM0c Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="255122515"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="255122515"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:34:14 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="643979639"
Received: from byrnec1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.29.235])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:34:13 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220307233940.4161-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
 <20220307233940.4161-9-ville.syrjala@linux.intel.com>
Date: Wed, 09 Mar 2022 11:34:10 +0200
Message-ID: <87y21jzcz1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 8/8] drm/i915: Remove struct dp_link_dpll
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

On Tue, 08 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> struct dp_link_dpll is a pointless wrapper around struct dpll.
> Just store the desired link rate into struct dpll::dot and
> we're done.
>
> v2: Document the full divider as a proper decimal number on chv
>     Nuke bogus eDP 1.4 comments for chv while at it
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c | 55 +++++++++------------------
>  1 file changed, 17 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 22345051e667..8e1338678d91 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -24,58 +24,37 @@
>  #include "intel_pps.h"
>  #include "vlv_sideband.h"
>=20=20
> -struct dp_link_dpll {
> -	int clock;
> -	struct dpll dpll;
> +static const struct dpll g4x_dpll[] =3D {
> +	{ .dot =3D 162000, .p1 =3D 2, .p2 =3D 10, .n =3D 2, .m1 =3D 23, .m2 =3D=
 8, },
> +	{ .dot =3D 270000, .p1 =3D 1, .p2 =3D 10, .n =3D 1, .m1 =3D 14, .m2 =3D=
 2, },
>  };
>=20=20
> -static const struct dp_link_dpll g4x_dpll[] =3D {
> -	{ 162000,
> -		{ .p1 =3D 2, .p2 =3D 10, .n =3D 2, .m1 =3D 23, .m2 =3D 8 } },
> -	{ 270000,
> -		{ .p1 =3D 1, .p2 =3D 10, .n =3D 1, .m1 =3D 14, .m2 =3D 2 } }
> +static const struct dpll pch_dpll[] =3D {
> +	{ .dot =3D 162000, .p1 =3D 2, .p2 =3D 10, .n =3D 1, .m1 =3D 12, .m2 =3D=
 9, },
> +	{ .dot =3D 270000, .p1 =3D 1, .p2 =3D 10, .n =3D 2, .m1 =3D 14, .m2 =3D=
 8, },
>  };
>=20=20
> -static const struct dp_link_dpll pch_dpll[] =3D {
> -	{ 162000,
> -		{ .p1 =3D 2, .p2 =3D 10, .n =3D 1, .m1 =3D 12, .m2 =3D 9 } },
> -	{ 270000,
> -		{ .p1 =3D 1, .p2 =3D 10, .n =3D 2, .m1 =3D 14, .m2 =3D 8 } }
> +static const struct dpll vlv_dpll[] =3D {
> +	{ .dot =3D 162000, .p1 =3D 3, .p2 =3D 2, .n =3D 5, .m1 =3D 3, .m2 =3D 8=
1, },
> +	{ .dot =3D 270000, .p1 =3D 2, .p2 =3D 2, .n =3D 1, .m1 =3D 2, .m2 =3D 2=
7, },
>  };
>=20=20
> -static const struct dp_link_dpll vlv_dpll[] =3D {
> -	{ 162000,
> -		{ .p1 =3D 3, .p2 =3D 2, .n =3D 5, .m1 =3D 3, .m2 =3D 81 } },
> -	{ 270000,
> -		{ .p1 =3D 2, .p2 =3D 2, .n =3D 1, .m1 =3D 2, .m2 =3D 27 } }
> -};
> -
> -/*
> - * CHV supports eDP 1.4 that have  more link rates.
> - * Below only provides the fixed rate but exclude variable rate.
> - */
> -static const struct dp_link_dpll chv_dpll[] =3D {
> -	/*
> -	 * CHV requires to program fractional division for m2.
> -	 * m2 is stored in fixed point format using formula below
> -	 * (m2_int << 22) | m2_fraction
> -	 */
> -	{ 162000,	/* m2_int =3D 32, m2_fraction =3D 1677722 */
> -		{ .p1 =3D 4, .p2 =3D 2, .n =3D 1, .m1 =3D 2, .m2 =3D 0x819999a } },
> -	{ 270000,	/* m2_int =3D 27, m2_fraction =3D 0 */
> -		{ .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m1 =3D 2, .m2 =3D 0x6c00000 } },
> +static const struct dpll chv_dpll[] =3D {
> +	/* m2 is .22 binary fixed point  */
> +	{ .dot =3D 162000, .p1 =3D 4, .p2 =3D 2, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x819999a /* 32.4 */ },
> +	{ .dot =3D 270000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x6c00000 /* 27.0 */ },
>  };
>=20=20
>  const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
>  {
> -	return IS_CHERRYVIEW(i915) ? &chv_dpll[0].dpll : &vlv_dpll[0].dpll;
> +	return IS_CHERRYVIEW(i915) ? &chv_dpll[0] : &vlv_dpll[0];
>  }
>=20=20
>  void g4x_dp_set_clock(struct intel_encoder *encoder,
>  		      struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	const struct dp_link_dpll *divisor =3D NULL;
> +	const struct dpll *divisor =3D NULL;
>  	int i, count =3D 0;
>=20=20
>  	if (IS_G4X(dev_priv)) {
> @@ -94,8 +73,8 @@ void g4x_dp_set_clock(struct intel_encoder *encoder,
>=20=20
>  	if (divisor && count) {
>  		for (i =3D 0; i < count; i++) {
> -			if (pipe_config->port_clock =3D=3D divisor[i].clock) {
> -				pipe_config->dpll =3D divisor[i].dpll;
> +			if (pipe_config->port_clock =3D=3D divisor[i].dot) {
> +				pipe_config->dpll =3D divisor[i];
>  				pipe_config->clock_set =3D true;
>  				break;
>  			}

--=20
Jani Nikula, Intel Open Source Graphics Center
