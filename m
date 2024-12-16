Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F959F2D5D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 10:51:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D47510E19C;
	Mon, 16 Dec 2024 09:51:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WKaXHtLf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B314B10E037;
 Mon, 16 Dec 2024 09:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734342702; x=1765878702;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j+cA5AAzP3+zWpMEWFWNnhtXuDVWJitujTxhLq3V3Ao=;
 b=WKaXHtLfwOCCzzkrpmyoycczgaNQEF81e1DPzJBSMPConkbdiwbcWw95
 irsrEEzQakDQOfEOBrrOLd3+UwyYdm1YYwRRKQ0k88s+d/eA90JxgPoOZ
 7sExM9mUpiwAAJHepewPZ+pEmFGEvWIduhNiC9oHV6DJT9suge27MQrIa
 IoYjf1qmaI7tXFXolq/xajMqbPI1ZtFdXZxa9v1119z5PgxhmrSRNMZrd
 Z9kfEOP7buFgQeXxtke8ArMHPxStqsW0T6KoD1E/P8FdCfaIzWbCakV5f
 PZ50tlgcVygV4Uk+WG76WfhY7STh3B0wO4sE7evDpVCfSTWPBzCJNAOVs g==;
X-CSE-ConnectionGUID: xAJpLeagRi+RAo+Bo1D/MA==
X-CSE-MsgGUID: tCLKARATRf+sgjuCN3PYxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34862741"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="34862741"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 01:51:42 -0800
X-CSE-ConnectionGUID: kEYOjl3MRYSpamX5E5Nofw==
X-CSE-MsgGUID: Kd8Fc8NqS2iMtkQOH7qzkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="97053427"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 01:51:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 01:51:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 01:51:40 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 01:51:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uDIkzpDWc6RbdiqEiOFPaqYvLvwXUyY20emcWwm7h2LINfI+SCvhEt7HoVG9iOFPXHBvtV35fpVI1/5I2cQFPAnHzRsv/HB6Y5QmHgFci0wGVyKe5nBLYAt3UdWbqQEbaQNPCAcLPyljPTi+xveoqGA72fXvxzR4LVokwJIjM1PxjRBiLXkWxFoNRuglTpxG/yQmcjkA7d6Eys0YzWpdTLNwK36Ch/yyZ0A9uMKwmADPz4UGx1/lwHQ8k3Ad5mUgYWFAcbrRfdJw9Vr+hpV6fo39mOmOPanx2eekPk60QDImJJe2hxnFR6KOvdkAVOIn/U58t1kfjX/oPXGIRmOVcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bfh9l+jO1KuRDBTeOrPXI4iEdO7RbAMTnWJFE335GXY=;
 b=mstTt3yD2CsVf9vnJsmWmGcySwHIlBJ//x9AGwyNet/aajAj+Tp04UhX9TSpF/0iwSn4WwsmS2upBWASzpUohQEKLJrWg+6u0cR2wfzyKvCsP89AD1VSz1wZgFWGbWN+AkT0BQZU6GGSA0zaASENJbmr5L5p1/j96oSHeZsfwkvDi4fc2HqoIMB3d6vjzp5uhNLeLJcgiOFasrPDKjFMb8VOPvapU7sbHThg7J6dnTqdaU94iWUAPyMWg2B7Ylstf2drqBP7YsZitU7MMV5VCpw4f110ehkD2++e6PJfrL3U1lj4rnO8642WcGNJwqre0AknBEVDSLlFu9nBXTwJKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB8828.namprd11.prod.outlook.com (2603:10b6:8:257::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8251.21; Mon, 16 Dec 2024 09:51:36 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%7]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 09:51:35 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: [PATCH] drm/i915/xe3: do not configure auto min dbuf for cursor
 WMs
Thread-Topic: [PATCH] drm/i915/xe3: do not configure auto min dbuf for cursor
 WMs
