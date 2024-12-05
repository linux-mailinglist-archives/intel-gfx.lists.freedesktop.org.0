Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC64F9E4C14
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 02:58:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAC5810E5B2;
	Thu,  5 Dec 2024 01:58:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K/bWR5RS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CC1410E5B2;
 Thu,  5 Dec 2024 01:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733363915; x=1764899915;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IjMa1j28h3nRjDyeZBjMwwJwW/rkQhQatC1P/gC8GQc=;
 b=K/bWR5RS1wdtz34vLHJ5maEDSEmkYc9Q+QAH1QmAR3caDX4pW/njageS
 /Mh73qZM0YyXA6IL+VaHZMq14qF54nLodFBHZIeFcFvC5y3z/kwj0WpAy
 zHrheftO/qdkKK8kn7o8etJiG5VDXtrhpHFdlwQcFgkL0nT5tDoDmyXzJ
 7Lq/tCiQrTy+Kab4i9zdRV1tmyDkCGDz1ToYIBgE/S4jBZkgNpkDT8vb3
 8vHxfatPdH0qQ2gN3agpPkRkdh6Ib1SUBCPJVnhkj2p+RU2m0T43iTWcb
 Z8E2x7D1apC5J2oQOLil6qaWok8RBZ2DwEAEjaU7BEd0kyayflOxJwqm6 g==;
X-CSE-ConnectionGUID: lWxoK3USSyqK47PXnk1L8Q==
X-CSE-MsgGUID: S/l8MinAS/aby3RbsTuP/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44263818"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="44263818"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 17:58:34 -0800
X-CSE-ConnectionGUID: VKFUWjl2SiOr4aYEKAMJ+Q==
X-CSE-MsgGUID: CU2hJU+dR4CV6Jz3UaHKqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="99019878"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 17:58:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 17:58:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 17:58:33 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 17:58:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gMyP2Gph/heMXIS+5gsboowUbhNPJoB8BDD2RdLMji50zgIuJxXXVy5oTu0HjuthKLTeS6aDOV3vuYtKgvbOauvjU3zTb2Ff48TUDbrAKny/wbSSXNtW6p4jMMIl3sijxyLRPYwA0myKEaHpt1smstiwIAJopNNlhdx8tSvZs+Qd3O2R23flc8WSKfCbvv6dgMGo3uegapxV9fIkIP9US7pxxngAO62bO4eUxF+ktBXuvPdJ5gL7kij+xR1QU5waJmedOgmVI/u+sS+H1T5xM0AVjDhqlHLyjZsKyhUhI/8zyHU5/r2sxru2GW16CBC/XKiA+uvId1WoM7+2Zl0s4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V4Rog3+T6GA4GCrJm/j6IifBc9s4imc7n/qced5ZZ84=;
 b=K1VPeDlVaAIxPOM/9yK8B/VQ0VxTezWDybyiaimWw712ivReblxOWp4S1LWetywgfcOd0GP0WX8dT2RRAtwnjdMZtXV8O7t4e5fxVZqv11aOAPCqnNabiwNTm/ymfXaRr9mcHnh6QAHn7TESOiRi4L0QgFVH1UK2qeAHd1bctTb5QcR4XPGrxifWCe4AS5t85GG0uZq4zg1U/iFDJaVUd0T0V7ahnBmIBHY/vwwOZGLyAsgXVdYALNWQ65asamLMcQg0WF+KZxjVMnZVjIEXM9CPr0Crr49m7FcO012e+3L1AMj5a4uroFuGA96MvDbZZpC0a/p1VOWs09tx+glaSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by LV8PR11MB8486.namprd11.prod.outlook.com (2603:10b6:408:1e8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.19; Thu, 5 Dec
 2024 01:58:31 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 01:58:31 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 6/6] drm/i915/wm: Club the initialized variables together
Thread-Topic: [PATCH 6/6] drm/i915/wm: Club the initialized variables together
Thread-Index: AQHbRWARJsJCukp96k2p9Ge85w3Ll7LW5uwQ
Date: Thu, 5 Dec 2024 01:58:31 +0000
Message-ID: <IA1PR11MB634862BD6406F520E853146AB2302@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
 <20241203084706.2126189-6-suraj.kandpal@intel.com>
