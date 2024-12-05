Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC6A9E4BEE
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 02:53:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD07310E376;
	Thu,  5 Dec 2024 01:53:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QrZ3znVR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A10A10E376;
 Thu,  5 Dec 2024 01:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733363600; x=1764899600;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jmWZiHYBluqiQnDi64XjtTRep4AJ0EqetF43R4+4AH0=;
 b=QrZ3znVR9/NG3lpHvBJ1y3n8YNelwOCMxMo7Ft1mO1GbwuOc09pfZrR6
 AS27vexd/emq8U6wut6mBh++2EsyfXGGfsXBPF9sI527Z4zDZ5DmOlt8M
 FrqgyWM25xvisldO3SvLnzy5DmTw96ual+MA1FQBBtSHByTJYGwGZOacm
 wGSqFe4rl+iJ94/t45805lsv6kZ5oFZNCW1zlNau5w8LsAUE30Smoinho
 fsHqKf3LlyD0ZN7o7NxZpZsduHRjgt6/KDPWOx4TwsnjI25FYAqIusr8N
 BzGuHUUI9FsnnXkceDEHRIDHCfRP9SVuF1GnYYu/or06TUXy74CfZsf00 Q==;
X-CSE-ConnectionGUID: fXsZgR4jQdKiG3Q9JMXx2g==
X-CSE-MsgGUID: /fDIe9EYRWe9EnO8LgBvNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="37434137"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="37434137"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 17:53:20 -0800
X-CSE-ConnectionGUID: 6aZAwomqR3yKFYgJiT8Qfw==
X-CSE-MsgGUID: ogyxWx9uRU++bb7Ss6UdHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="93815970"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 17:53:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 17:53:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 17:53:18 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 17:53:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VndqodxGbfq790hRT53FDLI5EyI6fa91KRl9U08vN5Yof5jq1X240mN/D6zlG5yBIVhqJudxb9eo7P79LxnKGSt1Cn2NR7/X5uMHlBUF4AGntUwOfU3/4c2Ho0Gbu7kYtlGNG9wKkiShloVYGMOjfPJgCLyoMRK/uH8JmkKH0gLkmlYAu5syNOONEhc5A/E+D6DAD+Q/9kWZaNOJI7J8+yqC4sjF6JrdGnRJPGye44gb7ASaXmbT7ZY+1ROqcrFxvejQbrGuuppkHrm1lvA8V2+CdNW+KZjBvFGZNSzvTC/RU8Ku+Z1ris07fghrdcXtNBJTp7R9XkUEnewU6amQzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W5OzAj9qadWfVx9h9O2+iB1YGl095q59wZj852M+y/M=;
 b=hhk3810XMGv7ZQpEJHVxEwIlDrUI5NRUPzQ7/Hwpb+FLc8IwfV/4KMmeS5SjUXfNgfwOhX1TLa8ISc+T6kH8vZK5mhIEH07Hkj1ak2b18yLRtWeGPpDZUpMLTuu/vOP4lf7slmJ13J4w2qRCzhAxhalikjZH1wl8qYBQR/caA7/67P+83mPH5Z1o8L3DEshTPuGPJrTEMBR6gtpQR6vBljpq9zU18tBSv9zdcz2ZEcSDD7a7LdbruZh7KOuIqit6uhNsikpB/KEtv5WedRjeZngvOsjrMNRTqQc6ORP1Fr06n7yPdbrHljOUXU0v0Ta0Xu+fdbg0NxJ86DOLtQUPdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by LV8PR11MB8486.namprd11.prod.outlook.com (2603:10b6:408:1e8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.19; Thu, 5 Dec
 2024 01:53:15 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 01:53:15 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 5/6] drm/i915/wm: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH 5/6] drm/i915/wm: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbRWAFxltPZO0v2kqGjlLL81qT8rLW5feQ
Date: Thu, 5 Dec 2024 01:53:15 +0000
Message-ID: <IA1PR11MB63482181082B54CF70B1BF2AB2302@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
 <20241203084706.2126189-5-suraj.kandpal@intel.com>
