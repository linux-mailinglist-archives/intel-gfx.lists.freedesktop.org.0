Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CECB1FF85
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 08:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0C110E2E0;
	Mon, 11 Aug 2025 06:47:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oj4m8rUX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F19210E2E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 06:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754894819; x=1786430819;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=TcQVEXS1qzZOPX2QJilxkxzKYhaPcptcgVR4Vh+ty+g=;
 b=Oj4m8rUXMjVJn9IZu8dtg10KUbnkIQy4C3jTdahxyGIyMeL/MZYDZw9P
 SuKQ8wmsYnH7FnGg/UB1FNsjasNyQxYzrC/+8toFVlVOmL9X1zmyGdOE3
 PRnz1FdNduGswODEpj4XwCgMqTP41PhvhmIZuKdi9ir9uwN0/5cPm8TO7
 M40RMWscoZ44M/cxZl5I1xjW7lqJi+H6nAUiBUdZ9UCtazTYAhng9Mg8F
 GG9WYZM9Y7qrNmkFnUz/wTha8/7SWM5ZMrzFJ6L4iuqITUDJ3oxjgxQ79
 xnKx55ISe7XUtqf6JGT+UURNSMAQLMD75JWO9iVZrNxJc7SG25XkBjBdF A==;
X-CSE-ConnectionGUID: Vz8mWgkiSFGwoWAHA6duFg==
X-CSE-MsgGUID: 0Hl+eS2QS9imGm2EZYQisg==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57097392"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="57097392"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2025 23:46:59 -0700
X-CSE-ConnectionGUID: wETnwX5MTc+EvmfBLgPSaQ==
X-CSE-MsgGUID: eogAjpKzTI2wfDei1RYDJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="170273649"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2025 23:46:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 10 Aug 2025 23:46:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sun, 10 Aug 2025 23:46:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 10 Aug 2025 23:46:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rBinXiQoLB4eOTT6TeqlCunSDJSm0rWOc4mmPshKOoV/oVUN8MWMhxPZE0V+WbAvxfxaAB+Wc+5Fg7rYBr3vWZKvFW1wK1QLXrvm+0fdygyAKhTfjzhtiHa5bu9Sj849Wb8MiP+87FAkHwj4AGW04eJZ4w83iajdRvakLKf6jLvCHDJ7S84FDE75NWP9M60yIsGmJyT+0ukQ2aoHY3zQPEDU7hIO3ZRgKXXwK45jg5nobuCIw55F7C7WKEwFkAJbBvRlyEGXPLUYXwfNRUjjbHBhH0hN7qqTm1B+6Dg8L1Ze/4+5mEHaSLTYGlWoZNvEJYw3UXlwKC95Msy3zwLm6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LYV/3lopWDCidW9SP9QLKsjDMYXz1YblKe3OaPB8+Bs=;
 b=xoVNiifZ4vHCJ4FTf/Ou4bPW+x7w28weG9tdnRF9B+qKEAM/pg3QXGWD3unhvSZAeMn9REwsrwOLvjjdw9IbhxEkuZjOo7+Zx0qMMjn3SPZu2v16sCg5x+EhVWYdq2F8Ii0A5H0clow06clKdTszjE5wZEM8KPzFxxrBeUsK611V97z6GgsmzmX/OVtpoQ+gCnf3/lfnFZHmTGDZ4v6oIe9X+5rNk/be5SUXaOHmF6xmRndYg98eWENno7Hxb8LKSVSDu7WECemcte27LRRPvrD8NgxAWDjJGRqXEyFXHOQnwd5mbt3KdRVW5FFHbw+kEPTWD13jpu6FVE4LBWoQmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7578.namprd11.prod.outlook.com (2603:10b6:8:141::16)
 by PH3PPFD114713BA.namprd11.prod.outlook.com (2603:10b6:518:1::d50) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.20; Mon, 11 Aug
 2025 06:46:56 +0000
