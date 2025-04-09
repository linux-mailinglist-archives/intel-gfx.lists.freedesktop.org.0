Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDA2A820D9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 11:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D03410E813;
	Wed,  9 Apr 2025 09:17:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GxUp8j/E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E2C510E813;
 Wed,  9 Apr 2025 09:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744190257; x=1775726257;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZXj9R1vsgicbV9p98bC5t7IQ63iESLAw4fS8XHfTN2A=;
 b=GxUp8j/EGq2uACGVa9UP3zI8aa+l4sv/eTDImobnlyTVAFQj+k3vOyNf
 ppy0ueyYnyX4e0AlqoeuEiBXfqadKRLZH6dTfZ5kmTShyfuoIilT9Ak2C
 fuEFHHdrVVWJ1bJ7iM0JDHwnYJ5KyZ+j+qXEWmwavW1VNPDkRt5gnkbD1
 uRRtSxB1GyMUuXVeOSOfIj58rMf1b0jOn7SXcwrm8x9YcJv92OL1pzzhN
 8KyK5lBhuE7poNIThcj2jmDkjMdpo9wOqmxxJieAYwueGKMFfWw0aGFJX
 RA/ivgIIrVgWGt/o7csnkGodP7M0/cjYp3yfKGL9QAJuBYZ+h/Asj+LgK A==;
X-CSE-ConnectionGUID: vT/8kko6SI6MpylpXBpQ+w==
X-CSE-MsgGUID: scY+hUGYQGq4nyquZw8a7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45371041"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45371041"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 02:17:36 -0700
X-CSE-ConnectionGUID: MM5cy262QfCaT8ssrBg4Gw==
X-CSE-MsgGUID: PlrpzhkXTyO+PKe0HOUakg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="128442760"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 02:17:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 02:17:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 02:17:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 02:17:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Il1XJwyBNg46QgNX3AlKoVenAkjGztmFTgy3wmXGd7RW3IzrRzBDBiC7afHIwIZJdUxqr79atTt5TTS+RtfFDM/N/5k6GdRVmdttHoFU0VAilhyy8+CqB8BolPbXYO20IgstjR3mfccgXgpbyXi2qGSO8WrBRcTxwlbjq4defC8iMWAsNIQTvH+2rVJkmmZz5qcYtfL39xrqlbeiWiMey7v8aNCXMt3rcjl7I6JbKDCQbNayBxSIulh1yAXI2gWJZLAOAyxGuSJ41kIOQhbH6zfVGN7enE1s63OEEpnBvO/gT/VreVSDdiNO0gP1sWUkchc8v9eFY6cnq73tW2nxYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ICwoqWNdpEWotxodMrnIExzCR+XSu104Ne7BjxOVTJo=;
 b=bS7Tvjpv+YX465voQ7fRCot1x1in5MA4DwybUfCLGFTMnSJ3kqxz2kgzei9vKcjW3uoxohQAqHZmOgd91mcCuQBSTTscn7FqcstnjHUCd3rcUGgqN+tFhXNd+Ovln2h5if8lEcLYBTyxPxCwplHBTVydeGYFlepaqhd0FQTlPi8fVJUUvSLw51aMoxI4jsLSUE9jFjvRQA89ejed8wnsk1xu9FXncjr1rykINHvnX9BXcn3oRApkDu75zmmV/Kaa+7QR9kqa5axJk55aBVKP3GuXarASsCFJkMs31DqeO/v6+EbPrhfaw7T7pJJA29DXQ4i1PsVJ7ARdrfnMuIK/VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB8212.namprd11.prod.outlook.com (2603:10b6:610:164::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Wed, 9 Apr
 2025 09:17:33 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8606.033; Wed, 9 Apr 2025
 09:17:32 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 0/7] drm/i915/wm: convert to struct intel_display
