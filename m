Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 568C42F26E2
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 05:05:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553D389954;
	Tue, 12 Jan 2021 04:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95DAD89954
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 04:05:23 +0000 (UTC)
IronPort-SDR: HZZTbf6uNYXuCbIYpAtzBalM1uLwuz2q71Pfl5jPS1qi+4RPzx90I+TGO4r9ljAVE5LlcZf/ZP
 ZNubV/g9YImg==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="242049493"
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; d="scan'208";a="242049493"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 20:05:22 -0800
IronPort-SDR: Zlcwpv2ZfFIWBm6ghmKLPg/lPGSBYz4GrjOuHRsOdjwvmzpVszsB/r7oKg34MMw1arHIS2LTtw
 LKovEegKIMWw==
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; d="scan'208";a="381271655"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 20:05:22 -0800
Date: Mon, 11 Jan 2021 20:05:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210112040520.GE21197@mdroper-desk1.amr.corp.intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
 <20201205010844.361880-13-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201205010844.361880-13-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 12/22] drm/i915/adl_s: Add vbt port and aux
 channel settings for adls
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 04, 2020 at 05:08:34PM -0800, Aditya Swarup wrote:
> - ADL-S driver internal mapping uses PORT D, E, F, G for Combo phy B, C, =
D and E.
> - Add ADLS specific port mappings for vbt port dvo settings.
> - Select appropriate AUX CH specific to ADLS based on port mapping.

The aux stuff is getting really messy; we're definitely going to have to
move to a table-based approach for some of this stuff soon to keep it
from getting too out of hand.

The changes here look correct for the current style though.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> =

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 57 ++++++++++++++++++-----
>  1 file changed, 46 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 9dc67c03ffc0..8f166f49b6cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1709,8 +1709,26 @@ static enum port dvo_port_to_port(struct drm_i915_=
private *dev_priv,
>  		[PORT_TC1] =3D { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
>  		[PORT_TC2] =3D { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
>  	};
> +	/*
> +	 * Alderlake S ports used in the driver are PORT_A, PORT_D, PORT_E,
> +	 * PORT_F and PORT_G, we need to map that to correct VBT sections.
> +	 */
> +	static const int adls_port_mapping[][3] =3D {
> +		[PORT_A] =3D { DVO_PORT_HDMIA, DVO_PORT_DPA, -1 },
> +		[PORT_B] =3D { -1 },
> +		[PORT_C] =3D { -1 },
> +		[PORT_TC1] =3D { DVO_PORT_HDMIB, DVO_PORT_DPB, -1 },
> +		[PORT_TC2] =3D { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
> +		[PORT_TC3] =3D { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
> +		[PORT_TC4] =3D { DVO_PORT_HDMIE, DVO_PORT_DPE, -1 },
> +	};
>  =

> -	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> +	if (IS_ALDERLAKE_S(dev_priv))
> +		return __dvo_port_to_port(ARRAY_SIZE(adls_port_mapping),
> +					  ARRAY_SIZE(adls_port_mapping[0]),
> +					  adls_port_mapping,
> +					  dvo_port);
> +	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
>  					  ARRAY_SIZE(rkl_port_mapping[0]),
>  					  rkl_port_mapping,
> @@ -2667,27 +2685,44 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i91=
5_private *dev_priv,
>  		return aux_ch;
>  	}
>  =

> +	/*
> +	 * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
> +	 * map to DDI A,B,TC1,TC2 respectively.
> +	 *
> +	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
> +	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
> +	 */
>  	switch (info->alternate_aux_channel) {
>  	case DP_AUX_A:
>  		aux_ch =3D AUX_CH_A;
>  		break;
>  	case DP_AUX_B:
> -		aux_ch =3D AUX_CH_B;
> +		if (IS_ALDERLAKE_S(dev_priv))
> +			aux_ch =3D AUX_CH_USBC1;
> +		else
> +			aux_ch =3D AUX_CH_B;
>  		break;
>  	case DP_AUX_C:
> -		/*
> -		 * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
> -		 * map to DDI A,B,TC1,TC2 respectively.
> -		 */
> -		aux_ch =3D (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) ?
> -			AUX_CH_USBC1 : AUX_CH_C;
> +		if (IS_ALDERLAKE_S(dev_priv))
> +			aux_ch =3D AUX_CH_USBC2;
> +		else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> +			aux_ch =3D AUX_CH_USBC1;
> +		else
> +			aux_ch =3D AUX_CH_C;
>  		break;
>  	case DP_AUX_D:
> -		aux_ch =3D (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) ?
> -			AUX_CH_USBC2 : AUX_CH_D;
> +		if (IS_ALDERLAKE_S(dev_priv))
> +			aux_ch =3D AUX_CH_USBC3;
> +		else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> +			aux_ch =3D AUX_CH_USBC2;
> +		else
> +			aux_ch =3D AUX_CH_D;
>  		break;
>  	case DP_AUX_E:
> -		aux_ch =3D AUX_CH_E;
> +		if (IS_ALDERLAKE_S(dev_priv))
> +			aux_ch =3D AUX_CH_USBC4;
> +		else
> +			aux_ch =3D AUX_CH_E;
>  		break;
>  	case DP_AUX_F:
>  		aux_ch =3D AUX_CH_F;
> -- =

> 2.27.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
