Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F70AAC3AF
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 14:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4511E89BAE;
	Tue,  6 May 2025 12:18:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hXRyFmT5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB7489BAE
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 May 2025 12:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746533894; x=1778069894;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nnYc1Gw8niAi9hE9Fu/DU+40+xoWfKVyNppjL/CPUeU=;
 b=hXRyFmT5/7spRvtW3JEmWX/S/ametsRGo/IKncrDTAHPNBPruRwhKYAr
 5Ja/fdN4M/J4SNFud149fjABwVQG4al7PGwL/vZS8NSAYbpfr8PeoLrWn
 EGNDbwUkBPSM/xCkNaRPNWuUm9abA02N8Mzeo9tt4geEIOr/vaIqnshmP
 qGlC/WFGQoUjU/a+O5EdLEXVlW+CefXt4oodBA7EuJh8dok4KkGnynobn
 BTRYz+Q05LNqsDM53SI7ZHfJRiQTZu8CuSmv3bBe9X25p8FKtgGC+K1bM
 O96bqfov0VZBRpL4BYBIBmrnsUhk2q29dpm9q/1bctkOsYLCelf+zLJn9 A==;
X-CSE-ConnectionGUID: u2jI9V6uQNqYN5V0LpkWCg==
X-CSE-MsgGUID: Nsf2mvxJTqKFgBxbH0xWPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48069205"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48069205"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 05:18:14 -0700
X-CSE-ConnectionGUID: 2BQQo2y0QPGw7HBnzeVeEw==
X-CSE-MsgGUID: p46vuDpKToKuMy2Vwkb4jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="140723809"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 05:18:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 05:18:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 05:18:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 05:18:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NE90mqx+nutUhgiPweNTxn2baBtXGD8jBBMJfC97UZcx1UKCcpueAjBQmAq8LwtSaMnwSaIzccKNaZgCiD+NxMm1K4xvnQ2H9p2k+srMT2h5gfqUFfBKQ/30Ihi2SfPBZVArR9UFeNVcSJvG4Oxj8Y/rBLEoxy/v84MJclfL89qkE6Cqp14KfVsVj+2MxGzrmqkSqcWPswiPFtebEO8YomJKf0ntPTfjILOL2ijrB+f6aYRmcPysUkXaRR3jVQuEnR2Xxc7fcscT+OHzuOqbwvUUHomFqm4BZ5orIm/zIpC1HhfAzSz/T6ZfMcGBssVT8/gqwlGz8eyLg9ULpmB+Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ke7fm8cAxLcS8+kXsRWhzT4uRpkVhvjTWklRu3nx6Vg=;
 b=cVGLDuD6SpfSI/Goba0DQMfiNIv+d5jJKkKEnppmMDy11mNT5eeM0qlQLvViHex896ZuTLwjUmi7pNW5EibmdnPLHqx38a0ptpySOL8mLl99LWh/7ovuvFxuJnCOW75GbhaXXoEHVn726p8TXAdytclwklWTDAU6QKVLm6AJMiUVhen5Mpoo6l6w1raY8aDhgkjA4svx4emJcDnauUEcDGAqWEJsaNRNF0n084Mx7NGRo3YDvWobkqq4zehnZcnzpHeQIaQ70oo77WOZBPbNx6CMztJCjjd0J6G0R6r7r/oQTXnOtGBzWvZUwet6a2DJ7JyxcOEMdR6goLV86BsZQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Tue, 6 May
 2025 12:17:39 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%5]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 12:17:39 +0000
