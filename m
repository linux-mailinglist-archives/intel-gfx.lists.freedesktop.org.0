Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D8C9EC419
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 05:48:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0B810E405;
	Wed, 11 Dec 2024 04:48:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N7hNZj52";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497E510E1AD;
 Wed, 11 Dec 2024 04:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733892486; x=1765428486;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Tvxx0Rja0nO4cihsOPBKNgKGT5OhuE27lmA8uqsLGvA=;
 b=N7hNZj52mPDbgd4aGdHND57MVeee8drGdYSaLYLR05y9fggggkbwtFoA
 GxxNRO3pPRMwKsukt8etmueddfQiNzawtM8/WYxPbuGHnxoiRqnPO27eF
 +ah0o6W8MUfnUG5JPgPkA+XLX2qIXOfX6C2INRNoyOmv17d8D913s5uK+
 Yp3ftDUgZOUQHjgB37zpm0HD9kinmGiEK3UtjPFN/7njBpNT47GKPutNp
 lc3MSEbCine/N522xLDso/ozcxl7FGURIe3KiEHjwpMyykQLzfIgbq5I4
 lOEB8McL0ZPG4mEMv2zFbBtKyebwPjhvUmKGAf+oVLyuBXQscSh42ebBa Q==;
X-CSE-ConnectionGUID: IcLjcny8QEylT18CpNPD5A==
X-CSE-MsgGUID: 2gu2vNSAR5OM6KU1XN4E4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45272499"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45272499"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 20:48:05 -0800
X-CSE-ConnectionGUID: 64JAZcH8SBeq/VW0WFIcyg==
X-CSE-MsgGUID: PpvyY4R3TxKKgWpTq3PloA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="126563113"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2024 20:48:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Dec 2024 20:48:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Dec 2024 20:48:04 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Dec 2024 20:48:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KxmH+da1af63V9TZpRc3+yPCVXnZBqwhHtLtMamOS6kYmBLsuDZQu8eHwoXdVwbFOqCF3rIwNSADjygYbScBkraBt1hROUaQmf2kxgizkMLT4T/qDeE7ALyliFvOslwTLFTBASejQpkVS/s7GdM7ebMHgI4RK//SxCRud0Q/L90P8PsFG8E+Rtcu0vLnipGvi8deLLYlKhKjOUlM6kewyqtJua7M7KT7qI74h1tIvw9XEuxtU0bHd6997vnlHjEEgYQMx20QLigqR1NKE2sBoz/K1hSLxW8UgC9bitC2Gxh3dFEZGCglbVByTJC7gDIPBh02C5yrNsGcXeR3Tle78Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Br+gJw+0gj2TWSo24omVhcDl4KyFAfByZ44j8dyNofM=;
 b=R96LVykYulsCO/jCaCpUwUwWizaeFkXtgansCIaRFjRIYpNihpGvwZgbi3WL+66l5uR0NWeNPgchrhXrfgOGX8zASogzso1WyhTOOXcqz64z2nGTbS8TcV8Hnz7uQKtCQDFeDW5+cP/+J2mmsR8aOC/GAkW9B6hkQzOz9CfhGnWpydv5OSpP6n2iXENrK98ORdZnpGb9zTPrVHXiM8noHI/10fjTIU1h8DoBdy6MvQ/EeM6nLVPoK8kN5To8fdtKtEr779Jm+tY108jFsX+/y9eL5S5aGyFD4Q249osNfkktQcdwvG8GU23v6jbLqzbNPCIcN7rSBAM3cnxUmOyWyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB7890.namprd11.prod.outlook.com (2603:10b6:208:3ff::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Wed, 11 Dec
 2024 04:48:00 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.020; Wed, 11 Dec 2024
 04:47:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 01/14] drm/i915/dp: Refactor FEC support check in
 intel_dp_supports_dsc
Thread-Topic: [PATCH 01/14] drm/i915/dp: Refactor FEC support check in
 intel_dp_supports_dsc
Thread-Index: AQHbRi5Ep8Z5kyatuUiXHbhrkl8KfbLgd9FQ
Date: Wed, 11 Dec 2024 04:47:55 +0000
Message-ID: <SN7PR11MB6750EE4931B3D654E63497FAE33E2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
 <20241204092642.1835807-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241204092642.1835807-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB7890:EE_
