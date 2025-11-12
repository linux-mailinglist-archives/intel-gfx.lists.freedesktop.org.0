Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B45C508F3
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 05:49:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D4E10E689;
	Wed, 12 Nov 2025 04:49:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SkXjpV89";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F0F410E192;
 Wed, 12 Nov 2025 04:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762922948; x=1794458948;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pNyNrAP7ajJ0WPc8TeV+Do+shG4TnSj9Sr2GEgRE2Q4=;
 b=SkXjpV89aGmSMDW8tzyd2JUsRf0+3UsDby+W4+p4CpfzL+EvxT8gQ342
 tK6vgV3rt3c9U9Ycb8nz7szZK+Hj6002gg0Bcp+oVbQvjBn6b6/qAOie7
 8jHpphQ8OIiM+hDThaBRxsfcfr74qZwma33szKtmvaODZzzh5SQq4U69K
 jb4BsN91WUktLZpnDpgJZPhNP8aeH+/pgwATohT3Psyjs5beBrc3ThzYB
 fPW7EZ+y5kM4IU8LhLE9M1FJOuQgFKiZ/vkKKQtWqCGaaWOrBdNtHXL0J
 15jEO2FRpyKqOC6cp21uqvjOBheT4a6aPs965Ch6lv2a7Wav+2V2yREc0 g==;
X-CSE-ConnectionGUID: tz05ionvSeih+GdLzXsaGA==
X-CSE-MsgGUID: 3Z6X+Y7iRemWZWsi7cR8gQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="90453243"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="90453243"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:49:07 -0800
X-CSE-ConnectionGUID: n+4duB0dROicEAmJT1WlFA==
X-CSE-MsgGUID: 3+AIuB0fRnmKSGY3bwpFhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="188887726"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:49:07 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:49:06 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 20:49:06 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:49:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HvzLHNu+tQJ2FBn5HzRwtqP4pA8AHyqE5Ea05KGrSJH3L9kQQ3BSdd/XvG0XND9QHNjIYlo8QAlx+E4X07fRHMaF2GNF+/XcjxZBQvE5eB7aNF7aVSEoGoU7ww9HsBFY7rcbyiNRfTsFMoT7ymTTe7Y5b947tQ2YAT1VuZXuRz+rGEQV/ndkt9IQi3SzhE6HaEdpzlCyQ5RGjJQUJ0vnOiJ5VgQFUC9p4StnplHv8hWkFrwQxpcOPAJdZsyUJ9XmxtKxEyhBtJsMJGmSg8ApmjqmPJlOlo6S8H2Kab/5jK9pkI7mCuO8LerVDLhjLg3XZx1lNHmqC5ROVLzVFj84MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=shbwTUtlsHBOM+Fuj90hady/DGW3RX2lXKRHM+yUDI0=;
 b=XL/S8fJ1wHZBAK2IAW0jWuvQOL1ynQklzfAy1NQBE0hvZJdvI4d3uw8NJ2wPujqC5C61MVKDsTEUaKt8vonC8BnvD1V6rcIhOgF03TynT/stmX+/VKWcTti0cy1yUywuDHw0fehmkFS7Q1U/leBlltQMpZWMHf8/ayL9sQcO0ggiqSPc7OxHGQ2IBexu8y4HLBOb8yRNbAlEOP2wfKgflDefE+rYMXhJ3oA/i5Yd3AA7A3mvMWkIVZiHl/odaTvMF2n7J9RNZcnWlPNNGacyA7j+V5JP9QVnpHcVxu3ig2geB9VW+J5jYGET8w9/UHbCGaDikwop1CL/X5jKYhRsAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB5086.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 04:49:04 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 04:49:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 20/32] drm/i915/display: MTL+ .put_dplls
