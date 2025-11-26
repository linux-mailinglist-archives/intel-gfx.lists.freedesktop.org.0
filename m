Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE53C886D0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 08:31:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF6BE10E516;
	Wed, 26 Nov 2025 07:31:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5EqZLk5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1608210E516;
 Wed, 26 Nov 2025 07:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764142265; x=1795678265;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=STxXpJTIhXuS0TGViPtoCJxQY93elN2sE6kHWz2oqvk=;
 b=U5EqZLk5eSqedxitkOW1dR9gn+VJ1yYpDZaxepDOtBbesmdMBRnCfhdu
 6OjkMWLZcJVydZnioRr2tyMTrcJGqj/hzMuG3886DmqiVL7uzTSKlRtsc
 Jg30T8cSflPxMkZ+GRFJYBU2Wd8jdpp28CL20iIc6+4hffJyxslo+0TmW
 gsJNwoldYXYWA6I0nz43zg8FQPi8YyiqSrn45MySvezk/IUI563f6aOy4
 vwLSTEslVMPrB8kEp2h5nWCihc+GMOtSjZsqqmEx6wPgkJcSnUM3mRWZh
 rClQj2LxjGtIz+KuW2WtvnnS6R8EDE+KX7TtrylykF+jjQmu99MCzV+cj Q==;
X-CSE-ConnectionGUID: ShEL0KtgTR2DACAtPny0HQ==
X-CSE-MsgGUID: RfspD/eqQ8O9P9aRS6jvTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="83562668"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="83562668"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 23:31:05 -0800
X-CSE-ConnectionGUID: 31a0R4KGQUyTyRHj5kKzFg==
X-CSE-MsgGUID: q1l7tQoBT5qyG7d5iou1Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="193296114"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 23:31:04 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 23:31:03 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 23:31:03 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.29) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 23:31:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ERGhuwHnqGdGBOR5LIA9vlE4UNiU1+M21xbutViXOBUYcaquSHiuaTDMTg+CxZ45z1nkeututOhfkzi08gH2JfqMPClLTOfJGettQghVT9A9WY6IMsntypgzSIvwXNAAMkHXIUky1sRXv8YBCFQhdaWcTuJmBhQOB2PWHAUMaVWnRuRbGH9Wfuh13kHVwlodSuvqr9EmTpQgd6COj/wgFh6ToNCZ0ekrpkSBRsu4m7SJyHaCPZOPp3EIHP5mxNckwY/MLpmf+JJNhPn9DoDftNwRVZF6AJDt/Q17y0R4p7D9cP92FaESVKOasccUhlJ4LNu296YpVvL5dHCxzdXR7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kt9BO0grhsKxwsuH1axfTfGYpVhAJtysBb996hg20g0=;
 b=xEYPJO5s4ch68MHNV00J6YpVZ/b7Y1aHvb2Ple+/EpUJ+cRpFz6tnP1ccwPHIn1L0CKt3tc4Fl8J8DRxQku9zTWPn7C8B0b9QfuAKlv0K/SahWpkOBHA2jmKIGUXYWxY7P21AT6Gx675AoS5bfOIeHDsw4FqASE4TMxhnF1DTPGdSm1tTjbbbVFXbxqWeqOdHVpaOX6Vaq6/Klb4PIAT314XWkWVuICqOIgUEg80acW3kb7mrno5gB0ZSJATuaUMZXzxthI0nABxOgMDIctsDsvgiTjlLaT0cAmHycS41ToLJA+lsbGbgPnwMGhWhl19S/tYOErXPdDanUhtf4/9Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5206.namprd11.prod.outlook.com (2603:10b6:510:3f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Wed, 26 Nov
 2025 07:31:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 07:31:01 +0000
Message-ID: <613e3982-9dc1-40be-ae08-4ba62d78b5e0@intel.com>
Date: Wed, 26 Nov 2025 13:00:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 07/18] drm/i915/vrr: Add compute config for DC Balance
 params
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-8-mitulkumar.ajitkumar.golani@intel.com>
 <cb8a8373-19af-4749-9638-ccee5620c61c@intel.com>