In-Reply-To: <20241203084706.2126189-6-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|LV8PR11MB8486:EE_
x-ms-office365-filtering-correlation-id: 8d69ce4a-d847-4fda-9c62-08dd14d0519c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?c+mlk9v/HQc2JccJbgHtm7BcDjNwy4dE8XQJTHJ91pSb2E56NTgK3MeE0llP?=
 =?us-ascii?Q?96BOszI2zYLqa1dBy2DYIDOxR0V/SRR55iwBtsRCTkyouaoFPyWER8mFveBu?=
 =?us-ascii?Q?keO7+RVmiWatQ+Lf/y7UE59ESLbnK+3NwAZj0kAvEm00SdCcncEmAQSY0dOP?=
 =?us-ascii?Q?jes74dooBteAIYC0OWULI7NDT8Yieb+WXFOvQYWJQBaC0r1vKOSZY2tsm9nj?=
 =?us-ascii?Q?HsXAp/hw+bI7kDC7zUunOwS1PrTTeW66WWfDngB380F95NfbF3Fq58fno73h?=
 =?us-ascii?Q?lEUi28gVQWtDs3u/Fb8t0v2tScFnENsFgPfsvXqwuB49APHxESTEz9C2ZfDt?=
 =?us-ascii?Q?PJr8cmQ3QJjpIVTP8cqLkpdeccJ72w+NYtjJxkhBmFoijckqkd7nPTTAphcG?=
 =?us-ascii?Q?fxvlGZg68Q9xFx6+p+AA4XYUnLoTplV5chOxxjqFTneV29CYUK05JBYxBHKp?=
 =?us-ascii?Q?S6v5rhsfEk4R03id88j6Cu+ddzYcUOJUhh8BdyPMyzrnXhI9NjDfJxcYfL8V?=
 =?us-ascii?Q?GIqXoE69R8wYh/JJboN++gxlRbM8fWa2NY75UL+ZyOy1retLlCwZIY8kop+2?=
 =?us-ascii?Q?nzKyG2nsGvkUW9ml5mIIwzH4UzfKpIn8rOwnthEeBxBNXVRvHvw3x5ZEITiv?=
 =?us-ascii?Q?CDh+r9R50oBPMVE9fPLcp4vJFJlVdjdfkQNWtPEfdtmMt6OLkgUZ8Dl2B8j8?=
 =?us-ascii?Q?4gJ6nQontEGcGN7IX/5EpRmqO9fm1Q8/2fUlbLPIZNr/j5OJ+/R9tTUWsCW1?=
 =?us-ascii?Q?HmGDKKQCZh5HjP7xsv/1jxvG+tyAXbZUyXbmKhEdqkNCN1hGrnpvhyOsiiuW?=
 =?us-ascii?Q?Lv1jxoyXWLnfV/4xrA0R5T1f7BSzyGPGZBfaI07B4Z++hmiPNW2CJZhquxAJ?=
 =?us-ascii?Q?xIFYLyEd5NGCIFi6rDz/vDjPy0NrcUItcCXPhqsN/NffiyUZVda4aES1krR5?=
 =?us-ascii?Q?2Y7R2BAZfYZSa1OchKMuo2qOyBAhl6d38WBy3xmRnOXr8z7UUgyB9OaP6A4t?=
 =?us-ascii?Q?ZlVD/h7aqy3ZocTzyoDk0YQhKhgd/6V21liS7v8Jzk2OWg/thycOQoONBYxJ?=
 =?us-ascii?Q?0/3GULZHo2+M7Y0kI1RJuufBMTIf/uDCWwYaL+IhSA0kq0vv4LM0nc1gnKU+?=
 =?us-ascii?Q?kidLeN/A2Szph1DuY9WYKGHTtLKqXtKEMibRP7ZJI5006U/VQTIeSRxcXzoN?=
 =?us-ascii?Q?L/w1mFMERd9BwOUSoXqe+eGorEl9M5e1bps9Z6GJcjw+ug/RZYd2G9F3JXAJ?=
 =?us-ascii?Q?KB9NVwqdr2+F2Bl2edfw59wJPspOtAvQH/onMr0eoOlaDoUWk0GE67WDOgeb?=
 =?us-ascii?Q?SzNVxK4xrZwqsMh71SZrYUq9j6bGjO05EsivopetmNIzP84W70nJR1/R3nMp?=
 =?us-ascii?Q?x+ihEQc1vqBHujhXsxNBzqN9v7oY3Ro8bhPXeHpLd5u0buxyzQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ujmBsIseB6h1tuNfxVVUVz9k7ljXmlKnhveNALmmcDx8qWybQrHyECvMTPO/?=
 =?us-ascii?Q?WWSTk+WiRxinjilzgihh7gME23MGnc8fxxuv0/kyplPDuimeDmBoDq2nlbvz?=
 =?us-ascii?Q?psvfvcJZqJIJR2WxV2DcOysym9zlExvZU+Ijo11U7jN/C+VpdHcOvBnUQk4U?=
 =?us-ascii?Q?ouNjpU/TTRU4mXPHQFne70ENf6UaSQjUsEpx/CRIb3w1v2KqY5GNweT/Xf9S?=
 =?us-ascii?Q?bD8JyzANzey2VdGbXhWx+vhYfUGaagxcyNgrgyWZNiWfZkOQMGPrUXLJ6IzT?=
 =?us-ascii?Q?6PwQGD7j6mqPKDsPo3ByVC4R7crYbtQdTCsBzKGJTE14xwYHd2rVDWm+3fcC?=
 =?us-ascii?Q?Jl/ma83k+2imZhvjWkpbckBxLKAoLC+5O7GHnXoAgqPQkrjJXBZG/9NjaDie?=
 =?us-ascii?Q?6d1CY/ocvMKDf8X2/Ht6zjXJ/fDz/dxSoXJo7zsiQrs+4BgC+TaxL5U3F+ae?=
 =?us-ascii?Q?xv5qJe/Scmvg9BmNwyl1a+0hn4bivJ2Vfy/oH+GXB+KmuENsSs79BOAlOlhn?=
 =?us-ascii?Q?1hjU6JHVOcIhzDduBp5c/wF9LqlXYVmIDAxlFfZRCkvmjDnLGSkvcveWE4FN?=
 =?us-ascii?Q?lKe0px/kobIuFnRmYE4if1y2JNyplkZNZcNpT0OQcKmWKcFio58cDUqO5smL?=
 =?us-ascii?Q?3sV72EOuS3lZWDMgThPyyYlLHYmGW9XYh9BoRKGAY39sW0bmnVcWmU9gqpY4?=
 =?us-ascii?Q?2KNCuCDzzZrwjvaywTQN7RvKsQd+uamnqphksyaqJIM7d/d9XbSxEiLrhO1k?=
 =?us-ascii?Q?SUdQicuE96toFuru2xTIABRhU9EGPDaHyvDG6Qi1pCfGEzSs3R5ZF0wD6qD8?=
 =?us-ascii?Q?jIQZ5/sgbYxfgGHC9z15NVO1fmx6gdEuWhvnQnqAJXaCnzqk1hFFuvdRRyjn?=
 =?us-ascii?Q?/XRAXlyZZaf9bvrO/DgmO+0GqMTS2y177HNKHImHi3RJsfrOQ6qLvuLBpTp7?=
 =?us-ascii?Q?Sc3hFXAd4arKyibBmEM8NNMCP6Uz1FpPhUy3+6L8dgQvgqpQOHLMVtksz0VS?=
 =?us-ascii?Q?GkY/e0qQMnLq4SVcLdrbu7CDAEt7YCncIU90KsT+CBd0tkrwu7JlY3O17qZu?=
 =?us-ascii?Q?njL+KMx52TX4ly59vSNuPjirzGyzytEnZbs9b8e8WoTBJoiJic2Nz9Zj8t3Q?=
 =?us-ascii?Q?HFayQ5kxm1N37CmBteZ0ybwMGSYxangPoJt1HNJkKid3mPbkyydXJxaYM00V?=
 =?us-ascii?Q?GE4P3q7YFR/ShrbvQ+gNtyPOSeYAABAXDM2PdLVlcqPE+gHyiZWKhYFr6ozL?=
 =?us-ascii?Q?EmP1FFRUSkY07ABYcjSqSLK5G2d7Nx178p4aJib6nh7YC7k2HiUR/Yftq4tT?=
 =?us-ascii?Q?gRqFqWBG/ttn7UUzeJvgxxYqqf/6cBW9qf2vGlZjkaNzQOT6t6CYnD+6L993?=
 =?us-ascii?Q?MkNrIso2mgXwKHdAlv6Qk1/nCv1p0vV967bVvD5LAJkJ2JxkOeQmXZSF1ECd?=
 =?us-ascii?Q?cxN5A/IjSFrjYrQt2xXnSH4GXn4EEeUqtyDaWVGZ2Lb2dj54moKJmwxhsToI?=
 =?us-ascii?Q?KigXpQojWSltDHvivUAH4Ugm7piQ04PoaMkAANHHVnO2VzITaj93VocnR/ga?=
 =?us-ascii?Q?ogaX6ntCKOTK6+EW4+4MRyvDejbTA+qMdgqo/Hj7PQZ+VtXW+4wUFSQYoRYp?=
 =?us-ascii?Q?d5RekClKHahgCXkKsGd5iWI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d69ce4a-d847-4fda-9c62-08dd14d0519c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 01:58:31.1340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RCpURHHgCdIEeDzWuCqqL87tBKfVROqY7q+yJEYFSFGqBC1t67iX9Yg9QspE+jetBGgLAtLGkNTW9cKpg7XaC8SCPJFavZXgeBC39QAMBqGblH/7fgov7plXj21i6GiP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8486
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: 03 December 2024 14:17
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 6/6] drm/i915/wm: Club the initialized variables together
>=20
> Refactor program_dpkgc function so that all initialized variables are clu=
bbed
> together.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 4c032b1758e7..d93f6786db0e 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2862,9 +2862,9 @@ intel_program_dpkgc_latency(struct
> intel_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *new_crtc_state;
>  	u32 latency =3D LNL_PKG_C_LATENCY_MASK;
> +	u32 added_wake_time =3D 0;
>  	u32 max_linetime =3D 0;
>  	u32 clear, val;
> -	u32 added_wake_time =3D 0;
>  	bool fixed_refresh_rate =3D false;

If go by commit message words, change does not actually club all initialise=
d params together and uninitialized separate.

>  	int i;
>=20
> --
> 2.34.1