Thread-Topic: [PATCH v2 0/7] drm/i915/wm: convert to struct intel_display
Thread-Index: AQHbqIuiKqDyb9z5SECeLTiY8+ltsLObDytw
Date: Wed, 9 Apr 2025 09:17:32 +0000
Message-ID: <SN7PR11MB675058FDFDBC54805AFA2128E3B42@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1744119460.git.jani.nikula@intel.com>
In-Reply-To: <cover.1744119460.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB8212:EE_
x-ms-office365-filtering-correlation-id: 506fd423-81d4-4885-bf3a-08dd77475c2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Vn7xeQbfslAptbVJP8Enc7KTf7IYHEexA73kslYt02Q9wUgjv6WpfGPRBUBj?=
 =?us-ascii?Q?5lCQgNkvH8JV4l6tVzHZ0CUfQUmvrq/6lRCGI4UWI/8ydEHIA483vl0RGuRl?=
 =?us-ascii?Q?HwyUBu36+ud/2e6t+A1ZGEAq0Tv4m2mjXDAlN3259wD0aXoDh+Oy9UfCOnyU?=
 =?us-ascii?Q?xbWEpjFyArSu/Kk6qZ7KOV4Db/Bls1CKnBFWz8UZm9PFf9CObJB1q1cXUTkS?=
 =?us-ascii?Q?eUzFMp5dY1oapxP7NF/YVG81b+4JxZHaWkePgceNb59dJViFYoinlk9uaIO7?=
 =?us-ascii?Q?CREHkFxY/vqRNaIiwftpkYttpMCf6szDANEfCaadpRKZz/rI4WWpga2nqVee?=
 =?us-ascii?Q?jCDMWHI9yuJK7apRwsiNBrAZePW4MDybXcFkHU2uBi6z5gMdlyPbR56xLhFz?=
 =?us-ascii?Q?Quvb9JdbbgwhEXRGNGjZIrr1IWo5S7wyPr9dP+tINWGetOaokLQV/zUwTu+V?=
 =?us-ascii?Q?Bo2b0Q4yzqCN4L16nAt3VnloSSX+osRcUDb9c/I0zwQ8jIDJBQ6r+zVO1eoz?=
 =?us-ascii?Q?OSXjbSlyeUrq3b+qFmscQiWC+cmfLSaB2klwZiUuirgBsKCQmQDuMtEKDCrY?=
 =?us-ascii?Q?gsWq1bIW9A1P3HLpam39J8vR/Nd6tPheH7TeooRy3CMM9PKDy5j5TtQ5B57V?=
 =?us-ascii?Q?ANvkFsRxXLR/NNYbLWzNk86UianQ901inJRUUV1LNQi/HtglRRQo143vfClq?=
 =?us-ascii?Q?pIRJXfMQUNRtFNXAAbpjiP/X1a4QVK/rEvbAWlgMDb7rNEO8sZtMJnsgqOag?=
 =?us-ascii?Q?nQZlPgzCQ2kIJZCc14Lz6qc1nCo/Z3JPCYI8/WcGgi6HdhvDkA5vx2nqZ83v?=
 =?us-ascii?Q?1BrXKs4H6+WzGr7iJ6S2D12FXQKB64QX/kglSZ++nPNW+sWyvriHj/HKoZKN?=
 =?us-ascii?Q?gFNkO9a6EwKB9Mhq8aJG/hB0aWvksCCngtGEFAa+Wy94P+pJBVOLExbYHZ46?=
 =?us-ascii?Q?G8OZAuNn87Y7i65tzrKW3NSDN5LsbRZXhsOB8HRlMLLYQ2Su4102FGCZOeMb?=
 =?us-ascii?Q?DiU1WNhkGlIwqYQuZ/hIgzyQ/Q+H1EvLNIJ7EW9mcJiD1M5sls2mJ/oEfKjd?=
 =?us-ascii?Q?5ly96nYSHNlxWRpMmnWEbOX8YrlGi5TbI8Vzxi5Q7CK0uEX2/0zGj/CJMvJH?=
 =?us-ascii?Q?13EOD4b/3uJsCf0Z2VnopqRdlMRWi+RHhFkEdEt7j+uArnqBy5Apa7HXpJav?=
 =?us-ascii?Q?EKunO0lySaqiN1a48mhonFAWkHXo3m2DbQQls4uVnoe2bS9cdR7stW0qf8X4?=
 =?us-ascii?Q?ICoAe3VO3drRGQHfU9koIEvWtlRRUm00ZGycsxSQjecSlw04PPMzfGNtmsSz?=
 =?us-ascii?Q?63bN44d3dDGfS4Rg0YI+XZqSwr9L4R6dIVAW50bhtToUaqRsvSHX6IxIYaHx?=
 =?us-ascii?Q?YWEvmhtXGAp8i7Y3AY5fJGKp2Hyc4Nlu98nUV5rLAauRd6hfAoOd8SSiZnTZ?=
 =?us-ascii?Q?GO8b1KdLiCeWWyfHc0742+uODIucygzmARRZfz33VBPkwvBfPmdecbt6+quu?=
 =?us-ascii?Q?PyKcEtq81NZL/cc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?irhXD5SrFIym6Gd9c1OXhozuM/va9l3pj1oo6K7fSOeMwmRMNjnw+TcPAN+s?=
 =?us-ascii?Q?RAsBg2iSoTFclu4aY8f6WsMHEX4VKSI5xetXBoD88c/wXPsbMV7VsxsM2TqH?=
 =?us-ascii?Q?AYfDoQKiMX1lKtCG+8SCo7+720s2lbmz6WVEpJyACYFEotnE8nvYGxvCpQek?=
 =?us-ascii?Q?BnAmRl9by9CJr9RnYyQgczW0t+gn9vQzOxRtuC8SIxqmZbLgkymTZ5wh1IUi?=
 =?us-ascii?Q?3eYJXPneqbNef/5RET148ae+QpqMpKpG2OKkQOeKT6XiRs+J0Ss1gcHuHWgZ?=
 =?us-ascii?Q?AZoB5qkmA+ej5Vzq5vnTdQJF6OGZRoV0G76q0gt3iWTXLyXTqsVsQWkNADOy?=
 =?us-ascii?Q?xv7LzJN2qobtzK0vYcfm4Rb+nmkI/84xwA77D+UfaFC6jwmEqu55TbsMOwWC?=
 =?us-ascii?Q?P9JhnRzM64i+qIs1dySg0/YudPIyelUPjJTliTEnRxX9Ca39j7tpgjuqqB1k?=
 =?us-ascii?Q?EsEeFwcuL4eQEGLZpUFCvobNQbTNiHKaKollxc7P14o/9i2VUtdyPUk2npf8?=
 =?us-ascii?Q?CJ3p2oejo6Br2UsynRP3p/WEfPL86WEooLJ/4EnNvjxR3jJ4nkVWufziesbx?=
 =?us-ascii?Q?DI68TqSZDKNZfToAVjLk3bK87dCIUq26iN6NnvO3rv4BCQRw9EtRCrZhPlgU?=
 =?us-ascii?Q?9uCxYV+GSKNc33KNCYGTUZcWNq49uAfX2Z8GU9UkgRnPkQOVoeoWfEwgX5R+?=
 =?us-ascii?Q?kcM6p/5GRm0nNkfoC5Hh8/0swzbUATJX0UXYtz6VTU3mLehABFGmhJnFO9ZQ?=
 =?us-ascii?Q?XqSL73O13H06BMYE2OPT+vMSJhk1p2gkTvQmaFUFuNoSNGiKbss3d16nNb9b?=
 =?us-ascii?Q?frUjc4KYKrhbSbbKuVkI8+yBrKxMfWt63jp4s+6w/4fwcnzMnmcMTkDlAVKf?=
 =?us-ascii?Q?sFxCYsWsnSZxI4BkH/TIbluPb4IENgWnu5EJqMSdUtBW/OohFM6HjskgG7sz?=
 =?us-ascii?Q?HhyhhbzL7dSbuAyExmNjtbd7zrA2a/Ejnn7P/HWYvBobd674SOejDOmO7RSw?=
 =?us-ascii?Q?z1kor6c6KENXWyPBA3cONYjgwlJKbPjIgUJxVvAcqMtU+w03ZiscIRUVR5Vs?=
 =?us-ascii?Q?QrSqgTkfkUPehBKM8fMECapJmpoFMIwo7dohcriTxul3CH1LyYFaG5DlV8ZR?=
 =?us-ascii?Q?PuoodSeggmTuhCt86z+ZTfwrFwAqQCaZAckpsNx5PzJEXto+ChG0yhVqxr3v?=
 =?us-ascii?Q?Hw57sI6P48bSwuoGoLxLKtiQLiepYxEq/Pp6IbqcYIs32VGTB9IFrEpAjGHh?=
 =?us-ascii?Q?mfIIHoFNRyVebWU8PaFC7DvgdGhRzajcv746K9VuadFQTCTWRFwZ/KoHKav5?=
 =?us-ascii?Q?4W/SVQ9vImb+Ha2RmsrW75D+5qtjkI0r/KJ4YzO9vOYrOU1nLPnUX8bKERMT?=
 =?us-ascii?Q?lPdr5TfYXm3m8CYpMpBRCNl5eo2tyVA9fc9dHz4lGrr6ylJSaQ3D3lYq0VXx?=
 =?us-ascii?Q?aDV5LqdOCJk1f/fv3rSNd9TgAAjQkYm8P3vjgC2w2ontohYxTBE2bvxPtvZK?=
 =?us-ascii?Q?nylz6YJQqceTQXAVGh1LKplCiG+Qb5f6OfLguz1wYRUH5cH4tStuYqu4AUKu?=
 =?us-ascii?Q?y1Mp0H7ejqz3O9jDK+vyzehC9XYoYt0Xdh2n7f7k?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 506fd423-81d4-4885-bf3a-08dd77475c2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2025 09:17:32.8829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vK0lGOd1+/q1HyuCRUEeknT5lT8BS//dsfUDR/BrPBKeLazMFIn4Guo84/Smz1Xp4BSBjAuG31M67gcATSAYXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8212
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Tuesday, April 8, 2025 7:09 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v2 0/7] drm/i915/wm: convert to struct intel_display
>=20
> v2 of [1], basically just a rebase.
>=20
> BR,
> Jani.

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
For the whole series

