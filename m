Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FEAA94C2E
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 07:41:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB2510E1D5;
	Mon, 21 Apr 2025 05:41:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JPcbVz7F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B2F10E04B;
 Mon, 21 Apr 2025 05:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745214091; x=1776750091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K0lOXVAYw4DWXzwtMSccqGxgCnRSkyx3Po1ZDfyMXV8=;
 b=JPcbVz7FODXpd1HwkN0++wbhmaIy4uQ3c2p/ipJDlrdLvJQzNIqzf05A
 ipz1OXwyfcyi9fUU5qb2GKDO1hf9Ul9n57E4W8hLQQl/AzzfhpAkOMOJ4
 3DjDvFGXu5siZV2D39AsTkAN1lmoJ02IqyqE7lGq+KGT7p29psUXh38Aq
 TAQ3JOK4umq6hoi6ahgyp99H+iKV4XIXFdghR1oRjFmym6cyHsfXRXQ45
 rkYU+JhI/z3pIxSerJqQY651dOwKpRi5nMUPuJviLqZfLDGetKtg5DLb+
 mcU2WXkgF9IMEMcPrBSSM7AALiwUc2uwFrUcHKyKog4RQkHG6pyOFMS73 A==;
X-CSE-ConnectionGUID: cGUsTp2NTvu5IZSaWqzLEw==
X-CSE-MsgGUID: MZfMtxd/Q/aTuaR0duNTBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11409"; a="45975926"
X-IronPort-AV: E=Sophos;i="6.15,227,1739865600"; d="scan'208";a="45975926"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2025 22:41:30 -0700
X-CSE-ConnectionGUID: 9U6wOufYQZOH4uL5MJEYSQ==
X-CSE-MsgGUID: NDoXdCgqRMyaJ2iDwpMsUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,227,1739865600"; d="scan'208";a="136591755"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2025 22:41:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 20 Apr 2025 22:41:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 20 Apr 2025 22:41:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 20 Apr 2025 22:41:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q3JUDU2LkYSLoicWiM5cG25uVHVaEJk1OGhRDGL3Hho3Lfle9lumdXDkEkQW6p3y9K23W0H6UrDCGx72Z/ZTlpQJQIUA6Qz46hyTQ97KZFKVHO381PmLjBlxMiTKd1blsqIj0dXj7CaSgcIf4f63EO6OB+Mv98j7nwr5fCKNf73nQbyueGrIbzO5953rhRqrt+Iw6LMH8dT/2f20nWbX2cXsv4LC0eOdEbw1Bx0KVaS/zYZ9ORkXtvlZaUHjLT8fQlEmeRUv8uk515G/POmpRxuA9mSlNAOr94+KUr99xynuefVt9M7p3fkoYbp02IeltfcoGvI0UHu6nEqIolMfRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FBpWz5KmSDGys82DjKhkYTp8qytOZghsGxm0j4Z75Rs=;
 b=ripwjcAp7xodw2PPiaf/6gnVN2uJ8YbVqOQcjDWmNMESGtZmZNVXhUYjvdSVmqd75w5+cbAW5Xlf+pwg9MDkjfrmbf8cE/IsVOZ7RzTioVankzacZJAWeAVp18pRpWSZ3qDYT0pUw9dZSzRvQRDaJ7gF1lM/SVf6e5W4mjKY6IdYLwun/aPNvVoljnnhQQnqRrtkvearD/NfGfTmoUtNZvnmKOPXaTInUbWZbYovNXClJkDFS6gqSU9RHBofGOtl/jY1ISbqJRkR2f89Kni0GvBfj6J2zG9vbO1Q/PFTDSLhIIpztHnRrik8+kj3bl6Sb7YyFiepalH/SxqhP5YSUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA0PR11MB7696.namprd11.prod.outlook.com (2603:10b6:208:403::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Mon, 21 Apr
 2025 05:41:13 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8655.031; Mon, 21 Apr 2025
 05:41:13 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 3/3] drm/i915/pch: abstract fake PCH detection better
Thread-Topic: [PATCH v2 3/3] drm/i915/pch: abstract fake PCH detection better
Thread-Index: AQHbr3itLP6u1ZU56UqiN7/iUu5EaLOtoOcw
Date: Mon, 21 Apr 2025 05:41:13 +0000
Message-ID: <SJ1PR11MB6129038A9909FCE0D4DCCDC4B9B82@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <cover.1744880985.git.jani.nikula@intel.com>
 <95cd619b63a81a0a7f8c73a64694da9d41e3a575.1744880985.git.jani.nikula@intel.com>
