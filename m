Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED339444085
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 12:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 263A96E9BE;
	Wed,  3 Nov 2021 11:24:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 080606E7DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 11:24:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="218383783"
X-IronPort-AV: E=Sophos;i="5.87,205,1631602800"; d="scan'208";a="218383783"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 04:24:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,205,1631602800"; d="scan'208";a="501020595"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 03 Nov 2021 04:24:20 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 04:24:19 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 16:54:17 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Wed, 3 Nov 2021 16:54:17 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/dp: For PCON TMDS mode set only the
 relavant bits in config DPCD
Thread-Index: AQHXzIxuKCS3ZaqWPU+cFNh92vx35qvxsP7A
Date: Wed, 3 Nov 2021 11:24:17 +0000
Message-ID: <0d1a3a2ae9b04722baa81f05be5f55d7@intel.com>
References: <20211029060154.110038-1-ankit.k.nautiyal@intel.com>
 <20211029060154.110038-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20211029060154.110038-3-ankit.k.nautiyal@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: For PCON TMDS mode set
 only the relavant bits in config DPCD
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
> Subject: [PATCH 2/2] drm/i915/dp: For PCON TMDS mode set only the relavan=
t bits
> in config DPCD
>=20
> Currently we reset the whole PCON linkConfig DPCD to set the TMDS mode.
> This also resets the Source control bit and HDMI link enable bit and goes=
 to
> autonomous mode of operation, which is seen to spoil the PCONs internal s=
tate.
>=20
> This patch avoids resetting the PCON link config register and sets only T=
MDS mode
> bit, Source control bit in the configuration DPCD.
> It then enables the HDMI Link Enable bit.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 25 ++++++++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index f5fd106e555c..3df35079580a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2287,6 +2287,29 @@ static bool intel_dp_is_hdmi_2_1_sink(struct intel=
_dp
> *intel_dp)
>  	return false;
>  }
>=20
> +static
> +int intel_dp_pcon_set_tmds_mode(struct intel_dp *intel_dp) {
> +	int ret;
> +	u8 buf =3D 0;
> +
> +	/* Set PCON source control mode and TMDS */
> +	buf |=3D DP_PCON_ENABLE_SOURCE_CTL_MODE;
> +	buf &=3D ~DP_PCON_ENABLE_MAX_FRL_BW;
> +

I don't see setting this to TMDS, we should be still in FRL mode as bit5 is=
 not being reset here.
Am I missing something ?

Regards,
Uma Shankar
> +	ret =3D drm_dp_dpcd_writeb(&intel_dp->aux,
> DP_PCON_HDMI_LINK_CONFIG_1, buf);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Set HDMI LINK ENABLE */
> +	buf |=3D DP_PCON_ENABLE_HDMI_LINK;
> +	ret =3D drm_dp_dpcd_writeb(&intel_dp->aux,
> DP_PCON_HDMI_LINK_CONFIG_1, buf);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +
>  void intel_dp_check_frl_training(struct intel_dp *intel_dp)  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp); @@ -2305,7
> +2328,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
>  		int ret, mode;
>=20
>  		drm_dbg(&dev_priv->drm, "Couldn't set FRL mode, continuing with
> TMDS mode\n");
> -		ret =3D drm_dp_pcon_reset_frl_config(&intel_dp->aux);
> +		ret =3D intel_dp_pcon_set_tmds_mode(intel_dp);
>  		mode =3D drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, NULL);
>=20
>  		if (ret < 0 || mode !=3D DP_PCON_HDMI_MODE_TMDS)
> --
> 2.25.1

