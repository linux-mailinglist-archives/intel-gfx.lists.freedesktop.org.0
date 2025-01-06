Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 546C0A0267A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 14:24:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E744910E1C9;
	Mon,  6 Jan 2025 13:24:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qvl7+NrR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C6E10E0EB;
 Mon,  6 Jan 2025 13:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736169890; x=1767705890;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ad2+wIvpS4YKtRApIy4G8t96YpK8Ajp2nnUVZvHf8rA=;
 b=Qvl7+NrR/SAICpEO3v2lp6k7ifz4qV7T+IQO/2gvKbBP5mq3LkxBjU9o
 eVsYd+hRTGhZFmqsMN886hVbNACwazoeUvW6VJ0Z5W4fQjtj51gOGbCud
 yLWiX6Nd2JSvpMFPVpow+pyl44YRr8BCp5H7tGKx4hMZLywNdZkQCjyYQ
 UEhQyOytbzmNMU+tcksbPENTdGdE9gS9vA0xv0aegZLp86/iJbYEE5Qh+
 jXcjd83H+Zw361DvyRkNoz0wzZgVLSK6TpTAJye3n1ho9G5G98jQxr1FL
 k7rpyWg/0yneVCt1SIP41T92w7cqe+34g3edwBB9ZcPc1buVV8B8UcnwX Q==;