Thread-Index: AQHbTVcm8qjsIaZ1Z02IyCgjegQ8o7LopNDQ
Date: Mon, 16 Dec 2024 09:51:35 +0000
Message-ID: <DM4PR11MB63608088F4503F2EAA39ABF0F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20241213120357.300584-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241213120357.300584-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB8828:EE_
x-ms-office365-filtering-correlation-id: 6d2ad346-3916-497a-e272-08dd1db73ac8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?v7ae5H3vOcNu7oniKqATrKOBjuW7LuAHb86b8UBg/rJiN48kvHOursH57HfF?=
 =?us-ascii?Q?0OdlTuTLNoOYiqaNKHTBVbmFG+C41pnGynzcrjNsGDD2KPpMhD7oI9my1DMn?=
 =?us-ascii?Q?4yaNi+QdrELSERZoE3cHKUxx3LC91xEt5C6rDTNlf+cLhEFMqtOMqq6Fw8yU?=
 =?us-ascii?Q?mMXCxv1fGgd04cn/TqAX0mBU49s4TPrm6Qtmd6ECYK8fDkRsLRTdxTtvUlxf?=
 =?us-ascii?Q?YkUDirFSWmybt9R+VVIrDIRVMF7g5keNEcwOc8WLyUkESSZc3+tbLE9WpxVy?=
 =?us-ascii?Q?XlUfbFDHJYRVD2GgXkTqILrfwf9oRZ0tzky9nfEaLUwxbZ8M3V6fGfaCkMRU?=
 =?us-ascii?Q?h0CxdtAzfc3DtQ2CUsBHtdh9PBTqhzzad/2/sHbkVZkNunI9zFPKR32Sse6x?=
 =?us-ascii?Q?/LXk5AG3FFig7QKqsRp/iu2FiDPa/TMs69JuMEb6W+7jTWh79SpJXChc/oS2?=
 =?us-ascii?Q?ZVCWBKRHDZp7tlUhEww/Jazb4DlFxLi8MEfkDRVnYljjXoml8SoUTRMBPp+6?=
 =?us-ascii?Q?lZatUdEOdAfYeWoHaI1cB3p7XXkkAcFeL3p4NLmNl/BMykMcMkag9XPcy9Ss?=
 =?us-ascii?Q?AxZG9/e5gSsy3yYDAH3Iqjs/f7NrVCYJkuCo/o8UUoiNqQwz1eCzfvrBXXFu?=
 =?us-ascii?Q?hBNWa9edWUM3ncgBNC2wra0K+zubSTD/+O4qtjKle+/UCgX1qs0fexAkXvPX?=
 =?us-ascii?Q?InYlclRwAWnGOGvRwvOrAdUwqlIs/sHeB6mMZSOFZghBoStW3FrEPtL8utQM?=
 =?us-ascii?Q?0El3hq1GhruuZlPJmOoz2MOUaTNSTKr4D8ee4Adh9dyWkS/mzZtTbURoNQ3V?=
 =?us-ascii?Q?wLW1UN08w7x1jyz2TX/UYa1N8KLmEUG92AwiTE4FldqhWEXCHJZha1dHbxs9?=
 =?us-ascii?Q?74yUFXitsA/zMh0Rv32Z9co/NRwvA8EgaoYK6l6orjZ90nN52q6yp9LoO9DH?=
 =?us-ascii?Q?IpKNa6Z6CM498AxjFPM/de2haQ1kfc8Liag8Yz7ENfwV0SLNbgPV33rsTH10?=
 =?us-ascii?Q?YaGhJbYv4M9027mtqnRFnhpFppD73A+WOzSELEc4uBfvdDkNi2njarLNgqPh?=
 =?us-ascii?Q?mppesMCxut/q0CGLe9X4nT7O1GiFqYK4wX5GMr2WPbI3JfyFS5d9mfmV3yj6?=
 =?us-ascii?Q?jCX28nfskrJQDyIKqnOIDL04QSHFeu/uujs5uVB+1HC2c/32sK6WbQj/W0qn?=
 =?us-ascii?Q?m5ITtgPtTAhuM4apJEZEXIIOq0j6H+g/4EhshPF8QaQ4eYQ3eNJrIT/ANoJJ?=
 =?us-ascii?Q?jC1VvgDRK9TmFPsPy6aTH04BxMDyXS0KamS9w8HnI9YWbb1fxQjLg1SOAivc?=
 =?us-ascii?Q?lbTKaKIU3aEt72g/Cu4UIvZqYG7T0/w1M9Gp53X8pTRWtm3A0JnjRQbVj/6R?=
 =?us-ascii?Q?1DvkTv7wwuykdo3BSU+5U2PzY0/JY4PNiU+NbrlqCMOQd6r5NsBvKEahhHgI?=
 =?us-ascii?Q?vfoAy0hrGqMu7hsleRUlX6tDeXl8C0B0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xtM3jaat3QJCBt8v6XCQOfMJGfLAJYVCcgqqCb32ztKT5VpWTB5O7TlLt5iz?=
 =?us-ascii?Q?CFSRknWw6e9nBc01OKS5SCh/ZyqiQBwfNnqZcApYUBKIq2NwZJJ108tSaYbQ?=
 =?us-ascii?Q?doM9s05SxO36BzCPYVvDlt8lYnCN39yjaJUc15uwjTiQdFCwLIsN4fppwniN?=
 =?us-ascii?Q?K+l7p6ojK4phYM7Zru/UI5M+N6NzA6QnYg0FQJJTMdipppgeh+yLMG0eXDuw?=
 =?us-ascii?Q?evhUvGaLM26AuJZusMbnkjCoOWhtFno0xAs4BJN0RdIMOWG5Zj3oNRilqYg6?=
 =?us-ascii?Q?Ts5SJ4m4WCoHzDK4fNUxz4Rfxo3/IyIFlOZBzDq+SO5zMGZ+e8MQ2ZFl2k+I?=
 =?us-ascii?Q?oMmMILWVOM9MvxAFtNVdLrZ5wbSqtk3Idyyie5rBf7pWdUTxr/WdEV0OtMl5?=
 =?us-ascii?Q?S4ChDcaZ5a820bry9Oaz+qyKrKtQGB+r/dad1BieM5pW06uu8X5T00lLK/kl?=
 =?us-ascii?Q?0dJfg3UI5eDzW2/wBXl/QMlcFWAnOJup5QciPB4pd8rDDiaCBxWL+ondMsBU?=
 =?us-ascii?Q?/KaK7VTz4/1fGkUogMhfKEXUES4lb5Kj+uGhQUaoW0Fc9V0fi5n3QyZRp96D?=
 =?us-ascii?Q?VqH65Y8vNQlKQ/oTgtu/RbxYObzFXL+g/Htr2PVz1iomvZwWEM/LikUE8KKj?=
 =?us-ascii?Q?7e8h1riZnMRJ896sIqfqRIa6Xsj3k0pmbwRTPvyOkJQAuteGpMWGYq5U3avU?=
 =?us-ascii?Q?N/Z1WHNULCNxLT71E6b86oRIkgNqHAo23sl+wt5ZrN+9kuD68XUHp9Je3kSH?=
 =?us-ascii?Q?FAap5QpV1tx3l4WL5V9yOFZzaZv0qxNqv3lGE2vnXEaxvCL4CTTR5yJDtEPS?=
 =?us-ascii?Q?oDpC7/MGlJ7vpK7PEWnWnroKdLUxQtThBm9stl5qd+XqWBFatXLcwegCiy7O?=
 =?us-ascii?Q?xGDHiO/U7k37/tTwQh5oorpp+vYjuwL5hkfvMKiAx4ruTb28GAD7iFwmPTJa?=
 =?us-ascii?Q?E4bqAz8BHs/Vj88KMuMp0ye62O3d3wT9Fb1fE4UciJcvYYav2Z6Qylhlsgpk?=
 =?us-ascii?Q?ZG4wjud/9CNb3TJC8isq1V7+sCYW9o+PGnNF2l0MS1iaJFM+9aXOyDiBBzhv?=
 =?us-ascii?Q?akoRmkBBPKNHIA2jvLqRw3EQ5QejPzAZygwcYsLxdYMJaox/b5QWR4zBL/ha?=
 =?us-ascii?Q?DPH+sCUQt1XhEszu3SKnBSIsjyorDFGqLEuSRBBt5ROsivt7lEp0N7mI+pGl?=
 =?us-ascii?Q?nnsw07bFuiXgcQasaPx97EgLtUg42PccFLV9Fdt9zopkIBremlwR3Dv5yapv?=
 =?us-ascii?Q?ICGO91+IFz0DAlJS566XfgJjNwx7cXKGVbRIxxef99pzF5Tz7rABvHclkkRi?=
 =?us-ascii?Q?kaHqzKaLKPJVAf95MuYZJjy3UD2jZm/1yyx9sXWvgL8AGaGJZif/wbNNBego?=
 =?us-ascii?Q?Hq/nCuzrviNhRi1GCfHahAWuIiOYNKtZDseDJKmgDf+rzCgyTiOi/5PcTVr5?=
 =?us-ascii?Q?FUT3Uav/oeKK8i4htICUdH7/EioanDoUyJRa95SbW+Du4DttqlsMNqGNFDUx?=
 =?us-ascii?Q?CiciSt3V35QIMuxDjcq0zWzjyJLAu32QoeAzH0C+XhpNv74A9XclZgP5LwkA?=
 =?us-ascii?Q?XJOfbd5XNBdOiKATuQBdhivs2mNTdCosVSejUjab?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d2ad346-3916-497a-e272-08dd1db73ac8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2024 09:51:35.8404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mB7fIjmwjbD8j+w9vTL2V3GtKg/xhASLxv165qod9GoyAh/308DS2MawLbcSJO+lrAhE5tSHVOJaCUkZ+0W6MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8828
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
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Friday, December 13, 2024 5:34 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>; Saarinen=
,
> Jani <jani.saarinen@intel.com>
> Subject: [PATCH] drm/i915/xe3: do not configure auto min dbuf for cursor =
WMs
>=20
> Cursor planes do not have the minimum dbuf confguation. The ddb allocatio=
n and

