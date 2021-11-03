Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5B144405D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 12:11:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241AB6FF7F;
	Wed,  3 Nov 2021 11:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA446FF7F
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 11:11:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="255100743"
X-IronPort-AV: E=Sophos;i="5.87,205,1631602800"; d="scan'208";a="255100743"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 04:11:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,205,1631602800"; d="scan'208";a="667489668"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 03 Nov 2021 04:11:07 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 04:11:06 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 16:41:04 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Wed, 3 Nov 2021 16:41:04 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/dp: Optimize the FRL configuration for
 HDMI2.1 PCON
Thread-Index: AQHXzIxtqgrZg3x2KEC2I5BfyU62nqvxrW3A
Date: Wed, 3 Nov 2021 11:11:03 +0000
Message-ID: <5aa10065ba374dbba4af4f1ee42c6e9d@intel.com>
References: <20211029060154.110038-1-ankit.k.nautiyal@intel.com>
 <20211029060154.110038-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20211029060154.110038-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Optimize the FRL
 configuration for HDMI2.1 PCON
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Friday, October 29, 2021 11:32 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Sharma, Swati2 <swati2.sharma@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH 1/2] drm/i915/dp: Optimize the FRL configuration for HDMI=
2.1
> PCON
>=20
> Currently the HDMI2.1 PCON's frl link config DPCD registers are reset and=
 configured
> even if they are already configured.
> Also the HDMI Link Mode does not settle to FRL MODE immediately after HDM=
I Link
> Status is active.
>=20
> This patch:
> -Checks if the PCON is already configured for FRL.
> -Include HDMI Link Mode in wait for loop along with HDMI Link status DPCD=
.

Looks good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 37 +++++++++++++++----------
>  1 file changed, 23 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6d5988f0f067..f5fd106e555c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2198,6 +2198,18 @@ static int intel_dp_hdmi_sink_max_frl(struct intel=
_dp
> *intel_dp)
>  	return max_frl_rate;
>  }
>=20
> +static bool
> +intel_dp_pcon_is_frl_trained(struct intel_dp *intel_dp,
> +			     u8 max_frl_bw_mask, u8 *frl_trained_mask) {
> +	if (drm_dp_pcon_hdmi_link_active(&intel_dp->aux) &&
> +	    drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, frl_trained_mask) =3D=3D
> DP_PCON_HDMI_MODE_FRL &&
> +	    *frl_trained_mask >=3D max_frl_bw_mask)
> +		return true;
> +
> +	return false;
> +}
> +
>  static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)  =
{  #define
> TIMEOUT_FRL_READY_MS 500 @@ -2208,10 +2220,6 @@ static int
> intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
>  	u8 max_frl_bw_mask =3D 0, frl_trained_mask;
>  	bool is_active;
>=20
> -	ret =3D drm_dp_pcon_reset_frl_config(&intel_dp->aux);
> -	if (ret < 0)
> -		return ret;
> -
>  	max_pcon_frl_bw =3D intel_dp->dfp.pcon_max_frl_bw;
>  	drm_dbg(&i915->drm, "PCON max rate =3D %d Gbps\n", max_pcon_frl_bw);
>=20
> @@ -2223,6 +2231,12 @@ static int intel_dp_pcon_start_frl_training(struct=
 intel_dp
> *intel_dp)
>  	if (max_frl_bw <=3D 0)
>  		return -EINVAL;
>=20
> +	max_frl_bw_mask =3D intel_dp_pcon_set_frl_mask(max_frl_bw);
> +	drm_dbg(&i915->drm, "MAX_FRL_BW_MASK =3D %u\n", max_frl_bw_mask);
> +
> +	if (intel_dp_pcon_is_frl_trained(intel_dp, max_frl_bw_mask,
> &frl_trained_mask))
> +		goto frl_trained;
> +
>  	ret =3D drm_dp_pcon_frl_prepare(&intel_dp->aux, false);
>  	if (ret < 0)
>  		return ret;
> @@ -2232,7 +2246,6 @@ static int intel_dp_pcon_start_frl_training(struct =
intel_dp
> *intel_dp)
>  	if (!is_active)
>  		return -ETIMEDOUT;
>=20
> -	max_frl_bw_mask =3D intel_dp_pcon_set_frl_mask(max_frl_bw);
>  	ret =3D drm_dp_pcon_frl_configure_1(&intel_dp->aux, max_frl_bw,
>  					  DP_PCON_ENABLE_SEQUENTIAL_LINK);
>  	if (ret < 0)
> @@ -2248,19 +2261,15 @@ static int intel_dp_pcon_start_frl_training(struc=
t
> intel_dp *intel_dp)
>  	 * Wait for FRL to be completed
>  	 * Check if the HDMI Link is up and active.
>  	 */
> -	wait_for(is_active =3D drm_dp_pcon_hdmi_link_active(&intel_dp->aux) =3D=
=3D
> true, TIMEOUT_HDMI_LINK_ACTIVE_MS);
> +	wait_for(is_active =3D
> +		 intel_dp_pcon_is_frl_trained(intel_dp, max_frl_bw_mask,
> &frl_trained_mask),
> +		 TIMEOUT_HDMI_LINK_ACTIVE_MS);
>=20
>  	if (!is_active)
>  		return -ETIMEDOUT;
>=20
> -	/* Verify HDMI Link configuration shows FRL Mode */
> -	if (drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask) !=3D
> -	    DP_PCON_HDMI_MODE_FRL) {
> -		drm_dbg(&i915->drm, "HDMI couldn't be trained in FRL Mode\n");
> -		return -EINVAL;
> -	}
> -	drm_dbg(&i915->drm, "MAX_FRL_MASK =3D %u, FRL_TRAINED_MASK =3D
> %u\n", max_frl_bw_mask, frl_trained_mask);
> -
> +frl_trained:
> +	drm_dbg(&i915->drm, "FRL_TRAINED_MASK =3D %u\n", frl_trained_mask);
>  	intel_dp->frl.trained_rate_gbps =3D
> intel_dp_pcon_get_frl_mask(frl_trained_mask);
>  	intel_dp->frl.is_trained =3D true;
>  	drm_dbg(&i915->drm, "FRL trained with : %d Gbps\n", intel_dp-
> >frl.trained_rate_gbps);
> --
> 2.25.1

