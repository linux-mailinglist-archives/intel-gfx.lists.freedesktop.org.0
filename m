Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E074BBE332C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 13:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8797610E9C0;
	Thu, 16 Oct 2025 11:56:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nnx85ave";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F24C410E2F7;
 Thu, 16 Oct 2025 11:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760615778; x=1792151778;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bGMSze9sRCSvr1j69wk4S/YexoTH9PGujDaDMxxlAvc=;
 b=nnx85avecGCY2LyasHarLSt1MP8cQgnKi1XLz7DFhtrlclNsPPGbXure
 YoTZvFnvAqAjXs9+BFf4XZJg01IudByLpqqYzbX3+Pa1O6uy9Fw29HYUq
 vlwDndqZ19OQheLFyjVLLHXUs4WRC+F/4Xzp3mJ3B62Mls16QdU6dus+i
 i5F4VSnrVWdvWGYfuptsQURiSB6KD5aU+iOHSbJQemMiDV3KqoBI/oBDS
 B2gkxESAkFpivNt3EQABuhcsrpRg9CfIHIDescL0TvHg7LwBwPIDDTa+M
 JDeDntf+eLv0hsL4EgG5kRyzNtHtbYze09fDRkX830L2zc/FOXl4m3nrR Q==;
X-CSE-ConnectionGUID: ZoTHFgTSSeeIRkf0YK16rw==
X-CSE-MsgGUID: E0f5kB6CRi+w3QQxGF/6Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="66454278"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="66454278"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 04:56:17 -0700
X-CSE-ConnectionGUID: n1zTJLZiS+imG3Gh/V7F5w==
X-CSE-MsgGUID: YrYcSSPrQZ2i0WYpzrcRuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="206140836"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 04:56:16 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 04:56:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 04:56:16 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 04:56:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VhHeMXP7rTiiNUc6iW6sVFmTcefsdU7S5fWVIosS0tJ71xgZlf/RVRQI78VU0CLGM7jxpvUFpZ30zFbwbZkEJmTDT/U5k5Nltv+4qhrBKRUjtqGTgzmMy0z2LCdQk2j87s0l96jNqEzoID1avGt+lhzdppof37+CMHxbLyGhq9Vc5YWubujUhWajmvAnB/Tk+/huh/tRWFmS+C9NQzUD9w554O5CcAqN56XOR9HOf6ZuM+iaD3CoH7WZDLvPtTiJ3d+Z/ZRBF2RNspr1b6/DR+CWLZel8tzQRE9ycanjgEo6MIDu5aEVVaTYHnlF4JFqx7bsKMpcakWCtHS68gCYhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bGMSze9sRCSvr1j69wk4S/YexoTH9PGujDaDMxxlAvc=;
 b=PZdAoGwIMQHpJZ2pjSCtsW1meA1oz/wpCdB1SapYU37L/i6dqZIy43j7vl2QHZwDm3QZNAnWCw6SGiNuf8wRI8iPKDXwt1LLUXSptwtUMnlFYQK4q4zV6Yk/ZT8ykdrAIJajutIY6BWjQOZPaqV24LPcDJWjgWVKPiWvjLInmN70gkaLALXBafodwQBvAvcEePPyJF1hNEcO2UF3yfekjSggfWGBWqnxoU3ygY86VkwevNgGb1LXdtFiPadj3Umbv8MGkhxRi8CCAAK4s40luIH4kv08THIKeEQKLZsfxWRZYz3/KHsvsUzzhWtpWL98nVzJ88WMiKSoXbIE5Qxsdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MN2PR11MB4582.namprd11.prod.outlook.com
 (2603:10b6:208:265::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Thu, 16 Oct
 2025 11:56:08 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9228.011; Thu, 16 Oct 2025
 11:56:08 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 7/9] drm/i915: Compute per-crtc min_cdclk earlier
Thread-Topic: [PATCH 7/9] drm/i915: Compute per-crtc min_cdclk earlier
Thread-Index: AQHcPIjkxfD1vPscCUWXzr8ZB373W7TErpCg
Date: Thu, 16 Oct 2025 11:56:08 +0000
Message-ID: <DS4PPF69154114F085AE8328224F9EC8963EFE9A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
 <20251013201236.30084-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20251013201236.30084-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MN2PR11MB4582:EE_