Content-Language: en-US
In-Reply-To: <cb8a8373-19af-4749-9638-ccee5620c61c@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0144.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5206:EE_
X-MS-Office365-Filtering-Correlation-Id: d910ce2e-43b2-4a6c-1958-08de2cbdbfd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TUJiMXE2SEkvU3p3WlNjWjhsUnVUYzhacnBKT0dHbkoxMGU0VU0wN0U1Tldx?=
 =?utf-8?B?OXIwSDZDVmUrbXlFSXhRZEZZQlBkVGpxZDZ4eGM4TENacEZyUW0xLzI4MmJ5?=
 =?utf-8?B?cXlOdGlxZzFYU1hJOHNrbGxoSk1Xdy9RM25OK0dqMVRZdml0MVNSblJZQ0o2?=
 =?utf-8?B?OHpUcVR1dzlDL24vaXBFSDM0aURQQW1Lck5DVUVEYUY5N1g4L3QyOHp3U2d1?=
 =?utf-8?B?eVhBVHo1TmlOU1VXNFROOWdDSHZsclJPZUwrT01xTVZUa2dSUWllZklYMFpp?=
 =?utf-8?B?ZWZJS1dRdzQ2Ui8xbnNNQzlxMHJFYUlvZTRLWi9RUDVESTZqNCtwYzhCQTZh?=
 =?utf-8?B?VEs4MXZOR1lyM3drRFJJQW51S3dhMmtHbFVqYm12VkxQRmJJaENpcS9tc2l1?=
 =?utf-8?B?V3lYK3Rtck9WT0U0WnJWajVEdXhnVlE3MGlZN1ZTdVBzdlE4TzZZYVFkVTZZ?=
 =?utf-8?B?N1pNQWVmaElTTzZndWs4aDBJWjh4SmVxOXZ4Unl4RGl4Z0Q4MjI2WGdDcTBE?=
 =?utf-8?B?ZGZBYSt5b0xZTFlVcjczU21ZeGo5VGpZME01SjVBSTdJNWQrenhxZHMvU0tN?=
 =?utf-8?B?VkVNMEovUnM3MWh1SmxwK3Rsb1owKzQrYUYxcDVtN0NJOGFDQkhLa1N0Z1ZR?=
 =?utf-8?B?eTIyZGpJaHNIREVvZWsxRTlIUmxjMmU3ZnhDSzErVm10YU9ETGwvN2RPWENk?=
 =?utf-8?B?V01Wb0JTT3RFWVdIWTZqaW1BTUsrTzY0emJzUDBici9GSzhxY3kwbEVuS2Nt?=
 =?utf-8?B?VEh2NzRzRGgzUVAyNHhYODNyT1NIeHl6bHR5S05QM1BNTmFQN2NnZmJQT1RB?=
 =?utf-8?B?OVJGN3k0bU0rV0J3S2xRNlFXUTZoVmNTbEJtK2UyRjJ5NTlhMzNoRFdpM0lM?=
 =?utf-8?B?SFYxR01vZVRoQS9WOVg2aTQ1OGVWV2VjS1FBaE9BVkRHaHh5TjUrOHR0VGVl?=
 =?utf-8?B?b3JwekdKTXo2dVdUSWNqQTZtVi92VkpobFdUbUZjRXl4QkE5TlZLVi9saEtJ?=
 =?utf-8?B?UDFZS3FnWjhjREVFVWFmQStzRlZFckdrV2NzN1daRDdHV3lEWGRIanRXak94?=
 =?utf-8?B?cFRJdUxGK1lZeXNKYnAzSFRiaWVnTXBBMTZJQlFaRmFtOGg5Z2o5ZlczS2ZC?=
 =?utf-8?B?TWU5dXNrYlcwYkwxQ1Z3NXRJaEs2R2pTVkhSSmNkQ2NhOXowdTFadlh5bDBw?=
 =?utf-8?B?V0NHZ3pIN3llLzdURER4QWRWY0c2YkRHemR4OE8wZEx5T3lPQUVneGFaWVB1?=
 =?utf-8?B?ZFIwcloxMGNrdHAxMEtwcjNCWDZmaVVvdWFvSlpjcjVnejhhTnY5LzlEUm9a?=
 =?utf-8?B?bzZCK2JXSjdpSHRaV0JicnkzRWl6K0VGeHZiek8zV1BGL2paSjcyd0ZRemxp?=
 =?utf-8?B?S3RoRzFXeHdqVklOK25nUlJYaDhQUFFkRzRza1Ria05VeHo0aW1rcTZGRG10?=
 =?utf-8?B?M0pzODBaUE5PemgxNU9JMkFNaExFYk9TVGk1eVFJYUdJRmJXbjRpNXJKcjlK?=
 =?utf-8?B?SXMrWVVRd0NUUCtuc2RoSTVYejBud2hkeHN5N2ZwZWF2UXk3T08vZ0FYREov?=
 =?utf-8?B?cisyZmJPUnpJTHhPS0FWOGRvQmdUR09jSlFuL250UGw4TGRaMmErRTZEK1ZK?=
 =?utf-8?B?QjNmd1Qyakw4eTg4eHlucGZCUmZCZVVmU2h2NXNoWDFYQVhYV1daNkV4WXMv?=
 =?utf-8?B?dW5iaUFVOHR2SWljYUg3cjBJUVpkL3MyRDBWTXgwb0dwNTZZdm5VenB0eHc0?=
 =?utf-8?B?bnpCd2JKck9LY0pGR1BaVEY4bVM1czNrNXgwSTFyaVNYMjZHZm1MNzlxMmhi?=
 =?utf-8?B?d0MzNjNMTm5WeG9lejBJcmtFcTNnamd3V0tYcEZXVy8wYUNsYVhuTWJsN1li?=
 =?utf-8?B?S09VaDZIb0JHZERpL3ZaZUgxL1JNQmxQbU1aSXVWcGpxNXlrWVZVNWhwRlp4?=
 =?utf-8?Q?nUIZNAjKNn4LdP5GR/KQIQ5aS73dY4zr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUZjaURCME5ySXB3Q3hRNVdmdWN5YTJxLzNSVkJkcnJmekc5VFlVaFB0ZXBM?=
 =?utf-8?B?YUxvcUR2Z0VWRlJSdzVFdU40ODBFZzM3bS9jL2owNXRtWkhxQkt2Qk1udSs2?=
 =?utf-8?B?SGRhcVFlNkZlM3ZDZE8rSjlWUVJNZ21qQ3pqSExhS1Q0UDRIcSsxMkJoZXhS?=
 =?utf-8?B?Nkt6UzRvVHFjN2RWV1JZZVpIUmNMSEtWNW1tQ1h2UlA5SWNXbE9kYWhJbEVQ?=
 =?utf-8?B?V2t0U2d6MEt6UmlUc05rOUpKamhkMGVUYVY0SFIxYjJDaEFPdU1QeHk3aUt6?=
 =?utf-8?B?bVp3Q3p5TXlEMkpacExRUnF1R21wSmwyQVpLN280TEhBSTJzSEo3WmRiR2hU?=
 =?utf-8?B?UFVJZFlJTkR0eUpwb3lneS82M3Irc2k0Q0J6Z3pzd0ZYbzU0N0lXNHdZTFln?=
 =?utf-8?B?SnFrdUYva3lEYndKMWhHNUpJVi9UbEkxMXo4QVptdndaZ2FESlVBK3V0OWtR?=
 =?utf-8?B?NzhxSHgzZjVSL3Q3NnlwSDhZMHZkNFJadEYrM29uQ3ZwMkNRYngyZCtpelhK?=
 =?utf-8?B?Wnc5cWVSWmFBNFFDNnpkNzhIY1dldzRadCtBVmE0OFBtalhLTnpLTXhiUGFv?=
 =?utf-8?B?ZDluWFp6Y1dmOVlvcU9mRlVqL1lkQjg0b1BiU3dnajFBRTA0dWlwNUZGMFVN?=
 =?utf-8?B?b0MwTXFhVjdpTTZjWCs1ZU9QTWdQUm5ra0krZU5SeDF5aDI0cVc0REQwMWhw?=
 =?utf-8?B?SmdGd3FlTWtjc0JmLzJGc3RlU0VmTThwbHkyQW01eWREbWE4ZG5iUTVpUk0x?=
 =?utf-8?B?SzdRajd0Z0t2NWh3b1NiVGhzU3lOaEdVbjI0R3YyeThBYTROeEFCMHo0SE5W?=
 =?utf-8?B?emRXOWN0K1BWU0FueUs5emV0RjYvVjFvd3hUYkdlL00zUWx2RGNJaDl6UlVP?=
 =?utf-8?B?T1JoUmFFbi9aQWk0ZHRsUHpZY0ZPT0RiQng1bzhtdmt3NkRCUDlObUdVdm8w?=
 =?utf-8?B?N2xDYnQ1Y0dtS081YVhFYkRQRWNzRmhnZmwvR2RhSElrSlg0ZEdqRUNwcUE5?=
 =?utf-8?B?QTkzVXpRYTVxbTZhWVg5ZFdMQ2dtMDRmbG5GUE1mWjV2TnlubmVua2JUUmRu?=
 =?utf-8?B?WnhJaTVsa2ZySVVCaGZWL0pHRkI5T2dvOFZaZldYQkVvYWY1Wlk3R1JLUWhX?=
 =?utf-8?B?RWNkOUtxOTBsVUZ1VUxOWjk5UTQ4VU5mQUFKb25BSzRYVGU2VXJOOVVKaEhH?=
 =?utf-8?B?d3dzdmpGRzFVZnFGUnpaaUxxZ1BUMVJ0MTd4ekMwc3VXUEdyVUJXSzlHSUl3?=
 =?utf-8?B?UGNtUjJ3WlRJbzYvMklEMTB5SURPcXV0Qk1vMU91MTFnZ1BxSHBsYStiMzNq?=
 =?utf-8?B?TXp3M1J3ZERwY0szaDF0eVJzRVNUa3J4NzBGU3JPNFNXeHozMm11M2dFbjkv?=
 =?utf-8?B?NWRFYXJuQXpiUVAyb2ZCTjFLT3JZaTBla0Vydm00ancwTGg1RHZDd0Z1RkhG?=
 =?utf-8?B?d1o1cGJwaE1GdThSbzd0ZFVUci9tMmhwKzBSM240VGZwTCt4WUhHVE5RcHpH?=
 =?utf-8?B?NXA1STl6RCtJZmsrK3ZJRVZScStCdWw3dHVOcElCWXhmYmZ6YU95dVA2MnpI?=
 =?utf-8?B?dGFVMDB6YjRJeEtKOEZLZHdxTmw4YlJ3b0E2MlRuLzdoWkhkcGQ3OEV5U3M2?=
 =?utf-8?B?SmdnSkprMXNpeTF0MEVhS00vODQ2UHVyMkJqUzJOYi9MZ2UvVHlKNG1Wd3NP?=
 =?utf-8?B?MkhHSE1tdHhESzdzVDFzWUU4U1dldHlsS0N6WXI3S0pLbE55TWI4cWkzZ2kv?=
 =?utf-8?B?TDNTcTdENEpNNFpYSkN4OW83OUNnQ0ozS3NLdk82RklBN2NxdmE2RWt5dElY?=
 =?utf-8?B?ODNRR0xPblFjYm9kMFNDck9DUVhMeUVyanlMSUlYQjFqUzBqWXE5ZjMrV0dO?=
 =?utf-8?B?em1ia0VDcm1FTE1Od3k0bEpyWGpySGxTazVDaXJ1bTYrTjVxcHRuSlNEWUdS?=
 =?utf-8?B?Zi80bFhoQ25QWGF0dVU4Ykc0U0tDNHBoMnFTdVFySU1Eb0h3SFVlSENsTHQ4?=
 =?utf-8?B?TlJRbWNwVThDUzRaUy83ZzNnSDhBYWttdU13NjlubGJTMkpLZ1dxVnpsZ3ln?=
 =?utf-8?B?QkpndjNhTWs5VzBaNDBwUUZzTGpLZ0pERERlSEszdGdzNm5EWktNYWZrR2dM?=
 =?utf-8?B?SVJtTkdYOWJ0UXdqZGVCd3VXdi8rR3dOZUFCc3UzZ1NxT3lXeTZ4VFdYVlE2?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d910ce2e-43b2-4a6c-1958-08de2cbdbfd5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 07:31:01.7530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QWyMeA75Nq0wQMbieoELcPw5FL1fbUjfD1NjtIQgbSXEE+EINEUE+lIx39ZqgbeIIe5Y/NyiLf/dn0xLP/aQA3fA7T9yZS1jHj1BD5CEUqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5206
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


