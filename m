Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6309425A1
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 07:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BCD110E21E;
	Wed, 31 Jul 2024 05:10:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZSCx+RFs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABBC310E21E
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 05:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722402620; x=1753938620;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c10casuvZQfcXiF+2WCVSbGqUrWz4SYkvJYA77ETV78=;
 b=ZSCx+RFshsEhv4gpvXcpr+8+vnuTwUbebkAqdjt82nT95L9Kx5eG6kJU
 6N3xRtR5kQnxm77tQF9BoEUjxU/Twk7HwI4o655P9HS5ui8hvUxCozi3Z
 pPL+AV+55jINs8s/3A7D6qX/oYXjivceOdvzjqNkPBDyqpIVbKIeEn5Fq
 wD7SIcclYBnP1w6ru4T7u7m1Zw0OWb/lyuGg76ZgqplXyiA4QDxRDmMe9
 mQhVPWESMPkkUeWvafWiShsUjuSBvvXgfGbDG99fXzPuZ9sDPuFPsuqVg
 f3P09gjWigaS8ItGdDc3hkdDq9skrjgp9lR0ohQ4g3n4QndLRmK01wG9N w==;
X-CSE-ConnectionGUID: n3B+BWaYSu2z+V7Pi43cIA==
X-CSE-MsgGUID: OsbIi6VHQHyuCevJPnJL0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="30841933"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="30841933"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 22:10:20 -0700
X-CSE-ConnectionGUID: eEx1DPLRT22wDGXMzKoW7A==
X-CSE-MsgGUID: 2jNjFIa3RuO/J+ViQhOUvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="55368074"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 22:10:20 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 22:10:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 22:10:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 22:10:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xozkIYgmsWL56pPlENGbfpZjz6qgC8RJk+ZzDFoJnOpdyd9uW71Eg34uWP0MXWe5H5WXX1JR7Wzf2eji0UA/HFYXlYy3goOpQlpwvlnn1B9RbXgqPLEOiVvXaTXZTRUTYypRAKp28N1udqkpyHaS/Bxh4AbqdXY4yoGVSElmm8MxIiSqmJxLEy3XA2L5AcBuXe+ply70C7aFBGx/kwJC9dpmCK9JgOZ5+zvdEZtuCeAauC0vQf3fuqhME2askIpjfNMldypgBthUuXrdPtwKyjAiJuxbZ0yS7yqxEqyMee0NE5a1egyW/iUPYbZKM3FhaTNbwE9TmsaMum1IEWAxOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NGZiIOjqvZpNf074tj6h0oLMcoe4NgGwu2DLg5SE8+g=;
 b=MIPpDFhvyiRsSKljVFuR7Mn9gXH0SEA1bzkDG30PzuCkB8UHSTNMz2oSjVgt0bx8+zsDj3Qny8PKLWmrYeCHXSdksy6lLk4By78kGLqAsMB0ztzxMDOfNGAhmgU6LrSNf/swGUCUZCNve60grez4hUoABs3AOpk+sj6DKJ4EjMZCNU0a/QpVNuOcoSJOFIbve5uQnr++AhQItTr3WyraZUzzHivtuLqcxkSlXgGSL5gY5m3LD6JrWwjCDqO2rDlwDHZiKXNMmoqumvfx4ptrWO433Kd5bFxFNJOBjb74lC7IM371f+UJulVncL3x/e5Ujb1l4BXypNW39bkPdlZ32Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Wed, 31 Jul
 2024 05:10:16 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Wed, 31 Jul 2024
 05:10:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 04/12] drm/i915/display: Use joined pipes in dsc helpers
 for slices, bpp
Thread-Topic: [PATCH 04/12] drm/i915/display: Use joined pipes in dsc helpers
 for slices, bpp
