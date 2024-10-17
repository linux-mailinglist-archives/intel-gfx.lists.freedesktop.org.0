Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7769A2DDD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 21:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A327810E058;
	Thu, 17 Oct 2024 19:33:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bFfdnIV1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A288610E058
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2024 19:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729193636; x=1760729636;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XzNDwF+KN0nOuruGs75Zkv/c6d1YuhUptiITUrVzu5k=;
 b=bFfdnIV1sYx/VPsX5AyXZN8X/VIIIczaNtlt3c0ucFx+0Co9ZV1jUO42
 SBHn9TofTMKUW79ftbxu6cPSfCh7Z4H4mIrIg5mzVGLMgof+V9lC3q11v
 TaHzrxQYtVIPQ40RRRQQvBf4A9vw2gK8+SN27ieu8KtswyW2LTdonTW40
 jn97ipmrekCtfa5I9hOmezpOmLvD5ZaN/1szc5QSZqTJ711ZIXPyuj0bu
 hWgghQoMrUtyEYpELHrHcgyQdad0sF7xNo26UNcy0Tmhew/8kyjDEj27K
 RKhqGTa+TUooahfPy82t81dhOvNypz1m8Oq3J6ENLqWj3vcLpqkTa1FiQ w==;
X-CSE-ConnectionGUID: 5rTEKg2USpG4cZPjANvFdQ==
X-CSE-MsgGUID: xZWQRTEWTEOh4I63y46Wug==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28854949"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28854949"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 12:33:55 -0700
X-CSE-ConnectionGUID: kHZ2FHqwSKSCYUG15Foewg==
X-CSE-MsgGUID: yQlGYn+sSpqSsN4f/Rn+ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="83204965"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 12:33:54 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 12:33:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 12:33:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 12:33:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 12:33:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B/FDvt3Wlz+GMmoVK/Kg8JpRVKL7EBu0a4zmWXit36SpOElQDvJ8UX6KZo1JKySGvR0O+EXmAmEkLwOs5IGgOdysT8wUvge6646kDl1FkVT1p6QmS+YIMVq1Ko+ynEUspQwMtgO+KGXSAymB/oZxk+dYPVIUKCzdNE5dcYtHJhkV/qSprrpKcoU5pnaLoXEz/Wt+/23OJ6L+Sc8rv+b3zQJNEihF9WPZa18hHxBxgy4djeltpMEf6HcuV9RPwL0ftAAlTL1fjJBdb3lFVLkYF9RyQCxBkc984EWBhUw2YbMmG6AWbQdFN+bpeGK11puCpe0ZAd3+S4CJzNsem8mgkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oLvfKCqBCeJ+okS+u9qyI0bi5nGGBhfFJffRugvpB94=;
 b=R+7qkkACjMd9Tui52AnWbBxqvuf7I0JUUQ9GT1qt24Eh6itTG1RlnlP/qcLfupBR0ZgvStVLaPySBuxTAZxc1KalypFPA6h2yh0P03S1aOyll01ypMPoTc+tga8llMm2qT2LbpXaqETYBcoGawgdeTdhAxHozRJdyOxy8zbShDpmR5Y4KCm3Y0lGoirW4kC170Ha3YdIyyEAl7HSwNYdKHGbAwIR4k/T2fftccOmYLcUjzupPQdw9TrtheAVy3aIeyFMAd7RknVqCWIN+wRQQA7v0qu7dbBC/6P7irVyiL5Fivu1OqMOu7lWwepp0Olz0LFmNyzZRxKZ6PaUYOMJoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CH0PR11MB5299.namprd11.prod.outlook.com (2603:10b6:610:be::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Thu, 17 Oct
 2024 19:33:46 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8069.020; Thu, 17 Oct 2024
 19:33:46 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Stephen Rothwell <sfr@canb.auug.org.au>, Andi Shyti
 <andi.shyti@linux.intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915: Fix irq related documentation
Thread-Topic: [PATCH] drm/i915: Fix irq related documentation
Thread-Index: AQHbHCZNB1MF7/xGhkK0yHFTYr9PDLKLXnIA
Date: Thu, 17 Oct 2024 19:33:46 +0000
Message-ID: <CH0PR11MB54445BECA4FADA63A0246F68E5472@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241011214111.98128-1-rodrigo.vivi@intel.com>
In-Reply-To: <20241011214111.98128-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CH0PR11MB5299:EE_
x-ms-office365-filtering-correlation-id: b1addded-7017-4f60-20c3-08dceee29e4d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?xWnShnFKmz4i0GGY/iU9hN/q9S6S4WwWUYdVr2vnm5OM1PAFCSW6DXUtXuhe?=
 =?us-ascii?Q?G8RhhaOhCAgef6xDspDWrLzoXDbNEmGaxWZwGQEpZSpUlAuV6SehLXfajefB?=
 =?us-ascii?Q?0T7hVjzZUynTisyzAPF2XM0TQqh8nXzY331RKMts1vUh83+QtMPQDu/QUZjj?=
 =?us-ascii?Q?WcfingLvZcCkO5cRK1iPe6yTpA/NNt3GlStEQacDyWX9YVBzPNCorz9wcKo7?=
 =?us-ascii?Q?0cUatNjwKY32Wxc+6u3AMGNeE7OZYEga4pGMt56pykkOacnhQZF9tJrSTkRQ?=
 =?us-ascii?Q?HqK5sqC2HQXs4r12pcZ16NQEYggt0//TdUKHe4f9qVx66ITcGy19r1AZVLgr?=
 =?us-ascii?Q?ooTgihX4YUaNi9hiVgm7SzGLjuLP4DtFrKywHjCkYqccECoQh0YPByo7teK7?=
 =?us-ascii?Q?brXki9COqcDiGerTKQCQSWPThWCacXYkKpKM/WA8QCuZwXmdaSdmnods1161?=
 =?us-ascii?Q?QUi6MaA01gvCkkk4irudyQ8JW3Q1BFeFVsJA941Opr58fSSr1S7ZDnyJp4Xb?=
 =?us-ascii?Q?38HW6UYNTWT1FdeH6V1sHKd0dOec5H5fNkFlSY3mlrndaKsYEQ5pE1NvjfKa?=
 =?us-ascii?Q?yJTcFCUGUegABjRMtz5Xqcs1+V+hzGFrMIssGCiXW2usebTDPFzZ6jMjXRkT?=
 =?us-ascii?Q?toflg6HfPCpPLoMGrMG4o0NOpqYGumNqKSPBrmy88ah49v7MSiGQJkra3wgx?=
 =?us-ascii?Q?/C+OHJhuGTw1OSyEfMm2EcsAkkwyiGgMuIHC2bImLQivVPMJtjntlmCPqp7e?=
 =?us-ascii?Q?2siTI2P1jW+/kVmnqMO6R5olyMiuTF820UoAe0nljgxDgWEEPZjX1W2GC+dx?=
 =?us-ascii?Q?U4Vws64KjbW/J45bccEpnevT98a0CHZqnS2rfqNs90feEoYk/fN+xI30MfuH?=
 =?us-ascii?Q?jA88N9YMNVbbFoubwMGtB3SDoEdBybw9SSdGQ0iSlRzXPdPKthl6ddSEIJUN?=
 =?us-ascii?Q?3pTfbJkVXk6PyQY7zPnvOLjlIkoEk6QNZXs2mTChnFOjxvv6O4e6VzxFebAG?=
 =?us-ascii?Q?ZrFVxilZpEw5VspLco1pj97BKDr3bDTxUvDxQIDLgKWaM0D1WMtI3l21yrKX?=
 =?us-ascii?Q?i2xGpCiPd0jES5XOZTqe/f4fD1XmToj25luqt/thoQV2unxa48zdVWBO3i0f?=
 =?us-ascii?Q?HzCCIvb1OWHXuMpFPNJtih9PAjNvabF5v9lGrjCruPRebYUpFb2efaN43mAV?=
 =?us-ascii?Q?hFGq6/v+GqLFvwaB1II0gC2uHqxBCqmsw4gGDLy9lPtmDCgAj/Ocj2JA8P2V?=
 =?us-ascii?Q?OXexkV2HVxW+40LyNTasx3YLpNY9MbZywJb+DONP2iolrjA1FfEt7jPykxY7?=
 =?us-ascii?Q?LWaoPsjtzmVrSStmaShldXY/T7VyVo6niueKBAgiXtpIWQQ/6fBdtyFDTFe+?=
 =?us-ascii?Q?83PI7Z7uWbBa/zPo4/Vk6qVsbTf9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hRUuxownWNi+Nu8oeXzsLz+h02Q8/hHWmTFt5T2FaIvp6/8s9Gq8VA5dGyK+?=
 =?us-ascii?Q?iWs6IPJNA5tfjIlt3cuHOI9WqGOSk4tUXJHbiDZwlCkgzX6TxUYgeKxo2V47?=
 =?us-ascii?Q?K0ILbRRbyeDAqHUhaebV6fh3ehWHO41uHo87GBXB/XslLA8dejlsCRnejCaV?=
 =?us-ascii?Q?zegryhS++VYgabnKXxGMprbcfdLxastUrWFl2YoV5TDShfF9ywY7f19RYl7o?=
 =?us-ascii?Q?GlUy9Y0oiR1Dzh+nlpK6nwaJ2j/xjOSSjhQbd4/z9tuGv8kzKhftw/TLn0Ut?=
 =?us-ascii?Q?l6tjItLRbAUu+r/pH+CYPYNSkBWyu+K4dzhtCeFD3koSBTDdMCStR6DH/8ta?=
 =?us-ascii?Q?bmzqZQqcxd2zRlKCvoXG6CoysC7+cCXSyaSxaKJo7G14HxgXHnWCnc8JAJsb?=
 =?us-ascii?Q?CJQeRFKZYo6h87N6HuJJwr4p9qPGf/FvaYeADOWb2ebN6JkjnWA9KkKyR6fb?=
 =?us-ascii?Q?8K5xUFxDR2qYQI6oBX7f1Qcz3w8/x3Tzpx1coZOYIhLO8pTmCHr2C4IWRLQ1?=
 =?us-ascii?Q?r72sWdD9jnQt1Ty2Q//UXBG1UNN5megP2/IqKwxw9kDbungFpze2x00S7rit?=
 =?us-ascii?Q?1AnCvhRaFFF3kSQUW3rjvPxpsKrRCrHzhws4A7Wi8ZTOjACXl7cf33nXTCpO?=
 =?us-ascii?Q?yvIPyibu1/VXP/CjbJH6hfDLmxQkkyUJM570ymafM5YLAuEb8FRjzf+JeVK+?=
 =?us-ascii?Q?Sb0o1Q7kFvKhvBrmi6L1x6OZdB13ZGdkAD4YxHaqkMcI5m9RoatDkiJlwvvl?=
 =?us-ascii?Q?h6yIgVYwsGBihq3jS6SfM7CnS+7g4SvYg/5iHzx+ZIz9s8027CitL96X9i8+?=
 =?us-ascii?Q?ZIxFlfpFFLIuKCT6o7/SWvzjVV20XZmxg67uwkT5tlE8MFdDhOP+S2e6Ymk0?=
 =?us-ascii?Q?qJE4hvSeYwptyXYjPrSrfPqaOmDFwCrIWWN2nmHZ6ylBWu3+9Ff7NkGA+bsU?=
 =?us-ascii?Q?Dhs4rp3pRJzIyY9IVZi//Fl/wUSHzd8vGEPJvkIsj5k8TT6oQVl93qIiG+1k?=
 =?us-ascii?Q?Vt8C+SZke4xRY972iwisTAC593/iF2uFDqFQc1nwcCIrtB9kIowF/MEiqyRl?=
 =?us-ascii?Q?1l3AgyOjRCSc/8ADQ2S9m6EPD80isrIj9o1xZpIFzC4e4wlXpFjBL0mz0L15?=
 =?us-ascii?Q?DlFWVQfp+z/VVVYUS1ASJMp8n0IZ/Fg6SnGfcMpIzYAoat7abUCl6wXuio26?=
 =?us-ascii?Q?BjzsmOW5avHOtLWtxjUuqbfV/Sqvh1mOUCUhdsCLSyIWx+zkFeqvFHq6In4C?=
 =?us-ascii?Q?45I7m9kKOMT2LAgQ/nOXtkiYLNsRG7kcygmLnym7rT91tHPVa6cn2nVPYp7E?=
 =?us-ascii?Q?FTxYIxitt7OlMQVZGtH7PX99s4LJoSU+kCB21prk/laKYYpkHzHAVGB2ek7P?=
 =?us-ascii?Q?7p4P/T4wHJmRjJpCT/Wte1Ynq6UFOMvIwR51MKqKuC3cBAKi8EDDDrcA0LwJ?=
 =?us-ascii?Q?S12HtE704XWNQq1Loy7dljf4skRbxc9OZ9lT0hd5HZG/MSN+25quP/KNfIeE?=
 =?us-ascii?Q?h5Ig1CMrC236EGjYQoggXgRxEu0EMqUciuo+T+a+vJLGnJk5KNec2Tkb/wgi?=
 =?us-ascii?Q?GPGE7Kcu2j5rIhw+JSbWU7IvBOOQnnOHPnP8dStn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1addded-7017-4f60-20c3-08dceee29e4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 19:33:46.5470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gzQEVaSvWx1T7I+JF8Aw59yEKtDTVceUFIKjWCcVMwbNeCSsXBujO/u0exwRv+6BECsehtnpHEWhiGx/GMhBr0XAaMGK9bOdKXRvMVsHVMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5299
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

-----Original Message-----
From: Vivi, Rodrigo <rodrigo.vivi@intel.com>=20
Sent: Friday, October 11, 2024 2:41 PM
To: intel-gfx@lists.freedesktop.org
Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Stephen Rothwell <sfr@canb.auug=
.org.au>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Andi Shyti <andi.sh=
yti@linux.intel.com>
Subject: [PATCH] drm/i915: Fix irq related documentation
>=20
> Also update the function names in the documentation.
>=20
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Closes:
> https://lore.kernel.org/intel-gfx/20241001134331.7b4d4ca5@canb.auug.org.a=
u/
> Fixes: 3de5774cb8c0 ("drm/i915/irq: Rename suspend/resume functions")
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Good catch!
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  Documentation/gpu/i915.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index ad59ae579237..7a469df675d8 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -35,10 +35,10 @@ Interrupt Handling
>     :functions: intel_irq_init intel_irq_init_hw intel_hpd_init
> =20
>  .. kernel-doc:: drivers/gpu/drm/i915/i915_irq.c
> -   :functions: intel_runtime_pm_disable_interrupts
> +   :functions: intel_irq_suspend
> =20
>  .. kernel-doc:: drivers/gpu/drm/i915/i915_irq.c
> -   :functions: intel_runtime_pm_enable_interrupts
> +   :functions: intel_irq_resume
> =20
>  Intel GVT-g Guest Support(vGPU)
>  -------------------------------
> --=20
> 2.46.2
>=20
>=20
