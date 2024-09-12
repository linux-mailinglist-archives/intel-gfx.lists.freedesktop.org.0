Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A48697670C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 12:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B46B610E1B0;
	Thu, 12 Sep 2024 10:55:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tj4F2gLl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A710D10E1B0;
 Thu, 12 Sep 2024 10:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726138508; x=1757674508;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vPsUdjasPvMOVsPBrrjaMthnBs8uITVUH8ZuKWwgLdU=;
 b=Tj4F2gLly7U+KLSMIv45KvvpWhyxJvrIsCq1+WqlSq3gujCueVLMwUEv
 cYpeuEttxiHUDLHhruKWh5cGp7AehH9Mze2Wb+r7qeBI8DbieCt+sAHwC
 i8LiZFbJdcpIDvGi/mVIIBt7BS69tGUTjEWBM7OlmoHPJwBYwWeiSpkTi
 4Xsa4XaM/Zsb02tgNgUii/hXhsdRufn9RIkJgAGzlVbB1ZFiOJnNp1BCC
 koN6ZY6+moCIrTocD92/7CNg0LHyoUOU2n4JxzUne0JHjaw7ORjyjp/hO
 5+whl3nb1fKxeOwNQbrQNTpNSdYh0yYeQ/vC31uA3ikcX2LjDsqD7q2ld g==;
X-CSE-ConnectionGUID: 3UYp7xkQSdyCHTr9pTjH5w==
X-CSE-MsgGUID: gO1XWRtbToKVQp8m5a4OdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25178027"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25178027"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:55:07 -0700
X-CSE-ConnectionGUID: JF38KwrnSdGoELhqnucmYw==
X-CSE-MsgGUID: NSAw5FUyS3WsSV/cLPPY8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67963438"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 03:55:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:55:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 03:55:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 03:55:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J6lLEpVVGebCX86JJyCtc2EIkJzS+tbKSbvcmzMtDZMjk4fLd54Z3uqNUcmmQnCcAbZeorWqJ1VH23dEqnNO3n2SAaxhBxao8NntOoOr9FFqutBpHtAd6rIGj9bJgiV9p1NzFop5axfAl6pNbTBYOG5e7pn2c0PnGhzT64+FVo0iOOTSUkH9B1QrIIMkQ50D16clpHO5f+tVLnRN8vLSFSCI4EV++QYJdTVEzhM3ZA8PfIf701yTeg6eOtQ7XoQXAGlrVJ0Hm4ZaEE/0Jl0qwdhdyTgr3qVvetPR6LKkwv21XRE3T1PZTe8rAS8qo/TEb6VVesA077WG18Ea7d6Oow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vPsUdjasPvMOVsPBrrjaMthnBs8uITVUH8ZuKWwgLdU=;
 b=ElidlukFIt9CUd5/1TRoRtBaydAB2NWMCsl4Gtz3wqyxAL4zOd0eG5aUMsvw4rono9wEktAXzawlxncLEKTzQZNz88eswv7o85oUhsjaLAezr/A8Jw254PJJeQf2jMIFR7XYg1ojLwqjA+ZpJMM+/gZXoY8Wc5pTDdcgp4lta7NQ6J59e34O1S3pqikM6zpT5k1uVKLS6KsCQ9+bADiMpWIO3lPp3NSe5e3jNaQ2BC1YmIS10dQm38n6HoFAaQmkxSIp0QP6mLu/0osHbFv47oY0/FPM6eihOyGtBHTbecOMOlIb3uWLCNg32ncbpQPMhxa7gDlHMcdSN4/yoLaCGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.19; Thu, 12 Sep
 2024 10:54:59 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 10:54:59 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Topic: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Index: AQHbBNLU5Ri4+n83s0GmJGbZ41cmorJT2+MAgAAQufA=
