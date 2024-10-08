Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BDB995298
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A96310E570;
	Tue,  8 Oct 2024 14:57:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G8qFbBWi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 608B510E570;
 Tue,  8 Oct 2024 14:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728399457; x=1759935457;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bVUTOaQZd5Upzh/6x3qJ9FDeCqDS0+qylTUbCBb85CA=;
 b=G8qFbBWiVa+n5lwy3i2TUEBrxvUtW5odwjsFc1g5ttPiuwyHkpbEtLL6
 cphh0d+cAu8CS7DAWmtw8+l5RnbxbL+jqsbOQqW5WBfhxGcgJVFcEzYln
 z8p4wFFf/lPCBCrZ21qsUE8h3+k/2jZHSe1L3xExoc0u/uYuQ6JQOPQJO
 lj3EeLT0933BkN4HRQHZLXEtHv4/ex6IPv35g9TPhT/vg7S/LCEBh1QWy
 zF8eEA1b9xNqCntPgTcda3/64GO8OpqPQttEC4nO5I/+nRQElXgjdlCVj
 WASD2XXSf9iZaeqS9k0L07q0LOv8Xr6SpMuIz1xOcSxmu3keyxThdxQ1y w==;
X-CSE-ConnectionGUID: 0zFgse3RQwGydVwQVsdGoA==
X-CSE-MsgGUID: jR79r78ZTGih2QPsPvKjyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="38729860"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="38729860"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:57:37 -0700
X-CSE-ConnectionGUID: oTRwX2AsTpyD3BBFNOWyzQ==
X-CSE-MsgGUID: F7PhKREjSyW57OpysFEMCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="75963669"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:57:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:57:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:57:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:57:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:57:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C1PCiZ2JstAnz89cahhL0HX5EeRu8bFuAxV+Ip42Egji/4Z4KkTzjIhOMtL/1JI1bN3Aq7AI8U7inkd8JepphzWtDn+oKTzXW+NZpPx9gBjnmuICZ47ZzS5z9EOVhyvnzx1069pm6LktG7ovMr2jqZe3Z4rii2acWu8AP76AfUErbgBa/Xmcrpr9DtHiYOh7SufDqyjRvAOyHUjWXVN6jNPH4N/BY7zW1eR5/9MzUL5DTC++XwLyhoO9uZ0NRYr8FtHBeBrDKcbRkGj28j35JXU+g5SS6frmB3TZSKwk47G9fT72EkvnjcY2Uyhc5eTaD3IOtq/XCnH5e2cCQ/45Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7AmzIZSfqaKgOJLg0fcKo9UQDN00Zl0JFeAa2Hyd5KE=;
 b=ZcDJ1xB3+k3H2FuJeEuMmz00iAT/vEXNh2glsbsMsPET8cc6KR/c/+ZED9nDSgl7DAEXNAQH91T/rZW3wwyQgKDbfbueRBduudMJkfTVNsm+xCtYP8flskBxLWL3KUOrelnhktkcQMqIvvjMawMbaMVcxTeI3REIAQJuEp/7pz8y43inJBTFPqYllD/TrUmsdulX8rPucnqlsT5UlI5YQ5bR9mo6iopfe3/Ve30jzYnoo7XMFAXijr7ZFE1YCQkBGp/9w+YfbMFIJpKCjhyI6kn7fPZyu4iCU73gzEp2rUCPUhUBp70l6OpUZnm5/6zYDMXGMqUtyfmQuEad3UJ+jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM4PR11MB5970.namprd11.prod.outlook.com (2603:10b6:8:5d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8026.22; Tue, 8 Oct 2024 14:57:30 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:57:30 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 31/31] drm/{i915, xe}/display: Consolidade entire runtime
 pm sequence
Thread-Topic: [PATCH 31/31] drm/{i915, xe}/display: Consolidade entire runtime
 pm sequence
