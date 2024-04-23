Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F2E8ADC12
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 04:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106B410EAC7;
	Tue, 23 Apr 2024 02:59:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k5X/bQbm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70BD310EAC7
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 02:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713841163; x=1745377163;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gEQISz0yO9IFM/CetUrFIn4wOzedew8oCw340qNfF1Q=;
 b=k5X/bQbmSZ6O8trSvMI189GFU5KQKGCKGcPBSw+9al7O1ru09BIVqbc8
 6EtzzT0sfxsUcgiJ8/XwRjstfJ59vaBtiPSnwLwI79lEfXcqZxWu7Q2T+
 ve1Ssof1p2X/WmO/vu1/Qzgu+03iWyimSZWJYB78LmKfM5IjpATyR5c0D
 vUgkaOT0bG0IolXUxQnp7cXcVhnpl8lu47KSPYKcjFsFXQDQ0pEbiA5eJ
 tU8KltQwJMdZ0XwpDo9Cw7wzJNmwN2yZhiVP/RPd7ZvpKxBSXecIEF93x
 CNsWfCY7EyXQgSuc7zFWsxIF3nffGgxB7jcVTk1fKy7C3GJ1sTSuFGxKH A==;
X-CSE-ConnectionGUID: 9Wg0WR45QtSCGU7KGG1qJg==
X-CSE-MsgGUID: X07HSkd2TGyvBqMiqfYlIw==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="26866481"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="26866481"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 19:59:23 -0700
X-CSE-ConnectionGUID: ngUOwYPiQye0/a3xbTvLqw==
X-CSE-MsgGUID: PgRKkbueSZagcw3Y0pq0JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="47502291"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 19:59:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 19:59:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 19:59:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 19:59:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 19:59:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d8trWNs3tm6OmFYNzDCQN/emd0ZSJPFvyQnHfDF6CwwMt8mCw39Ek5VcWfpyYj3frnKhXCqKZet56cFhI9mH2kPX7nik6HNRu2M6uDutY6srQ+uBLnxVT/v7r30cofYAgflx+mvsNAIPWu8g04rktnaBduwFwr93uz8hEwvbsxVbBiQ58nAolMW6hX5DxUlvVTRnnlXSu+SBNbktEk/BfgXntGF8+EqeCTRNPiaTPNKiNFk8Bg5PXtZu5bEmOnOY/ROnVoted/Ohb4cDK0bXs8H9PkUO0/hUQO/F5ZlYNhCDi/pqlQ7w1K6bEZO1s9vH9SUPyQQzNMGuCGBLRqrF4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f6BQ+lfspfo6suP8dey0lYoUgKoAh17Wt7ff55DZIxU=;
 b=ZBDWu5g5Tj0jlEUEdWlL9vZqm8v3KnS/hPC2OzZOEncrihy2RemgEbM+Je3l/7jz7HLUTzuuWUvlKpYGSw21tMTN3V1EjgEpPRetF2GAdj0jFD6n4HK3ff4luQUCFHgUgC7KlaaTqHRwcpE/vppetDjDN3Anb3Cmy03y/uzUk//+Q/kNoH3oFzKGh0WV9qlNierjENJphlJ6rW8sErCflvq995reRm7vJJXv2FIZgyjJSOUPjsCfcAnKwTLWnoUzzVpWzLi/ru4CeFAzX+SAYm8saLAcVNpcAzfhBVJyIKj5BiDqGOJg7CmLpwAuLRJTVQDP1zSiWVR7T75b9L371w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB5779.namprd11.prod.outlook.com (2603:10b6:806:22b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.42; Tue, 23 Apr
 2024 02:59:19 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7519.020; Tue, 23 Apr 2024
 02:59:19 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, 
 "Kumar, Naveen1" <naveen1.kumar@intel.com>, "sebastian.wick@redhat.com"
 <sebastian.wick@redhat.com>
Subject: RE: [PATCH 4/6] drm/i915/dp: Drop comments on EDP HDR DPCD registers
Thread-Topic: [PATCH 4/6] drm/i915/dp: Drop comments on EDP HDR DPCD registers
Thread-Index: AQHalGYpEwN4f0PYo0GHbviSz4Yyj7F1KyMA
Date: Tue, 23 Apr 2024 02:59:19 +0000
Message-ID: <IA0PR11MB7307ECDA7E4316C8E5CC0175BA112@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
 <20240422033256.713902-5-suraj.kandpal@intel.com>
