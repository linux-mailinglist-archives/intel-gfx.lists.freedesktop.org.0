Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBF0972B1F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 09:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E13D310E6A3;
	Tue, 10 Sep 2024 07:46:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B4XfC5z5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE9E10E6A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 07:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725954399; x=1757490399;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FODk6uvy4WaB9HdOJZUShatTmi4HvyF8T8cARS2foRk=;
 b=B4XfC5z58Z60WHUDpwYLqWt+Ming4gZtqeIgZt/7HLsYN/USWsIHSdJH
 biH3uESGiOsGrA1++TO/ZEsRANKdrBfeEr0mM4OgiJ0prvVHNDg2pwJBY
 Pf5dMxnp0I/0pxQuDjsRA/WsQpINVY/kMoV0KsEJ8I8kW6yTU2YXVuwPd
 k1xJbYQ8YDHP2TKG1/1WFSsQeltegFi+MfEfYXFRuiPOcG21k+X7zKUy/
 gv5PnXH6Gx9c+3g/6C/k6mSQU1xqhO/7GuzT3eyR5AKG0sLF8vnfn5BbJ
 94WtliDEFk4DulqEhvHTomv47xGuzkNabeNyKltAgikdw9n7vvZubDB8l Q==;
X-CSE-ConnectionGUID: RxwWzuFlQ5uKa4JEmgHjDw==
X-CSE-MsgGUID: dHVCv5pnQiK9vad1bzAfwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24230393"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="24230393"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 00:46:17 -0700
X-CSE-ConnectionGUID: ww/zq7JuR5KuVeWpv76Q2Q==
X-CSE-MsgGUID: BZHgrXW1SGOT+Gdf1zLtnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="66571293"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 00:46:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 00:46:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 00:46:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 00:46:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A9d0sooNn3X6gvHYh7cJuKKII4QWb/Z5y0gkuq0MaMPY52VcLGazqQMA8wEUP7xi9vn7Icwjq0fBhVO4hxyulrvW81UFuddn/zoHxr6CySEPsJojS/MaPDwYkqUevFVaE2IJeodAIKraf9bvCO7pVRq871wCrLb3ECg1AugQrQusisH3Jje0I0zaRjcwdqmsKDQxHJ/XlhJXiNsS473wg3A02nW3a/+7r9wjZa6uBkGMRsVrHJIfCZCqyQylgq/+UKJIabVEAsPa6arWrF3f0QlCXBh4U+isjK3K91cwVBN05vnrT1aaBp2VFsV8F6XXhxNYHaDZHrJyOqB/yTpOXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q15BCmp7uwpCwKB8/9PIiHkBvbxzizU+9RYVWlCT9MA=;
 b=OUC2GawTvyUfqRjRZoGpY+K47o8HuNVTJOfuSHweroDFER+lAc+zLGuTkdEr/juohNLTi+q0i3KaqiY4Szx1KAKwrqG/5dKSHsKxC8j0izh4CTlvKCcpdD21PfwGL3V/UHnXGSwEmZ+9Au6MODEzhyzJ1zaGXK9Wg56e/GpOf9Wnz7CL0pS3Je2+6COqbNKPOTNlUR6q3txGhAz6dxNOg2RrtXZGM2mBPhQ41RwxDF/1i+J6/Ma/4UBSaxELHO3xEQVbWRKV8SEiBwiFV5od9PJ3TTx9Ai38cwfNqiE6TQ9nu+gvf9mOYHgP79st9UkgYZDihUYeGsShSWhe4nBQ6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB6426.namprd11.prod.outlook.com (2603:10b6:510:1f6::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Tue, 10 Sep
 2024 07:46:11 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.7939.017; Tue, 10 Sep 2024
 07:46:11 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Subject: RE: [PATCH] drm/i915/pciid: Add new PCI id for ARL
Thread-Topic: [PATCH] drm/i915/pciid: Add new PCI id for ARL
Thread-Index: AQHbA0m291rduhY2bUmZxfpNCcsc2rJQoy6g
Date: Tue, 10 Sep 2024 07:46:11 +0000
Message-ID: <IA1PR11MB64677D114D4583D7D33928C5E39A2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240910062301.2006782-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20240910062301.2006782-1-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB6426:EE_
x-ms-office365-filtering-correlation-id: 117a1309-6e34-4f47-1def-08dcd16ca3de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?HWK4CnFe/ZfwqFCnOTTPllurEQ4+Nyh/gfjtxnwrgxYCafcgPDjlhKjpdya8?=
 =?us-ascii?Q?XyvDxGfrjlHG72d5fjQHTtw4IPeDL8NFw1slQmXNYKALpcmnAQr3YjBJsO/s?=
 =?us-ascii?Q?OeQyuznewMWK8EhJPhtR92eriKmIEs24T7RsGwsjk5WQRlyh1/OX2ijejyJ/?=
 =?us-ascii?Q?W8I+Y3VH8+w7CCr51gHG6wuVXI2A8QwZ3WXdV4kvdv/+x0UH8/T+mlDacE9P?=
 =?us-ascii?Q?QNBRbhK6rnVBFWJz5ZEEUCUBj6IJRbLPbSjqcDSQRfhntlf+56kF3DxAemim?=
 =?us-ascii?Q?hYIu+dnSasHgCGClgWx3n9AuSugIuLlSx3bRTmjQnA3B9GTffD52ypCYvNTr?=
 =?us-ascii?Q?RoEEp2Gk7sj0O3sn7oB0P8scX+AHDSGwFTN+ygwNz6ZnebsmRgdnCUZrBpWZ?=
 =?us-ascii?Q?0P4NbKVt+G6EuMJN3TLbTE/fcQyUjWo7dZ0e1MmviSZ5YTSIJ+3kWLYxa8aB?=
 =?us-ascii?Q?hafEUe7OiN5xnzsZgGefg5tozzK81q91VoIeWvlwRVBsSLVo4hp2ovzoXvGH?=
 =?us-ascii?Q?9X51FiDmtsWfkDdavUSN0l+ovGjlYjrzJR5i1dq5PwMSzmQpoCCM3/PnFEoP?=
 =?us-ascii?Q?mSXmrONEbcL0hZLy58iTHHxUKsFSqyjlJltwJLNPrXhGONRxQvJ6lYKIzj1T?=
 =?us-ascii?Q?xGGtfhVZ2HaEs2qRjIxgrg3ijDTOmfcfXKEoFSG/b/mEYnbrVU+T8Sbjf8y+?=
 =?us-ascii?Q?nygSMOEb+7fDzDCbYAgHACSDumMYZJcnXuMfWhSYm3JKWf500QWNFEQLViif?=
 =?us-ascii?Q?TH72xvXka39Amjp0Q8IYh2NHLvBVEErc+sf5a8Z17cQ124vzfS2m1l/LyP3b?=
 =?us-ascii?Q?p47BFdgRz1qg5aX7exoK0JCFnWwv5X0q1a9+HJLiT0w8NSZgyzzlvqOkaNm1?=
 =?us-ascii?Q?SrEpvr99/EzYVJceqTcbl8KkkyPCB0/Wbwd1m0f5UQ66as6yH3uZTMLYSkCX?=
 =?us-ascii?Q?m0OyXqfKqic5ywgbTBoUxglOnZuuK1P93ptNhGC0dzRWqEeZeOB6dA4jBnXO?=
 =?us-ascii?Q?x6qhpwLhnV0VCjTWeeWBPFfs4e6uGsylYiHQRARWgVHGHFTSUOzYBBf+lYkr?=
 =?us-ascii?Q?i6+7zbR3cXhQKNGeBajfRD/T3ekrtz1iJ/s9FzjNV4Fkzj9YbXWr7fqzsB6S?=
 =?us-ascii?Q?wejgHH0FpA9YELe/Yq3OaDdBpubEK+pXHpFafx+FzcrPcGYfcEnBXhgj2OJj?=
 =?us-ascii?Q?G5p6I54zw0vGLHALIKlSgLyXynnSQRljCCVy34pejKtYin/5BoBzibCA3fUG?=
 =?us-ascii?Q?N+mrUXiMGxl83YVVNP4TyXfTu31h/NyEFhpb3z+45cZ9JqRTt/yGHkNANLQ5?=
 =?us-ascii?Q?TOYWleQwZB9PGg72pIrJaMpjMAM32G5uSlTYvSvjHGU297izpYHeB1qsLZ0t?=
 =?us-ascii?Q?dNoXSGXL80+vitHUHq51coDMZydQXLtt6KqUyuooNRB5MwL9fg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JZ4xdOrpu1xTUNlaEfYYOPMNc8mVdt75u2hkzeV2iWRZ++l9f75nivrJUIQj?=
 =?us-ascii?Q?uUsQfFoloiwu0jxfwjrGCUsX1+n3Gy+qD9ZNXiqA7KN4BGMqeTslmNYFrvTW?=
 =?us-ascii?Q?eZJO01PioJ1IqPqHqa7Gp3Q5McVCVlSJxn1Yrmd9zeAiQo3pb4TNiGj0Ks51?=
 =?us-ascii?Q?XUvdhBC+drKsiQOKzKmEacxDvir5mY5AC28RAuXnCtvCcyzdc7gyJiZZKvFr?=
 =?us-ascii?Q?31QlAsL6BOxAK+XSQNoXyLi+rMolJ7KOe+xYsiBcuf9E2E75OmiChNcpcKDY?=
 =?us-ascii?Q?ezwDu1XlKIB1Gao0Bq6JUJmfYNHuMnJ0w+eszl/zT7Gbvafv+ofUwtiBD/RI?=
 =?us-ascii?Q?aw1eEMxbSUhCzqys3o3+2P65acF32VtYM+eESOiIn5CGjjSOq4XXJgIFt15u?=
 =?us-ascii?Q?RnEOBgvcget4La4nc3Bm77LFIMz7uueNiXm0b1+gs+6NhnHstasAEbkmtLIL?=
 =?us-ascii?Q?cozOHb5zV12Z2Q5PC7m9fxxh+VuHqm3XGWxWTFhi7Oqu0N43ZtpoN9BeYOpB?=
 =?us-ascii?Q?PjnqMTXc6AJDlZAh6smgAAHYM+TlUAmyuFWwDbFfZLVFnB3NR0GE2r6GXZcG?=
 =?us-ascii?Q?bNhJEgFyZn5G/bMCnF1KXFSuompCmRC6X77p+RteTcU/t1QAAGdZYLnlf1TE?=
 =?us-ascii?Q?ABoP9du88is/GsnJJ0wPAtGqwmRHOHToa78B7LJcbMbJ9VjvkLtnMShec+dh?=
 =?us-ascii?Q?90X9VQOAIKE6YmgL+e2t0DaU7FXu/h6LR9KnK5Nxgoktvf990wgutsPVSRqi?=
 =?us-ascii?Q?I+ZAFzxn+0nd/wrvjbhdU4pL00/oIg1XIFGvNETZPHYQTgEEn/WnY7QydpjD?=
 =?us-ascii?Q?44cQLRku6KUSH7j5G9gC+TCWOjiaKecv+pLx7YolII9XeozUBveC/wLcurcg?=
 =?us-ascii?Q?Sf85jx9EhQTJgT9Q5D/QReLmFwNfJsyY9Pbv0Q4fPOuOZKiBtgl7EDKoosv6?=
 =?us-ascii?Q?YLRSWSt6GpV4S42ovfF2MgC2igb/t55bMCjLaNaaBqRXXjre9N7Au7DVG5BJ?=
 =?us-ascii?Q?9OmekBUk/nPuuRRpbznN8CNVhiqAgq8ZO43EdFl6uqgfuVSzAVQLwgpyJDJM?=
 =?us-ascii?Q?6lL72DHj9NBVyT3x7PoWmJX0og2I9/ADsru+Fk8VaIe342IWd9E/XO7WZkca?=
 =?us-ascii?Q?Pjp+Ba0+juY3mJf0s9VXKUsqPLFLf9VVrTmp0UtsIrj574WRtG0hH9VR7Qbo?=
 =?us-ascii?Q?+gdjLgXiYDB+f7QSPmr2rvkmtq55khIcU5ByTUazNDj53X+tv+y08AhxCkZX?=
 =?us-ascii?Q?5OOQcrfZgBsxaPN5IYQKUR1pVV8sG9yak0WQqaodIkr5zPhCJ5azXB/K64ph?=
 =?us-ascii?Q?w/36jzGiufQrkARkEFt15qE/jVTN8WF3uUWcCRaQrGPgjAQN/dIE4/eVLrg6?=
 =?us-ascii?Q?6o8/MWn6K/7KvPrRCWLaZQylmMdksWmiTkh/suI7+yaC/j7HZboZryoPTfSf?=
 =?us-ascii?Q?/DlLOcebJdZg5B9hR1opPp4WEjleVGBIvymbVFmGGh4HenmevbkLKlcLNqja?=
 =?us-ascii?Q?OTyppZKuvOTWBtjmJN247y4x8BoxtAgv4R7gszLrUVODczP9+BgBw5COH+nf?=
 =?us-ascii?Q?nvUfavU2ns8jjvSGlFTh0XAklCW8PWw/fzAmLr7q?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 117a1309-6e34-4f47-1def-08dcd16ca3de
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 07:46:11.5225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZGtGnAsQvAUzIF7XaNVSSyOsjsgt9l8h4Oln1RdP5yX1xXyvW8CncysRBMYDrLh2IPjRUcBQaKNNq45YSAGwFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6426
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Dnyaneshwar Bhadane
> Sent: Tuesday, September 10, 2024 11:53 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH] drm/i915/pciid: Add new PCI id for ARL
>=20
> Add new PCI id for ARL platform.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  include/drm/intel/i915_pciids.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pci=
ids.h
> index cbb12fdbcb7f..02156c6f79b6 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/i915_pciids.h
> @@ -769,7 +769,8 @@
>  	MACRO__(0x7D41, ## __VA_ARGS__), \
>  	MACRO__(0x7D51, ## __VA_ARGS__), \
>  	MACRO__(0x7D67, ## __VA_ARGS__), \
> -	MACRO__(0x7DD1, ## __VA_ARGS__)
> +	MACRO__(0x7DD1, ## __VA_ARGS__), \
> +	MACRO__(0xB640, ## __VA_ARGS__)
> LGTM
>  /* MTL */
>  #define INTEL_MTL_IDS(MACRO__, ...) \
> --
> 2.34.1