Thread-Index: AQHbDsKVXmFj3nS5O0y/L+3OfyrvvrJ9Bcyg
Date: Tue, 8 Oct 2024 14:57:30 +0000
Message-ID: <CH0PR11MB5444E04ADECDBBDC2CA8CB7FE57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-32-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-32-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM4PR11MB5970:EE_
x-ms-office365-filtering-correlation-id: 019db9f9-887f-415f-d285-08dce7a988a8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?z+9jS8AwRWu5NceE7bbFpfibaeubkyoQFLMW+g5Gu4eqNetzqBmGbhf0I00T?=
 =?us-ascii?Q?qqxgETmsgEtlscY1LIkCa3L1bYT9jvBXpxYiqx46Sb/1fjQbbfy8n5mOu8/F?=
 =?us-ascii?Q?8bWjhrUUAtFeWPjw9aKbuwcutoY83vcYiZ0Qxa2Lm1zqewOp2bn6qMKYNvXD?=
 =?us-ascii?Q?kdNvkuV8MT5JZgkBBO25bh4yjMxSwTuieFvvcVcR8F5djaYBGku6UftxUXgl?=
 =?us-ascii?Q?b9tjx8kvBbedUSTMdCALF63ZOrouliWF0V0wYWcliYqtUB6pKM/0u9sfuVVJ?=
 =?us-ascii?Q?gsThKvqHdE0II91wrjwKfWrG90EmQ/RmkNa9LsXwF6tFoqgEbmF7/vGQYZuT?=
 =?us-ascii?Q?bYrzN7a4wKRuDoPbEQ/VjGouBV0IdjlcbyNlJRT0gffVVgJigj9mX02Pp313?=
 =?us-ascii?Q?HSqnu0K6YDF5HexL0pxPbeLuLEeF59RSDH00SBerAf4XL65OGkwV4fjhR/L2?=
 =?us-ascii?Q?SFhjT0rwQ0GPMSrDRjAigxuXb1TNvgopWSy7Twsai6Y2/G36cdSNmBHmzngr?=
 =?us-ascii?Q?kRCtk5QmM9VNwgFswTcgQtYQbILelt5Xh7aPmiZH6S2IyJW709A+zmTACxN5?=
 =?us-ascii?Q?frPbS2Ok0NuMv5DUDAjCLu+vfR2cBLTmNmdHE2kPEtU/dcJam8RRxH3EbzPJ?=
 =?us-ascii?Q?BJTM/cSNrC5V2CTCG4pM7psuCi+wTef29uhSb2LSZjUAHdRuhNF87TUVV66t?=
 =?us-ascii?Q?raJyK7mZw3qdFv8h+weVGPOVwB08Plq26SU8DDbHlHoaNkqwkd0ZSzxxnB+q?=
 =?us-ascii?Q?lLOy8/Ui2jw/VJuaJ8dLZ9bJagVWTXY/8nRvWWPr3JDef3HcFb690EPFSuDH?=
 =?us-ascii?Q?l6vcX1ZyoxRIrGfKrA4r4IInoC7jy+x+gNpqdizgj5NI4wHiSUIsra0PkfsP?=
 =?us-ascii?Q?uHCUMk6sQ9PzSxyK/L9J8i/+tbDKVma+K8oe8K+STcnqNqwaZVPFqiGwN1BO?=
 =?us-ascii?Q?7UbACR/kcVZfotLhIDUaYFctOPwVS013kjCbtfn53Upp3+fyf719nTrXL4wu?=
 =?us-ascii?Q?ICDWki58mzApiilAzNTTKZxCsSoFY+OXBusMyHazu4epPaMe0TjTRe2tUd1h?=
 =?us-ascii?Q?N8J5sECPydnOE7nslU2On6YPTpOZaUIt6eVBDWDTP/Q5sP+fo83zIuCnFFMm?=
 =?us-ascii?Q?LgHRneEJY/dzZNt+GCMyflIqClGGQlSRx/QV0KQMfj80MKGiuc8EzHn0pbLl?=
 =?us-ascii?Q?Dn0uJQTaL+n0wayuxqxUH0VvZO/Awc7uuWqV/LJry1tpw8sUYM6Z744pVn2l?=
 =?us-ascii?Q?DmVH8qi0x4weS/z55VG48nhjyFcc8NlOmT7DdY2Ze/xQARTt0m/y7zc0WZ8R?=
 =?us-ascii?Q?p98ApOJi6eCFwiQjWqQ93uOAsfCR+xovr+wUHJDHkvEDRg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8jeKB5hNjyUz73rJhLTlNucjlfoNykP6WClWsVTGmDGWlIidRdHuuuH5DS4A?=
 =?us-ascii?Q?ZBdNKzhyXNSoYDkMZicEzB3BXeOSy9Wqt5E3kNt5C2bBUYBkezo5IR8nPf+x?=
 =?us-ascii?Q?puSXP3XhJ9tjW5i3AVtuHdHEGUWcFuhulCVYYrZ2OlhsuiHnqYw1smjMDpMf?=
 =?us-ascii?Q?+15mkOtCPzQP2J7Z4grvdXP/wJFexPezoaOw2oYXR6eejorCV6HYOhRmmshK?=
 =?us-ascii?Q?UmUK7F16W0msNL1W+evZOwrZg8DB8pH2A2bk1NO8u8olXhiLxeKsAdIO8eGW?=
 =?us-ascii?Q?fyP9Xlqj3ArJlCg75p/HKCLqcxdySLtKdt5C6/J31PvsEn7Kgen+XaXGgHKH?=
 =?us-ascii?Q?QdhDBBOwviuRpEbL1IEUKBXNtpNi5dn8QNqTCV3J5wEQo2P0kzdN73oXruUx?=
 =?us-ascii?Q?/EzPWfw2vh7Nczp/7AM2yf2CVG5WqAE0pfIGQeTDwzIKR01gdTvy9aLZ/ZXD?=
 =?us-ascii?Q?sK05xjzkkuia2/UICfiSgstlkJ2UWvXzazQJIuxXv4cGvCHicd0Q/EJ3+csS?=
 =?us-ascii?Q?AS+IlGXE+EjHWwr5AvOWtp3DoY3U+pqXlg2q1XTgpHQSFd8vxVCvwCeS+dBk?=
 =?us-ascii?Q?7q9QEzBfSOD2sls0g6vU8nckw+t5vYhl1SWW30S2eh6P7F0KFZ3eiOxnA1yR?=
 =?us-ascii?Q?/vHx4GpMpFn89nmvNWzqRm0Rt/htPbhqDDvC/Qlh4i7u2pBl5kbiHGsUjASu?=
 =?us-ascii?Q?KUrWho85uX9jjtQ6IleqNPdXIP3kxsx+0Fy9Vx9qD5sa6fmkOEdCwEix2DCY?=
 =?us-ascii?Q?ORUduwyApUE54N6rtrdQxSxii8mMvxXPGdTqTRWsDUR7MF1Q8q3NCispXtqG?=
 =?us-ascii?Q?oO+OuV460Uj95eCMWIZXXgKPApFpWrdZ0R4+e743Hbu3lxBIhU9o/TZI0Qh+?=
 =?us-ascii?Q?FmgBDJGJb+5Q/DHViOvHQjQWrnePnfvrz+48JYFxdihJ/lX1mLzZIu00Cewz?=
 =?us-ascii?Q?dPTDlK6AUwWgfImdhihPWrdAdMN89ZSweuEgT+grwrqU09H33IDBi88xOM9s?=
 =?us-ascii?Q?osJWqP8EM4/ACo/Q88WtPjbE4V+eyPB3zQm8A/2fD457b+nWAIawuPrLNBDF?=
 =?us-ascii?Q?Bp1YnaNvnACKssv6TRQbBNyQwWaJmSzKITHbaCM03t5YcuALfmzrI9ruRHOZ?=
 =?us-ascii?Q?RfqMfMsH0HxVYkrFfbkhHoS77NE11lQTG5mNLHMX0vFUrKrmKOU0tUb9Pl/7?=
 =?us-ascii?Q?cDRqoOxjydBn2rYz/fTvpYXBo+we4gWHYm0YsKQXD/kb9/aRML5q2rtlqDme?=
 =?us-ascii?Q?TX445hzCUEC5j5I+wQSRCvMRcD4NKBPyro60X8RqXSGdqXDpEicCbw2wxRvS?=
 =?us-ascii?Q?JIeoJz8uYK9a/5t3izTGT6IPcmyJWrXs6At2r5VcRxIMV+lobw23+Ru8/1H9?=
 =?us-ascii?Q?hU0NG6tdguDKXqVGEmHTufHS0v2H0DalK0CubSUswuecYWZdQ4m69twp8mxq?=
 =?us-ascii?Q?SRNP2uNPIxViXRoPbzPOfdMyDVxWIzOXS14kcD8dfhykuxcNP/p04A7YMFUp?=
 =?us-ascii?Q?RvNvoBbbVeb8NsCC+7cnsB7HnCCy9jChgBuHEO9ZDn+uSWIcOuFhFao8k9Gb?=
 =?us-ascii?Q?ILbCKWkEATWuISHp+VAnMQwqBcZQBZYFCv4tSZ/w1cZ1/NaPGAHi7nyJkHLi?=
 =?us-ascii?Q?uw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 019db9f9-887f-415f-d285-08dce7a988a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:57:30.7908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M8dEXVdZHaneSRIl04WwDprkBMXOo5zRYGyEmsMr/A20Qtj8ssh76e/MnQQNQKwSKq+y/FwVnoUPlIAeswL+YK0J91iyQwWcrsIXbjuiujk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5970
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 31/31] drm/{i915, xe}/display: Consolidade entire runtime p=
m sequence
>=20
> No functional change.
>=20
> Consolidate the entire runtime pm sequences under
> intel_display_driver.
>=20
> Simplifications and optimizations around the D3cold sequences are
> likely still possible. But before that can be done, consolidate
> everything at the intel_display_driver side.
>=20
> Xe display power management functions are now only a wrapper
> checking for xe's display probe parameter.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  .../drm/i915/display/intel_display_driver.c   | 66 ++++++++++++++++---
>  .../drm/i915/display/intel_display_driver.h   | 12 ++--
>  drivers/gpu/drm/i915/i915_driver.c            |  8 +--
>  drivers/gpu/drm/xe/display/xe_display.c       | 56 ++--------------
>  4 files changed, 74 insertions(+), 68 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 62a7aa56f0da..3861fdbefaff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -856,12 +856,45 @@ void intel_display_driver_resume(struct drm_i915_pr=
ivate *i915)
>  	intel_power_domains_enable(i915);
>  }
> =20
> -void intel_display_driver_runtime_suspend(struct drm_i915_private *i915)
> +static void intel_display_to_d3cold(struct drm_i915_private *i915)
>  {
> -	intel_display_power_suspend(i915);
> +	struct intel_display *display =3D &i915->display;
> +
> +	/* We do a lot of poking in a lot of registers, make sure they work pro=
perly. */
> +	intel_power_domains_disable(i915);
> +
> +	intel_hpd_cancel_work(i915);
> +
> +	intel_opregion_suspend(display, PCI_D3cold);
> +
> +	intel_dmc_suspend(display);
> +}
> +
> +static void intel_display_from_d3cold(struct drm_i915_private *i915)
> +{
> +	struct intel_display *display =3D &i915->display;
> +
> +	intel_dmc_resume(display);
> +
> +	if (HAS_DISPLAY(i915))
> +		drm_mode_config_reset(&i915->drm);
> +
> +	intel_display_driver_init_hw(i915);
> +
> +	intel_opregion_resume(display);
> +
> +	intel_power_domains_enable(i915);
> +}
> +
> +void intel_display_driver_runtime_suspend(struct drm_i915_private *i915,=
 bool d3cold_allowed)
