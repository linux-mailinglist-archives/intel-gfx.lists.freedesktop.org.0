Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 969069D0924
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 06:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C97E10E318;
	Mon, 18 Nov 2024 05:54:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8ZK0Ko2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D371610E318
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 05:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731909270; x=1763445270;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZuNYDvSR9pjeAkWkCAS9kJ3TV4VdSoTkB6CJmqD+hiA=;
 b=T8ZK0Ko2r0CM+BpDMiFzPa34dKWUDWekbTpNpH2UzZfCw6cYBzkmPS+o
 mFEOvdho4wvq2NaO/rlvVf7uwjd/wgZJiYnZpkE1z0sCterS7hAUI/NYC
 pX0yjuR0D+n3oh3GFFWWLEMjEZG1dk5le3n+Zsoz0F8Njv7Na0sxdaj3l
 wdYTR9F+1tvj0kPVOyw72DV58CCimwhBcU9vzOCAfvOZZE27TJID/yyL4
 AXDo6ffUQZDxz9y4IZ8Z9LQIpA9SxMZrZDlFkRvyOFzlfduipeHIs2vFA
 0aql3vO7G8Yo2sWdnZTirq9QOIUettTPNYPKCU/RGO/IMQi633f2KN+TJ Q==;
X-CSE-ConnectionGUID: U1L+v8SBR9+4iDmdEblAtg==
X-CSE-MsgGUID: nb85sfOyT9ejO9F2Iv8Nmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="31905553"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="31905553"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2024 21:54:30 -0800
X-CSE-ConnectionGUID: Yy6FcNzfRJ636AkJtE4ZMQ==
X-CSE-MsgGUID: oIih0Pe/SjuXhjauuZn4kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="89533436"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2024 21:54:29 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 17 Nov 2024 21:54:29 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 17 Nov 2024 21:54:29 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 17 Nov 2024 21:54:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JPdKnlz/oL7XpekG1fYAbQ9xiN/iEJKLSSPQ8MYjFelotPv7Ms33rhTf7Uk4gnELCtegTAtgqza/ysDcgZ1xAmRjeQmOJ4yt/15LfY2hW/a73nF0g10b2S4ARMk4iuZquiXwmsH8Vt6TvK3brzFjFskJcLEy4XRGFQZViUlQqj7V9MU1tVUhl8Wy4f47szrbMMqCfuKzHPWTxvkwCo5w2YfLFVETTHEbOq21RF6Pr0j/WSi9sZXfshe9cIdjSLVetodaQ6OUveouxdrnMKTmdZEQvhawFEWYhhaxxUD1sPFE3FnTE3iCXtBXqQIos1yiEXkjDkbI76kUfJdL0XK/EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JhSQScTEmJQ/x8dbB5zelqKfA5DAVAt9cekMopnNMtM=;
 b=xOasoCkkaaljyepNM3PsZ2grXlxx7TFQiL+uQN81YFAhwqz3Iyi+ogvZsz8okoX98DgbhemPigT9fkyL7bHO5TOzzbFCtoDU+3Y+IkqS/Xrur3FeM5lpUJXurbINmDApoTRvBIwyBa17Htzj8ZFuZwsTGD+H3PgUlvxIXi7l7eSCItXcTRrWKiANq2+K6oCDtiaoR/24J3VkuFJyBTz+HllOYiLKeyHeMVk54ILpvdZE8BolxL3TwdlZyg53b7q2+06SLmiUFXolbzzkQbGVxkn0bF9tRXbikcWVz6bZyJMwZJZOEDNRnmgWv/X8vIznL44w19B/LZxGufKwZGhqTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB7116.namprd11.prod.outlook.com (2603:10b6:806:29b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Mon, 18 Nov
 2024 05:54:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8158.019; Mon, 18 Nov 2024
 05:54:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Topic: [PATCH] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Index: AQHbOXzCu0LLar0vbkKkykEdmLv0/bK8iP5g
Date: Mon, 18 Nov 2024 05:54:26 +0000
Message-ID: <SN7PR11MB6750735E6C42638CCB316BBAE3272@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241118052327.2475743-1-animesh.manna@intel.com>
In-Reply-To: <20241118052327.2475743-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB7116:EE_
x-ms-office365-filtering-correlation-id: e4510451-8893-4ec1-bd1b-08dd079575e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?q8Nnbjl9gUpk3q8JuO7jrdfNLnv41Ew9ge0sDFjeU3x10fhDtt/wDEhHqjvT?=
 =?us-ascii?Q?dKi7pNNwNratftxqtiK8gk1VDwIDssVss3W2m0aeyeDyisJnocRMpUol1N10?=
 =?us-ascii?Q?OnqT3SBulv4PIf4s4Fc8pfuhOphBvvhc9jAXELaGN45vwJR+KOlwrwvMP5yo?=
 =?us-ascii?Q?7uIVr7MGR5x8gpzdBVCUmeRGFGrQzB0AKwG3phjvj3WgF42d/jlEN35pqVZu?=
 =?us-ascii?Q?D/cM8BmeafDFtEagiOFogLFHTdDMAhkRlWFWIEcAvKmKdswy9HeTxr6+ph3g?=
 =?us-ascii?Q?RLjK8uCkaGhaicc5yrVVt1d3P3F+YRoduyX1WGD7Hmfu2nDhvmeYeyJaOkXF?=
 =?us-ascii?Q?2wnobyW/zoMuFtBpUOvsu/2hgrxCJ872eiWTXIQqP0MM9QcBZ0ASXsBEQTHy?=
 =?us-ascii?Q?z8DEVQKyaSMlOwtYktC8Bus9WvIOt8r3jrhdFNfxqsbj4CKXTgAErjQXnzGC?=
 =?us-ascii?Q?D3ngUiYC580pL3nH7sfhb7vp9SBkkf01bz+nOsFAxAyWGwame6Wce82HGpqI?=
 =?us-ascii?Q?Vd/4nvVCY39ONE3wz1mJUylFVQRlPNNBiUH7fqyqkingHpe52x/ylCaJ0AUI?=
 =?us-ascii?Q?gb2UFb1xQM5d0aHSsN+tnS1eXgRnNn0Dn2K3fKh80SzMtCYDNwdM2EdOKDP6?=
 =?us-ascii?Q?et56WGy14AUqbVOCEBG6XrvaHuuB9RuK9vAKU4HrZeKHMPnOzSTe3SrfqYZ1?=
 =?us-ascii?Q?ybSel5a9gXJGR9Wyv2QRpKWvF/om2VzKH4AHdvPSiHvt9p2fOv30plygKcse?=
 =?us-ascii?Q?AVrh0CpK6ImkJKXTDLbL+1irHigyfSHnI7dZVmA/hP/qkq6YsdI2bDCbJSNB?=
 =?us-ascii?Q?dFWb+MIyM0ZRoZNag4dbkGUBYPklgWa8srutwnahfqlP4nGgxNyM4aG4tQhp?=
 =?us-ascii?Q?nIUAFClGd8XmtdftjN2DjsjcKfOdspA2hpTGhm+9nWiYXw+rF5Ql7pwAFpKF?=
 =?us-ascii?Q?LCDM4g43RxYHqpdQqgSG7Yw1qZkgLz/lER8psBd1XMpggQxpCc3xy2faU0ip?=
 =?us-ascii?Q?ia22La9Fw1h134O8FcEgS2pa05WIJQ0sGO6ypR++wDPOLxKCwperB5ab2Qzq?=
 =?us-ascii?Q?YaRwJ87rZwtprl72EkPWodNSWQXPHBrpaLulWLPyU3+cNcgnU5CvPDLtCbGd?=
 =?us-ascii?Q?k6//VOiMsLcdrWBSikk/xGWiwc7hWMIYwybrZt6bCEO9jKoNy3kAhDBcjNfJ?=
 =?us-ascii?Q?1fLLfb2u0dbjWR5ZGeGN4TnfI390h7kuoKEkuHmDNnP4vmfHyl4yOHj4IioB?=
 =?us-ascii?Q?UsbCWQ8K2Yhwbb8IoUeT6blZkMsJ7j4spvpMafYC5lHcG51m4ER4fSEgLzYu?=
 =?us-ascii?Q?J4vYECECzJtzo5kxjRDaBQ+o?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DmamsUcoGSoibczxwUdrMdmCtgrtooCubXbxOan+Xr3XtX1UoIKRwQRL/QyQ?=
 =?us-ascii?Q?90RQ4CbPNELP0idPUQUw0Nu2LV1AZhe9NCRXDJHdDTA+egy8Q2zCoL5Zx0c8?=
 =?us-ascii?Q?d6GunM/cFSRPcVbdt80686DXKDLx/7vBfcewduiSrj8LU6D6DN55kApWut8A?=
 =?us-ascii?Q?S2DhNOIqSr/uulBH/J8HlBIKjhYjQZ6gb73RtAF3yuupT1nU05nSDR0zeZb0?=
 =?us-ascii?Q?z7Ig3UTrFEPFqsiZdc5HxT3nDgJJRP96emDEscAStQdckSfi5U+KDhE4FcKE?=
 =?us-ascii?Q?C9K1k2cHyD+5BW9D2monEtoEbaCrjIIOVWkbm0vPXlYvRZZ2ByfUf4bQLiAr?=
 =?us-ascii?Q?pfrOO6Fq6jmlslMAF1Sgsk/znt1OB0KBy3IixCuObt29myauSm1tvi34yMwY?=
 =?us-ascii?Q?c9wnzl/ZjDmaTcgYUYoP46Rta8to+y59HxAxPeT6mplnHRJramfNFQu0yyxh?=
 =?us-ascii?Q?d1xZLVSWAiLr9kbj2YE2zC3psNlBvnbGScoXsIfUdMX7XeDQUt7+jpdTUUlD?=
 =?us-ascii?Q?v56sr3Y8zfOxB4lFwVSjiSxiowvpXSXgWikmIFMDDxEay+Be7hQR6RytmJkS?=
 =?us-ascii?Q?XpYHuIYm1m4TfKDTXz2MoQ2QWf/Ig2nTWlqpLfoOTjO0g9A1kTSfD8a5SlB/?=
 =?us-ascii?Q?EPDQGwT3z4a3KOlFf3jCZLOYmdxu5xbgtaZbO3Z2aAhkiWQWXoiLCRhx5Puh?=
 =?us-ascii?Q?2FWo3TOtAKP0759jxZPj/+OXBAukXVU3gjR17CzyhyRjFIqWcFoHBYbnjTlt?=
 =?us-ascii?Q?UaeWOhLJkWph03iFA3rVf0KayQcgk1hUUHk5Tqs5M933PoNVFadM3sU4C2LD?=
 =?us-ascii?Q?blKvPh3phBN45CdnB2+Oity7YVeqHl8Lmu9WTwBa7adCHwowu7Jm6UsmcZeJ?=
 =?us-ascii?Q?OHJFqN6wdE2qmVNuaJx3hKXzH1UUmf45c1AK86EISsSWJ5Q3sBZy/7+OV6c+?=
 =?us-ascii?Q?Yb7J53NyZEF43K+g3WVX31hkMHI5I8MdzVCGsPlWd1SYcEfxdXjms5E/2lfc?=
 =?us-ascii?Q?PCgSNTcdSrzRzWRe+Moz68j1yR9KjEpNJRmWn3L3aydSU7OY2My7rcCElsMj?=
 =?us-ascii?Q?cXqXd6+ovg5YeHqd+GBw98gLdmInIDN91kGMrJrYnIUto7TAt89gsT1nHhhV?=
 =?us-ascii?Q?Jcnu3H7r4578lsPw/LHyx6wqTHU4qfw43T+CGDSifADCC9ogaG+x0csDuuyS?=
 =?us-ascii?Q?2EWnvCet/ZEmTSQyyIhhTHP0JYFzr0vUm8a6UDBsqfqZ2PHVXoQ6GOdbMie3?=
 =?us-ascii?Q?lAwN8XRWO6t+52fs/tmme/WrWIBuVOFrqskOuSLgwhYYE8ceBM4l0IRx/3zp?=
 =?us-ascii?Q?wnT5E3qQY2y95GiH4rkO3/xLws7v4YRYJqbWhsj47Jgoe+eFkvxzeVWNUD14?=
 =?us-ascii?Q?kiLWrLIE1S0hZa7uQAUVzb5z7B4SgRI7894XRT1pPkwl5Kp3uLNrMAxR33wN?=
 =?us-ascii?Q?o1tj/4AEIfZwFIWR0TBFRB+GEduBp8SkaONhyG9ZB6oX99d6NlCHnvEiv2mc?=
 =?us-ascii?Q?V4nxZYqc8VAuaHFrgNPNZw969PaDP9XUHVkc6sMEv+ezb414jZmkPIK4/vt1?=
 =?us-ascii?Q?E2v+bQYo4KZvbUPVLbhXP5oE5MfUlrgCK3xOzWy2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4510451-8893-4ec1-bd1b-08dd079575e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2024 05:54:26.5732 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: epm7qaAG4Z5n8UjPpJMuZ/OsQN2A89UzHfGM23PDyaXv+il0eRukb1n2HltVUsce3Mdg6YFc0+/4kgnX5xcJXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7116
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



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Monday, November 18, 2024 10:53 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH] drm/i915/display: Adjust Added Wake Time with
> PKG_C_LATENCY
>=20
> The PKG_C_LATENCY Added Wake Time field is not working.
> When added wake time is needed, such as for flip queue DSB execution,
> increase the PKG_C_LATENCY Pkg C Latency field by the added wake time.
>=20
> HSD: 14023564296

No need to add the HSD like this the WA no should be enough
Also I would like for you to hold on this series since there is another WA =
I have sent which clashes with this can you build it over that
It has quite a lot of refactors so it would be better to rebase them on tha=
t here is a reference to that series.
https://patchwork.freedesktop.org/series/141412/

Regards,
Suraj Kandpal

> WA: 22020432604
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 1a4c1fa24820..9be38ca5346d 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2875,6 +2875,12 @@ skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool enable_dpkgc)
>  		added_wake_time =3D 0;
>  	}
>=20
> +	/* Wa_22020432604 */
> +	if (DISPLAY_VER(i915) =3D=3D 30) {
> +		max_latency +=3D added_wake_time;
> +		added_wake_time =3D 0;
> +	}
> +
>  	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
>  	val |=3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
>  	val |=3D REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> added_wake_time);
> --
> 2.29.0