In-Reply-To: <20241203084706.2126189-5-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|LV8PR11MB8486:EE_
x-ms-office365-filtering-correlation-id: b28dc29d-e4d5-48a6-9671-08dd14cf9555
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?udJcA20TLesoZDQkXUH7uuz7I1TuVN8RxAhog4yLfZ5izlo3/8IKgRiDcMZ8?=
 =?us-ascii?Q?aw2bvAb8pxqfe4H5somdpyDsDyPQtkEhMSSpwdE3a1ZfX/gDgmcDI7/mtpTp?=
 =?us-ascii?Q?iqz6v7wzKwUgC9sBChccY3WkBef8Bh5dKrWgiQ+3C/7EMVmMyDd4RLCu/g3s?=
 =?us-ascii?Q?JEvqGtTyLuuT5ZYW5ub5imF2TkZv46hP6v1BLZNYpHC0DGAQB4apyz7vOKek?=
 =?us-ascii?Q?QDSOZDbdPsN4dauLITLq1ZVFYHM6e8o19ChVsYtyLj2SDE0w7I7ygm5c/cCE?=
 =?us-ascii?Q?rlx/sLlK9lG5FY1jS4DYd2TW5mIfQ7xBPj1iiAm8aufLv75ch+lOv0Baj2PC?=
 =?us-ascii?Q?Y0Hl7oVnH7gb45iPM3Ve1hWVv3s3l5sBZh2nuefnB3Ep1G3hoACXtGCBEaSV?=
 =?us-ascii?Q?KQduJ1MvtfHJfBCjSDMmjwSdl358kqC66NXXwnpDJFwE60jUqzyPSfTngy/y?=
 =?us-ascii?Q?WPDE8PAEHsDqj8De9pP4vS50awAspktH85Adtm1zg+eaQnHGJNBYpKQ+uN//?=
 =?us-ascii?Q?4L4mWHtkd0s4MqObgc3q38MsMiUTL2nn6TnFymMPdn80MhX3eLHGVzE7+0DM?=
 =?us-ascii?Q?gj2XEGnMGf9tz6EeUSNpEg8uC/wBI8rU3KHoL3+h3WXiXqNVHHQrVOY+3cbf?=
 =?us-ascii?Q?4EJT1yOKjcrZzUQ6NsmPGGvTMsDkewUYhfxaEQbtOS795JUKblewdFd1WU2U?=
 =?us-ascii?Q?aJADtEs49uP1jDaU/v6nSk87rJ7f5LLNTpD2kxI/Mj7+/aOcq3tYLzbnqwRd?=
 =?us-ascii?Q?iHpSV/jjG/5PU9EsriWZtLYVtMuy2QlBNnL53igNZIukErK/PtzrJCblDTxx?=
 =?us-ascii?Q?PjkBQJ4IjxjuOW1R42oEB5vt26YqiPYtxwogI6R2J53A/GnIhBXAaMIKTyvQ?=
 =?us-ascii?Q?OTUHrVnLFH26xzdAfyQQm1HMvgGdA3/9QHAVikqWW5PAcjyEKzVMRU3X/5xp?=
 =?us-ascii?Q?w6pYIMwQ1ssfcLTsmOTTJyTCbq2nngW98vQ8mSzfCn7KbReOwYsbwrxb03Fn?=
 =?us-ascii?Q?gsO1qj9UiZDMHfljz/KS02JBIc5kk4TE2gKIco+9l0uKNZBZcPBpRxRL3WeV?=
 =?us-ascii?Q?oOp6nP3mLHdkh9QL8kxBZTj+wPlXfw58gvEINy+z6xDz+LWxhxavEWeoD5ce?=
 =?us-ascii?Q?Hg/RKcSUBAxpHqMz+pdsti7wWRmNX7OBu7gfwsC3yZBeSP+RM3QABVaN/vZk?=
 =?us-ascii?Q?X9u29JK8VIxJlix+9aigZgqxCNYeFfR22PWct+ivtsbRlBeBneKkfdTSM8mh?=
 =?us-ascii?Q?GJyKcjWXVFa9oWCiuRfS3p2gxK4rcd8JV213mehWfcPm5Uj0L3VCfJ75p2Co?=
 =?us-ascii?Q?zofwA0MaLWD/UV223qVWMZaUCLsA2jE0GUpvijL/sLedl/xZkCmrz2VuX3bW?=
 =?us-ascii?Q?yCm9c3m4dz2Ql06hONEt2R3i1vGymjrYPE/cRvhSn5ohBMr3KQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?07Av995466L5jCWc0UDt+GHqaOoKLCYc6AZq8Jn0XH8yG1rBk2bSx01m8ScU?=
 =?us-ascii?Q?wzHrXfTFbFd3bzw9s3+VuhtNwqz+3RU5JJ8qT2L1rtdSVWu7dXnKh30gI5O0?=
 =?us-ascii?Q?+5F1hANBGT0hcMv5hJu93Y20Z/Wz++1Zb63tV9+bsUOTP9fwWabtxCJwsgTk?=
 =?us-ascii?Q?s5EMfabeh9JD1o3DVM00Y9R3+sbv8Nru0J6TkXmWM4Wtc1rMW94l142IHKlf?=
 =?us-ascii?Q?ByPp9gWSRSV6znO8T5CbWQ+R94ak9HF7C61OLT6giw9CtUN2hLJVjY8tP5cj?=
 =?us-ascii?Q?62rxrkCnuNYZgSDtqhekbLEkHa65B8FIZRcfiYdAxDgmN+loiOdeLz7VNeKj?=
 =?us-ascii?Q?ODigsYxjtNoTU/h3zsuFTqE5y+F1MI2apZZqcGzkybJH1wszHxkpBSXpyCRE?=
 =?us-ascii?Q?rs68ihV5gYxDdpDB4q6Sw6eR+IyZGfnY75e2BxlY90lFWNbwSJ1EQrVxX5cU?=
 =?us-ascii?Q?meC04TOU2qh+4ZRzm3dtXI29/f8BuvaJkL4fyFUB4n9Lejmu0/Hj8sJFrQtM?=
 =?us-ascii?Q?dlF285zVzG7EXscQmHe8SGVLUVbBcR/RB/fawDTzE3btR/FOLky4+m4d3jW9?=
 =?us-ascii?Q?9q4D2gipzkHv7qdI3VehkL04RThR481t3RqETt6y5JsRwIG0952Hf36nuToJ?=
 =?us-ascii?Q?11CaFo2JKbfIyvYJSoVnNE4dtWgPg90drbzOcV3GKrEx4oqYBYIwcdJgnJoE?=
 =?us-ascii?Q?eLqS57/J33kuH8UgJgQfbpUWqNlXsKocoN+PVn3u0ekcRHY2AM+4K5dQ9vCb?=
 =?us-ascii?Q?V0Fai16eCiNfaHdgyqK8kz5hoFF9qSGMioNz4kzio4rpaZcm8biaFN6eECEx?=
 =?us-ascii?Q?xcNQt1j5dka+YPr9hl3RSfE/9ESmTi4mm44hTioMh1LUCYxeihAkdIKlWvXT?=
 =?us-ascii?Q?iQdJcSe3HpgPjYcdl+pyjevyngKUBweLsbc7fEKUCX0JR/W6vu6W8UVwmIyt?=
 =?us-ascii?Q?LIstlPdo7KUP1EXpUXpDYRj6u3kbr9xYwoh0aN5OLV2jNMCOvLGTXqp2aQf4?=
 =?us-ascii?Q?OgB+x0gU6sGGtKH36HL49OE8hoIWerXTbeZKwX00MKcQ/V0TGWsnCVSMbXnq?=
 =?us-ascii?Q?RgjxvLEyBl8nzulw6COu5pZc6rfSpkI8FTY/4y2zlYRvBGaPgtq7mbqoyRDp?=
 =?us-ascii?Q?QEzpnKUyTceufLbAC0TIc7qyJEFNpSpVd8C0wlJUZVDth+RLuaF4cyFOFD/e?=
 =?us-ascii?Q?3NnF1IP0sO+lkw5NhkZO7ol1rMw9rYp7pJKsvbYhWRAK77jpmdRfE752gB07?=
 =?us-ascii?Q?5A+pcUUcQ/GLuL4EGzLt916MZcI8Ed6VC7SBI7X4PuI2UW9tpzOXvanNfxgr?=
 =?us-ascii?Q?nKPw5bcok97ZPOXHEZfv1YykVbm/pIuoRMKkfkoRsWma77/RRGrAhNKvGXcA?=
 =?us-ascii?Q?75VtovWUDWOGC5hp62KGF9avG4gIB9fA1j9ja4fNiPenSm0m28HV7f6e5IuF?=
 =?us-ascii?Q?ucZoQJoB4yJdDsv4XgprBkVGJhwBOxWnPnxxlzpToaooqBiL5mt/vrji2ZzA?=
 =?us-ascii?Q?CT13/Cz4nfK6fITYSmyYTEOyhHtTwXzPfwdXeIaBKt3vFWkoPESwrxBJGYZo?=
 =?us-ascii?Q?UJ5uY1qLLrGG4FyFT0rcfp9S6MT0JTaz3hr6CekZf4omlUkJemcA4xRo4BeU?=
 =?us-ascii?Q?0vlsvcIBKKCTDG8PmSezp0E=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b28dc29d-e4d5-48a6-9671-08dd14cf9555
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 01:53:15.2185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SFtmIEOJpplWaZCvQKPpOzOHXdsN5pG2Ev0RL5c/SWyq3n4nymgAT1K49s9OG56VBcGWqIR3wULxb6EpyLiSKk5f4D8cxKJtUMs8kCrsSsvGXL03Eb2E+nNP+qtDD0JL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8486
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
> Sent: 03 December 2024 14:17
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 5/6] drm/i915/wm: Modify latency programmed into
> PKG_C_LATENCY
>=20
> Increase the latency programmed into PKG_C_LATENCY latency to be a
> multiple of line time which is written into WM_LINETIME.
>=20
> --v2
> -Fix commit subject line [Sai Teja]
> -Use individual DISPLAY_VER checks instead of range [Sai Teja] -Initializ=
e
> max_linetime [Sai Teja]
>=20
> --v3
> -take into account the scenario when adjusted_latency is 0 [Vinod]
>=20
> --v4
> -rename adjusted_latency to latency [Mitul] -fix the condition in which d=
pkgc
> is disabled [Vinod]
>=20
> --v5
> -Add check to see if max_linetime is 0 [Vinod]
>=20
> --v6
> -Avoid nested if statements [Mitul]
>=20
> WA: 22020299601
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 95b306c22954..4c032b1758e7 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2861,7 +2861,8 @@ intel_program_dpkgc_latency(struct
> intel_atomic_state *state)
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *new_crtc_state;
> -	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK;
> +	u32 latency =3D LNL_PKG_C_LATENCY_MASK;
> +	u32 max_linetime =3D 0;
>  	u32 clear, val;
>  	u32 added_wake_time =3D 0;
>  	bool fixed_refresh_rate =3D false;
> @@ -2875,18 +2876,26 @@ intel_program_dpkgc_latency(struct
> intel_atomic_state *state)
>  		    (new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.vmax
> &&
>  		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline))
>  			fixed_refresh_rate =3D true;
> +
> +		max_linetime =3D max(new_crtc_state->linetime,
> max_linetime);
>  	}
>=20
>  	if (fixed_refresh_rate) {
> -		max_latency =3D skl_watermark_max_latency(i915, 1);
> -		if (max_latency =3D=3D 0)
> -			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> +		latency =3D skl_watermark_max_latency(i915, 1);
> +		/* Wa_22020299601 */
> +		if ((latency && max_linetime) &&
> +		    (DISPLAY_VER(display) =3D=3D 20 || DISPLAY_VER(display) =3D=3D
> 30)) {
> +			latency =3D max_linetime * DIV_ROUND_UP(latency,
> max_linetime);
> +		} else if (!latency) {
> +			latency =3D LNL_PKG_C_LATENCY_MASK;
> +		}
> +
>  		added_wake_time =3D DSB_EXE_TIME +
>  			display->sagv.block_time_us;
>  	}
>=20
>  	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> -	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
> +	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> added_wake_time);
>=20
>  	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
> --
> 2.34.1

