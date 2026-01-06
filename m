Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64614CF6DEB
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 07:17:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0326310E386;
	Tue,  6 Jan 2026 06:17:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nw1z7b86";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B25BF10E480;
 Tue,  6 Jan 2026 06:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767680220; x=1799216220;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WcOQSvFEyC2yqQCz8znZSsFBEvUHSWTEP4XB7ycHhyI=;
 b=Nw1z7b86gvYk8fXWOwzEVh8TCvpsZzKBe9zzF0SRUax+FuGYAgygDgJ6
 9KPM4RzPNJYd9+QmqbR9yWcLq+UDD/+DAXncUXvczbnELjYWm3+fsYaTG
 QCWYq8ehX63+uVMqLQl5ph/mfuBdqKjCTQC7oW5ukrL//VdAT/2aPZP3D
 7tvDAXDFAYSx6F+F3pintTc204yjEmAPb+QAj11p6SpWlotsxcDuy4i7q
 3tV3icCY6RN8y8G1sIcHhQ4oVIGTHf16grIHz6Am4fqgrdyVxO0Gp1uRV
 Nn06KQy/2CwdER9GY1Y97GnoFfsGvJy68B4Rs2y/49/rqUYnosiK0Mf+1 g==;
X-CSE-ConnectionGUID: ul/hmlOGQ2+jBYhrjgzdRw==
X-CSE-MsgGUID: 8g5LJCHqTIegIKeDuUy4kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="91701711"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="91701711"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:17:00 -0800
X-CSE-ConnectionGUID: SxWU2SKyRj2Uf10mqVcWFA==
X-CSE-MsgGUID: cPsYzcljRNurVlDrIuBsQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="207048013"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:17:00 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:16:59 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 22:16:59 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.49) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:16:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H9UC9brN/lI/3Jt1yOhkypn/VHFWvmpV2T6cPeT+bt5z9iTDjSp4zuaOAalXE1QdHVXBivc7vHNPURay7C1UTtcMNWSWj1jvRdRrWF8a3a61rKRv4o4nhFKp1d9FswhWBBYzYI9UNjx0Fm84c5OPWg+OzTGFJ7IUvtVaiHAIxPsF+NFrmQz5aMDvmjhpAbyd7EVeQ6ammpE6cdEs50qvYAvbbvCpbpj7otBXF3Ra65GS0S3gLH6wfsLj/FxTs3ENF5YJCSV1bCB1rgsTNl4PTbfMGhhO+2vbUxAPl0kGHVNK9ampvJu9N2sBGSeAxwr3ywgadD5DqyytXwxUhe8GPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rSabeBEzm7/KZjYGz0+WLSx9i6n5r4UHGlQ/YTOwNuI=;
 b=xDukWA+GlZBI9kp08St7W1A/Q+wXZgHStKh21jRw+uC5NWXqxdDOZPAM7FLK/a29vpO0eha8dDF3WHpNx/mq+nSEyvL8Y4SQxVV1qMxhQrrjl2+yrzT2dpS2iVnk8VgrRy1vZjGXkwGP+iFTjzW7/fqA4A38lIng2MJD3EvhkYCaVS8jx5jThihPQ1Q4dQ0RmTMR4wEECOWXN9XVq0/x3xFR78iEOT0PQuZxL7UGti+qykcuYO5n9uTym4Mf7t017y9o2AuxSrkzwBU8oh1L8rptFImI2nDCVkU5/BctRvKqx6xCJwzG8w9iNwPqo0TyzS5aGD/i+pQd5a/OHwTm8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CH0PR11MB5249.namprd11.prod.outlook.com (2603:10b6:610:e0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 06:16:57 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 06:16:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 14/15] drm/i915/lt_phy: Drop 27.2 MHz rate
