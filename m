Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CBAA5BA9F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 09:15:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 293C010E51F;
	Tue, 11 Mar 2025 08:15:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c0eEsAXN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA5910E51F;
 Tue, 11 Mar 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741680954; x=1773216954;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IibEig3dQLiroqTFKISBduU+TCwW4KTXPNWegmGaNek=;
 b=c0eEsAXNg5ar9D4kdNDuud2KgV/IlRZ1bWk6JS7oScxKGL4RgneKQ2oM
 dPSh8I3rP9qs1JTJ2MGH654EZprU3eEKZ8CkI3adPPnceh/Fa2TLD+QNt
 fXS7U7FtXcUFxYI8aK318e871V6hCG04kpnFqAMnCuV96NEDFJ04AHYQ1
 qXyF2uzl0D5FTi4P+N/gC4uSGmk8/VXjuSXPFxg6Q+tQkksPZO2Re0MEJ
 IyHa+eipTpMw70nK4+sUOfXZ/wMpZ+puqemEPGnImV/gJsnopQVq/bTcy
 aOClLjYTMyk8J3EFcS7CORSIhXrzxiQBJwU8dQ+5TsJyQpZTotJVMXqWK g==;
X-CSE-ConnectionGUID: oLtaJsuiTMO48Hc5gmQPJg==
X-CSE-MsgGUID: XvpoMvGjS4uQXys04dUWsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="41955520"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="41955520"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 01:15:53 -0700
X-CSE-ConnectionGUID: qJcd9n3gTo2HwB3u0x3wBg==
X-CSE-MsgGUID: Av8AcF7aQRWi9SOaNBCsiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="151205157"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 01:15:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 01:15:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 01:15:52 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 01:15:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kIkpqDyL4O84S6HjAd8jjO3wusOgTNPO5xIZf49jcb2CP0omRmpgXT30M1DLuFaCe31wlvPfllPfjs4nLAl6PGVx6ibthtPlnCogQUVqHzPTr4XzIbjS3oeAbwngj8yfWnf0ukvFJSpskQVVji2BtvjnDgn1hdtvyo7BHiWKtvfoadHV4IWLVB9On2Tl38OszdgYAOMUlTxgQPc1QlUdRBWO5lXzSXID4umyE+gcNtbCxIpGGMQe9mGKBRsL1FifyoDygKbcajWxmRF7KmNbDIy7OGvwz83+7CM0+OX1HYyVTXLR6V9QPy+O18C8bQeywTQXTnhfe6/ZcAwr+yCWjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4N7q7GivjTxi2aMJxgiHLmQTf3HGp5ajGnuoWucW7Qk=;
 b=sgZKCrOdFm1EoywVz9OrQOQ/7U+KdW2vgpqI5k7l8UIjzsB9tal3IyY7KYybuDIn3Fvb3HipWiB8AwKb2JM+mUzAlUIL5Vi0zVa0kWYfKlYMtr+Mw+Ama/dXLeRuBnZnSILljYMFZKOCtwdriggtHIbYlekxm5hsqWepy7O7wGwb7flk4izzfVdAXWmXaNDLvgBwEBwve32gpzOmxSydvmzgQMnEypesOfdvwqAjFxh/o6+HsUnz3ltK1SXDHpEBaBXpMw7t7LsURvh6dmZ34IMfVu082OtHkzcHA+3gXmapydqSQcYDBS1PXn5AvSwgt4YBJ+vhyCE1Lm+XT7ovCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB8794.namprd11.prod.outlook.com (2603:10b6:806:46a::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 08:15:48 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%5]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 08:15:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 07/11] drm/i915/dpll: Change argument for enable hook in
 intel_global_dpll_funcs
Thread-Topic: [PATCH 07/11] drm/i915/dpll: Change argument for enable hook in
 intel_global_dpll_funcs
Thread-Index: AQHbh1yqK3p6T7rZvE2b7RrX5TMoq7NnxWwAgAXmkMA=
Date: Tue, 11 Mar 2025 08:15:48 +0000
Message-ID: <SN7PR11MB67501F98E743BC9F39D0B6E9E3D12@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
 <20250225080927.157437-8-suraj.kandpal@intel.com>
 <Z8r9UHTIiz1sagXs@intel.com>
