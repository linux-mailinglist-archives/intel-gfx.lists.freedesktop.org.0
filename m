Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 186C4447A9D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 07:52:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A8D96E4C9;
	Mon,  8 Nov 2021 06:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 098386E4C5
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 06:51:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10161"; a="219075940"
X-IronPort-AV: E=Sophos;i="5.87,217,1631602800"; d="scan'208";a="219075940"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2021 22:51:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,217,1631602800"; d="scan'208";a="499621664"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 07 Nov 2021 22:51:56 -0800
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 7 Nov 2021 22:51:55 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 12:21:53 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Mon, 8 Nov 2021 12:21:53 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/2] drm/i915/dp: For PCON TMDS mode set only the
 relavant bits in config DPCD
Thread-Index: AQHX1Gsqj9Wzeu2d+U2n/Kj+UbaPoKv5MTnQ
Date: Mon, 8 Nov 2021 06:51:53 +0000
Message-ID: <299e8e8330774a279f857732ebe77ca5@intel.com>
References: <20211029060154.110038-3-ankit.k.nautiyal@intel.com>
 <20211108062407.146056-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20211108062407.146056-1-ankit.k.nautiyal@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/dp: For PCON TMDS mode set
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
> Sent: Monday, November 8, 2021 11:54 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>
> Subject: [PATCH v2 2/2] drm/i915/dp: For PCON TMDS mode set only the rela=
vant
> bits in config DPCD
>=20
> Currently we reset the whole PCON linkConfig DPCD to set the TMDS mode.
> This also resets the Source control bit and HDMI link enable bit and goes=
 to
> autonomous mode of operation, which is seen to spoil the PCONs internal s=
tate.
>=20
> This patch avoids resetting the PCON link config register and sets only t=
he source
> control bit, with FRL Enable bit set to 0 (TMDS mode) in the configuratio=
n DPCD. It
> then enables the HDMI Link Enable bit.
>=20
> v2: Removed the redundant resetting of the bits as the buffer is already =
initialized to
> 0. (Uma) Updated comments and commit message.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index f5fd106e555c..a0ff16bc18f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2287,6 +2287,28 @@ static bool intel_dp_is_hdmi_2_1_sink(struct intel=
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
> +	/* Set PCON source control mode */
> +	buf |=3D DP_PCON_ENABLE_SOURCE_CTL_MODE;
> +
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
> +2327,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
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

