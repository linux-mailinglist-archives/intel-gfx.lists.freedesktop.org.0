Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CE3974FF0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 12:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E27510E8BD;
	Wed, 11 Sep 2024 10:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DMce6WVG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 335FE10E8BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 10:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726051316; x=1757587316;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VkL55ABpB4qeGGWCgWzF9Olx7DoR5Fahk8UGpovAS2s=;
 b=DMce6WVGvJetHY1HW0SR3X72gJ4SD3rh0uoSv1F+DO5N7UJo+pNSsI+I
 jMOc0SvNGbYxDQQQY40t48EQzcEMwQJGjtrcAtA+9xUiRUdekUzHXZohv
 FE5GdZ/BOMo7DRbSZnIDgMtzhNTmDo06hDBDLNm/phP0kwPWt0DbSRc1b
 I8MqX+nGgh3cIBGD37PX+Js6T0ylk/GcHFQmVVAeba62ovXqcDclDD711
 lnwC2yJESW+XX5nV4fgDproglN9DptYTCHgacB1bjzSSyNR8S56L++M3g
 d64lldq3zeTWjN9lhzw3EaAnpjSHHiv9Llz23BWt8TrZeTZMyTJs6XMHD A==;
X-CSE-ConnectionGUID: dmds/rx3RyiO8F1pfKsC1g==
X-CSE-MsgGUID: +B/NyYq/TOyCNKod0SbTkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24989169"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="24989169"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 03:41:55 -0700
X-CSE-ConnectionGUID: UIXBRojGTryoUujbI7B9tA==
X-CSE-MsgGUID: gXqjsbvAQ+WbaeuOTjkYfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="68101739"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 03:41:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 03:41:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 03:41:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 03:41:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ue2lqzbJiQ0ke4qkx05osXrD4qUbOFYl5mMHhhlMFW6hG5hZUl3mCu1VXz4hZ+4fqlgPfHEUE5j47+iOVyUnonxJTcP/wHIVlEXSpP6p62yMsAGjvKhBRMg1Yb23JJ0lYbi2EwBdU6RGeOf6ti9a1Ar8Zh1N4ce/pp4KHLoS72HgvZO7VC3Vaq1tg1x0RGgjSts8Kp1yPjQ1X5avgGq3YJrKGDH2q3oTpQMYP9yuDg655kyCp9sWKmjSyVzJj5qf27H0j8ynXefBje/kSxpMSDHX/8KoWpv+LAFQKDVxKYiLGURGy8Mmscu9r/fxoRkqUI4WZLIHEfzruieEMvFGqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RE2N8rDtD9Evy0UHrs6p4OisnGyv6d7C/HWECTxqBmc=;
 b=kJTTzvs053vfwWhFv2k0HrhRmYNna2yv+As1Kp63Cngo1RULv6kiE+C1SKQaYjNPawS7PnR+9jwekg9IB/ffOnuKiNxlIcyZXXMjpxN5gAjmOLEEx6wDrLXlhCkcDYsE64qGULjIlSoeKUUxRBQCXXHdVJlT5OuySlVe1ObidQOOuV0E2gacoRfD3pXU9IKcuIzvjdpqAfqfvQWBkIAd16h9Z/IsPsFxwoFsjlGvHlvYZt1NgaUQnWAtQY19bBcN2pJRqG1yEOgwf3hIKRR9v/Emg0/u/K2WxrjFz++w609MK7RyjJ0Df+df7oTcqIskyCNhHMtSeFY49Z6l38NfoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB8471.namprd11.prod.outlook.com (2603:10b6:a03:578::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.20; Wed, 11 Sep
 2024 10:41:47 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 10:41:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt
 reset
Thread-Topic: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt
 reset
Thread-Index: AQHa87WjyiTSKjH1EEm81XxRn9zPBrJShoOg
Date: Wed, 11 Sep 2024 10:41:46 +0000
Message-ID: <SN7PR11MB6750B4839F65B4129B64EF8AE39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-5-arun.r.murthy@intel.com>
In-Reply-To: <20240821102349.3961986-5-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB8471:EE_
x-ms-office365-filtering-correlation-id: f03045c2-6d45-4381-d68d-08dcd24e55c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?nGu5MNJcSO2cfzlPCJypmHGgHqPyxY/u3XF1iKyim/ROYU7rHzOkWMo4ELSY?=
 =?us-ascii?Q?PNaNw+SMxgXvwd0mbqZgpNUh1W51wOXAMFyH8yOhbPQoFgvloDY2KBFUQ1DY?=
 =?us-ascii?Q?dTS0y6/9QIWMCAkcJ0cK2SjnFDvvTdj9sEpwMcpJavzlYSCYw4ooZWSYjGli?=
 =?us-ascii?Q?9cSOmGR4XWVRnQCRIsP0S8o1UlVGNbxh7cBURJXUBBVB+MnOlFi/lJKyzoXA?=
 =?us-ascii?Q?efjyYHXB4chuN2L8P3qHXQ4QtouiQ8SEqYD/zWM4q1RJCYr9LvoXgF47s19C?=
 =?us-ascii?Q?+qynWGzjJMRjqD9HP8Y4/lhL0T7Dlbc9qUyDBxTQ3VjvgOw3iu/MmwKung93?=
 =?us-ascii?Q?SKCru9HhHhSzHGiE3XpH38rJyI9sf0UWp5zLTZ1zuZqOgMjvFB/wOGTMrVHc?=
 =?us-ascii?Q?BpuZn6LnVAtP8bL6Sg1TLSOU1C29pCKlg5TJF27cINKlAIMaNYE8lmy4AKVq?=
 =?us-ascii?Q?sHAQJkcbjkVQ2Mi8wANsWVZkija4sgoquTn7OG6H3qZYaQv5MVIqcMko/aVB?=
 =?us-ascii?Q?C0FTMtHf4GQ8v3W5dO3La7gblf8sSStC/JgJBRNejvJNXM87DmUJjhoyVnOh?=
 =?us-ascii?Q?tmTuliRb+QFqZIbI/kTzWTTVT2pE5hD+h/lr27Z99wBgMkC+xWIRycW27buQ?=
 =?us-ascii?Q?URJ24SZKtdIUGWJ+QmxGQqaoFXszapToAp2BESACkpmzf/+k06YzuS6FIGGc?=
 =?us-ascii?Q?NVYoV1QjjUP74zq0XA/J0hVU7IyrsPHrg9sINGODsEI4CEwTdyOWmZLMC1s6?=
 =?us-ascii?Q?GVq0Yn2lKLtX8knDkWONdpFQALc4EQJ/rBNTfvPQ0sMWERsKMp0RHpEW5/7S?=
 =?us-ascii?Q?VX+hgHHLQdpNq7QI2/eAvTYLAF5F7XjhnWvSqBwmKdqKAuRBR5BRNkusGn30?=
 =?us-ascii?Q?/udFVyGQT09O5ctQIPChTEWE2ggPFbQqd2C2zbTKmpRwPBbOczIfJ3kjZ9bG?=
 =?us-ascii?Q?8kYyE7ji9qYTLytRGrJuQtKwi/Fa9fuyemR4+hMzy9qo1HYHLQ61l58tmvvw?=
 =?us-ascii?Q?QEuPmKcLVpzT2jvpYIAtWwRFfXHKq67HhrLuWZAR6APJqELQvidu95Dl2xHm?=
 =?us-ascii?Q?lV2c0PUw+klmH4SI36lTHXoLsXJrqi5ipGEMFy9Rb07s9JnyLWID98mY6vy2?=
 =?us-ascii?Q?2IJoov1oiZqvvJ/FTaJYE3HbjxAr+bjLAKtiJDR6cp7DFawAKtaT9o0Xy6Br?=
 =?us-ascii?Q?4HW8yYWgyOZOacLXMqdZh/NmuI7WXMSUm62sHgGm5vNAEnK3mvQgoPcrVchp?=
 =?us-ascii?Q?SsHXuPnyTMTZLqPruzhGtBTl1KLFIP9yJkurJe0NccDgjYjXQCFiLuOrR2uz?=
 =?us-ascii?Q?bUUugpQCRaM1K/SdHVebB9ipuWRTo1rKU3smR2HbWhzmJ1NwNCoS4D5tTSoa?=
 =?us-ascii?Q?l+MXaHMz0CNE48ya16N1deHMfUJlN7g4Un8dpYw2hF7N6Nnwgw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ihQGAacWAE0n4OcP7kzC07CsvnrGmtx+sQBq/rJKqmxGLgk3ZSZL9D6dpRQg?=
 =?us-ascii?Q?QanzCFkMJ2FTUXjVNXC/XBCt319ixYYHHZrBOMY/GPI532mqIk7SqMuBvv5e?=
 =?us-ascii?Q?1sM6brWvfCmvGFqrIRCzr0HVP/WLb9O3yc2RQVwLjYCbjwjRqht/nwMtTaqa?=
 =?us-ascii?Q?JzVouW5RNdYtkARXnankwTYvwjuYu0HlGa2FWXfbgPl3lUaMzXwXlRUJE8lI?=
 =?us-ascii?Q?J/KPEeolng2qD+/p/dPvpXTLKA3wimyGEW0G81DrbbH+Jyehk+J6XHQkkSJI?=
 =?us-ascii?Q?i2511//DRY1bo7xwVfaFjH0nxIVCtOoWfpIKQUKTg/xxDChEx8DHU4jmBvGQ?=
 =?us-ascii?Q?18IUD7GwpvMuwNph/3mwjWVl/m8wxkkuAqBDsfnIiiLLGXffEL7BTBVFbJCX?=
 =?us-ascii?Q?vdTglgf10pTb4XyvkLFEC0JVQzIrDc2ATWsqCMd/QMfIiygUdsP43KR6DqjN?=
 =?us-ascii?Q?p+A9MZmxRfB5FBh33Ts+t9VrgFBN0EqDd2IoybKAxgR49p849gxGMNyc9Ic+?=
 =?us-ascii?Q?2cBsCzytz+yueDR35xYvtgNoTBWJmVJB3/SUXVkvH2kHwQtY76V/dbEmXjG6?=
 =?us-ascii?Q?LCzlQWWKtjF4hLHNh5xLxke2BTso6VdTZsZ8Fu1uEPQKNRTczgI4v+EXyA9x?=
 =?us-ascii?Q?X1UVapWi0QyqKwsy93azuHAZ2JLA2i6GrjfQqaY2WyTtZznW1wJ3nbeVnF0f?=
 =?us-ascii?Q?nqnaZNt3n9Y9XwcOucO1xoflE9HieW/k6TLuqoQTWG2S8JtZjb0a4leE0wuY?=
 =?us-ascii?Q?PIYNCceCvCGuO+bwQ3fP4wdxqF2BJSm0NfjfgJbx4r2guIiatJtuyDApJVyv?=
 =?us-ascii?Q?XCEqWMI1r3WS+42hPKzXWviF/80a0MuNXInjuQ/1U8/XFRLKJDYegofsHIRi?=
 =?us-ascii?Q?sno1nqXP0beuUwDmplzvQCElXd522Tx4uE856sYh4uTFIuowpXk2nevtL5l0?=
 =?us-ascii?Q?AWKPvURonko89lrSTFNEh9L/9hErZMHT95A3wh3UlTLOcQprHUQlA5r/dDYE?=
 =?us-ascii?Q?6YIxTIHltsGiZaPvi93s7LnuUlkv5UDyqIPzDHmmWakWVK6TddjgQufsCjT9?=
 =?us-ascii?Q?efIG2lb48TegCpqYkemB3hKg2kVKnCR1BHYOfxnKzDzLxQd2xQdqI8VgVxrF?=
 =?us-ascii?Q?tkwYRqBdpiTa4KiWPiI2PSdIr0SrUR6rFH360D1SD23/Gv3KeWLmC+p+v/BC?=
 =?us-ascii?Q?lA/s/EcweL77oT1MFX9qTrkbgHoMuq9V8YUHF0tcpv6vDciQwRsG/SP0KmnQ?=
 =?us-ascii?Q?1wYUh+xOuLX8jjjPEYxxU/WagFUvShaCXzpLk0dRML6Nlz4Uvh1ZWzbCVsa9?=
 =?us-ascii?Q?IbOk7tKkyIE6lNdCUx0C+OIUAHdGJswkkYXwNmZRO6VGAfPG3vQmRVYppGJY?=
 =?us-ascii?Q?afTyOcGTiuxV34XnIepVTKAtuY1P5Oj2CrK5GC4i15qcauEx7PcfqMQ7kTCh?=
 =?us-ascii?Q?av9LLxBYOHqLmyivVrof5pslfoCzsyh5wN2jfwiqpU/5X3uZ9EQSr0gCxfZg?=
 =?us-ascii?Q?7YDa6Erp3pOgNKLyUvTtuVNEM3oOzeodJeKsyxI7K7Bgh4qHCNSxwCh5A3Tx?=
 =?us-ascii?Q?X0oG7BLgbqJtX1lAm05I1mR1Kc9wqQ0zfvdfSCU1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f03045c2-6d45-4381-d68d-08dcd24e55c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 10:41:46.7767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fNg/nmQ45946i4wbGfKnNuS54vetNENZMHPx3xA4Ku3hTJYqbO7KzsweaduUlR8WD/auoU0y0/rXESjNXOwkNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8471
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ar=
un R
> Murthy
> Sent: Wednesday, August 21, 2024 3:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt
> reset
>=20
> The delay counter for histogram does not reset and as a result the histog=
ram bin
> never gets updated. Woraround would be to use save and restore histogram
> register.

Lets not mention the issue in the commit message just what the patch/ WA is=
 doing
The issue is very well describe in WA no.
That's reminds me add wa no in commit message

Regards,
Suraj Kandpal
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_histogram.c | 17 +++++++++++++++++
> drivers/gpu/drm/i915/display/intel_histogram.h |  1 +
>  2 files changed, 18 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> index ad4f75607ccb..189f7ccd6df8 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -36,6 +36,11 @@ static void intel_histogram_handle_int_work(struct
> work_struct *work)
>  	u32 dpstbin;
>  	int i, try =3D 0;
>=20
> +	/* Wa: 14014889975 */
> +	if (IS_DISPLAY_VER(i915, 12, 13))
> +		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> +			     DPST_CTL_RESTORE, 0);
> +
>  	/*
>  	 * TODO: PSR to be exited while reading the Histogram data
>  	 * Set DPST_CTL Bin Reg function select to TC @@ -77,6 +82,12 @@
> static void intel_histogram_handle_int_work(struct work_struct *work)
>  			       histogram_event))
>  		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
>=20
> +	/* Wa: 14014889975 */
> +	if (IS_DISPLAY_VER(i915, 12, 13))
> +		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt
> Delay Counter(bit 23:16) */
> +		intel_de_write(i915, DPST_CTL(intel_crtc->pipe),
> intel_de_read(i915,
> +			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);
> +
>  	/* Enable histogram interrupt */
>  	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> DPST_GUARD_HIST_INT_EN,
>  		     DPST_GUARD_HIST_INT_EN);
> @@ -140,6 +151,12 @@ static int intel_histogram_enable(struct intel_crtc
> *intel_crtc)
>  	/* Pipe Dithering should be enabled with GLOBAL_HIST */
>  	intel_histogram_enable_dithering(i915, pipe);
>=20
> +	/* Wa: 14014889975 */
> +	if (IS_DISPLAY_VER(i915, 12, 13))
> +		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt
> Delay Counter(bit 23:16) */
> +		intel_de_write(i915, DPST_CTL(intel_crtc->pipe),
> intel_de_read(i915,
> +			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);
> +
>  	/*
>  	 * enable DPST_CTL Histogram mode
>  	 * Clear DPST_CTL Bin Reg function select to TC diff --git
> a/drivers/gpu/drm/i915/display/intel_histogram.h
> b/drivers/gpu/drm/i915/display/intel_histogram.h
> index f35ea76719d8..5e24d3c5c28b 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -20,6 +20,7 @@ enum pipe;
>  #define DPST_CTL_RESTORE				REG_BIT(28)
>  #define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
>  #define DPST_CTL_HIST_MODE				REG_BIT(24)
> +#define DPST_CTL_GUARDBAND_INTERRUPT_DELAY_CNT
> 	REG_GENMASK(23, 16)
>  #define DPST_CTL_ENHANCEMENT_MODE_MASK
> 	REG_GENMASK(14, 13)
>  #define DPST_CTL_EN_MULTIPLICATIVE
> 	REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
>  #define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
> --
> 2.25.1