In-Reply-To: <Z8r9UHTIiz1sagXs@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB8794:EE_
x-ms-office365-filtering-correlation-id: 884fe6fb-1edf-497d-ffb0-08dd6074ee31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?W/tyfSVP/W5Py1rWZqAclBmDXsjIjA3eK+efzaAdXvEAGUU4IGBzePW70n?=
 =?iso-8859-1?Q?HuZjBKMIoYUCFlh79tT/yg28AyNvL3LpYRiXFY6lfTyxt/tGmU39eSGCWR?=
 =?iso-8859-1?Q?JNic140BWAywW6MXTspPP7T3qdbG9/n3USr6/kclc1ka+Dj70Abh5Z3DLM?=
 =?iso-8859-1?Q?g3lhO6bwYezticHxmt7sQWvr2NLgwP0hPVVU+BnvbkmIA0Kr57HRxvaUp3?=
 =?iso-8859-1?Q?FuQg06oOkReeSn/sLOG+hsRPHByLTB5EBA6dNPHb2liY6nBRF4NPWryYiM?=
 =?iso-8859-1?Q?xZ90xEpPlxggPT5eAr5TJd7WkPjOW4U7YmnAAGak29+0pgvcU91Ph9SWaI?=
 =?iso-8859-1?Q?lX8Orq/Q1kZAAEyDi0YY5y56XtG0+Gv59I4lrvp3oXIvseTNolJT3ZfvxM?=
 =?iso-8859-1?Q?tBvgdzN1fCSLKyAi+Lv8u3O1obm1q86z4kXZaBp4x1nB3XI8XELm1usfZJ?=
 =?iso-8859-1?Q?YWIVtC5PVaAN5obXZPwzZKGdSKUEbmKAj+X9+eZuq7o9IMTb7LFgkqXjiR?=
 =?iso-8859-1?Q?cSDU+ENCfPChafSgYiWmvteVjcVSMk9XnPSVH01qoJFoYSO0nY1oY9KtQ5?=
 =?iso-8859-1?Q?hP3tHSYWAh9IqT9NnAqS0nDFwDD16UbxyFzn1r1jsmLfQM+2tdKQ+nmBAm?=
 =?iso-8859-1?Q?4X6ewCJBoiSDeZ0JbMGIietuxadDNIDirJdjEVt6vaqMqUikJe5hJT48yi?=
 =?iso-8859-1?Q?ylnEbzE3hQQoTFvrJzGFBlatKD+iECCzwfYU6jjD/wGZnIsSRLVLh6JnUo?=
 =?iso-8859-1?Q?fd5ferFoBN97FxOB1hQv2mxcpamQyfSuYzV8CNyDU55xBF5THvWxFCxGAB?=
 =?iso-8859-1?Q?cP/HIzeuXdrfZIw6ySfhBl3X23nuLKxoEBSgQOZU1LMr3kWtsJ6YfIxMXO?=
 =?iso-8859-1?Q?TUmiP6MNtJGPP/T6Yhjitnq+guAk+kcEsk3fLEVEs0w2N7n6ALpCJ+Pd+C?=
 =?iso-8859-1?Q?cGvw9yFflwfXnVBZ769J6VUFpHyWlugxcrmtQpSZPDUmUCXe2Jhf2bMdHY?=
 =?iso-8859-1?Q?/VPBNvBtoYbQIGZHU3rzAFRVD8OCknrQ5XYbxdz+SFBg/HGspzNOWAXLZm?=
 =?iso-8859-1?Q?ZdT+D76a9PGNwQ2dArVMTBBHWBROFVFL0sorjem6/BfkMFttr1WWDu8h5n?=
 =?iso-8859-1?Q?JyL2wZf4kgZQs0wyboq7gUTP0PI/rHuuSZAx00gRNxKHy0mx+epc8zvxt7?=
 =?iso-8859-1?Q?3kScoozx8A7WTmJTKF6B6w1gAQE3AKXE0VtT4m2OCcyrhREJBEB+Zfu9a/?=
 =?iso-8859-1?Q?ZqSrlpVgJS2rV0jhF0+zDY0aEOTJzBJGDdTYlJ6vrvbIWsBMT0KeAwwKej?=
 =?iso-8859-1?Q?3dvdEsvE+6xxeE+j1GNbnimYnuAv6+btYajTCNQ1bCZt5Bo1KX3Ie8iPni?=
 =?iso-8859-1?Q?7yFOs60Xk1YJL0Qy5Ew0im1svep+aEID3gviquPnFvcZlG37dizRY1/aiD?=
 =?iso-8859-1?Q?tSe3fsZJYGa99j5Hk2MM7TlbWnthd4Gu3+t4thsmTHcks1GzoSx8tyGDM+?=
 =?iso-8859-1?Q?tu6WF0BPuzWv7QzMmSMYT9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?+kspKPRvUzqYN6MYPhOsD/+Oz5x1kFoQhG2Scqc1K5BW3/xbY4vggUdnZG?=
 =?iso-8859-1?Q?SMTMF4lthRraTIP7+FOJTK3uwMeb6Dyo971cNXa6D63o2lIWfKwi5d/OIB?=
 =?iso-8859-1?Q?ISbZTfXcDkyfhkJ7equBXFXCmKiwhIhUtdFBn6Jdy2ouVAdGFUeIj+lO8X?=
 =?iso-8859-1?Q?i0dzPxqjNFRYqeAqTmj3fkxZ1iwKAB0hoZb9jMM8uxp9f/NFpIsTv5O/qX?=
 =?iso-8859-1?Q?bSTs1DYS9NG/8NgP6tiGLuKivLTqekdGYFU9oZQqfugYhxNSmDolWaJgiQ?=
 =?iso-8859-1?Q?xzvNvXjyI6r4/QblAto+6SOm/Im1WuP2gsGxznSn4WEEmDYZPKhXTv/Ey+?=
 =?iso-8859-1?Q?oo4Kv0F9cn9g12UswtvefCkPnDb0dNcI8sTtTFexJpKAxjXbPGBrXX9Qf6?=
 =?iso-8859-1?Q?hSv1LVzj8StRufajRf5A1ajrkA2VG9xhzdJE43fKVWD9qUGfz66493V7Vl?=
 =?iso-8859-1?Q?qg9fk9AL6jur1bAQZaIrxaA8ni+VlNjzZH8rtXLHWWcqzPPNVDchLB4JVn?=
 =?iso-8859-1?Q?vp0ewZWudTRmJO5eSgbhPqOX4EC4tGH9VqMUGUTSNq2bLVLpoDhak6JrL3?=
 =?iso-8859-1?Q?p5kDyds4lVwOkOx+1uNhYA+9iyNdZWfKpgmIAFBpbDBQNbobuecqxNBuxD?=
 =?iso-8859-1?Q?rPnhFrhHnTN+W9SHKCeL1jwMCwejIRbVDwEmC6iuN0QKjbumoNKg2A3KTm?=
 =?iso-8859-1?Q?u9ZcTCnKeIb7lnIitw0eIOd996gFKxBg5Cu1Jor1jGf4hOJTSFpLUOMlLZ?=
 =?iso-8859-1?Q?RscbwLSclZg33ICgwwoiCSrxNMGwO7HqVO4RvatW3V80HJB6o7P8irHLlT?=
 =?iso-8859-1?Q?t8E8Ji5u7Y4KfYaqnA2vAwb0ngFCQcUzPRo7mNveOhHkWRJIhPKIiV5rUH?=
 =?iso-8859-1?Q?m5l0/b1gSm5LaBPExre3Wv0zSHFXvcKp4HaeOgvMcLHE8uYUNtvkaFnUaV?=
 =?iso-8859-1?Q?bBRImyi56D1ElQxqUPXtuhkhM2yLfpk8oy+lBiQ1Qnzgr64ibuZRTAuvVJ?=
 =?iso-8859-1?Q?MkQqkjioyL8gcn7Y6bvRpcUSDYhh9gJk/gOvfg7GzmQyu1KVKr0DCJU/Y1?=
 =?iso-8859-1?Q?35fpanEhUx6Ymd4M7UTMvwjYC3oHgW2lP7xivWcJ7tsdmcNqxwYP2qfLLy?=
 =?iso-8859-1?Q?qSq7xCcU3orZggJvrcFNE99xvVEFxtkgi8cq928vTCSr0f/fW6z5jtVo8E?=
 =?iso-8859-1?Q?xMJ9J2jQ0W5bRRHagP2gi+1rAczv27/a2l2/9kecQC6zTN+tA1SEsDLuR4?=
 =?iso-8859-1?Q?AepdKHNSc0vTu5lXbg1Ayx+F/cn/WdgsJS7mQYn0Qcp/JpWi0LTiWH7dWS?=
 =?iso-8859-1?Q?eDftCEeGZnNDO93gxrNY4gpxHOWsV1XQwjVTByLje1sBKN4xFaTmFd9kjZ?=
 =?iso-8859-1?Q?OCBppu/q8iw1rbwkGRHVslFyl1QWThWABuS4tela3lPW5mxykXkPcfPEiA?=
 =?iso-8859-1?Q?KX5hQ+z5MgMFlMX9MtSmkPnEXac5LLlIilSjqP7GE9Op/H4vnYt23+3yq7?=
 =?iso-8859-1?Q?hAdPGrQ7MzV4nZLdG9fW2EdKRdFQQK9XZRGbJ3TB+7CENfuOnzMxkn64Qo?=
 =?iso-8859-1?Q?J8vSzobjHhJDlwiQM7Oe9HOP6tmsXEF7+BKYFGLltGtsGT+MU85NQFDyw+?=
 =?iso-8859-1?Q?FoVjDs2qB7M0mtyu0AeDVaiVASTaNVRmEY?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 884fe6fb-1edf-497d-ffb0-08dd6074ee31
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2025 08:15:48.5019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HT/vKk74GS6GGFQ/xXi8R0I0OV5qwLsDPT7R6naQ6OEVXREubqOxvTtkslPzbQP11I87VySTrCjVIFVNTud/Cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8794
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, March 7, 2025 7:36 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Naut=
iyal,
> Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>
> Subject: Re: [PATCH 07/11] drm/i915/dpll: Change argument for enable hook=
 in
