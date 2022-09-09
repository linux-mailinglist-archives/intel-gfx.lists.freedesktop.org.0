Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA9E5B31A7
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 10:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B3E710E53C;
	Fri,  9 Sep 2022 08:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BE0810E53C
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 08:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662712050; x=1694248050;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=0z++Ebwx/fm3oD0PCCu/tuSs7rB5qpvp8E2cciISL4c=;
 b=aB1Tj0VNOatFnJsQ/6KQgV4AYaJTXVSRalVwx/jiWnqRpNfLIjCNh85F
 JO8YC2wj1Y497PQhI5W4AzmLowvevFS61d+3MztnScLZ0qbT3WmKBoTUV
 /31r5vZlh7ssF1zpy5aWerYobOw8oCba0b0VCAfxqA7904MO5wcfNGNaE
 Og5pgZ1E5jiSulBoeW8Ooiz5DQ3ZJZJwGZNr3M00q+L143KbcUORom9Ro
 hERLRbTIvsUDdbIM+528Pf8HEb8yVVNsPOQtjR3Fir3Cdjv9ZcIHzEebg
 jIMxxqdndjaUbGURSTLwWC3Zer8tZKO1D/YObAKIGyVsyaQeZL50e4/Nh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="296163169"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="296163169"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:27:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="677074005"
Received: from abaruah-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.45.217])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:27:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220908191646.20239-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
 <20220908191646.20239-2-ville.syrjala@linux.intel.com>
Date: Fri, 09 Sep 2022 11:27:07 +0300
Message-ID: <87pmg56jhg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Split intel_read_wm_latency()
 into per-platform versions
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

On Thu, 08 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No reaon to have this humongous if ladder in intel_read_wm_latency().

*reason

> Just split it into nicer per-platforms functions.
>
> Also do the s/dev_priv/i915/ while touching all of this code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 201 +++++++++++++++++---------------
>  1 file changed, 110 insertions(+), 91 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 210c1f78cc90..096c311ed29f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -2905,97 +2905,107 @@ adjust_wm_latency(struct drm_i915_private *i915,
>  		wm[0] +=3D 1;
>  }
>=20=20
> -static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
> -				  u16 wm[])
> +static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])

