Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA654D2C93
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 10:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D4E89FD7;
	Wed,  9 Mar 2022 09:54:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF73B89FD7
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 09:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646819643; x=1678355643;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=HpmvfAL6ESXuchg2WnxlJ2s6TyyBBbHba3cNtCXYUMc=;
 b=eY+rjQtSGFz0xjBJFpnxUe4V8doAfu7+DEFz+8RtUHiSYcHJWvUnXQif
 J3K2EbCbSt06DA8cjCyb44aP0kP1kd8Anyg2GO7l4oWIdyQAuKW+TUtzs
 ROwaeIsscjzmDasOu7Lsnm5yXcaNOfrgywHjOcOHewvj/cHzimwaFTa58
 zw9f8bCZ0tmMBfrtcKMcpzevrCjQbjl4borAmwwbbnspvMs1o2dl/EQi0
 ezY3Ro2M/HBXBDTXt02IILOAqn0tFO3lm6FbW0rk5KR0rfYK8dt8yY3jR
 TBieK8CB0rVFhHuBcyBEuos5sq9xWO7bTReCbJDkaZsWeKgXonSELHyXA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254876517"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254876517"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:54:03 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="510437719"
Received: from byrnec1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.29.235])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:54:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220307233940.4161-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
 <20220307233940.4161-2-ville.syrjala@linux.intel.com>
Date: Wed, 09 Mar 2022 11:53:59 +0200
Message-ID: <87mthzzc20.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/8] drm/i915: Store the /5 target clock
 in struct dpll on vlv/chv
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
> Unify vlv/chv with earlier platforms so that the sturct dpll::dot
> represents the /5 clock frequency (ie. DP symbol rate or HDMI
> TMDS rate) rather than the *5 fast clock (/2 of the bitrate).
> Makes life a little less confusing to get the same number back
> in .dot which we fed into the DPLL algorithm.
>
> v2: Actually just include the 5x in the final P divider
>     Do the same change to the hand rolled gvt code
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