In-Reply-To: <95cd619b63a81a0a7f8c73a64694da9d41e3a575.1744880985.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA0PR11MB7696:EE_
x-ms-office365-filtering-correlation-id: 3f1b4ee6-26d2-4179-0327-08dd809720eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?E/bfbyXMPnEkeJNu5xgVDBzoy8wfd2dZsRqEAltqCDobY05XS9MA2Dhc63Xh?=
 =?us-ascii?Q?LjjJRVaM1uc0Xzg2JZdl7U3GtEW4SIImb3pZ/x6I0G6PxuaUeYmZ48IZWYRt?=
 =?us-ascii?Q?UEWa0qhtynpzEndpJMe+I6mFPA/WfXSNl2mcrGpHIdirQU+gOZRv/kYN/8Ii?=
 =?us-ascii?Q?Xu+Z2AOUIlvNghWoUMC3e58e3z8irQo1FGT8bmEj14HyA3BquVyIA3f8EmXC?=
 =?us-ascii?Q?sa2bXx+vh/ujRvx1XVU7oE1iZ6xVqCTBju/ZP01qGv3wx6JxZ7na6lzOVcfH?=
 =?us-ascii?Q?cYLrvDSaIWQee46N2lIqT4cX6CP5TJvYYWGuhVOLA01iUA3ZfWMivjDwIWBE?=
 =?us-ascii?Q?f48TlKrC9w545J7WFCBCMe6meNy+on6snrRzwHc5+VogBriLSxxk1p5K8eoO?=
 =?us-ascii?Q?RIyAbzzTHiQQQ9YT8GbDs205urdKTNPjakWMcvw+WbBeFqOFi6t3mokSnX5u?=
 =?us-ascii?Q?DIAXnyuLZaSb2Bk87f1cVmCTmO4JiIjzK18NBOfG6PwELldh1ILdivZIIbQq?=
 =?us-ascii?Q?+C8VadiOrZ3RYCDH4Ne7p+AcQHP1VqrcgD/fdv4NMAG1kD6x0v7vhe3Aoyvo?=
 =?us-ascii?Q?n4Dh550aK8GorFLviQFa2JWABNH0YLDBU9/z52CltK9pP8tzdrgjFqqDOze1?=
 =?us-ascii?Q?AnEYtGYoQScV2D9zW/S9hz2LK0IlF5lL2/2I8/nWxcTkiK+Rg3h1ZfQpECAJ?=
 =?us-ascii?Q?m9AJTC646hSgcAwK6kTDsVRs2rohWSmIKYU1BSLJJUQe8cr2qrwW33UJ6rDy?=
 =?us-ascii?Q?AVe3zP1LuodXl+rwYfnuEMN4ELCykPakMukQXowM5fgwIdVq8c/sdJOTGSq/?=
 =?us-ascii?Q?2S2BjCXklH2rvvl16vrTRL4hVQEwq6HnX7T8eTL6qR8bhlx/8KnJVo3/zlzC?=
 =?us-ascii?Q?EfvnagCYpGJBjYDjyza/jfN6mvSnYwInoA915fuLnunikp34XNrpW5AtxJ92?=
 =?us-ascii?Q?rM/ou1O6vkKRQtZeOPprYWLo9LNzAPpleqKpVgebCUpY0vCxOLGbu6gVZyLQ?=
 =?us-ascii?Q?2PNiVZbFn+17hh3VrWQpWRc5mFPvsAAXgVwhAS+rHaUmgktDhuJeuoKw1S4+?=
 =?us-ascii?Q?PygfxMKR/nxLAKHYByvJuxN7FCrDwMNrc9SAoRMR/Jx+Qzr9hfypbR4+sKd+?=
 =?us-ascii?Q?8+j0ZR2/t0JTwC4pvC7S/uWJf1sX1nsspx4dThlWzb4KPJY68/Fe5PT1kONv?=
 =?us-ascii?Q?5/N4jumsdHkmUbEyqlhVDu010t6xLUU8/JvshjnJhGykPjnNDrDda36WmsLi?=
 =?us-ascii?Q?wTHHUr43EprRtxkKYGttnzNgxLhcGMqec0IQh4z4mFNRoFFGo8/yT/g9oDWr?=
 =?us-ascii?Q?5p/WzoE9TzfNYmbIVJEpJPciWg7wLcZL+q2BN1IDrGLVuLYgF3r6kdizf3tR?=
 =?us-ascii?Q?2NH7WXOdA0BqYvsOR40wgXfaucZBWvCoP9jxNjGDys3KmKowSo8b1B91WA6l?=
 =?us-ascii?Q?BWsicw3lvPld1ChVaRyic9mCgeN8WSZWYOoEBsSTozuldJXlyik3gF9PYDiV?=
 =?us-ascii?Q?HKq0u7T+CwoPuJg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jmzGdWd0nGvn5vsqpTgpJWKaaiZ/hX0naoswsppowGx0PD7Qwih97B55rgVg?=
 =?us-ascii?Q?BqxzD/ZpUl4h01rbC+4POfIYKNULRs1ga6HDPKAdpngm/BVg1x/Zxt564EiR?=
 =?us-ascii?Q?Chs8KtEuuVvDhtRXvjukiD5U4nhvZU1Iy3IJOTD7NizEA5GtNXRcgJq0iihe?=
 =?us-ascii?Q?yb7AkiPkbczWOMopNzqb1SwMgMISOm0c8A9AdNgN6oe1boB9LDZUQ5Td1Eyh?=
 =?us-ascii?Q?vSsbWCO9My8gyC/amYVjxhbrqYE43xCIdfBmrP+nrFTlI8uqYqNqOK66xouq?=
 =?us-ascii?Q?EOioE1efdrflpJ40bdjS7k2lRRqP/3C+6S7SgmDX87xzB2RqePikyf5B313q?=
 =?us-ascii?Q?ivIPxa0UTQ1U8+5s8UlIhKLE9BrKo+VUhREHKAfhhHS1dR98JOgxos567O+1?=
 =?us-ascii?Q?4+6+kbs283gg5tejJEVoOC7E8G+wSY/jM0K0pBhsihv5pWNHrc3cRa8uzU5p?=
 =?us-ascii?Q?/xyEIIuqbF4Hwp0Rz/Gq5daGwzsqWOzOKp+xR9kGaL+nD60mB0q1rD5zjR+z?=
 =?us-ascii?Q?Yezg8AQBFhIvUEdhe61gwIFenqRYcrWa/ISK7U4tmfWcjE4AyKRzeXHP59n4?=
 =?us-ascii?Q?p8YuUasfElZvgPh++WLEU38SGTiX5uNErgy8OC9Uk8j936r4xD4eBmxlDP/Y?=
 =?us-ascii?Q?Aif3p355TX+cT6+yJ3NR7Gd3Sqa8RQgePv6E4L03AJ1St+cETgSn0wfhrHFM?=
 =?us-ascii?Q?KUR5wsBIWLbgm8nUkQlzsrGwo4WyTy5e56ipC0efjha6bhYDpW3F+z+cMBmK?=
 =?us-ascii?Q?wlZ4W5NcOKCNOkeAhFxY9ThIsBNWUv9zPhNtHmMQZUTaV0cmFfZK72WZjCaC?=
 =?us-ascii?Q?PmqvzR6gI/3JQlNrak4MneGEpoTRZv7gYBLLeluS7Q9KJ0oBnaEJJIRYekkx?=
 =?us-ascii?Q?6updL0eqMKTngT6rLa/RZlQrb30r+VdiFjatSaxky7MAoc0TDnr9/TG0Y8TM?=
 =?us-ascii?Q?Wzvm3xZybYttcpU961OoDAy11AKswwFKR/1Suv6LVJll9VKHHuTp4DRvRa+T?=
 =?us-ascii?Q?1E9z8M+ZND9jdIqzSL+CBBAakDFTBacqYu+MWR48sS759o5pqYb1G/wjyJZq?=
 =?us-ascii?Q?3/+zXGh3yTwBrDfMAF7u5g0RvQo9i9O3VejduohZg8BJ8OT2xd/5lrmUiw9x?=
 =?us-ascii?Q?rqmywgFO0xYyuMuZBScBY8VaK/PpCratXbsw1otFTp2ubOfrAtGu+pTb0EfC?=
 =?us-ascii?Q?8W7DrfTrrbPiyEqWaAs8PpHz36o1gd2Jng5J2Q81axm/cqrl+0UryUQEwtRE?=
 =?us-ascii?Q?ZoY3xyL8Hvz/p9QGJWWzWBYt9qcUDAIH1+Ury6MuCoZ/9kDh7dEbmiG6kSjN?=
 =?us-ascii?Q?mRhPZUWZzh3ur/QdvvqNFvKFM7hyMsW/U9eAgG3tIcMyB2DM8mnCcQlv/M/z?=
 =?us-ascii?Q?fu6RKeR39ELKwTW7LmRDCVdtLyKQINq5Z3jIaA52P+y8UXchPdetS/Pzgn+Q?=
 =?us-ascii?Q?zXG/DuvsNoBE3ixmHm8F/OWg/UYmnWV3nPiw22KBYjy0WNOFhOyAKVJ7+g98?=
 =?us-ascii?Q?06sc6YfV9DDAt5r/8nV6WA8m6fe3/+VAaOoMgV81k/If/VgE+q5Ls9DxJ/sd?=
 =?us-ascii?Q?79BI74+GBSLLSQ/nWsFbV1EGgoS/XOWHMZJw5nDdZjCp7h+gMwl37rIFP+Ev?=
 =?us-ascii?Q?SA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f1b4ee6-26d2-4179-0327-08dd809720eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2025 05:41:13.7036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LuWpy+/bDK8U2XD/kxuj2fdcyqPDjdBScwqCg94sFDgcuskkxm/t7wQlFtZQUDsQCIMwL8Wc39v7TzWV+uOhacjUfSU6P/QTfiIc+8LBbBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7696
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Thursday, April 17, 2025 2:41 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v2 3/3] drm/i915/pch: abstract fake PCH detection better
>=20
> Abstract detection of platforms with south display on the same PCI device=
 or