Bikeshed, I'd make that u16 *wm, but the same thing I guess.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  {
> -	struct intel_uncore *uncore =3D &dev_priv->uncore;
> -	int max_level =3D ilk_wm_max_level(dev_priv);
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 14) {
> -		u32 val;
> -
> -		val =3D intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
> -		wm[0] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> -		wm[1] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> -		val =3D intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
> -		wm[2] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> -		wm[3] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> -		val =3D intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
> -		wm[4] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> -		wm[5] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> -
> -		adjust_wm_latency(dev_priv, wm, max_level, 6);
> -	} else if (DISPLAY_VER(dev_priv) >=3D 9) {
> -		int read_latency =3D DISPLAY_VER(dev_priv) >=3D 12 ? 3 : 2;
> -		int mult =3D IS_DG2(dev_priv) ? 2 : 1;
> -		u32 val;
> -		int ret;
> -
> -		/* read the first set of memory latencies[0:3] */
> -		val =3D 0; /* data0 to be programmed to 0 for first set */
> -		ret =3D snb_pcode_read(&dev_priv->uncore, GEN9_PCODE_READ_MEM_LATENCY,
> -				     &val, NULL);
> -
> -		if (ret) {
> -			drm_err(&dev_priv->drm,
> -				"SKL Mailbox read error =3D %d\n", ret);
> -			return;
> -		}
> -
> -		wm[0] =3D (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -		wm[1] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -		wm[2] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -		wm[3] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -
> -		/* read the second set of memory latencies[4:7] */
> -		val =3D 1; /* data0 to be programmed to 1 for second set */
> -		ret =3D snb_pcode_read(&dev_priv->uncore, GEN9_PCODE_READ_MEM_LATENCY,
> -				     &val, NULL);
> -		if (ret) {
> -			drm_err(&dev_priv->drm,
> -				"SKL Mailbox read error =3D %d\n", ret);
> -			return;
> -		}
> -
> -		wm[4] =3D (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -		wm[5] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -		wm[6] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -		wm[7] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> -				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -
> -		adjust_wm_latency(dev_priv, wm, max_level, read_latency);
> -	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> -		u64 sskpd =3D intel_uncore_read64(uncore, MCH_SSKPD);
> -
> -		wm[0] =3D REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
> -		if (wm[0] =3D=3D 0)
> -			wm[0] =3D REG_FIELD_GET64(SSKPD_OLD_WM0_MASK_HSW, sskpd);
> -		wm[1] =3D REG_FIELD_GET64(SSKPD_WM1_MASK_HSW, sskpd);
> -		wm[2] =3D REG_FIELD_GET64(SSKPD_WM2_MASK_HSW, sskpd);
> -		wm[3] =3D REG_FIELD_GET64(SSKPD_WM3_MASK_HSW, sskpd);
> -		wm[4] =3D REG_FIELD_GET64(SSKPD_WM4_MASK_HSW, sskpd);
> -	} else if (DISPLAY_VER(dev_priv) >=3D 6) {
> -		u32 sskpd =3D intel_uncore_read(uncore, MCH_SSKPD);
> -
> -		wm[0] =3D REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
> -		wm[1] =3D REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
> -		wm[2] =3D REG_FIELD_GET(SSKPD_WM2_MASK_SNB, sskpd);
> -		wm[3] =3D REG_FIELD_GET(SSKPD_WM3_MASK_SNB, sskpd);
> -	} else if (DISPLAY_VER(dev_priv) >=3D 5) {
> -		u32 mltr =3D intel_uncore_read(uncore, MLTR_ILK);
> -
> -		/* ILK primary LP0 latency is 700 ns */
> -		wm[0] =3D 7;
> -		wm[1] =3D REG_FIELD_GET(MLTR_WM1_MASK, mltr);
> -		wm[2] =3D REG_FIELD_GET(MLTR_WM2_MASK, mltr);
> -	} else {
> -		MISSING_CASE(INTEL_DEVID(dev_priv));
> +	struct intel_uncore *uncore =3D &i915->uncore;
> +	int max_level =3D ilk_wm_max_level(i915);
> +	u32 val;
> +
> +	val =3D intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
> +	wm[0] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> +	wm[1] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> +
> +	val =3D intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
> +	wm[2] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> +	wm[3] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> +
> +	val =3D intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
> +	wm[4] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> +	wm[5] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> +
> +	adjust_wm_latency(i915, wm, max_level, 6);
> +}
> +
> +static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> +{
> +	int max_level =3D ilk_wm_max_level(i915);
> +	int read_latency =3D DISPLAY_VER(i915) >=3D 12 ? 3 : 2;
> +	int mult =3D IS_DG2(i915) ? 2 : 1;
> +	u32 val;
> +	int ret;
> +
> +	/* read the first set of memory latencies[0:3] */
> +	val =3D 0; /* data0 to be programmed to 0 for first set */
> +	ret =3D snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val=
, NULL);
> +	if (ret) {
> +		drm_err(&i915->drm, "SKL Mailbox read error =3D %d\n", ret);
> +		return;
> +	}
> +
> +	wm[0] =3D (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[1] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[2] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[3] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +
> +	/* read the second set of memory latencies[4:7] */
> +	val =3D 1; /* data0 to be programmed to 1 for second set */
> +	ret =3D snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val=
, NULL);
> +	if (ret) {
> +		drm_err(&i915->drm, "SKL Mailbox read error =3D %d\n", ret);
> +		return;
>  	}
> +
> +	wm[4] =3D (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[5] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[6] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[7] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +
> +	adjust_wm_latency(i915, wm, max_level, read_latency);
> +}
> +
> +static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> +{
> +	u64 sskpd;
> +
> +	sskpd =3D intel_uncore_read64(&i915->uncore, MCH_SSKPD);
> +
> +	wm[0] =3D REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
> +	if (wm[0] =3D=3D 0)
> +		wm[0] =3D REG_FIELD_GET64(SSKPD_OLD_WM0_MASK_HSW, sskpd);
> +	wm[1] =3D REG_FIELD_GET64(SSKPD_WM1_MASK_HSW, sskpd);
> +	wm[2] =3D REG_FIELD_GET64(SSKPD_WM2_MASK_HSW, sskpd);
> +	wm[3] =3D REG_FIELD_GET64(SSKPD_WM3_MASK_HSW, sskpd);
> +	wm[4] =3D REG_FIELD_GET64(SSKPD_WM4_MASK_HSW, sskpd);
> +}
> +
> +static void snb_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> +{
> +	u32 sskpd;
> +
> +	sskpd =3D intel_uncore_read(&i915->uncore, MCH_SSKPD);
> +
> +	wm[0] =3D REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
> +	wm[1] =3D REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
> +	wm[2] =3D REG_FIELD_GET(SSKPD_WM2_MASK_SNB, sskpd);
> +	wm[3] =3D REG_FIELD_GET(SSKPD_WM3_MASK_SNB, sskpd);
> +}
> +
> +static void ilk_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> +{
> +	u32 mltr;
> +
> +	mltr =3D intel_uncore_read(&i915->uncore, MLTR_ILK);
> +
> +	/* ILK primary LP0 latency is 700 ns */
> +	wm[0] =3D 7;
> +	wm[1] =3D REG_FIELD_GET(MLTR_WM1_MASK, mltr);
> +	wm[2] =3D REG_FIELD_GET(MLTR_WM2_MASK, mltr);
>  }
>=20=20
>  static void intel_fixup_spr_wm_latency(struct drm_i915_private *dev_priv,
> @@ -3128,7 +3138,12 @@ static void snb_wm_lp3_irq_quirk(struct drm_i915_p=
rivate *dev_priv)
>=20=20
>  static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
>  {
> -	intel_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
> +	if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> +		hsw_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
> +	else if (DISPLAY_VER(dev_priv) >=3D 6)
> +		snb_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
> +	else
> +		ilk_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
>=20=20
>  	memcpy(dev_priv->display.wm.spr_latency, dev_priv->display.wm.pri_laten=
cy,
>  	       sizeof(dev_priv->display.wm.pri_latency));
> @@ -3150,7 +3165,11 @@ static void ilk_setup_wm_latency(struct drm_i915_p=
rivate *dev_priv)
>=20=20
>  static void skl_setup_wm_latency(struct drm_i915_private *dev_priv)
>  {
> -	intel_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
> +	if (DISPLAY_VER(dev_priv) >=3D 14)
> +		mtl_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
> +	else
> +		skl_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
> +
>  	intel_print_wm_latency(dev_priv, "Gen9 Plane", dev_priv->display.wm.skl=
_latency);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