In-Reply-To: <20240422033256.713902-5-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA1PR11MB5779:EE_
x-ms-office365-filtering-correlation-id: c34f1f45-b236-40cb-3622-08dc63415ed3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?us-ascii?Q?lWjn6LBSdYy5EtNTTeV3sslsOdf3ihDGQvJ1K4UlhcADNPLd29/eaPj8+xck?=
 =?us-ascii?Q?9o1V4F10wzHTUmDMIfYRyncxV0VA+yWTzK/t+4hJVIYgNO5ZseqtY4MUPlFL?=
 =?us-ascii?Q?dM3MHzcup2t8xKUXlrYBBp6zTjMUsAt6iIBeTn9lEfkEM43ZephhZz1j4tt8?=
 =?us-ascii?Q?3dqzdIDNFcjeqx+kUS2q8BjwS+rQ7i88ri4MTZe5oLS77JL8AaR92oCc7kZi?=
 =?us-ascii?Q?AjatETsyokXfR1bMxpEEOkYqxm3mdY++oNVbiMInasY0vCzLbBzhfR2yfK2h?=
 =?us-ascii?Q?CNl7Q9KyDCLwlN9LF4vXwjv+Q+ush2+eie7x7Jb/CrVjdhXv07fHV9Lq16/O?=
 =?us-ascii?Q?Yl/ZZuhilg2/nnzlUk7cXTqrbV6rGToUIE9MmqHI7Rb1PQNyrtyTIkl1NvJC?=
 =?us-ascii?Q?gUBb8rQn8qLWlgdBCNwqBvlTfntB1S/n1qfUuA/FFI1zj30nddvlqTAbJCx5?=
 =?us-ascii?Q?Ng8b1SeBGEhr/jqmaNf+m9cQWzlTuEqI0bAH+MYXopJ6BA+vfD9s6PxBWjCa?=
 =?us-ascii?Q?Kc9msRbMGD5Or6/YNva1+OGpjBQPBQu/rhbhyFOcVqorsDjBNqH7LEuEidED?=
 =?us-ascii?Q?6aujpk1frHv8HgGT/3WAvcBaD2E8PkKOAbPsFWn2QXGVaXsIFUiGneXcVi1P?=
 =?us-ascii?Q?hqAfQWyBVoiMYK+tPokglPwMJ5nDyhmbY4zUgTyvLvtZ9oETU0LHycbURrzQ?=
 =?us-ascii?Q?oe2TeQACel3s+0aZUcCAVmKGTettF4UL+QNtYtHTpbwVQnzfqFn187fsKdh0?=
 =?us-ascii?Q?nKI9jMhTAwNv9IeW55SDEp9/HHseu0otoI+Kem1PMqa/VIF2VpOeeMq9eaND?=
 =?us-ascii?Q?v61YQJk73LCjpF5fPv7oPCXFac32V7TduhZKLqgnrI6l/9oSHquIgsG5ww8M?=
 =?us-ascii?Q?HLtiYbZkIY4aH4BrGNfwmgzFQSwKJcSRqA/xMWkgp2WDbvpAJZ1y4QiwS+6u?=
 =?us-ascii?Q?5/zIgaAuA4L5FFNko9YY3jBdQ4LnuXIYAusVER+WRNpYIhZLdukF1KFsNwa+?=
 =?us-ascii?Q?kGd6GnIA/wVifLq25AoIF1fKSqDq3dtZ1U6C0dn5AKW0DjHEs6ASO1ZeCjV/?=
 =?us-ascii?Q?4ThcHvcKV6EONgjBZF5WL1WTbsO/t81exMX/qGrxKNxiqSzuqmqmIWFzjGes?=
 =?us-ascii?Q?DyhGk0Xz0mKU1dgj8jE/nFHXOI3HU7VJsi0p1BGjaCy6O1KAb9BKq2XFsXFU?=
 =?us-ascii?Q?2XesFcjrdc6j+oV241p9GNyPvtKWBNeeaNb731dYqCa4d7jRE25FMwaU6CRx?=
 =?us-ascii?Q?Yd1obRkDP564ZzQvE2jiWAiw2QJzJQ9OxCPRsRD+ywTVk6bc9w4fGBVsb5vB?=
 =?us-ascii?Q?4jeLmO2nNurOqjJlWAJZaPq7sVBrGS+JlukhoGwJGXVJ5Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p61Tmu3cT7MaAiy8sDtRC7cbJ/qTQvtN6vcZl/HVzWQnWi31TA2M90RR488a?=
 =?us-ascii?Q?bN5rqUYtWI+IhQtnXtekbrchD3L/6u/H3YO9yHjxtmJ/oA5KNeTTqQoZ103j?=
 =?us-ascii?Q?n5I76YxcGTmekULMWEZts5fRFqiRP/AVTOVq/SUpA3E85jhjPHk9sMV7WHV4?=
 =?us-ascii?Q?nas61HLuulSc610eBgq9FcgwRkvH2pNwRRQDs2rYHgqzYYH0PQwIbxFJjF0/?=
 =?us-ascii?Q?kG4fhiuESMb1MI+ixKI8LFBWapuxVsLGcxV86nhPZun+LvhIp1ouupSGw/+z?=
 =?us-ascii?Q?sC8aBosUc5Jds6xSU/1mU49vBwBHq+7nCBq5UN1EjTsVDMKyDx5ct3CT9ree?=
 =?us-ascii?Q?xzsn6yLZTpMbvA2+70KTKRckCm8ufwsImWHaeWK2FYy1+BzDsXacXzJtvFgv?=
 =?us-ascii?Q?Jl36BI84t6kCkV9BINvt8NE4JXEGjHoy7x+f3Jp92/+j6pkY4Q2iPb8VL2ZM?=
 =?us-ascii?Q?cKC6+QP26hz45/GI8O5gAlpQZX8hKW4XPFYZGAIphbVGfcaAJ9HUKhRZ/165?=
 =?us-ascii?Q?vOx8brMjW5d/+TMHY+wbY3xu4xyClkvJVw7cWhMj95Ep9MJn7w5j1R4lxrNO?=
 =?us-ascii?Q?1pP1837V1odI/vWlvLgYsuQ5epYJPf1ZY0YmlyV24esnjNH59iDuzmU6enVL?=
 =?us-ascii?Q?w0hCbYTMhEDYxi3zILuvCZeY2HKDEmluVwUTQrKbH09hKkvmGlIgTvyihIdk?=
 =?us-ascii?Q?OsPip+lE4Z0pQeohw9+O2QNUwI2bC01kogoJulF3el8+DtynYW1+4sYgJs7Y?=
 =?us-ascii?Q?J+7THzHrrKq1U2LWfDMPxg6e8+ArdliEH3X+sYatnlaNfaM1Mz8J5qLv1ebF?=
 =?us-ascii?Q?fcUcaKa/A3RWBZ2BpsrK8q86aQZz+t8FvYgLE/aRwybBnduUv5ovRVdZV18R?=
 =?us-ascii?Q?MnvKnCn9+10AB0ljmh9tw8ioactOco+dYstFzQf5p3PvGxEwruVrH+cBjGx0?=
 =?us-ascii?Q?RtkiswKIPH81QyQ5ujB+gbYVMEWVU9ieuG0bZgQoUeUc0C91oW749ZsRwOiM?=
 =?us-ascii?Q?vqII6fEt3o6HpMmdh3nlYtmVkP5UUIdDxmbG4TUoUJhybUf6gHK9ecYidt71?=
 =?us-ascii?Q?G5yaDwVpGeY5He9Yj9hnLASy9ByrRCUvq4GpWZxFYHHz25QLarH5/WWo5wOQ?=
 =?us-ascii?Q?k/4KDpkp7r4cDEH9urfgyDoEhuNO+cNTjF9GwzgHqEghQSr+0DdpxvUb9PyC?=
 =?us-ascii?Q?mxCc3KH9LTqbxVqtrP0jRaYsKGwhq68SWP//sQtJPRNPpJawZDX2nPXVo5qk?=
 =?us-ascii?Q?axoQa3fHWOqtJVd5k1NhjTwUYUCmLEKbD2ozJ+7WFQQNS2dREK5G10pLLyjt?=
 =?us-ascii?Q?1LKGnQaPNozDbwJmvWzp+GK+Op2QBxXcAHqteaePylKmj8vNwc3U5QuHORA3?=
 =?us-ascii?Q?DQ2RuCRptwmsLCeq1itqAw/85maV0XSc6vuWKfUCB6v5QVSX938z0Dyw6tP1?=
 =?us-ascii?Q?5yoxvCt3bC8l7fbVj+LqFzYjCpkInXRK2TwjbfnYmhAG48YPo2mxMGX46GZj?=
 =?us-ascii?Q?3ixKndvY9KfbrFqD0+9cNF/JP1whfKc0G9nbNjRNBA2LHDZIvz7FHEPNxCGt?=
 =?us-ascii?Q?R/KNYAjqmY9MRXn7UiXLnEcIG4U2emq9bxEVVYMm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c34f1f45-b236-40cb-3622-08dc63415ed3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 02:59:19.4398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gWdF7GZJdSLLEwZqdX5ctM0KZ05i9WyVtJDPmK7Yk7Baet/O5Z50+g7LzZw10WXlKuboiaUjxj9Aw5DHjIenRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5779
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
> Sent: Monday, April 22, 2024 9:03 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
> Kumar, Naveen1 <naveen1.kumar@intel.com>; sebastian.wick@redhat.com;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 4/6] drm/i915/dp: Drop comments on EDP HDR DPCD registers
>=20
> Drop comments for EDP HDR DPCD registers as the code and conditions will =
tell
> us what can be written where.
>=20
> --v2
> -Drop the comments altogether instead of just renaming them [Sebastian]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 3d9723714c96..b61bad218994 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -69,14 +69,14 @@
>  #define INTEL_EDP_HDR_GETSET_CTRL_PARAMS                               0=
x344
>  # define INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE                        BI=
T(0)
>  # define INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE                         BI=
T(1)
> -# define INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE                       BI=
T(2)
> /* Pre-TGL+ */
> +# define INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE                       BI=
T(2)
>  # define INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE
> BIT(3)
>  # define INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE                     BI=
T(4)
>  # define INTEL_EDP_HDR_TCON_SRGB_TO_PANEL_GAMUT_ENABLE
> BIT(5)
>  /* Bit 6 is reserved */
>  # define INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX
> BIT(7)
>=20
> -#define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0=
x346 /*
> Pre-TGL+ */
> +#define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0=
x346
>  #define INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE                         0=
x34A
>  #define INTEL_EDP_SDR_LUMINANCE_LEVEL                                  0=
x352
>  #define INTEL_EDP_BRIGHTNESS_NITS_LSB                                  0=
x354
> --
> 2.43.2