Received: from DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c]) by DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c%6]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 06:46:56 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Srinivas, Vidya" <vidya.srinivas@intel.com>
Subject: RE: [v2] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Thread-Topic: [v2] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Thread-Index: AQHcCEUm9Fy+YSVf00m6A/DK18MRZLRYgEOAgAR7VKA=
Date: Mon, 11 Aug 2025 06:46:55 +0000
Message-ID: <DS0PR11MB75788D5F17FD96B9CCAEE8A7A328A@DS0PR11MB7578.namprd11.prod.outlook.com>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <20250808091602.288323-1-shawn.c.lee@intel.com> <aJXF7egTCfx5bAgg@ideak-desk>
In-Reply-To: <aJXF7egTCfx5bAgg@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7578:EE_|PH3PPFD114713BA:EE_
x-ms-office365-filtering-correlation-id: d999d950-693c-4545-4910-08ddd8a2dcfe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?gd4oR2yltAU8yuY3QFoAaBATaxqG/Q6uYfjSRxsFFOjwsv421r4n1noLJtGA?=
 =?us-ascii?Q?9AUOESEprhkMrUPcAlYMXZf9QqKjhB9/HbXj5hqmVNvFg/BUcq5pjCti4vI2?=
 =?us-ascii?Q?3xCANfzinMiP/dPXhiW9gGuSpBP8vJQHWBJnsP63sxcA4GceKeskwNrFvN4I?=
 =?us-ascii?Q?aClTPafii3UdpEUkfxOLcJeqZfaGFtqQvqvblvXGyJpjmd8Acs9zepy8NaID?=
 =?us-ascii?Q?TfFhZ8g/bKta7V4hJFts7af12rHMKM6NqGCL54RaB+r9uIPyEM5CCxHBx8nG?=
 =?us-ascii?Q?L+FrSFT/zTT018xxDWHvSK0wfrn2NxWkgeYW7+Vb5fgNmsRXJiGZBLX14tat?=
 =?us-ascii?Q?NJsF6+0MQs8PdFBw6Qh/M4Er3d8ri/k7t3sbehOrCVBRAVlBGzByRUMnj/tJ?=
 =?us-ascii?Q?tHNTzXCQ/nR4GmqJOEoaaNjiUMju6YKaD0w+eZVgG+dthm75xDPL5ydpUL3+?=
 =?us-ascii?Q?0Ie2mHy2+pzYML+9MuRmBwlVSwCmMgt9lSZaGwR9gJ+Bg1YP+loEeAOaqPf4?=
 =?us-ascii?Q?s1yubAY6GpOffkO69Ryd3xlEdfm/+rgOfqzC0KfXUIoJ+EHNayxqKPqNkFfk?=
 =?us-ascii?Q?I3q0Ht5yc1PiJpPsRHuEI8o+q3xL+Zz68L8R7nRGyKSI1LBMoIbjmUJJ5FIe?=
 =?us-ascii?Q?V1h4TynFWqODsjrVKb2z9C7QW7kzdmh1DECpU4GFroSw6jh6JBMwDBHxGov1?=
 =?us-ascii?Q?F9+qNKmmDCqT+EdObq8/HpejeVnxBm+dVLN4SKOBxMvMVswAuA99iSX5j1TQ?=
 =?us-ascii?Q?j2r4kZydDFV4MdrMaxec//P/fDKNpPo1Jr2BLiMcFKupHHrwDl7qI6P3SVW9?=
 =?us-ascii?Q?S2rgaE/zdGa2tygm7Qsgn4YIcNHGFEmF8V2tCuiXUGSEp9SutCWgzizLCskM?=
 =?us-ascii?Q?eMkOdTzjUs5rgZdF+Y5K5rx6Tlp+5lenUxTFldH0VVbVEz74V0q6vpmj5Qzr?=
 =?us-ascii?Q?N5C5PWRAMCAORVYaThVb+Sc87t1jUwbwBayobqdd9JqkMN+7e9TBA3JsTAcc?=
 =?us-ascii?Q?8V3pmIoTK14PgmFOagsqU+txur6oUCwovq/wRqXU3APmqAKtCokVEsKZJmPM?=
 =?us-ascii?Q?ZExcjBqpKat/ozy4u3J7DCwZvB0v6JPLdya3qGrjD3tquLLEdi39l9jPlKs5?=
 =?us-ascii?Q?VRMwn0z8C2YxEoczhs7mP6gwaLUlOhapWvoHcZ6dBNYknpFtiC8oXf4QfVWb?=
 =?us-ascii?Q?3fRjTY8fj5EPZpcLKyKVSI3rmnQpAZTeEiGE6xNdyxWiOPdWfbO5sxP2mKv8?=
 =?us-ascii?Q?iun20+Fq5EZ50dgCK7SIgg5SS6KU8LMyCt4gy6QhW1SXwqBG1su4lCwTShl7?=
 =?us-ascii?Q?nPMpyB49MqrlIG2GBBwQE+ycgAfByMzfVMCoboyNRzlbIjSTPh3ajKx9ZMhn?=
 =?us-ascii?Q?so1A6mQEw+OG5DpWLWGMw1Eng2/xgGfa75ImFOD+TFDhuFPcCpQUdf/osyVY?=
 =?us-ascii?Q?SUvbE5VXfghTXzG7ELrPYj6W8p5IWnrA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7578.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rmGwZzAYv/xTxCVM8+adoDEpxv3QI+a4pILx+XqrUbM6y30uxctw63uKLfmg?=
 =?us-ascii?Q?nJI0dFOSUiWQorGiST3/UpSwsf6tGlqMPROdeIkpFNo2lS5LVBn+JcFISG8Y?=
 =?us-ascii?Q?whIOWe2yb6sZ3U9NENk/56pAg6LH0mS9IBOi+FEnM+L/sqwKCqKPRcQc5Fdf?=
 =?us-ascii?Q?j8Pyf5K98Qy8zSfKsI50GHojv9HDnzbPP+h5xE7X1DzGllK7ZYoiTYTflftQ?=
 =?us-ascii?Q?7Wqb9i7V+1PmioPgZZXVePyPJVo/Wkybnduhv6NCk32NOHz5NUel7XCG7mG2?=
 =?us-ascii?Q?jhjW4umXpgaIuZ4YTRAp8ttUNegy7LONj19BEUaPUnI772LpERuts4EDM7Zf?=
 =?us-ascii?Q?Im1NCvyJOjvwTPHdxHGXs68JKlj+NTAqaUIP7WI/yMPcIIwRYHmrPKvptyZo?=
 =?us-ascii?Q?YwHsj9W8RsX5piYc25KiNvifJqJIzFQFQsfQOSixKsKFaejlMxAPHIbJEsF+?=
 =?us-ascii?Q?UmZW8lRlXuFTk1X60xwj7gdx1c0BPrP8jNeVJHxIo7X2GRh7rniknOQlUAjl?=
 =?us-ascii?Q?RR87tkG9iT70zR4Pe2ANCwZO4n2Hr0CH+1Be9M31uhALkXi6cgRK4Sau6JD8?=
 =?us-ascii?Q?a+ITfWK907bFzRMXdhmPEw0GIlZRYF0xhfu+MPFBxP2vq53FSpQduEPwzmC8?=
 =?us-ascii?Q?TyIxc79J3I9ZP/Asd9214NFZ23nb4Cdtpg1jIdmgJzOMOry/frp8sDEUkPkv?=
 =?us-ascii?Q?+N5I+D101kFACLpygz41De2c+PcMpiMRE4kpFn5HhidM2spHlwc9SoZRRx0W?=
 =?us-ascii?Q?X7vnEh0U7/7uiiw1lyu/GrcZFE/K38yCAqy2jPH/5zb2cXDYUw2suZ2z3yIX?=
 =?us-ascii?Q?Y2+9Gn2nWaClOH9uSRUJE4Xk63/jL7Kn6yPz9H1SiYKryM3PuzdBuzW0RXpx?=
 =?us-ascii?Q?/xyC/niimDyS9YzCNEuTokQ9eeLQAn3NEt2RyR2xiuOvl2o3fuBA6VUfF41r?=
 =?us-ascii?Q?xak+rMZd1HNSJNMsN4TFMCE5Ktcp+0ikAzVePo6W4uFDffvjiVwOIF+7D442?=
 =?us-ascii?Q?8XclvNLymMpZ5eC5xRq3CkHseon3Su7l6ZPKKkEF3lxzZ0WvEt9iteM/nor4?=
 =?us-ascii?Q?BAUTSAS7OMCmw1GyeI9J0dgksRxMKssF0D38eX/wXYHF+MyVMA7GL6V26Duu?=
 =?us-ascii?Q?YP9KhQZrC14+ANhFhN0gbfSmLuf7WCva8MpEJNZGJzIXP/Okyp/ckJjNzKxW?=
 =?us-ascii?Q?Vf+tZPq/nkUUMGYhF8HKNDYi1ADSjYesdq1aJ2ioloyW/F3bcl6J8FRAbQLK?=
 =?us-ascii?Q?/AnFzj0jBcYLRWyTjZHOd+dhxFuKm/XxdMvbMnF+At90nkc+wCM/qtnVgr/H?=
 =?us-ascii?Q?86aDXtmqlsezpGlzvGiFvMRhgeWjTpLT6tvNSQ69Q2Hn9zU9vB2q8lf/ac+8?=
 =?us-ascii?Q?gniLAsU5eSC0aBGrVi2ofF6LzG9NOPbnTM3b5IuV95EzfFqv1lZdtab4mD3u?=
 =?us-ascii?Q?zhyLO7tOwm3FecNe1TjhAExyg5uVUrOan7CFvaNrlj3njL2Duv9iJKV5GOXt?=
 =?us-ascii?Q?CrxeLkMttUhsuAAj6piiXH5zgCPkdDYINNGP+Xp97wPEpSmgBDbBfox4F1us?=
 =?us-ascii?Q?kJ/2bsKkIJeYrJvIquux/RojZKlMZLrehoneujB+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7578.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d999d950-693c-4545-4910-08ddd8a2dcfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2025 06:46:56.0081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3w856p3DhdGhOUDt0Dm+bMRsFxxXypS8Y39+M1k/HyDLcuUIVTX3Wya+rNoIJhQ4fseei424rTvZfoU2PxG1jA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFD114713BA
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
Reply-To: "20250808091602.288323-1-shawn.c.lee@intel.com"
 <20250808091602.288323-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 08, 2025 at 09:40:00AM +0000, Imre Deak C wrote:
>On Fri, Aug 08, 2025 at 09:16:02AM +0000, Lee Shawn C wrote:
>> While performing HDMI compliance testing, test equipment may request=20
>> different bpc output for signal measurement. However, display driver=20
>> typically determines the maximum available bpc based on HW bandwidth.
>>=20
>> Introduce a new debugfs that allows user to configure dedicated bpc=20
>> manually, and making HDMI compliance test much easier.
>>=20
>> v2: Using exist variable max_requested_bpc.
>
>How come this doesn't get reset after a hotplug as you described for the c=
ase when the property is used,
>even though both the property and this debug entries use the same state va=
riable? (Not saying that the reset
>happing after a hotplug is a valid justification for a new debugfs entry, =
the hotplug could be also handled by the user,
>but you could argue the debugfs entry is more convenient.)
>

Hi Imre, thank you for the prompt response.

https://elixir.bootlin.com/linux/v6.16/source/drivers/gpu/drm/i915/display/=
intel_hdmi.c#L2672
The max_bpc_property and max_bpc values are initialized during connector in=
itialization process.

https://elixir.bootlin.com/linux/v6.16/source/drivers/gpu/drm/drm_atomic.c#=
L468
The max_bpc will be restored to info->bpc (from EDID) at drm_atomic_connect=
or_check() everytime.

