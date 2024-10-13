Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1900099BA1C
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Oct 2024 17:37:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7637310E376;
	Sun, 13 Oct 2024 15:37:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YKllyMZJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB87710E376;
 Sun, 13 Oct 2024 15:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728833857; x=1760369857;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fIW7fj2odGoxk9gxmc6h1652G4wtFwWa/2ebuATTPJ4=;
 b=YKllyMZJfGxfswxni4VDdXJmACOlNm4u5U3ypwtvJ7srQ4Q8FUx5COA5
 HkbEXtdSVAjGJ4t7OhzvVNdjga72uzz4mHFGSBybLGY14SJFZiOp6nAgO
 RgSmnxSnxkXqnZq2L2UBT/nPeNdxr6cwADX6J92Uuh6M9wXtIKAo8BrvO
 S82FAam4OFCmhP9XOYiIVcCnbQet0NpQ6jdzhW37Yf0dltLY2yCBLDWJa
 ch0uxIinyfg62Ci20sBjcYwijDYGxOo7jJsG+BsKOfi9lClZgdXU1dP2/
 ilLZ01e5BZiFzjHssnP5LwwOPpN2MJFEsSQ3g1+VlMnVWG4Q5NCXUkV8T Q==;
X-CSE-ConnectionGUID: wZTHz7FvSLu/jtbBmp7UFg==
X-CSE-MsgGUID: ARrvhpflTWucvb50lDclXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="28266986"
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="28266986"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2024 08:37:37 -0700
X-CSE-ConnectionGUID: GFrVVxfbR3SxOnJcITv7sg==
X-CSE-MsgGUID: 8fyaXoJrSc6QeKL+s1Unvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="114798379"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2024 08:37:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 13 Oct 2024 08:37:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 13 Oct 2024 08:37:36 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 13 Oct 2024 08:37:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=acA6g4xAOYPoPN3XPC5gKhivS8HTDipmvREc5R4kviBRWXsHC9Ow/HSrzqQ/vQ/9oOmYwYizXQE9drEBnUKYQGlLz15FpL0kxcPFagTZ370Pr3F9KCHiz3+zcu+tkDNr0uaYE9NAMmvuXKMwOYJIVax5v4Lt5JOI0j+l6gWwk5jbkb41KbbPpzOU2BZaqv/aJMFY43auvFq+LOY8gwP4hGnXILZDo86ZVNrOmpocI22Eh12WrQdokdh+ZwNTMnitKROYVHE65k5mDy9fzD9BYBupKSS4qzxflhHm70AIQXjVw9L0p5aydt4F2xRzYhjFbY/jPyReUMskwboWkInNqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jBIdcnFiChMJSFLS+OQbFqSQZWAjw3b4e2jrNoKRZsw=;
 b=kNI2RsBldgonplsamDzmq/4QTS7nMU1Ecg6iKVxHpmvRoWbvtefYqZBPp8TzcMef8akxg6ECjNDK4A0QZYFRc8I8Q7RZ46yQHXaAtgp+9pett5QzuY1FyveftYGSCJ7VSPPAMJB3iBaEfIEMGyLNPRp4KsoAbx8pg8jmHLTH/gRwyFYTCGDTEBtCHSWdMhregIpYcMmnhtUe06MwtxDMZXmsfdISJIXjzWyCZ+LQSgWSBPfoy+iG1YDwcLLOOqvR1bVdVkHhgf3XzPBxcBmrFoZMdrdf9ANw4Wnm9czccd818tSpm25sCtjSJrFam7NxcXGF22I/UbpO84IOCbD4ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB6554.namprd11.prod.outlook.com (2603:10b6:510:1a8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.24; Sun, 13 Oct
 2024 15:37:33 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Sun, 13 Oct 2024
 15:37:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 5/7] drm/i915/dp: Refactor pipe_bpp limits with dsc
