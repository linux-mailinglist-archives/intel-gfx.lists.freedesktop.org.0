Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGIXBxkjHWrKVwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 08:13:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5068561A010
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 08:13:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0990D112E03;
	Mon,  1 Jun 2026 06:13:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HsUWKVCT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0554112E03
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 06:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780294420; x=1811830420;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GaXKfsyW7N22IiPRWbQFfxcN5DJg0fNOhghambtewg4=;
 b=HsUWKVCTZPbrIaJ4Mr0pYvWnJiSJwnKf6k4V6X2op65wl/LRZYq4YM7y
 RJXeZ0XoyubRYgBsWvgsEeq+9ckR2DlP8PLdFyM16JXY5dSZYJdvu278S
 qEuQOZmIloVgnJQd+yQ4z9YPzzIMdf0GN+hzpE1SvvsaPsQ+BPmGtBpN7
 LfslvITOx8EGygEoTMcWItamiKT3C75+Ttvvwno5zBx045374We2JFl0m
 xmknqgmjEXno7jaywl2C9L2+aAQRNeBNxb6JMzj1tAQeVv/KNeZf3JzyQ
 KKkjAXXKEqpisYh2q1dubdFtpzhijoKNg7Lp6RBmKyUMTZjQ1YSvYlDVR Q==;