Nit: Typo in configuration.

Change Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> registration routines handle this correctly.
> But the plane wm handling for cursor need to be differentiated for this c=
ase. Auto
> minimum buf enable flag should not be enabled for cursor wm registers in =
xe3.
>=20
> Fixes: a831920c370c ("drm/i915/xe3: Use hw support for min/interim ddb
> allocations for async flip")
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index d3506e8ccd9b..29e8ea91c858 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1922,10 +1922,11 @@ static int skl_wm_max_lines(struct
> drm_i915_private *i915)
>  		return 31;
>  }
>=20
> -static bool xe3_auto_min_alloc_capable(struct intel_display *display,
> -				       int level)
> +static bool xe3_auto_min_alloc_capable(struct intel_plane *plane, int
> +level)
>  {
> -	return DISPLAY_VER(display) >=3D 30 && level =3D=3D 0;
> +	struct intel_display *display =3D to_intel_display(plane);
> +
> +	return DISPLAY_VER(display) >=3D 30 && level =3D=3D 0 && plane->id !=3D
> +PLANE_CURSOR;
>  }
>=20
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
> @@ -1937,7 +1938,6 @@ static void skl_compute_plane_wm(const struct
> intel_crtc_state *crtc_state,
>  				 struct skl_wm_level *result /* out */)  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> -	struct intel_display *display =3D to_intel_display(crtc_state);
>  	uint_fixed_16_16_t method1, method2;
>  	uint_fixed_16_16_t selected_result;
>  	u32 blocks, lines, min_ddb_alloc =3D 0;
> @@ -2061,7 +2061,7 @@ static void skl_compute_plane_wm(const struct
> intel_crtc_state *crtc_state,
>  	/* Bspec says: value >=3D plane ddb allocation -> invalid, hence the +1=
 here
> */
>  	result->min_ddb_alloc =3D max(min_ddb_alloc, blocks) + 1;
>  	result->enable =3D true;
> -	result->auto_min_alloc_wm_enable =3D
> xe3_auto_min_alloc_capable(display, level);
> +	result->auto_min_alloc_wm_enable =3D
> xe3_auto_min_alloc_capable(plane,
> +level);
>=20
>  	if (DISPLAY_VER(i915) < 12 && i915->display.sagv.block_time_us)
>  		result->can_sagv =3D latency >=3D i915->display.sagv.block_time_us;
> --
> 2.34.1

