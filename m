Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 835F5C626F5
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:44:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1750810E2CC;
	Mon, 17 Nov 2025 05:44:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OiECNAU4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC5DA10E2C7;
 Mon, 17 Nov 2025 05:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358286; x=1794894286;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q5mmjWZ4Bt+WcgZ44z7P+g1L2PSNDug1S/Epb2PzJoY=;
 b=OiECNAU4xUl0vEEcQd71ERsapLLtfAkHU9FUgdgQdGqacp0F6SVKSGv9
 sfwE3oNv/KwwxSMmLaAfUFXnIoVl/CVLNR+AipWw4f6NO4VeBwrkD0wMC
 5I3H7nXFWBPExuTXMl6GGZ58S2IV49PYTIWmB02AwEf0E1fSfQPvwG5Rn
 EtDjqpJadY+s1oLXBOWPNyLsS+To9IPgcW/zFn6+jog8S/qgK3CVxdjSN
 mTIEZOPByGRKLCub05PWilwsLe7PZch704DTLWt3MRWnVnrwW9OF7chea
 IagGleSHQtAdlE21eFVq3yhcUFegl8SMn6v4LFHHIHcZqiG+D+oCK7XNx Q==;
X-CSE-ConnectionGUID: ud9BbzYvQ026eYdpCgYEqA==
X-CSE-MsgGUID: 1GYWHZ9+S0C93sgAeLazWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="67956986"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="67956986"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:45 -0800
X-CSE-ConnectionGUID: L4c/vIpVRziX+ECD2I0XUg==
X-CSE-MsgGUID: SGlFAov7StW1Z++lY4fs/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="194466321"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:46 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 21:44:44 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 16 Nov 2025 21:44:44 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 21:44:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=npBoTz5anhtoLjhIJcndThk6ophTbEVae5880t9Sf78ymYxtwJcCvMO7TlvCTKHg0ykTboknxbdKEJ3c2T2cEe+HlIfRnnK1pkRC6XDpSBOLGQyJfIHHR0WJWOj6ZQCLpiFkIUhn6VzIFNY2+8pEwT+mALJuKtnnQZ6QloSBq2Gkrry97eIJhmNJK2Q29XIhkyc2BZNE9Ks5N7cMl6rCIAOCsur0/bW12NqaqcSbYwdrV4dl6ydRuD3yk3Pa69Xu6xYXabXVhUJUVgEW+E22FCd6UifbCT94ij5u9bnyOh9MUgmKbi43+yTaGxDHf4OHll0BTO3iZwxjcEcQxmIQtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m6ur2NjXDdYNnj4rx/5v4tS5g0CW4OzCq56dJKWqDZU=;
 b=k8sRQ0yM8tTzcX36l+A9q7kgKliqEClH7XDYDkwZcr6TPiUasoirAAXxyWMWtBWO8tToEvg+nnAWeg3x1JGBmzloHszxmHw1ETfmNY5WJhliqQOfkMJX80tbSsmHEwpEwmuArqNbIet3wfSg050RI8cHekhrAW/0VvXXtsnGxOygUgTVpcyz+VQ4P3u7Xcrhjo9+6Ajec4GnyrPT92Llg3fcTgNjX3vbw3v3d5SsB+RXAuWS+s9hHXB4YOKgoz6/jQ/HXbwQ6o8kUbnwXeU08yAMZaxfJZEswloILRxQQ1aRI11ezfecLNqeo078wCrS8e8e3L+BsJi1Zw8zypNMNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM6PR11MB4626.namprd11.prod.outlook.com
 (2603:10b6:5:2a9::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Mon, 17 Nov
 2025 05:44:38 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 05:44:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/dp: Restrict max source rate for WCL to HBR3
Thread-Topic: [PATCH] drm/i915/dp: Restrict max source rate for WCL to HBR3
Thread-Index: AQHcVTntj0a4ZJXGikuKHaL2iEOa3bT2X9wg
Date: Mon, 17 Nov 2025 05:44:37 +0000
Message-ID: <DM3PPF208195D8DBA340094CB04D6611367E3C9A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251114072712.161982-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251114072712.161982-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM6PR11MB4626:EE_
x-ms-office365-filtering-correlation-id: 5d6185da-3243-4b65-0f73-08de259c6554
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?iDFVDtoWxsANgxDmi16lkXVdHVEDRIsLFYtR4pHIzfhnuOIt13vU17cYT4ij?=
 =?us-ascii?Q?ixOrqjnxHpQdH+ZUk6iyeA/HT6fqS9lAmOHAQd388aknwAAmm9QS2BfKaf99?=
 =?us-ascii?Q?hKWT4Q0i4OYe77FxyF+qsO2/ES95aeHHPZ+fI7beqKnBgEUt/KMxwnQGliNm?=
 =?us-ascii?Q?GW4eEsLA3tVB3N2EkU1XLftQryZSvvT+ssqWM8VNIpTABYcTx9Qtdmx/PFIJ?=
 =?us-ascii?Q?3jr1yiZUCOiT9JTbmEVS6bCmAV+0pWYbNIpi69hiJJdHmkXr1TcYuszPy6Fj?=
 =?us-ascii?Q?6dUH0mSLDL526Fyf+TGrqC5KLSal6RNyJdOrCW8UdfGdlmVy4fHX211vUOeN?=
 =?us-ascii?Q?O7C3orAugVGyiN+Y3M9+PLk491xJGIMIev41SeSXyl71zgt23nyEb3ZGyxr5?=
 =?us-ascii?Q?0zgMqKB2b09QC7UQfKmTmosiA+2HuYCcXKDg6ZF9lg9rixr/sk9mnyj0Fgil?=
 =?us-ascii?Q?yCCfZ9QJsLBLnBMYxxh4jwG4zZm7BFsn463OsugFcfdt12Xr5CuDDrg2bhYi?=
 =?us-ascii?Q?nXkHYLjENcTeAArJVw5ylulTWnGxxBGy99592eIJoB6JsM8JMTZqIwIzCPx5?=
 =?us-ascii?Q?mouuMvJQAVw6pk18e6QRC8xwq5qLqVimoyvgqlCDBZqlhze1j1j3UGUEEM8L?=
 =?us-ascii?Q?3QXeywVOj0JKiZUcTbS+2RN/C+nebKOvrJOujjvY4nbTnDfCI0Qkhwy8zMIj?=
 =?us-ascii?Q?lvTks9i2pHrUyPGFht4ShqsDrD79Z5nZwcWlg4gW+f0WvGVDOSsWazbaGqWY?=
 =?us-ascii?Q?Gvo4acGHNm/zv2EnM7zUe4dhd2cs45+VDNhXfonKtj2OEg6Y8NZ80UhpHk6U?=
 =?us-ascii?Q?7+N1WDMli6dfgRBwkVjvMJO/tvSyvSZQnrDva5MVBasURhMblyCxmDGuoLaR?=
 =?us-ascii?Q?xK4O8wHzkKi2gJSKZ6LGVErpZ8OipZuMj+uV7s6Om9uTMz8LGXxXbU9JJZSB?=
 =?us-ascii?Q?syWR3jcdxA7aVXSkY3zxd7OEh8pfqgwsHm4qDkOs9a836BKLdcRgydVkT1IZ?=
 =?us-ascii?Q?vFpSIFPjzyUxawp099kiUyBPF9gMWDBI+E+8xopl/P024pDJff1J52Tb1W5m?=
 =?us-ascii?Q?SBXHxlEeWM3V3o61BNsxocYvJhzDSYbu/X0oMAGqshJskU8yRRd/JMUuI33q?=
 =?us-ascii?Q?5lBJxz6e7IIH5plTpv2jNiVs0+EVG7P9LU+u0bZUf+L3hxdKsS1Aa21opIb6?=
 =?us-ascii?Q?lQuqN7Ijp18hb+q7Z9u3uXUm5D5L5cTOAJL11isoQ/BjG6FEf3GzDad2hfSf?=
 =?us-ascii?Q?pIYbR9NBggohhWqzKiV4OamnXrTrhZAoily/sfo9tA2YFA1/J2se6IshkZwJ?=
 =?us-ascii?Q?d9Vka0dwECh3KKSq2DoN2vmTWxkcOm9O0rymr1ZK+0rbodgyxbY+qm1rmB3J?=
 =?us-ascii?Q?nPh5zWO22VHjggM+4sanUn4cSfzjKVZd/7W1FTkNj9UFagfmF8htR1B1Z8Tw?=
 =?us-ascii?Q?c0tL5a4YJYf4OHKKv+yiEFecM/XgK0UfvIE6f/A9BhFW2gNAPhPbKIs9QHEW?=
 =?us-ascii?Q?+cUm3jCSQoSyThfGt1eYlEC09AQT3MMMfglw?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MwGROucTD6anEBf5bMSHgImcR0Z3o/acVMqLEHsVTtv7cJ7yo5pVGQa15CxJ?=
 =?us-ascii?Q?Wz5pY1lXC73+rLCO/VmkYzIHhNR5p9k9EoUtXgYCcoqlKofVaWZq0J0JiRjb?=
 =?us-ascii?Q?SFOIBU6nsooEViyngSm3Lgva45xCesjpy9rtKcRXrAffujgktTsGbC9shlhx?=
 =?us-ascii?Q?XlNFyNOJfjgoknf6ixg4ktKP2DDf2D5EFKnzxete94srwjAiIk2F+HMtwQ8l?=
 =?us-ascii?Q?d1HFevsi9B5giiWxwxMgOm0frNNYy5mvAXmEEUd23mgLkTsrSqwFFYZdECHq?=
 =?us-ascii?Q?7z9O/ctlZx5tKOuX2KQAbk6tg/92k65YmOJ2UrVkcnPmb9Qxh4TmgOP3KRtH?=
 =?us-ascii?Q?lX5bZtt2eACS/VfyM4K5T057u24eKGO38E/hqLzvX4irKW57tBImSXxOL2yy?=
 =?us-ascii?Q?4hT/akwPTtEOOnOf/ZFWeCem9xWXsijNW+USmO5u7o1Z5Tq+YEIBAw8fdiOh?=
 =?us-ascii?Q?r6TOp2m99acn5KzDeBnDzaB2v3wXcbq+TVIzHEZp7y3Fv5GNetKoP5rUoQXS?=
 =?us-ascii?Q?stWj+m6ZBGHeGljSt+wkrOqf4ZLtF9Rqt8eEAi8OtfdZpHm0Qb68SOro+E2A?=
 =?us-ascii?Q?XrVU1UdhjqmVmnuOuhOp857b3rgyplNWAye9RubD7/2zGWsWO0cGEfQ7pA5W?=
 =?us-ascii?Q?IAVVYOF/SFIWRfYlHVFQ//I3qlUOQ7/rh3B/auxvsoX9KWsTEAr0hZmJr1/y?=
 =?us-ascii?Q?Td2jtM4ll261xQ7/Tw8q2gzmKRXy2GJmL7ifewmuW5spD3y5lfQgytJfR4va?=
 =?us-ascii?Q?xa1PTQbKl0U519L4jkRlCjlhb2+49Kti44lCN1W8DqYZ0K/LaVKDRnxrR66O?=
 =?us-ascii?Q?V4wdoIx346dJpvV8cE8ZszD9jlQCbrjaHu2uUsiVsPH1wGzsE+VnGn7V4W2N?=
 =?us-ascii?Q?v8sCkQOwDREyoDAxWZpfJ//oaaS3ASlOQa+FUT1HN1AICzPKdhR6/03Ok4uU?=
 =?us-ascii?Q?poIycYHwpj13/7bnwlsexU3qY7iDTJlenCeOAuw65Nn2/WVYqfsqRPzqiHuT?=
 =?us-ascii?Q?Ik++FOO0/rFfdUvnQ9iR4JVuY3SRS3nr+oF6wsg3vW3NM/wlMn48CyhJeGWb?=
 =?us-ascii?Q?KHkk5NJPa43pvCPF0OkraR1YedOdPfEC7Z+Rq9Q9esVb2iEGBPUxEHGE8ekl?=
 =?us-ascii?Q?XFJnKKdE1EspbBpLS76LAEaFqp0wFnWpjyu9Pmr5BcEXKuXlCkYW64e3wmKg?=
 =?us-ascii?Q?1SsXoY9xQ2c9p/rsrrKofiee1x0HWWHO+9hjgNgB/nbMyrLS8xxArczWPgiX?=
 =?us-ascii?Q?7xgSMmPKHh+xfiLAwTbTTQ26IHWiY+IVRzfwbMnDbXag8DzwHoNXYOC//BPX?=
 =?us-ascii?Q?aj5AP+vbwc1crrWi3EodxO8AHFZLhqXVh2L3dFvha24tOVxQHdRrFjwERi27?=
 =?us-ascii?Q?ROYjWzs39kSkwrWZBCx7wavb3YS5Ff7BBtuPQzQq8qfDKoGZvHRAUCMSor7i?=
 =?us-ascii?Q?pTsMR4U+oEayFYcr3xl6e/VR/lJJNwVXAPDiO1s9iGi0gOLNyGSVyghFO7Sf?=
 =?us-ascii?Q?WDnu/3Lm5a6n9a8/B9ohCi13WDf1KLd0nccCz+Ctq/lTpvnpB9gc6ECmbUlm?=
 =?us-ascii?Q?14KjU2wyUhcVSjHGWPVgnrLtCrZB+Utij0E2RzxB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d6185da-3243-4b65-0f73-08de259c6554
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2025 05:44:37.8271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M9h1/Cbovdon9qOkcQv761JTFqxm4VIDMMC92+4OdjytF4ahdrdwwktHP6lERn32s/GDj2UNQcrKZrEWIlLnCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4626
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

> Subject: [PATCH] drm/i915/dp: Restrict max source rate for WCL to HBR3
>=20
> WCL supports a maximum of HBR3 8.1 Gbps for both eDP/DP.
> Limit the max source rate to HBR3 for WCL.
>=20
> Bspec:74286
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0ec82fcbcf48..0d56504e1715 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -593,7 +593,10 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  			source_rates =3D mtl_rates;
>  			size =3D ARRAY_SIZE(mtl_rates);
>  		}
> -		max_rate =3D mtl_max_source_rate(intel_dp);
> +		if (display->platform.pantherlake_wildcatlake)

This can be put inside mtl_max_source_rate

Regards,
Suraj Kandpal

> +			max_rate =3D 810000;
> +		else
> +			max_rate =3D mtl_max_source_rate(intel_dp);
>  	} else if (DISPLAY_VER(display) >=3D 11) {
>  		source_rates =3D icl_rates;
>  		size =3D ARRAY_SIZE(icl_rates);
> --
> 2.45.2

