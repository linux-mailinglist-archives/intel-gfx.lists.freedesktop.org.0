Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 613D387668D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 15:46:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC4710E9BC;
	Fri,  8 Mar 2024 14:46:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XhNWkScZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85CC110F11F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 14:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709909163; x=1741445163;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hwCf0W2WpvaQ1BLL8LFjpFuHn2uCEouE54cYVT1feUk=;
 b=XhNWkScZqzPVsbpvcwtWPViJlfZf/yVw+x5bAyrmTDlbGjhOkAJ5oAjY
 /FWYzjs9emPcTbm75e5DyF5q8cYZU299EbBDJkNQR6nstV/aPhBNwJqpN
 4aLEFNGS556yt/d7EGxAoyqnuNDjOuEKaRHCtwSxgHLEj70o7NjExQDGw
 B64AsNAUfX0oUXQavJiVFGfe46GXRwN1JJGGV08vSKv9/IvISC40y4UZm
 dwGwwIScAKUSlJCjenZUETiU3rJ1+iup+RypLq74hO8OdF6E2jzzifowd
 fPLN0Z36OPRkII75EerU8Q612PEn2CmdbYMhuWFBNXLLfXIsh7DSsYdDH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="30070379"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="30070379"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:46:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="41458305"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 06:46:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 06:46:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 06:46:01 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 06:46:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fcoBHaJ7E3PmcAiqljlpVcS+YoLuTNT1sRPCxj0CdYU53ILgT3GXpqNR59nWO+JVonXQRknBlCN3+g2j+ENdNx/pgGD7opvLGXeynnKZnaegFnchEfsbnW1V8hTSdC+ZMEt4njk8npCifu8G5YZj1X0Kb6S3iMEt40JxOUXjLglDTGSn1I72K4K3qhDEExGkrHcjA+iiyBKATW/lweuUXHc9fSIfIfVayNGmPMMdpm+c/lOq3HLyzD5dAvHRuLCko301z6oQvKrIIyxwX02PAtcowuLzjwZOqPINlUFXbS4EhW+fVbarxO8BBmYrMliKG24RaX7O2J5sq7asPYRWYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lUh7tNSF/CLfDFuXlLnOCM5Z9iwh9aIYvm3XW9TSntM=;
 b=Y519RTPCaqJxouys4CG9a7kH7ENdxKwmKJ0LCtMGicLW9QQbt/EK4kr+uenQFZiWJJvSy9v3Es6U8M0ym4PAQqTYDxhStZ+ejjPsFv6chGBTk7+2azU0/wEME3yM4B0wwd5EKIUK8VJlxVhgZDK8cxgsxXtOnKV6NyYohUZkNv72yqMAbp3PSkOuoOtuFG7LRqokmYsvj1OrEA0LaNYAv1CiUKH0L6215Bl9GYA2wqZDRdDwyoQ2vs4Hyy0ljNTPvgcanR7amKvQnqe4vPoCL88IBdJAsdri4XL/onMzLOi2lmQmr/rd+wohNS3rDRR2zg7rJ7G2zGYgqjaRf6X3OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ1PR11MB6273.namprd11.prod.outlook.com (2603:10b6:a03:458::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.6; Fri, 8 Mar
 2024 14:45:58 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%5]) with mapi id 15.20.7362.019; Fri, 8 Mar 2024
 14:45:57 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Topic: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Index: AQHabumTblrOKcq9QEeIvwEcCjnmnLEqa02AgAGriYCAAdmusA==
Date: Fri, 8 Mar 2024 14:45:57 +0000
Message-ID: <SJ1PR11MB612973FF4417BFD243979869B9272@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240306085915.1861083-1-suraj.kandpal@intel.com>
 <20240307102927.1872131-1-suraj.kandpal@intel.com>
