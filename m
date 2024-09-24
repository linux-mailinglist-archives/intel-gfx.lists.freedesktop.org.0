Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 852CF983C97
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 08:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F48610E4D4;
	Tue, 24 Sep 2024 06:00:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B+3UBKFM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C067D10E4D2;
 Tue, 24 Sep 2024 06:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727157616; x=1758693616;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8KmoDUGWSpelbRyTn2U/TFCmf/Pu5N7dNC/JpI+kd5o=;
 b=B+3UBKFMtDF64a6+9XsvtnPTivaEmu/9963DtX7mEgD2Q92AqOuqkRVY
 LLHV0Rd4TbOIgbAg4/0kc2YjVmoMHyvCf/BmI5sXzhWsXy0uqR7n831Aq
 TlhDEDWaVmdn0Vu32X8oK2VZsvCyORWkCynKKJc1DqYXgBOhMj6nxkYgk
 bPBavy2JuQvi3PWtL2uArKC5S6N/AQ/kx5K7GlJ2K7Q9tpftTiV2xlbA5
 qW4Sylacs61r9IGxI2LuWR2kvlcZtG2zX0eMB068ct5LtKJT0JAF9OCsT
 EvK04HS46++YQhepxFi43uJ+X7mCHkjHNJs0JaTtE2xgulS7Plz6mEchr g==;
X-CSE-ConnectionGUID: GbvU/8RHQRCUfSyYmJ4i3g==
X-CSE-MsgGUID: N7I355y6RkqTAd78Zo/tGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="36718268"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="36718268"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 23:00:16 -0700
X-CSE-ConnectionGUID: vAHqOpt7SNODMMcXzVb74g==
X-CSE-MsgGUID: OChY0WtOQqeWdUuKBkcQkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="94641277"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 23:00:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 23:00:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 23:00:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 23:00:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 23:00:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bwMUwFsGregEM/OoJxfZSI4CTBsRiloO6yuc3VES678R2jLmUe37/nKIuOy/7s+FESUM2lVZIAnMo7JVje+OPYJYhr4jDjcWylQJ1cE7ppXCpl1VNyKab6ZN3uHhG02hleAaefZ5ZzeNOfIY1OhDQIw2DYw9HE8glDuRFlqfnP0feBsZuJFUdhsuTGK1mPaznMcQSDIRXJkexR3seRZlAtNGbUbcnB10EJqari7VEZUIY4DX95y08uvO5O+f2M0tcSAuXNC/kJ+yUw++hB9hYh/z2TJCjSM6PTQFSGU/K5HTc0B6wbL9nJVtPXIcvGbtZUCC67/wRg4reE87rdCBUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hgdbCl9I/ly5cutpuVEFZd45k8OJcPCM2mn9ifACNC0=;
 b=p+avkrTiRhkFOcC/vYO9FtsDpXXaRXhedwIUX7z+PMqpCp1IQtKo2F8Ko9Nhh9lkjAGhBKoU99vrRZ0qeC7SB9OnsmhXdXqUmuIrt9zjOwEjUU0sZSrzmbH/KzDXzEKal2nicDyGGBBwH+4cCeDQFcVQOVyf/dY6X0rP+ie0FLknJNCcIRVDai2/BRREtYf20iM7A2i48F4sxfzzwzm7N3EbNGIAQ6S+2pkheney0pCPeT0gVpwt9V2UjGT5UID4hUGO+KFv1wH7muh2nq8BIwSBwHBR3MW/qoCLpWgyU92Q8sdjwnrCpaUa+Mbq2PD1Xug4GIdrDPVteTlm6pr5Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 06:00:12 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 06:00:12 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Topic: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Index: AQHbBNLU5Ri4+n83s0GmJGbZ41cmorJlSJSAgAE7amA=
