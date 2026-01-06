Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E8FCF6D8A
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 07:04:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6092E10E489;
	Tue,  6 Jan 2026 06:04:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YztMsadW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA6F410E483;
 Tue,  6 Jan 2026 06:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767679462; x=1799215462;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PZJuZL+8sZ8uSSCDfise9/ZISEktfwqlldtUTCWuhVQ=;
 b=YztMsadWMvRaHo1wFPf1X/11yvD1ty5SSj9NZcCIZTXg1PUXRsMxCqpX
 mIb/nG0t9Wf5DHzSVCOvWnR0J+Zjd7OFYRA6WRZo+eEEwQxH/s47/owRv
 UvqZOq8wFM88K2L+obyPUMQD0DO9VQYDpbLuFym98U5GzaGKnxilwrHl1
 BYbErWngq30WLnw8AWgrOOciFUT4Lwn9opUAu68vfaRN+4+yTEG5Xa45O
 CDhGJobDSshsIXIl0aSWE85TAfH3WSOAxDBki9APyr1xkYsZuAGjAriVm
 3NF3zDZp36L/s7FEnTib/9ew+zkr8sLeBj9lryEnfZiCfHm/40UUyPkGv A==;
X-CSE-ConnectionGUID: lPC5P8eHSfeFioZ9qQAAkw==
X-CSE-MsgGUID: oNsnaIrRRaGo8FD9bOF0HQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="69087076"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="69087076"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:04:22 -0800
X-CSE-ConnectionGUID: vYwAUYnoSz+6bTMRS9zY+w==
X-CSE-MsgGUID: zbAnltxCTquPCqGJr6EhsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="202586993"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:04:21 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:04:21 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 22:04:21 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.11) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:04:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j0DxACIbN8psVvgWLUFn6dcf04154AUWQbpXAjY43XPKtEtZFwp890YKJz/GnM3zAbi9nZfPCGuX8HKbfUlULBnw50fPIQL3UGf4YocDBhKJZlWyuHRYMgf7KMoSSjGfS9wfvEAw7GrXdmyO984gUyH8fSwvvm5eh+bL+BhgVrF4ntO6EViIiiw+vunUOdR4QMD436OIHIjH3NaDELWWJF1m6+PKmFfB+vrQzQuX5WB+fLrJu3qC6HCr04QKNpwlI3EDTPoh9PVeC4uYeI0qBzwepensxRWYLcpfQBIQ0xkCMEjSsDdtDm4n9BsCVr7IqCCGjSAZpLdFsi0FneWDsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0kfH2RNL9pCaAbrllfWUP8iLc4EvMBgdxZl59KIholo=;
 b=JqEJsUMRndYuqh5Go5sYKyELFz0+frQU8KAOj/LyEKZtmNI5pGMtRYtiRZ/ZuJJCEG5M/XU3TjfBJA9oHL46Z3nXGEH+XKiq/MY7mc0ha/ExSo4g7iwlQLuAwFk1nP4FAF9sBB3aDmMmbaLXm+hB+R7R6uA/I68dPhFj706BBRw9XhYu4NgFiakOY9Y+ZvZrmSfM+J9lTuC/bFoV/bpd6Wm+fX6w724oPxtD6GvM+aYqKBAnpDdGlUBEsEsYt8H2EJgbvwVE439xur4xn1v6Z3uItvk1bq2P3NhPy7avIanPNnD/bj5XZjqO5bkP7JqF7eaoIEjWUefJaUxMYGy2Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by DS7PR11MB6176.namprd11.prod.outlook.com (2603:10b6:8:98::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9478.4; Tue, 6 Jan 2026 06:04:18 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 06:04:18 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
Thread-Topic: [PATCH v2 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
Thread-Index: AQHcb2nqPojDY3Q7p0qKTjrmvjLHp7VExWww
Date: Tue, 6 Jan 2026 06:04:18 +0000
Message-ID: <IA3PR11MB89377095D5C55EFBB5F4D108E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-10-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-10-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|DS7PR11MB6176:EE_
x-ms-office365-filtering-correlation-id: 945f8148-6ed6-4e53-5b71-08de4ce96d7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?lOxDy5hYKUrf8aIKeCdlIp7PE01gBrK0uQzVXKOM5ctSNyxKMU7frJRncES1?=
 =?us-ascii?Q?eSb3zSbP84jCKS51+bcRwJ8+Zd/OwOg+YN/p28KZnIoVcRrEg5RPS317lnbX?=
 =?us-ascii?Q?C2H8HA/zfx/I5xHPeA5KMgpi1r3VourWFZ2JyZcWC9Uz02JJPNxUiF9lYZKW?=
 =?us-ascii?Q?fX8OFfmYJnXPhsWHCR1SMhE4zmvoEGJ5jXpPs8w10M0cCk1nYdoWVhSLM/Ft?=
 =?us-ascii?Q?7Z5uEDAp2+JEZPf3+79NCcjU/i2hMp/TD2QW5iF50aMZ095hICB0OSpcVSMl?=
 =?us-ascii?Q?pzMKajsd6tKZVJbbO+c4rRH/HQjerL4NRGatbSzOsQSkWqMI52KFU2fbE/f9?=
 =?us-ascii?Q?vS5csL852LYZLKc9oTaxwW2NJ2zZ9u6Uo3avf1VfiJNJikY1NspZPcd35FNL?=
 =?us-ascii?Q?cBWoOZ5R2p8vXSPqMp9p6KTPL/YYkTyCKuOn7QZUUEDhJZEViwRlyzQZpL3H?=
 =?us-ascii?Q?m5QKWkkCM6iZC3pG6fh7qA4jen8oinGSM+zeU2NOoa1O3YnYb+rPS6oq2Qwu?=
 =?us-ascii?Q?HuvgkfDzPGTZ+6Cq3NKUNaEZ9DFjTMBsJKIWpRZ6e9KnPdXh/Q4WqX0u+IIL?=
 =?us-ascii?Q?QmsuKkfAtbf4xCKAxxvTHoh6hk6wwXqK5tYlPrVc4JjA79YNj6V+m/5wMr4m?=
 =?us-ascii?Q?c55RW2YhcPJBdf37SBs9DmwRfuCoJiLXvpBzG6u48v9tSDunGva8jcd2zFOY?=
 =?us-ascii?Q?LfX8yRpzhZ4z9ZoPFNAwLU93bEf7mndV1E29tpkN58zoQ0a1y2zxbfOqWLIj?=
 =?us-ascii?Q?jEJ8bIq4n2+LjQZsMUUSDra5PCqqBhZi/QjF5vkQ1PifKXUNDtn61aZsNk0Y?=
 =?us-ascii?Q?VSi+rQKhOeZgRGemQAS3a2etzMMr5KOOwVfEXTgOZ5t9NErwc+DONiAvd1bi?=
 =?us-ascii?Q?PiKNIv1cWLGSsi7IORZ0GEONNXKn13gcHL5ekTwcQYeiCCqnbrXwXwpGhss1?=
 =?us-ascii?Q?vaKdzGp+k9Gjp3BxBsVR2cbtlmcDXQUZ4CC6MARjDIMhwFMpHrnh5f7pPb2z?=
 =?us-ascii?Q?6bTlR/csXXutk+XEGUFDPNIF8uDTxJudCIccOTEhmkxF/gFhzobXKLyOEtjh?=
 =?us-ascii?Q?HsbN+YfGp7GZGvv4T4hNicybdAl5WQ+v/JzeK0v5Zp84lKYmBQUjpr/xDVLi?=
 =?us-ascii?Q?qopPBCQp07vJZbtZvY9C8+Nzr/VqlVjThhnnSP5/6hyxqkGvnVeTo1E+0OJe?=
 =?us-ascii?Q?lMhnchSXNc6AzE5Kw9WfufRPj/Fj1UBfnv0IDeTFOl4fpiR2cKCeOzOJOHb0?=
 =?us-ascii?Q?4QOjRYK/In/W7waXWaFmbQCBtIQXwi6K0/2Po3zgpP1rYTGcBwT37KH6mA8E?=
 =?us-ascii?Q?pFs6S8DZGuFtVgrb7RJsoskzs9Mq3pcw/zT+wviWAHGYpE6MCCB8yjqwcJdq?=
 =?us-ascii?Q?iX7iOnOdt8w4odpmTqa2YA7J8xJxMRQDwxufTiq2o5FCrp3YTwhZtbtPWD9r?=
 =?us-ascii?Q?X/jNg+BvZgoSKT51lq07gKQ4Fd1ol77gJeZBaed3z3nLzdri2QUO/vr8LVhT?=
 =?us-ascii?Q?GzHtf8erWQJr+e6qvRu+jc9nEZUbeSYBLKy0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vujI7+fMA7a3Y+h4nja3s2aNHuSjoifajp89t34ZQELmNr6BK9syJqWevgME?=
 =?us-ascii?Q?GPWr/6kTGydYtZktz+NTbYVJlroRtNJgN5zHb8wFMaAHpVYQmGgZr/3Rc5Un?=
 =?us-ascii?Q?bitz/ZkEXptNRem+gYqSqvhtHvWZwHVZjbCFPkgOu789mJ3fN0bRU0MBWHWp?=
 =?us-ascii?Q?NZgWKefCN7gRigRt7XYg9cFhR6oEFKhvWaA4QbS65xD9tBIQfqIdvLufeSwe?=
 =?us-ascii?Q?anPjmQHDsQ05+O453qpmDu7FZKGro1w0HZPUc5PfoimT5MxnrhmiqpXDOs4i?=
 =?us-ascii?Q?5I+rAjMsFvwBtZMo+LFOhW2jUgExQwCL4jZYw3C66BTikWTeaBuioZVD0RYf?=
 =?us-ascii?Q?V7GDy0o3Z4GFv4WaWlJMUBS5AnmB1DBTE5LX3CoQY6F/Xf43CFG7u+DD7QLB?=
 =?us-ascii?Q?5sgZ6B8ZGMXuDNUnJTHkmzVsMcnyVYjRa4pklOeDkgt6+cYxPZnVoEKQYTla?=
 =?us-ascii?Q?lkib1w3iJOAk5NiyHcniJKOXD5bLu9dinDew0XVEjQE6aEmfDJUtL6zTNx2M?=
 =?us-ascii?Q?eUADVpjeEacpxbknScw0sz0pKIk8PHAavQdZHkJlleeaSdZiL9PrFsQ/CjzU?=
 =?us-ascii?Q?PuO007y2e5Jv2CeW8E6nGbPEOxOz/0MExMVkfseTjc8VzaoNSATFXkCYoR7Y?=
 =?us-ascii?Q?PbioQ3qVgIy9okoefdxdreaF5cReZDii0+srFDiH2q5bS1L2VMsaL1E9JtYu?=
 =?us-ascii?Q?1M9jmAofDiZch+H4g1E2WskptMQhqToaBtfuIc9mvnFCe9MSOjFz3YBcokNM?=
 =?us-ascii?Q?fzzm9palggLjHxMcH2/VB9TT8tt0I6YN0oTEczlQ5uUlPrl25AYgSHVaAJEo?=
 =?us-ascii?Q?PeiPJD7P+zCfpbrUweh3QSEROFKJyCKCUra4matoqDtFEZWpphJMfUMLhLUH?=
 =?us-ascii?Q?NyrT7dUus17beiAZ7WitC/ToYQhdjxTYCsAWy1V/WsDRla/FdvuFaU3vmQkE?=
 =?us-ascii?Q?wA2G0C0vGkp1qoNUKLvGX25en4i++e48bdp2m8IvY14F+ZlL66lhAYNTqdtA?=
 =?us-ascii?Q?QjxiaTfmWUD7nKZjKwByhYaj1Gt35oLroq2MpdG09pkad0RO+OOy+0wqsSlv?=
 =?us-ascii?Q?JXSglCWVzw/bg2V2729ziWFUmAliM5gO9OxnYy/EzDNh2IBAFBMnN1BgUYVh?=
 =?us-ascii?Q?7J0kmA8e+/FNdR3wD+7cDrSYyMAzOM+ry1sB5VQGqACJjR61bkfLxHM61IhK?=
 =?us-ascii?Q?bg8KS7MarnJuFe6JrdpyW8pe8xcLtKs+73uHcfTwZJHHi/ff4f8HCY2XlF9D?=
 =?us-ascii?Q?Xl22F+Xoz0tE86/FtT4aS4bsHSZVZ49zLt9VZtwyD6xKhIZqh2hOUnlFm5l6?=
 =?us-ascii?Q?R1gOsFbx/g2OFfEZ77OhM0qryl1jnMwPr7Td3B1mw29AYp3qhAvEZGaOn8pR?=
 =?us-ascii?Q?jPUp/ZyEaPMZ/oSeZ2wr7uLZ6+NEcelvdCMw+LSz0oB/K/TvuTa7EhVvuKbf?=
 =?us-ascii?Q?nZOZNK5hRIDJ13whk85PgOh+rXrSCxj7ZoLeAYQNLVubhdTqkhJt2er5ouvT?=
 =?us-ascii?Q?p7VbOdTWMTavfukMeOfD4Y3ztZWQMc+27H0XFOY0vEzHjvSjLqf54dtZOXY1?=
 =?us-ascii?Q?PRKowOkv4SXj0N+tFE8R6PJQUOfHDwH1k8U1gIfxakH0UmMaj6hdasr1DNih?=
 =?us-ascii?Q?lvjj1pwuHmB1LmsB1y/k4IUafwL8vItOm1BvG7QfDJDs8CPoMdOleT9lWZcu?=
 =?us-ascii?Q?kb0YQ0tbcBkAU2bvJgAweBFyTVd2Jd8PIbTcyzmulVv9IHH+j/ReeR7tJWCd?=
 =?us-ascii?Q?Aehn3EQHdw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 945f8148-6ed6-4e53-5b71-08de4ce96d7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 06:04:18.1281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TbD8CsKSVVk3XsFH0x3/70S2LVVAL+e3CF0xxE9ItA7xNUAAM7ACM4m2d0COEBa3BjvpsqsQA2/44/6YzODbpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6176
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

> Subject: [PATCH v2 09/15] drm/i915/cx0: Fix HDMI FRL clock rates
>=20
> HDMI FRL clock rates are incorrectly defined. Fix these rates.
>=20

Patch can be dropped, you remove the .clock member anyway no point in havin=
g a patch whose code fix won't see
Light of day by end of series.

Regards,
Suraj Kandpal

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 4d006c14c049..0f28d02b7a69 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -1923,7 +1923,7 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_594 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_300 =3D {
> -	.clock =3D 3000000,
> +	.clock =3D 300000,
>  	.tx =3D {  0xbe98, /* tx cfg0 */
>  		  0x8800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1948,7 +1948,7 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_300 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_600 =3D {
> -	.clock =3D 6000000,
> +	.clock =3D 600000,
>  	.tx =3D {  0xbe98, /* tx cfg0 */
>  		  0x8800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1973,7 +1973,7 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_600 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_800 =3D {
> -	.clock =3D 8000000,
> +	.clock =3D 800000,
>  	.tx =3D {  0xbe98, /* tx cfg0 */
>  		  0x8800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1998,7 +1998,7 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_800 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_1000 =3D {
> -	.clock =3D 10000000,
> +	.clock =3D 1000000,
>  	.tx =3D {  0xbe98, /* tx cfg0 */
>  		  0x8800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -2023,7 +2023,7 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_1000 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_1200 =3D {
> -	.clock =3D 12000000,
> +	.clock =3D 1200000,
>  	.tx =3D {  0xbe98, /* tx cfg0 */
>  		  0x8800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> --
> 2.34.1

