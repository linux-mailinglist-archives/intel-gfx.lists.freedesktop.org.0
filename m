Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AA59DA1C9
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 06:43:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BCCB10E1C9;
	Wed, 27 Nov 2024 05:43:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DCCk7uf5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C7E10E1C9;
 Wed, 27 Nov 2024 05:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732686209; x=1764222209;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=do8He4S1W95CNga/oxHzeG73yKrGDQq8vPdrWDSXPYg=;
 b=DCCk7uf5VKFqr58xXgpebFVq1ytF+w43YGcQWdji+DQ1HuS9KYxAIfKY
 xtjpxBbkfR5FS/PbSmhjJTs43VVBF9X9neUUGdg50ywEPqn+PyLAienRd
 fveedQWWoOjSo/7eZi/x9G4VNyFc8k7RPgFmS8n3wVcYcGNki3qgCBVtJ
 00zqB7jNlry0G8jWAZxDSbSxF2CAReabTRltFePF14q9dvekIGm5oHB7j
 PKTIOZq4LiZWe85MIyiODxyI0lDBk2EbMUZ+p6DhkXWV7lRR09XULLwjM
 1XHHpzymGRNH1beGP+l26Nlq+ymu9y5jJfSkf9lj2KlCdQ6JIhHG9a3Q5 w==;
X-CSE-ConnectionGUID: tYmjPlaUQ+O3waGGNu2QUg==
X-CSE-MsgGUID: xGON8WfBTa2SJXGp4O7B1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="32248252"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="32248252"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 21:43:29 -0800
X-CSE-ConnectionGUID: pHzJMeRqRXKs0TazlM1JJg==
X-CSE-MsgGUID: 7D1hFbd8TYu6TK28kvZ4vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="91646427"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2024 21:43:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 26 Nov 2024 21:43:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 26 Nov 2024 21:43:28 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 26 Nov 2024 21:43:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YGeiQtJbgu7bwiKmbQ8YX7yKKaeYa33GvELHjzDwRislykeroo7yjYvqgvuWG7VC+MRv5qp2M/jP+GTzmjVIgwSs19X/kZ5CqzeS8sX3iLp+KCtipwm3RUy2UC3qMYLuvji8JQugrN9bknAhey281tJgMASCgRl6fLt4ll7bFeL8mpS4YVXbpZsUJZsX924Ojqk2lZsQ76+4dJjdYZG8rAsfz7Yf5nUj7P8Gm2Wm8GmN2wnUbEdYD6s74ec64xq0NHE9A8BMkyW2gwT/4BGqORezrDDsU+V5Xtn8SgpBnp9dZfXRRvovhQ0sQLeN4/w66MibX2zjfEJmrcWSKV29Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3DxhdymICTfoLSBGS0tz8t2xzNnJds/pf6D/89GhK0E=;
 b=vXBkjKJKRodGR3eUy7vMZGNsQdrcWaM6k0QIwYr1tkrB57lIMsvvS1EDtxdEtP/3jUzNu0Guzn5Zjy7CnyU0k6tMg3Jv8DUfLqIMpqfzRNgn7pqKPKHTAVUHdiZ8J9277IDkLy0RylItngdJJ4E+JzXAtcPrXUAhbV9Jgh3bBrUJKZXFWobBuEP/Ug/OGwBr3tsUJUJ7tWxfaH/UigHZwDMdnS2igv+zmnLGnrF6rB414JeVu28RKwKm8QKpwJuMh5pWi0QB6YN4vbEdgbxK/ilAOx+xlh+eFXyvCw9Q/KRISWa2EJAVTd8IC/JlXhwbTNrd3uLb/1ZMY5zQ7cGq3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB7742.namprd11.prod.outlook.com (2603:10b6:208:403::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.18; Wed, 27 Nov
 2024 05:43:25 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8182.019; Wed, 27 Nov 2024
 05:43:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 02/12] drm/i915/dp: Return early if DSC not supported