Date: Tue, 24 Sep 2024 06:00:12 +0000
Message-ID: <IA0PR11MB73076A10F2630A79D6A045B9BA682@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-3-arun.r.murthy@intel.com> <87o74e62ym.fsf@intel.com>
In-Reply-To: <87o74e62ym.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: ffa43a84-32f8-4b49-56cf-08dcdc5e2752
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?K0F6WFBNl7ELym6zYD/FeBPke41bzYv3GtlPSNeSvNoWqk+n/buGoYcKipOl?=
 =?us-ascii?Q?B2sLp/cLafy8zpksiPM0DTA583PTQsO/ptfA+rIIk29VHo4q09H5uW4o8P3S?=
 =?us-ascii?Q?Zagy1xXOFPmfDythCnld2UhZiZWTBZbgcLq9ybBhpi9jViwdIPJubMgXp117?=
 =?us-ascii?Q?4Noz/3zVroirpSu7KW7fxUIXrlWchE6b0modpV5rL/bIFXPwIR1x9CmKKB4O?=
 =?us-ascii?Q?L98kmQVJgymZ4DdICpJ7/yErabn7AxutMQHagN5dQYBABkXOPj8b6c66mRgS?=
 =?us-ascii?Q?TzqwfwXpQz8ijPvuqNWREsihrDixceQiZrNUk/QIcLd97NnVc4v/CasKks81?=
 =?us-ascii?Q?U401u2X+vHeCCQCTYTMIeQW0OA0xykeFbawye8jZjjwhFgZ+HdkJjZ4h2VqD?=
 =?us-ascii?Q?kO1oR81K9WdesgpVjBWGoJFg60GPynj6rssdnV47QfOvPz3UAgxz8t9DyKBU?=
 =?us-ascii?Q?vxPfqDIfkUkbbx5MVVzXfgBm6NorObhJHWD4h4Ufve2NYqVmzu4TCXqWGHj9?=
 =?us-ascii?Q?4zQyKNA/2azjl1wiXOzjXybOl/fOWnos1oDpTBRQXr+LAgB+paceCZK6vYAn?=
 =?us-ascii?Q?FaLMeRMTX8i1wH9u73ODUt9NScY24SLt7hOXE9YksywhNycNzJC40CAJHLi/?=
 =?us-ascii?Q?/eNC4oV8tzsjABLohfUmgphoE/muBwdIZJoRWuJZHz13IvLWkAtmNRUsGhw+?=
 =?us-ascii?Q?LCPJ2z1EY02GvWIPF5BOyxy0MFsViMLCuyRf5f6Hx1XtjPt5YxRz92DJJcku?=
 =?us-ascii?Q?SQ9RJWU+LnwwDSNs/jRSjPJfKNAdythspf5Qb+mLqtISawtW3l9PlezO4cVQ?=
 =?us-ascii?Q?VPx0XbxEG7T14jps4Fo/hWdVgjPPiIqqhbXF9Yk1pMqbyrtCmR7FvJ3tC8lX?=
 =?us-ascii?Q?cocZvqKXCB8rdKeKzhawSKT/AbumKmizXYtAUPVhxqpQoei1bkaTSiReR6nJ?=
 =?us-ascii?Q?KYNuvSU0y2+v9TYf5l+6cGqYTHsBkwaw76HFTeZ/EVGh8kCOEcJwGtqh7Q3p?=
 =?us-ascii?Q?ATy4R6I2do/9s7bJYF6WL/AsmViAwqV/DmvEp4i2323BU+K+KNt102+52GRN?=
 =?us-ascii?Q?8XOTg0xq6PJupzJ1m5UZBinejPlRyhsbAx65rLSQsGdIL11bBQVZ5GQo5HNn?=
 =?us-ascii?Q?MzvjiTfaNJ8DKt54E2D2Owl3mctHQMz2iNnBfwUYfDb6E5aQy3TCMZAdxxK7?=
 =?us-ascii?Q?WRyDsGT4g1swzs15xjjY2VMvWmZ6fYhSZNznNWLdboaFXTYVbcSW8ctCXV7x?=
 =?us-ascii?Q?aHijYo6dKF5bFDk3Z827wD2X3d4s5WE/IEjKT+iEdTBzFfmKPLcUlZLU3tdP?=
 =?us-ascii?Q?T+/IMwl8nPvozELN6uU4nxqlNvGXYp0j7SXbyq1rPL6szCeDQgb0lc/p6EZa?=
 =?us-ascii?Q?K3GX60UiwJkKT2TvnMGHDXf0k0wjWPqQjNXdfJD3OB+xVuV0Xg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DmZJL4I4UEESfCViUW38DJqOQ9g/7N00y9An5DIq8itRH2mA34n8KDl9e1I1?=
 =?us-ascii?Q?fZQc52sgr0Fq2SNOKA2otWfcOC+4OOtbpw4UKe8sh/DhzeAeWLOPOBbcHak0?=
 =?us-ascii?Q?oMvzf1TD+SI9AWyZ/DL+tk2r2Yuyp/XzB5ZVAg55q65r7/dqKcsqfU2h9klN?=
 =?us-ascii?Q?as9elP3p/Z6iW91RriOQktAVthR65NQx3mzuGO0PzCFUBbge2QA/dkWXUInC?=
 =?us-ascii?Q?Fql6La7uKtbWBGepFYBR7gfJr9hYUym/qO/zn8/QXbawZtfI4Qgc8qJW2oqL?=
 =?us-ascii?Q?5dcFNMSEHPmO+gI5R2UX121Gu8yweSg3PNt48npKwu6++HZ0x4V+tJrR7WFa?=
 =?us-ascii?Q?5j3prQEHHLT+AQGKxowVqmYK94WtTZlTb+bE/PtW+oAfbXZh9ztOtlh7sNia?=
 =?us-ascii?Q?ar0Dp308unKesrWgiVlfgPa2zmYvacO4xJY9VKyF1gLYrxQAizRmWZSBWR55?=
 =?us-ascii?Q?MYfK9l8fL34B9esfXosotarpCQRli5boX5yDZjlwl4mvq0zCHFUdvqedz2hI?=
 =?us-ascii?Q?agA8e/OJK5WrweScpWHDBBfSzU28Glh/9E2/OFMrvO2YL5AjSUu3U2a6jJYW?=
 =?us-ascii?Q?TQsPheCUAhPg2388MhuQr5quUhswVVjkFOkXJFa4BuVsuqom1asNNqeUyp6V?=
 =?us-ascii?Q?ZPhaZ8bZ4r8ZHtdo12V4P4K2Hx9cpRlrjdhRMcaJyz2mJbCF+bu+A0xRDC+a?=
 =?us-ascii?Q?dG1N+MCnsPCYbhXGhA8MDPxCtgPIPVIHY8P5TuOkx2wnKwy/YBFZGaX5bkPR?=
 =?us-ascii?Q?qkl59v/+ZQ+yRS41Ds95Xc8tuQ2k438eZnAlm7Idwg548EPAB23ZIwXhknxt?=
 =?us-ascii?Q?crg1Wq8Xt2tTBXq95Wa7F7IWo/3CYmj7EZACf8ZYYFkpWGEqUxwpOPtwAiDP?=
 =?us-ascii?Q?jrl/P7t1dNca88/UDHTuYtIFG56d1yzpdQpQWsNVgR/mqQv/xbdlWP+joc7C?=
 =?us-ascii?Q?2625fDmUttv5Mjb1/SoM7ubY+UQy1p/+gE6dgkkr6FMVwBUODt4AsWz62uY4?=
 =?us-ascii?Q?v8+Zp+ivvISuX8VEEjvqlcPwnJzyttuGbhe1QgrahokULM12t/Qf6rnjxIJT?=
 =?us-ascii?Q?ba4ISf5ov78Pm8ANy9Yj0GGzlZiyp7kuct4HOqGnww7cVOSLjpuf8h54jW33?=
 =?us-ascii?Q?OBdQFpzvOZX0cxXxik4XTdK5AZukWENV+ytDA7PB0On66gCfBXqlquKwe+Ot?=
 =?us-ascii?Q?stLg1wFd/Rl2lBlPNllEblAUyx1TF52qfYZPhuvbveeqUMxbXRYHPZtT/th5?=
 =?us-ascii?Q?i1kfDn2pa6/href6N15rUiZlp7BK+6VVqX5q//hW6EXu2X8tXJxQd6ssERgg?=
 =?us-ascii?Q?/cxZcWxkZ35qJwgkiLm4h8afbXQF3lsJxV7wBFLE8Ew6cXvR2/i5sA+hi6o0?=
 =?us-ascii?Q?6OaGD+OOkM3zpHX87I7ZPQSYVAV6XDqdUZKVKev0mEwyN7zvFOy09MQ7jbuL?=
 =?us-ascii?Q?hmfpJRvTrzqZhPFKyJZX40lz8KoJYZPXcqKxZCi7ccAMj4vJ4YZZ/5zWaD0d?=
 =?us-ascii?Q?cSOiIVVHJhBPQZPMnDRSXjC/mR2r/LTqkEAyieBTQ2fFZp6UmA3NINgJiyVG?=
 =?us-ascii?Q?f+tQL1VILSe5OaS7ktqrD7tT/6mfDP36WA8J23Jy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffa43a84-32f8-4b49-56cf-08dcdc5e2752
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2024 06:00:12.4184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wYBm2VFr6QUQ0LCwQKGvthlFV7NdXvmzODBvdPOYR3FdftXuS2PJd51u71vAQ66LlBtye85qg9BX8pxJtUAPvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
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