x-ms-office365-filtering-correlation-id: 7b06a957-dc7f-4d3f-6da3-08de0caafe87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZHRsa2Z0WWR4aW95eEtJNU55UUlzR3JVL2xaQkNGRGZQbFRYSU90UTcrTmdx?=
 =?utf-8?B?QmNVdERpczA1eEJWdHNCYnorOENUT1VERENFL1orR053bDRVYlM0QUlkc3lP?=
 =?utf-8?B?cHBidmw2YTVnaW93b3hUUUp0SDllTTlDY3hnYWYwUjU1RGk1MVRTUk1nQWxn?=
 =?utf-8?B?ZlJ5QkhWM1FQc1V6OTJrU09yZ2dPdWJqdmovVHZlQWtFSXNMRGdRNHlyM0kx?=
 =?utf-8?B?R2JoNEVZQTZSZ3RTdndBWlJWVmJkaEFBRW5RM0VmS3VndFlza0xQMXVHRnNs?=
 =?utf-8?B?MmFrdk8rY2QvNndNS25IZURtaE9ZWVRIVWhaQXlyY0wxQWg3bVdQZmQzZkFE?=
 =?utf-8?B?KzBMM09Uc2o2QkhLMS85M0tFQ0FWNFR4TCtBNGNaNC9qWjdKdWFIUFVVbjdy?=
 =?utf-8?B?VThwdVQ0d2RnZC9qY25lSjhodWNrODJXbHVodHY0SEIrbGxUVDFYdFNmTXBE?=
 =?utf-8?B?ZmpIaE5xSm4yZkFtWThHTll6ZjBUenl6dGdWMHYxbUVJUUI0VlduQjVzMWEv?=
 =?utf-8?B?MXloek9ZbG9XWEJiMUZQLy80UnpPSjZDVWN3YzN0VGJCODFCdld3V3RsWkh2?=
 =?utf-8?B?TklmZFk3YXVLM09pZkprU3c1eHhtaVVrc3pXRjkwM29rRGJ0YnZJQlAxeHUv?=
 =?utf-8?B?VlRxYUNsaWpkSjVBTy90dzJIUnZXK21Kck80ZWF2dDdrd045bm9uc25SV01n?=
 =?utf-8?B?dFRnWHJWcmtNc2FaRDIyaXVibFNHL2JPWkVKZUlHVlZURnZVKzJvY1Q3dGJU?=
 =?utf-8?B?cGdMTXRONDBIUVFnZ09rc0pod2w2TjdURTFXd1JRSTMzeStyYWFnL3puY2dr?=
 =?utf-8?B?MDh0OFd2SFNSaG9rRE92d1hLbWhnSDZzelY3VTAvMmVIQ2N4am83Q2F6K1JE?=
 =?utf-8?B?RmorbmJoVTNta1hzakd0OXR5UldtQTNrZVFjMDFOdnQ3bjJEWHVSdmVCU2c1?=
 =?utf-8?B?S2ZFUXNIc0c1REI2dWUrU0Z0SlkrOXEzNXYvK1FWb21kajVOSVkzTWIzZDhR?=
 =?utf-8?B?K045aE04UFpNNDdTVHRvWE8vVExXTW1RS3BqODZhV054Vm9GM09Vbjl2VVhh?=
 =?utf-8?B?QUt4MUljd01PSldIbElEbUJTbDlocThmWTVPMEVuaXdSbFhRYlBnMjZPYnFy?=
 =?utf-8?B?allra1ZEc25oR1p4d3ljODhZdU5XOTBEdFMvZU1NYUhHRmQ2N25mR3IzdnFH?=
 =?utf-8?B?b2pFb0xUblFCSGh4WGdMcHN2N3ZtY2xmdkgzMWRHMWZFM0F1elByMURFdzli?=
 =?utf-8?B?Z3FRb3RGcU1RQUxoQVVvaWVrNVo0dTlGYTBRSUJldlAyWkQzUjhKR3JhL1pD?=
 =?utf-8?B?M3plMHRHQUlTUVpqTWk5VWRsTlNIaTdLQ1RhUUFHdC9MVkRNajdFSVVlSWcr?=
 =?utf-8?B?ZTdSa2Q3WjJnTEVNdUd0WnhURVpGRlJpZEk1Ky8zeGFxakZSU1ZTdlpnWWVR?=
 =?utf-8?B?TndHR0VMc0dGT1huUERqMnlwRFJCc3RzZjFQalhVWXplZ2N2UUZrZUtUeUxI?=
 =?utf-8?B?RGxPNTQ5Vnh1UFhHcnVQM2hBRzRPMkdJbm4yNGRtaGN2bHJzUjYwcUJTQmk4?=
 =?utf-8?B?bEM4SjlIcFd5d3dqcE10RncvY0ZMeWxmMEd0MlU2akhUQmRGMmRFMXVmZnI0?=
 =?utf-8?B?MENENlFqQTVSS0RaMjZ6NmxCMDNLVjlJdUN1c2RkRnNxaElONThNbFVESlZW?=
 =?utf-8?B?Z1J1NW9EZ1lpbHVCMlRRN3VVb0hhakQ0RnIvK2huOGFZeGd1bExQMmxnMDB0?=
 =?utf-8?B?S1FTR1g2bmhuS25zWm43YzZQMHJjdnVqc3Z1Z0w5MndlU2R3U0hBODExa0pq?=
 =?utf-8?B?WnhXQXl2NUtRL3dpWEpsKzN3NHVSa1ZENkNvTk0rOGxOcGhXNWw2c3F6dmV2?=
 =?utf-8?B?VTB3WnNBZFdMeHdsWGhLdmpISWc3WjdkczVyWEN1b0xjSnR2QUpaQjgzTWdo?=
 =?utf-8?B?YSt4RElNSjBEaXBQUngvK2M1dmJFNERlR0pnRFg4cXJzTjZ6SHY0alkxNEFq?=
 =?utf-8?B?NnN2bmpMUUdVbU81MnZGRFJBR01iTlBjb0NMeUNPUTBZQVJVVUc0U05TWEJQ?=
 =?utf-8?Q?k7oG84?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y002VUdGQTdMS3ZldXV2d0V5R2Qra04rVlBMaFdLMVVmN2lMbGZ1TmN4eHJ5?=
 =?utf-8?B?MU5YUjVRS2NBUWJiTHBKa3l2Q0k4S280MTZ6dTdEZ3N6QXVpenErUEVuT1FG?=
 =?utf-8?B?WTY5bU1QVVprZ2FzWDY4bTFYQngwdnh4b05FS2tjTkZZdXNhTkVNSVVQc2ZC?=
 =?utf-8?B?eDVITWpkMXhjOE1LWlBvMmlOeXQwM1hib2lVU1c0a0tXZkNkVkxxSnVNcnVL?=
 =?utf-8?B?bkZPV21aUXk4NStxamRmTkdlYTAzRDgzZTdGdVJjZ1pPWlR6ZmtlT2xLWkZt?=
 =?utf-8?B?TklSdEZWcHR0cTU2UCs5UkFZZjlGekxodGtiZHYxNkprWGNnNW9TbFhwdnlz?=
 =?utf-8?B?eTVvdTJNYnRlcE5adms4bGcvUzBWYnVzby85NUlUM01uc3BOSHBtdDdwNTlS?=
 =?utf-8?B?MWhQM3BrR2pVYWtUQ2xySklRNGV0R2Z5ckhzVzVYbTJzVEM2SnRvZWRTMENo?=
 =?utf-8?B?aTFRSTI3VjdtMmVNdzlVWFZOK1RsSEJPNXp1VVFXbVBCUlo5QmJBUEJjaHNx?=
 =?utf-8?B?dXJaT1B6Z1lNOGg2THBDQXVQZkdOMHFhWUliSjdDOHFjRUpHOXBXQXRield6?=
 =?utf-8?B?STZjZzNSOUZNYTh3RW12dmVsZjNsTERMZ1YreUZOb1owVWVOamw2NzY0aUg1?=
 =?utf-8?B?NVdVRlQ1ZHY3K1VYYnVudlRjelBmQk5BMmJ3WE10ajlwU1gvbkc0dkJwNFVG?=
 =?utf-8?B?UWYyeVRVcHZLdTFsMEt4YytOSTJjdnNLWjNUYURjVUovbHY2clJaS1RMVnZX?=
 =?utf-8?B?b2VzTi9sVXhlMnBwWXZFOXc2Q24vYUQvQVhNQ002S1VjYklrUDBBZkZRUDhr?=
 =?utf-8?B?c2RoTkE5Z1BNSG92RmgvVlhKUWR6UzVxc3JyV25zeGgzb0hUK1NYL2tRSmVB?=
 =?utf-8?B?dHhPS1Y3QUN2UmlVV2t2VzUxVFl5QWFXc3pUZCtPYm94eU9YTExJR0gvb0Qz?=
 =?utf-8?B?dURQc3hPRGRjZm11YmtQR1VxTDVJaDNzZS9nWjBudmUySTNTQ24vckkrbHp4?=
 =?utf-8?B?TENaTENQSmxVSk4wT1RPTjZsUk1nTTBxN21tK2E1V0tCeVNHT0w2M3RuMWxE?=
 =?utf-8?B?UXlLTWFZUU04bEdwU3lpZStvc2ZDTVJhaGJvWnQ4UXljY0trekx6Q3puOFlh?=
 =?utf-8?B?MVhrV2JHbHpqZnR4QWdzdjZYeDJ1ck44Y2docW9JTjF0b1NzZGpINmxZRHlL?=
 =?utf-8?B?b0YvdUlmd3RyZkdsS09QNHZsRTdjS3VXbnBWQTdkd215SDQ4U3JyKzRuZ0FP?=
 =?utf-8?B?cUFjQ1VRQWtkcFZaWlpiT2VHZlhTbWtEQy82ZkZ0cGQ3N1NEdmhYbVhzQ3VT?=
 =?utf-8?B?b09CTEtSMHNneU54T2N4ZXdOR3QzcmplOUovRFlwTWhmc0FUTGNQRjJadys5?=
 =?utf-8?B?QUZxaWpZV3hqRHJsT3dGY3h6cVV6L3JFSiszNEE4anBKOWZHWStKcmdubGNn?=
 =?utf-8?B?SEZlNXhQaWtWUHBTMlVtRHhDbjU1TWpxV0NYYVZtQkMydjhEOGlvMzFwT1pG?=
 =?utf-8?B?U3NOeDJKQmtRZ2tOLzAzT0h3L1g2ay9QamZRbWtBNUhSZVJEaml6L0VvQklB?=
 =?utf-8?B?a1lRVy92c2pRV2dOZEpIeGwvNWNUWG9NTDRRVy9mb1VJN0g5MUZiZlZocGg0?=
 =?utf-8?B?MW9tK0N5ZlovN3ptWkhKM1JMU0E0UVoyTmN2VkkwNXdWZkl6cFJwaWVwc3B0?=
 =?utf-8?B?aWdwdEdicGRFY0VaZmZBTWd2aWptZjA4SVJDQmlvMzVZWjUwaGtrVUE3Z01X?=
 =?utf-8?B?SkM0b2hoVE9Eck9BTzJsaDFES3BVdzVXZHppWDhteXJMYkVnTVVSQUZ0U1hR?=
 =?utf-8?B?Vyt6ZWJuMjJDY1BodGhnUGN5YTNEYmFzR0R4NFlqMFBLZkt1STduM1FZc3Rn?=
 =?utf-8?B?V2xXdVRXWUlxMDJZb3VRR1JCK0l3ZFdLRUxHRWlGMlpNczBtZUNxcmxIRGhM?=
 =?utf-8?B?SytnVTQwZlVRWXFmdktRcER4R1JjSzM2RHgzYkVBK0hCMyt4QjNNRDFZWllM?=
 =?utf-8?B?ZEdUaVJWeDZONitCWFNCSTZtdXc2V0dieG9QRXM5Zm9Udkg5aERoZGJqaXFt?=
 =?utf-8?B?bUhDeURhRVFSUS9aVlhSelhtWC9tVU01ZXNGbmZ4RGlUeDB4ejVTVEw3TWZM?=
 =?utf-8?Q?8feeaEW/IlmT5d2gYsqp5sUVO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b06a957-dc7f-4d3f-6da3-08de0caafe87
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 11:56:08.7418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FhlJkU7cpmuAUjFYb47L3uFTOnJIsw/rQILyWl6zHAyDWqHZKtW+Bzp3gRx5cr4IEfWjtUXI6T815zLyWdtgpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4582
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgMTMgT2N0b2JlciAyMDI1IDIzLjEzDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDcvOV0gZHJtL2k5MTU6IENvbXB1dGUgcGVyLWNy
dGMgbWluX2NkY2xrIGVhcmxpZXINCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBDdXJyZW50bHkgd2UgY29tcHV0ZSB0aGUg
bWluX2NkY2xrIGZvciBlYWNoIHBpcGUgZHVyaW5nIGludGVsX2NkY2xrX2F0b21pY19jaGVjaygp
LiBCdXQgdGhhdCBpcyB0b28gbGF0ZSBmb3IgdGhlIHBpcGUgcHJlZmlsbCB2cy4NCj4gdmJsYW5r
IGxlbmd0aCBjaGVja3MgKGRvbmUgZHVyaW5nIGludGVsX2NvbXB1dGVfZ2xvYmFsX3dhdGVybWFy
a3MpLg0KPiANCj4gV2UgY2FuJ3QganVzdCByZW9yZGVyIHRoZXNlIHRoaW5ncyBkdWUgdG8gb3Ro
ZXIgZGVwZW5kZW5jaWVzLCBzbyBpbnN0ZWFkIHB1bGwgb25seSB0aGUgcGVyLWNydGMgbWluaW11
bSBjZGNsayBjYWxjdWxhdGlvbiBhaGVhZC4NCj4gV2Ugc2hvdWxkIGhhdmUgZW5vdWdoIGluZm9y
bWF0aW9uIGZvciB0aGF0IGFzIHNvb24gYXMgd2UndmUgY29tcHV0ZWQgdGhlIG1pbiBjZGNsayBm
b3IgdGhlIHBsYW5lcy4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhv
bGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jICAgICAgICAgfCA4ICsrKystLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmggICAgICAgICB8IDIgKysNCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICAgICAgIHwgMyArKysNCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgMiAr
KyAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMgfCA1
ICsrKysrDQo+ICA1IGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+
IGluZGV4IGVkNjRmYWM3ODk3ZC4uYWY5MThlMGU3MmVmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0yODI5LDcgKzI4MjksNyBAQCBz
dGF0aWMgaW50IGludGVsX3BsYW5lc19taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJcmV0dXJuIG1pbl9jZGNsazsNCj4gIH0NCj4gDQo+IC1z
dGF0aWMgaW50IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICtpbnQgaW50ZWxfY3J0Y19taW5fY2RjbGsoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICB7DQo+ICAJaW50IG1p
bl9jZGNsazsNCj4gDQo+IEBAIC0zMzAyLDggKzMzMDIsOCBAQCBzdGF0aWMgaW50IGludGVsX2Ny
dGNzX2NhbGNfbWluX2NkY2xrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAg
CWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0
Y19zdGF0ZSwNCj4gIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ICAJCXJldCA9IGlu
dGVsX2NkY2xrX3VwZGF0ZV9jcnRjX21pbl9jZGNsayhzdGF0ZSwgY3J0YywNCj4gLQkJCQkJCQlp
bnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKG9sZF9jcnRjX3N0YXRlKSwNCj4gLQkJCQkJCQlp
bnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKG5ld19jcnRjX3N0YXRlKSwNCj4gKwkJCQkJCQlv
bGRfY3J0Y19zdGF0ZS0+bWluX2NkY2xrLA0KPiArCQkJCQkJCW5ld19jcnRjX3N0YXRlLT5taW5f
Y2RjbGssDQo+ICAJCQkJCQkJbmVlZF9jZGNsa19jYWxjKTsNCj4gIAkJaWYgKHJldCkNCj4gIAkJ
CXJldHVybiByZXQ7DQo+IEBAIC0zNTIzLDcgKzM1MjMsNyBAQCB2b2lkIGludGVsX2NkY2xrX3Vw
ZGF0ZV9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gIAkJaWYgKGNy
dGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gIAkJCWNkY2xrX3N0YXRlLT5hY3RpdmVfcGlwZXMgfD0g
QklUKHBpcGUpOw0KPiANCj4gLQkJY2RjbGtfc3RhdGUtPm1pbl9jZGNsa1twaXBlXSA9IGludGVs
X2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY3J0Y19zdGF0ZSk7DQo+ICsJCWNkY2xrX3N0YXRlLT5t
aW5fY2RjbGtbcGlwZV0gPSBjcnRjX3N0YXRlLT5taW5fY2RjbGs7DQo+ICAJCWNkY2xrX3N0YXRl
LT5taW5fdm9sdGFnZV9sZXZlbFtwaXBlXSA9IGNydGNfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVs
Ow0KPiAgCX0NCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmgNCj4gaW5kZXggZDlkN2E4YjNhNDhhLi5iYWQyZGE4ZDQ1ZDIgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgNCj4gQEAgLTY5LDQgKzY5LDYgQEAg
Ym9vbCBpbnRlbF9jZGNsa19wbWRlbWFuZF9uZWVkc191cGRhdGUoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpOyAgdm9pZA0KPiBpbnRlbF9jZGNsa19mb3JjZV9taW5fY2RjbGsoc3Ry
dWN0IGludGVsX2NkY2xrX3N0YXRlICpjZGNsa19zdGF0ZSwgaW50IGZvcmNlX21pbl9jZGNsayk7
ICB2b2lkIGludGVsX2NkY2xrX3JlYWRfaHcoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkpOw0KPiANCj4gK2ludCBpbnRlbF9jcnRjX21pbl9jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICsNCj4gICNlbmRpZiAvKiBfX0lOVEVMX0NEQ0xL
X0hfXyAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBpbmRleCBkNWIyNjEyZDRlYzIuLjUzOTAxNzAxODg4NCAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTY0NDMsNiArNjQ0
Myw5IEBAIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCj4g
IAlpZiAocmV0KQ0KPiAgCQlnb3RvIGZhaWw7DQo+IA0KPiArCWZvcl9lYWNoX25ld19pbnRlbF9j
cnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBuZXdfY3J0Y19zdGF0ZSwgaSkNCj4gKwkJbmV3X2Ny
dGNfc3RhdGUtPm1pbl9jZGNsayA9IGludGVsX2NydGNfbWluX2NkY2xrKG5ld19jcnRjX3N0YXRl
KTsNCj4gKw0KPiAgCXJldCA9IGludGVsX2NvbXB1dGVfZ2xvYmFsX3dhdGVybWFya3Moc3RhdGUp
Ow0KPiAgCWlmIChyZXQpDQo+ICAJCWdvdG8gZmFpbDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggZjc3ZDEyMDcz
M2ZkLi4yMDNkZDM4YTllYzQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xMTkyLDYgKzExOTIsOCBAQCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7DQo+IA0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3dtX3N0
YXRlIHdtOw0KPiANCj4gKwlpbnQgbWluX2NkY2xrOw0KPiArDQo+ICAJaW50IHBsYW5lX21pbl9j
ZGNsa1tJOTE1X01BWF9QTEFORVNdOw0KPiANCj4gIAkvKiBmb3IgcGFja2VkL3BsYW5hciBDYkNy
ICovDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21v
ZGVzZXRfc2V0dXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNl
dF9zZXR1cC5jDQo+IGluZGV4IGQ1YzQzMmI2MTNjZS4uMGRjYjA1OTc4NzlhIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAu
Yw0KPiBAQCAtODY1LDYgKzg2NSwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRv
dXRfaHdfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ICAJCQkJICAgIGNy
dGNfc3RhdGUtPnBsYW5lX21pbl9jZGNsa1twbGFuZS0+aWRdKTsNCj4gIAkJfQ0KPiANCj4gKwkJ
Y3J0Y19zdGF0ZS0+bWluX2NkY2xrID0gaW50ZWxfY3J0Y19taW5fY2RjbGsoY3J0Y19zdGF0ZSk7
DQo+ICsNCj4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiW0NSVEM6JWQ6JXNdIG1pbl9j
ZGNsayAlZCBrSHpcbiIsDQo+ICsJCQkgICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNl
Lm5hbWUsIGNydGNfc3RhdGUtPm1pbl9jZGNsayk7DQo+ICsNCj4gIAkJaW50ZWxfcG1kZW1hbmRf
dXBkYXRlX3BvcnRfY2xvY2soZGlzcGxheSwgcG1kZW1hbmRfc3RhdGUsIHBpcGUsDQo+ICAJCQkJ
CQkgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayk7DQo+ICAJfQ0KPiAtLQ0KPiAyLjQ5LjENCg0K