> SoC die as north display, and all around clarify what this means. Debug l=
og
> about it for good measure.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pch.c | 47 ++++++++++++++----------
>  1 file changed, 28 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pch.c
> b/drivers/gpu/drm/i915/display/intel_pch.c
> index fec1919e5386..5035b63a4889 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch.c
> @@ -39,6 +39,28 @@
>  #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
>  #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35
> has 2918 */
>=20
> +/*
> + * Check for platforms where the south display is on the same PCI
> +device or SoC
> + * die as the north display. The PCH (if it even exists) is not
> +involved in
> + * display. Return a fake PCH type for south display handling on these
> + * platforms, without actually detecting the PCH, and PCH_NONE otherwise=
.
> + */
> +static enum intel_pch intel_pch_fake_for_south_display(struct
> +intel_display *display) {
> +	enum intel_pch pch_type =3D PCH_NONE;
> +
> +	if (DISPLAY_VER(display) >=3D 20)
> +		pch_type =3D PCH_LNL;
> +	else if (display->platform.battlemage || display->platform.meteorlake)
> +		pch_type =3D PCH_MTL;
> +	else if (display->platform.dg2)
> +		pch_type =3D PCH_DG2;
> +	else if (display->platform.dg1)
> +		pch_type =3D PCH_DG1;
> +
> +	return pch_type;
> +}
> +
>  /* Map PCH device id to PCH type, or PCH_NONE if unknown. */  static enu=
m
> intel_pch  intel_pch_type(const struct intel_display *display, unsigned s=
hort
> id) @@ -258,25 +280,12 @@ void intel_pch_detect(struct intel_display
> *display)
>  	unsigned short id;
>  	enum intel_pch pch_type;
>=20
> -	/*
> -	 * South display engine on the same PCI device: just assign the fake
> -	 * PCH.
> -	 */
> -	if (DISPLAY_VER(display) >=3D 20) {
> -		display->pch_type =3D PCH_LNL;
> -		return;
> -	} else if (display->platform.battlemage || display-
> >platform.meteorlake) {
> -		/*
> -		 * Both north display and south display are on the SoC die.
> -		 * The real PCH (if it even exists) is uninvolved in display.
> -		 */
> -		display->pch_type =3D PCH_MTL;
> -		return;
> -	} else if (display->platform.dg2) {
> -		display->pch_type =3D PCH_DG2;
> -		return;
> -	} else if (display->platform.dg1) {
> -		display->pch_type =3D PCH_DG1;
> +	pch_type =3D intel_pch_fake_for_south_display(display);
> +	if (pch_type !=3D PCH_NONE) {
> +		display->pch_type =3D pch_type;
> +		drm_dbg_kms(display->drm,
> +			    "PCH not involved in display, using fake PCH type %d
> for south display\n",
> +			    pch_type);
>  		return;
>  	}
>=20
> --
> 2.39.5

