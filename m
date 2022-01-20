Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C18494BF8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3896210E72B;
	Thu, 20 Jan 2022 10:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F91910E72B
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642675404; x=1674211404;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OdSoYhroXgQDykDVh49rpUnXDUMH3WctvaMHlHOgR2c=;
 b=l736khTynsw6ubx5vEq25uHg6CjhPXap1+Qcymzs/AD+5xOo8D6RZ7Ei
 VL81n8HAw9a+FpdKUcIHKmfVxoIu11VtrD0+8VpcDmbBY9hqVRngbQeDy
 AT0slUrmN+cB4iyv1Ex3VNb8HnoYhAe8AeZuN8680ZVNWwFslWp3gcb6T
 do8tp2yuRk2kh/sBlFL/+U081UioizUyEnmXFTRDd8cF81nJs+/YDNu/I
 36R/SH96otsUrX6bC+PpXjNi8tjvoDES/h5t/4q0aDntr+MEjrMmvpcgx
 YHPTZcLrNTVAsu/zJ8GIzDq3CwIR023r5Lz4/cPtzYay5Fy/BoqJ1aIXU Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="244144419"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="244144419"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:43:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="532720876"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga008.jf.intel.com with ESMTP; 20 Jan 2022 02:43:23 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 10:43:21 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 16:13:19 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/mst: only ack the ESI we
 actually handled
Thread-Index: AQHYB6QkAssQKIWe+0ankHYUb3YnbKxrxa6Q
Date: Thu, 20 Jan 2022 10:43:19 +0000
Message-ID: <2e0b588d721e46a4ad9e94604421135f@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
 <20220112110319.1172110-7-jani.nikula@intel.com>
In-Reply-To: <20220112110319.1172110-7-jani.nikula@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/mst: only ack the ESI
 we actually handled
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
> Subject: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/mst: only ack the ESI we=
 actually
> handled
>=20
> Seems odd that we clear all event status indicators if we've only handled=
 some. Only
> clear the ones we've handled.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 95e9f7220ab8..548419a4ead8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3625,13 +3625,17 @@ static void intel_dp_handle_test_request(struct
> intel_dp *intel_dp)  }
>=20
>  static void
> -intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, bool *handled)
> +intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
>  {
> -	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, handled);
> +	bool handled =3D false;
> +
> +	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, &handled);
> +	if (handled)
> +		ack[1] |=3D DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY;
>=20
>  	if (esi[1] & DP_CP_IRQ) {
>  		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
> -		*handled =3D true;
> +		ack[1] |=3D DP_CP_IRQ;
>  	}
>  }
>=20
> @@ -3683,7 +3687,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp=
)
>=20
>  	for (;;) {
>  		u8 esi[4] =3D {};
> -		bool handled;
> +		u8 ack[4] =3D {};
>=20
>  		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
>  			drm_dbg_kms(&i915->drm,
> @@ -3699,15 +3703,15 @@ intel_dp_check_mst_status(struct intel_dp *intel_=
dp)
>  		    esi[3] & LINK_STATUS_CHANGED) {
>  			if (!intel_dp_mst_link_status(intel_dp))
>  				link_ok =3D false;
> -			handled =3D true;
> +			ack[3] |=3D LINK_STATUS_CHANGED;
>  		}
>=20
> -		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
> +		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
>=20
> -		if (!handled)
> +		if (!memchr_inv(ack, 0, sizeof(ack)))
>  			break;
>=20
> -		if (!intel_dp_ack_sink_irq_esi(intel_dp, esi))
> +		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
>  			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
>  	}
>=20
> --
> 2.30.2