Thread-Topic: [PATCH v2 14/15] drm/i915/lt_phy: Drop 27.2 MHz rate
Thread-Index: AQHcb2sPKhmf+D8h10WY6jFfXSPZcbVEyRMg
Date: Tue, 6 Jan 2026 06:16:57 +0000
Message-ID: <IA3PR11MB893773DAD25C11A23EB97333E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-15-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-15-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CH0PR11MB5249:EE_
x-ms-office365-filtering-correlation-id: 6d008ddf-fd04-4f77-aa7c-08de4ceb3218
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?b4R+suTkxuWvnqcvDtmKZdipUYRSaA2Qk4t3gLEZsEd1OK6P/1Q+ayUqgP1G?=
 =?us-ascii?Q?9j2YwzcpDdDUjzeLfcD2HqDI1Fm57fgmeaWnb1QtVz+1lHtX2ZBVzZu8Tdr4?=
 =?us-ascii?Q?KfhMtTPBM2rgs0w1cfPyyDDTXECV/XnFAL9fgnCiP2Wve8bIDoijk6gj048W?=
 =?us-ascii?Q?zkmkTjCiF09MpjrBR3NFskkkXinLNxOZ51MP7yToi9H91ai8CEmYVgU4RNLR?=
 =?us-ascii?Q?nyoIgioL8QXyU5mQofcozSmkFEVXwSXSgxbVhoZrw2zBYxTP/MkqYsBbabGQ?=
 =?us-ascii?Q?2NO8POShPPk1MlDrfIHHAFsH0yxmtGvz7whVD8o4lH9hA+UMdHdG1yb8tdid?=
 =?us-ascii?Q?OhDJc3b50h/I7Jd3lGgIVSTMNh8H34QQbdc7fLJHNoJt/6UrA1Aw3Z03X/r0?=
 =?us-ascii?Q?IUSrpkfAtYuf32o67+HOetYbfFPReeQP8qqpEPRnDz7edi1QzPPy2NV+2tIh?=
 =?us-ascii?Q?RZcEH73JEzb0TQGZpAy3tilNgwQ5DG3T6o7ITFSwHXlOZt55nv3QdppFi986?=
 =?us-ascii?Q?6IAKNGqfUkGl0Y7xFpXn2o1gY4h3+RAMQzFz+nXnuNfXj5LMFCczStviITHd?=
 =?us-ascii?Q?tTASSQjfYf1mrTQ97PeCg0fcQ+1XiEAmPRlCbHMTUGQCPRDc+4f6zex0Tyqx?=
 =?us-ascii?Q?5w5R5hHKlDVEnoDBEO5d5k8GVfWVQmzwuUhoY9GBAB7YppPZHq7QaBYRQN5Q?=
 =?us-ascii?Q?p0EynFXc3krHhGZFUFxujFaW1auKiyQK5D1Bv0drKobnQNxGZMVpFBXk4pAD?=
 =?us-ascii?Q?oCyanr+Zy2Xw/yhA2vOm5H6xmFGUKDUw8/MGN8RZeBT4k7XK7LmTZFqpnoKP?=
 =?us-ascii?Q?M6YPhEh0YHGO3rvuQQGH7qlPbtlBZJp161XjV3wHTqphpHDpzi4txSEv8avR?=
 =?us-ascii?Q?V4U0eq/s30W0wO8yB3QzkCvhrW8Jol+gyfzzoXSNagG7pK98mjBxCc2c1pOs?=
 =?us-ascii?Q?c8/+0kBGsTrPC/n0VQWNcIlX+hBogPdOH/fEgZuxMxTX0zMnqIwgJL5qv3nk?=
 =?us-ascii?Q?bTUnEZFZXt1HzvHB8/FQOMEVbmTrBR0e30fBy5PvU4uz4SFCFKyowzUfGYSr?=
 =?us-ascii?Q?7M87CSXqJWDCivaW76EeG+wNltldEguGqhiHlrpI/f4/bPbS27/1EJL2zLjp?=
 =?us-ascii?Q?tPw9HYyo3Yo1aYowbRdsQ6YZro83KwNYRkPFNnbRKjimJCXPWRyOWuKmJg5j?=
 =?us-ascii?Q?5dsLhFDzLAS/fXJJaJRD59oIHYIO6UMcYRyEF/W5k7j4hpAEDls0nqquy+ah?=
 =?us-ascii?Q?rJEDAJuyiQ1rj0xLnQna6PvhIXR6mrG2+U6AnSKlPIJbXlblV1D3Gyx7bCng?=
 =?us-ascii?Q?l8u9ImR7OvYwgCRfj2FR8tLY467/MZ2xisG2f1hyFG+RAHnLQ8xW4OuO4/p+?=
 =?us-ascii?Q?jLt/g0hCuTx0VWNf44yOoLWSXv+DkCBzncowbc09HjsajLOQGPvyR9o17WIl?=
 =?us-ascii?Q?j7WJfv9s4ATSvLoYCyqzq6D+40DxoO5aF9TEi9yzaEQ172UEmv6cmQ4HGzKW?=
 =?us-ascii?Q?u9p3o2BY+qfuFsYTXyFg4SOKtuoLXabPSsUM?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R1sCvYCmEWGUmHv8dHajTkWZsn1OdIKOnw3xFfW4KznfixWjM88jqBLaUGB1?=
 =?us-ascii?Q?8m9rvOQBs0D6oRNWamAgRQEiwsgiOGfqUVIbuP9r4rMqiJEjfgF40c1OeNFI?=
 =?us-ascii?Q?EDaGuK2z++TYD2akKR3i60Y1hq//L8LEjZ6GEWGli9uItjV7pPFScz1kHoyx?=
 =?us-ascii?Q?o/eaNkWxQSD9tyZYa0b4WfQwAPS+6piwb7gfbU85d7VKugJBXuWmQ47xxXR8?=
 =?us-ascii?Q?1RHPaV/bzwDV99soaH8S6Ytpa+nYvT4SHbFTk+7cKk6hx9LnVZLAJSRmL3HG?=
 =?us-ascii?Q?TYPSmfBAlzZ+zoPvi/x36GgBDEbANXN8X3rsSRYOQ4A0shiJDFGgmN0cCOM7?=
 =?us-ascii?Q?2TEruaNSu0IwBssJTC/UhvVWXH9K0wolV7pXrrdgKmXO+CVuSMP+8egbe4Qy?=
 =?us-ascii?Q?VB51LhYbePdiuNC2aSBLMBxrL7vuVpVGEEjD90UIeSLQ3Tp0sMXQNTzAIYXb?=
 =?us-ascii?Q?6USDHX2Yo1mESwn7R6j3DnJr4xyq3M4hBqn7U/l056dnpdu4xdv4lcrf1lLB?=
 =?us-ascii?Q?dttw031YN4qMIVqUG5avqHKtZCP+PAURpSbapiiyk+wfXyh8EATOXq2xkW6h?=
 =?us-ascii?Q?xtWcAxoHbv8wZYOxHa2MODuXoXoBtblQPDkUgBJAmWJzbiolI65EwsUCD9FR?=
 =?us-ascii?Q?iTvNJTACxidGKjSXjryAldilm/+LqosGBLlsJCJ5UzdpvYxx3s+gVbYY8Lil?=
 =?us-ascii?Q?ScMmrEUp4TW/7vuzrPFr1QEeu1Wz8NDojZoAeojBX3dUZIzfTztX/GTwUto2?=
 =?us-ascii?Q?3bA9Dyrvm8GWl6/zBCWw1hlPKTPHXk40PdBZf0k49R4zDr6V+rclXBvrXzPg?=
 =?us-ascii?Q?dz6ee6aitFarj9K2mx4EFPJG832Tmd1ijA8384OamBxtW4WG7kA/gLeIrU3P?=
 =?us-ascii?Q?4axZLDREUUgxaEmFLmHbHM7KTmtbmKWgAezS5A4wNu71AEg2V5/qXC7g1bai?=
 =?us-ascii?Q?ygRlR3p+tJFI1uIlxCQ2xMC8rWh6IOhqpm37PS7A5UmczBl3gFQfj5ZCQBpS?=
 =?us-ascii?Q?jUIhTiVmukVyQZXaDDuMz7by3YYrxPnZ/en64irOnaEnevIJpK5ll5yt0T77?=
 =?us-ascii?Q?lB6LBYwZv1iPq4FScvftxF43tv5tUBIPxL1eFtkZetfQpw6GZw7j6hjohqvJ?=
 =?us-ascii?Q?Ae8rqMzdBM8NPHG5x83lSo5HC9u0q4xL0wSnuuFouDQ7FqxUvMg3NqZ/Nfzm?=
 =?us-ascii?Q?tNraFW920YMFyIeYHZIYYTF6vrQq4PjbBgzkIEak5sZCdf7KwB+S/izXhapG?=
 =?us-ascii?Q?pyxX0ur0wSOrICj3wdUMHyuubm3bURtIc97DKTTXy0ZdZddV39M0J9ATfNWv?=
 =?us-ascii?Q?W7TKRnpOo30nbnDRAtiMMHm/5eSh3kwTXarIMrh1znC+WoQZ+FxONIRpjjlO?=
 =?us-ascii?Q?HImBbGcvRzukfPk2EhXN0BXrNruwNspsAvFhXRWqzzy61u37zwo20LkOaxCr?=
 =?us-ascii?Q?lngJZpfPA+sdvHvuR/NtmJLlZv/zlwfSLuBrBYMvW52B7YX0xVb40W/IaPPn?=
 =?us-ascii?Q?bs9k5WHFBJrH9q4JRG4lZT/TDKhPCYfd/2wu4w7lsGc4CNgXNxJJce0yIy5J?=
 =?us-ascii?Q?OsM9WdTuKEf1JJLX/ZuW1kmMsgLWgfpdeuSl7BJ0UdZWmt8wlyMLhlTP9J1R?=
 =?us-ascii?Q?DQBRnrrY/aLS3GjI4VYQFpX+6iePj7zpbIVbVFxgl9Wwo4nODNcxpZzvqFtC?=
 =?us-ascii?Q?IEXn6hTOORNJ/27krDlWzufFaFIpgbcKdIaKT3cksoStOZbwGhsuPPxHmIg2?=
 =?us-ascii?Q?79ppcYGBtA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d008ddf-fd04-4f77-aa7c-08de4ceb3218
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 06:16:57.4334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q8+GCyhaRGNpeTD7VMoSj7RjTl1rEAhjSSAVDcp5lugHZYGLedg669QZKAwBG4/SiXuykddfiPSuACOxs6XnRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5249
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

