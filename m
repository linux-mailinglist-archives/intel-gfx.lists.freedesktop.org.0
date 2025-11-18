Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF0FC67472
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 05:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C098E10E3B3;
	Tue, 18 Nov 2025 04:38:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dFplCYOi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9DE310E3B3;
 Tue, 18 Nov 2025 04:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763440703; x=1794976703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XofWNRTinKhoXDJS/SC8nnMqTEZdv3OuH5lQUrdfy58=;
 b=dFplCYOiKcFsWijWMSV+NvX6xCwZHhZ4KC39ztGZYw2UP0YWyTBzfU4u
 mVSkEsA8BiqyKx1JtK/Fm04Oau8PIUmRNpC5ADIB7rWQZbJqE45WHKFaF
 jbVFu05PZgXJaxv1ygtcyHkZAKkf5ip+Fx9zOytll3DMcz8uFb7HehKFt
 vec44Vus1D4GfZAWDplBFZjo3I0cLtH1Ii7e28GAA//+Zs7LblbupJiE7
 NQ7HQlyGDJ1+kO/SQDEAV42JxVUUG44LuCR+vy7yu8qcsI2PNz/I6TcXI
 1q7WeMabLGpk6iIeaZAzCgbiJm86NK2aM5XPRTvchbqNr7v5Kee0Is8jb Q==;
X-CSE-ConnectionGUID: gBqore4lTBifUeWMgjDfFQ==
X-CSE-MsgGUID: QWkKMOmLT0ixoHlT2+ermQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="88104478"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="88104478"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:38:22 -0800
X-CSE-ConnectionGUID: zx/MlV48R8OIjK38mfNBeg==
X-CSE-MsgGUID: qI1CEEYiSdyI4sa+1QThlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="189911724"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:38:23 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:38:22 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 20:38:22 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:38:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d6E12C7qZooLOlE0V8Bnms13z8eju+1gdVkX4+7Leohi+cydSP0hsFMxBdig5DmK/sAvgRxmyiRBs6BFxAJmN5Wg5SHS/rQ1kHRd4QPLfRjhRBVTAuSP7MAWu3EhdGblT5KjreljK40gN3cjhxkLFOLA9dlA6dcuL4a201ifdiLUyT+aAGKgzWzVvY0YiXRHwhK/Eg4avSGzWOuCNIUeVrYYvJ3fu2ME+NYB3/WdQbP3h+JuIwGz6yrjSMqeqG1GUQXdPwl7HPWa7EA4baAU7jIHtepILAnTguudZXk5z3/QjldZf+7WCzUcOF2C5gYNKijIxOaj8kLnzavudKRf0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d8BVbhSDpNYycz8sSM+djnw4pQkzrv7lfHL+7juQ9Xc=;
 b=UiIhDqIgvKDX3EDVYEw/PN6uUQ+bc3fNTxZOY7uCAoKS9/G35bFjaK72eu4gSCg+beD8FcrMBsXKTExPoHW3DFJMbdp5ytKej3BR6OA6Fg4FyaPA7A9RskhAjJcA+UKvBed3hB2S0aeILddrkPXLM44xvUEomgq8f+JWxXzb5dbjudjl9qW/2vPtzmYuh39SRDHmYp7SRm2lInQDQgVU4dxP/i3UHlZqjIZv//W+s/Z6uyGDY5PTdhsa/JVS7GdGtcy02PMMvv6NDOhEQcCBhFMwArrMuhz5pHtJI9DfHnp4ftLiFSSShF6oXoych4ydNLhgnhjJcH3RTB91CjhOAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB6933.namprd11.prod.outlook.com
 (2603:10b6:303:22a::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 04:38:13 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 04:38:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 31/32] drm/i915/cx0: Add MTL+ Thunderbolt PLL hooks
