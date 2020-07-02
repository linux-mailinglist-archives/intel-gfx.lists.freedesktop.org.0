Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8EC212F93
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 00:37:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD9576E5A4;
	Thu,  2 Jul 2020 22:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE136E5A4
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 22:37:18 +0000 (UTC)
IronPort-SDR: LLrj5Q7pCTWWPeySLqRaZpK/lL3jEyZXW9i3MTe8Vq0BXBXowLBQhfNuKxmRfIKdv+QhXsNl2K
 sfRx0JJByPUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="134501754"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="134501754"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 15:37:17 -0700
IronPort-SDR: zhgGIovJqwvLDrAXFqdOwPsbeV1DXPs0+aDyy4IV/CD6RySggsMs3UkuDQQIOiLAwezpouqNrE
 gq8ol0xq/1ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="265820632"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga007.fm.intel.com with ESMTP; 02 Jul 2020 15:37:15 -0700
Date: Thu, 2 Jul 2020 15:38:53 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200702223853.GA737@intel.com>
References: <20200702182450.6804-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702182450.6804-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Enable TPS3/4 on all
 platforms that support them
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 02, 2020 at 09:24:49PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Stop using HBR2/3 support as a proxy for TPS3/4 support.
> The two are no longer 1:1 in the hardware, arguably they
> never were due to HSW ULX which does support TPS3 while
> being limited to HBR1.
> =

> In more recent times GLK gained support for TPS4 while
> being limited to HBR2. And on CNL+ some ports support
> HBR3 while others are limited to HBR2, but all ports
> support TPS4.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Makes sense to me

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 12 +++-----
>  drivers/gpu/drm/i915/display/intel_dp.h       |  4 +--
>  .../drm/i915/display/intel_dp_link_training.c | 29 +++++++------------
>  drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
>  4 files changed, 17 insertions(+), 30 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index c9b93c5706af..5ac182357fc9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1799,18 +1799,14 @@ intel_dp_aux_init(struct intel_dp *intel_dp)
>  	intel_dp->aux.transfer =3D intel_dp_aux_transfer;
>  }
>  =

> -bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp)
> +bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
>  {
> -	int max_rate =3D intel_dp->source_rates[intel_dp->num_source_rates - 1];
> -
> -	return max_rate >=3D 540000;
> +	return INTEL_GEN(i915) >=3D 9 || IS_BROADWELL(i915) || IS_HASWELL(i915);
>  }
>  =

> -bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp)
> +bool intel_dp_source_supports_tps4(struct drm_i915_private *i915)
>  {
> -	int max_rate =3D intel_dp->source_rates[intel_dp->num_source_rates - 1];
> -
> -	return max_rate >=3D 810000;
> +	return INTEL_GEN(i915) >=3D 10 || IS_GEMINILAKE(i915);
>  }
>  =

>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 0a8950f744f6..d597a9848397 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -94,8 +94,8 @@ intel_dp_set_signal_levels(struct intel_dp *intel_dp);
>  void intel_dp_set_idle_link_train(struct intel_dp *intel_dp);
>  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
>  			   u8 *link_bw, u8 *rate_select);
> -bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
> -bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp);
> +bool intel_dp_source_supports_tps3(struct drm_i915_private *i915);
> +bool intel_dp_source_supports_tps4(struct drm_i915_private *i915);
>  bool
>  intel_dp_get_link_status(struct intel_dp *intel_dp, u8 *link_status);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 2493142a70e9..57c2089c9f5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -259,41 +259,32 @@ intel_dp_link_training_clock_recovery(struct intel_=
dp *intel_dp)
>   */
>  static u32 intel_dp_training_pattern(struct intel_dp *intel_dp)
>  {
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
>  =

> -	/*
> -	 * Intel platforms that support HBR3 also support TPS4. It is mandatory
> -	 * for all downstream devices that support HBR3. There are no known eDP
> -	 * panels that support TPS4 as of Feb 2018 as per VESA eDP_v1.4b_E1
> -	 * specification.
> -	 */
> -	source_tps4 =3D intel_dp_source_supports_hbr3(intel_dp);
> +	source_tps4 =3D intel_dp_source_supports_tps4(i915);
>  	sink_tps4 =3D drm_dp_tps4_supported(intel_dp->dpcd);
>  	if (source_tps4 && sink_tps4) {
>  		return DP_TRAINING_PATTERN_4;
>  	} else if (intel_dp->link_rate =3D=3D 810000) {
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
> -	/*
> -	 * Intel platforms that support HBR2 also support TPS3. TPS3 support is
> -	 * also mandatory for downstream devices that support HBR2. However, not
> -	 * all sinks follow the spec.
> -	 */
> -	source_tps3 =3D intel_dp_source_supports_hbr2(intel_dp);
> +
> +	source_tps3 =3D intel_dp_source_supports_tps3(i915);
>  	sink_tps3 =3D drm_dp_tps3_supported(intel_dp->dpcd);
>  	if (source_tps3 && sink_tps3) {
>  		return  DP_TRAINING_PATTERN_3;
>  	} else if (intel_dp->link_rate >=3D 540000) {
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
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 611cb8d74811..5ba1aa2c6748 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -451,7 +451,7 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *in=
tel_dp)
>  		val |=3D EDP_PSR_TP2_TP3_TIME_2500us;
>  =

>  check_tp3_sel:
> -	if (intel_dp_source_supports_hbr2(intel_dp) &&
> +	if (intel_dp_source_supports_tps3(dev_priv) &&
>  	    drm_dp_tps3_supported(intel_dp->dpcd))
>  		val |=3D EDP_PSR_TP1_TP3_SEL;
>  	else
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
