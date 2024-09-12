Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7CD976714
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 12:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D565410E991;
	Thu, 12 Sep 2024 10:57:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F5J5YC6y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77BC210E991;
 Thu, 12 Sep 2024 10:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726138665; x=1757674665;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o21JEfOcjnGvlevzSFT5XATdDtCv88Aum9LnRevnEi8=;
 b=F5J5YC6yIdfyD4DsOo1iYi1ihctSiOTZ37HHlDYMFn6n7jPwaKLLi0uz
 B5qjMtNQHKv4hXWIctyIFwX/t5vKp8KdcQKm92AdUwx9C8W97Mcb62jx3
 Gtk2qrCkcCPWx96lwEgSFNUuH/BwK8dUyXGZvagjQ3R7bQQwL93u4SP7U
 3LbSUSA0P2SKLZtDUpMPHJ3T6FXm42Y6Il8QPw2q39WGIFMT0zd64pCJ6
 C+u9LK3dtp8D9KyLsG/mr1x72JKNtb7KZMNtydEnkWBXGKHLyJ2CPOwqG
 vAulqdoDuOmsgh3Hs38RcYJDaZwmq4LgQjJ7HhRxX+rGEIR4XmbYcNh8A Q==;
X-CSE-ConnectionGUID: UnMaZoWLR3e/GvGe20P2Yw==
X-CSE-MsgGUID: MEcjWptlRJWzmIuxeYdGvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="35572296"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="35572296"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:57:45 -0700
X-CSE-ConnectionGUID: pyJT+v6iRkS9sRFNEZzZJQ==
X-CSE-MsgGUID: 68a0JzrAT1iGSbw63YeOPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67389329"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 03:57:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:57:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:57:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 03:57:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 03:57:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rs+w+AKtqfGhHBhXdBmJNxVYu8CAQEKr0asnKypjOuIZ1WpsvHZxhLUBE9M+PN3cIkkoy+Zqd7fob251IXKR7/GZ0hjlfXvDu82NANYrbxsQxWRTYCDZJoYIdmS0/DUS5kIIpbJw+eWzQcD04CvYY0r4F5P6cXLOH2sAwPI5tiOz/Q+hR8rm7mFrF4tmLAchjz5p3fJbg/3YRoZDkeNxwzhoZ6wAVpobj0Zsceh9mqJjOB7ataPcCRXj1oWYm/dng4OxYbDkC7PcBBUflOlv60jehVGuDlteY16+riC1xjoJvFizmQiHYlbnWjRyKM/hnhnXWmztAkaZsyhlD8kXbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o21JEfOcjnGvlevzSFT5XATdDtCv88Aum9LnRevnEi8=;
 b=yts4Z3fW+nVCYJoenwulQB4npMnbpDxIdB0e7zrFd8Q6DYgpCgfEDKy4HzZefZ+hIv2cHHK8eTAOZ3OpI42vkHUYdlFzf7gKxcdZn/+XSh4xLoWZ3Bgi9iIkeC8rJRtAyDCnNn57Mgvb7QV34+8U2tioNsMXIjBu9fvPGxDqE4JKLR/Jtm9f463TmIWEzL/jEVX/3EaVoNbdjiMQaF/11To1VZG/tkQThVCDbOMAwttEaqz592tMtDU4xsYDOpn/Q0KnFJtPGpMWklHs7cju9a1GuWFJe/TchogtZYZgNdk2eLYq4BfprNDnFspZe4+QvbDqEwc+AR9w/aRHQ3c61g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.19; Thu, 12 Sep
 2024 10:57:36 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 10:57:36 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
