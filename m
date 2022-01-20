Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7AF494CF3
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 12:29:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DD610E45A;
	Thu, 20 Jan 2022 11:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F1B10E33C
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 11:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642678182; x=1674214182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=drpVzTxWGeUOQSZOSBOyySoV3suyT5kENThNedtAS+k=;
 b=DaN7zsuZMxe6gDxOPKpxMggrMjy+ebE25cBP6iRnlpQkZUdTpNJUEsQr
 a4nEQYCThai0nQQBNVWps+MPiflCmAnhzUvV43+4MpSGphiWk9LuLrrJg
 fzPr7URozVrjVzKfcAB6qkxuANgQTmLqOVxaAFg4jNu7py+wkY5AZ7zUe
 F7n7sRQjDjr7Uh8rzBZ7Wkp2NKOH57s7wE/M48wXpcrm+GiRPWJ+Yjl5j
 RyTaWZDzT6FMC3tjTlq3JmT+TtXRx9vy4vV7L/PjciJ+Xdizhcn7c3VaW
 6pi6blOG1vhsAgOi0ocJwVRgGCPzfPMsnZza+KFFLJEC2FVaPqLUuurHO w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="245286494"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="245286494"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:29:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="622867473"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2022 03:29:41 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 11:29:39 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 16:59:37 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH RESEND 2/7] drm/i915/mst: abstract
 intel_dp_ack_sink_irq_esi()
Thread-Index: AQHYB6QNlMB85Uso+kixsKj+STNDRKxr0qZA
Date: Thu, 20 Jan 2022 11:29:37 +0000
Message-ID: <d25f760900cc40d09ae223701549dee7@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
 <20220112110319.1172110-2-jani.nikula@intel.com>
In-Reply-To: <20220112110319.1172110-2-jani.nikula@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH RESEND 2/7] drm/i915/mst: abstract
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
> Sent: Wednesday, January 12, 2022 4:33 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH RESEND 2/7] drm/i915/mst: abstract
> intel_dp_ack_sink_irq_esi()
>=20
> Smaller functions make the thing easier to read. Debug log failures to ac=
k.
>=20
> Note: Looks like we have the retry loop simply because of hysterical rais=
ins, dating
> back to the original DP MST enabling. Keep it, though I have no idea why =
we have it.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++----------
>  1 file changed, 15 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index e789ecbc69f3..a301220ce2ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2821,6 +2821,19 @@ intel_dp_get_sink_irq_esi(struct intel_dp *intel_d=
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
>  		       const struct drm_connector_state *conn_state) @@ -3661,7
> +3674,6 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  		 */
>  		u8 esi[DP_DPRX_ESI_LEN+2] =3D {};
>  		bool handled;
> -		int retry;
>=20
>  		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
>  			drm_dbg_kms(&i915->drm,
> @@ -3686,15 +3698,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_d=
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