Thread-Topic: [PATCH 02/12] drm/i915/dp: Return early if DSC not supported
Thread-Index: AQHbOzfzolE2K2z+ckWu/BtaD3aiSrLKp8NQ
Date: Wed, 27 Nov 2024 05:43:25 +0000
Message-ID: <SN7PR11MB675041BF8EB49756CFEDA323E3282@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241120103802.134295-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB7742:EE_
x-ms-office365-filtering-correlation-id: df13bbfd-015c-460e-c1d2-08dd0ea66997
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?TwlN0FJXrTpfeggm4ROgz6/22aGQ8SK2c8hGAn63jdmsGqTpnYC/IXzwe5y2?=
 =?us-ascii?Q?6l7JnTEnmBcS6sevffLrygrFCWJvEuD8dZRTjdY9RRClf7Y4xjZj/HwphKG4?=
 =?us-ascii?Q?RN0sKfw7z9gaHmYSUvk60H/ZvEfAg0YFJ9EIr7eqQidJcprCKOkEeFNr0Qpz?=
 =?us-ascii?Q?kfCFOJmwNNZo5ZnYe7TQFbF7h9wymqSHu2sSXlEn4IQQTRYhmeKPSHy2PELc?=
 =?us-ascii?Q?a2ZOPTpN+1dPzhLBPKVGijFnkRlbfBnAy7LCjq9a2JsQv0tDLD13pj6b6jdX?=
 =?us-ascii?Q?FZ0muZ3HtTbb9E+y7m1Y7YxBhcpSmJ0Vb/enk2KvZK9CpTkV3o+/aUg+hbR5?=
 =?us-ascii?Q?EfyS9DyFazHE/iV5SETl01rzM2APtZZIJK+GvEQ4D/AY6FarVZfB6Bh/COO5?=
 =?us-ascii?Q?EREPPfujqJ/BHusJVP1QXJ5KKFBJJ79x597BlZ91hSFshBVxJmPfE+vXG3NR?=
 =?us-ascii?Q?Oti6KIvy/eTSagX3N3gcpEZEpc6hUyOJu/JFF7YcMsgImITS8H7GTqm6FkZz?=
 =?us-ascii?Q?oS4unu2l1NLCNyl+HNvapotxSr5jXC012VJcDaAm+eVWSg9HFLtDolwtxdo1?=
 =?us-ascii?Q?kUMlwe0Sbm/N9M0chFeLheprcl60kWyaK0KPEcI5gZsTmU0lgpuTznvslupF?=
 =?us-ascii?Q?pX+aQjPTXCi/JOW1/lwZRozarjQ7PQZyZEhsL0fkZek4p/9e/mTkpoSkicHl?=
 =?us-ascii?Q?Uvc2vD39kyOU4C9N1+Ia70xFZUlDCeEgZegN2hjmCozF/WZ2UoAPnr9GCMRV?=
 =?us-ascii?Q?pokQnUvVdFqH85741cwcroLATBIlahaT5ZOUtP2V+L01kKO6E8F0wxTLL3RA?=
 =?us-ascii?Q?P7seuwqJzvnbeF0KHnEndq+Tlq8BgILOpo6c/aaxcQq4TBxs80u4tEA0B8ib?=
 =?us-ascii?Q?WtbjkI2NSA56fn52vi3sHWRCVZ61oUG5zH2Xu1wxtquX/oS7ahAdrjHCdObF?=
 =?us-ascii?Q?BSj1ReIcieD/jVMiYoLiRRlI9n1oAt7HSS3QKMOjsAS8bGpfcLy69C/eQQYU?=
 =?us-ascii?Q?fe+CrXtLXZ03xTtPsIkF0Bqm6Lha2BEY8CnByS814fcGm4UzyqmRYK1jUUVU?=
 =?us-ascii?Q?PpG0JgZxc5ZJ3SsXETurhf3Hf0BsOUOh2GowmXHg3uOa7F7qMUz7P/vyO1od?=
 =?us-ascii?Q?CZLg5JZXkUEB++2YD5nCXt58IRL0/MRaE4s4/9/EJjHA06aelKt7AjEjKcMz?=
 =?us-ascii?Q?q9tsFDtp5vI+xe31ActujaDCRK1H7COI00piLxfxmhYSbBE9BSepfhfUIc7e?=
 =?us-ascii?Q?TuRcyPzDP6EdEEpth3DMPNRdbHtn4sVU8+GOpo3lSqHMBkapYa3+7yRj3WfN?=
 =?us-ascii?Q?NtIjdkSjDAA7fzt+hew7mxaMdouVpevzgIppU+Xuk49ADE/hyttney9qEYfG?=
 =?us-ascii?Q?AErSFFTIVG8li/lTjrsZ/tQU2604Y0sP8SrAtWN1pUfRuvISiw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vK7pbA5AG35KyrtGSGK6L4k2wwBFIyVi8wq060e+zRDKexQemV09F/gBv8FW?=
 =?us-ascii?Q?FeZFDZeBbX5DSMThSsXNRA6cxWYl82UZhIGXUqIJ6oY0xjnghiQ3oEc37A9H?=
 =?us-ascii?Q?QbOZ+VNYgoNOGMp7l6lmMWd5XbU65W2bWsaoz9lRVnhQGGDegyUXC/vwaukg?=
 =?us-ascii?Q?rjGAyrWoVfZels9lmGcGdnHxQlm+MDf21C5d2s01LZw6C3iR9NwB3TeWxxg8?=
 =?us-ascii?Q?glsNwJ4pckHHj0/9b5eY8ZBwWUEYgIPu1hJFTr5z8UIDu3H9uIo/j4J1I7Uz?=
 =?us-ascii?Q?ydcP04iv2ouU6a8SZOs4NBkABZr7s40lM3UlSzHUx23ifePEZVrdg9HriVva?=
 =?us-ascii?Q?6BzToIxixA14h1iTITsL7PGc2d5hCVt1f9luIz0EevkghIbPdfdxCIyufYUb?=
 =?us-ascii?Q?MqrK6T98pZIvNQx0l1QFp6mrTdFAw7tUCeURISuUK5CZ16Omqn+G8n/vKH+y?=
 =?us-ascii?Q?3Gr2bo/fR0hYeuyTU6fUaEdjaMEkNfGF1zmCArNe3UAgRLCxO8EdbI8WomcV?=
 =?us-ascii?Q?kP8iVYhGXp64DMz0OLYQO2Z/O8N7Ely5y3DL6KOE4VVukZNITzJjn7AZhpn6?=
 =?us-ascii?Q?FtAD4HMqHtsNP0jBrK0NB70wkWZXD2J4JUp6OJfymlqDgt6teBTRQ6niZGLp?=
 =?us-ascii?Q?h6EmuhGjPVcw0NeIzeZhAVEhJYRZ0i6TZCUOJsG+VHdwHEIF+UEtCZwE7V19?=
 =?us-ascii?Q?0Pp5p8tDQSCH4FUiJ1izmGyjhIXMT01BwZyR72BUwlFM/u0U830GR4r2yROO?=
 =?us-ascii?Q?uotdDDnPThLWGW4Ki8jgLKrYry1FVV2GVFLik/L7toBI1tMBwpcHHVY602Y+?=
 =?us-ascii?Q?cv+Yqf3J2Z61fGmeVq0eLfJ9suB5FZJvrRt/CfePfEe9MnvxZYwWoQ0HbP/j?=
 =?us-ascii?Q?7XnWVQICuROMp05/nW2FNxoQF18jPS6RzaCjkCAgHAoBCuw2fNxbwjiwMzZP?=
 =?us-ascii?Q?zCas9cCUeHAY+UpvrVXXAk9ZjSB+g82GDZynm9AkIiYFeS70BK5S2iwPd7Cr?=
 =?us-ascii?Q?y7HqIiSFhQKCK46nng8wZUJx52a/cOLL8OH+Byv+VZOIa67sQ83szH9+Jl9C?=
 =?us-ascii?Q?MQY7diXNGivTqdPXe7K/9yHzdbM0dTE7XBBCHKS9h/mSoHtHAF/ZuDRfL1TB?=
 =?us-ascii?Q?T1DB5ClyOyug9Np2ZcP4U+OGLAagl49EM3DQxALMKdOZLUgkVnbBMINBYhMn?=
 =?us-ascii?Q?6JZp3e9KTCIsN6MOr2bsLTcvth2OvjqRx4Bra95Hw4HeNLOtT23kgt/xA1dR?=
 =?us-ascii?Q?rFLCPYQsfF2UCZwjG9JB4LNkdVMmyv8HyJKvpL7g4qcwcDPG04RvIU4UKiIC?=
 =?us-ascii?Q?dJdbK6z1aLgRkHgf45SQ62f7Vov6DMDz9HYOBraY5/XRyntZ4Ip9mdJwdWHn?=
 =?us-ascii?Q?/CJWXqE89CVvpyxO9ywvV/+XBYQB/fTdFVm9iUbwcWaZCI5WYlpNbJIlrmAJ?=
 =?us-ascii?Q?HStSiEb/IjyAz1q5QczIyUWmCud7/Mo2vWXXW4Rg46qx4K6mcxREH9v75yP+?=
 =?us-ascii?Q?uvOM6mEtDzmIrcuXdBDvuAotCP5osygjvoBSgUs6zVQv5kOi1d+kMuUikcyc?=
 =?us-ascii?Q?IVrMzVqC5D0riFbpSG44yrn78I2D0C3AHr/woOyH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df13bbfd-015c-460e-c1d2-08dd0ea66997
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 05:43:25.5107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ShqcaU7E6O0WhbzNORE9TU1521xHShKpgOvG2N6kzfOzFnkLj9cUB8o3rpIh8C+67tNsRHmWQ5MOb35stTCT+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7742
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, November 20, 2024 4:08 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 02/12] drm/i915/dp: Return early if DSC not supported
>=20
> Check for DSC support before computing link config with DSC.
> For DP MST we are already doing the same.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index db9ddbcdd159..dee15a05e7fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2378,9 +2378,6 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
>  		 !intel_dp_is_uhbr(pipe_config));
>=20
> -	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
> -		return -EINVAL;
> -
>  	if (!intel_dp_dsc_supports_format(connector, pipe_config-
> >output_format))
>  		return -EINVAL;
>=20
> @@ -2643,6 +2640,9 @@ intel_dp_compute_link_config(struct intel_encoder
> *encoder,
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>=20
> +		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
> +			return -EINVAL;
> +

Mostly looks good to me but I was thinking what if we made intel_dp_support=
s_dsc one of the conditions that
Determines if dsc is needed or not.

Regards,
Suraj Kandpal

>  		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
>=20
> respect_downstream_limits,
>  						    true,
> --
> 2.45.2

