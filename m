Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96689986E11
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:48:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB6C10EADE;
	Thu, 26 Sep 2024 07:48:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Huzvc4+a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D96EF10EADD
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 07:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727336904; x=1758872904;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZrD4QT84h6w2rGzJyT3VsovROCIv5cNPd7k+tukcgrY=;
 b=Huzvc4+ai3oCzzlqNBJcQrtpt9NqadU0ML8NqRgBy+c1AczO4v6t7/qB
 3pXMHQk3GAQMlWmZkzrED+0peGELa7a4F0mKMP4GvyvyXB2cHswJnNF02
 NCz6+ASo+js0SUzD1ctvhdmk7lV3yraG17H+7htHpBqgQATq1SLwkWVRD
 7f8aC2O7KdGugf1j/3Dvg2GVpEAbh9uiWYXDCD9aVah/rForFcYv2bmN0
 7DQMl5PBn76R4XRohPBdyhuLZAUFaXv25F5YkzNgbbau2a1LJjSVCo9rl
 WIdb4SR+P1M9nzWzfTkJAH6YfmYFb3CaCPRLR+r2w7LnkX7aZ8NaG0l7x w==;
X-CSE-ConnectionGUID: T2B1pRlqTg+J1NUvsR0rNw==
X-CSE-MsgGUID: YdPNJ7sOTFq13bVDlEl+bA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26511933"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="26511933"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:48:24 -0700
X-CSE-ConnectionGUID: ZUwFpQhTST6us/heuXR0oA==
X-CSE-MsgGUID: RoCLv+HDSeOSLJ/cdlY6iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72189054"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.124])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:48:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/dp: Extract intel_edp_set_sink_rates()
In-Reply-To: <20240918190441.29071-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240918190441.29071-1-ville.syrjala@linux.intel.com>
 <20240918190441.29071-3-ville.syrjala@linux.intel.com>
Date: Thu, 26 Sep 2024 10:48:18 +0300
Message-ID: <871q163lfh.fsf@intel.com>
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

On Wed, 18 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Declutter intel_edp_init_dpcd() a bit by extracting the sink
> rates probing into its own function.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 76 +++++++++++++------------
>  1 file changed, 40 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 6a1b0e93a1fc..ae3f242fa925 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4066,6 +4066,45 @@ static void intel_edp_mso_init(struct intel_dp *in=
tel_dp)
>  	intel_dp->mso_pixel_overlap =3D mso ? info->mso_pixel_overlap : 0;
>  }
>=20=20
> +static void
> +intel_edp_set_sink_rates(struct intel_dp *intel_dp)
> +{
> +	intel_dp->num_sink_rates =3D 0;
> +
> +	if (intel_dp->edp_dpcd[0] >=3D DP_EDP_14) {
> +		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
> +		int i;
> +
> +		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
> +				 sink_rates, sizeof(sink_rates));
> +
> +		for (i =3D 0; i < ARRAY_SIZE(sink_rates); i++) {
> +			int val =3D le16_to_cpu(sink_rates[i]);
> +
> +			if (val =3D=3D 0)
> +				break;
> +
> +			/* Value read multiplied by 200kHz gives the per-lane
> +			 * link rate in kHz. The source rates are, however,
> +			 * stored in terms of LS_Clk kHz. The full conversion
> +			 * back to symbols is
> +			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
> +			 */
> +			intel_dp->sink_rates[i] =3D (val * 200) / 10;
> +		}
> +		intel_dp->num_sink_rates =3D i;
> +	}
> +
> +	/*
> +	 * Use DP_LINK_RATE_SET if DP_SUPPORTED_LINK_RATES are available,
> +	 * default to DP_MAX_LINK_RATE and DP_LINK_BW_SET otherwise.
> +	 */
> +	if (intel_dp->num_sink_rates)
> +		intel_dp->use_rate_select =3D true;
> +	else
> +		intel_dp_set_sink_rates(intel_dp);

Isn't this kind of in the wrong place, it's not eDP?

> +}
> +
>  static bool
>  intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *c=
onnector)
>  {
> @@ -4110,42 +4149,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, str=
uct intel_connector *connector
>  	 */
>  	intel_psr_init_dpcd(intel_dp);
>=20=20
> -	/* Clear the default sink rates */
> -	intel_dp->num_sink_rates =3D 0;
> -
> -	/* Read the eDP 1.4+ supported link rates. */
> -	if (intel_dp->edp_dpcd[0] >=3D DP_EDP_14) {
> -		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
> -		int i;
> -
> -		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
> -				sink_rates, sizeof(sink_rates));
> -
> -		for (i =3D 0; i < ARRAY_SIZE(sink_rates); i++) {
> -			int val =3D le16_to_cpu(sink_rates[i]);
> -
> -			if (val =3D=3D 0)
> -				break;
> -
> -			/* Value read multiplied by 200kHz gives the per-lane
> -			 * link rate in kHz. The source rates are, however,
> -			 * stored in terms of LS_Clk kHz. The full conversion
> -			 * back to symbols is
> -			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
> -			 */
> -			intel_dp->sink_rates[i] =3D (val * 200) / 10;
> -		}
> -		intel_dp->num_sink_rates =3D i;
> -	}
> -
> -	/*
> -	 * Use DP_LINK_RATE_SET if DP_SUPPORTED_LINK_RATES are available,
> -	 * default to DP_MAX_LINK_RATE and DP_LINK_BW_SET otherwise.
> -	 */
> -	if (intel_dp->num_sink_rates)
> -		intel_dp->use_rate_select =3D true;
> -	else
> -		intel_dp_set_sink_rates(intel_dp);
> +	intel_edp_set_sink_rates(intel_dp);
>  	intel_dp_set_max_sink_lane_count(intel_dp);
>=20=20
>  	/* Read the eDP DSC DPCD registers */

--=20
Jani Nikula, Intel
