Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F007D940A39
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 09:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AB1410E4D7;
	Tue, 30 Jul 2024 07:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WDM/9PPW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F7610E4D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 07:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722325796; x=1753861796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eWwF9nA9N0/eu4aVhwppbFZIsMDYuG9LyVimWgAu5OY=;
 b=WDM/9PPWZ1qjFDK0xALsSVptc7Z96kbsoeN0RMLHqrdwfZAqC4k/857n
 4OJ+CVd1oHQHxSkFm6JFb2c94b30fuPbjm2a7WaYB0GQNOCVOJ5bozFQt
 alcrElRjh9Gx8e5LfgWOOt0hofWFP2fCeEvcsisP+j1pDRDMWc2U833dY
 NPzBqvkmCDnILV+ZlDyoeeVSpfVM0GwiH7V5sIyXOa61EYYcLzQvk8kia
 wVucAc960PZNwSarhzLc+4GtUzQkNR2WXMiR+Yq6NiEJ3eZliIgxlEIb4
 HxZa404C3GFcW5kP6Kbnxt9w/FaJYxWCC6drjA2na9xUykVsuyhwKkwSo A==;
X-CSE-ConnectionGUID: ktGKeT2hR7q6G0TQ3x32Sw==
X-CSE-MsgGUID: fCvty2wXSbGyO4XgW4NFYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="37634328"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="37634328"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 00:49:56 -0700
X-CSE-ConnectionGUID: fmrlcprAQKCbjNgQJgzpbg==
X-CSE-MsgGUID: smWf6f1lQcaPf/Gk8y9sEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="84893935"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 00:49:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 00:49:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 00:49:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 00:49:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 00:49:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ndm2iCXVggHCWsSfzYK6KIxyCZAYzzoLCypA4NawajmBpuaHvLXRx5JrwYYhXLfN14nLroxurjWKRFd2lKEOBEe6Ji7dL3jpzQKxr84dVY8psqK1s+pbo6gyOMyCCyf/M3RZoyDAuvPxSNvXBh4mugbOFMkN10vMjcSfzJPm2/mZTdzybRdrYp/VmdpHOp90xU9CpDPdm/I1ivt5Qpc34A3ZOSh8aYris1MWHlmUlJryueUUyH8BEFVJxfkJ8s7br38sFTV7UwvdcVnh4WAa4RFBkR6MZjpufFu3JPYBTlh1y35+TZenMtO1Tt/WTO6+WEjkDaKpCxwT+2W6Wj8E+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6CCzreOh365nXOmFBO6e+tTjaEJak4doYY5ls+PfiiY=;
 b=Ydj1tl5ix8Y4NAtwuIfFbqPSRS2iL35GVpd64mp/dkTHPq3Rmapm7ULHjgz6vcu7kOTR0awvPJzM1hBsPobj4EgWAQ5IlbhFZt2XaDXAxPRaos/nvajYyVeC7TN1etXwh/o7ckY5hLXiDfi3GhDH2ic2hYWEs4bUQmdOCGQtnMPS/5hUlp/RRDjKfjpHuBlaBqA0600V1o5+JeqdmbzJVd7W4GkgLmneagBTkqSINcJLlNucAVcamPcIhSBzdSSPDHk7T1/1l5eYi2V0JKWBp4Tna5OjA/2rYH1fb1W0OrtP4GPMvZb0Vfpu/3vgRkxPi6qKHkZ43PW96aD8Q9nwqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.23; Tue, 30 Jul
 2024 07:49:53 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762%4]) with mapi id 15.20.7828.016; Tue, 30 Jul 2024
 07:49:53 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
