Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B66CBC645F
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 20:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61EB10E0C9;
	Wed,  8 Oct 2025 18:22:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N6mEq0RW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2183C10E0C9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 18:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759947724; x=1791483724;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=a83XKJcz0Hh+EZpXdhI/LGeGvtTUsbz4m0Li5/VMYiA=;
 b=N6mEq0RW7Zaq7at2EINSf2JB9vRfE7hSMVvMohEMNnuQBDyjGz6VfAcb
 vcl1wPAy/r4OAF6Ym+b39B29rAZngKfnWVrO//QTch0WdPVMS1rV0JOiB
 0wwE3WFns2fEUwlmPlA59r8ixfQ0xwf7sZjkxmkyRIYkQ6nZxf+we851v
 sN166M7pZGLotuhJ5A3gZR4I5N+/6Y0DbVJt0e0f+j5HJ62sq41lnYKQ3
 yhHxC+vpYNm3LrFj5SpfdSah1WRTiybq8k/WJZOCpwL7HI44yiV8tXqQq
 hwrAvj0FKWer+n9RDOwD5tfKj3huK1ua9wvs+pkJfX+4y9sdsIgQZdH4k A==;
X-CSE-ConnectionGUID: RSV+/k9xRx+xaF1kv4NNPg==
X-CSE-MsgGUID: 8tLmOkaoT7qlXt+x2DUzrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="62245256"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="62245256"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:22:03 -0700
X-CSE-ConnectionGUID: Umfj0NMqS+a0gYRJjYrlNw==
X-CSE-MsgGUID: pnhySX1wR5GtiQsZRdGHKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="185799172"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:22:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 11:22:03 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 11:22:03 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.8) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 11:22:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xd6DsYdnRUksDQluVztxfV0qoQYAXo8GQo7YT1RotkpP0KJPM0BO/QByAGOcXbsbG+urrY/2wO0LicGpSh6irtVEGhUrJYLw8vMwzs11QfYN3g96bxhcKjhf7uVEFIOQyjTsqIt2T9nAx/V8XDz4qBM5JhAgi4m1fC/vMgy5U/N3xAq56DPmiKWRjMziNz4L7z5444WcKUitftjlwPVReWLxJoebJf2lRV+BVs/y37Zaqv+5YCl1q18awl0p8KC3TDUfZSVQQaoyw7oK0zef+BC/OuI90dZRfzbfyU+Ooo2J60NS2oRK4h7XrPBzHidpJlZKNb0nLcTooEytykQfwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M5g+nrflRU8L90Wn1W859BmA5WxZh7hwLpVvRJtUYFI=;
 b=E4xqhJSJIpQAKedZZVHEJ4GZcqEVMz79Fm3gMMuNW6B3wcWGO++nWqDDYK9WjkWzXvG78HeKBSmTx4yGRFhiS2iso/9y840hxKqtl05Wdb7LeXz49QVR8CCM323KlCEkKsqiD1LRjMK0oXzd6xF2IbyiXOuOdXNZoZ7lRI7o/t6DAM/uxxc88X1GQh1SciRm5njkLRjjNwUuiLv1WKHsMCXzCkcS6rLTxcuU62wGKTd20S5yXfTLRuBPmIn7h1sT+j9mpLVGCrlKj1mDLzT31WJ/cEyNX/gj0IA6X6oLxJ0mpIB4qsLdisPHxe+6WyedeyQbjUFOzsYZTn/SKmcNdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by IA3PR11MB9157.namprd11.prod.outlook.com (2603:10b6:208:57b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Wed, 8 Oct
 2025 18:22:01 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%7]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 18:22:01 +0000
Date: Wed, 8 Oct 2025 11:21:59 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure_fo?=
 =?utf-8?Q?r?= drm/i915: Fix conversion between clock ticks and nanoseconds
Message-ID: <aOarx9UmUYSVov1U@soc-5CG1426VCC.clients.intel.com>
References: <20251007233543.635130-2-umesh.nerlige.ramappa@intel.com>
 <175992202261.17350.9919082238977709936@6aec98b87f92>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <175992202261.17350.9919082238977709936@6aec98b87f92>
