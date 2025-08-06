Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5160B1CF29
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 00:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A691310E7D0;
	Wed,  6 Aug 2025 22:41:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JoPHM2HW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E07710E7D5
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 22:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754520061; x=1786056061;
 h=from:to:subject:date:message-id:references:in-reply-to:
 reply-to:content-transfer-encoding:mime-version;
 bh=RDNON1YFHXifF/1aQabExgtXjp2BXiI5pzNAEAV5WUE=;
 b=JoPHM2HW7h1JrZAllVLuBqEX7U5sZT3wIHZcghUAKVTqc0+LQmozLZpD
 A5c8GpTyDeID2vBlZaIuEOHu4A8bIm3zqFESuqaHhj0Nd3zUydcZvojfZ
 Wzj75hXeq7jtGdMOcMbURbkDYhW5OrqCGkFg7RcshaXvH7q8MiYLLXC96
 22E9DF9mmeC5K5PqnX6z+DfCv5tYWEzcvtwx5hfz+XtND3TcH9FVqm6QG
 OofrExssjvFzVIsrCWZFYMUXvhcu+omviaqviu5H3JuyNesRzBwn5dnoF
 NfzXmJnnkaxf51NSNR4viDRGNdcynAyEJgqboiqMW8PGYRZR0NstASXa2 g==;
X-CSE-ConnectionGUID: D7pRLhrKQ3+Hx3V93G9d8w==
X-CSE-MsgGUID: uuDGtMLdQ8qwndvLeGyQDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67439446"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67439446"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 15:41:00 -0700
X-CSE-ConnectionGUID: DFDNTboZQZG36/Ut4ZvBVw==
X-CSE-MsgGUID: EBqOYn+nQI69nnXArhsHgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165231214"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 15:41:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 15:40:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 15:40:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.40)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 6 Aug 2025 15:40:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rK8RMN529Le8EfpVppm5Dr0z3e8jGTVwBRuA7dnXcteYUXgfCJaf/OYZ+9+I4vuz+LVxIGvkMg4j7ixKLSEOtvgvVd+rb/IBQgjRofl2OGbH1r+yN0XJRQcaVy82riVh1QgAtRXSE6CtQn7oGytrZ+D3xc8XMg2jZ2EbvA6upH8qjAmKzuB5K4S35htO/tRHMNTPal2RR7jEmMY4Gh/BajqsAEid+w92OUq2fHvr7GMBkU04sWJxpBiyz6pBUViRDqS3k49SEs/C+6poM05wTAc4uSCg0NZx4hHgQ30PLQmmJ9YQIFMPU02kFzKpLoJeMZvxaZXXKBMidxoxenHxmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U657ghcfYgDG8C5bsaoOOzYKoCfU2NP00sbPxY2KWtw=;
 b=SoAQ04nGH+1cpPI/UqSUR99YgQCzEugk9f4Rdb9ORGfYjoGFQ2Q/pxVi80lwocaT7FzBLoG36fKq4XrqNuJPOsAQshWzoHNSZGPblzR2qvPeDDpZ9lKcn2ViA2Cun5YdiUxbHoM6rxBh/Gnt4cOoEeNirClq7eLSllozvQyD+giRkXuD7shTbXz9n8yN3qeiP15Y7FKcCKczbPAnT5EsEoXiCLiTTyMdYyrLW0zrSmGtrORwf7zWZ08rKBetNjbs0Tw4qLv2ZTUeR3oAdkSVN5A/ll+G+o8vK5NehjNxHOL2EhTrRXm6rCr8hYpkRw2YGVP/vA/DelnVAYH9fOrOdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7578.namprd11.prod.outlook.com (2603:10b6:8:141::16)
 by PH0PR11MB7613.namprd11.prod.outlook.com (2603:10b6:510:285::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Wed, 6 Aug
 2025 22:40:57 +0000
Received: from DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c]) by DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c%6]) with mapi id 15.20.8989.020; Wed, 6 Aug 2025
 22:40:57 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Thread-Topic: [PATCH] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Thread-Index: AQHcBomEzjbwi+H7fEeFGaT2dHzu27RVqU2AgAAD1ICAAIhCIA==
