Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1886D494BE5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:41:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2824010E48C;
	Thu, 20 Jan 2022 10:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A80C10E716
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642675274; x=1674211274;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dWjTwbX6woHs6EFor8bEzdYtT/AxOTfTMq68/Oz38No=;
 b=DZZARp1raRFX6X+REwTc4pNKAMCmdPnkArpFPtVJbVsYWAqhFMo+Zu9m
 jLEuwJXJdrSTGMPD5gycuLqUsGmySLkUu3z9O9lSYfTGCNd6rLosYTrD7
 QvEB2+VYATUKZyTzP3ui5/ouKkZXGx4StmKVqQyJt9pMaBdgahmlwsWya
 jN+WC8LyFsCznOHGxyqX+RM4qXmUywKnnbrRSs8ls56Jd2vYqR3oeSbWJ
 2MtOKJlLYD37IMd6XGVH+rOZKODmMu6ydEVe/ozPEHuHJmHe/q2S7eCNx
 xe7CowBjaAfQzB6WraK6zKvI2XLBUHUwPwr3c3wXKckQe6z49c5U4n9Fa g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="308661189"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="308661189"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:41:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="622852640"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2022 02:41:12 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 10:41:09 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 16:11:08 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH RESEND 5/7] drm/i915/mst: read link status
 only when requested by sink in ESI
Thread-Index: AQHYB6QTHvZFXExqhEW3Axz4fVznJ6xrxPNg
Date: Thu, 20 Jan 2022 10:41:07 +0000
Message-ID: <2a4d6d7cf26c418b94cd51a7982bee1d@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
 <20220112110319.1172110-5-jani.nikula@intel.com>
In-Reply-To: <20220112110319.1172110-5-jani.nikula@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH RESEND 5/7] drm/i915/mst: read link status
 only when requested by sink in ESI
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni Nikula
> Sent: Wednesday, January 12, 2022 4:33 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH RESEND 5/7] drm/i915/mst: read link status on=
ly when
> requested by sink in ESI
>=20
> The link service irq vector in DPCD 0x2005 contains the link status chang=
ed bit to
> indicate the status should be checked. Only read and check the link statu=
s when
> requested by the sink.
>=20
> This also reduces the confusion around the buffer size for the combined E=
SI and link
> status. Alas, we still need to take into account that all link status hel=
pers expect a
> buffer of DP_LINK_STATUS_SIZE (6) while the link status in ESI only has 4=
 bytes.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 41 +++++++++++--------------
>  1 file changed, 18 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5a7976768b06..d8a0ba3a14b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -73,8 +73,6 @@
>  #include "intel_vdsc.h"
>  #include "intel_vrr.h"
>=20
> -#define DP_DPRX_ESI_LEN 14
> -
>  /* DP DSC throughput values used for slice count calculations KPixels/s =
*/
>  #define DP_DSC_PEAK_PIXEL_RATE			2720000
>  #define DP_DSC_MAX_ENC_THROUGHPUT_0		340000
> @@ -2814,11 +2812,9 @@ intel_dp_configure_mst(struct intel_dp *intel_dp) =
 }
>=20
>  static bool
> -intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *sink_irq_vector=
)
> +intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
>  {
> -	return drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI,
> -				sink_irq_vector, DP_DPRX_ESI_LEN) =3D=3D
> -		DP_DPRX_ESI_LEN;
> +	return drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI, esi, 4) =3D=
=3D
> +4;
>  }
>=20
>  static bool intel_dp_ack_sink_irq_esi(struct intel_dp *intel_dp, u8 esi[=
4]) @@ -
> 3639,12 +3635,22 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *e=
si, bool
> *handled)
>  	}
>  }
>=20
> -static bool intel_dp_mst_link_status(struct intel_dp *intel_dp, u8 *esi)
> +static bool intel_dp_mst_link_status(struct intel_dp *intel_dp)
>  {
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	u8 link_status[DP_LINK_STATUS_SIZE] =3D {};
> +	const size_t esi_link_status_size =3D DP_LINK_STATUS_SIZE - 2;
> +
> +	if (drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS_ESI,
> link_status,
> +			     esi_link_status_size) !=3D esi_link_status_size) {
> +		drm_err(&i915->drm,
> +			"[ENCODER:%d:%s] Failed to read link status\n",
> +			encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
>=20
> -	if (!drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
> +	if (!drm_dp_channel_eq_ok(link_status, intel_dp->lane_count)) {
>  		drm_dbg_kms(&i915->drm,
>  			    "[ENCODER:%d:%s] channel EQ not ok, retraining\n",
>  			    encoder->base.base.id, encoder->base.name); @@ -
> 3676,18 +3682,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  	drm_WARN_ON_ONCE(&i915->drm, intel_dp->active_mst_links < 0);
>=20
>  	for (;;) {
> -		/*
> -		 * The +2 is because DP_DPRX_ESI_LEN is 14, but we then
> -		 * pass in "esi+10" to drm_dp_channel_eq_ok(), which
> -		 * takes a 6-byte array. So we actually need 16 bytes
> -		 * here.
> -		 *
> -		 * Somebody who knows what the limits actually are
> -		 * should check this, but for now this is at least
> -		 * harmless and avoids a valid compiler warning about
> -		 * using more of the array than we have allocated.
> -		 */
> -		u8 esi[DP_DPRX_ESI_LEN+2] =3D {};
> +		u8 esi[4] =3D {};
>  		bool handled;
>=20
>  		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) { @@ -3700,9 +3695,9
> @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>=20
>  		drm_dbg_kms(&i915->drm, "DPRX ESI: %4ph\n", esi);
>=20
> -		/* check link status - esi[10] =3D 0x200c */
> -		if (intel_dp->active_mst_links > 0 && link_ok) {
> -			if (!intel_dp_mst_link_status(intel_dp, esi))
> +		if (intel_dp->active_mst_links > 0 && link_ok &&
> +		    esi[3] & LINK_STATUS_CHANGED) {
> +			if (!intel_dp_mst_link_status(intel_dp))
>  				link_ok =3D false;
>  		}
>=20
> --
> 2.30.2