For some reason it was really hard for me to convince myself that I'd
checked every code path for the right amount of *5 and /5 in the right
places... I'll just say I didn't spot anything obviously wrong
here. Fingers crossed.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 19 ++++++++-----------
>  drivers/gpu/drm/i915/gvt/handlers.c       |  4 ++--
>  2 files changed, 10 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 0ae37fdbf2a5..b3fd94538c44 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -254,12 +254,12 @@ static const struct intel_limit ilk_limits_dual_lvd=
s_100m =3D {
>=20=20
>  static const struct intel_limit intel_limits_vlv =3D {
>  	 /*
> -	  * These are the data rate limits (measured in fast clocks)
> +	  * These are based on the data rate limits (measured in fast clocks)
>  	  * since those are the strictest limits we have. The fast
>  	  * clock and actual rate limits are more relaxed, so checking
>  	  * them would make no difference.
>  	  */
> -	.dot =3D { .min =3D 25000 * 5, .max =3D 270000 * 5 },
> +	.dot =3D { .min =3D 25000, .max =3D 270000 },
>  	.vco =3D { .min =3D 4000000, .max =3D 6000000 },
>  	.n =3D { .min =3D 1, .max =3D 7 },
>  	.m1 =3D { .min =3D 2, .max =3D 3 },
> @@ -270,12 +270,12 @@ static const struct intel_limit intel_limits_vlv =
=3D {
>=20=20
>  static const struct intel_limit intel_limits_chv =3D {
>  	/*
> -	 * These are the data rate limits (measured in fast clocks)
> +	 * These are based on the data rate limits (measured in fast clocks)
>  	 * since those are the strictest limits we have.  The fast
>  	 * clock and actual rate limits are more relaxed, so checking
>  	 * them would make no difference.
>  	 */
> -	.dot =3D { .min =3D 25000 * 5, .max =3D 540000 * 5},
> +	.dot =3D { .min =3D 25000, .max =3D 540000 },
>  	.vco =3D { .min =3D 4800000, .max =3D 6480000 },
>  	.n =3D { .min =3D 1, .max =3D 1 },
>  	.m1 =3D { .min =3D 2, .max =3D 2 },
> @@ -337,26 +337,26 @@ int i9xx_calc_dpll_params(int refclk, struct dpll *=
clock)
>  int vlv_calc_dpll_params(int refclk, struct dpll *clock)
>  {
>  	clock->m =3D clock->m1 * clock->m2;
> -	clock->p =3D clock->p1 * clock->p2;
> +	clock->p =3D clock->p1 * clock->p2 * 5;
>  	if (WARN_ON(clock->n =3D=3D 0 || clock->p =3D=3D 0))
>  		return 0;
>  	clock->vco =3D DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
>  	clock->dot =3D DIV_ROUND_CLOSEST(clock->vco, clock->p);
>=20=20
> -	return clock->dot / 5;
> +	return clock->dot;
>  }
>=20=20
>  int chv_calc_dpll_params(int refclk, struct dpll *clock)
>  {
>  	clock->m =3D clock->m1 * clock->m2;
> -	clock->p =3D clock->p1 * clock->p2;
> +	clock->p =3D clock->p1 * clock->p2 * 5;
>  	if (WARN_ON(clock->n =3D=3D 0 || clock->p =3D=3D 0))
>  		return 0;
>  	clock->vco =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock->m),
>  					   clock->n << 22);
>  	clock->dot =3D DIV_ROUND_CLOSEST(clock->vco, clock->p);
>=20=20
> -	return clock->dot / 5;
> +	return clock->dot;
>  }
>=20=20
>  /*
> @@ -659,8 +659,6 @@ vlv_find_best_dpll(const struct intel_limit *limit,
>  	int max_n =3D min(limit->n.max, refclk / 19200);
>  	bool found =3D false;
>=20=20
> -	target *=3D 5; /* fast clock */
> -
>  	memset(best_clock, 0, sizeof(*best_clock));
>=20=20
>  	/* based on hardware requirement, prefer smaller n to precision */
> @@ -729,7 +727,6 @@ chv_find_best_dpll(const struct intel_limit *limit,
>  	 */
>  	clock.n =3D 1;
>  	clock.m1 =3D 2;
> -	target *=3D 5;	/* fast clock */
>=20=20
>  	for (clock.p1 =3D limit->p1.max; clock.p1 >=3D limit->p1.min; clock.p1-=
-) {
>  		for (clock.p2 =3D limit->p2.p2_fast;
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index 520a7e1942f3..efdd2f3f9d73 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -583,7 +583,7 @@ static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu =
*vgpu, enum port port)
>  	clock.p1 =3D (vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)) & PORT_PLL=
_P1_MASK) >> PORT_PLL_P1_SHIFT;
>  	clock.p2 =3D (vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)) & PORT_PLL=
_P2_MASK) >> PORT_PLL_P2_SHIFT;
>  	clock.m =3D clock.m1 * clock.m2;
> -	clock.p =3D clock.p1 * clock.p2;
> +	clock.p =3D clock.p1 * clock.p2 * 5;
>=20=20
>  	if (clock.n =3D=3D 0 || clock.p =3D=3D 0) {
>  		gvt_dbg_dpy("vgpu-%d PORT_%c PLL has invalid divider\n", vgpu->id, por=
t_name(port));
> @@ -593,7 +593,7 @@ static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu =
*vgpu, enum port port)
>  	clock.vco =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock.m), clock=
.n << 22);
>  	clock.dot =3D DIV_ROUND_CLOSEST(clock.vco, clock.p);
>=20=20
> -	dp_br =3D clock.dot / 5;
> +	dp_br =3D clock.dot;
>=20=20
>  out:
>  	return dp_br;

--=20
Jani Nikula, Intel Open Source Graphics Center