Thread-Topic: [CI 20/32] drm/i915/display: MTL+ .put_dplls
Thread-Index: AQHcSlaGrK7q0FxhQkWXKb9DsTWOB7Tuimnw
Date: Wed, 12 Nov 2025 04:49:04 +0000
Message-ID: <DM3PPF208195D8DAA355BB8E7727E370D86E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-21-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-21-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB5086:EE_
x-ms-office365-filtering-correlation-id: 3463b5a4-4ea7-4fc1-56f6-08de21a6ce31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?XAQCtSlT+793bzcD7KowFwpOjU1t/HXOKTghnt7PdUXOTSXUnCmDcwtoBY7Q?=
 =?us-ascii?Q?WFb2yP4tXsUCuOu9WdTb21LLxB7HJOXtlgkMoGxSt6sAemp2RSvwUhMoGX2b?=
 =?us-ascii?Q?B2efoNoaMLl2sEKf9ltsB0Y1fgpFE+IV9qF1gfWGPtJisuHarxSAavWQOU6U?=
 =?us-ascii?Q?sG6lF4Y7JWa52GlO2psazTuFoKaLGCJMZHL/8ByNlaCHRlGf0A5e3zPCQkz0?=
 =?us-ascii?Q?oFRKpPumTBTb8PpZG6b+J4mXgv2Vn/yOnHG8Fjk9Pfp7mEVnCikHwxA/megT?=
 =?us-ascii?Q?HaQWJ09C0KbvBevfgomEE2C6lJfrdoYqduSFe1eonABNnsBdx1+j5tx3tGhK?=
 =?us-ascii?Q?E3sp7EqduZKto08VVJz9JKJWVcbrN+v5OzaAZlOwHGxfMB1Tf5/WDeNL1TdJ?=
 =?us-ascii?Q?N/Paql0ZrWPUfBr/ZlVM9y0rqwdJ+QOUnw5BLI3r4ZVSDbn+jIDxK9cGVguv?=
 =?us-ascii?Q?oU5pKsMzMNHZjCOP0tc2HMNwtEKmic3SDuQYjck5Hb+IimLHjriSqmLm5cMB?=
 =?us-ascii?Q?nRsuI4xHh3gGQk0CLF9Hx0na5JI/9+0Z5zHqG47GHTHWwNQgF68TOQbSusrP?=
 =?us-ascii?Q?nvndkACU4XzkqcsS/MPT03DB77PMjv6RP7izje8Yi8tPoN3IzaGQodcRhOp9?=
 =?us-ascii?Q?irHuIO06IvQ0QJ4pRijFpBddRGkT1kOcv8ohK2BNhSrIn2fZMzhiYWORKBYa?=
 =?us-ascii?Q?ns851rwWsCe4TUjKNVWI/5KjPTKun11tvZIgW5wu1S3C3oJEG2G1CSKi5uR/?=
 =?us-ascii?Q?ifShzuDe1mjCcOpGy57OviK4k4VEmeXugAxWsUqnqLL5kaZEACyjgFxT+hfK?=
 =?us-ascii?Q?rVHHJRYeKe0lXQmayAtlTOIbpvU+YfLhduQcI755rgfxHyVdGfBBWsdkufyG?=
 =?us-ascii?Q?YDrBFAYUIMPU8DBZdQyA0Kp8KV5AeosLrpkSX7X8JDEYisE775VGDtZdM9vZ?=
 =?us-ascii?Q?+i/4fx1VnCndRZ650/F2pld4icPz1S73TNbfwW5q9gexdcgxPaRusxBt4mEi?=
 =?us-ascii?Q?4JkTS1pS+5FgUbeQdJFJhACCV6m4FYbM8ziKFP3IRZRJaN6HV0KhMT9C4V2t?=
 =?us-ascii?Q?VR7ZL6hYDlqHt34U4fU03W+IT/f9oyN0kW50ycV+hF4zgXB7eMTtL/Yi67RT?=
 =?us-ascii?Q?qHjcXPfU2Bb06k7nO+P/kIQIAcTfELnWDm4UiYGOFFoeaQB44mKBnxm0fYv4?=
 =?us-ascii?Q?WR7VXEmbtI8Y6J7wmltgF2q3Hi8oeJDKtb+gfPdGOiBZ9+RZ2yh5tKZ75A/u?=
 =?us-ascii?Q?qh0iTji5waWx6rJqUnlrJ48PEj1JRi24cp40r2NTzyNCeycLrZGBRCbxhOLZ?=
 =?us-ascii?Q?/iWd0DRegLbk3ZIxDph/ooHYzARZnGnoOpoLFWdTgs8oFxTfz/AItghFkb0l?=
 =?us-ascii?Q?/2ebwjHG8kQePZ9glh5PYhKJBSSEwUj3rg9y+WRirJCouDzkurpEEduheiNq?=
 =?us-ascii?Q?92TppmfwwFhX8YfOnLT8e2as7nqxJM7mp6hlJp8wAGXZSLn6m53PqZVdxdPc?=
 =?us-ascii?Q?iRYf3spjsIEnOTIrThsbGinsr088lXIIEZKi?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ArwX5YGZMQA9JlT5hDTPMHe0ET4Rc5LJK3A68aB6O77HwnmqTTQvNQfFHDCo?=
 =?us-ascii?Q?E1mTxgOe+U+9XsP7w+Ouca9C9bm2Fj2HcEZvfQ/dp0Zzr6nkJdMelXYhUGSH?=
 =?us-ascii?Q?rr2W5BRFkRkYqboDq0x6Lv/dKeHFPobpL+uVaxgDwcbkfWfqNbC+3B9za8U3?=
 =?us-ascii?Q?MHbLGyLDtUdjcVBgIukzPXIvllFpDEYxT2C2u6k1qeMNjBFPKmkYv8lN6VON?=
 =?us-ascii?Q?2z2SSGq/wvSFT5d/eHFl4OIO5+t4cyv6CX7ENobF0zCUNlZgotPuSSMaCEWV?=
 =?us-ascii?Q?UUPQVTlZlH+HduJj9JsjNfqjzVmEGELSFUdpwIN80ArwyuUkSOjC/lV0gAL/?=
 =?us-ascii?Q?6IqUh11Kz7EqTMWi2okv7djaVUtTAnWHXCWvNoAr2F9NX9H0EZ3iNv44prln?=
 =?us-ascii?Q?hR+PPPT+NQIpC7yJZHYw8jCqzp4cJLGgm9SQyvJ+WGdBaO20gk6PO14lha5M?=
 =?us-ascii?Q?DjLhcMVAdNhEAL7yUWycSOlJMUf+3S5wGuNl9QAjL0Micru/3gD74zZknP/T?=
 =?us-ascii?Q?e7c4DrbqNx3aj3DkCkCdhS1SvGqAk2LcVQAJjPwLwlZSijIPHLmDxPwq0UC5?=
 =?us-ascii?Q?pXzhVnOM1yNFGuS9DetQuxkLn5baN/23Vs2hqO3B48CIf91Lo7YGzIMa38+w?=
 =?us-ascii?Q?lppIMxyUHq4QrJZH0dH6aC/umRuWox735kuMMq7fJ72Qqh4ULFqnjnL3QEP6?=
 =?us-ascii?Q?U9IeUtY6kWHCAYmLrgnn/ka7ZloF/AN+YN3XpTz4ytabQZdjziosdpxyhPlS?=
 =?us-ascii?Q?AAluRR0r7rTpzDFmL2LAJxlSQJQHZFsGO9wZ89+EaerGlmJxf764fo44k1Ex?=
 =?us-ascii?Q?DRDIxJqxe66oFWWkAx6g1jN29oF7545L8+Gm9xwK5zMH7hbkQUvkfpHWB3fC?=
 =?us-ascii?Q?lP1AiW9TORnVsoDtBYi3wIfU7v3rjLyy36vf6K6Ou41ZQEBWm6vRCRu6UyQC?=
 =?us-ascii?Q?1rtY9ZTCUjGid0TTFP2rTkdzgGoyWlXKu4NheTJLt839ytSI3utc9g8YJ8ee?=
 =?us-ascii?Q?K5BMEU7GBMqDzbCCDL8ZkCDzlX5Fmr+cn/DpPeVLwxds2+MD5olvJADGg/Vr?=
 =?us-ascii?Q?/VYGI99HxTOD9kz3qAGO9kUEpN+FdvNlHhm9gg0hpdavvQFlohDHhwIsYI9h?=
 =?us-ascii?Q?du7JvR2pkjj4nBomE24AaIo4J1Dsi46BHAkZQggGBRxrKVpUC5ImZNWpNags?=
 =?us-ascii?Q?pPl2fV2+RMwL9RzzYYwEN8H5Z3k5d2jaFsCCwcE45+rMNoem0PkXIFyNymlB?=
 =?us-ascii?Q?UF+IdoabB2Utc0uJTBB2p9ygxGesXyAmN303rNTyYIJY9D70inv+R41jnjwi?=
 =?us-ascii?Q?nk6V1UNlqUz8paRm5TXjUHzf216llRrqtyGMylriPcar/4JAn+PMtZ65Q2eM?=
 =?us-ascii?Q?81+NZTB61B7OK9DwZBM811r7w6miZM7uPo4DmxKqXxOIq7vSTZgfS1Kkh9P2?=
 =?us-ascii?Q?LC2CVcENiYgRm8n9eJNfFLFO9J2a/tZ9rHNDIaFSruobjOlWU1PifPHYAQNK?=
 =?us-ascii?Q?hP+FRRKTqUsZz8fM7dG75wrU8iQ1oG3ujHtPpDnic64UuRsJZ2IVyeLuqWgz?=
 =?us-ascii?Q?7aFL8O7fNDaN7mva/CwjepUBisWO2/QZJfhXWPz0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3463b5a4-4ea7-4fc1-56f6-08de21a6ce31
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 04:49:04.0369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4iNk8oDYZkoLIW7m7dvr70zmyBUhhupJvkxRisZKp0nbv2v6Ou6QSPVw37Y86JlAAwM+7VbUpmkFgTvRJyazSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5086
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

> Subject: [CI 20/32] drm/i915/display: MTL+ .put_dplls
>=20
> Add .put_dplls function pointer to support MTL+ platforms on dpll framewo=
rk.
> Reusing ICL function pointer.

Keep commit message imperative
*Reuse ICL function pointer
With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index c6af2816594d..cd612acad6e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4448,6 +4448,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr =3D =
{
>  	.dpll_info =3D mtl_plls,
>  	.compute_dplls =3D mtl_compute_dplls,
>  	.get_dplls =3D mtl_get_dplls,
> +	.put_dplls =3D icl_put_dplls,
>  };
>=20
>  /**
> --
> 2.34.1