> +{
> +	if (d3cold_allowed)
> +		intel_display_to_d3cold(i915);
> +	else
> +		intel_display_power_suspend(i915);
>  }
> =20
> -void intel_display_driver_runtime_suspend_late(struct drm_i915_private *=
i915)
> +static void display_runtime_suspend_notify_opregion(struct drm_i915_priv=
ate *i915)
>  {
>  	struct intel_display *display =3D &i915->display;
> =20
> @@ -887,20 +920,37 @@ void intel_display_driver_runtime_suspend_late(stru=
ct drm_i915_private *i915)
>  		 */
>  		intel_opregion_notify_adapter(display, PCI_D1);
>  	}
> +}
> +
> +void intel_display_driver_runtime_suspend_late(struct drm_i915_private *=
i915,
> +					       bool d3cold_allowed)
> +{
> +	if (d3cold_allowed)
> +		intel_display_power_suspend_late(i915, false);
> +	else
> +		display_runtime_suspend_notify_opregion(i915);
> =20
>  	if (!IS_VALLEYVIEW(i915) && !IS_CHERRYVIEW(i915))
>  		intel_hpd_poll_enable(i915);
>  }
> =20
> -void intel_display_driver_runtime_resume_early(struct drm_i915_private *=
i915)
> +void intel_display_driver_runtime_resume_early(struct drm_i915_private *=
i915,
> +					       bool d3cold_allowed)
>  {
> -	intel_opregion_notify_adapter(&i915->display, PCI_D0);
> -
> -	intel_display_power_resume(i915);
> +	if (d3cold_allowed) {
> +		intel_display_power_resume_early(i915);
> +	} else {
> +		intel_opregion_notify_adapter(&i915->display, PCI_D0);
> +		intel_display_power_resume(i915);
> +	}
>  }
> =20
> -void intel_display_driver_runtime_resume(struct drm_i915_private *i915)
> +void intel_display_driver_runtime_resume(struct drm_i915_private *i915,
> +					 bool d3cold_allowed)
>  {
> +	if (d3cold_allowed)
> +		intel_display_from_d3cold(i915);
> +
>  	/*
>  	 * On VLV/CHV display interrupts are part of the display
>  	 * power well, so hpd is reinitialized from there. For
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index b1441a55d72d..21aa0e551898 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -33,10 +33,14 @@ void intel_display_driver_resume(struct drm_i915_priv=
ate *i915);
>  void intel_display_driver_resume_noirq(struct drm_i915_private *i915);
>  void intel_display_driver_resume_noirq_legacy(struct drm_i915_private *i=
915);
>  void intel_display_driver_resume_nogem(struct intel_display *display);
> -void intel_display_driver_runtime_suspend(struct drm_i915_private *i915)=
;
> -void intel_display_driver_runtime_suspend_late(struct drm_i915_private *=
i915);
> -void intel_display_driver_runtime_resume_early(struct drm_i915_private *=
i915);
> -void intel_display_driver_runtime_resume(struct drm_i915_private *i915);
> +void intel_display_driver_runtime_suspend(struct drm_i915_private *i915,
> +					  bool d3cold_allowed);
> +void intel_display_driver_runtime_suspend_late(struct drm_i915_private *=
i915,
> +					       bool d3cold_allowed);
> +void intel_display_driver_runtime_resume_early(struct drm_i915_private *=
i915,
> +					       bool d3cold_allowed);
> +void intel_display_driver_runtime_resume(struct drm_i915_private *i915,
> +					 bool d3cold_allowed);
>  void intel_display_driver_shutdown(struct drm_i915_private *i915);
>  void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
>  void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index b3eaa55ebacb..719b1c21b695 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1402,7 +1402,7 @@ static int intel_runtime_suspend(struct device *kde=
v)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_uncore_suspend(gt->uncore);
> =20
> -	intel_display_driver_runtime_suspend(dev_priv);
> +	intel_display_driver_runtime_suspend(dev_priv, false);
> =20
>  	ret =3D vlv_suspend_complete(dev_priv);
>  	if (ret) {
> @@ -1436,7 +1436,7 @@ static int intel_runtime_suspend(struct device *kde=
v)
>  	if (root_pdev)
>  		pci_d3cold_disable(root_pdev);
> =20
> -	intel_display_driver_runtime_suspend_late(dev_priv);
> +	intel_display_driver_runtime_suspend_late(dev_priv, false);
> =20
>  	assert_forcewakes_inactive(&dev_priv->uncore);
> =20
> @@ -1469,7 +1469,7 @@ static int intel_runtime_resume(struct device *kdev=
)
>  		drm_dbg(&dev_priv->drm,
>  			"Unclaimed access during suspend, bios?\n");
> =20
> -	intel_display_driver_runtime_resume_early(dev_priv);
> +	intel_display_driver_runtime_resume_early(dev_priv, false);
> =20
>  	ret =3D vlv_resume_prepare(dev_priv, true);
> =20
> @@ -1487,7 +1487,7 @@ static int intel_runtime_resume(struct device *kdev=
)
> =20
>  	intel_pxp_runtime_resume(dev_priv->pxp);
> =20
> -	intel_display_driver_runtime_resume_early(dev_priv);
> +	intel_display_driver_runtime_resume_early(dev_priv, false);
> =20
>  	enable_rpm_wakeref_asserts(rpm);
> =20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index ab85c7fb217a..9a652292d988 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -283,36 +283,6 @@ static bool suspend_to_idle(void)
>  	return false;
>  }
> =20
> -static void xe_display_to_d3cold(struct xe_device *xe)
> -{
> -	struct intel_display *display =3D &xe->display;
> -
> -	/* We do a lot of poking in a lot of registers, make sure they work pro=
perly. */
> -	intel_power_domains_disable(xe);
> -
> -	intel_hpd_cancel_work(xe);
> -
> -	intel_opregion_suspend(display, PCI_D3cold);
> -
> -	intel_dmc_suspend(display);
> -}
> -
> -static void xe_display_from_d3cold(struct xe_device *xe)
> -{
> -	struct intel_display *display =3D &xe->display;
> -
> -	intel_dmc_resume(display);
> -
> -	if (has_display(xe))
> -		drm_mode_config_reset(&xe->drm);
> -
> -	intel_display_driver_init_hw(xe);
> -
> -	intel_opregion_resume(display);
> -
> -	intel_power_domains_enable(xe);
> -}
> -
>  void xe_display_pm_suspend(struct xe_device *xe)
>  {
>  	if (!xe->info.probe_display)
> @@ -413,10 +383,7 @@ void xe_display_pm_runtime_suspend(struct xe_device =
*xe)
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	if (xe->d3cold.allowed)
> -		xe_display_to_d3cold(xe);
> -	else
> -		intel_display_power_suspend(xe);
> +	intel_display_driver_runtime_suspend(xe, xe->d3cold.allowed);
>  }
> =20
>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> @@ -424,12 +391,7 @@ void xe_display_pm_runtime_suspend_late(struct xe_de=
vice *xe)
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	if (xe->d3cold.allowed)
> -		intel_display_power_suspend_late(xe, false);
> -	else
> -		intel_opregion_notify_adapter(&xe->display, PCI_D1);
> -
> -	intel_hpd_poll_enable(xe);
> +	intel_display_driver_runtime_suspend_late(xe, xe->d3cold.allowed);
>  }
> =20
>  void xe_display_pm_runtime_resume_early(struct xe_device *xe)
> @@ -437,12 +399,7 @@ void xe_display_pm_runtime_resume_early(struct xe_de=
vice *xe)
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	if (xe->d3cold.allowed) {
> -		intel_display_power_resume_early(xe);
> -	} else {
> -		intel_opregion_notify_adapter(&xe->display, PCI_D0);
> -		intel_display_power_resume(xe);
> -	}
> +	intel_display_driver_runtime_resume_early(xe, xe->d3cold.allowed);
>  }
> =20
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
> @@ -450,12 +407,7 @@ void xe_display_pm_runtime_resume(struct xe_device *=
xe)
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	if (xe->d3cold.allowed)
> -		xe_display_from_d3cold(xe);
> -
> -	intel_hpd_init(xe);
> -	intel_hpd_poll_disable(xe);
> -	skl_watermark_ipc_update(xe);
> +	intel_display_driver_runtime_resume(xe, xe->d3cold.allowed);
>  }
> =20
>  static void display_device_remove(struct drm_device *dev, void *arg)
> --=20
> 2.46.0
>=20
>=20