When max_bpc_property is available, this funciton also compares max_bpc wit=
h max_requested_bpc
and updates max_bpc to the smaller of the two values.

The i915 display driver then relies on this max_bpc value to determine whet=
her to update the pipe bpp value in compute_sink_pipe_bpp().
Therefore, we can simply update max_requested_bpc to affect pipe bpp output=
. And no additional driver changes are required.

Best regards,
Shawn

>Have you also considered enabling the force_link_bpp debugfs entry for all=
 HDMI connectors instead?
>
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_debugfs.c  | 46=20
>> +++++++++++++++++++
>>  1 file changed, 46 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c=20
>> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index ce3f9810c42d..5ef2bcffefc5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -1208,6 +1208,47 @@ static const struct file_operations i915_dsc_frac=
tional_bpp_fops =3D {
>>  	.write =3D i915_dsc_fractional_bpp_write  };
>> =20
>> +static int i915_force_bpc_show(struct seq_file *m, void *data) {
>> +	struct intel_connector *connector =3D m->private;
>> +	struct drm_connector *conn =3D &connector->base;
>> +
>> +	seq_printf(m, "%u\n", conn->state->max_requested_bpc);
>> +
>> +	return 0;
>> +}
>> +
>> +static ssize_t i915_force_bpc_write(struct file *file,
>> +				       const char __user *ubuf,
>> +				       size_t len, loff_t *offp)
>> +{
>> +	struct seq_file *m =3D file->private_data;
>> +	struct intel_connector *connector =3D m->private;
>> +	struct intel_display *display =3D to_intel_display(connector);
>> +	struct drm_connector *conn =3D &connector->base;
>> +	int new_bpc, ret;
>> +
>> +	ret =3D kstrtoint_from_user(ubuf, len, 0, &new_bpc);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	switch (new_bpc) {
>> +	case 8:
>> +	case 10:
>> +	case 12:
>> +		break;
>> +	default:
>> +		drm_dbg_kms(display->drm, "Invalid bpc value (%u)\n", new_bpc);
>> +		return -EINVAL;
>> +	}
>> +
>> +	conn->state->max_requested_bpc =3D new_bpc;
>> +
>> +	*offp +=3D len;
>> +	return len;
>> +}
>> +DEFINE_SHOW_STORE_ATTRIBUTE(i915_force_bpc);
>> +
>>  /*
>>   * Returns the Current CRTC's bpc.
>>   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
>> @@ -1359,6 +1400,11 @@ void intel_connector_debugfs_add(struct intel_con=
nector *connector)
>>  	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB)
>>  		debugfs_create_file("i915_lpsp_capability", 0444, root,
>>  				    connector, &i915_lpsp_capability_fops);
>> +
>> +	if (connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIA ||
>> +	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB)
>> +		debugfs_create_file("i915_force_bpc", 0644, root,
>> +				    connector, &i915_force_bpc_fops);
>>  }
>> =20
>>  /**
>> --
>> 2.34.1
>>=20
>=20