X-CSE-ConnectionGUID: oWYYaC/OTFyPgXG1QTYmYg==
X-CSE-MsgGUID: +p0PDr+qSzaFR0G96D1JHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="81231149"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="81231149"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 23:13:39 -0700
X-CSE-ConnectionGUID: 865tZ5XxTDCQwPiMLSdtAQ==
X-CSE-MsgGUID: /WlKm/4XQXiRo9I/fXEl0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="239301705"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 23:13:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 23:13:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 23:13:38 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 23:13:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fUzauwMyJesz00jsc6O1azqfhTwUL0i6g0OxmF6AaRHbRtTtHkURJ98Eb2JmFp4/lpvQnZD0kGjRY+Toa68en14YOCyxcOa6uC39JND5Hd++zavDWSKN4uvi/oR2Q+ruWOKi0ZgYk+T82tEqk7E6MnyPBAm+aSK+i5zvLpJHWf/wHQiH2eML5fjYg54FVD83V3sHSLxmcUdUalbxhpyzoPmyGiD7ilsB/lyqbDwErmibqOGuNRefuBdeXRonShXsU6bFLOane/LAUHi8YxonQVEh68oQmFTJRzJHSwgxpKGyLngW9cP217UxviSJp/zaI2DojslPOMEOyCGO8HXApA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M8COIuq8/jv+z3AVVd0ctCtH7OxZYoudkFw3F0cNWxw=;
 b=knkoBvGOuHSW/kLmgpFoFbIqCgDzOTalxu3hrKAl5yhM7EELYnqgSzbqoF6uZqrZHa52L/3Zhxi9tIoHrNtMJdz5+vYB5Vf523ONTMIfzNvE7BFUjK/l0qJLBPu6v0ez+q/mUJQbTxS82dlEgCO6ogXFMlkYgtQ+8gxIKvYelLBazI1YD8u87gHILene+n3RgRI7ritBjaEHftmWmvhTiWff6gptUuR5NL1YO/gJxv5rgxEKt5vMFpbSH2E7RcGGrS9QP554p1PBjz17FcE2tdU1/w+2alEp97B/m6+9yA8Vyo3cTkkvfHMKzDuJm93udL+mE0VqYdupJxsSUTxOqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by SA1PR11MB9613.namprd11.prod.outlook.com (2603:10b6:806:4c4::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 06:13:32 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 06:13:32 +0000
Date: Mon, 1 Jun 2026 06:13:23 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [RFC 1/2] drm/i915/shmem: Prevent overflows on small segments
Message-ID: <7azyg6erfmgwngr2tgodj3leg2qjyohi42n6u2wauejx3r4eio@jxu7s5kikyzj>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260527140804.2866189-1-krzysztof.karas@intel.com>
 <20260527140804.2866189-2-krzysztof.karas@intel.com>
 <DIUD102LPZ8R.166MO2E63L1MG@intel.com>
 <f269fded6370d32d432c890a4ad381c72435fbae.camel@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <f269fded6370d32d432c890a4ad381c72435fbae.camel@linux.intel.com>
X-ClientProxiedBy: DU6P191CA0001.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::11) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|SA1PR11MB9613:EE_
X-MS-Office365-Filtering-Correlation-Id: 7283077c-c734-4c6e-6153-08debfa4e807
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099006|4143699003|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: XZmvU/LpDpTzhAWQ8iKBj6i79tWm9jn8fRRipkxQOXUCzIAfEJ35YYd8/Ry/tp7ze3rXNapNZn9Od3qbvf4on34i0RwKj8NgRslRJz6cgvRHve190TPYgDxi9hhpoqwvMFI/YwCoRy7HCyUJHNhpBpfjL2/jNJM82v8BxbiQSPs6VgG41WvPF5n6zRatHZTBpXC95FdHhZyD3AF2QYiyiRjBaDIRvR16X6a+gXOa8oUJtFjBepBdz51wapCmQuErf+djJ8XyqVp7MWWU5zA6WrKP9NhxwkGtJ2APl1t2uAjx36Hcwrq02y2AFBVVuWM7ugUPzIWsyb2rLVCyglJMgHMNc+2Kvnukfkljmt9/JVT0pWLlbTcUk+odxxZQE48/Q7NYQS6VDR859ff4PpAVuNywBXP1UaIWtiSxGWyuPT6SvzvX9LeXw1JgTlFSoRL1nCTxXh3lJvq1BqI4AIw8EQjTjIh4qnLquwMOqL9X+NUlUPph+gzHr52wDJ+fjpa9KRIcqv77RCGO6h4v6PW6g0LmytX95RuicylRNlU4o+LTZR7aNUbUy9U9bh26tKcdap7JaQPQ+AbFj6BBp/6cPxzYYViIad7/pAbxkac/JDPApxYA8iOIneABJelBCUaWI+K2l8lQ6LvSvqfd9Ujr+1tAJrWrF0HTNYyDpNGANe4jNSjOEA7ShzXI48YCa5kj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3JlU0g5WG5zVUhBUTAxZCs4U1JpTWJ3VHZNS2l1NkJuM3ZPVE1PWW9vYW9a?=
 =?utf-8?B?SkhpY1VNNDZjNGdrTTVWTHhlbS85QWIweW56a2QyNGJFZkQxdHhLR3N3dnNs?=
 =?utf-8?B?VjRoU05CWUdBZDdoMmoxbnlaN001VGpBSzRmTjAxeE9GdWNzbUJZZ2FPMUlo?=
 =?utf-8?B?R0FrMExxUTlLQ3NCcnhoZHVCMHljVzB4V2ZwVjlmcWNZVW5YQkdKaThzSmdj?=
 =?utf-8?B?d3lDV05UTC9ucVdLNUsxVUdNOWdiRllJbXlleDZvcFA3MnZoSTRuemxkMC9v?=
 =?utf-8?B?MlIwKy9IUGdwbGJsVk52aFl2dmpBbkVWM0hyZU40ZksrRE1oZHlQZy8xL2h3?=
 =?utf-8?B?UkxkZjVCRm0yTEUyS2JYT095dmUvSWJobnBMak5BdWQ4T213K0hIRVp4cnpw?=
 =?utf-8?B?enBueElSYkhOdk1XS2xib0xSbE5TalF2NURYVmpUNDd5NkxucmdxYzBUeHhi?=
 =?utf-8?B?S3I5a2d2SFh1QklndHgzVVF1azI5Uy80TWtITEQzSmJ5Q1NIeXNJUmgxcWhX?=
 =?utf-8?B?eE1IL0lJQVdPbzJpUDlOV0FkeUhpTytOaitobjFneWhUbmV4OEJ4Z1UvVGpy?=
 =?utf-8?B?Z1R3cjBUcmF2SFBBOUZSaElEUWFDejlYV01Pei9tZGZDRU13K0EvTDNGRWVw?=
 =?utf-8?B?UGp0VzJiN0l3d1pFdkhLTkRQSUN4TTVrZHJhcnpsamRPSEtFcXRtdGVkejY1?=
 =?utf-8?B?dk5Db0RSTWhUYTJ0ZCtIUzQxeVFHQWk5Uy9sK3JOdjZHSmN0RHRvT3RFMEVJ?=
 =?utf-8?B?SFNyejM0T05NRGZVd0t6OHpOak5oYk1xODBOVEx6ejE0SktyajJ4OTBqM1dQ?=
 =?utf-8?B?MWI0eGVjMkU4alZiQ0VWbUtkOWtMOU4rU2E2V3JBZ3JTU2tUeEFtUmlVR0l5?=
 =?utf-8?B?MXNWUjV2NXZndnorU21zUm5YSnRYSWQyTUs3dGNPbkpJbDRod21yU3M3VEhC?=
 =?utf-8?B?QjYrM0NoRlZUWEVTSDR4SjNoOVNvUzBKMXJkSVRadlI0Mm1tR2ZTN1E1clJy?=
 =?utf-8?B?dENucFFkNzFiOEp3dFdkNTl1ZEdsdEcrUGhPUk53TmI2N21BcFpjVXRXWUh0?=
 =?utf-8?B?ZEdlYXJpUnU4RnJxbEhYenJUV0oyZUtRK1JWS0JYSnZSbkNHZ1hwSW9Pa1Qx?=
 =?utf-8?B?YXUzSElLemVwWEN2dC91SnU0TWZTSW9Ld29lbFZHNnJIVUZxd0Z6aTdkaktp?=
 =?utf-8?B?UlR0SjJxNXc5ZnRJaUdCNjhxVE1SVk9Lcm1uVk5zU2dsNDZsZW9hV21XbWxz?=
 =?utf-8?B?R202U1ZIVG9FQzZvZzl3Y0o2R1haU0N5K0xqbzhrT2V4UkNPSXgyZWM5VTdK?=
 =?utf-8?B?VSsyYTU0TXhMaUhVamxiZ0Y3d1dtQyt4L0JGQ0lMc2xsSlUxdWJ1bmRkSk1M?=
 =?utf-8?B?RVFvcncrdHI4NWJ5NzhnM3VZNjJWVGE2VFJXVExRdk9YWlhNQ2lrSjlxLytl?=
 =?utf-8?B?N1V0ejVrQkxWOGVMWERManF5b1IzcUlDV1Ezd3VtLzJXMlc3MEtReE5hYTBG?=
 =?utf-8?B?R2tTWEYwRzFaNFhLOEE3SmdyTTA3ZkIyRzdGT0E1TGluc1IvMStOVFo1eEFJ?=
 =?utf-8?B?R3pwU1Z2RXFGKzVVY0Zhb05ma2FXNXM2QVlBMDc0eVN1aUhzSXZ4ZlJycGxH?=
 =?utf-8?B?SXNuOHN3T3N0dlZRcUgvWHZyRGJsMlNxM3ljeUVWMUoxeHlRWm16Q09Qdnh4?=
 =?utf-8?B?MGhuam5sWUpZSE8vTGFUcWo2bXpBU25nTHJvQ21xOHIxZDlvcEVJR3pHVUJ3?=
 =?utf-8?B?QzByVDVyb3ZtbmRBRDdqMHpkeEFYY0tIT29LN2NvOStOalpiTmlhTFBhTTJk?=
 =?utf-8?B?aVgzaGs5cVZKT25HM3Q0R0NzWTJFaFdoeFpsRTB6YVF4UEtRWDM4eEwyaDlV?=
 =?utf-8?B?ZHFSdjdHN29nOXFhbjZubTVTTVN3d1BmU09BbHZPbkZmakRUaTQwNFVVajFQ?=
 =?utf-8?B?NUZmSmFJYUtnQzAvLyt5ZnZoVFZuQzZ3SjZxRmhyMTRwZG5FbkxJQU5TTVF1?=
 =?utf-8?B?TGJtRUR5TlBJR2FPY1l1VWJTYmhzZWw4WEZKNkl0c1ZqSUIyNGRzckJjbDFo?=
 =?utf-8?B?M043aTV1NktXYjZOYWE1YkdKZjJZdkM0SEM3U3haQXc3aGRrWTdSZHU5bFBD?=
 =?utf-8?B?NTBHdHB3eUZGMExnY1hEeGJzMVFvRlhDd1NQekdZdEhDNXBBTG93UEQyODlT?=
 =?utf-8?B?M29PZlYyYTB4MWdCR01ha3k5dTV6Mk5zc0VZeGdxTEdxZ21aN1BVMXpXOFBE?=
 =?utf-8?B?Z2cxbHhaUml0NXk4MnUvM3ZQYUJZanRLR2taTUlSTStOek1VZmdCWGlHYW8x?=
 =?utf-8?B?MFJ5Q1JxSHVZN3M2NXd6WkEwU1VJZXRHeHFIR29RRlFFdE8wdUV5TXFQRGdO?=
 =?utf-8?Q?A81fT/ca1e7QtvJ0=3D?=
