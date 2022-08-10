Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB0C58EB0E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 13:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B811AB1944;
	Wed, 10 Aug 2022 11:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D53EB2A16
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 11:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660130054; x=1691666054;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Gh1pPbCtDS3ipEZYgdlUgvqSQhwRkdlsHfVtUYir1A4=;
 b=X6gzc4aU0xLoQGRez8IUNdrhhBwt8z3/ALIOcZ//S5I3XLQnqjlqqqKC
 f2rrD9Sib/ajN4dIYd9wIio3sqs+1Tdwca+MK4Ux7LBwCfNoC0nt3MaEX
 vgZZTUn6DvxwXy8LpvhuVI2rRrbajU7gBIemRYgBykgazxARcMV54/6TS
 Ldzob7WEd4TrYrT337pG+DdIxN1QFoP25R6lvNzSdBr/Nvu+sD0z5Aj1s
 pH3APwzGCEc0c1zRdgRTM74tkWatdDZxgaJ5CSl3RHzaZmFHvRzAqrT2R
 RBPKJfczDcOt+q6OabPZYViBxVb7xXF1locMPxLJ+JqCj3a7vgdonc64x g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="277996935"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="277996935"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 04:14:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="664854337"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 04:14:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220728013420.3750388-16-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-16-radhakrishna.sripada@intel.com>
Date: Wed, 10 Aug 2022 14:14:09 +0300
Message-ID: <874jykuz9a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 15/23] drm/i915/mtl: Obtain SAGV values from
 MMIO instead of GT pcode mailbox
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

On Wed, 27 Jul 2022, Radhakrishna Sripada <radhakrishna.sripada@intel.com> =
wrote:
> From Meteorlake, Latency Level, SAGV bloack time are read from
> LATENCY_SAGV register instead of the GT driver pcode mailbox. DDR type
> and QGV information are also tob read from Mem SS registers.
>
> Bspec: 49324, 64636
>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Original Author: Caz Yokoyama
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 49 +++++++++++++++++++------
>  drivers/gpu/drm/i915/display/intel_bw.h |  9 +++++
>  drivers/gpu/drm/i915/i915_reg.h         | 16 ++++++++
>  drivers/gpu/drm/i915/intel_dram.c       | 41 ++++++++++++++++++++-
>  drivers/gpu/drm/i915/intel_pm.c         |  8 +++-
>  5 files changed, 110 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 79269d2c476b..8bbf47da1716 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -15,11 +15,6 @@
>  #include "intel_pcode.h"
>  #include "intel_pm.h"
>=20=20
> -/* Parameters for Qclk Geyserville (QGV) */
> -struct intel_qgv_point {
> -	u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
> -};
> -
>  struct intel_psf_gv_point {
>  	u8 clk; /* clock in multiples of 16.6666 MHz */
>  };
> @@ -137,6 +132,42 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_pr=
ivate *dev_priv,
>  	return 0;
>  }
>=20=20
> +static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
> +				   struct intel_qgv_point *sp, int point)
> +{
> +	u32 val, val2;
> +	u16 dclk;
> +
> +	val =3D intel_uncore_read(&dev_priv->uncore,
> +				MTL_MEM_SS_INFO_QGV_POINT(point, 0));
> +	val2 =3D intel_uncore_read(&dev_priv->uncore,
> +				 MTL_MEM_SS_INFO_QGV_POINT(point, 1));
> +	dclk =3D REG_FIELD_GET(MTL_DCLK_MASK, val);
> +	sp->dclk =3D DIV_ROUND_UP((16667 * dclk) +  500, 1000);
> +	sp->t_rp =3D REG_FIELD_GET(MTL_TRP_MASK, val);
> +	sp->t_rcd =3D REG_FIELD_GET(MTL_TRCD_MASK, val);
> +
> +	sp->t_rdpre =3D REG_FIELD_GET(MTL_TRDPRE_MASK, val2);
> +	sp->t_ras =3D REG_FIELD_GET(MTL_TRAS_MASK, val2);
> +
> +	sp->t_rc =3D sp->t_rp + sp->t_ras;
> +
> +	return 0;
> +}
> +
> +int
> +intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
> +			  struct intel_qgv_point *sp,
> +			  int point)
> +{
> +	if (DISPLAY_VER(dev_priv) >=3D 14)
> +		return mtl_read_qgv_point_info(dev_priv, sp, point);
> +	else if (IS_DG1(dev_priv))
> +		return dg1_mchbar_read_qgv_point_info(dev_priv, sp, point);
> +	else
> +		return icl_pcode_read_qgv_point_info(dev_priv, sp, point);
> +}
> +
>  static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  			      struct intel_qgv_info *qi,
>  			      bool is_y_tile)
> @@ -193,11 +224,7 @@ static int icl_get_qgv_points(struct drm_i915_privat=
e *dev_priv,
>  	for (i =3D 0; i < qi->num_points; i++) {
>  		struct intel_qgv_point *sp =3D &qi->points[i];
>=20=20
> -		if (IS_DG1(dev_priv))
> -			ret =3D dg1_mchbar_read_qgv_point_info(dev_priv, sp, i);
> -		else
> -			ret =3D icl_pcode_read_qgv_point_info(dev_priv, sp, i);
> -
> +		ret =3D intel_read_qgv_point_info(dev_priv, sp, i);
>  		if (ret)
>  			return ret;
>=20=20
> @@ -560,7 +587,7 @@ void intel_bw_init_hw(struct drm_i915_private *dev_pr=
iv)
>=20=20
>  	if (IS_DG2(dev_priv))
>  		dg2_get_bw_info(dev_priv);
> -	else if (IS_ALDERLAKE_P(dev_priv))
> +	else if (DISPLAY_VER(dev_priv) >=3D 13 || IS_ALDERLAKE_P(dev_priv))
>  		tgl_get_bw_info(dev_priv, &adlp_sa_info);
>  	else if (IS_ALDERLAKE_S(dev_priv))
>  		tgl_get_bw_info(dev_priv, &adls_sa_info);
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index cb7ee3a24a58..b4c6665b0cf0 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -46,6 +46,11 @@ struct intel_bw_state {
>  	u8 num_active_planes[I915_MAX_PIPES];
>  };
>=20=20
> +/* Parameters for Qclk Geyserville (QGV) */
> +struct intel_qgv_point {
> +	u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
> +};

Who needs this outside of intel_bw.h?

> +
>  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, ba=
se)
>=20=20
>  struct intel_bw_state *
> @@ -69,4 +74,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *=
state,
>  int intel_bw_min_cdclk(struct drm_i915_private *i915,
>  		       const struct intel_bw_state *bw_state);
>=20=20
> +int intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
> +			      struct intel_qgv_point *sp,
> +			      int point);