>=20
>=20
> [1] https://lore.kernel.org/r/cover.1743671373.git.jani.nikula@intel.com
>=20
> Jani Nikula (7):
>   drm/i915/wm: convert intel_wm.h external interfaces to struct
>     intel_display
>   drm/i915/wm: convert intel_wm.c internally to struct intel_display
>   drm/i915/wm: convert skl_watermark.h external interfaces to struct
>     intel_display
>   drm/i915/wm: convert skl_watermarks.c internally to struct
>     intel_display
>   drm/i915/wm: convert i9xx_wm.h external interfaces to struct
>     intel_display
>   drm/i915/wm: convert i9xx_wm.c to intel_de_*() register interface
>   drm/i915/wm: convert i9xx_wm.c internally to struct intel_display
>=20
>  drivers/gpu/drm/i915/display/i9xx_wm.c        | 1222 ++++++++---------
>  drivers/gpu/drm/i915/display/i9xx_wm.h        |   18 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |   24 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |    4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   22 +-
>  .../gpu/drm/i915/display/intel_display_core.h |    6 +-
>  .../drm/i915/display/intel_display_debugfs.c  |    3 +-
>  .../drm/i915/display/intel_display_driver.c   |   12 +-
>  drivers/gpu/drm/i915/display/intel_dsb.c      |    4 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   11 +-
>  drivers/gpu/drm/i915/display/intel_wm.c       |  171 +--
>  drivers/gpu/drm/i915/display/intel_wm.h       |   14 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |  616 ++++-----
>  drivers/gpu/drm/i915/display/skl_watermark.h  |   23 +-
>  drivers/gpu/drm/i915/i915_driver.c            |    2 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |    2 +-
>  16 files changed, 1057 insertions(+), 1097 deletions(-)
>=20
> --
> 2.39.5