In-Reply-To: <20240307102927.1872131-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SJ1PR11MB6273:EE_
x-ms-office365-filtering-correlation-id: a79fe756-5b30-4fb1-c786-08dc3f7e7744
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NEMp9VYyjkZMscurvNA0O/PoaYDy1/Jp/oVVxa7dOO40g02MFvotoyZIiNMca/eW3qimUk58CP9Y8KE3KRgq4bIBjG5Ly7mPvsYJch6a+I2sUWwoldOSacuSw0MS4W8RZZwz42N4w2DKhK6eD8bcZnIDByRm4Nr/8YaLaYPkpOfhIbcD+4S5gIb/SViz7wsbbH20K2/tWtV0INyjN/2CW9KWEw5CbLiQnZmIxzwExnyNQ2iHCCSdykUwLJ0ub9Xd6hv9MnJSU6u+WqYXT2nPx6v510MfDqBo9uRz03x68c/uAUJyTGAENvc/HeW0nHNUUYB5yNlPOPevl2sjB5mP3BJriYU2Uag5QGKGFvOozufRsd4vUaXM6A/ShGia6Pr4LnTU3sWfa8DFsoDWD4qR2GQ/hzxY882TebpbrWi6BnmnwBvFp0MajGH1N2gODWY75Kmzx0QYmuu3IjQQu6QIRHMgEkm8onbYOLJgpLZnZtW1zHohPfmtcHp7xxprBJnw5EJ0OTwB2UmGLaLe48AZiHMvvlIarvvoe+jXkio2R3enq0f2CJnh+DvYN+8dLiaUHk4MgX4LieRzqvWhwLOr4XFjrMePfs4SoASYVgBIR19+ganZXREqi9L3rtNmva9rhdukrosdXZgvUCfA3y9gclzP+1kJIV1GgB37bSjMtXpjaniEaPbLvSXJcoTp3z5b60/gIk+0wyEa/xEVkebqkQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KSMvUT1q2wBjsyzzTaPBTD4cgAImHGINgxi0fRgHwIqlGEEa+U7LbGLqR3Dr?=
 =?us-ascii?Q?WLXoV1P8U1j+YJiAjDCOE9mJiTvc/vlhY9vUJEf1zcZ9hwXhmPAnA1l2EsUg?=
 =?us-ascii?Q?PPtBwTzJQCDoYHi/Ojq5JB2qBTYvQ4pj9uAq4rFqDia5lyZmTz/sp89Zwz7y?=
 =?us-ascii?Q?ndcphfAVb+LRkzRwBCmSQG5NmIa0UTKeibzrYzcCTihoiQ9r9a5HdVOr67wK?=
 =?us-ascii?Q?yT7C8ab21C/98n7dKMRlKrFzQFS650kmlDbcANoWE6A6y+zpOTiWI4FSGRB3?=
 =?us-ascii?Q?kzJhOmKZle0D3Sjz6SUImEqpfOZv0TXca41OX/a7q/KYxsUYkU+v/me+lWv5?=
 =?us-ascii?Q?qsXsNcaXRpjlcyjB1Fhj+PmENyhg/QeKaOyzE1iqcmunf3mAW3EMPePjDOpo?=
 =?us-ascii?Q?xvEq+s73M3zvFW0KlAfvwv/OCfnGapTvHFv8K4KUMd68m2Q9ErtUcSlE7MCw?=
 =?us-ascii?Q?bPdr9kIKN4teHnPmpdjsjNSTTbqT/KNyMFEX/Y1r4koH5cdPcXmBPgKK3i3Z?=
 =?us-ascii?Q?ybj9dNbzcsE/hwhGDC1BLoJwTIKA4h+2Rx8xwCj0SAdtyFXNQOR4/DMQbra7?=
 =?us-ascii?Q?BaKNqLSNa1UWOrgwRD/UwWiXTmN/5gEQZv916mz43KZcBhEqzi5XrQ4OPJB3?=
 =?us-ascii?Q?WTPwYAv98RMS4P7lBWEffqzhzIgsc/UrHicMsqzdiwRqbDgUyEDMAtOPbO1d?=
 =?us-ascii?Q?KSXTLntGghJ9qAUjqKgVUMyiB+WkYa+YR8SID+AqSPmf3mddtW02Sl5MdwoY?=
 =?us-ascii?Q?kj4jzjoSxC3IiOoj/8vNuAfSbRnjjjCSXphkEQ48Y7OOyCU7InIjWndewOak?=
 =?us-ascii?Q?SbPTAmW1Xm0A1wNvIxTsT5pnZZaf50OA/q5e6Y68kCVHmUpk9grkRYG8ZeXF?=
 =?us-ascii?Q?ygtTKfndvpswFdhdjxY4iVWyOn9OGjbJjNg1Zi2Zws41zD7H0P70+kNkH/Fa?=
 =?us-ascii?Q?CCGtuRL1gCYOj6AOy8HTkdtuzfH/jj/jOOAJqLrObRaLUxBZd5OhoUanMgVN?=
 =?us-ascii?Q?HiB+XWOQePtXUn8KIrhKn7Mx+ZjR6AQ7P8j0v2vHxxh4CkEIQdvsCzEuOGd+?=
 =?us-ascii?Q?ABPPxMvuMu+u5Y/BzqLhOIh6VS9k8isbJfxD65A6YoRMP5ebNzLr+KBM4xqQ?=
 =?us-ascii?Q?kbq8QedqFMH4U2qCvxTwSMhTherU9As2vZNz/yiOZlCr4vqYmLE8yDdND4uc?=
 =?us-ascii?Q?KHITbckc1n0JSCdtOyKflrzZgyNETwEbLwPlgAwT3jhpA6Pd85lD/VMMWBPP?=
 =?us-ascii?Q?2A3cQRqzcALx0dOVT+kRccLybkT/ndJHzWvNOMXQXKMZqHlWnPECL7wojBNG?=
 =?us-ascii?Q?A8RjE1Buti/JQDR3OXmHwhaoMXj6HgEVJG87xfErYRmJE22jjK5hxhzFJw44?=
 =?us-ascii?Q?9Ww1TccQl86rPA0AqA4/KTXgfJCgYN/82jaXWYfyEGNEaj/Ylb2PsTsgdZBK?=
 =?us-ascii?Q?RZTNffEHM4vi7IKoJyNuM4B8rx1jSmKYqO3HOmx6044ljEDt81QGNbwV93ZO?=
 =?us-ascii?Q?sS/NYEc20HOUxgzNWA1nO8Exdh7f6dD8ohjF5w/lnRzA9lJnbUHy/bPtTA5O?=
 =?us-ascii?Q?DGZjyt4K0j9xsEqMWB2Z3v4nFKgiLJY60hz3Fn3Hc+/7QrjzBgCAg1niGml2?=
 =?us-ascii?Q?0A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a79fe756-5b30-4fb1-c786-08dc3f7e7744
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 14:45:57.8619 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yJ1fPXtJRa5gGs2M4vtcwfJKCheBei/cFV245qboy6XiGah6xE8rabDyRKIqxp+khioSjsYWvGHAwDW63i1K/NkNQwALC2GhwF/UKuHF0GA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6273
X-OriginatorOrg: intel.com
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

