Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE40541CACF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 18:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 310BC6E1D5;
	Wed, 29 Sep 2021 16:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C881E6E1ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 16:59:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="286005385"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="286005385"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 09:59:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="554888750"
Received: from amelillo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.221.121])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 09:59:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20210929162404.6717-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210319175720.5901-1-ville.syrjala@linux.intel.com>
 <20210929162404.6717-1-ville.syrjala@linux.intel.com>
Date: Wed, 29 Sep 2021 19:59:14 +0300
Message-ID: <87o88buxlp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable TPS3/4 on all platforms
 that support them
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

On Wed, 29 Sep 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Stop using HBR2/3 support as a proxy for TPS3/4 support.
> The two are no longer 1:1 in the hardware, arguably they
> never were due to HSW ULX which does support TPS3 while
> being limited to HBR1.
>
> In more recent times GLK gained support for TPS4 while
> being limited to HBR2. And on CNL+ some ports support
> HBR3 while others are limited to HBR2, but all ports
> support TPS4.
>
> v2: s/INTEL_GEN/DISPLAY_VER/
>
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 12 +++-----
>  drivers/gpu/drm/i915/display/intel_dp.h       |  4 +--
>  .../drm/i915/display/intel_dp_link_training.c | 30 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
>  4 files changed, 22 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 378008873e03..9dce7c0e434a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -929,18 +929,14 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	return intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
>  }
>=20=20
> -bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp)
> +bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)

I guess it's fathomable we'd have different ports supporting different
training patterns, similar to the max rates. But it's easy enough to
pass intel_dp again in that case.

Acked-by: Jani Nikula <jani.nikula@intel.com>



>  {
> -	int max_rate =3D intel_dp->source_rates[intel_dp->num_source_rates - 1];
> -
> -	return max_rate >=3D 540000;
> +	return DISPLAY_VER(i915) >=3D 9 || IS_BROADWELL(i915) || IS_HASWELL(i91=
5);
>  }
>=20=20
> -bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp)
> +bool intel_dp_source_supports_tps4(struct drm_i915_private *i915)
>  {
> -	int max_rate =3D intel_dp->source_rates[intel_dp->num_source_rates - 1];
> -
> -	return max_rate >=3D 810000;
> +	return DISPLAY_VER(i915) >=3D 10;
>  }
>=20=20
>  static void snprintf_int_array(char *str, size_t len,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 3343c2591680..ce229026dc91 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -73,8 +73,8 @@ int intel_dp_rate_select(struct intel_dp *intel_dp, int=
 rate);
>=20=20
>  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
>  			   u8 *link_bw, u8 *rate_select);
> -bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
> -bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp);
> +bool intel_dp_source_supports_tps3(struct drm_i915_private *i915);
> +bool intel_dp_source_supports_tps4(struct drm_i915_private *i915);
>=20=20
>  bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
>  int intel_dp_link_required(int pixel_clock, int bpp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 4f116cd32846..449499a5c4c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -611,6 +611,7 @@ static u32 intel_dp_training_pattern(struct intel_dp =
*intel_dp,
>  				     const struct intel_crtc_state *crtc_state,
>  				     enum drm_dp_phy dp_phy)
>  {
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
>=20=20
>  	/* UHBR+ use separate 128b/132b TPS2 */
> @@ -618,41 +619,40 @@ static u32 intel_dp_training_pattern(struct intel_d=
p *intel_dp,
>  		return DP_TRAINING_PATTERN_2;
>=20=20
>  	/*
> -	 * Intel platforms that support HBR3 also support TPS4. It is mandatory
> -	 * for all downstream devices that support HBR3. There are no known eDP
> -	 * panels that support TPS4 as of Feb 2018 as per VESA eDP_v1.4b_E1
> -	 * specification.
> +	 * TPS4 support is mandatory for all downstream devices that
> +	 * support HBR3. There are no known eDP panels that support
> +	 * TPS4 as of Feb 2018 as per VESA eDP_v1.4b_E1 specification.
>  	 * LTTPRs must support TPS4.
>  	 */
> -	source_tps4 =3D intel_dp_source_supports_hbr3(intel_dp);
> +	source_tps4 =3D intel_dp_source_supports_tps4(i915);
>  	sink_tps4 =3D dp_phy !=3D DP_PHY_DPRX ||
>  		    drm_dp_tps4_supported(intel_dp->dpcd);
>  	if (source_tps4 && sink_tps4) {
>  		return DP_TRAINING_PATTERN_4;
>  	} else if (crtc_state->port_clock =3D=3D 810000) {
>  		if (!source_tps4)
> -			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> -				    "8.1 Gbps link rate without source HBR3/TPS4 support\n");
> +			drm_dbg_kms(&i915->drm,
> +				    "8.1 Gbps link rate without source TPS4 support\n");
>  		if (!sink_tps4)
> -			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "8.1 Gbps link rate without sink TPS4 support\n");
>  	}
> +
>  	/*
> -	 * Intel platforms that support HBR2 also support TPS3. TPS3 support is
> -	 * also mandatory for downstream devices that support HBR2. However, not
> -	 * all sinks follow the spec.
> +	 * TPS3 support is mandatory for downstream devices that
> +	 * support HBR2. However, not all sinks follow the spec.
>  	 */
> -	source_tps3 =3D intel_dp_source_supports_hbr2(intel_dp);
> +	source_tps3 =3D intel_dp_source_supports_tps3(i915);
>  	sink_tps3 =3D dp_phy !=3D DP_PHY_DPRX ||
>  		    drm_dp_tps3_supported(intel_dp->dpcd);
>  	if (source_tps3 && sink_tps3) {
>  		return  DP_TRAINING_PATTERN_3;
>  	} else if (crtc_state->port_clock >=3D 540000) {
>  		if (!source_tps3)
> -			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> -				    ">=3D5.4/6.48 Gbps link rate without source HBR2/TPS3 support\n"=
);
> +			drm_dbg_kms(&i915->drm,
> +				    ">=3D5.4/6.48 Gbps link rate without source TPS3 support\n");
>  		if (!sink_tps3)
> -			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    ">=3D5.4/6.48 Gbps link rate without sink TPS3 support\n");
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 19a96d3c4acf..f489bf9ca096 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -426,7 +426,7 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *in=
tel_dp)
>  		val |=3D EDP_PSR_TP2_TP3_TIME_2500us;
>=20=20
>  check_tp3_sel:
> -	if (intel_dp_source_supports_hbr2(intel_dp) &&
> +	if (intel_dp_source_supports_tps3(dev_priv) &&
>  	    drm_dp_tps3_supported(intel_dp->dpcd))
>  		val |=3D EDP_PSR_TP1_TP3_SEL;
>  	else

--=20
Jani Nikula, Intel Open Source Graphics Center