On 11/26/2025 9:39 AM, Nautiyal, Ankit K wrote:
>
> On 11/17/2025 11:14 AM, Mitul Golani wrote:
>> Compute DC Balance parameters and tunable params based on
>> experiments.
>>
>> --v2:
>> - Document tunable params. (Ankit)
>>
>> --v3:
>> - Add line spaces to compute config. (Ankit)
>> - Remove redundancy checks.
>>
>> --v4:
>> - Separate out conpute config to separate function.
>> - As all the valuse are being computed in scanlines, and slope
>> is still in usec, convert and store it to scanlines.
>>
>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 38 ++++++++++++++++++++++++
>>   1 file changed, 38 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c 
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 650077eb280f..7cb484dd96df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -6,6 +6,7 @@
>>     #include <drm/drm_print.h>
>>   +#include "intel_crtc.h"
>>   #include "intel_de.h"
>>   #include "intel_display_regs.h"
>>   #include "intel_display_types.h"
>> @@ -20,6 +21,14 @@
>>   #define FIXED_POINT_PRECISION        100
>>   #define CMRR_PRECISION_TOLERANCE    10
>>   +/*
>> + * Tunable parameters for DC Balance correction.
>> + * These are captured based on experimentations.
>> + */
>> +#define DCB_CORRECTION_SENSITIVITY    30
>> +#define DCB_CORRECTION_AGGRESSIVENESS    1000
>
>
> As mentioned in comment in last version, we can just have this value 
> as 1000 * 10 instead of multiplying 10 where we are using this macro.
>
> This is a bit unclear to me. More about this below.
>
>
>> +#define DCB_BLANK_TARGET        50
>> +
>>   bool intel_vrr_is_capable(struct intel_connector *connector)
>>   {
>>       struct intel_display *display = to_intel_display(connector);
>> @@ -342,6 +351,33 @@ int intel_vrr_compute_vmax(struct 
>> intel_connector *connector,
>>       return vmax;
>>   }
>>   +static void
>> +intel_vrr_dc_balance_compute_config(struct intel_crtc_state 
>> *crtc_state)
>> +{
>> +    int val;
>> +    struct drm_display_mode *adjusted_mode = 
>> &crtc_state->hw.adjusted_mode;
>> +
>> +    if (!crtc_state->vrr.dc_balance.enable)
>> +        return;
>
> Here check should be for crtc_state->vrr.enable, and 
> HAS_VRR_DC_BALANCE(display) and return early if these are not true.
> I think this vrr.dc_balance.enable should be set in this function, 
> perhaps not in this patch, but in the last patch.
> Currently its set in intel_vrr_compute_vrr_timings() in #patch17.
>
>
>
>> +
>> +    crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
>> +    crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
>> +    crtc_state->vrr.dc_balance.max_increase =
>> +        crtc_state->vrr.vmax - crtc_state->vrr.vmin;
>> +    crtc_state->vrr.dc_balance.max_decrease =
>> +        crtc_state->vrr.vmax - crtc_state->vrr.vmin;
>
>> + crtc_state->vrr.dc_balance.guardband =
>> +        DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
>> +                 DCB_CORRECTION_SENSITIVITY, 100);
>> +    val = DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
>> +               crtc_state->vrr.dc_balance.guardband);
>> +    crtc_state->vrr.dc_balance.slope =
>> +        intel_usecs_to_scanlines(adjusted_mode, val);
>
>
> This needs to be written with more clarity.
>
> Perhaps need some comments to explain what is happening.
>
> DCB_CORRECTION_AGGRESSIVENESS is the number of millisecs to adjust 
> when balance is twice the guardband, as per our settings we perhaps 
> want 10msec.
>
> Slope is the ratio between Agressiveness msecs : Guardband msecs.
> We can use ratio of agressiveness usecs : guardband usecs.
>
> Currently guardband is in lines, (30% of vmax lines to be precise)
>
> guardband_usecs = intel_usecs_to_scanlines(adjusted_mode, 
> crtc_state->vrr.dc_balance.guardband);


(face palm).. I meant:

guardband_usecs = intel_scanlines_to_usecs(adjusted_mode-> 
crtc_state->vrr.dc_balance.guardband)

Sorry for the confusion.


Regards,

Ankit


> agressiveness usecs = (10 msec) * 1000 = 10000 usecs;
>
> slope = DIV_ROUND_UP(agressiveness_usecs, guardband_usecs)
>
> So IMO name the macro     10 * 1000
> Use slope as ratio DCB_CORRECTION_AGGRESSIVENESS_USECS : guardband_usecs
>
> Regards,
> Ankit
>
>
>> + crtc_state->vrr.dc_balance.vblank_target =
>> +        DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
>> +                 DCB_BLANK_TARGET, 100);
>> +}
>> +
>>   void
>>   intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>                struct drm_connector_state *conn_state)
>> @@ -399,6 +435,8 @@ intel_vrr_compute_config(struct intel_crtc_state 
>> *crtc_state,
>>               (crtc_state->hw.adjusted_mode.crtc_vtotal -
>>                crtc_state->hw.adjusted_mode.crtc_vsync_end);
>>       }
>> +
>> +    intel_vrr_dc_balance_compute_config(crtc_state);
>>   }
>>     static int
