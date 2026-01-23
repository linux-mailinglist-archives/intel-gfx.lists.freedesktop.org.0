Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAkrMRlTc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:53:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A1D749C1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B235410E297;
	Fri, 23 Jan 2026 10:53:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i0wIJtJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E62110E20E;
 Fri, 23 Jan 2026 10:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165590; x=1800701590;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+mcUAIzqDRYLSrkXsxob0EjgXU9kVrK8tFN6uOic/4c=;
 b=i0wIJtJekTya/QSzcmjgBjQeFRQ91Qd7NSJ9SNeByEJxpHQg4RQLSBLc
 DQAdRNGCZthWuRxRApp7ffe9SzX21hHTvDDhAnpVTEd1SJGI3ipS1VqcI
 2sLLrt1VGmsayU2f0aUPc3x+DpCDMoBzUQRmKMDXv97BiEPRXzk5nGde+
 U/w4LIMy044qqHkoaoRGUluNstJBV6/aVNHhHutnjyuB7OyFFsKZ1JV19
 ieiLIq+9ryOOJknzDGb6+Nt0aDZQD785EL7JJm+T/GUBZYmxUNc1jpALR
 +j/h+YZuzme9Yw5d8VjuCvifkRRalnUjtZD+cFpTiORMqJ7ew86/H3r+b g==;
X-CSE-ConnectionGUID: X3U8JzvVRXu34tBvpKtQkg==
X-CSE-MsgGUID: IYgC0WQSSjGl0YjPdgufSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="70469878"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70469878"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:53:10 -0800
X-CSE-ConnectionGUID: PINt79cISbynyDAQRRuwig==
X-CSE-MsgGUID: mt3M4BMyTXSRLHNK0Svsag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207421987"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:53:09 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:53:09 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:53:09 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.54)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:53:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qc24TDjgtJjK7otCF0d/7VXLSWV8VQj9mSbyFUy2w8RAMAg/qXLGMGtDZx5nf4gRzYsGHyYtLzM046/HpehY5TpmiiISS7bm4nMRhCTi8QTqRiX31RZT4QKC5xIh2xhRpJAr5NwgNplmPZ/PLC9H5zNwrwBZtKU2JvMwyjhYiKFMnqj2P43tptu9OccYddWYz2RhrpERI8/FPmjhx+7DAQkFUHtppHunPuwbHMKbtc41Pj48+T4yEPLsaqQiwqkZ2Dodk/kAtU7Hf3vsbVepfEmnzqv6evCn80Fto8nKvqKu/NYEitZICaDuOgSskxi93Qpp+ex3YX02R4GVspDfSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dDhBPeYCMghd9Hfy/yYMpLQbh/k1OfUBcXvyFb7oBN8=;
 b=DfXSpOaFrEpVqu2igP66auneDEHrNOj9tocKDa6sJMZQkjpweEpmymIB5foeKE6mWPzVTB7xnzju5yyFHhnnkXo3edgvuuzxpdKRdj4N+4fF+44ucQyh7QrE1TPHI/BGPMPClRye97z6uRI8V6JFryUyD7VmrmPo4oJyT395zpwhif6Ebb/KKbf6SFCV9KTcY1phPCTjWOP6ORQWGVlsqJIxkQWPkC+C/hXA3sMU9HFPe3VbtpEQUkawTpGiUT1OPljT87FKVNZE7kuDVdd3sCl+zdcmKPXNlp5KziXIJH/LzGnaCCCUlLdwMZGTkqYnJNUbww9EFOSEGPufDhh/Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB6014.namprd11.prod.outlook.com (2603:10b6:8:73::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.10; Fri, 23 Jan 2026 10:53:06 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:53:06 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 19/19] drm/{i915, xe}: Remove i915_reg.h from display
Thread-Topic: [v2 19/19] drm/{i915, xe}: Remove i915_reg.h from display
Thread-Index: AQHciyr4uBQqwCch+0yCI4ivsAoKirVeHK0AgAF5ItA=
Date: Fri, 23 Jan 2026 10:53:06 +0000
Message-ID: <DM4PR11MB63609B5F7D2FF90EE61B225CF494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-20-uma.shankar@intel.com>
 <68a125c3c34d6c35dc82175a28cc7388c191a9f1@intel.com>