> intel_global_dpll_funcs
>=20
> On Tue, Feb 25, 2025 at 01:39:23PM +0530, Suraj Kandpal wrote:
> > Change the arguments for enable hook in intel_global_dpll_funcs to
> > only accept crtc_state. This is because we really don't need those
> > extra arguments everything can be derived from crtc_state and we need
> > intel_encoder for PLL enablement when DISPLAY_VER() >=3D 14.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 100
> > ++++++++++--------
> >  1 file changed, 54 insertions(+), 46 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index bd623fdddfdc..c39f7d73a89f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -66,9 +66,8 @@ struct intel_global_dpll_funcs {
> >  	 * Hook for enabling the pll, called from intel_enable_global_dpll() =
if
> >  	 * the pll is not already enabled.
> >  	 */
> > -	void (*enable)(struct intel_display *display,
> > -		       struct intel_global_dpll *pll,
> > -		       const struct intel_dpll_hw_state *dpll_hw_state);
> > +	void (*enable)(const struct intel_crtc_state *state,
>=20
> This feels like the wrong direction. We want the plls to be independent o=
f crtcs.
> The crtc_state should only be necessary to compute a plls's state.

The problem is how much cx0 really depends on the parameters present in crt=
c_state which
are not a part of pll_state and wouldn't make sense to track them in pll st=
ate since they are not just pll specific.
Mika What do you think ? I feel this will be needed if you need to plug in =
the newer individual PHY PLL hooks=20
In the current dpll framework.

Regards,
Suraj Kandpal

>=20
> --
> Ville Syrj=E4l=E4
> Intel