Date: Tue, 6 May 2025 14:17:30 +0200
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH v2] drm/i915/selftest: allow larger memory allocation
Message-ID: <wz6rrch7xkwri7taul3b4xivmubodnb732fvjv5syrnaeqa2o7@4ayoxzv2s67z>
References: <2vie3dumx3ajb7lwhiotxs4wj6zcr2fq6on3ebd2vsm2qb3k6l@s5uny4fry4gr>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <2vie3dumx3ajb7lwhiotxs4wj6zcr2fq6on3ebd2vsm2qb3k6l@s5uny4fry4gr>
X-ClientProxiedBy: DU2PR04CA0197.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::22) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|SJ0PR11MB4845:EE_
X-MS-Office365-Filtering-Correlation-Id: 134413c4-9e22-4c95-bcb7-08dd8c97fe5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dGlXY0d1RXdFUHhYa2NSbFdVblFKNFZiTXh5bGMxd1ZOV0R5QXBxREF2OVly?=
 =?utf-8?B?SW1xMTFuTkVhVHEycG9PUG9EWGhNS21iREVWcXRUQUNUV0Z3MExoQ0xwaFRR?=
 =?utf-8?B?UTNLOTAydjkrdVRsczduemQxRVdLT2JqNWhCeThkeDVzOXZLVDY4OTJndTZP?=
 =?utf-8?B?bDJSaVM3TkFlRWY2L25Tc1RuK0FkWXVHZEQ5ak5FT1lrdk8rMUhGanpvdldI?=
 =?utf-8?B?NlZDRHIxcXJnR2dJcWFHL2ZCSXROdS90R2FqdnRhNUptd1RoV2xEZC81a3V3?=
 =?utf-8?B?d1ZVeHptcnZYekl1RllCb1ZBQUJQd09PQ21JbXYxNWhOck5rWUR4dVg0cU5z?=
 =?utf-8?B?WG9YSEN3Um9EVHdJZUM5dHNSZ3JHajJwcml1cnZrUXppTldNVnA4YjhpalY5?=
 =?utf-8?B?bVlsU2lCRlo4Q3R6Q0FEazUyc3JMWjRQeStoQUp1cUYzclpVODkreGpnVlFa?=
 =?utf-8?B?c095RFh2ZTJkV3p0aHErN3VKcGZSbmJXZ29tTGt5c3JvUUZEVGdoSGtNc3dX?=
 =?utf-8?B?UVB0ZEUrV29sSWJLdnZlWjR5aU1PSlEzV2NNQkdFL3YyeUkzMTEyZjBkV0Q0?=
 =?utf-8?B?QzFwQW1oUGEvM3kvRkt3SlE3VjVPem9PZGxRQTNiZU5oZ0RVZzBqQVVKc3Nk?=
 =?utf-8?B?VjVkODFCaVRJZVJhM1poSHp4eFNRcUhzbHZpR0lGTjlUWnBOMUFOUTBUblIz?=
 =?utf-8?B?ZVgrakl5b29TbDV5dTFUb0Uzd0xFNUtQWmoyNzlBN04xdE0vZGVsT1ltTlAw?=
 =?utf-8?B?NlRiTTNhVytjdEdzbkVVWTBVN0JvajNTL1lyd21NbjZaU21kM1VqcU5ZdjlO?=
 =?utf-8?B?NEdKMDd1OWt1YkhnZEMxNGJyL1N0cmdtT2dqcUJTV3REZVVuY1k2amxrdjM0?=
 =?utf-8?B?MWVLb1hRNHMydytFUUNRT0FyZ3ZJU3lYTVlYblRLc00xY2RpMFF2VW9mTWtR?=
 =?utf-8?B?TXpTUkk5Tm5xZkxaTitSSzM1ZWplaHNCaXVoQVdrN1NHWW9Jbm00NllLdmE4?=
 =?utf-8?B?VTZBYlFuSFZLbmY2NjA3RDZEM2RNN0xSMGptMjdZbU90a2dpYjNMcXF6dXd1?=
 =?utf-8?B?REhQc2hpelZjMXBxRzd0a1pEODE1WVZkVHRZeVZCOE94YUVKR2Y1SXZ6cEpH?=
 =?utf-8?B?dFB2VU80a0Q4eVFrSzlsZ1ZZdjUxdjZXN1lWRmJwNUJVTmpQbGJxYUZjdURl?=
 =?utf-8?B?bDZaTndTNzdkOGgxVnUrTW95OEpvY3BSM2luazFOZ1E0dEc0NEgyUC9tWVQv?=
 =?utf-8?B?aWRGczBTUU1FWGdBM1lmR3U2UXR1L2hIOW5wb1duSGpvTEJmMTZtdkxKeFls?=
 =?utf-8?B?a1E0bmZKNnd2Y2pvQjFDRldSazJCSzYrOHdILzBERCtFQTl5UzFxRVJKNVMy?=
 =?utf-8?B?TFBqN0RhVkFteWc0Nlg1WG5WWExzd3lXRkdRTWZoSTduZ1o4WHpxcnZwSTdV?=
 =?utf-8?B?UWJmVWI1SUF4UkpSYXp6YllPMEdhY1Zldld1VEZkTzRaaVliU1VVb1BuRU5o?=
 =?utf-8?B?d0lBSWJaNGRsMWxra1hLb2JQZXgxVGcwUTlNa3YvWFlGdnplWDFZZW1QYlRz?=
 =?utf-8?B?cGJoakpRYlU0VG4vVjcwdXlXY3c5VWRNYkNZL0JubXRLVU5FUlo5RENOWW1G?=
 =?utf-8?B?WG9xcEpoTE5KV0tqa3lCb1A1ZTN3WGdWRVZWT1RrTUdubld4SFlGVFU5cXNN?=
 =?utf-8?B?NTZmazFxOEJPQ1d3Y0hmRnpJck9BdFNBS200M3pwUG1hZUxDUm0zNWcxaWZM?=
 =?utf-8?B?TVRUYW9aeWlMQU4wTy8weVFOb0NnSERpNEtqUS8zeDBMZ1FMaytLRjdqWGx0?=
 =?utf-8?B?RzloYm9mamxPN1h2RFlENEJhU0lqejhFY2dxRzBlL2xJMXBFTGdlZXVtQ0Jx?=
 =?utf-8?B?S1BzRHNRUHZuS0JYOWtEZm5HS1pqUlBjdDVFTDhwcmh6U2hXNXd6enkvM0xU?=
 =?utf-8?Q?oUldOXQuzZA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzEwdXpJbmlwYUdyZ21lR1lBazFEQzYrelVjM3ZJMTBRcC8zQ2J0WlBxWWl3?=
 =?utf-8?B?VXdqRElOelFYdndHby84UDlodkFndHN0ZHMxNU9vY0ZrLzZZZ0pucUdqS2o5?=
 =?utf-8?B?T0FzdnpmazVhWFd6aGcwb09HUk15dUdteWJFZnU0UHowQk9yVXMyQk9GY0tm?=
 =?utf-8?B?UVdxek1zQytzL0ZEMGFUcDhsbjBXMmlrY1hKWmRYU2J2ODFDOWJWSkk0YVRY?=
 =?utf-8?B?aU41T0hqRTBDZzNIZEUvenkveklhcWF5QU1TNjV0Q1Q1Q2loeWpVWWZEQ2g5?=
 =?utf-8?B?MVV5RC9IL1M0MmNheGxDZ29mckFQTW1PM2NhcEtLQ1NnUW5yWXpDK2J2THli?=
 =?utf-8?B?R3FlTlI3YkN2Q1ppcmJuWmRkZHhiRmlMNFF5QmZrVlVGVlBleFBNdHJndE9r?=
 =?utf-8?B?azNKNk1QZndnMXQrdHIzNkZzckNYdTRpVWVYYWpmaVpmM3JMRWtGamdlUzhR?=
 =?utf-8?B?Y3FDbmROcTJrVE9rdmlvZTRhSStUL0JuT3RaWktpZlJsL1FvUmtEeUhuWXNR?=
 =?utf-8?B?UWVYN1VMVnE4bXBrRXhYSnY3bFBJRTJpSzFOZkViT3NFRWpOOFlKOHZ4MXhr?=
 =?utf-8?B?OEI4RFl3SUgxVTFUZyszVlArYmhoam8vUkFyb0lxVnRtYmxhRnNpME1PcEhZ?=
 =?utf-8?B?akgvZ3dtUFI0ZSsyTmlHYVgwVk5kNy8yaDBuei92dTNIbVEvcTltYjJDNzhy?=
 =?utf-8?B?NkFuOXQybS9mb3Z5Q3duWDh0cnprbURHeHJ5S3k1SFlSSy9KR1B6elRSL29T?=
 =?utf-8?B?QUtRNVBHVHdUaFArZDc1ZzBIYXdXR1p6QmlzemZGalZTRzdxSXNWWjVvRHlz?=
 =?utf-8?B?eFd3Q2pkcFBYUkVFSEZNS1hhWTRKc2ZuMUFrdlVOQ2o2QjlNSG9ReXh0T0p4?=
 =?utf-8?B?UW94T2lURlB2VytjYjNwdHRpSFJyaTVSU0RxcURFUGJ0Uy9RcnBmRnhHUGFJ?=
 =?utf-8?B?SjZxendxYkpEN2lnRWlFSVpXQ3ZLSTZOanJ6NDdMUHdvdHJvaldleVI0QVBX?=
 =?utf-8?B?dG5iUGU1UEp1dUtPNWtHaEdIRWkvTmpGNDRvcG1obFovR1ppdG80M09uaHNO?=
 =?utf-8?B?TStUMTRzVGR5bkJpczh0OHVwa0szaC96WURBRHhkMnk3ZHNJNmY5NUNMdHFZ?=
 =?utf-8?B?d3E4NWNZOXp5TnIyNzF1OFE5WWxsVTdVb2RGTzBLNDNWblhsd0J3dnZ4VXp3?=
 =?utf-8?B?NjZ1aldvWnplTlp6cXBmT3NEUXZaUUxGcDZ3OWp1Y2N6bU12eUM5ejVZcXMv?=
 =?utf-8?B?VWFyemttOXlYaFI2TFJMZnZ4ZGVkbzluY0htNWhwZzlxWG5nSHhCaUJEeXVK?=
 =?utf-8?B?bDVpQnQzZ2FjZ1FSazk0VjVBM1ZkZGVBd0xIeldNMEJUbUl4WFpILzlESlRL?=
 =?utf-8?B?d2JDd1ZRTDNwT1V6QXYzNHZKZ1FMaWJWSW9CT2J6TCsvRGhmWVM0cDNaNlJQ?=
 =?utf-8?B?Vnk3QUhpMmIxQzJQWFRZRGdlVndrN0xSYnZHOUp5V3ZDQ2JJRFpCYm82UkZk?=
 =?utf-8?B?ekROMFlsSkxIR0tTS0tUMzd0ZS91WlZqNnlycDdoY25JM2JJNmdSNUNWK25z?=
 =?utf-8?B?MW5lelFwa2VaMDZlYVZ6VU1xcTQ2ZGJINENhbzNJanRsaEJWOVVQeXJEOVpJ?=
 =?utf-8?B?amo5Q3dVS1VUMzhZRnhQeG9QUURSbGZLcDNqS3lYcnBkQ0d0YzBSZFFFdkpk?=
 =?utf-8?B?UGN1aCsvd1RLRmcrVTdNbTY1c3VPaityQlU0SmZNRFJ5YTJSM0wvMFZWOEdX?=
 =?utf-8?B?WWV2MElkQlQ0aHBLaGxlWVYxdmlZQmtqTUk4dENja2VaQXgvYnkrb1UwdTBy?=
 =?utf-8?B?TGJKQkczQVF1R0EvRzhobHgwN3JCdVNTanl0cVgwZE5yZitScU02TzFscUJ4?=
 =?utf-8?B?UWtCV0VWTU8xQjNSZ3lIekFJbTdlNjFzMnVZK2gxN1FMM0JLNFBUbzlMYVF1?=
 =?utf-8?B?aDdxalVocjdzZXB3ZGp3b1dhVEZVeE8wTytzSXJtK2hMLytMU1o0eE8yTFFr?=
 =?utf-8?B?SUZzOStjWWFMY2h2Qy8wWFJya3V0a3B2NG91M3FQWHF0ZzZSaGxZb2lMelZq?=
 =?utf-8?B?ZlpPRzBxNWNrRFVnbWxQdWhzSk1oK2grYTlJT2V2bVhka2FxSjFzSkNNR3VW?=
 =?utf-8?B?dGpKbmd1N3VQRTQ2VEtEL3FILzV6Vk8xR2lxbzlNdWNmZUtNaWx1U2x6eWc3?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 134413c4-9e22-4c95-bcb7-08dd8c97fe5a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 12:17:39.6433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: anZyfwqZfXUf4K/pis1+ZZ2IA6j+v8cA8ncSty6wuKFISQMyjuoOJhyewtDHmnQgWesABqA/d+ZqU6CwJyMTvEMSY4X6xwn6ussqWCT0I00=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4845
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

