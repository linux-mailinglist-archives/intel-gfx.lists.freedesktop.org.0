Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EE5494BAB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:28:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70DD710E4CF;
	Thu, 20 Jan 2022 10:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A55710E4D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642674534; x=1674210534;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qCrT4rKrnY/1rRvNJsMEQI0hdDX0kbpIloWWq5Kps2Y=;
 b=baSVR1ijEPgruOHsaydqNQt3OBB3KH+KWzAN5eTcHaNbY5m1KFY86L7d
 H2tEHu+dW2otPrwUv97CpZYP61/07BkxFAwH8zd28yikBBVELfhle+KXX
 M13Um3Z5ZFC7o1YvaSJJx53etF0JENE0NxjxGIpCV+aD90wLXegV8UM4B
 Fy5rP/ZGucpnfRp3mgIaPO/XRQKcjT02D6guGnRQb55FMI8dP9RxzNRmD
 IpNTCaKSf/JvOi6rkJsij9rB7aB6iEXvQLrPGTIusDp9exU8WoiKXoyda
 TraX1Runt8m27zgvMr6yQjuiI5FeOjGZ8upDqY30IiS9Sm8P93TYOoiWh Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="225301355"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="225301355"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:28:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="530950566"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga007.fm.intel.com with ESMTP; 20 Jan 2022 02:28:44 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 10:28:42 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 15:58:40 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915/mst: abstract
 intel_dp_ack_sink_irq_esi()
Thread-Index: AQHYAZIkO1JME/AAXUWYD7UudH3QQKxrzXsw
Date: Thu, 20 Jan 2022 10:28:40 +0000
Message-ID: <c0a48445d9c84a7cb644f392699c9028@intel.com>
References: <cover.1641317930.git.jani.nikula@intel.com>
 <1049e7188a76c421fab7797b5c4a6aa1b709f4c9.1641317930.git.jani.nikula@intel.com>
In-Reply-To: <1049e7188a76c421fab7797b5c4a6aa1b709f4c9.1641317930.git.jani.nikula@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/mst: abstract
 intel_dp_ack_sink_irq_esi()
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
> Sent: Tuesday, January 4, 2022 11:10 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH 2/7] drm/i915/mst: abstract intel_dp_ack_sink=
_irq_esi()
>=20
> Smaller functions make the thing easier to read. Debug log failures to ac=
k.
>=20
> Note: Looks like we have the retry loop simply because of hysterical rais=
ins, dating

Nit: Typo in reasons.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> back to the original DP MST enabling. Keep it, though I have no idea why =
we have it.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++----------
>  1 file changed, 15 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 357c39e09bf6..ebf80a875a41 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2820,6 +2820,19 @@ intel_dp_get_sink_irq_esi(struct intel_dp *intel_d=
p, u8
> *sink_irq_vector)
>  		DP_DPRX_ESI_LEN;
>  }
>=20
> +static bool intel_dp_ack_sink_irq_esi(struct intel_dp *intel_dp, u8
> +esi[4]) {
> +	int retry;
> +
> +	for (retry =3D 0; retry < 3; retry++) {
> +		if (drm_dp_dpcd_write(&intel_dp->aux, DP_SINK_COUNT_ESI + 1,
> +				      &esi[1], 3) =3D=3D 3)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  bool
>  intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>  		       const struct drm_connector_state *conn_state) @@ -3660,7
> +3673,6 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  		 */
>  		u8 esi[DP_DPRX_ESI_LEN+2] =3D {};
>  		bool handled;
> -		int retry;
>=20
>  		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
>  			drm_dbg_kms(&i915->drm,
> @@ -3685,15 +3697,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_d=
p)
>  		if (!handled)
>  			break;
>=20
> -		for (retry =3D 0; retry < 3; retry++) {
> -			int wret;
> -
> -			wret =3D drm_dp_dpcd_write(&intel_dp->aux,
> -						 DP_SINK_COUNT_ESI+1,
> -						 &esi[1], 3);
> -			if (wret =3D=3D 3)
> -				break;
> -		}
> +		if (!intel_dp_ack_sink_irq_esi(intel_dp, esi))
> +			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
>  	}
>=20
>  	return link_ok;
> --
> 2.30.2