Thread-Index: AQHa2Orygfwf0z0vD02Q2RbdR+JO7rIQXeYw
Date: Wed, 31 Jul 2024 05:10:16 +0000
Message-ID: <MW4PR11MB67614D0990D2E92C8D0D22AAE3B12@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|PH8PR11MB6974:EE_
x-ms-office365-filtering-correlation-id: c0ef69e5-41a6-4dc1-2b6f-08dcb11f10f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?oaFRmTw5g46guJytqApI7EoGPrbY3fRtOPjMoezMQhjhAcF4A0/VaJEWzeAj?=
 =?us-ascii?Q?iEGAFGBsgQ1al/OgjxnkI6LP72fmnUKkqpK9yb98Tq/Fd292sQrwo+kLvnf0?=
 =?us-ascii?Q?c+yYbwCqIomJmt0QfzHmI5NDz1j00ECQ5hOwmwtR8JMWinMgZ0iWmSYV7+/p?=
 =?us-ascii?Q?7hi5KiAUSFD8KbuBzjOeWeZYM+tldPUruus0nnjqD2nbZxgCkY7SUij/ILj0?=
 =?us-ascii?Q?/LUjMtDl6cT0HNN5u8PBQyaVkComAHcLx04KfbzePKZM18AyyXwYLWLF+J3E?=
 =?us-ascii?Q?0yGWggrC+4r5rxE6dANCsLv/Q5aMThEYHJI2/VL8G6hSey0NzsP5UFbhnlmq?=
 =?us-ascii?Q?j2g4priWBCPlhL8b0MtwH5MQYbnbos2BTN39Wjk9NhlCIviBSWIs+jrOVxf9?=
 =?us-ascii?Q?J7sONawCSku3C2/78IUVW41S/5ZQixv9mZwkEG9oVZeoiEyVwSvuy+vjLHu8?=
 =?us-ascii?Q?BEVsXtaRzWiI/GRwMG7znqwsNHGqfFySXpe0LXapRFMj6D8l2GrWYWSxtlsT?=
 =?us-ascii?Q?aGHUfDmtTXBBdeFhlImhycvPCJ9wgkGRwEM6+pAwjCTtSEscTGA0jBAfByAU?=
 =?us-ascii?Q?CnzmFHXyAG4kFiQBhcGu0nQw6JTD018Vb5YD7R4LlTHmjcaUYOC6Fuvzn1Ne?=
 =?us-ascii?Q?bwlhDn0cLtcUO1Zsv9PiT5WKQJQ0UiV1IO2Uz3DZVwoKUxgz7GA1GG/hRGKv?=
 =?us-ascii?Q?f896HLHQm5Fh3lT5uFyinPYwN0A+6SnBV2bPO50aJHKzwN7S19GhDmpwvyiq?=
 =?us-ascii?Q?W11VCG0bmvlDiYC4iJLXYvjqHTzRxvZQ2Mcka+GtUH6WlIDCkMzjPRyH1gaE?=
 =?us-ascii?Q?UWfZQ79/eC/2Lc7qq1I6bR+LmxnqnHxZM1kCHz6S5VQchaxRVwrRmLz/XocA?=
 =?us-ascii?Q?M1e03vLlKZF9R2XkORDs/en1JkVDy4Ce/2Q2LyHgj8QXP/MD9/ww412u7Fy/?=
 =?us-ascii?Q?HB54/D2fLBJhFw7cpDax7jMj6ziTDQKEQ9OrbY/LtJRXbOl88dly9pTbPGPm?=
 =?us-ascii?Q?aItrVIO2yj4eDOHri6DYddierhxgT7cteUowpdmyqonH4HO8WZ8/ZslEAh5D?=
 =?us-ascii?Q?SoUD64fV9d0/a1zW5InGOThbaMxxL7x2N0wgmHPqsSQvsrNToblICo1k+5Aj?=
 =?us-ascii?Q?ImwZe95bjKplkLvnXtJaO+UpOS+tCmzLtjYYUGERERcCFzYqL5WTcluRok2b?=
 =?us-ascii?Q?Bf2E2W83uSDJ4THFocj9fuwHajQ8j63uWjcCJL1xM4UoKsVpYXlxvM5yTEYq?=
 =?us-ascii?Q?WMCnYscFy6ma5gT2/7ZHpflYTwgxuzGmA2J+gG2gWmmR+QGOg8vtzFtjwmpa?=
 =?us-ascii?Q?hpUxMaBl8J8g5oWO0gpyvmVulv3iRC9Z5Q+3o3UFtOtW0QUCODI0MdNy/T7F?=
 =?us-ascii?Q?iMeeGM2yTTsp8a7yr0dAWLVz/iB4ZOjL19VfGt5Mao/BuplgYA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bAGH/wBq1yPLG8JGv07+5Vc0my3eCNDKRDSImxHnWGJG4z0kpV1Ic3L+8rnT?=
 =?us-ascii?Q?UTOMxb+EHCymobcPZuIDBG/Tw8Xwqt/4jk7S+dCbzN7mSgt+NrjWhlyW58su?=
 =?us-ascii?Q?OmHdWyu9C/n6BeX2Pphd5tcIFpfpiy09sUg1xEq9215gJPDMD1M0AKTh9PSo?=
 =?us-ascii?Q?PtpgM4CoeogjnjguMInkcQp++h/QAXsYH6Za57SWftJfI+NT6ahEsBSPcsT/?=
 =?us-ascii?Q?m0zjZWt3yKNb6Lg0cVDiC0NA8lUhQ49++T/Fqo+mh3h1KpsFWRinfnuP+SKo?=
 =?us-ascii?Q?tlesWYJ5numlGfr1DNQMbVXk+y1HROBD/X4E0YTTjMkOZtk+ZvoIWv0rQ5Ui?=
 =?us-ascii?Q?Bg8HXtbs1EqO0elR7UPDxzKmhbqmsN3nTlXZ+0Hrs5AUc0R6lklwSX+jothN?=
 =?us-ascii?Q?zW3YSV7JMzFZxHQF1PyMNemj7iRbMxqdDqlvXaHyxFaST1I8wf9kG56PMtTi?=
 =?us-ascii?Q?XyNocufxwBXwGuZD6TYdMHSWGp/hplj5YJl60/JlgyQ162XtxQdtGjtSbj0E?=
 =?us-ascii?Q?/VA/FG8cgabq66qPyDg8B2+BW7I5jdzUAzC4mQMZm/1FqeVxK7LvHDvMfdYv?=
 =?us-ascii?Q?BiUMrLMfQ6kk9vpiQ5JIk6pRS/SYzB0D7y2AJ6x6XPWcMv5hclkbeD3e1nzC?=
 =?us-ascii?Q?C9qYiqEs4wr09G8uQEU2Wu6WTTy0xuYoZnoBRzE009dXHKl6ojWoDSIwGAkZ?=
 =?us-ascii?Q?CJZ6ZrS9Iz1Hqhksz+l040NoPNR5t9fpp9Pqlkyehq8jHOLTC7kahJlAxJyH?=
 =?us-ascii?Q?2uY3OXTkM2zbe1b8KO987+raQc+6/Iv7IlymuJJuzvTFp2rNPjHJNSY+557i?=
 =?us-ascii?Q?+CxkxAw4bCUMjuWGd0BpRSCT7F68y/S8W8tnNuVv+vR/aLOZ/nAwGKVYPF8R?=
 =?us-ascii?Q?cS+2gzDrdjVbHF+GD7WjXk7fdGweYcdYBpl4CSpFN1UdEC3noYVv8u4USUsZ?=
 =?us-ascii?Q?WaxjTHF8kDwwsX5amvO/y4eTJFx3/cbQP/eVK8y4SK52h1ip7Y5sqxa+Ux3Z?=
 =?us-ascii?Q?em3oSgxV6b5RWDQ5J1Zf4SMYq3oomfMvyEhNfSes3wCRLbM0BMR+iU8EIXJ0?=
 =?us-ascii?Q?+xpYniPXqiPfsNr/U2Kd1q/BupfQO1cblKESGhGAGXGOlULUr71hDANfaGR2?=
 =?us-ascii?Q?PX0k5Rla+tcs0fuiQ6zCn0MQSJhM7TcNDTvVACUNRye++yeujZx82LQT/Ssk?=
 =?us-ascii?Q?HinVpE3WCNAqQnTPMQKII8Wdm4Y+JnOS2iKz1nPIWnxh980PFdzDJbv6TP5d?=
 =?us-ascii?Q?d+D6d4qK2D+0FctPE8xXLhm03Ttj82luk9FCI8KIMu0YscmdJEUPRzd2v3fG?=
 =?us-ascii?Q?EjmBDhrPu8t0lQh4NqnikhBri4lyLfuXzlI2FjWwt9kePFsbSk8kiz481P+I?=
 =?us-ascii?Q?3jJN+d++GwcU8RylDEAd2zI6FoxoFNiqC0T0US5+jc5uiPq1gOW0VdbKehz2?=
 =?us-ascii?Q?jjI/Ir207k9Xul16kKLMW4blV/AxfXZQZOsdaV4FSjnb42Uuut/yPF5Cysn1?=
 =?us-ascii?Q?O3PgSkkwh+ImbyYwQ5yfBO+nrzQVFRvmDinwMPkRwWJ643vxMJaRoCHXbTMQ?=
 =?us-ascii?Q?h1mWOv5UtpYWtAewJI/5jH65c6z3Oqd0BwACX971?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0ef69e5-41a6-4dc1-2b6f-08dcb11f10f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 05:10:16.6053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r6sMrvNZLMIsjmoXyp4QezktAwWys+06fjTnDNw6M+0mslZWl3SjxZmXsUZWNBzrd2qLRndefJeTdf2zQxEDwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6974
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 04/12] drm/i915/display: Use joined pipes in dsc helpers =
for
> slices, bpp
>=20
> In preparation of ultrajoiner, use number of joined pipes in the dsc help=
ers to
> compute dsc slices and max compressed bpp, instead of using the joiner fl=
ag.
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 27 +++++++++++----------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  4 +--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++----
>  3 files changed, 22 insertions(+), 20 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 320d8b6d1bce..ff4c123de0ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -752,14 +752,14 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct
> drm_i915_private *i915, u32 bpp, u32 p  static
>  u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  				       u32 mode_clock, u32 mode_hdisplay,
> -				       bool bigjoiner)
> +				       enum intel_joiner_pipe_count
> joined_pipes)
>  {
>  	u32 max_bpp_small_joiner_ram;
>=20
>  	/* Small Joiner Check: output bpp <=3D joiner RAM (bits) / Horiz. width=
 */
>  	max_bpp_small_joiner_ram =3D small_joiner_ram_size_bits(i915) /
> mode_hdisplay;
>=20
> -	if (bigjoiner) {
> +	if (joined_pipes =3D=3D INTEL_PIPE_JOINER_BIG) {
>  		int bigjoiner_interface_bits =3D DISPLAY_VER(i915) >=3D 14 ? 36 :
> 24;
>  		/* With bigjoiner multiple dsc engines are used in parallel so
> PPC is 2 */
>  		int ppc =3D 2;
> @@ -778,7 +778,7 @@ u32 get_max_compressed_bpp_with_joiner(struct
> drm_i915_private *i915,
>  u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>  					u32 link_clock, u32 lane_count,
>  					u32 mode_clock, u32 mode_hdisplay,
> -					bool bigjoiner,
> +					enum intel_joiner_pipe_count
> joined_pipes,
>  					enum intel_output_format
> output_format,
>  					u32 pipe_bpp,
>  					u32 timeslots)
> @@ -824,7 +824,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct
> drm_i915_private *i915,
>  				intel_dp_mode_to_fec_clock(mode_clock));
>=20
>  	joiner_max_bpp =3D get_max_compressed_bpp_with_joiner(i915,
> mode_clock,
> -							    mode_hdisplay,
> bigjoiner);
> +							    mode_hdisplay,
> joined_pipes);
>  	bits_per_pixel =3D min(bits_per_pixel, joiner_max_bpp);
>=20
>  	bits_per_pixel =3D intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel,
> pipe_bpp); @@ -834,7 +834,7 @@ u16
> intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>=20
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
> -				bool bigjoiner)
> +				enum intel_joiner_pipe_count joined_pipes)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	u8 min_slice_count, i;
> @@ -868,14 +868,14 @@ u8 intel_dp_dsc_get_slice_count(const struct
> intel_connector *connector,
>=20
>  	/* Find the closest match to the valid slice count values */
>  	for (i =3D 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
> -		u8 test_slice_count =3D valid_dsc_slicecount[i] << bigjoiner;
> +		u8 test_slice_count =3D valid_dsc_slicecount[i] << (joined_pipes /
> 2);
>=20
>  		if (test_slice_count >
>  		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
> false))
>  			break;
>=20
>  		/* big joiner needs small joiner to be enabled */
> -		if (bigjoiner && test_slice_count < 4)
> +		if (joined_pipes =3D=3D INTEL_PIPE_JOINER_BIG && test_slice_count
> < 4)
>  			continue;
>=20
>  		if (min_slice_count <=3D test_slice_count) @@ -1201,7 +1201,7
> @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	u16 dsc_max_compressed_bpp =3D 0;
>  	u8 dsc_slice_count =3D 0;
>  	enum drm_mode_status status;
> -	bool dsc =3D false, joiner =3D false;
> +	bool dsc =3D false;
>  	enum intel_joiner_pipe_count joined_pipes =3D
> INTEL_PIPE_JOINER_NONE;
>=20
>  	status =3D intel_cpu_transcoder_mode_valid(dev_priv, mode); @@ -
> 1225,7 +1225,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>=20
>  	if (intel_dp_need_joiner(intel_dp, connector,
>  				 mode->hdisplay, target_clock)) {
> -		joiner =3D true;
>  		joined_pipes =3D INTEL_PIPE_JOINER_BIG;
>  		max_dotclk *=3D INTEL_PIPE_JOINER_BIG;
>  	}
> @@ -1272,14 +1271,14 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  								    max_lanes,
>  								    target_clock,
>  								    mode-
> >hdisplay,
> -								    joiner,
> +
> joined_pipes,
>=20
> output_format,
>  								    pipe_bpp,
> 64);
>  			dsc_slice_count =3D
>  				intel_dp_dsc_get_slice_count(connector,
>  							     target_clock,
>  							     mode->hdisplay,
> -							     joiner);
> +							     joined_pipes);
>  		}
>=20
>  		dsc =3D dsc_max_compressed_bpp && dsc_slice_count; @@ -
> 1995,6 +1994,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp
> *intel_dp,
>  	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
>  	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
>  	int dsc_joiner_max_bpp;
> +	int joined_pipes =3D intel_joiner_num_pipes(pipe_config);
>=20
>  	dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
>  	dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
> @@ -2009,7 +2009,7 @@ static int dsc_compute_compressed_bpp(struct
> intel_dp *intel_dp,
>=20
>  	dsc_joiner_max_bpp =3D get_max_compressed_bpp_with_joiner(i915,
> adjusted_mode->clock,
>=20
> 	adjusted_mode->hdisplay,
> -								pipe_config-
> >joiner_pipes);
> +								joined_pipes);
>  	dsc_max_bpp =3D min(dsc_max_bpp, dsc_joiner_max_bpp);
>  	dsc_max_bpp =3D min(dsc_max_bpp, to_bpp_int(limits-
> >link.max_bpp_x16));
>=20
> @@ -2194,6 +2194,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  		to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&pipe_config->hw.adjusted_mode;
> +	int joined_pipes =3D intel_joiner_num_pipes(pipe_config);
>  	int ret;
>=20
>  	pipe_config->fec_enable =3D pipe_config->fec_enable || @@ -2243,7
> +2244,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  			intel_dp_dsc_get_slice_count(connector,
>  						     adjusted_mode->crtc_clock,
>  						     adjusted_mode-
> >crtc_hdisplay,
> -						     pipe_config->joiner_pipes);
> +						     joined_pipes);
>  		if (!dsc_dp_slice_count) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Compressed Slice Count not supported\n");
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index a8116210c618..acd05dc7b8ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -142,7 +142,7 @@ int intel_dp_dsc_compute_max_bpp(const struct
> intel_connector *connector,
>  u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>  					u32 link_clock, u32 lane_count,
>  					u32 mode_clock, u32 mode_hdisplay,
> -					bool bigjoiner,
> +					enum intel_joiner_pipe_count
> joined_pipes,
>  					enum intel_output_format
> output_format,
>  					u32 pipe_bpp,
>  					u32 timeslots);
> @@ -152,7 +152,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const
> struct intel_connector *connector
>  					 int bpc);
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
> -				bool bigjoiner);
> +				enum intel_joiner_pipe_count joined_pipes);
>  bool intel_dp_need_joiner(struct intel_dp *intel_dp,
>  			  struct intel_connector *connector,
>  			  int hdisplay, int clock);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 3f45ac7ca4d5..31a2acb7fa11 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -101,11 +101,13 @@ static int intel_dp_mst_bw_overhead(const struct
> intel_crtc_state *crtc_state,
>  	flags |=3D crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
>=20
>  	if (dsc) {
> +		int joined_pipes =3D intel_joiner_num_pipes(crtc_state);
> +
>  		flags |=3D DRM_DP_BW_OVERHEAD_DSC;
>  		dsc_slice_count =3D intel_dp_dsc_get_slice_count(connector,
>  							       adjusted_mode-
> >clock,
>  							       adjusted_mode-
> >hdisplay,
> -							       crtc_state-
> >joiner_pipes);
> +							       joined_pipes);
>  	}
>=20
>  	overhead =3D drm_dp_bw_overhead(crtc_state->lane_count,
> @@ -1393,7 +1395,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector
> *connector,
>  	int max_dotclk =3D to_i915(connector->dev)-
> >display.cdclk.max_dotclk_freq;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	int ret;
> -	bool dsc =3D false, joiner =3D false;
> +	bool dsc =3D false;
>  	u16 dsc_max_compressed_bpp =3D 0;
>  	u8 dsc_slice_count =3D 0;
>  	int target_clock =3D mode->clock;
> @@ -1439,7 +1441,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector
> *connector,
>  	 */
>  	if (intel_dp_need_joiner(intel_dp, intel_connector,
>  				 mode->hdisplay, target_clock)) {
> -		joiner =3D true;
>  		joined_pipes =3D INTEL_PIPE_JOINER_BIG;
>  		max_dotclk *=3D INTEL_PIPE_JOINER_BIG;
>  	}
> @@ -1468,14 +1469,14 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
>  								    max_lanes,
>  								    target_clock,
>  								    mode-
> >hdisplay,
> -								    joiner,
> +
> joined_pipes,
>=20
> INTEL_OUTPUT_FORMAT_RGB,
>  								    pipe_bpp,
> 64);
>  			dsc_slice_count =3D
>  				intel_dp_dsc_get_slice_count(intel_connector,
>  							     target_clock,
>  							     mode->hdisplay,
> -							     joiner);
> +							     joined_pipes);
>  		}
>=20
>  		dsc =3D dsc_max_compressed_bpp && dsc_slice_count;
> --
> 2.45.2