Thread-Topic: [PATCH 5/7] drm/i915/dp: Refactor pipe_bpp limits with dsc
Thread-Index: AQHbFYDk0PaIiGeORUm/py9nqMx1gbKE4Fvg
Date: Sun, 13 Oct 2024 15:37:33 +0000
Message-ID: <SN7PR11MB67508AD02EC2528F7FD43351E37B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241003104343.984060-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB6554:EE_
x-ms-office365-filtering-correlation-id: 0d80bc8d-1ce1-48f8-e190-08dceb9cf4a7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?LhtNvJf6odFBlfN49lwqCQP6JJV9SmKHzhwUzhu4usoJJLZY6Vua8uN2dfYj?=
 =?us-ascii?Q?xiXWbUHT2wDigNGsP45V8VQbzyiHm1dtcgwNcU79y6rBmdcwQaaH6H3A37j+?=
 =?us-ascii?Q?amHd3Tg8OxoarTbccY4I85P+J5tBVlAt0rUjlOzBR1OfOTxNSt59OdqKIrSw?=
 =?us-ascii?Q?tMVXxq7MIFAxzHgIlZfx/Vnw7VitKD3nR+gCn0ms7JKb9PDl+U3ZaLyQu1++?=
 =?us-ascii?Q?gW7CsmFP70fxCqp6HayIZSH53zpxQAhx7vI6CLQJq5Acq5l77J9wC+B/jo2B?=
 =?us-ascii?Q?G1QhyZW44MPYJfu1rxAh65vPuotUKzTmWJnolRcD019zVowQE+qHRg/tMLhy?=
 =?us-ascii?Q?C6P3mq9NnpXzY7UlF0d+iZU4Gun/QAILNXkkVvD6e0Dw8k8EQ3X1pPLZTdhR?=
 =?us-ascii?Q?BC6b+HfVh+qtXdM+EeJ0B7IsE5o2oMJXV6em7COVkAEqyMaJAq+GnLZo6h4K?=
 =?us-ascii?Q?dCEvY4ql/5prPOxFkHYQSjjQHsTYpPoiet3myxDBBwH7UagwhPIqzqvYYEaw?=
 =?us-ascii?Q?oMsJKVDMh9GE4uLflZtlOg650ye8zPO8R8jQgt4nJ7hfzQwOXsKgDKq/dgtI?=
 =?us-ascii?Q?GPNYu+ux5Q45Phnfer/jn3o1Br4ZCPbJxPqjbPqITh/ITHyQ+EqAuzWIx6nJ?=
 =?us-ascii?Q?/5n+n0gF1xg5Z+qn4FBhijozDvyBc1GnAePJ34+oXfO2u5CKa46Jd9YAulKt?=
 =?us-ascii?Q?Zdj0rRyL4sFH1EfroVDJA0RkRzT7AZspkU5O09gp791sQhWpAR6GjAnWHf5I?=
 =?us-ascii?Q?JTHh/u+Qawufti8QCY48+vwCxCGz/9d3QJUsr6yk9p9rUvn2jgiZOnKCg9uw?=
 =?us-ascii?Q?rUubacpkiaMThpxkODDWFqRIPfRcgc7wPALCTEL7kp8IvB9SKuo3I1w6LnPS?=
 =?us-ascii?Q?giVpquwZXRWuyEWLJ0S/rwKmYjbbn8ij6YqV3HFiikCMNPUMPmj/ih9bf+6k?=
 =?us-ascii?Q?uBhGLFxEKM+XrBeQ1q6+nYL5g9P9HPh+jOEw+qK7YrbV40yYVFaxLxieRzVK?=
 =?us-ascii?Q?34CCQk842NGZlRJiXtmGC2voS7EY/nTLpTRZuBORZp/g0nl5QhgiIdVJ7WZ4?=
 =?us-ascii?Q?kr4LOf+FJjJjXHPEh5ajB5N4Xs9Dq4LF7KeSYMYGzprg9uGpu4ELV3NFh2Qe?=
 =?us-ascii?Q?h1UoJsLmSTSYt43saSmmuiFY2NoP8mgr1oNlaekfdk7xxAq0qmO/8Qn2ooX5?=
 =?us-ascii?Q?C9ce6RBzUmTSSBWXU+km7H5QcVfrUJfmfLa4c7XSeebMEmS3CXDWiIyJ55TU?=
 =?us-ascii?Q?e2F8zzQiDC1/qZPwBm1Tsoprjl/bj6ZghAcPGjudI3zc0frP0k/WKwxE/RFL?=
 =?us-ascii?Q?Jmg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4rdeNPnZe+SeNRNr8/VQYWrcPNlBwEdsHAv8bNsz4Ib+a1M5xagEFRUZdSZs?=
 =?us-ascii?Q?W9LjZhGKTYehuvAiNm2Z5nhDF9PaUwz6HthwdVU5JPACgRaE88z9yjMrvr7g?=
 =?us-ascii?Q?5aRKnUYXKylxnPtXT6rlrY0mPAPE5xiT0rX1IRTbOehmmP11qKPYitm5rSsi?=
 =?us-ascii?Q?ZBw3tgvKQt4s3qzWX1vnvhcecmgSPXw4PItbFd7AebXrTN5eLIUGNo1QjGFO?=
 =?us-ascii?Q?XiK6P2JxAQ6G6BWAVrAudVMCD+RqlzN8LtBTgXuCfhi++N2kK/IVpspPrOvC?=
 =?us-ascii?Q?3KlPsvk+3AawxN8shE7jdYUBV8FK4D6YQWxrGpJdw2+r+Jp8VY5oW/Q8gpK7?=
 =?us-ascii?Q?UzKaUGMH6HPe/ydkki9hQvaXS98D+FaEFknYC62AszVVUKA+t5feQBO78yoy?=
 =?us-ascii?Q?IEAW222qRbu49uWTo4MSz9GRiEWzgBJxNLZzlg55b5SmaHw2/v/bm2E9y16c?=
 =?us-ascii?Q?HTC2LU8ucNPvyHIjZh7De7JpEQ1eSPDRmyAn2jgGofloSX9s5bkGG7L9xfky?=
 =?us-ascii?Q?L0SX0QNIXwaclKdfUJdRNtvXd2Pad5CWs53YQDKFYoYkfMHI2VMDnUP15gBw?=
 =?us-ascii?Q?qRD/F1DzMlScNcxhrXT+zB6fRHgMlTP5W2zY3nc+vpNlxDb4sxZ+2tBSpGRp?=
 =?us-ascii?Q?EPfU5A/ZdUcExoYFZEOoZCTlsxyzh3gpm/KfvxWABWMrfjDW9itxRKg+24DW?=
 =?us-ascii?Q?XVTvOv6d9vhw2bNn2+9UHllYbTFG9YjoVXRLKu4pi5kvbPbC9rwNFZPHuhBj?=
 =?us-ascii?Q?531m28x9Yaq73BknB2qg3Ubwpa6V6mgNOyS+skwMJW73hh7VPsKi6q1gJzD+?=
 =?us-ascii?Q?iiwuDiOZ9Qxs+TKOi9t1eb/ScVriSfydGlNngc0+gv0pkPataoGXcTWMF5ni?=
 =?us-ascii?Q?P5EbCNW40MffPC/BFpA9p5Sa/HLOhfN8oskc0EzclxcWgUGSN60tsZnSy0i6?=
 =?us-ascii?Q?RT1x4wrprVivTP2OYSJBzt0Ufkg53Kog8uPzxICC2YvFoeVW6+eahQGdFond?=
 =?us-ascii?Q?8bmeMAvK6Y5jW9OkzfnvDBP2tmKn+4ATs88D1kiL9KKcTdf+ID8mgaimi6m3?=
 =?us-ascii?Q?dvFleU9FC8esqR3VHESeDjRczwIKSf5eIND9QHmQA2JeqdPucdvpnDYkX6B1?=
 =?us-ascii?Q?2dzp+DgrANyYtBKZpy4q9XkjpXOn0IPCXnAmVZU6DwN624FXY7APBl+B8BuV?=
 =?us-ascii?Q?2ryLATxxaDgsOYFp77z6vnLFfWnt6hhKL1AR73w8DMgi5IOseR7oBzEbpVyu?=
 =?us-ascii?Q?bLR1nUetxAiyQ+iK3PMa6FNBuvJwfNYda51VZHqaWINlS7Jx4Txuja1vUyQp?=
 =?us-ascii?Q?04S5RqfNpkoOCokja3A/TjHdAHKEOXqPj7Heqm9/8zERnbPc19R3TUWMzeTs?=
 =?us-ascii?Q?/elk9kve52Ru+805OqCbXbeUrt92zUNdDlfvomc5Q7y5I1chSx/WHt+2Qb2q?=
 =?us-ascii?Q?cerQeUctDjrgaYJr/bx1pCYyuyzHfm2MbN2lX69tS0UoGbc8zw38TRRCh23C?=
 =?us-ascii?Q?IHsKQWuAX1zF5AwKvl9F6JPkQYVVB3Lqa/kxGJT7Gu1v8oQ4flTjQ7L6/PXv?=
 =?us-ascii?Q?/DGgLUMORoITFVVi8+LrhV3hHFOusPo+w5ZkORkT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d80bc8d-1ce1-48f8-e190-08dceb9cf4a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2024 15:37:33.1644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QY+5M0xmwXODhbTVdAv03/xlSxQVf6WKD9lO/qCMiF1GZzIETorajshROMuegUsZ2Ex//RoEWg4+E4jt/2IEXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6554
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
> Sent: Thursday, October 3, 2024 4:14 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH 5/7] drm/i915/dp: Refactor pipe_bpp limits with dsc
>=20
> With DSC there are additional limits for pipe_bpp. Currently these are
> scattered in different places.
> Instead set the limits->pipe.max/min_bpp in one place and use them
> wherever required.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 43 ++++++++++---------------
>  1 file changed, 17 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 46f3b680afe9..55ee438a4fec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2166,21 +2166,11 @@ int intel_dp_dsc_min_src_input_bpc(struct
> intel_display *display)  }
>=20
>  static
> -bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
> -				struct link_config_limits *limits,
> +bool is_dsc_pipe_bpp_sufficient(struct link_config_limits *limits,
>  				int pipe_bpp)
>  {
> -	struct intel_display *display =3D to_intel_display(&i915->drm);
> -	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp,
> dsc_min_pipe_bpp;
> -
> -	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(display);
> -	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(display);
> -
> -	dsc_max_pipe_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
> -	dsc_min_pipe_bpp =3D max(dsc_min_bpc * 3, limits->pipe.min_bpp);
> -
> -	return pipe_bpp >=3D dsc_min_pipe_bpp &&
> -	       pipe_bpp <=3D dsc_max_pipe_bpp;
> +	return pipe_bpp >=3D limits->pipe.min_bpp &&
> +	       pipe_bpp <=3D limits->pipe.max_bpp;
>  }
>=20
>  static
> @@ -2195,7 +2185,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp
> *intel_dp,
>=20
>  	forced_bpp =3D intel_dp->force_dsc_bpc * 3;
>=20
> -	if (is_dsc_pipe_bpp_sufficient(i915, limits, forced_bpp)) {
> +	if (is_dsc_pipe_bpp_sufficient(limits, forced_bpp)) {
>  		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n",
> intel_dp->force_dsc_bpc);
>  		return forced_bpp;
>  	}
> @@ -2212,11 +2202,10 @@ static int
> intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  					 struct link_config_limits *limits,
>  					 int timeslots)
>  {
> -	struct intel_display *display =3D to_intel_display(intel_dp);
>  	const struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
> -	int dsc_max_bpc, dsc_max_bpp;
> -	int dsc_min_bpc, dsc_min_bpp;
> +	int dsc_max_bpp;
> +	int dsc_min_bpp;
>  	u8 dsc_bpc[3] =3D {};
>  	int forced_bpp, pipe_bpp;
>  	int num_bpc, i, ret;
> @@ -2232,14 +2221,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  		}
>  	}
>=20
> -	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(display);
> -	if (!dsc_max_bpc)
> -		return -EINVAL;
> -
> -	dsc_max_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
> -
> -	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(display);
> -	dsc_min_bpp =3D max(dsc_min_bpc * 3, limits->pipe.min_bpp);
> +	dsc_max_bpp =3D limits->pipe.max_bpp;
> +	dsc_min_bpp =3D limits->pipe.min_bpp;
>=20
>  	/*
>  	 * Get the maximum DSC bpc that will be supported by any valid
> @@ -2284,7 +2267,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>=20
>  		/* For eDP use max bpp that can be supported with DSC. */
>  		pipe_bpp =3D intel_dp_dsc_compute_max_bpp(connector,
> max_bpc);
> -		if (!is_dsc_pipe_bpp_sufficient(i915, limits, pipe_bpp)) {
> +		if (!is_dsc_pipe_bpp_sufficient(limits, pipe_bpp)) {
>  			drm_dbg_kms(&i915->drm,
>  				    "Computed BPC is not in DSC BPC
> limits\n");
>  			return -EINVAL;
> @@ -2502,6 +2485,14 @@ intel_dp_compute_config_limits(struct intel_dp
> *intel_dp,
>  	limits->pipe.min_bpp =3D intel_dp_min_bpp(crtc_state-
> >output_format);
>  	limits->pipe.max_bpp =3D intel_dp_max_bpp(intel_dp, crtc_state,
>=20
> respect_downstream_limits);
> +	if (dsc) {
> +		struct intel_display *display =3D to_intel_display(intel_dp);
> +		int dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(display);
> +		int dsc_max_bpc =3D
> intel_dp_dsc_max_src_input_bpc(display);
> +
> +		limits->pipe.max_bpp =3D min(limits->pipe.max_bpp,
> dsc_max_bpc * 3);
> +		limits->pipe.min_bpp =3D max(limits->pipe.min_bpp,
> dsc_min_bpc * 3);
> +	}
>=20
>  	if (intel_dp->use_max_params) {
>  		/*
> --
> 2.45.2