AFAICT nobody calls this outside of intel_bw.h.

BR,
Jani.

> +
>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 23b50d671550..d37607109398 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8761,4 +8761,20 @@ enum skl_power_gate {
>  #define  MTL_LATENCY_LEVEL0_2_4_MASK	REG_GENMASK(12, 0)
>  #define  MTL_LATENCY_LEVEL1_3_5_MASK	REG_GENMASK(28, 16)
>=20=20
> +#define MTL_LATENCY_SAGV		_MMIO(0x4578c)
> +#define  MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
> +
> +#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> +#define  MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
> +#define  MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
> +#define  MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
> +
> +#define MTL_MEM_SS_INFO_QGV_POINT(point, bitgroup) \
> +	 _MMIO(0x45710 + ((point) * 2 + (bitgroup)) * sizeof(u32))
> +#define  MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
> +#define  MTL_TRAS_MASK			REG_GENMASK(16, 8)
> +#define  MTL_DCLK_MASK			REG_GENMASK(15, 0)
> +#define  MTL_TRP_MASK			REG_GENMASK(23, 16)
> +#define  MTL_TRCD_MASK			REG_GENMASK(31, 24)
> +
>  #endif /* _I915_REG_H_ */
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/int=
el_dram.c
> index 437447119770..2403ccd52c74 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -466,6 +466,43 @@ static int gen12_get_dram_info(struct drm_i915_priva=
te *i915)
>  	return icl_pcode_read_mem_global_info(i915);
>  }
>=20=20
> +static int xelpdp_get_dram_info(struct drm_i915_private *i915)
> +{
> +	u32 val =3D intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
> +	struct dram_info *dram_info =3D &i915->dram_info;
> +
> +	val =3D REG_FIELD_GET(MTL_DDR_TYPE_MASK, val);
> +	switch (val) {
> +	case 0:
> +		dram_info->type =3D INTEL_DRAM_DDR4;
> +		break;
> +	case 1:
> +		dram_info->type =3D INTEL_DRAM_DDR5;
> +		break;
> +	case 2:
> +		dram_info->type =3D INTEL_DRAM_LPDDR5;
> +		break;
> +	case 3:
> +		dram_info->type =3D INTEL_DRAM_LPDDR4;
> +		break;
> +	case 4:
> +		dram_info->type =3D INTEL_DRAM_DDR3;
> +		break;
> +	case 5:
> +		dram_info->type =3D INTEL_DRAM_LPDDR3;
> +		break;
> +	default:
> +		MISSING_CASE(val);
> +		return -EINVAL;
> +	}
> +
> +	dram_info->num_channels =3D REG_FIELD_GET(MTL_N_OF_POPULATED_CH_MASK, v=
al);
> +	dram_info->num_qgv_points =3D REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS=
_MASK, val);
> +	/* PSF GV points not supported in D14+ */
> +
> +	return 0;
> +}
> +
>  void intel_dram_detect(struct drm_i915_private *i915)
>  {
>  	struct dram_info *dram_info =3D &i915->dram_info;
> @@ -480,7 +517,9 @@ void intel_dram_detect(struct drm_i915_private *i915)
>  	 */
>  	dram_info->wm_lv_0_adjust_needed =3D !IS_GEN9_LP(i915);
>=20=20
> -	if (GRAPHICS_VER(i915) >=3D 12)
> +	if (DISPLAY_VER(i915) >=3D 14)
> +		ret =3D xelpdp_get_dram_info(i915);
> +	else if (GRAPHICS_VER(i915) >=3D 12)
>  		ret =3D gen12_get_dram_info(i915);
>  	else if (GRAPHICS_VER(i915) >=3D 11)
>  		ret =3D gen11_get_dram_info(i915);
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index fac565d23d57..f71b3b8b590c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3698,7 +3698,13 @@ intel_has_sagv(struct drm_i915_private *dev_priv)
>  static u32
>  intel_sagv_block_time(struct drm_i915_private *dev_priv)
>  {
> -	if (DISPLAY_VER(dev_priv) >=3D 12) {
> +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> +		u32 val;
> +
> +		val =3D intel_uncore_read(&dev_priv->uncore, MTL_LATENCY_SAGV);
> +
> +		return REG_FIELD_GET(MTL_LATENCY_QCLK_SAGV, val);
> +	} else if (DISPLAY_VER(dev_priv) >=3D 12) {
>  		u32 val =3D 0;
>  		int ret;

--=20
Jani Nikula, Intel Open Source Graphics Center