Thread-Topic: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
Thread-Index: AQHbBNLT0fMUBeB+10uNBH2tiRmNLLJT3D8AgAAfC5A=
Date: Thu, 12 Sep 2024 10:57:36 +0000
Message-ID: <IA0PR11MB7307B5BFFE772AC749C86AA7BA642@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-2-arun.r.murthy@intel.com> <87bk0ti6mv.fsf@intel.com>
In-Reply-To: <87bk0ti6mv.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA0PR11MB7185:EE_
x-ms-office365-filtering-correlation-id: 5baa4f69-3680-4607-c03c-08dcd319b673
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?UZbkesybi59wrZ6spaXIvdZEklbDhOQe3V6cPzghPimvKjl6XD4+An24dBwG?=
 =?us-ascii?Q?gFzwSRD5WjpgyYcpj8ACLxHoOKzoaRVWJFTfAsOMo2DtbijCl4QM3rkmCXMN?=
 =?us-ascii?Q?Z69ExJuvXwsLCucApncSrh8KXIaqK9A1vE7iZqYg3uK4uK6fx4t93Kka00Hj?=
 =?us-ascii?Q?XjLe69fxJtOD7dn3bKIxayxwe53Bu2bDtRf8YXEV5ofu+9H0udCV4dTa/mcE?=
 =?us-ascii?Q?vN3865d+666iYyozHMaHH+lRAS9ZciaEbioFUV4WjK2HFC3Y7+mM9oBgrv3H?=
 =?us-ascii?Q?UJY0zRFsMqfC4pp09uQUgjNIL29sOflDmf78Ym5q7hgQvZSb9jL+kNZCI0lS?=
 =?us-ascii?Q?9AaNAAg2QX24Gvkh4RnMpLvoGRwCZtzbfU/6JbwrUyRWGKeqyOTwydTXh/tj?=
 =?us-ascii?Q?pY98yXjANXOPRfgqqtwLywmEan4tZ2cd44FcQGjeM+gf1lNLdHyyCquED4VM?=
 =?us-ascii?Q?IEC/lRFIj5vStUya6jdk71qHgkSqRwXzdZU94te9pIk9+g4as/3ZY4PLA/GJ?=
 =?us-ascii?Q?TNtSFuVXLCfIvm7O5qYdLH862WKyIx4MXwO0C1uTjs+/rJUqrVSXloNGKRwu?=
 =?us-ascii?Q?04kuWDDzFgdSqdZQyKqrENKL3hU2NVdxrmfSZJUCKpyQHPmPcjoCmlK81zPT?=
 =?us-ascii?Q?RMbjcQ16KTHPiy21lbGoRBJMWfwJoHrCR/GH4kYPGATn1E04cq+6o9WvmKeg?=
 =?us-ascii?Q?yhmwjs9CaCf3rqDkSveT3vDTDI2IJ7x5xXkEkelMxAQ20zZm+FWJlBrp+jHp?=
 =?us-ascii?Q?XN6WJGyPbwhW6vz6UISo3YLMfeEee3Ebt4KPfNkLqTybJM/iaZmfnoXKHaLQ?=
 =?us-ascii?Q?gOD4gDnbNHptIyKUk0KBuDmVyPtBeW0/zcqy+ITH78uhenoFAsf4wDtwvn7V?=
 =?us-ascii?Q?3XIpI5mJiezV6MZ4yzezZDZy8e0mbd23VZI45y4dpP+0oYm3nFZQzw4P/0nR?=
 =?us-ascii?Q?VYxIsBgcahxtQO2JxMOJivJ6LVcflcnL0mHUkUHj+K+eLSUsLgJx23uehSb6?=
 =?us-ascii?Q?WY7o4SJ+snEuE8MOlVrT+ztWV1TpeBDmv65FyWYlLjEDkjBwaZKrb+zbWzYn?=
 =?us-ascii?Q?KPx0aXxwo+yvZIg1Tng+0Lt2IH7TIR3I5E779rCNP2Pjwz6kEjZ5yWtgB0qF?=
 =?us-ascii?Q?yYeVqssmG8P0NJr4L1rbHW5ejkbC5ZbTRbciWg47JeHmxdrxqBZEDX8BqqNB?=
 =?us-ascii?Q?RJMEdVOd+BroYhU2vUfiTomfwYipRoWD9ZRQTLM9VTGZC4TY/A5KdOHsggSG?=
 =?us-ascii?Q?gGODSA5fD1KPohRVnQgEOu6M0CtODXXmUq0IyC2YHywAr/7R14pcAf3qFNRQ?=
 =?us-ascii?Q?KUbzLkCJ3ZtTbfHiSc4kDX+/4S7/18mu1VjVWvll7nfnOyhjULs0YsZTHqG/?=
 =?us-ascii?Q?E2xMLudfBG35OQf5bvIBNSms3P5LJ13ZTej466BlJRfqAl9QLw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?d3toKkVN4C6dVdOX2u7BREpaL30FQYTTWIkx5rk6Lmcu0izr0jBIV2s/VsBc?=
 =?us-ascii?Q?XnZ7lK7dzENr5NlLyGM8zn4DT5I2IF4SuKznmNX7BWn85A5xpJIzY48mg5JH?=
 =?us-ascii?Q?GlzI5QSoFewZAapvje0wFNT4aB/ItJD4ro1rgUJNwn8ovEcp4O1cPHSM2p/o?=
 =?us-ascii?Q?qztxeSRUjPr1lcxzGAzK2RR/6JGvvy929YEiaZ6Qt4b1G1tq2WMTT6/EzwpM?=
 =?us-ascii?Q?F7sWawKhLxptMp5SqbkNaW8lwciGlMkxBl1Y2hd0t7UTgJ3U6gaepWmCYDh0?=
 =?us-ascii?Q?k1Jc68fuYm6kBeeU/8UyGH0pwWrrZZQ6ZcI3E9cH1MUW5DSh+JoQhmxIIkGk?=
 =?us-ascii?Q?fll3PMk/NUiZgbOhUgagTl5eVcFmdPaUwO7z3DnBfoJgws3XszzYPYi7Fv85?=
 =?us-ascii?Q?x+4ifb6VY36nu5j2frJ5gAAhMwOiKRzJuNcyJC9lSY/5LJmXoScnnGY8Lpy0?=
 =?us-ascii?Q?PQj2x0SCxitvSnjgFPwf/dcsgArk84zbVW86UWdw4w+iDEf79cOhsovBj6bi?=
 =?us-ascii?Q?dwI/N0kj1Z44KZycL5mSOjyIiuW5Wo70nGVfUjCObrR88Y3j++25GrBglWlu?=
 =?us-ascii?Q?4Khnsv0HFKq1dnUVgc3HAMBK8oogvF2cZ1d0el5UUZXSADCOVTQT6/EvI3zs?=
 =?us-ascii?Q?mEf+JDmyB14gr730AGnXpeD7nN6HoWeFwooSDMRmJQAi9kV6EVwGJUVhzDVk?=
 =?us-ascii?Q?7Q3Ta6AZRtZGUtWy0t8QLKr8+2bBy/apwVeG0Mjt8vntz2435dE7N8IcxfMv?=
 =?us-ascii?Q?AKYijbL1FGE8iWX8Hqa3sleFSOyU34tTUMwDMC3adwWo8GQMJtursrR79eWq?=
 =?us-ascii?Q?xwxG8b8AR/u/q2IoKH8NR/WbcxFNA1P4S+3FCcpqGuNJLyzNAi3QwjkcsTPp?=
 =?us-ascii?Q?OPzqo73i7K04FoeZyaClbbR8tWUSPqbHpRb/DT8Jn48XbC5zu0ADr1/uvuvV?=
 =?us-ascii?Q?upxkhTygc70QJAyNtXEZqKLYMS9qyW8lvEDUoju/cUEOMJNcupG6C2AYKb97?=
 =?us-ascii?Q?v0YgGoK0PB2x11KZu88a1RckCKyz5hiH3PjdOvmwl/ppW/qExPznduaXCt9p?=
 =?us-ascii?Q?6KYvi8ArkPPgh7pls8VlMO9i2JT63VP3oKQ2YYPvaHGsDdqaaKZMbOtbPDCw?=
 =?us-ascii?Q?zfgCvoEc/RhDBM5IfBfEN9UotMSeut5C/NdH2frxk3Ohfh8aJJB8NJrZGgau?=
 =?us-ascii?Q?U2YJxOBK2+BTFXO9K2sevaMkKTxUOO9Atu/1XfNlhnEOHZwm/a8f8PVyRqfO?=
 =?us-ascii?Q?YHX5Lm93UDSYuOg927NzS/VJcLIZYykX0zbNpPO5NQNVsODW7NGk8UwC8Mym?=
 =?us-ascii?Q?BKrCOOeuglghhPv6HYfrd+H2WkGXpi9d6MBr/mN5HXysv7BApfl3OiUsMtek?=
 =?us-ascii?Q?ugyPdq6+IHwAET3Ug2uPSoZfG0fI39e6HaUihNt0iplmKXoKQ/Bh+2Yo3a/H?=
 =?us-ascii?Q?6JeALSSWpNByQMHZhaFKyuurfakatACPsVqsqXPVIS0vvj2tXKsvgkcHIr2r?=
 =?us-ascii?Q?gn618skZVPQKtJMA1Y8Ll3xnGq2bKJnx1X1YTYk5wT829eppqm/FWV8nYyAl?=
 =?us-ascii?Q?88OHjwtFQ7qOi6Ie8lf47rLT+93cr/o1mAmxs+mfDOH1/btRS9iquCB50Qsx?=
 =?us-ascii?Q?eF7Vq8X6xVepIZQKGH6JN8nuZYt2PFVSZLwUJMyDyHKY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5baa4f69-3680-4607-c03c-08dcd319b673
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 10:57:36.8412 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NmuExGx7QbXe6yeJ627SwZFZUjBflq2ACxXPG8+Wd6x24tJSeOBdDzq30rM7q3S/HW96wFeIDdHfxksfjUX7gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7185
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, September 12, 2024 2:36 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V, NagaVenkata
> <nagavenkata.srikanth.v@intel.com>
> Subject: Re: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage f=
or LT
>=20
> On Thu, 12 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > Aux RD Interval value depends on the value read from the dpcd register
> > which is updated from the sink device use flseep thereby we adhere to
> > the Documentation/timers/timers-howto.rst
> >
> > Signed-off-by: Srikanth V NagaVenkata
> > <nagavenkata.srikanth.v@intel.com>
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>=20
> Why do all the patches have two Signed-off-by's?
>=20
Findings are from Srikanth so giving credits to him as well.

Thanks and Regards,
Arun R Murthy
--------------------