X-ClientProxiedBy: MW4PR03CA0171.namprd03.prod.outlook.com
 (2603:10b6:303:8d::26) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|IA3PR11MB9157:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d3befc7-5936-4922-378d-08de069792fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWZ0T1kwVzN6aEFiTGRLM1FGT2R3aTRweVR6bk5IMXdVeHRlMWxmaGN4cmVN?=
 =?utf-8?B?aWxwVExNbnJ0VndjTnRqRUE5cDNFd0pCMzNkNTFValFHTUdPMUxwdlZmQStT?=
 =?utf-8?B?MnZmR1MrK0dTSDdFQ01VNldFNG05ZnpCZ1B3ZVRQZW5BVW41cmd4NTdLQ2Fa?=
 =?utf-8?B?UmVHMHU3R3BRYzdPUWVpK1NwVmtjMjloeStZTzJUT2s5ek1wUFZzNGlkODhW?=
 =?utf-8?B?Q2FLRGpFOXY4L09JR1FrRzcwb3BGZ0U0M2lndjZzVjFINjRnVys0d0xkZk9M?=
 =?utf-8?B?djZwREZVbzN6SHROQ2pyUVRXOElUenBtb2svdkMyQ0FoRlFWUjl2cEVCTWFH?=
 =?utf-8?B?R29iUlBaNjgwaWlqQzdxbm9mMEcwSHhtNXpBZldtMzNsWVMxekdtb3dmdnhz?=
 =?utf-8?B?aWwxY1RTYitHRmliOVRnSFJkZ0I5TXNUUmFSRnk3ZnZXaGZwV1JRNU5mT28x?=
 =?utf-8?B?bEtlc21PKzRhS1RXejkvTzhkYm5SaTZNcFhPZTVLT1djeUNTVUtRVmNBdXlU?=
 =?utf-8?B?YlJwRTkrckoyVC9lZHE1K2lIUGJaYXdXMVJYS01DclFaWE5xU0RiTGVzNnJu?=
 =?utf-8?B?czhrb0lNVlgvbEcrOS9zbDVKbDhoZHRtTS9Oc3UxcFhIdjd0RzQ3MnZXLzkw?=
 =?utf-8?B?NGRYK1grRXREajV6VldNdzA2cmYwK0MrOGRVRUk3NWVzbkhxKytraW9ORUVD?=
 =?utf-8?B?RHA0WFR0emhIWkFYTThNZmNHZXZjRnhxOXVTV0tpODRKY1poRExLZjgrQkRC?=
 =?utf-8?B?OXl6blBpb1BZYWxxaG93ZkUxMDVsN2I1UGNQaVQ1a0JUVXlyazNFdVF4dUNV?=
 =?utf-8?B?cEZDTE5pQVFVRnRWQm9JR2U1Ulo5K1hLKzQyaUpMdzdqaSt3Y3k3MmNwMHp0?=
 =?utf-8?B?SnQ2NTVjU054QnExdnRMaXNkTDZPeUJEVHlGNmlFRk9iWWFkL2lGTDg5WGxy?=
 =?utf-8?B?TmlHWGdYVHF6akcvUmE0bkhQVUNCaGJiRndXYkxtOGU0Mkt3akhXSVZQQUZF?=
 =?utf-8?B?NFVjMk1lTE5HcGxjTDliWXlQYXZFT2Vka2ZOS0tMNVBMaklPampObUhIeG01?=
 =?utf-8?B?T3M0cWZnS2lkbGprcTBFRXVGMDQvUTdLQURscEx1TXdQT1JBNXc5K1JDQmxo?=
 =?utf-8?B?ejNXaWR4TlRoVjNUVlNJZTFPYXFjVGExa0tIYXYrRy8vM0RCQ0tidkZ5bFdx?=
 =?utf-8?B?Rm9NSlVET3ZZclhZWTZ4MU1mbmN6VS9xTXhTM01GT1dGTlJKaFJnS2FCRTZm?=
 =?utf-8?B?TjdycWpnSnAyR1FlYWl1cG8yQ09CN0RZWWVHektPc2JWb1VPSlRRcEZqQ1RO?=
 =?utf-8?B?ZHpQQ0tiNElwTFhURzQzVWU0RUhYZjFZdWh1UmQ3OVJ3bHZOTXVZeUFXeDZZ?=
 =?utf-8?B?UGZQTTVhTE1CaHo4TngxbDZVeStxK0hUYjlWZlljaCtnU29qdHNQanlHNFBW?=
 =?utf-8?B?c2tpczVjR1l5OFExSHVObHQrMGJ2ZG9Qc29ZMDNOdjFoZmh4RHd0K1QzL2ht?=
 =?utf-8?B?ZXZGcWRZcHhLWThKVVFzTGxCVmU1R25qWTRNeUlYc0FTT2lUSklNWWtBcVJj?=
 =?utf-8?B?K0ZtTDNwR3JFWEw4eFJRd2I4a3A1L1o0V1g4UWIvR05OYlJNL0haRlVjQnVp?=
 =?utf-8?B?WFVvSk1JSXE1QkYxb1BhWE42bXBCMnRicXozZ0Zsa3JMbHJMeWNCUlJGc0x6?=
 =?utf-8?B?aGN2UjdsakpTa1VsNkE5NlAzazlNdW5lMjhPTWpUVVdYR0JQM2Y0UFBSWWtZ?=
 =?utf-8?B?eSt2eWQxN2VKNzB0ZWJQYUo1YzI2d2VHczREdGFBNzdXdTVOT1c1ampGQ0E5?=
 =?utf-8?B?Y2NDUUw1YXVZbnc5MlVkUk5XRUhiMmFOKzdYeEVSdVRTUFpWK2QramZxR3NP?=
 =?utf-8?B?K2hOcEhIZ295WFN3WHhMcUNjaG5Ma2w1dDFiVVVLZkpQNHc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akRSR2ZBNjlEUWU2YlJzRW50cmllVjVsREZvanF4VFkvMVVoYkZEWkZwL3lR?=
 =?utf-8?B?R2ExakM2aWQvS2UwekdFc2hnazhWQTc3ZC9UTUx5aGdJNG5CRTVDQVZ4cXFD?=
 =?utf-8?B?Z0pFWjU0UW5SSGI3QkxDU0lJYWZEYzFpamZZa3V1aFRBenFQSXh6eFV3QTZW?=
 =?utf-8?B?cWRQWFAxaU1EQzN1Z3lwUzFEY0cvVmNFM3owMHgva2J5MEVWRjRjMnlHVkJ1?=
 =?utf-8?B?ZHlxU0hzKzEyL2hESVU4ajRaZmJvWFFXaVgwZXRzaHJKNnBMR3loT1FjbGRO?=
 =?utf-8?B?NUZjOEpJU0Y0akNMUHNQOGNHOWRwaVRPWmx1NG5iNldjMVZhMHlSSzRPOTBD?=
 =?utf-8?B?cVExZWpEd096TEhWK1R2ZUZUOWZNaG9nZVpPOGh1VlNCVFU1Y1JEY3NwS0Zx?=
 =?utf-8?B?SlhKOEg0bnU5aVBka0lMZ3loSThNWUVnUDNESWhmQnZOWkZzL3RYcWZaVlZV?=
 =?utf-8?B?VmJsdFJYZTRlYzlUTW50Q0t4UzJwbm5BSjVGVnR1UEFWcFZSckd1alhZd0dh?=
 =?utf-8?B?TkF0dFAyNHRMS2x4TUgzYTlhTmFjZTlHeUZQT1IrVDZlbzd3enB6UUZHeVJL?=
 =?utf-8?B?UHNLOUNuRTRHSnpqbEdnK3ViS1BQV3NLY1ZKdFd1OHZnT0ZISzFBWVdpN3Nm?=
 =?utf-8?B?N05INTZoTzJIUVlaMnUyYVVGRnJTOG10cWNraXg3ZHE0dlRzb3Zpdmh6QjRs?=
 =?utf-8?B?c3NFMlFxcWxjdzlHVTNLeU1uNUJ4Mm92S2VCTkZqalV2SzU0VFQ5bnZzMmhj?=
 =?utf-8?B?QVkveDl2WkE5S2xOS3Y1UWc2dmg4SERIbTNwT3M2Vm5JbFh1eXNmUkRKMG9L?=
 =?utf-8?B?WS9qRlo0NE9uZlpzK2pvL0dySEdGYW9MMVhRbXBxUm1ackZ1eEh6RmlkUHJT?=
 =?utf-8?B?Q2tFWGhyTFIrVnFyclRlV2RzQ2VKNnlPcTlDUzRyVDF6NjE4REZ3R2IrTWhO?=
 =?utf-8?B?NVU1SC94bWV2emJZamg4b092bngvb25mMjljVkVoSEdIK29nTGlycFpUU21q?=
 =?utf-8?B?cjdxcUduNVQ3aHhTMUxxTngvL0NrYXRVVGg5cXo1UlBkU3hvbHd1N1pHcVI5?=
 =?utf-8?B?TTg2RHhYZzFoTFZBbnhxbUpla1N4SkNqalBLNXBGUzl4dXU2ZFFSKzVWQ2ox?=
 =?utf-8?B?MmpQa3k3WjYvMko4MTdXZnhTaW9jWkhCVmhsc3YwVk9nNnRJOWZiNzZyVzZ2?=
 =?utf-8?B?c3V5Zy8xWFFrTDdQSlJjNThUVFp2STlPU3dtQ3lRenV2ZnZLU3ZIZkhPNWlj?=
 =?utf-8?B?ZjkySVBoYTRQektZK1pkNkk5azFoN3FMWHZjU3JwaDEvS3FMNjN6UDJVVlBC?=
 =?utf-8?B?eHhOL3RRZUV2VHVXWWMwcUZKSmNwQU5waUZRV2RmdWNjMnVaZE5kVFZNNXVv?=
 =?utf-8?B?VTJrWEFzV3M4ekI0RnZMczBzSWtYa0JLOVZwTmlWWkxBSGY3ZFlzWWZHMXk0?=
 =?utf-8?B?TDRmY3l5b3dUb1AyclFQTW56dEtud3Zad0tvWVJXYTJaaFBFYmpxTzY1ZWlp?=
 =?utf-8?B?enFwMEp6Qy9Zb3JUV0F4Z0JNQWpnSnFUNk5wUCtvTVVKK2JRNVJwRWdpdkVB?=
 =?utf-8?B?Q3VCcHVLVEpFa0oxN0RiaFEreDhOTVZDaXZheUlDKytwR1l2cUNNQjl4bU5j?=
 =?utf-8?B?Tko5aGh1VlJVWmlUbVAySDl0dVd2MlZ4S3dZQzQzTUVtS0ZEdDdEbDMxTmMy?=
 =?utf-8?B?eG1peC9OL2tEdUVKMnpuZ1JSc0hhenh3dHNUajd6WjVqUFFEcll1dVllL29L?=
 =?utf-8?B?NmFwaW1WWjNrUis3WVROaTErd3ZEOGEycXV2LzREcHdXSUhyckJUU0NwdW1Z?=
 =?utf-8?B?V0U1cDVRQ3lMUDhFK0k4b1Q5UlI0KzlMeEc4cHBBSkRrSE4wcVJiMXE5bUIy?=
 =?utf-8?B?U2pUaCsrNXZnZStONHF3U2RleGJaekxwd0QzNGZnWStsb2NTemxJOWZQLzBx?=
 =?utf-8?B?Tk1PT3h6eGcxRUppdHJ4Mjh0NEo5QVhxc0p3NTdUWnhLNlgrdVk1YmJhUGJj?=
 =?utf-8?B?VGhZVDVqbDNSUDR1NWh1V1QzQUJtWFd6TW9JZGNsTzZsQURqaVVRVTdpQlVL?=
 =?utf-8?B?dFVTeFlYK3lEM3A4cGYxajF5Z01ENkVNMlRNM2NqSEVFZHVqUXprUS9HN01E?=
 =?utf-8?B?NmRySG9YNFBLRzJNQys4STRLbmN1NklqbFI3SFp2Q0lhNDNZVEpqL1ExMmlX?=
 =?utf-8?Q?X5oC0YUNUeRW3+Vc1Ajw1zc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d3befc7-5936-4922-378d-08de069792fa
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 18:22:01.1202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2YMGOINKb9ubGSrFOn54SrGSocyH0prw62sKIpUWfNQvTUAVt8ij3gucxrBtRB6ojWaE4lbrtX2WXxuGRAB5STavNcXN2dXf08quM2dgwL8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9157
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

On Wed, Oct 08, 2025 at 11:13:42AM +0000, Patchwork wrote:
>   Patch Details
>
> Series:  drm/i915: Fix conversion between clock ticks and nanoseconds           
> URL:     https://patchwork.freedesktop.org/series/155566/                       
> State:   failure                                                                
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155566v1/index.html 
>
>     CI Bug Log - changes from CI_DRM_17325_full -> Patchwork_155566v1_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_155566v1_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_155566v1_full, please notify your bug team
>   (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>Participating hosts (12 -> 12)
>
>   No changes in participating hosts
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_155566v1_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
>          * shard-tglu: PASS -> FAIL +1 other test fail
>
>    Warnings
>
>     * igt@kms_pm_dc@dc9-dpms:
>          * shard-tglu: SKIP (i915#4281) -> SKIP

The above are unrelated to changes in this patch.

Umesh
>
>Known issues
>