Date: Wed, 6 Aug 2025 22:40:56 +0000
Message-ID: <DS0PR11MB7578F7797BDCBBC43DD906DEA32DA@DS0PR11MB7578.namprd11.prod.outlook.com>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <aJNhM0wtCqcQ1MwV@ideak-desk> <aJNkafqabqSGxy-c@ideak-desk>
In-Reply-To: <aJNkafqabqSGxy-c@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7578:EE_|PH0PR11MB7613:EE_
x-ms-office365-filtering-correlation-id: 1758e484-8b09-407e-4a37-08ddd53a4f23
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NW269yyPy7AZwlT/ApxKcHkJ2OS/PimYLanEB8u23m3taMT2xI6Gl+Tky6q4?=
 =?us-ascii?Q?U9+mdJqJEwXngCfsTvv0b1W+L6oBJ7aYSrXkGPHA+CVr3NJHMEaN5TJiS34p?=
 =?us-ascii?Q?09zqZ9m4vHkv9er8j46vsyTYe+mb21/naC35xc7bqFDv0nRU17q0x58DZ+Ba?=
 =?us-ascii?Q?AorYGM8Z60mSPag6XyEWUNJw4mGGi8keUtnwSkX8anrJ93qa0hYbystLb04K?=
 =?us-ascii?Q?nIxPdr6kzY3cQzq9sgbmCP2F3J9b95V4svO/lnFyrVx+kU8rgZXMWY05eTDU?=
 =?us-ascii?Q?Er5xYN2goq/CcTI8DWMo1CUnf0Vl5M9TEJU39ZvAIhAR/kM5GkOBncI3IjrL?=
 =?us-ascii?Q?aN8AmIhS8dK7P7kqW/Iw/UwjUNsfKEqB1u8HpIsRpCTGaDaqDhEl6GYXqVD0?=
 =?us-ascii?Q?SD0FWerummEkoYVyqfRTv1LIRW3d4wOSUMv1dahZCRH+hRKM3GtnpmJln+CN?=
 =?us-ascii?Q?jBUjn72kHp9WvUpvhme7k8ZM7xFZ9EoNY0CVEbik3Li89ChWStOr22XQgOcl?=
 =?us-ascii?Q?YSqMVzLh2MecVH1JW36qUfQBiq08RHJy32VGHNH6L0S0hzxfPvNpEkhQc5k8?=
 =?us-ascii?Q?R7EZduBBcBN3znYl3w/RSKcbxT0PmuOCnI/2c+1WinQnsu0j7XDUSfevxhn+?=
 =?us-ascii?Q?lac55K09K/TUxb8WM5aA+M4QqU1B924v8dy7CMR8FQh40GzFboMa5DVGi6sn?=
 =?us-ascii?Q?suY2opE8FQiOfWNXmGw7nhe/OP1xQMAxVQQ3Rt7XYcRiwQT62gNIE1z/pJEp?=
 =?us-ascii?Q?DF+Kdy5vnzLoyWJ5um4NHQXDaQ6afpWxEAdOjPh87/c1TrEDGbK0cgknEgCr?=
 =?us-ascii?Q?5VjnRaFplvO9YsTUWgul49+BEsatebL2uPEtL2FyBEfL4+DIaLg80k71wPmv?=
 =?us-ascii?Q?aFOwC1OnhX4nwAqyrccd0fcrvcAL5u+88+B4JDfCDMedqMdZPpOflurWO80Y?=
 =?us-ascii?Q?DgNjkTbbrdXnZAUOgPMGfvWk95mGlMsu6n5+pnPQTS7gkVStKgH12RgcekI7?=
 =?us-ascii?Q?d/Aimvb8yBGg3FynjcFJLmXLpbz2Vnm8mCTSNL8+SJVoa3XTC9pi7UgBJGyN?=
 =?us-ascii?Q?7yNpZu3F4G0rN0n8eJcKX1SLecDAB+s/JyJU+tt86TuNhmQuKVL9/IgKimDW?=
 =?us-ascii?Q?ma3ilQgUzFoXMVzwK4+fU4GrCswiWbuN+DynfY9j8lM3J9unzqaWegydcV3F?=
 =?us-ascii?Q?p2XpWQBCQiU6DoML6Vy2PfBsG+ppL1BnO+awRJkneXipWqvj0Y1G7K79agKq?=
 =?us-ascii?Q?lrel4vhnoi+LyRSVF3l3/QZVZewEfmp4uU6vcgfmMbekx8R/oxqf0J7KhxjG?=
 =?us-ascii?Q?5nOHROLSGxF6mdhpdMbLJQffOyiKsU11vBadX/NQZfbU5KEYfrRSDD985nNf?=
 =?us-ascii?Q?q7oUoWc8Jl8zfdYrGHpNswneDUAKqI6ba5UyK6ZHOidN6LOSnSQG9Efq7mOO?=
 =?us-ascii?Q?gzBP4aZAhp1IEmWuIHHVHeYw2N/rlX/PTGjff43hA8SqOuRlaLVqgbCUH79U?=
 =?us-ascii?Q?hgyeakhA51+giwU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7578.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ddNk8N/hZi22bYqNeoJiFy0X8l8uAciR+jz8KKndsTvtxgxuhAWeBY6boVIE?=
 =?us-ascii?Q?GdtueN9hoWsCL80ZhKWmoX/WnB0Ck6m1E397pEHbLV9dDkoys5K6X7XS4kwM?=
 =?us-ascii?Q?UqlRzdcNj/Dj0bD0fZ3Jaub9mZRNRHKyKeqA/k/wWSjGr9oDq109enn0vVkB?=
 =?us-ascii?Q?XBTYl/DWdH+1F8CqB8PnKPLoEwKtdAUBZGajdXbUnli9GTolhyndzx19rpMC?=
 =?us-ascii?Q?hXoazr4f3LB4gJqmTNX3dlHs3FlVz+JpRCHOwugVkVer/rycvqMvk0igHMYF?=
 =?us-ascii?Q?VyYJo0+myR0ocmhnx6j4+RCi7+3Yq/lDn/tPlByHteLCApaF31pvHv7IlwVf?=
 =?us-ascii?Q?tPJM7GIVCTd/m+fbIlueND4UjhfAkl5ef8SziqJWoJuPwvowBELo20H0AOjF?=
 =?us-ascii?Q?cZ0HyPFXKy+fxu3Hn3xM11QvBp6ivm2Fq23BaXysUFpa1RN+2uauVM/5PhAV?=
 =?us-ascii?Q?5Y6yG8b/tWbaQEZ7Pfe8wCaWJxlmMDG6dn5GDYlOOH0dUqPz0WhXKCl6b/KO?=
 =?us-ascii?Q?VbifrgPyZoPPH/gL1yZ2Y3/bZZO8I2paj6q7jkGLs5bMf02AOuXkJF26Q+vC?=
 =?us-ascii?Q?ZGkjMOyPhsmpvQFhbXZHeGjY4a3HDWRYrVbhCdwDXeWdP+gHJ9Xm5V9yhu15?=
 =?us-ascii?Q?IVthrxa0tz5DP52h8v/z0GhYX8g6YYIvg7S0hh/iIeV4ZrT7+b6yIVf5tij2?=
 =?us-ascii?Q?zqaOJNaKWh5kst4rHNVDd7QVg87v66hJT+ichG8KGiEZXWLMHuz/KbeedFM/?=
 =?us-ascii?Q?8wMyU0DeHYQl87xKvsnJk4yKO91E70dE+E5edKG9Z6m/rdYAjen/Fk/pAUUF?=
 =?us-ascii?Q?DOgJqB7wre8tzZB7OBvCEJUsJfx16+YiHVBGWT8hEYAe9DJLrMh5xXzZWjWB?=
 =?us-ascii?Q?0Vbko+axCQz1dzYZP2Q4q1jada/MmL/lqiZyqxcmXz9bMGB5IMV4/oOyd+kA?=
 =?us-ascii?Q?dj+mKKTfLWY/WRwmBiZetbQApvVdG41e1wPtSItmEgxxeUyy229l7kiPbi8U?=
 =?us-ascii?Q?6MWzoWUpT7SFfZM3Yso9z1X37MaZ3Hbg9wJ2S/ZzXkibrGkxxHMQ5NYTCGx3?=
 =?us-ascii?Q?IFtqkVTBifM3PmJuZ8FxwCsH/Ww1qk+2kYi6QMMgbmS1PZ0kapAUCd6LKkyK?=
 =?us-ascii?Q?KpshnKPPXHaaTyegtuqrrnKI6DIYBqVWfgA8ENmsEtLxYaIPdndXy77p148A?=
 =?us-ascii?Q?i7WuGGFTjy4kyo+cI/1efpa/3RrKFIHnEF9sRVZo+gac4/wiwiSCk/0Tzdsq?=
 =?us-ascii?Q?+bMLwX7sQlwbt3/naOMT6CJhAkNBw0+TcsbL9Is41/788HnRNPkSWiABZ5/a?=
 =?us-ascii?Q?tBvFXvvbemzdQolUtuPJ2PNzc2E24XcZuM/u+IVxHtgll/gGwT4OKyTJ22dT?=
 =?us-ascii?Q?SUJtE86MCTITRWwFdnoKMDQ21MtoUN9Timps8D0Jblfs3q9r7QiNll/Xz8Nr?=
 =?us-ascii?Q?laFw4KvzWetk9rfg3RD+g6RKOoo0xXtj9D5EhMyZPvSh9eEeT24bYUqQv3yJ?=
 =?us-ascii?Q?MCNb3QMhTXuDBHMm/V2iLiCoCh+8F2CQH1cs/xYg9sPi/14Vkwmxcp/lZzJr?=
 =?us-ascii?Q?3Vd4kCQ2JWzLlJFllKG1inRdJ2yR/Xy1wkVUUMAI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7578.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1758e484-8b09-407e-4a37-08ddd53a4f23
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2025 22:40:56.8631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9X9R87rNFoiX/7/ssqtTT96yZLenAiFoBL4LpzyzbIjV3X7a6ZkIj4h7em+OsGXgwS8xwYRcWCEX37PXjB3cOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7613
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
Reply-To: "20250806042053.3570558-1-shawn.c.lee@intel.com"
 <20250806042053.3570558-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 06, 2025 at 05:19:39PM +0300, Imre Deak wrote:
>On Wed, Aug 06, 2025 at 05:05:39PM +0300, Imre Deak wrote:
>> On Wed, Aug 06, 2025 at 04:20:53AM +0000, Lee Shawn C wrote:
>> > While performing HDMI compliance testing, test equipment may request=20
>> > different bpc output for signal measurement. However, display driver=20
>> > typically determines the maximum available bpc based on HW bandwidth.
>> >=20
>> > This patch introduces a new debugfs that allow user to configure=20
>> > dedicated bpc manually, and making HDMI compliance test much easier.
>>=20
>> There is already the intel_force_link_bpp connector debugfs entry, IMO=20
>> that should be enabled for all HDMI connectors (atm it's used only for=20
>> those that are on an FDI link), instead of adding a new debugfs entry.
>
>There is also the "max bpc" connector property. If that doesn't work in yo=
ur usecase could you explain why?

Hi Imre, Jani,

I've considered using 'max bpc' and have tried applying it. However, this v=
alue gets restore to the
original maximum (e.g., 12) after every hotplug-in event. So, I'm thinking =
of having new variable to preserve this value.

I will refine my patch and update for review later. Thank you all for your =
suggestions!

Best regards,
Shawn

>
>> > Cc: Shankar Uma <uma.shankar@intel.com>
>> > Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> > ---
>> >  .../drm/i915/display/intel_display_debugfs.c  | 58 ++++++++++++++++++=
+
>> >  .../drm/i915/display/intel_display_types.h    |  2 +
>> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  7 +++
>> >  3 files changed, 67 insertions(+)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c=20
>> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> > index ce3f9810c42d..cca115a6f130 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> > @@ -1208,6 +1208,56 @@ static const struct file_operations i915_dsc_fr=
actional_bpp_fops =3D {
>> >  	.write =3D i915_dsc_fractional_bpp_write  };
>> > =20
>> > +static int i915_hdmi_req_bpc_show(struct seq_file *m, void *data) {
>> > +	struct intel_connector *connector =3D m->private;
>> > +
>> > +	seq_printf(m, "request bpc: %u\n", connector->force_hdmi_bpc);
>> > +
>> > +	return 0;
>> > +}
>> > +
>> > +static ssize_t i915_hdmi_req_bpc_write(struct file *file,
>> > +					const char __user *ubuf,
>> > +					size_t len, loff_t *offp)
>> > +{
>> > +	struct seq_file *m =3D file->private_data;
>> > +	struct intel_connector *intel_connector =3D m->private;
>> > +	struct intel_display *display =3D to_intel_display(intel_connector);
>> > +	int new_bpc =3D 0, ret =3D 0;
>> > +	char *kbuf;
>> > +	const char *p;
>> > +
>> > +	kbuf =3D memdup_user_nul(ubuf, len);
>> > +	if (IS_ERR(kbuf))
>> > +		return PTR_ERR(kbuf);
>> > +
>> > +	p =3D strim(kbuf);
>> > +
>> > +	ret =3D kstrtoint(p, 0, &new_bpc);
>> > +	if (ret < 0)
>> > +		return -EINVAL;
>> > +
>> > +	switch (new_bpc) {
>> > +	case 0:
>> > +	case 8:
>> > +	case 10:
>> > +	case 12:
>> > +		break;
>> > +	default:
>> > +		drm_dbg(display->drm,
>> > +			"HDMI bpc (%u) may exceed the max value (12)\n", new_bpc);
>> > +		return -EINVAL;
>> > +	}
>> > +
>> > +	intel_connector->force_hdmi_bpc =3D new_bpc;
>> > +
>> > +	*offp +=3D len;
>> > +	kfree(kbuf);
>> > +	return len;
>> > +}
>> > +DEFINE_SHOW_STORE_ATTRIBUTE(i915_hdmi_req_bpc);
>> > +
>> >  /*
>> >   * Returns the Current CRTC's bpc.
>> >   * Example usage: cat=20
>> > /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
>> > @@ -1359,6 +1409,13 @@ void intel_connector_debugfs_add(struct intel_c=
onnector *connector)
>> >  	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB)
>> >  		debugfs_create_file("i915_lpsp_capability", 0444, root,
>> >  				    connector, &i915_lpsp_capability_fops);
>> > +
>> > +	if (connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIA ||
>> > +	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB) {
>> > +		connector->force_hdmi_bpc =3D 0;
>> > +		debugfs_create_file("i915_force_hdmi_bpc", 0644, root,
>> > +				    connector, &i915_hdmi_req_bpc_fops);
>> > +	}
>> >  }
>> > =20
>> >  /**
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h=20
>> > b/drivers/gpu/drm/i915/display/intel_display_types.h
>> > index 4d9df803ad47..e1e42d701f68 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> > @@ -564,6 +564,8 @@ struct intel_connector {
>> >  	struct work_struct modeset_retry_work;
>> > =20
>> >  	struct intel_hdcp hdcp;
>> > +
>> > +	u8 force_hdmi_bpc;
>> >  };
>> > =20
>> >  struct intel_digital_connector_state { diff --git=20
>> > a/drivers/gpu/drm/i915/display/intel_hdmi.c=20
>> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > index cbee628eb26b..0aa4044e2854 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > @@ -2118,6 +2118,7 @@ static int intel_hdmi_compute_bpc(struct intel_e=
ncoder *encoder,
>> >  				  int clock, bool respect_downstream_limits)  {
>> >  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
>> > +	struct intel_connector *intel_connector =3D=20
>> > +intel_hdmi->attached_connector;
>> >  	int bpc;
>> > =20
>> >  	/*
>> > @@ -2134,6 +2135,12 @@ static int intel_hdmi_compute_bpc(struct intel_=
encoder *encoder,
>> >  	if (!respect_downstream_limits)
>> >  		bpc =3D 8;
>> > =20
>> > +	/*
>> > +	 * overwrite bpc per user's request
>> > +	 */
>> > +	if (intel_connector->force_hdmi_bpc)
>> > +		bpc =3D intel_connector->force_hdmi_bpc;
>> > +
>> >  	for (; bpc >=3D 8; bpc -=3D 2) {
>> >  		int tmds_clock =3D intel_hdmi_tmds_clock(clock, bpc,
>> >  						       crtc_state->sink_format);
>> > --
>> > 2.34.1
>> > =20
