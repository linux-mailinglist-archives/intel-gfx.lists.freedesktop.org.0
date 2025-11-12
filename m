Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D50C507E1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 05:13:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7185D10E18C;
	Wed, 12 Nov 2025 04:13:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fdxGXqet";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE8110E18C;
 Wed, 12 Nov 2025 04:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762920792; x=1794456792;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EsUfhAwCCWDq48maQu1bz8p+V/43Ew27qlygVvGUs0s=;
 b=fdxGXqeta6Io9/Jp0GGHP/qbUkgSGqdWdnXYd1cfpDEnN9R3WGIp2+DW
 Ugd4EffulxIGS3gdctoR7xqysNeXz3eSq1a5x6e/KVXU0NgGUkGM3bo0S
 XvXbGdua1//MpUaKFRWJgvTadoKcxYbNx5LgLMzMnjpOqIlbR+FixpM/K
 BDaptC6vEPMo3ZiEKx/rH1JYvICn7CKYVRO/5wSkCVRKkGdIKRtcqfrPD
 m7NPDInHNOBNSZLxNzHGLSm/Osx9K1sAuPZExUfqUcxWgwRec5RO+FYiU
 IMWm2m2IuyTVCYolGQT0ZVE002rJbmAfxawZSAjg4r7ROWzmbUuKVny7d g==;
X-CSE-ConnectionGUID: QXVIGOZKTaWLR/hLuPRWEA==
X-CSE-MsgGUID: QH8f7M2GRNipgbyv4fKZlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="65073317"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="65073317"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:13:11 -0800
X-CSE-ConnectionGUID: 627QbKGmS5Gu6EOMFbUlgw==
X-CSE-MsgGUID: PF5HKd3oSLmqfpC1asdeeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="188413721"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:13:11 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:13:10 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 20:13:10 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:13:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JsbaUDierNNtwkcnI+GSWRnOjZC6EPuFckT0EJr81OttChqebOeIsWtGgpQZ07M5IyImo7Vbr14a/xeFnjfdhayvOtRLm9S0Hr/ACJWACl0DknDlHc3hy65c4Xx3tLJXUz8Skch5BiFRgN09oXESDn6LfjybpoJUedDc7FN83dR/b5nn0KWIdT6Aru9XWHvK0XmBsAJyw8udX3yiR3HlAZa7Xws08QSLnhrvvkZ1SnpsOiGkur5Q8cB6arqNDdxyETc9jX59httVbMg4GokFm9uM+2YG8AMeRnURP1SwGxi4DSXtXChQbExL04DqQK9cvBE9+SUQdTnXhHdP0w7bbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9wUux+KMxh8wiK4XIQq/2vaL8zdDlRt1yLtV9wDYxE=;
 b=bLhCgZr2TB6TmFQDNTF+Er6pQrFquxmw7y4LFnauO3xxTFXT1pq3BXNBJqd09Nmi4JWrJ/ggU2T52EZ+49iVz21ivh47zdvSV6XUaUuB1c25YvbyY6Kse3oLUDNqSl+p9S1zGUZnR/MdQwk9+VYyWGQnOJYBtt6HPSWPs2V3Owz+4iPmMN2Usol21K1CEPfbPoIOZ5tTBTcEn2SAhYgr2aeqDRzxIhi/MizuLNXTIPRtbz2H2qPal88ous+rhZk2rWL5Sjwszz6g+yN3foW6X5/QQDI6yYr0zyTwc2FxRJ1QVUmPsNz8YqGPNW7vG7KIFcmTCnTwAMwC8Tm7xt5BPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB6667.namprd11.prod.outlook.com
 (2603:10b6:303:1ea::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 04:13:07 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 04:13:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 10/32] drm/i915/display: Read out the Cx0 PHY SSC enabled
 state
Thread-Topic: [CI 10/32] drm/i915/display: Read out the Cx0 PHY SSC enabled
 state