X-Exchange-RoutingPolicyChecked: SIcmZO7gFpEgDGoSs16pkwIKOzP+xcdj2jhdayU93LyoDPqCOYeEXD9jJwg+OpwR6j2evzmNXCsfY/PubbrHCRX2HPOIa6TX0lEX5AyxP2RQHaQG9jhrAnfkuebO8VnlUl7noIRvz58V1RRzeApHeIbibHLF5LjApc/mQdgrhV6J8YNrmDk4peftP9nWU8rOLJizW4PaOeHeKPowYS3ZBtcI1fF9pAfiTPdhmAZMywDI+iTqJfo9w2/PCbzbXcb0XWTHX8RV4EfpuXT93vDY3KMr8GrFw3BKAZanvVW4NGsaY0FE3Cz6T51wIqNkOmWr34vWasc5GEdYJ6G0f6an+A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7283077c-c734-4c6e-6153-08debfa4e807
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 06:13:32.2330 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q8SA+rTHoiAtRJhEBRhhQpyq09COGoyGj0/2rmQqLhbiMDMsIjKFeZslticOUuMKVA0+dPnsaIjbeTLLlTZHu+eoGfa5AMjU1GLQu8bZ/PE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9613
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:janusz.krzysztofik@linux.intel.com,m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5068561A010
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Janusz,

> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > > @@ -156,7 +156,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
> > >  		nr_pages = min_array(((unsigned long[]) {
> > >  					folio_nr_pages(folio),
> > >  					page_count - i,
> > > -					max_segment / PAGE_SIZE,
> > > +					i915_sg_segment_size(i915->drm.dev) / PAGE_SIZE,
> > I don't think we can use i915_sg_segment_size() here, please correct me
> > if I'm wrong.
> 

[part of the comment cut here]

> That said, I think we need to revisit the issue identified by Krzysztof and
> try to find its root cause again.  Maybe we should also revisit either the
> idea or implementation of allocating one page per scatterlist in case when
> allocating larger chunks failed, because that seems to be strictly related
> to what Krzysztof describes as problematic in his commit description ("...
> sg_set_folio() was called multiple times with nr_pages smaller than folio
> size, using many scatterlists, all pointing to the beginning pages of the
> folio and never fully covering its range of pages ...").
I wanted to avoid re-implementing the hard to read parts of the
code my changes touch in this series, but since it turns out to
be bigger deal than I thought, I may do that as well.

-- 
Best Regards,
Krzysztof