Date: Thu, 12 Sep 2024 10:54:59 +0000
Message-ID: <IA0PR11MB730726CC81E9D4EAECE6B25ABA642@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-3-arun.r.murthy@intel.com> <87frq5i6p1.fsf@intel.com>
In-Reply-To: <87frq5i6p1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA0PR11MB7185:EE_
x-ms-office365-filtering-correlation-id: 74d1adc8-27d1-49f1-9b81-08dcd3195870
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?/O1ceFKu+EOF8S/Yk9VkMgkkTSsabzsqJxLKI+IKM1g6svz49WtnP7SfDtGm?=
 =?us-ascii?Q?aRki2zZWYp+gtAs++g6vvigKWHDLiBA0gbvyUGTWfGE9YDAsMqRUvIj/S4wn?=
 =?us-ascii?Q?hRzzmMkifGA83cg7/qD1h9VZDnnDdi5K9k2CEikKD7tcvaBSCH36Exgk5fkG?=
 =?us-ascii?Q?YHkolpG6o/qxhV6+9fPkPFwn9kkMP78NGyNcHbs5vfwqxH6OwkfUKuWDjUYm?=
 =?us-ascii?Q?4R0XMpiKC0z/3nDOd/VpSVbXCBggBNJ4eV4ZQysSUSEz9qeNlQZhCszT4juC?=
 =?us-ascii?Q?J3oVshWWSX8Rm6VpStpkSrqI5rLBGdzCAq/Ex3rxq6Y5Bn8PmRkhwKo9e0hT?=
 =?us-ascii?Q?ydT+k3k0crAQiJiox3LiSMWnvZ/jSStyELPyonnJX1902a2DiGFUTu3rbZiR?=
 =?us-ascii?Q?9UjU+UldgSb54j2t8A0ySWrS23T9ngwApG7FBjYzhq1Mqk1nPMeENaM3l1n/?=
 =?us-ascii?Q?4xJCzRUmz45A6HWTmXBVclPZNPEFGGoS1+LQBsl1O9D3/5Nn7nZ97iCJ5PZ6?=
 =?us-ascii?Q?fMa9KpbSz1a1uVREliIu+qAtZjMHFhXULHIYm32OhtvIyV5j8Ec0oIYPGBFr?=
 =?us-ascii?Q?YQDQDXwET/kbaRJ2dro+f+c6ulmP9LMRGxrU2yDvMASz8l3CtKBrGqLjznz9?=
 =?us-ascii?Q?lvH9wjdfyjOzRRCcAGdl1ZXAtxDCO3CyJbrITe6YUCHafQb2NgL+ocP+n2NT?=
 =?us-ascii?Q?uDdyLV49lYVAvnDIQFOFuyE25N1sxHt6Cq/jf2t44guroHE+aBBJeJz2ijJw?=
 =?us-ascii?Q?ivzznyH6bCCP8N6biNWi7mmLl5QARZGZvSTBgl2n1g0l83exBV+e7uyB09cW?=
 =?us-ascii?Q?TjpDL1Qqg2w76npYcm0aQQsPEUuIwwk6l2u/SZEUUzIX5dvJAOHdmg9zjkox?=
 =?us-ascii?Q?FEiqq52bh5hRiDfff3vjciH/S+rayvNfBT9oYIzp6BL/ey3Cic9Z23nWuNsw?=
 =?us-ascii?Q?Y/W/aW5U04t+gOScNYDHqmuVNm17bQTpBWwiP8vFPjFzSc/KoNRwgS8oQm4D?=
 =?us-ascii?Q?sX4fFcamu5zLF2ClH/LG9FJzLV6TRZ4nEbA6bX2I9JtBqTXvFt8DvC9Rlghu?=
 =?us-ascii?Q?VdXFQt8a8mIqGNH1C7f5fZbBvIgTZxZ/HCe4yQm3klu4kmBbOJ3AjpKUyqUI?=
 =?us-ascii?Q?d24n0c3xmywvseV5ACHqD8d5sszpp4PLTCR56B5kQR+FtspZnh3c72pZ6nk5?=
 =?us-ascii?Q?pxS0mviKadOegAYO3zrAJJbDsEdZeZIiKe9O1J2hoylxJOEUEEL524257JAL?=
 =?us-ascii?Q?Q0kHf+6jPtGtL8hprUgIwBjzqWJJR80INjj6kXQv6xg9BItUGTf2MAIJq9Fr?=
 =?us-ascii?Q?Cj0EhzatU3TBGLQkHLgvFDJ5jQg20q2RiLIXaRmaPcbSqyca225vVZ2s8POT?=
 =?us-ascii?Q?1poyLQwok9BD94G1YzJehnFH6WTKpTdEDZWt4FpQCMcVMxcH0Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fzLN/ko34L2+FEdpgeJ5YXCNtpV+5fEJUpEwXQ1Cy7tSBAoFQifoYkalyTuL?=
 =?us-ascii?Q?pPiFElrn5YP6XRbsQPDaeQrOioI6OPV4z5bFMaJS3CdTrzuceSGMuq5oYm1/?=
 =?us-ascii?Q?JO8B9s8CyPoiagrNXAWMV9IObRE7ukn0Oa6dF+RdkIxn1m1wMgSumd6Rmcsk?=
 =?us-ascii?Q?JIaqNBwSydPDO7v6zODspsNIgX/OVqQVtzgE321wqlSjClEfj1LvqfB3Slrn?=
 =?us-ascii?Q?eEAryD4ptSN0b7jKUte4sVCPhFm1mJezs+9wxcjMYs6RWC7IHTVkjJFEI9Rj?=
 =?us-ascii?Q?bFI1/oDbWCwOdo9bYwwp1kUSHr4ILAi7I4tD8H3oRND0N9KLJPIKsGUoxBrI?=
 =?us-ascii?Q?QsxF1IKlCYlL63MoLpydYlYRk9rzBccEeYn3VP0ZKRufIsiRpZms7Gl3UhxH?=
 =?us-ascii?Q?ON+aKQcpsewvyf9IAWWsr30CuuBoMeg6MXIKY95Hdj/I+IP+gZY8tZTJ0+bl?=
 =?us-ascii?Q?IisxwbG+mqpWDJ47PBReYu/Vne7Bakm8XyfnmEW3soFIua+YveNK3LoHTV+x?=
 =?us-ascii?Q?VApcesQU0MrAiuPArfIh0KiHL4X/6+V4EOVpO2uI30jZcrLEAehJmWNHEoFZ?=
 =?us-ascii?Q?DibJLM59KVKAzoOEbGiUCjIU3UarYMXzq+rQXgfqQYkD2CqVdMA1TwUT66MS?=
 =?us-ascii?Q?i0ISIZDdfwX5y2KtntpLM2obCiwO796D3S0zKW4Tf14K6nBXL3tUR8m5KqKg?=
 =?us-ascii?Q?DlYryL4QJXg9AfZVrJo75zH0Ma+Joya3QM3a4VwsCD6yUAs+lsUaKfR1y3hA?=
 =?us-ascii?Q?OiK2Qu6udNkVnN6+iG3pqxXlY3DOSB97FnqBNeugR7Qd/jW8HFsbtChzKFE4?=
 =?us-ascii?Q?T8BfFH9+2YBf6pfM6AEGK5Pk2XL3aHZnYMdxzCOS4qHu+TMDAN/uInC1OAtH?=
 =?us-ascii?Q?iSnE+ZDBwz35i8GInMTdknjvazJ7ZJA2t3DUewDayLK1EUoE0vULJqIP/bXc?=
 =?us-ascii?Q?870i2pURm2o71ywcVYD7lSWjLVh/uiGHSSIP2iiszNOXksmIPKcKAO6ElYsd?=
 =?us-ascii?Q?j06tmQNWaaX2JKzJcogOTzoo/8wUwmGyrGrcuVlJOa7+fxV0yPP2gevVsKZE?=
 =?us-ascii?Q?/0ONgE506omVslh7ZYPPD/RIQrlULtmJzFu/kRP1Y/GT26CAHNUpnFY6GNJ5?=
 =?us-ascii?Q?o6wLXpK+r/gMY7Bq3vz0w8+nNZ8ebkj8dUQTXL1TFAyhnvmebgCfZe7P8AoG?=
 =?us-ascii?Q?9yzeAjQhAI9ZLhugDVlbiTznzMtWMMHj0skGmSfO3WnrjA2BOSoGe4/iQwAc?=
 =?us-ascii?Q?SWSZjpcYq9z6YI/u0uMer7V2tyLj33VkvC8l9BXH5R9AG8sA5kksmhOc+ra0?=
 =?us-ascii?Q?2hrHspc6nbhLjiL0nHKWOPfhfzj6T6M9xPWsNopQC534why2s+GGpGE4WfYB?=
 =?us-ascii?Q?de0mRjnicQygTKtoEiNRCGtiJoXDAn1IoLYx1zNDUOgZ6uXLBOWxorXmaaCj?=
 =?us-ascii?Q?F38fQ825VZhFZREUtGoW3q6Lu9W9qEOQsSzZ34e9lsJ3TiJyPeFf1Mzlb2mV?=
 =?us-ascii?Q?p/69+sU0Q0JTMGweKV+6BqLuNh+0VeMOFzN2AMEmPM+CWHENobkb59AwHkta?=
 =?us-ascii?Q?tNeuG0KgkmqeCclPCMDtchpybOlG/G/XVEe0fxaQl4DBo0WrUdzvi4U6Elg+?=
 =?us-ascii?Q?/MJPpLOAODNtpOX/euqQ9tv1JyyKZSxoi7uaPruqmzIY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74d1adc8-27d1-49f1-9b81-08dcd3195870
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 10:54:59.0780 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mY04i9UdKir3Uyc0YXwOF7lT0iT4ppsJdewPbM854e5jIrqiJ2wi+sZ04WmXQ+fyqKgBGoYNvHvOq8O6ZKu4Lw==
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

> On Thu, 12 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > DP Source should be reading AUX_RD interval after we get adjusted
> > TX_FFE_PRESET_VALUE from the DP Sink. (before actually adjusting in DP
> > Source)
>=20
> Please explain why.
 As per the DP 2.1 spec section 3.5.2.16.1
"The transmitter shall finish reading
from DPCD 00202h through 00207h, DPCD 0200Ch through 0200Fh, and DPCD 02216=
h, and
writing to DPCD 00103h through 00106h (listed as "AUX TX response" in Figur=
e 3-51) within
2.5 ms or less, such that the total duration for AUX TX responses with a 20=
-loop count does not
exceed 50 ms. "

Thanks and Regards,
Arun R Murthy
--------------------