Thread-Index: AQHcSlUizZUc065wU0ql/1N3jSuvO7TugIPw
Date: Wed, 12 Nov 2025 04:13:07 +0000
Message-ID: <DM3PPF208195D8D7B39D514E2B7742279A2E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-11-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-11-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB6667:EE_
x-ms-office365-filtering-correlation-id: ea880119-dcf2-43c2-1964-08de21a1c8b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?qGd/pFhLrNcjp6OQ43CJD85wGtzWdMFWDsuA0TtOhsz94kVboIbYvlBWVy2v?=
 =?us-ascii?Q?4wcWrxsv1sdHAblhUqd7KgQbpKNe0pkKygWUU0PXZQzQ5AwX8TpkirthmJ4K?=
 =?us-ascii?Q?yPxqFo0WyNlZi/G0MMzGWpfB7SANWR3FdOCn/YBLIurEBGrrTCdLigeCc5QP?=
 =?us-ascii?Q?Ev+f+6UCeqsuk7h/lqiiCBDUyY5l5Sy43Kiwqzu0KnQR5UVr48/v04PAqly4?=
 =?us-ascii?Q?6RQoEZNp6mK9+amZmmEDNM/AwqIgyZEB3qEyHonm7KgvPR6PJHINdjDS1NgY?=
 =?us-ascii?Q?fIh8FM/UfA5diN6pvrcveWYZClUr/pEeIX06wyaSSzn2pnR3V4ynixw+wFDX?=
 =?us-ascii?Q?nSGbH2dJxvcUl11/VchT3/HTIWpDlNM8TIFBaXhvM2RlaXe3A1kETymgnm6w?=
 =?us-ascii?Q?mcJefNO9tuprPp6XgEQ8p+ef6CxsGF8PrPEPD1MqnyWJKo1Dg8OQ/kSvfB00?=
 =?us-ascii?Q?tNaHJtyj++r2+cPeAei1jI3jiWjsCy41Jen/Xgf4AsZTiRUtv+4/C2y+rYhb?=
 =?us-ascii?Q?U6KqW2CkgFCvXr9MrLjsvLMvd26PsfbXT/YvZqop46LhIfus/d08uPgTf6bu?=
 =?us-ascii?Q?+i4S/Qk20L+2OWwvZb6kjwVvGO09NPq1rqXeSEWKiYDbcxoaJ6ZFm9MFymEI?=
 =?us-ascii?Q?qox5m1O1tTb4joSfH+KOAm7XUALjJQo3Z1lICghG3zZc3XxC1I/kR6MaSmew?=
 =?us-ascii?Q?K6oellJt0pOYqLTGfxkd2HTWW87fspuuCSSmR4iH3mS3rJp27E3w5fNDfxCJ?=
 =?us-ascii?Q?6obyhKr0harxSiS7WMsmGebp7+Vyo2b69Fek/n2MDhI+MGrvG7569gZxioZS?=
 =?us-ascii?Q?hAOp0AcreNMJ57Ah4YSKd8mJaWoy16og3a+87hcdd2x2p43mA2IT8jYZ0v/2?=
 =?us-ascii?Q?+9CK/dtZ8uz2zxa+qywvGB+9mjHiKO7paLfCH04nOjQmMyaQT2ckLuJbIDwd?=
 =?us-ascii?Q?2tKpmqUCISonJUo0RE8n3hchSpW6HtsAFUMAnfGBVhaXsT2GGPfaT9fx08Y7?=
 =?us-ascii?Q?V0ofi8GfzuctAwIpfIZ44/NwGaeS+FfBBaqUvzqsWpHkvy05vKc6zBBxSm3Z?=
 =?us-ascii?Q?ia26KgT6BeSP/77jkkx1a1ClsDBpfPJQMTPo3bsBZbzyHulWquC/+6bSuBPy?=
 =?us-ascii?Q?vYQld7PRMpRHav/sFG5jxIH2s3pij0lCNh5cR90oY0wtfaSdYkkqtZ7EzZbg?=
 =?us-ascii?Q?Znfonqm/DjR2sLd1s1pq8mgMblfJylVzCG/lMhkeNvxMf1YYApmtDlahIvR2?=
 =?us-ascii?Q?Ab+UJuf628WNmI2B+pQ454ro6ZNAUvWk3Ph5qmIAddI08NxyaPdVK+FaDZ3z?=
 =?us-ascii?Q?1MK/eNCOA8P54aRawWEwfQGGGOEbfbJTkDl5/HqzGOEC63x3drPjbg5bwXNd?=
 =?us-ascii?Q?QlZ0hXv79UYXqcWWecO3EcXhdZNoP7LLHzwUY1SnYIIkQpggnr69Q+EDC3cz?=
 =?us-ascii?Q?ipYeENbg2v+d3MXu+aMUwzEXLLJsdUENqINry2OExRL8i/JS59vHrbsn1xG0?=
 =?us-ascii?Q?0LGNbbPcrffH0mGosQfsbSwjfTYbz3qHaVmN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T4XB5ayRO0U7eMzd5txURxNLwneF+RG8GSRrxDzfxFpaOkZRSEyNsXpjcE3F?=
 =?us-ascii?Q?Ptz1XDquxPjHYaW7MGaG3IvWgzQeRkE3tzoHSBzdGzMazbH9B7FZxoQPZ2tC?=
 =?us-ascii?Q?Nhu8ogUXB2fC74jU8U/f8SU9q193wpK9NI+hZuTMZzJrPch4WQ52aQ2Fd32N?=
 =?us-ascii?Q?7q+N1vkLJle9usE+0btX4Cm5y8jIok2Qv2FIVQ3fv+coi4ef9aP5H/CFmY9M?=
 =?us-ascii?Q?j1ZUdWdCFeeqGnGlNQ02KSSjPCxS5Ygk4/KP3nBkuxQUUQxw1Y/l8Cm4E/Zv?=
 =?us-ascii?Q?DuvPrqpBWElQYjs9zfmyfV7cyhu8aYBu2+keiKwAcK5Q9igKOuGkfcK8Vpjc?=
 =?us-ascii?Q?321YxXS0NE5435q4NIp9k4g/jBwqHiZl2WzIkVxJ/XXShp/bCN28JxDvYr4e?=
 =?us-ascii?Q?z1N9sBrMARszmjnnSXxG9D0jVIf9+qnCVT7fAJMdXiiCBeOBVXBj8YycSGO/?=
 =?us-ascii?Q?UdE+8PNDY4czCqdACbc7l5C7ZMzoBqDOrV1Gjznnn+jAEVFKLayNYGFVm0EK?=
 =?us-ascii?Q?WfTlLjIjGUazZpTaW1pwxsiG69KYGsATpJvfjQhVQ97Bt7hDL2rnf0bN1324?=
 =?us-ascii?Q?6vKJjEPGlU7WDYZdLQ+6CM8YoQ2Yx3kJfWVh/hKyzvm1Uc8CUjnJ7+vTzKET?=
 =?us-ascii?Q?G8A3ilVN0DTAy3TzTAmdIbaBox90Utt3a6ucwp+skRK1phoMZWZZaSvv3TKb?=
 =?us-ascii?Q?mlhssOUrKL/lQMp5XiHerKjAfJOeqAc8FIoTuHeh1+DmH5x2BNrIlaALB4k0?=
 =?us-ascii?Q?hnEx5IPmj7vv0s8GPqPKuyC+OjkSxTvNY4lEo2LuOPh3ocZLz/DjuaJhIyhB?=
 =?us-ascii?Q?0f6Ki2+vTZHZhwIebcYB1Z6Ic6OhY/fEUMwYbdH9RsfCLD2mMTQcOy0lCfDc?=
 =?us-ascii?Q?/HRKfj4mWnrBl9A85rkg2rAFbPW3rRVPwkhaxt6GmnCQQoXqtH8BklLhkH3P?=
 =?us-ascii?Q?xcFceuEzXPtJ9cECrMo02ytVbIH/+ZEhEgbFUgknLNXQ0Ic46UW1EAyG3ROk?=
 =?us-ascii?Q?Qtvjuy7ZFWDSeltsnnUXTwL4lPvto1C0P8/xJWOt6vQFXlcSnOOZGJc7CIqx?=
 =?us-ascii?Q?v30hioAJCq+VF9XHfTHpJuDBUN/9WeUj6G1GMLH4QtLt0VfD5RvxY0OENuYA?=
 =?us-ascii?Q?Vi/TVgkXU7/7d7bHYGnbNraS++rucqX7eVQhgqNuxzrMYaUFU0NH+Fk0w10b?=
 =?us-ascii?Q?9AXLu1ru7cWUvSe+ezeF9lcjTkQKrk8YaUQDKLxEZ8NJ9EvrATwkqA1s14UZ?=
 =?us-ascii?Q?kGBoz0uSxKuQEWhUZG1VbkHaxjDvfNbnYzxy5B2Lv7LGioSpAvUxkfWCasVU?=
 =?us-ascii?Q?dSLy1Xs9A8leYTZ6tSDzHeaaf4PSC9gqLDIh3ghSLRwIPeI+V075QLN1Gwjt?=
 =?us-ascii?Q?I+dL2mo941TeFN/NhNeeYxYk4a+RBBA0UjKSwzC1Cs1Dlp4UTvVfu84wUITt?=
 =?us-ascii?Q?zVxnNdBS03OvsTHFbGntGotgUUUs2pbrwb6/prngJFmLKQrGF+EX2Y3Ewb0h?=
 =?us-ascii?Q?y57YPhq9G9N47C8O98nG4KyQNm4KdDzHnXnYeaeNflpt6Fdj+mBQLMPpDrRd?=
 =?us-ascii?Q?Sbl19peQXNhPhtrpI+G30XQZwwiw1Ta+pONEhknF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea880119-dcf2-43c2-1964-08de21a1c8b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 04:13:07.3664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MMW0z3A25u6YVwV0YPalew7ufrlH/GNV5pmU/EpHbpeIviEt554YQjVnljC1mKtlFuNNaQQlD7giuRzj1xgz+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6667
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