Thread-Topic: [PATCH v2 31/32] drm/i915/cx0: Add MTL+ Thunderbolt PLL hooks
Thread-Index: AQHcV7QVVOTHeZMyxU+LehYxpi+ccrT32oyg
Date: Tue, 18 Nov 2025 04:38:13 +0000
Message-ID: <DM3PPF208195D8DAE2A5842846681C9EBE2E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-32-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-32-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB6933:EE_
x-ms-office365-filtering-correlation-id: 141b15ed-6715-47f4-62e7-08de265c4900
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?d7sKlupg+BjYEmspnCqrANYGpH3M7zBxtkkfyEA6n6DDzKh2BAkixDTZa65x?=
 =?us-ascii?Q?dNUpklly84bvwOqXyNY06jGcb5PuvwCZwysIA+DHP6lYIEc8v3VwKjmGmAP3?=
 =?us-ascii?Q?7FPjVpCMIyz/Ffv0oIJghytCHFedxTL8Btq7ARHlnhmA91Y9k+xm9A+3mDQV?=
 =?us-ascii?Q?/AzPMYAEWXQJ97RcVuIHwaihS92ktSf4uQNVK2kgwLr+3yT7HUHWvFyNSB/k?=
 =?us-ascii?Q?t4ooMISwKWBERdi3cOu4W9R7W43Lu5btPwZyuZBG00GXsF35tycN/zywRGX7?=
 =?us-ascii?Q?ElP7NgiuGvt9pLOs949VgFgmIZZizPtYbhPzXI5YSOf9z2F3uSQQ36OXNRg1?=
 =?us-ascii?Q?nGtx7PA8lzB/jalm4cSd3VCoEYHDGWDCMsX5tjNtbcByfZw8xEKjXFyRN4Bv?=
 =?us-ascii?Q?MwRF3hVgPoKUjWbe/c02mUtFGD/f1aJX4aikVpwHwRgghYRSZXHNl+6hZFSX?=
 =?us-ascii?Q?JNUgQyQlqbKQCDF83OODOCHWW0HOF2zmMYu/4RkfvRxAKUsradCJ0RPT6kMx?=
 =?us-ascii?Q?Oq0Eej144iXICwPqAtFZJGajy0r+d0nNmNRkupu/G1nFXRM/NUHjy/jC2Adl?=
 =?us-ascii?Q?BAAOTJzO51CYgz5du+67EL7GNDzg1+PnlsuC8E81K4/Y3qq3ltobcfc8AvMq?=
 =?us-ascii?Q?i/ElR5hl5AEo6p8JOh88i5Ai6LRlN2PW9JlejPrx+M/ScNNAwOSJr204+zwk?=
 =?us-ascii?Q?QLso79hwNyEKqpfdIGE2cGOIt0CsYmE9DYwcMP0H0DCv3KZggMn7x0JZDwQI?=
 =?us-ascii?Q?kAIDQys7hOdby6AH2PVNLCstJcSN9t1GvRjIJV0HTe7N8drmxqWpoLkq0nEj?=
 =?us-ascii?Q?/BolPIf/R5osRmzzjaWoZfP9X0bWOQGjlTWooJ1/plK8FSfHRVtKxTyGO9Nm?=
 =?us-ascii?Q?2daYgJRd1f76V/g2zxph35yg9GZp0/LMmkeElRUAjgvz0e2hOOt8rHv1hbmE?=
 =?us-ascii?Q?LKIzIZfarnYOTIFSHyCfd6JuIdQ73JMZsGWRKc9SiWvHprk7b/7N3L+W577N?=
 =?us-ascii?Q?7vseSoDBbwuX31HZGylqweRtgtpyEpTIzQfAfbnS7UqxTzinRxf9f/AlVvt4?=
 =?us-ascii?Q?M1uL4lZ8IhOnqcSzi7x8nRS+SFNpip29NMooxOhX7L+Wloy87ohk4RPgH0ke?=
 =?us-ascii?Q?2EZ/f+35ArWrwfUz6JgBQ/ZlxMDGsmPuC6eWZW9JLoi91YHm8uAnSZwfb9Ld?=
 =?us-ascii?Q?Pwq2kRoYRPTfLHWpg9bV3kMZRsaUJEVyueLLXtKz19S5mMYJcC95pCibCRcl?=
 =?us-ascii?Q?8D7OgfKtTq+ht581PlyYqGmZSJGvcj/NFrzrNKZNVcZ9eHBugiVRUQ0tNiUe?=
 =?us-ascii?Q?k2Fl2A1tHFjWku6QZu0qdChnRTLuUUTO24K0ihY5pxp572J2YkrfWpQN73uQ?=
 =?us-ascii?Q?zCBSHcQnmpucBk+CeQUzyPqp+wvCqhWf9H1T1Jj/2IE57a2AwCEzeUGrbQrP?=
 =?us-ascii?Q?CdcFJZJcrbX0Rtq2D/3wBARtuNxKJTOAKR1gYb07wCNuxM1os0RAjxcVIEsv?=
 =?us-ascii?Q?MRbYEN+hhtbvIAAxLJyp3jmh+sFfyS1cjhHs?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1lYSgCy5T27RR3fYHCuXtofbia6KW5QUSunkVDudyiSTQ3/AvN6nQxQezOp0?=
 =?us-ascii?Q?kxcvHCLkBoQfoPQq81UeVgodSV7NXf/1sPnzkSgV+M3m31sPTWXZctuAbHzV?=
 =?us-ascii?Q?fHjtGWw9a9/G2+wk7bfjjQ5O0WpFDviZ9vk1sxMulz10qG7Krjoxwj6G7HkP?=
 =?us-ascii?Q?i9qjLE4WpdiOKnRzn8F9nu2ClMgO9TfagNd/X9P/32vbSuRb84BGpIJ4VgUw?=
 =?us-ascii?Q?K9FhQaOzhyTb+nA8Gqsai03Ju6MFUHoDJaEiPnFtYVCY4GDaEcqWDFQbLcHS?=
 =?us-ascii?Q?rtKfTlk+HilEXkWglX6i7ytUjcoTmSXmddmMa+FrzOV8rXNETPb0gngooWlm?=
 =?us-ascii?Q?XYwnqI/+zMjg8kQuWS6fU4cwbsx14BnVY6h7+h+/CpNdbh7YPiHji+siFZmZ?=
 =?us-ascii?Q?FZ/0ulSRVdT8X9H31hrLYlFSwQjlo4B0FBbydFcQQTXUmTjd+kdeQj5Y03wc?=
 =?us-ascii?Q?pfiGQJxyK4NpIuCORCH8ln88tpwxiKQClB38+VzezthWzkTiLhX7e+CltWPI?=
 =?us-ascii?Q?ZSvZ4A0rjcCCEGQHoSM8LuiiPb5NoixyE/LUFYgPsulzk4hUqFnpH4ZY3Ivr?=
 =?us-ascii?Q?luDQ/3avv2EZrHkx9ORhtKdyDLU0ksrPGHnkI7ymeyIWnKfguA/Wd0KgYnoD?=
 =?us-ascii?Q?uaEpr6wADKncVh5RAMyLcndWieVqGMlqTHZbMXV2KKxDKCJm/44U+pw+lE1y?=
 =?us-ascii?Q?o6E0zUwNqFej//jkxtfYTYbpuNk8JIlsYI9vpJMZUwGM49aDQ3EOM/Q/Wg8g?=
 =?us-ascii?Q?zyDtH8N0lyDoaSWPX+/TseuTZ50BCOmis3XnwJ6jqiXt1nTOYKawRl4mdFGH?=
 =?us-ascii?Q?JhBZ6DP8iB/cpbcENIG34qmw8abhy/3QGkHyvyDzs62wGJNFaaSuGwdNsQMX?=
 =?us-ascii?Q?n0B+DCyH0ZDK73AYDJzRihSicm0y3Df1mYt9L9Dww94/P2otea+K2YT/l9QV?=
 =?us-ascii?Q?o5i6vEHnGHif2svfs6rPIkCnrISYNJHWloCGUkvqejf8IJ3nZUHn2lQweapf?=
 =?us-ascii?Q?uiIEZe/+epcp0vlgSAypf/QlpY37oTzHDhV/kV5ZpNl7RoC3Lm4q0QZTcTtD?=
 =?us-ascii?Q?bmzq75p9kFhAfzz9ZZdYbAffUKEnzISVcfSq+mwDzocdiH4+dQkIF8ueYjF8?=
 =?us-ascii?Q?9ZgfQIgqKz5bmM2t7DTzGqtYgiyp4DrLq51DlVRgxZCzMgpgF4psoDoytu36?=
 =?us-ascii?Q?96BHFyLpx8QX+sTU8qQ/AlDgqvEi07CV4zgLMz7WVfmw6vk3CnWMimQONU0F?=
 =?us-ascii?Q?KM9fIK2tfMsBGGHKEJX0wJoXvh+39+K9b9zU9L6rteLFaF20YcBD3it4hy9/?=
 =?us-ascii?Q?e/Eih7vKWDhYe+JAtf5kcBXa2OMBKygTWCT8rutW0JaSZAiCqWzICoLNF/qw?=
 =?us-ascii?Q?YnmaWFFmhK03e97OFDFAz6eu67b9yoEtqG7OPSouuWdhgnoyNKDXa1Wqx9cv?=
 =?us-ascii?Q?QcSPOFVcCpkUZIKYsSAaRASr5HNr3yaBs34Hg5kLaOVORHGcfTjIjwg0da1s?=
 =?us-ascii?Q?7Saju3JD6P3amogxs+NRRi6b3vF92Hti1ZdPyAovtahaj443CnIH8ElBkHpi?=
 =?us-ascii?Q?2/otGLbxeLooMStNBMeA0syXCNUZc2MiHi0/6EKU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 141b15ed-6715-47f4-62e7-08de265c4900
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 04:38:13.6653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J7kRRnhM2RWY2wXF4Tq321qZ/k7L1v6MkFtgjdyd9Z7a4dQWlZpAiwg0QD4LeC1csKO+jE8trB3bPaCJDDQlgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6933
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