Hello Suraj,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Thursday, March 7, 2024 3:59 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
>=20
> As of now whenerver HDR is switched on we use the PWM to change the
> backlight as opposed to AUX based backlight changes in terms of nits.
> This patch writes to the appropriate DPCD registers to enable aux based
> backlight using values in nits.
>=20
> --v2
> -Fix max_cll and max_fall assignment [Jani] -Fix the size sent in
> drm_dpcd_write [Jani]
>=20
> --v3
> -Content Luminance needs to be sent only for pre-ICL after that it is dir=
ectly
> picked up from hdr metadata [Ville]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 33 ++++++++++++++-----
>  1 file changed, 25 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 4f58efdc688a..cba7b8f5dad4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -40,11 +40,6 @@
>  #include "intel_dp.h"
>  #include "intel_dp_aux_backlight.h"
>=20
> -/* TODO:
> - * Implement HDR, right now we just implement the bare minimum to bring
> us back into SDR mode so we
> - * can make people's backlights work in the mean time
> - */
> -
>  /*
>   * DP AUX registers for Intel's proprietary HDR backlight interface. We =
define
>   * them here since we'll likely be the only driver to ever use these.
> @@ -221,7 +216,7 @@ intel_dp_aux_hdr_set_backlight(const struct
> drm_connector_state *conn_state, u32
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
> -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +	if (panel->backlight.edp.intel.sdr_uses_aux ||
> +conn_state->hdr_output_metadata) {
>  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
>  	} else {
>  		const u32 pwm_level =3D
> intel_backlight_level_to_pwm(connector, level); @@ -251,8 +246,15 @@
> intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_sta=
te,
>  	}
>=20
>  	ctrl =3D old_ctrl;
> -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +	if (panel->backlight.edp.intel.sdr_uses_aux ||
> +conn_state->hdr_output_metadata) {
>  		ctrl |=3D INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> +
> +		if (conn_state->hdr_output_metadata) {
> +			ctrl |=3D
> INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> +			ctrl |=3D
> INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> +			ctrl |=3D
> INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> +		}
> +
>  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
>  	} else {
>  		u32 pwm_level =3D intel_backlight_level_to_pwm(connector,
> level); @@ -292,9 +294,11 @@ intel_dp_aux_hdr_setup_backlight(struct
> intel_connector *connector, enum pipe pi  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_panel *panel =3D &connector->panel;
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
>  	struct drm_luminance_range_info *luminance_range =3D
>  		&connector->base.display_info.luminance_range;
>  	int ret;
> +	u8 buf[4];
>=20
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is
> controlled through %s\n",
>  		    connector->base.base.id, connector->base.name, @@ -
> 318,11 +322,24 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector
> *connector, enum pipe pi
>  		panel->backlight.min =3D 0;
>  	}
>=20
> +	if (DISPLAY_VER(i915) < 11) {
> +		buf[0] =3D connector-
> >base.hdr_sink_metadata.hdmi_type1.max_cll & 0xFF;
> +		buf[1] =3D (connector-
> >base.hdr_sink_metadata.hdmi_type1.max_cll & 0xFF00) >> 8;
> +		buf[2] =3D connector-
> >base.hdr_sink_metadata.hdmi_type1.max_fall & 0xFF;
> +		buf[3] =3D (connector-
> >base.hdr_sink_metadata.hdmi_type1.max_fall &
> +0xFF00) >> 8;
> +
> +		ret =3D drm_dp_dpcd_write(&intel_dp->aux,
> INTEL_EDP_HDR_CONTENT_LUMINANCE, buf,
> +					sizeof(buf));
> +		if (ret < 0)
> +			drm_dbg_kms(&i915->drm,
> +				    "Content Luminance DPCD reg write failed,
> err:-%d\n",

Any reason for printing this in negative?

Regards
Chaitanya

> +				    ret);
> +	}
> +
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR
> interface for backlight control (range %d..%d)\n",
>  		    connector->base.base.id, connector->base.name,
>  		    panel->backlight.min, panel->backlight.max);
>=20
> -
>  	panel->backlight.level =3D intel_dp_aux_hdr_get_backlight(connector,
> pipe);
>  	panel->backlight.enabled =3D panel->backlight.level !=3D 0;
>=20
> --
> 2.43.2