> Cc: Deak, Imre <imre.deak@intel.com>; Kahola, Mika <mika.kahola@intel.com=
>
> Subject: [CI 10/32] drm/i915/display: Read out the Cx0 PHY SSC enabled st=
ate
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> Read out the C10, C20 PHY PLLs SSC enabled state, so the PLL HW/SW state
> verification can check this state as well.
>=20
> C10 PHY PLLs program some PLL registers zeroed out for the non-SSC case, =
while
> programming non-zero values to the same registers for the SSC case, so ch=
eck
> that these PLL registers being zero or non-zero matches the PLL's overall=
 SSC-
> enabled state (stored in the intel_c10pll_state::ssc_enabled flag).
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 25 ++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index b394b0397d62..f6b25291cd18 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2067,6 +2067,12 @@ static void intel_cx0pll_update_ssc(struct
> intel_encoder *encoder,
>  #define C10_PLL_SSC_REG_START_IDX	4
>  #define C10_PLL_SSC_REG_COUNT		5
>=20
> +static bool intel_c10pll_ssc_enabled(const struct intel_c10pll_state
> +*pll_state) {
> +	return memchr_inv(&pll_state->pll[C10_PLL_SSC_REG_START_IDX],
> +			  0, sizeof(pll_state->pll[0]) *
> C10_PLL_SSC_REG_COUNT); }
> +
>  static void intel_c10pll_update_pll(struct intel_encoder *encoder,
>  				    struct intel_cx0pll_state *pll_state)  { @@ -
> 2198,10 +2204,20 @@ static int readout_enabled_lane_count(struct
> intel_encoder *encoder)
>  	return enabled_tx_lane_count;
>  }
>=20
> +static bool readout_ssc_state(struct intel_encoder *encoder, bool
> +is_mpll_b) {
> +	struct intel_display *display =3D to_intel_display(encoder);
> +
> +	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display,
> encoder->port)) &
> +		(is_mpll_b ? XELPDP_SSC_ENABLE_PLLB :
> XELPDP_SSC_ENABLE_PLLA); }
> +
>  static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  					  struct intel_cx0pll_state *cx0pll_state)
> {
>  	struct intel_c10pll_state *pll_state =3D &cx0pll_state->c10;
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	enum phy phy =3D intel_encoder_to_phy(encoder);
>  	u8 lane =3D INTEL_CX0_LANE0;
>  	intel_wakeref_t wakeref;
>  	int i;
> @@ -2227,6 +2243,13 @@ static void intel_c10pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>=20
>  	pll_state->clock =3D intel_c10pll_calc_port_clock(encoder, pll_state);
> +
> +	cx0pll_state->ssc_enabled =3D readout_ssc_state(encoder, true);
> +	drm_WARN(display->drm,
> +		 cx0pll_state->ssc_enabled !=3D
> intel_c10pll_ssc_enabled(pll_state),
> +		 "PHY %c: SSC enabled state (%s), doesn't match PLL
> configuration (%s)\n",
> +		 phy_name(phy), str_yes_no(cx0pll_state->ssc_enabled),
> +		 intel_c10pll_ssc_enabled(pll_state) ? "SSC-enabled" :
> +"SSC-disabled");
>  }
>=20
>  static void intel_c10_pll_program(struct intel_display *display, @@ -277=
2,6
> +2795,8 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder
> *encoder,
>  	pll_state->clock =3D intel_c20pll_calc_port_clock(encoder, pll_state);
>=20
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
> +
> +	cx0pll_state->ssc_enabled =3D readout_ssc_state(encoder,
> +intel_c20phy_use_mpllb(pll_state));
>  }
>=20
>  static void intel_c20pll_dump_hw_state(struct intel_display *display,
> --
> 2.34.1