x-ms-office365-filtering-correlation-id: e15386e7-5e80-4689-584c-08dd199efa7c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?6U0r586NXn5wD8UbdfQtZhHvNQ6/23hnHHhHmc8DKqDXSpl8fUMfWoO3+m5B?=
 =?us-ascii?Q?AjUUtwq3zjryCla4ofIxKv/GymVxCHg1/iZpUKohQf2jW3wS8ITdWgiVcA9I?=
 =?us-ascii?Q?Le6IIvBBW2jErDvaTt+7zU96m8JeDV8QGI/d0CXClXSVQ0SQFcw54fNtubDn?=
 =?us-ascii?Q?DSPXE51gaq+q1hK11+GF3/JDwKDzLTy2JlJ3+V9wSd89J7ph3AKcWmsen+pL?=
 =?us-ascii?Q?pqqx1HSEzGx0R9HtHZ5+BObbIMCNWWH7K4t4clBWswrkWIKthYiJgIKqJfVM?=
 =?us-ascii?Q?AHwC2LsePqFpXaVQkIPqApSdWmnE8xiru0YK0LEG/Rxm6O7JL0GoyDpINO5X?=
 =?us-ascii?Q?x8am6s9P465bUgpy7ZaYMHIMYWCum7LcTH3wfW1e3dzm0bmHl+/703PK3LgL?=
 =?us-ascii?Q?/zb6sUkHbRIJTjYxwbThuVaIZ8r9xl5cCCwG//bfCaDgOsGlMZZTmI6P2buq?=
 =?us-ascii?Q?7vkITn+R8mB6JqYriTCGOna6sYuKFfAAZiSCL651kWdKevvNq9zbVVievVnb?=
 =?us-ascii?Q?rqdb+LhYVi2U6vs9cXPSj/0Q5oOYeVW8ZsDd22h1hoizOQ2E1ec6XuCuGRju?=
 =?us-ascii?Q?QAPPYjs4vSq1aJ6lrK/sAJ2x2UZ7QhE/nJkNWpjjLzOGTJMskK5Fj4bEIluS?=
 =?us-ascii?Q?eu8iRM/Dv/jBawZ53+72HGxvkAtROM/+nT5p/MZGPcDEqGYaTWesEhBx4dVS?=
 =?us-ascii?Q?QRveyE3HAs2lr/fzVs0fQ+Gkrm+2kJWDnD2RmBSNKcQBX9ZY5Y6T/HPpIYsJ?=
 =?us-ascii?Q?iAdkoUZzFsRqZ1xjglnYFNpponWTYmYdwCDGGUog1lap3U9MnA4mRvckXVcz?=
 =?us-ascii?Q?f6XlBXAdBSBk2vZv6U1had4l6wAXdCmxL+GXWI4JMBF9F+39XEk5slG3BG/S?=
 =?us-ascii?Q?DKsDourLpG7r3IDgMrZd2q/xCWyBbWj+4senclVZ+YY60kHZjqksc+08vBrH?=
 =?us-ascii?Q?d5Nm2J9YR+ADCETQpsVnb/V1Dm4tCqf7z8b2GvbUvyhzrTo1goGBEJuBt2Uv?=
 =?us-ascii?Q?jhqQRNzGwugPOBKNP7jF3JUdzsNQ/qz9apf4+MlJ4iONvqpDqHfQiR4RuOjl?=
 =?us-ascii?Q?A8EQLgnPtTpY7Qe8UNoU+xggUTQaLBOFqxaedz6aCXTZ1IhrhuDqtrXeLxrP?=
 =?us-ascii?Q?xGPUqBBfmWkC72DvMDZ83KB4Ze1Y+xBNrlKjHZLRUz7WJ1oaoRkIFf60lWHz?=
 =?us-ascii?Q?ZCY451DGPLbr53sJpdlkAnZGfMuxwRjJSQW/FzBkdnUnZSyWrxmc60daXMuU?=
 =?us-ascii?Q?JdNamozpiVSUrPMw2f+ky604gw3uBsoa2o18Yv1Bs4HisCZ9WB2wceT76gWC?=
 =?us-ascii?Q?RPrQMPNZzripBFed3cJBw4BkXhIh1/VaIsJORhAHUNcDnIkGTdhLpetZgaV7?=
 =?us-ascii?Q?pwB9d5dYaK05EiaMgECgFCQ2Ls3UQkAaA7ZyxrQAV3dV2cuXHQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jIMHpwNSF1QFIlCdnq3a4jv8UN05Zp9XZFysPFZP0xe2eFrMn6SP6Kfoc4u5?=
 =?us-ascii?Q?mZK8FZb1k/C6ZslcvLyIXD32FHmosA9wI69Fw2rm8dlc2ooG9dO9MoARMS43?=
 =?us-ascii?Q?z6tMTUeX+X6BxTKVKDuNuoaJ9979ClFwXLL8k6uBGRRTIKCJPiLmmW/ILNM1?=
 =?us-ascii?Q?UmfE3JKk6VTwS2zKC4P5vfIXyBFHC4m1QDH+3biVZFIZ7fz9dv87bIS1JUjl?=
 =?us-ascii?Q?WR9o+bpyUGaQKIDqTImfQzwIQATt15vQaVY7fo6+256IMlcVVQKmqHDtWpuT?=
 =?us-ascii?Q?NDAWljuOCRl4ZTeondJPC334Lo8Usq8NBxt1MEXs5zlHXBI5KDECXnIthKAF?=
 =?us-ascii?Q?AjdjvDSxCxRiFdR98jy3+b/9IvTCIDApfqoEwHG4rD67A84P8MLD4f8O/QeH?=
 =?us-ascii?Q?4UxgPOQSrMFCrR+rlqgttguQlyLgLELXYEyikVAFsvhioKaYHcbkeiYYJOov?=
 =?us-ascii?Q?V/jDa+1CV5DF//QO6B/gVQsskK/ktgV5BZRPW4y6jBciOXPeRtdnc7LCuJW6?=
 =?us-ascii?Q?9Aqy0gVkcgKtA2d4m3KsmzsicUzDQlt234d7tJgFA1KFRo/4LH5fMT2xwcgt?=
 =?us-ascii?Q?1TDPoYTkqOsGEsRSDZRvLNrw6dYxao+TN4w5Ay+uMOFuskWqzyUcbsSktHHg?=
 =?us-ascii?Q?qCpbQQ3JIfn+SGnLXneMW+yfHJt1rlrY+588VG/Xbd2Cci2E3OgDIgDpUTPx?=
 =?us-ascii?Q?DjUoW+3BjUoMrTQslJyMhvVI4YDZJ4WIGpBufYrmDmfnRl7sYTBOD7NoCS8Z?=
 =?us-ascii?Q?pjGRj3e2YyCXBIF8ynaH1XXOD6tjxO9/+vbin3DuAOx6Ds5nM6NonDGoQns4?=
 =?us-ascii?Q?87H9t+J3tE/31negDknjIfQvUZSg6TIcNzekjUyqBl7+BOphl89qRiHI6mxQ?=
 =?us-ascii?Q?Iy9+qv1HAwaC37YtAhLuzKoIayMOMVBNx/DuT2OqMHYjVTyzeAWKXdr4V5j/?=
 =?us-ascii?Q?oe8Nv5/OgOiwCx0Yz1KhraCrhuIJSrVJbTrk/+Yln3tJdUhJQmpfROop4xmq?=
 =?us-ascii?Q?UQ8rGR2LBM2pgOkUMJ7bXZlvl/9mGIfw/x3uvWsIdDntRFZsM3Wtpt8m6s1T?=
 =?us-ascii?Q?Ib4ek1mIPpp4h1NYr6uzfylhhy8wBGeh7L2aGeSuBJdZpFG6C5/2LALxup75?=
 =?us-ascii?Q?MfycTQhtoWsus2SC3+Fg5KOuJpPnNqifZsQkPr3hBfLpPssnVjoUPsaBhlfN?=
 =?us-ascii?Q?NeJeu2Ud+7ZWi9IkmKf5bXR6sa4ku4ryNWR4sJyH1mHB7QRw1LsYjr7rgJyJ?=
 =?us-ascii?Q?qjkPPGece0YgdB1eM3wb3dV1aFkNqUTGgrs2NydMuNhONl9XXI+pN+bGNF6a?=
 =?us-ascii?Q?pSi9j6jCY30MaVTUE2MAnnEvo84Xje+oDRmZoXNxbHQUSeCcBfl38N2CBDtm?=
 =?us-ascii?Q?CWFL1QdKxDe9yu3wybGeulmOnu8R/QAEYScsvkN/nfZIdXkNx6EcEPVJLQTz?=
 =?us-ascii?Q?AYkQYv4tK5XwxXCtLRONNtyjyVmI7HlrDdNhu2OttiJl82c4u+4SUAJWbhNH?=
 =?us-ascii?Q?LiikmZgJQw1tbTSl9UjngsICDc3ZRDs6oDNgLurvNDidiACpq9THu2Nhu2jz?=
 =?us-ascii?Q?X637Bc3tedujzZkqyJ40poE5vqjnmsSwfCqE9fZb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e15386e7-5e80-4689-584c-08dd199efa7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2024 04:47:55.4298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l6HoWDHb5w3TXO1ANfTDssnkigzKZj68Onnt6Ch2lbLCVzvk+hjsUpdQYfLl/xMRW+pee+l0a2lNsVDciee0XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7890
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, December 4, 2024 2:56 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 01/14] drm/i915/dp: Refactor FEC support check in
> intel_dp_supports_dsc
>=20
> Forward Error Correction is required for DP if we are using DSC but is op=
tional
> for eDP.
>=20
> Currently the helper intel_dp_supports_dsc checks if fec_enable is set fo=
r DP
> or not. The helper is called after fec_enable is set in crtc_state.
>=20
> Instead of this a better approach would be to:
> first, call intel_dp_supports_dsc to check for DSC support (along with FE=
C
> requirement for DP) and then set fec_enable for DP (if not already set) i=
n
> crtc_state.
>=20
> To achieve this, remove the check for fec_enable in the helper and instea=
d
> check for FEC support for DP. With this change the helper
> intel_dp_supports_dsc can be called earlier and return early if DSC is no=
t
> supported. The structure intel_dp is added to the helper to get the FEC
> support for DP.
>=20
> v2: Pass intel_dp to adjust_limits_for_dsc_hblank_expansion_quirk
> instead of deriving it from connector. (Jani)
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  8 +++++---
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
>  3 files changed, 13 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4471c8fcd478..eb65c7a64a32 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1624,13 +1624,15 @@ bool intel_dp_supports_fec(struct intel_dp
> *intel_dp,
>  		drm_dp_sink_supports_fec(connector->dp.fec_capability);
>  }
>=20
> -bool intel_dp_supports_dsc(const struct intel_connector *connector,
> +bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
> +			   const struct intel_connector *connector,
>  			   const struct intel_crtc_state *crtc_state)  {
>  	if (!intel_dp_has_dsc(connector))
>  		return false;
>=20
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state-
> >fec_enable)
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&
> +	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
>  		return false;
>=20
>  	return intel_dsc_source_support(crtc_state);
> @@ -2368,7 +2370,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
>  		 !intel_dp_is_uhbr(pipe_config));
>=20
> -	if (!intel_dp_supports_dsc(connector, pipe_config))
> +	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>  		return -EINVAL;
>=20
>  	if (!intel_dp_dsc_supports_format(connector, pipe_config-
> >output_format)) diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 48f10876be65..4ae54e9718ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -170,7 +170,8 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
>  			   const struct intel_connector *connector,
>  			   const struct intel_crtc_state *pipe_config);
>=20
> -bool intel_dp_supports_dsc(const struct intel_connector *connector,
> +bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
> +			   const struct intel_connector *connector,
>  			   const struct intel_crtc_state *crtc_state);
>=20
>  u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32
> bpp, u32 pipe_bpp); diff --git a/drivers/gpu/drm/i915/display/intel_dp_ms=
t.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index c59c2c14679c..9b64c8a0e55e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -488,7 +488,8 @@ hblank_expansion_quirk_needs_dsc(const struct
> intel_connector *connector,  }
>=20
>  static bool
> -adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connecto=
r
> *connector,
> +adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
> +					     const struct intel_connector
> *connector,
>  					     const struct intel_crtc_state
> *crtc_state,
>  					     struct link_config_limits *limits,
>  					     bool dsc)
> @@ -501,7 +502,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const
> struct intel_connector *conne
>  		return true;
>=20
>  	if (!dsc) {
> -		if (intel_dp_supports_dsc(connector, crtc_state)) {
> +		if (intel_dp_supports_dsc(intel_dp, connector, crtc_state)) {
>  			drm_dbg_kms(display->drm,
>  				    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC
> needed by hblank expansion quirk\n",
>  				    crtc->base.base.id, crtc->base.name, @@ -
> 582,7 +583,8 @@ mst_stream_compute_config_limits(struct intel_dp
> *intel_dp,
>  						     limits))
>  		return false;
>=20
> -	return adjust_limits_for_dsc_hblank_expansion_quirk(connector,
> +	return adjust_limits_for_dsc_hblank_expansion_quirk(intel_dp,
> +							    connector,
>  							    crtc_state,
>  							    limits,
>  							    dsc);
> @@ -646,7 +648,7 @@ static int mst_stream_compute_config(struct
> intel_encoder *encoder,
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>=20
> -		if (!intel_dp_supports_dsc(connector, pipe_config))
> +		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>  			return -EINVAL;
>=20
>  		if (!mst_stream_compute_config_limits(intel_dp, connector,
> --
> 2.45.2