> Subject: [PATCH v2 31/32] drm/i915/cx0: Add MTL+ Thunderbolt PLL hooks
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> Add the PLL hooks for the TBT PLL on MTL+. These are simple stubs similar=
ly
> to the TBT PLL on earlier platforms, since this PLL is always on from the=
 display
> POV - so no PLL enable/disable programming is required as opposed to the
> non-TBT PLLs - and the clocks for different link rates are enabled/disabl=
ed at a
> different level, via the
> intel_encoder::enable_clock()/disable_clock() interface.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 18 +++++++++
> drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  6 +++
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 37 ++++++++++++++++++-
>  3 files changed, 59 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 79be234780ba..9d96e8940838 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3283,6 +3283,24 @@ static void intel_cx0pll_enable(struct
> intel_encoder *encoder,
>  	intel_cx0_phy_transaction_end(encoder, wakeref);  }
>=20
> +void intel_mtl_tbt_pll_calc_state(struct intel_dpll_hw_state *hw_state)
> +{
> +	memset(hw_state, 0, sizeof(*hw_state));
> +
> +	hw_state->cx0pll.tbt_mode =3D true;
> +}
> +
> +bool intel_mtl_tbt_pll_readout_hw_state(struct intel_display *display,
> +					struct intel_dpll *pll,
> +					struct intel_dpll_hw_state
> *hw_state) {
> +	memset(hw_state, 0, sizeof(*hw_state));
> +
> +	hw_state->cx0pll.tbt_mode =3D true;
> +
> +	return true;
> +}
> +
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)  {
>  	struct intel_display *display =3D to_intel_display(encoder); diff --git
> a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 3745d7081ac7..9f10113e2d18 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -70,7 +70,13 @@ void intel_cx0_write(struct intel_encoder *encoder,
> int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
>  			   int command, int lane, u32 *val);  void
> intel_cx0_bus_reset(struct intel_encoder *encoder, int lane);
> +
> +void intel_mtl_tbt_pll_calc_state(struct intel_dpll_hw_state
> +*hw_state); bool intel_mtl_tbt_pll_readout_hw_state(struct intel_display
> *display,
> +					struct intel_dpll *pll,
> +					struct intel_dpll_hw_state
> *hw_state);
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
> +
>  void intel_cx0_pll_power_save_wa(struct intel_display *display);  void
> intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state); diff
> --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index ecb7e3761a5b..8fd3b06f393d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4421,10 +4421,42 @@ static const struct intel_dpll_funcs mtl_pll_func=
s
> =3D {
>  	.get_freq =3D mtl_pll_get_freq,
>  };
>=20
> +static void mtl_tbt_pll_enable(struct intel_display *display,
> +			       struct intel_dpll *pll,
> +			       const struct intel_dpll_hw_state *hw_state) { }
> +
> +static void mtl_tbt_pll_disable(struct intel_display *display,
> +				struct intel_dpll *pll)
> +{
> +}
> +
> +static int mtl_tbt_pll_get_freq(struct intel_display *display,
> +				const struct intel_dpll *pll,
> +				const struct intel_dpll_hw_state
> *dpll_hw_state) {
> +	/*
> +	 * The PLL outputs multiple frequencies at the same time, selection is
> +	 * made at DDI clock mux level.
> +	 */
> +	drm_WARN_ON(display->drm, 1);
> +
> +	return 0;
> +}
> +
> +static const struct intel_dpll_funcs mtl_tbt_pll_funcs =3D {
> +	.enable =3D mtl_tbt_pll_enable,
> +	.disable =3D mtl_tbt_pll_disable,
> +	.get_hw_state =3D intel_mtl_tbt_pll_readout_hw_state,
> +	.get_freq =3D mtl_tbt_pll_get_freq,
> +};
> +
>  static const struct dpll_info mtl_plls[] =3D {
>  	{ .name =3D "DPLL 0", .funcs =3D &mtl_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL0, },
>  	{ .name =3D "DPLL 1", .funcs =3D &mtl_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL1, },
> -	/* TODO: Add TBT PLL */
> +	{ .name =3D "TBT PLL", .funcs =3D &mtl_tbt_pll_funcs, .id =3D
> DPLL_ID_ICL_TBTPLL,
> +	  .is_alt_port_dpll =3D true, .always_on =3D true },
>  	{ .name =3D "TC PLL 1", .funcs =3D &mtl_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL1, },
>  	{ .name =3D "TC PLL 2", .funcs =3D &mtl_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL2, },
>  	{ .name =3D "TC PLL 3", .funcs =3D &mtl_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL3, }, @@ -4470,7 +4502,8 @@ static int
> mtl_compute_tc_phy_dplls(struct intel_atomic_state *state,
>  	struct icl_port_dpll *port_dpll;
>  	int ret;
>=20
> -	/* TODO: Add state calculation for TBT PLL */
> +	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];

Should this be DPLL_DEFAULT or MG_PHY

Regards,
Suraj Kandpal

> +	intel_mtl_tbt_pll_calc_state(&port_dpll->hw_state);
>=20
>  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
>  	ret =3D intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll-
> >hw_state);
> --
> 2.34.1