In-Reply-To: <68a125c3c34d6c35dc82175a28cc7388c191a9f1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB6014:EE_
x-ms-office365-filtering-correlation-id: 31f7b545-d561-48fd-cd89-08de5a6d971e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?U9gH6iLnGZ04oVHb0DiHkeKaBe/Vi0TYPBkk7lLJTMhrMP4p8ZrqApscJuyV?=
 =?us-ascii?Q?FV3nqKtxuKmtTOx6ogRNUElwO+Qi12YqLVPSt4W7AV2nm2bciFf12h4xRTL2?=
 =?us-ascii?Q?DwvTV8EEqBxchGNDug5Zalm0MKk0gVoNrG04bP4AOoTojQ6BJA2jUA6yLr6L?=
 =?us-ascii?Q?5tUuclpEqyeeZAi+rSULcgSxc/hLpvRSghIBYEm9CWp7+jDBTG4VAwH/3Oct?=
 =?us-ascii?Q?TyL+JVb6CTgiMh17atOClhVcJ0WpybPvGyMN94+fjl1Z/chhPVNtghgkOV27?=
 =?us-ascii?Q?KagNpOTB809Aks53yP5zFyZ89cLGb+68b4W22XYoexvwaCt4lJ0UxOvReYcU?=
 =?us-ascii?Q?x2pxNh8861JQx04sB+9dQxV1xYuwRzCABmBc5Ig4AmyCe6Y1PKfiipJeXDaC?=
 =?us-ascii?Q?B8GUGNZ2e0nKQ0htdfjmrvC2aUbEzRM/6+9b/kzu7w8SkfsP5MBCSoc1XZoG?=
 =?us-ascii?Q?iNWfLa8jI8Bo2y9Ymxnm2aisRlqVyvV/LiQczhK0wrDXk5br6FIDGXx2nuXs?=
 =?us-ascii?Q?kFmiSmGsve7uCEMmK8Wp966z6HC0lvQuWn7YIT0AR4mm8SnFz/fwuGNuL/uF?=
 =?us-ascii?Q?h0AFXNpSJsoXEV0N1oRSLw4y+bqVU9HBHaSWWC9voS0y+25XP/6BAhliXnH3?=
 =?us-ascii?Q?VVrXOaL5lNnnl6Dpphc1MERnmYpUWcYTyFdyxVlqrEfCQYdb6U9/D6CtFDpi?=
 =?us-ascii?Q?3WeRG7NSeztBbfF3T5GW3SVjZJ1HfPDfq3oUkutLtNKjBirtWe5HgoCW2kAz?=
 =?us-ascii?Q?V8Tvzz84SEo5NjbP+MCFNxcl4dLyiLqPyg9LYjBZCEYmiCFgp3NY/t/kAUqS?=
 =?us-ascii?Q?eQqGJ3XtU1wklTvSPOH8Zfv9borhxS56mtr8FS4SmM/JwfwxuhJj4pMwdnmQ?=
 =?us-ascii?Q?Ny7lV0JIsd7EH24mPZVRwaW70kna9GuiESRMZ/lGtgFWlIlcKYIR0tRsLNMA?=
 =?us-ascii?Q?jZ3c6xp8YpB23K7Vfof3ATAuKcWBlMSWMfMr2I1JBkWkbgcdn48EqBmmcSTG?=
 =?us-ascii?Q?9mqy7JpiAraxhWQG7pwRTitXFXYFM7DLQCc6T4OOuLBUmUN23wfNoKni5IKt?=
 =?us-ascii?Q?1INCcvGt9jd0V9MBBrQo8F6xLpNgbsTyoV+YY//qFv2msFNmc1FGYhZsrjsc?=
 =?us-ascii?Q?z3sW7qebRga7vLTLSO8hQ3SxUICTWJo4MMgZx7i7dcDCWzhRgPyIz+wF+8Ym?=
 =?us-ascii?Q?awjjxZGT++6u2Yqy8bjrVVaiLS77T7ZNsggIq6d4MwgDkRi68BxW3evfp0pd?=
 =?us-ascii?Q?mBzSryp81UKwTud02vf2j/ZWjyFnN6I5p9N/4eb0HfVdshrpT6k6vSutqKUp?=
 =?us-ascii?Q?vJamUpLMJnXnTKiX8YByFNo2tr5cdeVjOFeuTBuhKsVS05mS1hixFQPigM9d?=
 =?us-ascii?Q?IUbWtgVdjTeWOKANvGCJ/rbWYPOg/Mhvn+I4ck1tw/ui4E88QS4rH9og/ptR?=
 =?us-ascii?Q?RK4lM8zoy4+JK7A8DdN9ARpvuEjuZ/7Aa0lMdvyVVu2t3WLjbNWO4pp6IOQQ?=
 =?us-ascii?Q?IzyGDAqGkvFfy0xl69Lcs8Ukr/FCXTbAJZGxgYevwwFTW9DmmMGtKjIzI5WS?=
 =?us-ascii?Q?MQSIxUoGei5AdvHJy+c8Q+rVj/d2j4op12oPv92dDXjxRDHDWpbXPOaNvoqq?=
 =?us-ascii?Q?NU35dfiZNQv5UEbobjiU7iA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HTkqw/8LNJlX5j9hl86vKLv5E/RP1K518V2Mygvitpd4IO4hPIwcpHrROBX/?=
 =?us-ascii?Q?cQbYHzT20YY4CXNVkNA920mqJ28BgtqEJRONqTcymfZJTGpIAM+hTjhOm67k?=
 =?us-ascii?Q?HFfncxHpCRH77rUe/TXDNcEJADiMnK3HjiGWMQNTjVPy9H5a7dwSO3BejAfN?=
 =?us-ascii?Q?9D+P0PpnvwJCJwDLsGOiqUdPk9Kyo5q4WeE2OPC5ccHtSm3n4iLxxGj2ikIt?=
 =?us-ascii?Q?WCoOtB2MijGnzEuQ865DE/p+2YOnG/WvCv35EVsSwHexJdpOTLtRsRJi78oi?=
 =?us-ascii?Q?FA0V913xpLScuMzFAMrwXn/XCpo08ZXeGJ6v/w3YDd9OgoBaZFk7Yqr27AiR?=
 =?us-ascii?Q?CnmpC96YmcZvi+58j9q9k+Vb93oQY/z6v+l7ZnGpNRZleDI/UhR1CMqG285A?=
 =?us-ascii?Q?VfG4RB8LH2V6lE0NYvyQ8iGwHBnoymBaZFE4AgcbUKT8wE3J8QB/DNiqd1ea?=
 =?us-ascii?Q?+7mpfGmT4qrZS9Z5siRhmfn/3QqsH+rxoNWL5okWGCtLhvqz9+KWiSwED31Q?=
 =?us-ascii?Q?2kRfQfe8GnMiE1Xg8RZCddiJ2arbCpB3V4JaWMrH/2O6Umj0tmy5Iiphk+P5?=
 =?us-ascii?Q?cCALh549DzCfPtKy91Ogll6HnXc8LOMY8RswEarAXKcUTYfSvXC4Pfl2RnP9?=
 =?us-ascii?Q?mHGeVJB0EbuQU1CmrmM8kI7+ukh4R7KXv1HVUS6gJ+kF1nC1vfpNCMFZWd61?=
 =?us-ascii?Q?zjCa6Sgfin5g4n0VwwbeLr9Piq8VembZukYNriUC5qJX10tlgEs+9YZPoETU?=
 =?us-ascii?Q?IQJGG+QjUTEFgMf5JmEnJnsejVDzYbm++7p73JzRg9TZY7SD9mW2hPYEflzz?=
 =?us-ascii?Q?WaQfoQqmmPpN0Da67A/ljoO3Su2BFKPjkLaeJfBKuLvIoHNHQJBg/TfstxFE?=
 =?us-ascii?Q?4wpOkM9AmNcv7rK0WJ48EnRiC1tvzt97XC1ckeYfVg+BXi5UMDPlw/3p0bN7?=
 =?us-ascii?Q?DSyjhXUurL3DOL7aRH+i46CX70C0AQBrzENTIpN5oz+bgK7P2/xkJ6UD6h4E?=
 =?us-ascii?Q?XvRSVQdwThe9HII1Ye36aukjimdMcXGuoFAn5kJ4FtuisVwIRygZwfMfZFSh?=
 =?us-ascii?Q?On7/v6+LKbel4znODhqvTr1UJidMr0rMQT7j/Jy7nIbI+sv7AcUN3WKSLS3o?=
 =?us-ascii?Q?/zsKhE2veZg5b22hM4zn8vVzYGg9lyEtDydUIAKOcOFK1YrdYiEGfCJ8w54j?=
 =?us-ascii?Q?R1gtptnQsVLpEfUp8hQJH0G/CJxLm2yT+NhTlLNgkh7uoJ+PNxM16axewDvN?=
 =?us-ascii?Q?9Rm/pnhJcvZzTyMmitA+Ot627/gvTIghaLySki8DchkUoP9oYp4cTogMzJ8U?=
 =?us-ascii?Q?qS4x24WaAqhY696NJZoaD9WlxoV+FYmXgywf3X9BPcJ5MlrOME3lMybQnjNO?=
 =?us-ascii?Q?F52wlkQz18HyfPaFlf+UD+KVUZa2j1WVZsJY36O9d253MRKqDuK73UOzvlD+?=
 =?us-ascii?Q?8hZGauhQuwmVLkteq8Iy1PxeDQJTHOYqMomwYCiMltBiE6bTsjAkkZkxtsX0?=
 =?us-ascii?Q?kzbIYkhrWGtjbcdGjcF199+lCxo0e7uUTucOi9v+h8mOk9wS9tjW1x3gqnkh?=
 =?us-ascii?Q?ew4RJupdpHFKxc5ee42dT9eXEXN7XRi21uGtNhKPQ2PqayRAEY/8a/N2ojbg?=
 =?us-ascii?Q?kETBDtln6V1XFH3sJqVS3bx4BILYf+eH9NbQ+mU3y36FWjGf2/23gGiR4jAW?=
 =?us-ascii?Q?mkNVG2Fwagn1bOzaDnv6ZOBUNbKgvI56j0mFS/ZnPNp0lXmOThqH4v+/gQ3N?=
 =?us-ascii?Q?MkGoPxGXNg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31f7b545-d561-48fd-cd89-08de5a6d971e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:53:06.5947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mz8TD718mn/AMFRjkYtvHvVpnrMu9OBx0HmMzzBT8Q5vZw3uxH9H7GmN/hrthsVeBvZelyUwuycvA6RjzRhvrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6014
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 30A1D749C1
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 5:51 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 19/19] drm/{i915, xe}: Remove i915_reg.h from display
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Make display files free from including i915_reg.h.
>=20
> Yeah, I'd like this with more granular headers, please.

