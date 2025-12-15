Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 909B4CBC9EC
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 07:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85B6910E143;
	Mon, 15 Dec 2025 06:22:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nasc1bX6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE96C10E143;
 Mon, 15 Dec 2025 06:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765779736; x=1797315736;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gnq15pzCM4zWt2ROMOgJLSB9hIxA5pz/DHjkMJH0Taw=;
 b=Nasc1bX6ujzC6AT/A13jSvYr2yEEx7Uwpy9Q/qopSoituUis+z/1XoyY
 Y05SqrGK5Xaj51lKoYWg2dXe/Vr5Q8xz44bqA9pDF0rYHJqau6BYMz4nq
 gcWdNVuDCA/HrZN4pbpopkBApmXTuT50BRIAC7qYAhMGQNuLmYYxaLlZu
 0+6Eb6uWCgFKrUcLUMBg+Wgnmi5d7CCQNifCxLZLYVnklwJO9VFbZAuBS
 RJ/JAS35BPD0WqWacohyVLeQdFKsGToumbtN1P8tPJed77qjImobimJLg
 9hmhIYJH9OymlvKBW0rD472UYUhkJ/93k2vT5hxuNOoTPjQVNhACFgDxF A==;
X-CSE-ConnectionGUID: L5EAS5RgQX+jQxhLdElhPg==
X-CSE-MsgGUID: 42eOkRg5RQawechvdINWNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="85086724"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="85086724"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 22:22:15 -0800
X-CSE-ConnectionGUID: s+hxJFYbQ7q+MqkgzUMZ3w==
X-CSE-MsgGUID: MT62J+86RNuS9sAwW6MtVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="221032991"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 22:22:14 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 22:22:14 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 14 Dec 2025 22:22:14 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 22:22:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gYzbSigHawTXG9l3uCbtIJDublD7ua1wrUrsdJfckSySVtupEUpOPR10vp49PcAuFxxIPMq30iYfWk1cpUww/17MkZ7VJUJJHVjF1sVxlABVcK/3Z7oiI83fq+jK1j+uyiPgTDcCwD7WNCFt5plqZuKazOwcaxxrifNfTs/PLCAinpUPjCkx8uGToWu3iKhbrJBoR2Q406Lq+C3UQnHTWpi/CTGwUCiN4edAlrDiOMIK/Moc4f6i8mvBzqL+Y2RYrcW9B4igjVJk+GU/EZRYtOfu85R8eplRpzUIr0Y5yZ4g8yQ82gMz9S7m75nCtztJVU4GyfuvjggFwnmpvQ2pYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gnq15pzCM4zWt2ROMOgJLSB9hIxA5pz/DHjkMJH0Taw=;
 b=Cg/ZjgOvPtqxCQgRcDpfFYDS6mKhaKKyr6YUaQrvEh8dmeM+pMGvviqcgLiOqYy3/1givcFM+xxNB7jY8eyAjOpT9bHIBrZ+7OESfnfcUxJyAkA0cYdw2dQ4eR5msyv7GQa16LQSBh+gZNENtGyTSaHAr9L2VVRqkS54y0P5nAX0cjgbTwDOapTAzozLnDo8pOEJMhV3KMtkORIQ8NAGMTfn6oXCHHws3xwOmd4nY6C+MoeBgL6rQgJpUNQLzq4M5saY63Z4No69MZgC6A5Lm1fXEOFd/5BOIgyXwvGCCJDNLDBP2T/A3bz2LsKQ3FRP+0ZFZM/UWqIk3nKQoSX7Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS4PPF900531A26.namprd11.prod.outlook.com (2603:10b6:f:fc02::3b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 06:22:07 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 06:22:07 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v10 04/17] drm/i915/vrr: Add functions to read out
 vmin/vmax stuff
Thread-Topic: [PATCH v10 04/17] drm/i915/vrr: Add functions to read out
 vmin/vmax stuff
