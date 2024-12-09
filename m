Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EA99E9573
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 14:03:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7C210E729;
	Mon,  9 Dec 2024 13:02:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YSGq/3qL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8813F10E4B5;
 Mon,  9 Dec 2024 13:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733749377; x=1765285377;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3ZOBL9xWDkyjUH1fL26HJgQ/Ns9ddUt+0G7NOH4NDOM=;
 b=YSGq/3qLe7iPk9dD0B1LUAT4MQwNNpeYKkZ0VMMOzq17wdjwy/xq/gRQ
 SSswQ9f2W48N0+hqHrjuWVyHZXr7aJyOKYfIjCbj2UZBvCfZch/rGZ4nr
 sV+XZGigiQ0FPIFjRvJf/MRTNYdtmE2AtDU7eH+68ga6/ZLHY/bnwRLXE
 gYjp8cwzRj8IKPbTIh1F6NRsRbDHElwQRzupkK3w/0H3NRgi74OC5PyTn
 5AHFBGnIiEI+ekwlaM8LNLgoxOS2eLEkhkEo8ltGqpU9/nLMM90AKpZWI
 h3xNQA3Bnm0+jKEdGRqHMmVcmY0hp7ucTxcuaKasv/0K0nhE5HFci3/g9 A==;
X-CSE-ConnectionGUID: qg854h7gRQqbD/LhtUKLIg==
X-CSE-MsgGUID: PS0Dca9CRhKMa7gXUZnJPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="51457909"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="51457909"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 05:02:56 -0800
X-CSE-ConnectionGUID: 3TprZWz1TR6h6Sb1Sn5JVg==
X-CSE-MsgGUID: 7nXjfiVhRPuXSCDI/k6ISQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="95528947"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 05:02:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 05:02:55 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 05:02:55 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 05:02:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MXgD+fWLb2bMf2Q77uGf/eaa9adn4ey7SNlZUn3mlKI30xV0YnZBStDDj0s9fh+eE994399N3oqR5MoC5+Y75icsPoK5/xVU9nAUyxMmuem45faGs87ecWeXmje2pNVfwGKGEyuIjbH8wkG/RPYqiwNxz1cuwAGWr2uyBRT6uxD153XVeRCU8bj9415sjSXsdx0Zp3/i/v8fDvxhb9MjpBNJ2AiikTkMbW6WLtgMH1D+uiOYz41cKy8RIc3GKh2u8Qtsm/txzPfQ1skucgm//G7mLF9sHGSXuJ+kK8Oa/S9O9cvRM1AhjY62ymzB+BJNJrlmspOv2bMPBjZNdvWSmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=df7eNuAsd9nZtF6o2T1JbKwZJoP8n6HOiar0c9cPZRQ=;
 b=Jl6LHY5+O3MJtEONNVMP4b1sj6Q5k7V/GvzWQJCJWEnq1YvZ+3KLSTyStJCgifXUDgm5UwGKclHvsM3mIRzCAdMCG1UqHDdPIw4djJqMh5JrJeRgm5xFXYkVVSiwda0s2cdEMX9m27+7GXiBC06pSME5KGmtjwOia9S24IvU75pTsq1FkzfCP7xw7hVB1zYk4vVgprgXokrBpLQLTrjE6oeshLhckXCU6G3xIZhhZjOPeOfNJG7ZAFAxYkrN/CQ3Sd5meRxSk0bzhyNKQ/yk/0Yg3Ze+yISJbf/EoQlerhsTnmw+hiA5JuQ6/qDyycKHfheRbpXJ10gBjPWQ04rfJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM6PR11MB4546.namprd11.prod.outlook.com (2603:10b6:5:2a7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Mon, 9 Dec
 2024 13:02:49 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8230.010; Mon, 9 Dec 2024
 13:02:49 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>
Subject: RE: [PATCH] drm/i915/pps: debug log the remaining power cycle delay
 to wait
Thread-Topic: [PATCH] drm/i915/pps: debug log the remaining power cycle delay
 to wait
Thread-Index: AQHbRmXcjpKhPLkV10KrNCH6PH0Pq7Ld52sg
Date: Mon, 9 Dec 2024 13:02:49 +0000
Message-ID: <SJ1PR11MB61293016527A2509AA597AACB93C2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241204160048.2774419-1-jani.nikula@intel.com>
In-Reply-To: <20241204160048.2774419-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM6PR11MB4546:EE_
x-ms-office365-filtering-correlation-id: e15e9a0a-8c42-4458-e680-08dd1851c8ac
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?URZIFAkw24mb3pRZKENCOBXqka6zbGLklLRhldkqrYDZCdTpNgwnK0dRn03g?=
 =?us-ascii?Q?ZprIvj4KWwNrlCaaWf0Z9FjFkPmyGjCWXYXG0/CMhjBNsjEV1+FOWPnTUgmU?=
 =?us-ascii?Q?TOk5cS2ybTckO6JLqVKpk0R0CrVLBo62UvEXlBDA7F60/WKGoTbp5IuBLK35?=
 =?us-ascii?Q?a4E2au+ozuzMhZ9K/eCySF8/5cror/fKxBzD7kJw2WTCksVNhktBg4ECYpi8?=
 =?us-ascii?Q?sQaJEc1cXman7AiG9fne25r0MU3mvkwbB0miFBIoiVi1F2LsJ52wNC6plFHB?=
 =?us-ascii?Q?R0eAH9RPdkfHUgSITjzVUuY5+uMerQWMNcpiZ/MseK+ee1xt+8B2N9Yn9VwX?=
 =?us-ascii?Q?2VQlC73Wphiy8JBiHLtuaKX0Xhw1rsvuDfGcNIeTgPxjq3ZayduDBkoSJrb8?=
 =?us-ascii?Q?mCDo3fBK+wOG3wl1Ei8cQMajOYCouTHkUB2PK0Nn7n3eAZahJ4rR7o47vPyY?=
 =?us-ascii?Q?k6LLUNkwpAKMNKWSwQDknlQITMCyJRmVVY4Alzug10YZY5+E/HiS+DSkzYAX?=
 =?us-ascii?Q?gvst/5NeqBqDd9v9GkLfs2VoM1WMnGTY7PayzTXMGia1iY5Dy/CD/840QFPy?=
 =?us-ascii?Q?XP4YJQOy6irbbzoYl+gZIWCXVnXtrU15HPXCPnWA0/tk3tDMaz5WEYUwVoaQ?=
 =?us-ascii?Q?DWdM9cEcj5fRyFh9eZke2PA3oxHZiQXmLlMPKdQ15crpFg/cxMYZ7jF1IWZa?=
 =?us-ascii?Q?SJLYt2wL4X9d1bByCkpq9yVdSQrYHVX2jUjyJzzyui2xGv6p6owFEnKUDDKs?=
 =?us-ascii?Q?DgiBrSbEf6D+5CkzMkLv9PyEOgXzOVce6+kxCy7uB4d2/1ncbZ0ZrqzI6d3F?=
 =?us-ascii?Q?sIML+GHkhxED4+MHm7mzPpitLPXlYEo4b3Zx4EZcJ4I1A20K+BaR35bDOqbl?=
 =?us-ascii?Q?8WJWRIM+KbXawgGwLKke9N7ZGKlNgb0Db/N/vuRMwlh6PgRxbYOiiNchyQBr?=
 =?us-ascii?Q?LNq5EdQaNZzMr3cMI+3GzvP5xbaHb7GFbc+uGdXvTJdiusp4JT4xUytOVvDp?=
 =?us-ascii?Q?GEX1s1qBtf6fpYr8YQMvTmlpjSnrJVVzSXUpdpDukVNpAIW1Vx2KCjjD9Nez?=
 =?us-ascii?Q?rfzaFb5G3ndQCZzSHCQeSGcUbZAP0LCPUEUXozTEnyR06GlLp2H7ALsfIlGj?=
 =?us-ascii?Q?RFMgIfv1h4vLaI8MCLjbwkVP79S/I8mZE4/AW8F8DZUFKcR+gRmZYN4k5Xtg?=
 =?us-ascii?Q?ijb3HKEFSyKry83uUXOV2I9QexHQh03I7vuo2AjCaWh8heoR0KoQIP9t/Su+?=
 =?us-ascii?Q?J1lRILdZhr49uJmIEiQ2qcj3HBGN2GZOTUF9K4zd0h7yVat8LNNPjTRZcr/E?=
 =?us-ascii?Q?A3ntBrOPedbB+YZSH+1min5f8aI07RvzOikQenLerHSlNQkqjM68Jg24AJ+A?=
 =?us-ascii?Q?yEmcXAI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r3zML4NPYsWvRv51hSrq9R9YPJ/aqM+QJsp2Qds/d4PgSWKdIGhrn1sHmIQh?=
 =?us-ascii?Q?X1arS2SaPJ056dL+9yaotbJhAKY29ysqNbiwhXrTVEqRWsCulv6sxibha3Sx?=
 =?us-ascii?Q?0ooXIquCF0tOkQxPYasPy/MGVvcCSJBL6EsCENwoC+D4BNpJ8hVdyE2xqE6r?=
 =?us-ascii?Q?QvdtK1NhFEBbvqHiDoXqMbennQ7GjJ7v+/umBnyKex/9WPhDTsdOrRPcV+9j?=
 =?us-ascii?Q?MskKKryfXj8qRXXSUup/uIZ6yIxDFdTu7TxVE3S57r1O7j9sPxwKFBH7UfdX?=
 =?us-ascii?Q?h+wE+GZgZupEiz1C5rBykjrUeMNU59UKgRXyzdJuM401iFWGhExsc8UheihB?=
 =?us-ascii?Q?Y2OcELV1uB0mYO0Cwc8V1HP+pOAJmem4QKPPw5kBEi5oLSFV2EwTPkOWGi0E?=
 =?us-ascii?Q?SScOMLw5y7pqxCluDSOlp+XK09jjiAf3yjiZ2HbO3C9hJcvEYI9l2gcqT3lW?=
 =?us-ascii?Q?bwyw+AhiXsKj4rLy/7kyugkkwR1xdy1DrDnmbxCmxeK5fATw830nbucAV63g?=
 =?us-ascii?Q?mhOZuLA+Rr4gV790AlU4gLTK0l+kxg1F0/8BugKFohDETDBwQAAqZWSlq+XZ?=
 =?us-ascii?Q?3taPf06LJYLfCJ3OqPQ1GHVdUxXeJaMc/ZecPvAD5UgaPp23vEcIiORU+JNQ?=
 =?us-ascii?Q?NUOMo25M0zy5FdL2roJdY+0G5SDAQLEgikabFr9C+UxrTJg10kC4/EdQJHPd?=
 =?us-ascii?Q?7oaoDZdla831U+Jlik75qB8ka5XVo5p52OpX5bsLQsIZ0tvQNEHFDZwU9u3g?=
 =?us-ascii?Q?1uDo7me93jrts0/5OoNZ8MT1gSmwpuXKWPHaSmO+qss9rj5Hygi+sHjBhbT+?=
 =?us-ascii?Q?LZsoV8mrSnkF28oisvdAHPUy/rQqjOIqtDy8zcZGF3FRWi1pWSKTPc1xYI50?=
 =?us-ascii?Q?AuPBhvdB6CbwZd2e9+v6mpdXUPSRmeS+/vW/4wWgo7RJKfoZxdlLGgdw5ikl?=
 =?us-ascii?Q?GYN7oarcSoNf3+MeFeRiky2ed7kv3YPTMS0odGKVsB01UuRdp8DI8mjAot1M?=
 =?us-ascii?Q?gtRS+ylVoxl+3JK+ivpi1WP/9i0gwGYuZZgw9zy4Bdh5i6Oq/YwxkuJ1tU2H?=
 =?us-ascii?Q?7uasLd35t5L+Pvk0cN/f8UQRFnglo2/Tz/epTI50l8N1G7wyDZHqV4h0VM8G?=
 =?us-ascii?Q?5GOpOTgYS2qgRVpysecGiGXlYm2YWdkVYrIFheXuUe0S4y6CrWFPwvm4F4kA?=
 =?us-ascii?Q?UjIEpCe2OSaZny92Z7zL37MR76vL8yjBVxVZq0kSLhfAdJMypfwQ8DMAsYLl?=
 =?us-ascii?Q?Fp/9zcIIAK4VVvxrVFTOqp7Ys6d2BzA8a8sNvwxMnLPtVGMwVTtajt83iNAu?=
 =?us-ascii?Q?OFrfWbrmoRCaArLz667WPm4XZxZXc73aSbYuUSMup7baQMzcNQLTBKoUz2A1?=
 =?us-ascii?Q?yIs9Dn78XnWQRtsZpSYWM7wNykC9zGiedcGiirI8Fd/N0Ns3paR467+VOs4e?=
 =?us-ascii?Q?1sKbhc2S11Stjt9Q1FK8bBO/zlg79LUgUaKOPIuRE4Y0R5pO4t1lb5N7HLa9?=
 =?us-ascii?Q?6Ae2yYTW3KNH9HGmH0Qpce41yhZETvd54GwjBbPo+/F+Ln2LmFGyDqwKzJ+1?=
 =?us-ascii?Q?OenwYZJ92AomWvcKFYjUmH8pGAvpacnR46e597CA/cawFOX1Gf3RFhr9+gP5?=
 =?us-ascii?Q?cQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e15e9a0a-8c42-4458-e680-08dd1851c8ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 13:02:49.4434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: el7vsLxphhAnEg+1gx14qbIWT3SOvzdnRAF/PP+YiR5/PGETf1b7LfflNNAoraUAvtX6yBPj3jWD8QLuHD44KXDuaI3KDIB1cWpTEChPwR4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4546
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Wednesday, December 4, 2024 9:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Paul Menzel
> <pmenzel@molgen.mpg.de>
> Subject: [PATCH] drm/i915/pps: debug log the remaining power cycle delay =
to
> wait
>=20
> While pps_init_delays() debug logs the power cycle delay, also debug log =
the
> actual remaining time to wait in wait_panel_power_cycle().
>=20
> Note that this still isn't the full picture; the power sequencer may stil=
l wait after
> this one.
>=20
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13007
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>



>=20
> ---
>=20
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> b/drivers/gpu/drm/i915/display/intel_pps.c
> index 7784b3b760db..bfda52850150 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -668,23 +668,24 @@ static void wait_panel_power_cycle(struct intel_dp
> *intel_dp)
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	ktime_t panel_power_on_time;
> -	s64 panel_power_off_duration;
> -
> -	drm_dbg_kms(display->drm,
> -		    "[ENCODER:%d:%s] %s wait for panel power cycle\n",
> -		    dig_port->base.base.base.id, dig_port->base.base.name,
> -		    pps_name(intel_dp));
> +	s64 panel_power_off_duration, remaining;
>=20
>  	/* take the difference of current time and panel power off time
>  	 * and then make panel wait for power_cycle if needed. */
>  	panel_power_on_time =3D ktime_get_boottime();
>  	panel_power_off_duration =3D ktime_ms_delta(panel_power_on_time,
> intel_dp->pps.panel_power_off_time);
>=20
> +	remaining =3D max(0, intel_dp->pps.panel_power_cycle_delay -
> +panel_power_off_duration);
> +
> +	drm_dbg_kms(display->drm,
> +		    "[ENCODER:%d:%s] %s wait for panel power cycle (%lld ms
> remaining)\n",
> +		    dig_port->base.base.base.id, dig_port->base.base.name,
> +		    pps_name(intel_dp), remaining);
> +
>  	/* When we disable the VDD override bit last we have to do the
> manual
>  	 * wait. */
> -	if (panel_power_off_duration < (s64)intel_dp-
> >pps.panel_power_cycle_delay)
> -		wait_remaining_ms_from_jiffies(jiffies,
> -				       intel_dp->pps.panel_power_cycle_delay -
> panel_power_off_duration);
> +	if (remaining)
> +		wait_remaining_ms_from_jiffies(jiffies, remaining);
>=20
>  	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
> }
> --
> 2.39.5