Thanks Jani for your valuable time, detailed review and all the suggestions
and feedback.

I will address the same and send the next version.

Regards,
Uma Shankar

> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/hsw_ips.c               | 2 +-
> >  drivers/gpu/drm/i915/display/i9xx_plane.c            | 1 -
> >  drivers/gpu/drm/i915/display/icl_dsi.c               | 1 -
> >  drivers/gpu/drm/i915/display/intel_backlight.c       | 1 -
> >  drivers/gpu/drm/i915/display/intel_bw.c              | 2 +-
> >  drivers/gpu/drm/i915/display/intel_casf.c            | 1 -
> >  drivers/gpu/drm/i915/display/intel_ddi.c             | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display_power.c   | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display_wa.c      | 1 -
> >  drivers/gpu/drm/i915/display/intel_dmc.c             | 1 -
> >  drivers/gpu/drm/i915/display/intel_fdi.c             | 1 -
> >  drivers/gpu/drm/i915/display/intel_hdcp.c            | 2 +-
> >  drivers/gpu/drm/i915/display/intel_hotplug_irq.c     | 1 -
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c          | 1 -
> >  drivers/gpu/drm/i915/display/intel_pps.c             | 1 -
> >  drivers/gpu/drm/i915/display/intel_tc.c              | 2 +-
> >  drivers/gpu/drm/i915/display/skl_watermark.c         | 2 +-
> >  drivers/gpu/drm/i915/display/vlv_dsi.c               | 1 -
> >  19 files changed, 8 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c
> > b/drivers/gpu/drm/i915/display/hsw_ips.c
> > index 008d339d5c21..290d54fe87e4 100644
> > --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> > +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> > @@ -6,9 +6,9 @@
> >  #include <linux/debugfs.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> >  #include "hsw_ips.h"
> > -#include "i915_reg.h"
> >  #include "intel_color_regs.h"
> >  #include "intel_de.h"
> >  #include "intel_display_regs.h"
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > index b1fecf178906..9c16753a1f3b 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -10,7 +10,6 @@
> >  #include <drm/drm_fourcc.h>
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "i9xx_plane.h"
> >  #include "i9xx_plane_regs.h"
> >  #include "intel_atomic.h"
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index c8e0333706c1..7cf511a6c0f9 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -34,7 +34,6 @@
> >  #include <drm/drm_print.h>
> >  #include <drm/drm_probe_helper.h>
> >
> > -#include "i915_reg.h"
> >  #include "icl_dsi.h"
> >  #include "icl_dsi_regs.h"
> >  #include "intel_atomic.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_backlight.c
> > index a68fdbd2acb9..34e95f05936e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> > @@ -12,7 +12,6 @@
> >  #include <drm/drm_file.h>
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_backlight.h"
> >  #include "intel_backlight_regs.h"
> >  #include "intel_connector.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> > b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 4ee3f5172f4e..372081d80aa8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -5,8 +5,8 @@
> >
> >  #include <drm/drm_atomic_state_helper.h>  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_bw.h"
> >  #include "intel_crtc.h"
> >  #include "intel_display_core.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> > b/drivers/gpu/drm/i915/display/intel_casf.c
> > index 0fe4398a1a4e..b167af31de5b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_casf.c
> > +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> > @@ -3,7 +3,6 @@
> >
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_casf.h"
> >  #include "intel_casf_regs.h"
> >  #include "intel_de.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index d8739e2bb004..4bec15352d0f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -33,8 +33,8 @@
> >  #include <drm/display/drm_scdc_helper.h>  #include <drm/drm_print.h>
> > #include <drm/drm_privacy_screen_consumer.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> > -#include "i915_reg.h"
> >  #include "icl_dsi.h"
> >  #include "intel_alpm.h"
> >  #include "intel_audio.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index aba13e8a9051..07cb56f80e88 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -13,9 +13,9 @@
> >  #include <drm/drm_file.h>
> >  #include <drm/drm_fourcc.h>
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> >  #include "hsw_ips.h"
> > -#include "i915_reg.h"
> >  #include "i9xx_wm_regs.h"
> >  #include "intel_alpm.h"
> >  #include "intel_bo.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index d27397f43863..20dadabcd812 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -7,8 +7,8 @@
> >  #include <linux/string_helpers.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_backlight_regs.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_clock_gating.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > index 581d943b9bdc..518df619f5e5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > @@ -5,7 +5,6 @@
> >
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_de.h"
> >  #include "intel_display_core.h"
> >  #include "intel_display_regs.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 1182bc9a2e6d..8df06b993890 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -29,7 +29,6 @@
> >  #include <drm/drm_file.h>
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_crtc.h"
> >  #include "intel_de.h"
> >  #include "intel_display_power_well.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c
> > b/drivers/gpu/drm/i915/display/intel_fdi.c
> > index 5bb0090dd5ed..24ce8a7842c7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> > @@ -8,7 +8,6 @@
> >  #include <drm/drm_fixed.h>
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_atomic.h"
> >  #include "intel_crtc.h"
> >  #include "intel_ddi.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 7114fc405c29..db15bf1980c0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -17,8 +17,8 @@
> >  #include <drm/display/drm_hdcp_helper.h>  #include <drm/drm_print.h>
> > #include <drm/intel/i915_component.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_connector.h"
> >  #include "intel_de.h"
> >  #include "intel_display_jiffies.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > index 82c39e4ffa37..8865cb2ac569 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > @@ -5,7 +5,6 @@
> >
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_de.h"
> >  #include "intel_display_irq.h"
> >  #include "intel_display_regs.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index b4b281ef258b..d17a9b013b67 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -5,7 +5,6 @@
> >
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_cx0_phy.h"
> >  #include "intel_cx0_phy_regs.h"
> >  #include "intel_ddi.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index b217ec7aa758..2d799af73bb7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -9,7 +9,6 @@
> >  #include <drm/drm_print.h>
> >
> >  #include "g4x_dp.h"
> > -#include "i915_reg.h"
> >  #include "intel_de.h"
> >  #include "intel_display_jiffies.h"
> >  #include "intel_display_power_well.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> > b/drivers/gpu/drm/i915/display/intel_tc.c
> > index 064f572bbc85..5784d5d5132d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -6,8 +6,8 @@
> >  #include <linux/iopoll.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_atomic.h"
> >  #include "intel_cx0_phy_regs.h"
> >  #include "intel_ddi.h"
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index a6aab79812e5..410289b3fadd 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -7,8 +7,8 @@
> >
> >  #include <drm/drm_blend.h>
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> > -#include "i915_reg.h"
> >  #include "i9xx_wm.h"
> >  #include "intel_atomic.h"
> >  #include "intel_bw.h"
> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > index d705af3bf8ba..67f0082d3a69 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > @@ -33,7 +33,6 @@
> >  #include <drm/drm_print.h>
> >  #include <drm/drm_probe_helper.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_atomic.h"
> >  #include "intel_backlight.h"
> >  #include "intel_connector.h"
>=20
> --
> Jani Nikula, Intel