X-CSE-ConnectionGUID: pfS8lRTaQeqIO2ZLnrz+QQ==
X-CSE-MsgGUID: iLcKU3hySaOnFoxUs64Miw==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36475786"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="36475786"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 05:24:50 -0800
X-CSE-ConnectionGUID: pAr08J1+Squn+w1Jm9JEiQ==
X-CSE-MsgGUID: QfZrv6NORYuGzS+2FTMXhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="102960502"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jan 2025 05:24:50 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 6 Jan 2025 05:24:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 6 Jan 2025 05:24:49 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 6 Jan 2025 05:24:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IKc1Tl6WIc60CasHt8KjTOqz2f+mX1Dz7TNufoTehPjizsDuDhk82oGNBT5JtuY7DgEB1Ft1Rfn1Md7tTyG9a34rd1Nv1ysUwN2b0g2GyQfvaLscXB4bMSYtgdwB2NoqrWihD/zxSvNZp63lh2TKOze1LvD+cBJHkEqc9eufnwrM7RdH3MdzACn9up4L+po8k98mzq9z/dwUPdLXc+reiSYOjrZOQmTwWllyi7+UJJjIBkro4NH8lq3b6v9bxOnDVlM+/UmGTdjxO8hVtDYpJXnbxZ5po9nVr6+wvOOUfDGFIgPml5sR3xyIlOjWyNDv+/Lgh+fXl+GoB52ff8MoGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zehsGOkW2EaEKf6MtSAGf0ogfp11WELK5CVr4bZ1RDE=;
 b=P9a5NCFMGdvsvB3RPrbHrDIm2SOhEx804knWH0ubeaqMIe9ctKqAgZa5rW3dSDCo9NMRBIlWt5kf1mG+nUujVF2FJCvt7YQv42z+SsgdWfcOSJ8L8IKwu6B/szjIDJsA/Bv1prKptP5ZQ+7fgYZrNghpJ5ZqdRUutuaZK/nKKBJlQZm4vJ3j+P7gn8hfpozN/1TkM3y9lq8U1LwY2p5I4HhMCiG7IHF1gfH/kvOB51wkLNreytHTXybG4LeOKzai0tZb77+4Oai8uKZORxqQxm+YOtyMO9zOmsy1va+8uow4q1LLTf5rppWatFbGhZ2zBuO/c/UjBDrrhUzVk45SYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB6692.namprd11.prod.outlook.com (2603:10b6:303:20e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.16; Mon, 6 Jan
 2025 13:24:29 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8314.015; Mon, 6 Jan 2025
 13:24:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Topic: [PATCH v3] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Index: AQHbYCKGY0KQNwyLJEGJ0hSUySUg8bMJvDLQ
Date: Mon, 6 Jan 2025 13:24:29 +0000
Message-ID: <SN7PR11MB67506A4238D726CC831AB565E3102@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250106094408.1011063-1-animesh.manna@intel.com>
In-Reply-To: <20250106094408.1011063-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB6692:EE_
x-ms-office365-filtering-correlation-id: 31f7098b-952e-401e-7695-08dd2e5572ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gjKkKCl+TLTG09NbMwOTuUbokpNNQfzSyLEgJPzcu/MAH+bpBIx05UDCD1+D?=
 =?us-ascii?Q?tAqY+IOUfJ/VyF0/1eT6MWZEUnbc1M/3WOS8DirJLI2eWBQxONHQ4q38d5Gp?=
 =?us-ascii?Q?Bf3DOXqyK/tJLrwg93nCTALxGNhkOWFJs3XCNvnPnGPUsKLb4oTqJXj4F+HF?=
 =?us-ascii?Q?pspsCZ41+dPIVQ1tswsF9Gpb+158HvvVsGXABoGv+4MVRk0ua/PIx6CBihme?=
 =?us-ascii?Q?wmnNWDABHrph8Jd/mbHyzZsvfGnN7m5mdKxPoFF1zpuG6zmVT9qGpo8ZEUEK?=
 =?us-ascii?Q?dWiQbeBaYSwy2gY7GpYbsKF+scf0F5U00Q3q2fDwe3ZVFtD7GizEJZkXMD+2?=
 =?us-ascii?Q?LKTxcFFNtTy/NLB0OGO4CeZQkL0oEc8TmlVhxsdCMy0qnOzbLLc1F69PE9Ox?=
 =?us-ascii?Q?06/VC9jfmuFbSwg+H+TL+FOpx1tJetYMA6gE4HAZaLzTgYKKQYZesr8WiqtU?=
 =?us-ascii?Q?nyeBM3+Fx2MEJnzXHIOdMLTD7YArHDRQsttLv8TodEDjp8HrZvFVoLsIzWum?=
 =?us-ascii?Q?GlGUIHMsRZfBJasaD9k55j5kc28KNg3mf8SwdnejSXt2G7eUJq1nSMaKpIQO?=
 =?us-ascii?Q?zTLrZ+AwLZkOpPKRPmjGzNNJ5NJy6qS9z0wHBmO+2eQFBf7cHH8jJKdtQ5Yy?=
 =?us-ascii?Q?jcOElFw135ZktFd26juBXeocAseq4PS6HlvpvCARf4qU33iCkevdeFRAT5Zq?=
 =?us-ascii?Q?I4oZ9lRgRKCTsUyLdhJzVE8Tu3cV+TyXOFSRRDGcuLYtI12uvwE7WapRpV89?=
 =?us-ascii?Q?q4/OAk7vEQbgklKJQLcSSc9wLTFnsx6y/M23VZEuj3r6YrwzrEM5cKX/y3X0?=
 =?us-ascii?Q?YTog6d/LZ3X2gRkTkJd3l45MpgDFfNfl9P88zEjLQqv+6Rn0Ks9Cx9tsYxYu?=
 =?us-ascii?Q?st44LZAYbevg2V4CfTyqF+PFYEXpSywua7C3qwwhAfgIznc4ieZJ7mlnMi3f?=
 =?us-ascii?Q?WXo/1bZIF9CBqGZexEbU7gmJis8v1IFhwkXt+aQri25YPCnI37aZkz5XOyr1?=
 =?us-ascii?Q?AFK/BUPFfZvWjCrOVnRTHJ2Nqh+WeCHPecvMp2HfIfojcdT/z0VYVGFSx79V?=
 =?us-ascii?Q?yKoRzu9ksVUrgb6hIh8oY5r56CdYxFnqekbd9jkkbaAchJCOYXFEjKLuuNGk?=
 =?us-ascii?Q?XnuqDEsNOfeBGfy8z/QKeaMdMOfF7M+4fVZXLJlO5jVDwYT1Jn+kx5ZttT4p?=
 =?us-ascii?Q?GvMqLVOG/fqbk1v3pBLygLXRkcT0XxyoC7yAVPp/2sfraElSakA6JaKVPS0G?=
 =?us-ascii?Q?R5ciDSabsP737hF4JI923T6bv7ZYAOAQAc2CHmqEh+caL3p9DLT8cUs/YO5y?=
 =?us-ascii?Q?WDs/s9R3DyHaz4vX5QmPx5xwXxLL1ICn6rv8bt+dUSO+H5UuvZkKtoq6zxjp?=
 =?us-ascii?Q?AfH40WgE7ix9kLmJTSLs31Cn2wspxo7kaVbjnBDlji+3A2N9KMu2iNgdf6lb?=
 =?us-ascii?Q?ivpNrgQIcuWujbOjyGMYf+fFI4XKGDvJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6Em0F6PwH+dMuLfuRPMO4B2z4wNuICwhTnTtbxYTUxbbvFQj44AjPZuI5RvT?=
 =?us-ascii?Q?zxvaMVxwH5fV2KGfI+6bB8svYEiLAK6kNmVqW68W7zwITzJu55CXm4dxjYR0?=
 =?us-ascii?Q?sYm9XAc/ZbZkxyfHnX4zXotdBpSVzNe9G8ygb3pXyUsF3y1c6rAImLKJt8VC?=
 =?us-ascii?Q?Hr7IRrVlYMBbMBnZCf/DVUEgTFvL+0deDEwgbWLAtnQyT64/bd6FE9xT4zpd?=
 =?us-ascii?Q?jiT949ssIdWUx64hnJsrqt0l88J6OdsvF2qKIu0hPEWmF4AVI7gWy6Bgng0f?=
 =?us-ascii?Q?2ThJXXLzMgBqEXHw3s7OJpJgU5EzqB4kMgcWDaOaBwL82OPuuevO5WJUZmaS?=
 =?us-ascii?Q?VXKJuiAnl+vFCifMLTsAMrLUSzJKgF5vxnSS1/OtUOxN4Kzma7QtD/KI6+xI?=
 =?us-ascii?Q?zloyUJp1avh56pVcVJJTSKBTMdve7C9WxRpgY+QHXXu+SdCMEkL1yL1FfVcd?=
 =?us-ascii?Q?8O60IuuvONNNM/9Q/JWek2cPUXY2WBDf7sdfWNtLrsy059Si2NSVee/ZrVeh?=
 =?us-ascii?Q?GoyiLu0oO6t3CJc71rrQm+VguhDpklNaQKU9ej1WL1aK4Fawe0DPPW0ihM3E?=
 =?us-ascii?Q?m8+ol2jxm0DmWI3TdwBXg1pFKi70PVKavyHMVUqRbtWt9W5WPLQiTz/6FXkN?=
 =?us-ascii?Q?U1SQRU7DNbwwW7VV4xMRpKU27BH6/BDY6irPZGZEM4J6/50AMfxU4sn2ch2C?=
 =?us-ascii?Q?5ztlcm5fA1Ho/jFqLNmAqpq0lR4xvZ91QqfJhQ1VwUgJNajRHwkbnqgKOROw?=
 =?us-ascii?Q?lZHPuT1JkcgcZA0VveJS5UYc1LP00GsptPNRMseDDoUy66njZyRodz4iiOsb?=
 =?us-ascii?Q?6jRTq1AKqL/SizH+nSub6gvpvK6+BjWgcyVEHedgoo5n/4TFEg0AupmID9sJ?=
 =?us-ascii?Q?9E8PdQc0ziRi6kI9a2hvdMPqxNGAPYUq9vDkb+RgUcTHjUe1PPoT2a/4wUQa?=
 =?us-ascii?Q?wTX/MAIYO8lK+HFAQlCZ6UtQGLbRp7seed/L8ddItapGSqhXof4/t7trSIQj?=
 =?us-ascii?Q?h+WSdlzmiispL0Jk672+hgJYcx0kLp+Ftd1fkn8xd91cbW/l47GKzjPA/Fe0?=
 =?us-ascii?Q?vekWFeFQRckfUl/VUkigyfDs1DS1SWvdvSsXED1XnDfTrZ+qFu4d5OjkqRVO?=
 =?us-ascii?Q?7Qo8RDYuF32PXPJeQqftlsWuF8UriEYpan000YJsX8TRIG1DVGGymAt8H4xY?=
 =?us-ascii?Q?BYE3qRaw3MnHW7oZp8bEBuBYaedJIEXK/8gi8cFutiSjKX6ZCcs8gQr7a+I+?=
 =?us-ascii?Q?ckVd3Iem2WYbaYNQZfi87PCYGuMgtFMrYZF20ztVBsZ3pZHK1U8H4UThoqDl?=
 =?us-ascii?Q?d2vQ21obTUqQa194Mzie4EWuldj9qQUlx9b8dcngxNd0NiadHVEUKcBbS6Vg?=
 =?us-ascii?Q?ENp+LOwEkvyfy4+krMupVYU9BME3AqFx+eU8UgezLY5ygzuvljKjfMR5dgyd?=
 =?us-ascii?Q?jY6jhQmIOGCUXyz1jjFbEiL07trl4U55cKtBbJ54yYPZbr60Rn9zwlMLnWMG?=
 =?us-ascii?Q?eCV5V88WV67TJaEGwq/DAr786SSJwfBfGeajUMC25MtwVDcDsNcskSQ55H1L?=
 =?us-ascii?Q?WtNsnQxlujeF8kxNp+prDW3qCUTqSYKGynnLmqkA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31f7098b-952e-401e-7695-08dd2e5572ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2025 13:24:29.1396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j1RJ8ci3kxOyjbmwmmQQ74wKELY/JkjmXkGFz/RrD57rwW9+gj5nC40Z4JQxVYPA1SJHlrukjbhKzzY1IZpvKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6692
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
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Monday, January 6, 2025 3:14 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH v3] drm/i915/display: Adjust Added Wake Time with
> PKG_C_LATENCY
>=20
> Increase the PKG_C_LATENCY Pkg C Latency field by the added wake time.
>=20
> v1: Initial version.
> v2: Rebase and cosmetic changes.
> v3:
> - Place latency adjustment early to accomodate round-up. [Suraj]
> - Modify commit description and cosmetic change. [Suraj]
>=20
> WA: 22020432604
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 29e8ea91c858..407af5b9f1dc 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2939,7 +2939,17 @@ intel_program_dpkgc_latency(struct
> intel_atomic_state *state)
>  	}
>=20
>  	if (fixed_refresh_rate) {
> +		added_wake_time =3D DSB_EXE_TIME +
> +			display->sagv.block_time_us;
> +
>  		latency =3D skl_watermark_max_latency(i915, 1);
> +
> +		/* Wa_22020432604 */
> +		if ((DISPLAY_VER(display) =3D=3D 20 || DISPLAY_VER(display) =3D=3D
> 30) && !latency) {
> +			latency +=3D added_wake_time;
> +			added_wake_time =3D 0;
> +		}
> +
>  		/* Wa_22020299601 */
>  		if ((latency && max_linetime) &&
>  		    (DISPLAY_VER(display) =3D=3D 20 || DISPLAY_VER(display) =3D=3D
> 30)) { @@ -2947,9 +2957,6 @@ intel_program_dpkgc_latency(struct
> intel_atomic_state *state)
>  		} else if (!latency) {
>  			latency =3D LNL_PKG_C_LATENCY_MASK;
>  		}
> -
> -		added_wake_time =3D DSB_EXE_TIME +
> -			display->sagv.block_time_us;
>  	}
>=20
>  	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> --
> 2.29.0