> On Thu, 12 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > DP Source should be reading AUX_RD interval after we get adjusted
> > TX_FFE_PRESET_VALUE from the DP Sink. (before actually adjusting in DP
> > Source)
>=20
> I don't think that's correct. See below.
>=20
Will correct the statement.

> > Signed-off-by: Srikanth V NagaVenkata
> > <nagavenkata.srikanth.v@intel.com>
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index f41b69840ad9..ca179bed46ad 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> *intel_dp,
> >  	for (try =3D 0; try < max_tries; try++) {
> >  		fsleep(delay_us);
> >
> > -		/*
> > -		 * The delay may get updated. The transmitter shall read the
> > -		 * delay before link status during link training.
> > -		 */
> > -		delay_us =3D
> drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> > -
> >  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status)
> < 0) {
> >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link
> status\n");
> >  			return false;
> > @@ -1457,6 +1451,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> *intel_dp,
> >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX
> FFE settings\n");
> >  			return false;
> >  		}
> > +
> > +		/*
> > +		 * The delay may get updated. The transmitter shall read the
> > +		 * delay before link status during link training.
> > +		 */
> > +		delay_us =3D
> drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
>=20
> This is clearly an improvement, but Figure 3-52 of DP 2.1a has "Read
> AUX_RD_INTERVAL value" before "Adjust requested the TX_FFE_PRESET_VALUE
> by a DPRX/LTTPR_UFP setting". Yes, in the same box in the flow chart, but
> before.
>=20
> Sticking with the spec, the read should be placed above this comment:
>=20
> 	/* Update signal levels and training set as requested. */
>=20
> Be sure to reference the spec in the commit message.
>=20
Yes, agree Will update this in the next version.

Thanks and Regards,
Arun R Murthy
--------------------
