Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC966494D07
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 12:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93E610E4C6;
	Thu, 20 Jan 2022 11:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9FE10E4C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 11:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642678290; x=1674214290;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+E926DQGaUi/w9VUv6IPl3FLsFlZhWpYgkrjsT9m4h0=;
 b=ccggR6lIldweqckKjX65CiwGm/SRSmS5ham63Z+eAod12DdQjfBydFSM
 rwwlbja6lBZQO5qv1smrSz8aK37D6o/JeeIFncj3fxchTROoDZ0LTM0gf
 tiYZ8UHqvkxpYSaOoBVEOSxurmUTcqlsydInzfsbqVjg5W86N+IMSOdBo
 IsTMDrC6lJFT13QGIvY4pONQkX6C7YMG8iWOTEdrbltQ4TxLBkPtKp3qv
 29kHPW+21fQyDr6DWQqKcHevOoKn/lHZoF3Zk4BfhFgj3aWu7RjyMUGlL
 SGowGKbrjYjGAI9uwJHM8p69xWuJrLrb/fQYPm0Z9Zgtmdzapc7sMIjWc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="245286727"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="245286727"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:31:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="765282393"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jan 2022 03:31:29 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 11:31:27 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 17:01:25 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/mst: only ack the ESI we
 actually handled
Thread-Index: AQHYDe0XSiX/2r3PwUW2m1X5WBLBjaxrxnHg
Date: Thu, 20 Jan 2022 11:31:25 +0000
Message-ID: <6f607f172c8147f6b87fa0c2e33d96a8@intel.com>
References: <20220112110319.1172110-7-jani.nikula@intel.com>
 <20220120110102.3116218-1-jani.nikula@intel.com>
In-Reply-To: <20220120110102.3116218-1-jani.nikula@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mst: only ack the ESI we
 actually handled
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni Nikula
> Sent: Thursday, January 20, 2022 4:31 PM
> To: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2] drm/i915/mst: only ack the ESI we actuall=
y handled
>=20
> Seems odd that we clear all event status indicators if we've only handled=
 some. Only
> clear the ones we've handled.
>=20
> v2: ack DOWN_REP and UP_REQ only if they were set in esi (Ville)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0960e6e3be77..cb726cee9e1d 100644
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
> +		ack[1] |=3D esi[1] & (DP_DOWN_REP_MSG_RDY |
> DP_UP_REQ_MSG_RDY);
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