CC: "Shyti, Andi" <andi.shyti@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>
Subject: RE: [PATCH v2] drm/i915: Add Wa_14019789679
Thread-Topic: [PATCH v2] drm/i915: Add Wa_14019789679
Thread-Index: AQHa4lMD0iVENQwAUU+iqf+PmdzBq7IO4bRA
Date: Tue, 30 Jul 2024 07:49:53 +0000
Message-ID: <SJ1PR11MB62046C773366D73DE445AB8581B02@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20240730075220.3087411-1-nitin.r.gote@intel.com>
In-Reply-To: <20240730075220.3087411-1-nitin.r.gote@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|PH8PR11MB8013:EE_
x-ms-office365-filtering-correlation-id: bd6c0acc-bef0-40bf-a3fe-08dcb06c32b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?bwZgbAdTCduqliAQ87iLN/oW2lq9ASnZPnPVxaMDO6rwFMgdwHyCGOqGPyBY?=
 =?us-ascii?Q?H1JhKtEzl3VLtRlqOsxhPqRpjlfR6YDqg+Ahu9TSXXl87ncTkDuTgbqI07ev?=
 =?us-ascii?Q?Xmnt1huCRBvXzTyZQn8FVB+MoMe78QccChZvKA9CbdqrI/FFTmOLeyT0jp/D?=
 =?us-ascii?Q?Zu3QubIBDslmoP3DXJjzWP7bsnZs9KV1/9Q8f+BW3ariwuUrOrf33Ci7n0B9?=
 =?us-ascii?Q?6ycFelDdyrbFOSWgIFdNkkTKgxqpmfqkHrs2xwJTl08Xa5bAMxlL4AaHPOEI?=
 =?us-ascii?Q?ulwppNqvMzfVTk38DoXoEajWXDdhowRB2ZP6hclZKA1fFjQCWViLIWwBTd4N?=
 =?us-ascii?Q?cHVNr0nRwGBp8VsF3PC9M/JUEyUHxDds8ez7VUN5jTvVoLSfjRZNA55+Tiv1?=
 =?us-ascii?Q?OrftmhhvQEyjUmjdHmyUTua3uQKW5bwL1WKJyaGh2/4WqjOyDFJcsDa5jS7D?=
 =?us-ascii?Q?rbP7cZvSamO6BsSVegtPiN9OJRXYXKjgxLe1/lZXm804gzExprmINhYcEju5?=
 =?us-ascii?Q?7QQvDasHqcTgTGw8guR0GRC81uytT+xymJbt+gievwu8N05Ikh7a4VJ8dhEN?=
 =?us-ascii?Q?D7GswvEazrmjU2sHmWF62goXbaA9hLKsStX6T3uZzn2ooOoLz9+WmtHETXrH?=
 =?us-ascii?Q?Nx06S4pT5G7LhvL/FEyddSHKHMEyzOXpKSnCxxqj24qF4TNi4xZftrGv5puK?=
 =?us-ascii?Q?8i29DU1mMh0Our2toWL2ZinHj4w6xPb+v2ud5B5PsNeEE9Jd7gF+tD5rs1tT?=
 =?us-ascii?Q?qH6EaulNbNXvvL5qRZCIB3QvMjlXbgHBBYZSAtUdQdbDdGpE7eyZs7Nqew2E?=
 =?us-ascii?Q?99KuRl2n9iEqwNSL+C7jdSbzq1dhg48svuSz9nkwYpgiWhb56OA6XjmASvss?=
 =?us-ascii?Q?icIEp+iFkU/qWnZNxms5kK40PYU/NQrlQoKdWOl8wVo7JlJiFbBCJlrloCtF?=
 =?us-ascii?Q?a0FZ24nve270Lp19Hoe0qp3KJGhRBJDSn3orp/nyYtkxERChxethv26zioSP?=
 =?us-ascii?Q?umD7vO5obOMexcH/8V3Q3iecYSWQZsLhjMuMVd3Lnr0v1BbdYDEUDeB/fF+7?=
 =?us-ascii?Q?SLaMb4xfKQmJgkvhK/iojaVn2dywSpYr9Q1kh5PqOMDFIUuf2A/k4GOwtZ7W?=
 =?us-ascii?Q?yUdnXm3YLXvWfDPPoqN8dEpMzlNm+5DolAdx+ha8yl63YARquAJ9dMD3xCLa?=
 =?us-ascii?Q?9FgI4rzqToGpaEbS74hbN3oNTBHGVYfX7GOWWgyLT3ub3HIcUk0zVcvbfhvu?=
 =?us-ascii?Q?V1WEnO048Nt/1QwWmEEHopJXbR6NZ5A4fTB4w//KdDXIandinSNrvXyi56CL?=
 =?us-ascii?Q?n2VfnHJAImGmoqhVd32992DFSCqy06L0+oSR6eZtthjNT2DgwXLW+pIAG70m?=
 =?us-ascii?Q?2/kFxJ78f1iuR+uu5sl/2aD/RkEa4EqofhCMtc0PUdtHnJnuUA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RmRn+zKB/UbO6E6FnXW62jl8wylpvhumX3zpDeMKy95lJkCJZeUsxW7E3Y/3?=
 =?us-ascii?Q?l35iclGwha6DzF5Gxwuc2mU9s9XFOfA+AG9PIsfWy3ExFiMlWgc4cRvgDTJL?=
 =?us-ascii?Q?9zkYlujYdd+CSXHWPGZwkJJq2ioI+T8YFrASf4S1HTJWcFtoBKSPnZNOUfI6?=
 =?us-ascii?Q?9dmoVpZiIs6yGAg0ucJfKeHY5gVJ7Frar15DDZ5QlwyOa79AYbDodEstCu59?=
 =?us-ascii?Q?lcvgiQYTUfbHtnkV5edJ7PsmEqHce4y/gwrkSVp6urOPnD8EbfnERBwNPVKu?=
 =?us-ascii?Q?PjMrKAkjR49Zo1xB0QUsIVJsXpbLQUTtEfMVDybtUVhloT0KuE7rQzwmDsiJ?=
 =?us-ascii?Q?Aarfa7t5Da8E3vlfEtwjQFLGOw8GZb67/P8/IVYPayUUmVPtlZx2rSU2cyoD?=
 =?us-ascii?Q?keFp0VycjC/o0bICAaChmV8YD66+fldrQavoxfvSI6mfjY595TK9z4KqNesl?=
 =?us-ascii?Q?sX6Cs1SAT252JSCS++RidsFazfGfGW4AOee8ZgkSIblp2XdRiXOvXY9BP63e?=
 =?us-ascii?Q?kmKVmia3Xl7T4AhM71kXi0L/id8lSNT/KjhRrA5BWJgG0tQ37DQf3QMxdfy2?=
 =?us-ascii?Q?OUh2CacVo6Oo5XMvZyQajD/lH4kt3GdnHWg7hhQXjWYihMAyVPpml/eS4nEL?=
 =?us-ascii?Q?iYpMjuZGh5FDV3KqZwBPqhAW6hwFh5OpfXBHuQqUCkQfFpaVMX7GYuUvdH1A?=
 =?us-ascii?Q?yMpfQwIzORmwbHvknXKMuUHC9IskVaFDrVxr0mC0fIM9J/tP0KLzXXvVPa6A?=
 =?us-ascii?Q?YrOA4nKAipPK2RtHExUfN9zIfSDZbcV2A/r8M7vi5Canr7tEmMZK9L2rOzGK?=
 =?us-ascii?Q?2aVOQSuC4EVkuUZxScmE0f5mXFkFc7r/vKrKA/l09mFRuCsBWgIvbLRCOEdB?=
 =?us-ascii?Q?PCUIjukw954tC5FQNKbS8+zlTQkzV9UUUvfSmcCrJhELukhVh9l9Bf4c9ARe?=
 =?us-ascii?Q?VJ1GJvyKcE9ajTHjwTiTwZ0zXI3Uj4rVOFlPH8wK536XDXq/gwX+Ed/ffqRz?=
 =?us-ascii?Q?QsmfJ50BF3/H6YX+qVkgzVTxfnfqQCJ0iUG6dqlQl2xw+YS9Z4atPhhGB0uf?=
 =?us-ascii?Q?MR7zWCwIVzTv6sPYmOwuhOZ/6lGubAZJezGvE1/+DS2GbeqiN1jK+bDYq20I?=
 =?us-ascii?Q?Ik3MPL5k+VoyL22Yb6C+lIzNQlDk9Y7iMw84JHSNI0kMJbWvI+7ezalXfU5Q?=
 =?us-ascii?Q?Ya+PKTp/NpheHAHxtkPb9xEauLlydxaSLaMKiSdyqA+rx6AV8S/phum6kXC7?=
 =?us-ascii?Q?ey2nXBpeOFjhBLs40rM5/bmA4EqwyN2mpJ5wt3PmUAP4P5aseEc0h6qv3JQK?=
 =?us-ascii?Q?QaJw7lMRqV6cp7zeIp+PCDW1mEXFCq+F8unUcCfFPeAgxxalkWi+bXQgX80a?=
 =?us-ascii?Q?tCv9MajkFNL82/NAqsYKTMVzSJqwJELIJKR54660buxN0FLYyHPK8VSuJNl1?=
 =?us-ascii?Q?xlmT7NyAIl2ykyjGCIV0jc+/OUseftWS9U/6/AsGzPGXh74EUcJYeCjGkTBF?=
 =?us-ascii?Q?R+S+mVv0VjcriexUHI/WmvZdc0++LQAAt1vqJAbdvLkfi8YB4ZgWBrbJciLc?=
 =?us-ascii?Q?qHwZLBEMw/Chf7DniP3jYPk0F87DGvSiGaIqsEkW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd6c0acc-bef0-40bf-a3fe-08dcb06c32b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 07:49:53.2657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b3zDGLOioqrioCiMuImlTRfir5lBgEKxuoaLhYFV/exQMGVLdr+WsYcSm9DxrlGshgZNKz+djycZs9RdmLh758Eon6zQlCw1HKaE6GbXqoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8013
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
> From: Gote, Nitin R <nitin.r.gote@intel.com>
> Sent: Tuesday, July 30, 2024 1:22 PM
> To: intel-gfx@lists.freedesktop.org; Upadhyay, Tejas
> <tejas.upadhyay@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Cc: Shyti, Andi <andi.shyti@intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>; Gote, Nitin R <nitin.r.gote@intel.com>
> Subject: [PATCH v2] drm/i915: Add Wa_14019789679
>=20
> Wa_14019789679 implementation for MTL, ARL and DG2.
>=20
> v2: Corrected condition
>=20
> Bspec: 47083
>=20
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
> drivers/gpu/drm/i915/gt/intel_workarounds.c  | 14 +++++++++++++-
>  2 files changed, 14 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 2bd8d98d2110..c143d8133a28 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -220,6 +220,7 @@
>  #define GFX_OP_DESTBUFFER_INFO
> ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
>  #define GFX_OP_DRAWRECT_INFO
> ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
>  #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
> +#define CMD_3DSTATE_MESH_CONTROL
> +((0x3<<29)|(0x3<<27)|(0x0<<24)|(0x77<<16)|(0x3))
>=20
>  #define XY_CTRL_SURF_INSTR_SIZE		5
>  #define MI_FLUSH_DW_SIZE		3
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 09a287c1aedd..cbc2003886d5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request
> *rq)
>  	if (ret)
>  		return ret;
>=20
> -	cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> +	if ((GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70) &&
> +			GRAPHICS_VER_FULL(rq->i915) <=3D IP_VER(12, 74)) ||
> IS_DG2(rq->i915))
> +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 4));
> +	else
> +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> +
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>=20
> @@ -1004,6 +1009,13 @@ int intel_engine_emit_ctx_wa(struct i915_request
> *rq)
>  	}
>  	*cs++ =3D MI_NOOP;
>=20
> +	/* Wa_14019789679 */
> +	if ((GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70) &&
> +			GRAPHICS_VER_FULL(rq->i915) <=3D IP_VER(12, 74)) ||

Is there any macro to check Graphics range here? If it is, we should use th=
at.

> IS_DG2(rq->i915)) {
> +		*cs++ =3D CMD_3DSTATE_MESH_CONTROL;
> +		*cs++ =3D MI_NOOP;

Instead of MI_NOOP, I think you need to write number of dwords to 0 as WA i=
s asking. Please double check.

Tejas
> +	}
> +
>  	intel_uncore_forcewake_put__locked(uncore, fw);
>  	spin_unlock(&uncore->lock);
>  	intel_gt_mcr_unlock(wal->gt, flags);
> --
> 2.25.1

