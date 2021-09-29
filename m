Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D8F41C1FB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 11:48:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F11686EA21;
	Wed, 29 Sep 2021 09:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86BC06EA21
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 09:48:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="204391096"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="204391096"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 02:48:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="554703790"
Received: from amelillo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.221.121])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 02:48:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210929024600.31587-1-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210929024600.31587-1-radhakrishna.sripada@intel.com>
Date: Wed, 29 Sep 2021 12:48:27 +0300
Message-ID: <87wnmzvhjo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Update memory bandwidth
 formulae
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

On Tue, 28 Sep 2021, Radhakrishna Sripada <radhakrishna.sripada@intel.com> =
wrote:
> The formulae has been updated to include more variables. Make
> sure the code carries the same.
>
> Bspec: 64631
>
> v2: Make GEN11 follow the default route and fix calculation of
>     maxdebw(RK)
>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 71 +++++++++++++++++++------
>  1 file changed, 55 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 4b94256d7319..d24b2000bc3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -27,6 +27,9 @@ struct intel_qgv_info {
>  	u8 num_points;
>  	u8 num_psf_points;
>  	u8 t_bl;
> +	u8 max_numchannels;
> +	u8 channel_width;
> +	u8 deinterleave;
>  };
>=20=20
>  static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_p=
riv,
> @@ -137,6 +140,7 @@ static int icl_get_qgv_points(struct drm_i915_private=
 *dev_priv,
>  {
>  	const struct dram_info *dram_info =3D &dev_priv->dram_info;
>  	int i, ret;
> +	bool is_y_tile =3D true; /* assume y tile may be used */
>=20=20
>  	qi->num_points =3D dram_info->num_qgv_points;
>  	qi->num_psf_points =3D dram_info->num_psf_gv_points;
> @@ -144,10 +148,31 @@ static int icl_get_qgv_points(struct drm_i915_priva=
te *dev_priv,
>  	if (DISPLAY_VER(dev_priv) =3D=3D 12)
>  		switch (dram_info->type) {
>  		case INTEL_DRAM_DDR4:
> -			qi->t_bl =3D 4;
> +			qi->t_bl =3D is_y_tile ? 8 : 4;
> +			qi->max_numchannels =3D 2;
> +			qi->channel_width =3D 64;
> +			qi->deinterleave =3D is_y_tile ? 1 : 2;
>  			break;
>  		case INTEL_DRAM_DDR5:
> -			qi->t_bl =3D 8;
> +			qi->t_bl =3D is_y_tile ? 16 : 8;
> +			qi->max_numchannels =3D 4;
> +			qi->channel_width =3D 32;
> +			qi->deinterleave =3D is_y_tile ? 1 : 2;
> +			break;
> +		case INTEL_DRAM_LPDDR4:
> +			if (IS_ROCKETLAKE(dev_priv)) {
> +				qi->t_bl =3D 8;
> +				qi->max_numchannels =3D 4;
> +				qi->channel_width =3D 32;
> +				qi->deinterleave =3D 2;
> +				break;
> +			}
> +		fallthrough;

Just a drive-by comment, the fallthrough; line needs more indent.

BR,
Jani.

> +		case INTEL_DRAM_LPDDR5:
> +			qi->t_bl =3D 16;
> +			qi->max_numchannels =3D 8;
> +			qi->channel_width =3D 16;
> +			qi->deinterleave =3D is_y_tile ? 2 : 4;
>  			break;
>  		default:
>  			qi->t_bl =3D 16;
> @@ -263,12 +288,13 @@ static const struct intel_sa_info adlp_sa_info =3D {
>  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const stru=
ct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi =3D {};
> -	bool is_y_tile =3D true; /* assume y tile may be used */
> +	const struct dram_info *dram_info =3D &dev_priv->dram_info;
>  	int num_channels =3D max_t(u8, 1, dev_priv->dram_info.num_channels);
> -	int deinterleave;
>  	int ipqdepth, ipqdepthpch;
>  	int dclk_max;
> -	int maxdebw;
> +	int maxdebw, peakbw;
> +	int clperchgroup;
> +	int num_groups =3D ARRAY_SIZE(dev_priv->max_bw);
>  	int i, ret;
>=20=20
>  	ret =3D icl_get_qgv_points(dev_priv, &qi);
> @@ -278,22 +304,38 @@ static int icl_get_bw_info(struct drm_i915_private =
*dev_priv, const struct intel
>  		return ret;
>  	}
>=20=20
> -	deinterleave =3D DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
> -	dclk_max =3D icl_sagv_max_dclk(&qi);
> +	if (dram_info->type =3D=3D INTEL_DRAM_LPDDR4 || dram_info->type =3D=3D =
INTEL_DRAM_LPDDR5)
> +		num_channels *=3D 2;
> +
> +	if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) >=3D 12)
> +		qi.deinterleave =3D DIV_ROUND_UP(qi.deinterleave, 2);
> +
> +	num_channels =3D min_t(u8, num_channels, qi.max_numchannels);
> +	dclk_max =3D icl_calc_bw(icl_sagv_max_dclk(&qi), 16, 1);
>=20=20
>  	ipqdepthpch =3D 16;
>=20=20
> -	maxdebw =3D min(sa->deprogbwlimit * 1000,
> -		      icl_calc_bw(dclk_max, 16, 1) * 6 / 10); /* 60% */
> +	peakbw =3D num_channels * DIV_ROUND_UP(qi.deinterleave, 8) * dclk_max;
> +	maxdebw =3D min(sa->deprogbwlimit * 1000, peakbw * 6 / 10); /* 60% */
>  	ipqdepth =3D min(ipqdepthpch, sa->displayrtids / num_channels);
> +	/*
> +	 * clperchgroup =3D 4kpagespermempage * clperchperblock,
> +	 * clperchperblock =3D 8 /num_channels * interleave
> +	 */
> +	clperchgroup =3D 4 * DIV_ROUND_UP(8, num_channels) * qi.deinterleave;
>=20=20
> -	for (i =3D 0; i < ARRAY_SIZE(dev_priv->max_bw); i++) {
> +	for (i =3D 0; i < num_groups; i++) {
>  		struct intel_bw_info *bi =3D &dev_priv->max_bw[i];
>  		int clpchgroup;
>  		int j;
>=20=20
> -		clpchgroup =3D (sa->deburst * deinterleave / num_channels) << i;
> -		bi->num_planes =3D (ipqdepth - clpchgroup) / clpchgroup + 1;
> +		clpchgroup =3D (sa->deburst * qi.deinterleave / num_channels) << i;
> +
> +		if ((i < num_groups - 1 && clpchgroup < clperchgroup) ||
> +		    DISPLAY_VER(dev_priv) =3D=3D 11)
> +			bi->num_planes =3D (ipqdepth - clpchgroup) / clpchgroup + 1;
> +		else
> +			bi->num_planes =3D 0;
>=20=20
>  		bi->num_qgv_points =3D qi.num_points;
>  		bi->num_psf_gv_points =3D qi.num_psf_points;
> @@ -329,9 +371,6 @@ static int icl_get_bw_info(struct drm_i915_private *d=
ev_priv, const struct intel
>  				    "BW%d / PSF GV %d: num_planes=3D%d bw=3D%u\n",
>  				    i, j, bi->num_planes, bi->psf_bw[j]);
>  		}
> -
> -		if (bi->num_planes =3D=3D 1)
> -			break;
>  	}
>=20=20
>  	/*
> @@ -339,7 +378,7 @@ static int icl_get_bw_info(struct drm_i915_private *d=
ev_priv, const struct intel
>  	 * SAGV point, but we can't send PCode commands to restrict it
>  	 * as it will fail and pointless anyway.
>  	 */
> -	if (qi.num_points =3D=3D 1)
> +	if (qi.num_points >=3D 1)
>  		dev_priv->sagv_status =3D I915_SAGV_NOT_CONTROLLED;
>  	else
>  		dev_priv->sagv_status =3D I915_SAGV_ENABLED;

--=20
Jani Nikula, Intel Open Source Graphics Center