Hi Mikolaj,

On 2025-03-21 at 15:02:49 GMT, Mikolaj Wasiak wrote:
> Due to changes in allocator, the size of the allocation for
> contiguous region is not rounded up to a power-of-two and
> instead allocated as is. Thus, change the part of test that
> expected the allocation to fail.
> 
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> ---
> v1 -> v2:
> - Added negative test for too large allocation
> 
>  .../drm/i915/selftests/intel_memory_region.c  | 22 ++++++++++---------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> index f08f6674911e..7e72e12b26ca 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -413,15 +413,8 @@ static int igt_mock_splintered_region(void *arg)
>  
>  	close_objects(mem, &objects);
>  
> -	/*
> -	 * While we should be able allocate everything without any flag
> -	 * restrictions, if we consider I915_BO_ALLOC_CONTIGUOUS then we are
> -	 * actually limited to the largest power-of-two for the region size i.e
> -	 * max_order, due to the inner workings of the buddy allocator. So make
> -	 * sure that does indeed hold true.
> -	 */
> -
> -	obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
> +	obj = igt_object_create(mem, &objects, roundup_pow_of_two(size),
> +				I915_BO_ALLOC_CONTIGUOUS);
>  	if (!IS_ERR(obj)) {
>  		pr_err("%s too large contiguous allocation was not rejected\n",
>  		       __func__);
> @@ -429,10 +422,19 @@ static int igt_mock_splintered_region(void *arg)
>  		goto out_close;
>  	}
>  
> +	obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
> +	if (IS_ERR(obj)) {
> +		pr_err("%s largest possible contiguous allocation failed\n",
> +		       __func__);
> +		err = PTR_ERR(obj);
> +		goto out_close;
> +	}
> +	close_objects(mem, &objects);
> +
>  	obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
>  				I915_BO_ALLOC_CONTIGUOUS);
>  	if (IS_ERR(obj)) {
> -		pr_err("%s largest possible contiguous allocation failed\n",
> +		pr_err("%s largest rounded possible contiguous allocation failed\n",
>  		       __func__);
>  		err = PTR_ERR(obj);
>  		goto out_close;

The very last check is redundant, and this is why:

Firstly, we already try to allocate a contiguous block of size. Since
size >= rounddown_pow_of_two(size), if size can get allocated
contiguously, so can the rounddown.

Secondly (and more importantly):

To quote an email from Krzysztof Karas from comments on v1:

	" We need the following:
	  1) Fail check on "too large",
	  2) Pass check on "max possible size",
	  3) Pass check on contiguous object. "