Thread-Index: AQHcY15yN7+5sdakQUWSnkp/xuZd3rUiT2Nw
Date: Mon, 15 Dec 2025 06:22:07 +0000
Message-ID: <DM4PR11MB63607F82C1428BAC9803E0BEF4ADA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-5-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20251202073659.926838-5-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS4PPF900531A26:EE_
x-ms-office365-filtering-correlation-id: 57ca321f-ccef-4d72-7738-08de3ba24590
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?RWhEV2VyUnk5Tzdtb055RW5ZYTkzWmFFL3lzYjYwQXNuQ2VacnBzUWZkNmQz?=
 =?utf-8?B?VUc4cUhzTzVtci92WWFGdVNDNUFhdXVmZzJvL2pmbGI3WlgwWkVHejFOUVBq?=
 =?utf-8?B?UzBGYkxLNE1TdGdPZXhFUTZ2ZUJBOHNEOFB2SVExb1lTc296V0NOL1YrbDVK?=
 =?utf-8?B?S1BGTm9SYUZUMForWEpKWE0vcW1zNC9GanNZVEtwbm5pZXVRd0VnSU5vVzFW?=
 =?utf-8?B?SlV5QjY2UUJvMlkzMjhoTTBFdnhxSjFJbHFyQlNDZk80cGFkamdtOEZjQzlV?=
 =?utf-8?B?SlpaM1dIOG1pTzcwOTdhdzFUeENGTFZIbW1IbVVPVU9hY2YzSXdLbUV5b1F2?=
 =?utf-8?B?T1I1NVBsV1NTd3gwT25hMjl6YkxNSXpsc0JCdDk2WWZVUm9vSzRFcUpEci9q?=
 =?utf-8?B?ZDFZTldaTlpYK2M4c2Y5enZDVDA1bGVoQWdIVVBMM0N0dGRrb2FXTzRzZ212?=
 =?utf-8?B?MGZ0VVAxeTFzMnJkQVdUVC96akdUeUN3TWN1aWtFbnowdmJmTkFmYW5EUldJ?=
 =?utf-8?B?Z08ybEswcUNFeFl4R3V4UXZ0VDJlOWYrdHdSRWVXQWRHMGZ5dE8rVU5UOVE3?=
 =?utf-8?B?WkhsOEV3WFV3ZUNMOE5taktzQkdkVVZpdHNqUmtnbXJocVVYUEZ0ZnpuVHdB?=
 =?utf-8?B?a3EySk9BYXdEWEJsOTZ0TlRFUjBPeWJuK0pEYXZYOXhVY09lQkVVVVNMdDU1?=
 =?utf-8?B?cEFOMEZxaHRZNWNZNG5TY3FmYkh0WnFSU3ZlV1ZBTTErejIwRVFwL2lLcmVZ?=
 =?utf-8?B?YVQxRUNYV0ZhODdMTXduaXRXZHRPWjlySDU4djBoZS9zQWVNa2NPSWVZOUE3?=
 =?utf-8?B?Z1JPRTg0SCtTa1JmQW1kblhQVDhSRm13eEQrRDdmS1hPUS95OThpN0FYdFl5?=
 =?utf-8?B?L3g2b0dzNGYrUXp2U0N0RkJwOWJnUGhtM0VDNjQ4dU81ekdrQVIyQWprV3dX?=
 =?utf-8?B?UEdKaGNFSVJoMEpzWWQ3RXlVU0Q5VHB0R1UvSEtJdUtOL1NTbVpmNkxRU3lv?=
 =?utf-8?B?T2JQMFMrSVRaSWlPM0RQVEtqZS9PM1FUdk8raEs1R1pvdEloOHp4UUp3b1JR?=
 =?utf-8?B?ZkpJbEtWUUdoUHdJb0Y5RXJLRDczOXNUS3haUENCaTdMYVZIQ1VIa0dtSDVE?=
 =?utf-8?B?dG5xbUI4U21Va3c0MWJRNEhwVDFmU1dpSU12RE45ZHlwby9ERXovVTh4d2c1?=
 =?utf-8?B?dHhCQm55d0NvemUwRjVGRGFmWHFKNHNnVEhaaHppSy9oWVdXazF0VUhmVWFX?=
 =?utf-8?B?Wk5Dci9lU2pYUHpNT25oTWlYanNZZkhKOStWcytrTlFmdjdJSndRczBDY1Rk?=
 =?utf-8?B?TWI5RjIxcUxPWlRMQ1Jrd3pteStDak9neW1OYXY2WmhxdWZlazlpWEdYUWp4?=
 =?utf-8?B?Z3l1T1huU1c2R0kzMkI2WU9XZWN1R0YyUVZnN3dMRDJNS3U5UngzUVJwWUxu?=
 =?utf-8?B?NVZsWGd0SHZhdWhRMmE5ekdSUk9GRjZzK3IrYzlkMkRhQU0rSXEwUTdIT3Iz?=
 =?utf-8?B?elJibmcvMGErbW8xQUpSOEFocUNFalFPdWZWbEFDQmIvMUozOXE4QThyL2lu?=
 =?utf-8?B?R1Mra2ZRU0s4R3k3OUg0WXY5dVAyWHNZb3FsbXpuWlhGMG1JenRxcmo1Nnhn?=
 =?utf-8?B?SkZoUy9kK0FQZGNyV3F4T3JOUnNTY1h3WFhRRzl0d0ovMk93LzVpeVdCOU9H?=
 =?utf-8?B?NERQUDRJcVEvQWpZM1A5U2tjY1RqWm5TU29ZR3VMVEx4TnJRTGVubGh0YU1N?=
 =?utf-8?B?L04xOUlOWHFNZFAwY01xcDFoYkVQOVhTS2hMYUVENllkRWdKeGlTZG9vK1pZ?=
 =?utf-8?B?eDJUbHdYY2ViV2xMMStrcFl1bTNoWmhiZmVyTVJLWTEwWVoyK0Y0bHBnaUpU?=
 =?utf-8?B?YXQ2YnJ0YkpoS3ZrQm9OeWJNS0xST1hmWTB6U1NqYytVeUtNN1g3V2NaUjV6?=
 =?utf-8?B?K2p2cXRoK0U0NGc3MGFRZVBoc3RxdEhwc1FDejZhMS85RXVuRDB0MzloWFFI?=
 =?utf-8?B?Y3lxZjVxbHpETnVtejJCVllqMXBqdHVrdkkwZVZLSnA5TFRYVlVVYUJjZGRN?=
 =?utf-8?Q?cSuo+G?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U01BQ29Ma2JQbEsxY2dCU3BKVVJOS05UQXBzd3k0R1p1R1VNdVgvWVpGMVhx?=
 =?utf-8?B?U2dzeXlYaktCM3QvalF0aEl4RnFlazlZNUlqUEEwOFZxNDlKeHRYS0NEOUV6?=
 =?utf-8?B?V1d5N0g1UENZTDVSYU1CUWhvczVBNDNTdDZUa0t5RmhoZUllQnBucndrbFFh?=
 =?utf-8?B?RHRZTmRSVHZQQVZTT2pMbG5FeUc4alY5SzJtSmFXWTlsQ0Z1aGZUTlArL2dp?=
 =?utf-8?B?WG42Unk0eXVCVEJxU3Z3NnBiclZ0a1llYkdsd3dIWEdoUE4yT1hONmRGRXZm?=
 =?utf-8?B?T3p0WGFZZTNPUmZzZm1WTXBsZmR6Z0RBQnVvV0ZyMzliZ2dkUWZDRjhMS0dU?=
 =?utf-8?B?bGNiU1pIeFRYdnphb2Y0Rk9YTjdHVDdRME91YUQ5OHpFL0JtODV0Y0U5RzhK?=
 =?utf-8?B?MGhMQldMZjdsVmY1YnpoUEQyWU05MG9wdE83dGM0aFVYVmxtNnBFR2tDdWhz?=
 =?utf-8?B?Y1JQbjlVbTN2cFJLbXgwZ3h2c1p3UzhmQWVTaVJjbWdaTHdNaml6ejZvTkhL?=
 =?utf-8?B?ZGlHcENFbXRqUGFmMVFZbmpZaUNxeGx1THRpS2ZXYXAxcWU1OTMvYUtVNWd5?=
 =?utf-8?B?U0gydmF3dGg0RFlzMHZndy9IRVBlODBPZzBSNHN6Y3VtU1Y2dEt3OVBMeFhx?=
 =?utf-8?B?NC9xK0JoaDdvYXp4cXByUmJzU0FpTXl2R0p3blRFNkdCOCtRelJoSUYvZ085?=
 =?utf-8?B?UW1DYU5MZXdCVStQVFJBdmJSNURnZ0lrU3pzaTJuUkRRQkpzb3lkQnhyUG45?=
 =?utf-8?B?V1JNc3U5bXNKNEN5K0ovT29PTUw5WG9vbEszK3FZc213d1lqM3dQZFUwNity?=
 =?utf-8?B?R2xINllYSjJ1OW9xak93RDcya0pYdlJzbmJYb00vZUpTNWVGa1lpNlNOVzQx?=
 =?utf-8?B?TTRoSlozejIxWUhkaXNhUWIvcE8yb29JNCs4SVRKYlcrNU5lSmFNemlqUjRR?=
 =?utf-8?B?eTBBWStvb2JkQVdnUGpnVUo5eHRUVG9DbGdIV3kzS2xQalRBNy85ZCs0bjEr?=
 =?utf-8?B?dU5ZZjFtTUhrZTd6OE40QW1aT0FSTS9ZbERBUlhMRW9kRTA2T2hCc2NMR05Z?=
 =?utf-8?B?ajhsSkRsaEJSRFpTb2pEL1VuWDdhMWsxU1IxaXVCdHNoVmdYUlljQ3N0L2ph?=
 =?utf-8?B?bk5xaWhXZUVqekFPc3RsMEpZWG9EKzJiN3JlNEFGQ2lEYVJ6RUt0cm5EWm95?=
 =?utf-8?B?dWdyaG5ub1MwYU91MTkxbHNETHp3bnlOYTRwWUgxYzhjZzdaR0JlZmJ2dzR4?=
 =?utf-8?B?Mm9jNjd0NlJsd2FvSllmWDhhTVBmK3dnNExibld0cUxaNFlnc3dvNUVtMmph?=
 =?utf-8?B?cGVzZURPZjc2K2szUUJ3Q1BROHdXL1R0NUR0Y1JFR08yOUkvb2FqZzBsK3N5?=
 =?utf-8?B?bWJwMGM0cFp4dVlnNitic3pockkxTjM5OTNYS0pzekJPMnpRY3pmRHR0YUp5?=
 =?utf-8?B?dlBRZFNyV2ZqSzh3NzYwM1lkY3pDMW9EdG1jQUhFY3V3V2lUekFta0piQ1dn?=
 =?utf-8?B?NzF6eDI4ck1xM2t2TUh5MmZBOFc2UlU1OHZ1RkJOUXRHZ0xDUktsVlc0a2J5?=
 =?utf-8?B?c3R1aVF3QXFSMWRGYy9iNDQzVEFuNzg3QUs0ZHh5T3phcHpPNFl1Ym1mbWhl?=
 =?utf-8?B?aDA4aHJ6anFjNmJXOWMzbmtGNCtsa2M3U3QzZy9Nc3lQZEZ0NVpES3c1ZFly?=
 =?utf-8?B?R3YxR0lEQnhFTER4SVdKSGFlS2p1R1Zua3pDU0s4NWF2WWliUCtxcVFjUlNV?=
 =?utf-8?B?SVRPRUVDOEVHSG9QY3hIQllKcDVaQnozcUFoVFBmb294cjZJK0R5WGdyN2th?=
 =?utf-8?B?Q0JtaktqTkduWFZYZnJEMzh5MUl2K3RpVGpVbmFGZXpyYnFRRklabUplUXRn?=
 =?utf-8?B?SGQ4OXE1OWE2Y2RpMUdlNEFTN2lqQnNHU2JOdFAveGZSSFZkUnpUZytabXRZ?=
 =?utf-8?B?SzNkMVdNdXNUS1pPakV2dlYwd2V5RjU2cFNVd1QrVXVMempvbzM0aU1YODZE?=
 =?utf-8?B?dEoyRkRONkg0aEtsUHhZNXN5Y0VZV090UTlpaXJCeUxNV1I0bHUzWjZLcVhQ?=
 =?utf-8?B?RDVOYXJ4YU1tZFM0YktFNXJ4NTlYQ05NTktPbzJvZTd6eW5qNmV1T1JMS3NZ?=
 =?utf-8?Q?bbjMpdQUG27C0+e5jioMDVgmB?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57ca321f-ccef-4d72-7738-08de3ba24590
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 06:22:07.0773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LY9piVluuNNnNy27YZh4WGXM9hXolmNql6w+Z/PrCrRC4X1EpYBJFuDSsrzcEsLedhcxmc0vakWOYvdu8uYO8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF900531A26
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR29sYW5pLCBNaXR1bGt1
bWFyIEFqaXRrdW1hciA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCj4g
U2VudDogVHVlc2RheSwgRGVjZW1iZXIgMiwgMjAyNSAxOjA3IFBNDQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmc7IEdvbGFuaSwgTWl0dWxrdW1hciBBaml0a3VtYXINCj4gPG1pdHVsa3VtYXIuYWppdGt1bWFy
LmdvbGFuaUBpbnRlbC5jb20+OyBOYXV0aXlhbCwgQW5raXQgSw0KPiA8YW5raXQuay5uYXV0aXlh
bEBpbnRlbC5jb20+OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1h
DQo+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYxMCAwNC8xN10gZHJtL2k5MTUvdnJyOiBBZGQg
ZnVuY3Rpb25zIHRvIHJlYWQgb3V0IHZtaW4vdm1heA0KPiBzdHVmZg0KPiANCj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IENhbGN1
bGF0ZSBkZWxheWVkIHZibGFuayBzdGFydCBwb3NpdGlvbiB3aXRoIHRoZSBoZWxwIG9mIGFkZGVk
IHZtaW4vdm1heCBzdHVmZiBmb3INCj4gbmV4dCBmcmFtZSBhbmQgZmluYWwgY29tcHV0YXRpb24u
DQo+IA0KPiAtLXYyOg0KPiAtIENvcnJlY3QgQXV0aG9yIGRldGFpbHMuDQo+IA0KPiAtLXYzOg0K
PiAtIFNlcGFyYXRlIHJlZ2lzdGVyIGRldGFpbHMgZnJvbSB0aGlzICBwYXRjaC4NCj4gDQo+IC0t
djQ6DQo+IC0gQWRkIG1hc2sgbWFjcm9zLg0KPiANCj4gLS12NToNCj4gLSBBcyBsaXZlIHByZWZp
eCBwYXJhbXMgaW5kaWNhdGUgdGltaW5ncyBmb3IgY3VycmVudCBmcmFtZSwgcmVhZCBqdXN0IF9s
aXZlIHByZWZpeA0KPiB2YWx1ZXMgaW5zdGVhZCBvZiBuZXh0IGZyYW1lIHRpbWluZ3MgYXMgZG9u
ZSBwcmV2aW91c2x5Lg0KPiAtIFNxdWFzaCBSZWZhY3RvciB2cnIgcGFyYW1zIHBhdGNoLg0KPiAN
Cj4gLS12NjoNCj4gLSBVc2UgZXJyb3IgY29kZSB3aGlsZSByZXR1cm5pbmcgaW52YWxpZCB2YWx1
ZXMuIChKYW5pLCBOaWt1bGEpDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1h
IFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBNaXR1bCBHb2xhbmkgPG1pdHVsa3VtYXIuYWppdGt1bWFyLmdvbGFuaUBpbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYyB8IDU2
ICsrKysrKysrKysrKysrKysrKysrKysrKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zyci5oIHwgIDUgKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDYxIGluc2VydGlvbnMo
KykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zyci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBp
bmRleCBiOTJjNDJmZGU5MzcuLjMxZjNhN2I2ZTAwZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+IEBAIC0yNjEsNiArMjYxLDEyIEBAIHN0YXRpYyBp
bnQgaW50ZWxfdnJyX2h3X3ZhbHVlKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLA0KPiAgCQlyZXR1cm4gdmFsdWUgLSBjcnRjX3N0YXRlLT5zZXRfY29udGV4dF9s
YXRlbmN5OyAgfQ0KPiANCj4gK3N0YXRpYyBpbnQgaW50ZWxfdnJyX3ZibGFua19zdGFydChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJCQkgIGludCB2bWlu
X3ZtYXgpDQo+ICt7DQo+ICsJcmV0dXJuIGludGVsX3Zycl9od192YWx1ZShjcnRjX3N0YXRlLCB2
bWluX3ZtYXgpIC0NCj4gK2NydGNfc3RhdGUtPnZyci5ndWFyZGJhbmQ7IH0NCj4gKw0KPiAgLyoN
Cj4gICAqIEZvciBmaXhlZCByZWZyZXNoIHJhdGUgbW9kZSBWbWluLCBWbWF4IGFuZCBGbGlwbGlu
ZSBhbGwgYXJlIHNldCB0bw0KPiAgICogVnRvdGFsIHZhbHVlLg0KPiBAQCAtODk4LDMgKzkwNCw1
MyBAQCBpbnQgaW50ZWxfdnJyX3ZtaW5fc2FmZV93aW5kb3dfZW5kKGNvbnN0IHN0cnVjdA0KPiBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCXJldHVybiBpbnRlbF92cnJfdm1pbl92
Ymxhbmtfc3RhcnQoY3J0Y19zdGF0ZSkgLQ0KPiAgCSAgICAgICBjcnRjX3N0YXRlLT5zZXRfY29u
dGV4dF9sYXRlbmN5OyAgfQ0KPiArDQo+ICtpbnQgaW50ZWxfdnJyX2RjYl92bWluX3ZibGFua19z
dGFydF9uZXh0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkg
ew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShj
cnRjX3N0YXRlKTsNCj4gKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0
YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gKwl1MzIgdG1wID0gMDsNCj4gKw0KPiArCXRtcCA9IGlu
dGVsX2RlX3JlYWQoZGlzcGxheSwNCj4gK1RSQU5TX1ZSUl9EQ0JfQURKX0ZMSVBMSU5FX0NGR19M
SVZFKGNwdV90cmFuc2NvZGVyKSk7DQo+ICsNCj4gKwlpZiAoUkVHX0ZJRUxEX0dFVChWUlJfRENC
X0FESl9GTElQTElORV9DTlRfTUFTSywgdG1wKSA9PSAwKQ0KPiArCQlyZXR1cm4gLUVJTlZBTDsN
Cj4gKw0KPiArCXJldHVybiBpbnRlbF92cnJfdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUsIFZSUl9E
Q0JfQURKX0ZMSVBMSU5FKHRtcCkNCj4gKw0KPiArMSk7IH0NCj4gKw0KPiAraW50IGludGVsX3Zy
cl9kY2Jfdm1heF92Ymxhbmtfc3RhcnRfbmV4dChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZQ0KPiArKmNydGNfc3RhdGUpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ICsJZW51bSB0cmFuc2NvZGVyIGNwdV90
cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+ICsJdTMyIHRtcCA9IDA7
DQo+ICsNCj4gKwl0bXAgPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksDQo+ICtUUkFOU19WUlJfRENC
X0FESl9WTUFYX0NGR19MSVZFKGNwdV90cmFuc2NvZGVyKSk7DQo+ICsNCj4gKwlpZiAoUkVHX0ZJ
RUxEX0dFVChWUlJfRENCX0FESl9WTUFYX0NOVF9NQVNLLCB0bXApID09IDApDQo+ICsJCXJldHVy
biAtRUlOVkFMOw0KPiArDQo+ICsJcmV0dXJuIGludGVsX3Zycl92Ymxhbmtfc3RhcnQoY3J0Y19z
dGF0ZSwgVlJSX0RDQl9BREpfVk1BWCh0bXApICsNCj4gMSk7DQo+ICt9DQo+ICsNCj4gK2ludCBp
bnRlbF92cnJfZGNiX3ZtaW5fdmJsYW5rX3N0YXJ0X2ZpbmFsKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gKwllbnVtIHRyYW5zY29k
ZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gKwl1MzIg
dG1wID0gMDsNCj4gKw0KPiArCXRtcCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwNCj4gK1RSQU5T
X1ZSUl9EQ0JfRkxJUExJTkVfTElWRShjcHVfdHJhbnNjb2RlcikpOw0KPiArDQo+ICsJcmV0dXJu
IGludGVsX3Zycl92Ymxhbmtfc3RhcnQoY3J0Y19zdGF0ZSwgVlJSX0RDQl9GTElQTElORSh0bXAp
ICsgMSk7DQo+ICt9DQo+ICsNCj4gK2ludCBpbnRlbF92cnJfZGNiX3ZtYXhfdmJsYW5rX3N0YXJ0
X2ZpbmFsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0K
PiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRj
X3N0YXRlKTsNCj4gKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRl
LT5jcHVfdHJhbnNjb2RlcjsNCj4gKwl1MzIgdG1wID0gMDsNCj4gKw0KPiArCXRtcCA9IGludGVs
X2RlX3JlYWQoZGlzcGxheSwNCj4gVFJBTlNfVlJSX0RDQl9WTUFYX0xJVkUoY3B1X3RyYW5zY29k
ZXIpKTsNCj4gKw0KPiArCXJldHVybiBpbnRlbF92cnJfdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUs
IFZSUl9EQ0JfVk1BWCh0bXApICsgMSk7IH0NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zyci5oDQo+IGluZGV4IGJjOTA0NDYyMTYzNS4uNjZmYjlhZDg0NmYyIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgNCj4gQEAgLTQzLDQg
KzQzLDkgQEAgYm9vbCBpbnRlbF92cnJfYWx3YXlzX3VzZV92cnJfdGcoc3RydWN0IGludGVsX2Rp
c3BsYXkNCj4gKmRpc3BsYXkpOyAgaW50IGludGVsX3Zycl9zYWZlX3dpbmRvd19zdGFydChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7ICBpbnQgaW50ZWxfdnJy
X3ZtaW5fc2FmZV93aW5kb3dfZW5kKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpj
cnRjX3N0YXRlKTsNCj4gDQo+ICtpbnQgaW50ZWxfdnJyX2RjYl92bWluX3ZibGFua19zdGFydF9u
ZXh0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSk7IGludCBp
bnRlbF92cnJfZGNiX3ZtYXhfdmJsYW5rX3N0YXJ0X25leHQoY29uc3Qgc3RydWN0DQo+ICtpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsgaW50DQo+ICtpbnRlbF92cnJfZGNiX3ZtaW5fdmJs
YW5rX3N0YXJ0X2ZpbmFsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19z
dGF0ZSk7IGludCBpbnRlbF92cnJfZGNiX3ZtYXhfdmJsYW5rX3N0YXJ0X2ZpbmFsKGNvbnN0IHN0
cnVjdA0KPiAraW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICsNCj4gICNlbmRpZiAv
KiBfX0lOVEVMX1ZSUl9IX18gKi8NCj4gLS0NCj4gMi40OC4xDQoNCg==