> Subject: [PATCH v2 14/15] drm/i915/lt_phy: Drop 27.2 MHz rate
>=20
> Drop 27.2 MHz pll table as with these pll dividers the port clock will be
> incorrectly calculated to 27.0 MHz.
> For 27.2 MHz rate the PLl dividers are calculated algorithmically making =
pll
> table for this rate redundant.

*PLL
Other than that LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 55 ---------------------
>  1 file changed, 55 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 13acfc7c0469..bc73b1466bc4 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -801,60 +801,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_hdmi_252 =3D {
>  	},
>  };
>=20
> -static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_272 =3D {
> -	.clock =3D 27200,
> -	.config =3D {
> -		0x84,
> -		0x2d,
> -		0x0,
> -	},
> -	.addr_msb =3D {
> -		0x87,
> -		0x87,
> -		0x87,
> -		0x87,
> -		0x88,
> -		0x88,
> -		0x88,
> -		0x88,
> -		0x88,
> -		0x88,
> -		0x88,
> -		0x88,
> -		0x88,
> -	},
> -	.addr_lsb =3D {
> -		0x10,
> -		0x0c,
> -		0x14,
> -		0xe4,
> -		0x0c,
> -		0x10,
> -		0x14,
> -		0x18,
> -		0x48,
> -		0x40,
> -		0x4c,
> -		0x24,
> -		0x44,
> -	},
> -	.data =3D {
> -		{ 0x0,  0x4c, 0x2,  0x0  },
> -		{ 0x0b, 0x15, 0x26, 0xa0 },
> -		{ 0x60, 0x0,  0x0,  0x0  },
> -		{ 0x8,  0x4,  0x96, 0x28 },
> -		{ 0xfa, 0x0c, 0x84, 0x11 },
> -		{ 0x80, 0x0f, 0xd9, 0x53 },
> -		{ 0x86, 0x0,  0x0,  0x0  },
> -		{ 0x1,  0xa0, 0x1,  0x0  },
> -		{ 0x4b, 0x0,  0x0,  0x0  },
> -		{ 0x28, 0x0,  0x0,  0x0  },
> -		{ 0x0,  0x14, 0x2a, 0x14 },
> -		{ 0x0,  0x0,  0x0,  0x0  },
> -		{ 0x0,  0x0,  0x0,  0x0  },
> -	},
> -};
> -
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 =3D {
>  	.clock =3D 74250,
>  	.config =3D {
> @@ -1019,7 +965,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_hdmi_5p94 =3D {
>=20
>  static const struct intel_lt_phy_pll_params xe3plpd_lt_hdmi_tables[] =3D=
 {
>  	LT_PHY_PLL_HDMI_PARAMS(25200, xe3plpd_lt_hdmi_252),
> -	LT_PHY_PLL_HDMI_PARAMS(27200, xe3plpd_lt_hdmi_272),
>  	LT_PHY_PLL_HDMI_PARAMS(74250, xe3plpd_lt_hdmi_742p5),
>  	LT_PHY_PLL_HDMI_PARAMS(148500, xe3plpd_lt_hdmi_1p485),
>  	LT_PHY_PLL_HDMI_PARAMS(594000, xe3plpd_lt_hdmi_5p94),
> --
> 2.34.1