1) is checked with the first object, 2) is checked with the second
object. 3) is checked with both the second and the third object, because
they both use the I915_BO_ALLOC_CONTIGUOUS flag.

It is worth noting here that we also check 2) with a previous obj, at
the very beginning of the test just after creating the region:

	size = (SZ_4G - 1) & PAGE_MASK;
	mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0, 0);
	if (IS_ERR(mem))
		return PTR_ERR(mem);

	obj = igt_object_create(mem, &objects, size, 0);
	if (IS_ERR(obj)) {
		err = PTR_ERR(obj);
		goto out_close;
	}

(this is from selftests/intel_memory_region.c:386, just before the
checks changed in this patch); Notice how this doesn't have the
contiguous flag.

So given the agreed upon behavior of this test, the optimal way to do
the checks would be:

- object from the snippet above (that's not touched by the patch) (size
  unchanged, no flag) - this checks 2);
- the first object from the patch (size := roundup_pow_of_two(size), flag
  or no flag should fail either way) - this checks 1);
- the second object from the patch (size unchanged, with flag) - this
  checks 3)

So the last object is unneeded.

TLDR there's no need to do the check on rounddown_pow_of_two(size). With
that changed, it'll be LGTM.

Thanks
Krzysztof

> -- 
> 2.49.0
> 
