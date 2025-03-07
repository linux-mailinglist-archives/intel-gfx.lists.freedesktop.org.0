Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0333A567AF
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 13:17:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC65610E150;
	Fri,  7 Mar 2025 12:17:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LVel00DI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B0E10E150
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 12:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741349844; x=1772885844; h=date:from:to:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=24xd9hTnNCxXwFyotEqecykt6dRqzUVbAIZkcBkY3DE=;
 b=LVel00DI6xUaBgSWurfYByHCIMZcDm39HT8lkRGAWKtNDLU2n+ghnx5/
 C42iZak1wVC6xiS1kyrpUKnC+h0lIX4gfXbg6BFu2qaZ3B13jkqUt0SjS
 aQrKKUfbFqjSXsNWFBxUqMxIHetPvjyIwuyECCk+6zuLwJB6C6lflJ4PF
 yvxJLo0qt4TNEPbFtj5X+RXLPPMcQSIwjE+cybB/k+1P8oi3SzoRFXRwx
 Ki8uKcloNM/0dNy1iLKSimUyMbmA6L5pG7ireSCcIzjjND1gV7A2b1buz
 3i39Nq+7hH5jfV9Ic+LUk44gZrNvCa4Efh/MmbjEp7z7X3Q8PwCMaOBJS Q==;
X-CSE-ConnectionGUID: ORyQEDaKRYm8Fby8w76OdQ==
X-CSE-MsgGUID: i3T3vljMR3OdlJl9iy1nqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="45203173"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="45203173"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:17:22 -0800
X-CSE-ConnectionGUID: bqpNiZI8TFW1RwlHzqRfWA==
X-CSE-MsgGUID: DEXfLLWxSxqHaucbLXuFpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="119138861"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:17:22 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 04:17:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 04:17:21 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 04:17:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yTxZ8bSWIH2SiGd7xWzF9NzVOxGJcD1PDet5hO2a2dNGpy+bCVjS+Lp7JRCRJhtS1e96dLWlNycQ28aa16Amlm9IoHGXSFVrG4FBtXp2F105GpTRk32CyzzzT80pT/674n/AwaA7D/8zM5SfKF1r5LoB1+AXxCzS3/rkCgr0kv9F2K+QqB7BwbREL065D+wsipvLS4XGhFBK28TK7pkZlRvByQAIjrSbMRj1CTB18kqyfeqZ4D0B/KHuGVwmt84QpcOTr716NC+2NdIPNvUK7ymoNlvZwqDtA+tCo5Y/Exk0hxGP2CXsJvtaIUSOrxSaDskUmzylsX2fiZviXLhiWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YJj5OGslJsT/TRXRFhgEVJMBKfu5F9LeYhNbARHWw0U=;
 b=L6WaIcquXBiDmvuwgfy9ee92oMSGjkV7AQMcCL9sTpqalDoX417DsycID5AD3em09kVwaQby4smWm3DOsrKfSm4cdbaAQ+sQALyXEHxBjX6ohS4nxtrKtGHuX+iqQkVKaJfXY7nuiiyb9zimLFpLKQrJObZc8DfX56rDSiFwcrZSfi0dSXIlkNq8g8qD1JwWSsV/5nFXMGh311BMEji4HlYZvUMph6eSqMQIt7n8WcA+xAGf5/7Da0fFm20ZrZDF4M2OmzpmPSRWWXwFwpseFWHf33z6+n1i9vPmO92c8v0rUy+YQes5nUJLSM6qiDTwvoYQp5x1/P8vIVVrRoJDEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by DS0PR11MB7631.namprd11.prod.outlook.com (2603:10b6:8:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.22; Fri, 7 Mar
 2025 12:16:52 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8511.020; Fri, 7 Mar 2025
 12:16:52 +0000
Date: Fri, 7 Mar 2025 13:16:48 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Krzysztof Karas
 <krzysztof.karas@intel.com>, Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Andi Shyti <andi.shyti@intel.com>
Subject: [PATCH v2] i915/gt/selftest_lrc: Disable timestamp test
Message-ID: <dt37uuikaae7odjrr2jrpoowt3ctdvcnuxn2lxx3x2vokxzyrx@5bplt56gquq6>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA2P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::25) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|DS0PR11MB7631:EE_
X-MS-Office365-Filtering-Correlation-Id: bcad288e-223b-4c2f-3598-08dd5d71f1bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?clJQU1dKSXVsaklYaVltbmtPYURDNmt3Ym02UURJRGo4QlpLMlJhRUJXdVFp?=
 =?utf-8?B?OFhuL2Z6OThpdTFUTU12SzhNeWd5OENpUkhWK3d3RStrOVc1d0pjcHgrOGM2?=
 =?utf-8?B?RDU0M0hUSkMra1IzODlNbzI1MnRXbjlPMGIwZ1ZtUGJ3bHhhL2ErYm9nbmdB?=
 =?utf-8?B?NWN5OUt5Uk9pakx5eWQ3dWJnNGoyNnRDc0JuWEFkMEZseFI3T1E4S2I2V2Y3?=
 =?utf-8?B?REpwWUdJQ1M2OVFVd0RDY2V6cTFqL0tHRFFSVXovR3FhRFRWOUJVNW1qUEp2?=
 =?utf-8?B?N0JJT2xDTXdwWGFwMWd6TW1DZTBDemdIRlpsZUNiNXNpVExGV1JQVXkramw1?=
 =?utf-8?B?R1JIOE5CQVRKR3pGSnZqTlVlNHpOUlJ0RmVpcCs5QTh3SkE5M2NiWnB2VDZh?=
 =?utf-8?B?YkdkSlUxdTZ5SHpibTBuK3Roek1uQkdqYS9GeUVTTXpMckZqODVaSDVxb0ha?=
 =?utf-8?B?ZDJYdEdyeFQ1a3AzTXZMNnBldmVWem1lQmVyZ0xRM2RWUytucXBjWGhVNFVY?=
 =?utf-8?B?ZHZOU1FrMUVzUytwMUF1WW94eDBxa21YNElXVzQwOTdYN1VZejluY25hVEJj?=
 =?utf-8?B?dGFnYmVvcFZ4SkdTbFhyU0tIWGtnemh3anNUdERpQ3BnV2FFaUEwbXZLWDRp?=
 =?utf-8?B?MkZWY1dTOUJ6WVdCbkZ3djdGeU9adHVIbDEzMkdWaHdMQ0FnUU9BN3ZESW1q?=
 =?utf-8?B?ek91TVpNOVRKR29YazRSamtFcFprNng5L0J5b2g0S2J4SkZNVUh3SXRQSXBZ?=
 =?utf-8?B?T1dld2JjNmRPR0lHSGdxV3VSaWdndGQ5RXAzVHlMUTJ1Vi9NL0lqRVR4NEFx?=
 =?utf-8?B?VUI0b1VvaXkwMWZGT05kTGFIL3dicDJCcm5JdFpjWWxlMmJRY3M3SDlRb3k0?=
 =?utf-8?B?eGptVUJwQVZySDZDS1NDUGdpQUFUUnZVZVZzWGUvM3kvUnMvQ1ArWm9HNjVT?=
 =?utf-8?B?dHE4TExVL2dJS1BFT0loT3RQSVFvQm55ZmV1aWZjOWIxOHU0MEJaVDJraE1v?=
 =?utf-8?B?WW9DTEV2bm5nL3NxU1M0bUtRa2NteTB3Wk5LV0R5c2lKNnpnWjNVY1BQemFR?=
 =?utf-8?B?RFZoaHhXVU9RbU1TbEFGWUxzOVpySXN1aXp4clo3T2JwbHpXVWpyT3FyalBJ?=
 =?utf-8?B?NWhlQ0RvaWtWL1RQa05wN1AveWdTVjA0M2xRMXVZbitTaDY5YU8rNnFLak9y?=
 =?utf-8?B?RjZPcGNyUzQ5UkdhTy9RYkkzanhOckFLczR4bGNFMERmZEVjYVBKeUpIZkFH?=
 =?utf-8?B?OWkzVDYzWXM0d0piZFZXamd1QjdKYzc3SUFUcjFlM1BrQmFVUmtqSEpXOWlr?=
 =?utf-8?B?ZHJPUXpKaGlvd1JZcDFWaDRMQnRXT1VYYmFhNHkzajVmYnlJWkhPRVdXdFdK?=
 =?utf-8?B?TnhBaFR4c2dYWmxvWnBZN1ptWWRTUUs0K3RWeUMyVStNVzAyRVJkOUIzaVAv?=
 =?utf-8?B?QzdFaFVXVmxIWjY1aUZPTjFOYitUM1IxcXNQZ0dKRDg0cUhoRXBudXg0elR2?=
 =?utf-8?B?L1NQMUtIemVseVZRNnlNUEt5MTVobHBUeHBJdFBNRWtVYUtKcFFWVUgvYitM?=
 =?utf-8?B?UHhEWmFwRzI2NHdwN3Fobjg3ZlFpWEg2SHhObm9xVzRDT29ZN2VvbU13MFBH?=
 =?utf-8?B?ZUdMYjZYVlJMUmg2N1M3OWR5OTNuUGRwM1RhajdGNlNEME5HdXVHUy9ZeCtj?=
 =?utf-8?B?TitKR1g0VFUyWG5ENnVLT1hIYTV6eWlhK3ZaeGQ3QWcrdWRmZVdHblRMbm9G?=
 =?utf-8?B?bm96ZG8rMGFtdmRZMFMxK1lnaHE2dEE0dHRWYkNQQ1YvOUZmVk0ySmRKaHFJ?=
 =?utf-8?B?V0VyUkczVFUvc3Q1VHZLZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0tXNjk4SDlrZ2k3Z0Z5SGxlemdZQzRqKzJhZTdXSndhSUZjS2xGTWZubE1D?=
 =?utf-8?B?T2dLWjNZS1VXMENxdE54MWE3aUlFaTZMWmZUeUdaemdUc3FjbkIxM3hwd2l4?=
 =?utf-8?B?Mmx4K3N5b1J3SURYQU1WNldvVEowQWp1Z1RxMkF2UmdQOXNUREx3d3luQWs1?=
 =?utf-8?B?MXE1bGg3RnFMcHY2OEUzNTJZckhQdkt1MWlDMEcrcUxyQUkxUXNRTTdndlNy?=
 =?utf-8?B?UWMzRGZ2UlRyczBxVnIyNUVpdG05MC9va3ZkOUZmODh2dXFCZHNKRXhOTEg2?=
 =?utf-8?B?M3o3dndxYWR1dlpER1dWOFJvRW10QmUvdnNnSDU2KzB3bDdYL1piNjNYSmhO?=
 =?utf-8?B?Nk5jMk05VUlNZGRyOHM5aDhVejE2aW5pRGo5UUlqUHR6T2FWQkJwQ2IrVC8z?=
 =?utf-8?B?SzM5Kzh1bjlzWXZTSUlnNUl5YnQ1YnpqYlBwQjh4ZHJqNUdNZnIvZk82SHdy?=
 =?utf-8?B?ckdDdC9tYStRTERWL2IrT3ZPd3lOZmZoQ1lBTG5kU0hyZTJYSFRGbVBTRTAz?=
 =?utf-8?B?aFlIdml0d2lRMnlhSkY0YnFpT0lkdmVwSFJVTzhGUWIwcFZUUVowZVk2ajdT?=
 =?utf-8?B?NFBjQWRWenNoWFEyYkdTMVBrNUpiclVTbFVFSHRIbDZKUDJMK2o2TFNWcEl5?=
 =?utf-8?B?alJuR2NVSXRBZVBud0RPdlJ3V2VDalVnWFZLWCt1L3R3S0ZCR3UrZ2xlOHI0?=
 =?utf-8?B?NlFnSDcvVU1WY2JyamdLNW9DUDNpSzh2WXJzWWsyc1ZyeUVOMnNSREI2dkU1?=
 =?utf-8?B?UldqNVlWVXdGZzJiVlR0VFhXeUxoSjNSem9SRW1MYnRDOVdnVG5kdW82aXUr?=
 =?utf-8?B?RWd6eVl2U1JkVmtqbFRPYWdiUDhpclZsVHVBTytzSm9MM1puS0Z0QzAwcGFz?=
 =?utf-8?B?QkZRa0VxTjdseWcxTFE1N0dveGl6MlJna3NQM05DSmxHUkYwZldGZy9nUW5m?=
 =?utf-8?B?T2xNQWtidWRxa3FUR25GSWV0TExSZjcxV29tZDBtdHdNYmJRRHVscGJiallt?=
 =?utf-8?B?WnJmMHMyaUFVckpmUHEzOVVLM3Jpcy9EbVIrSGhyVVgxZDhCYTFuMk5ud2cr?=
 =?utf-8?B?WXkzTUd1TVV6TkhtQkttZE9MVnV1ZHd4bTMxNlp2M3c4czBTeTVhdFNFdzVS?=
 =?utf-8?B?SHk4TVNROHJOYndoTXA0ejgzblc1VW1OTk1FVzFlelpWb2lhRDYvTDAwdGhw?=
 =?utf-8?B?TFI2NHBFbnQwZ2wwTU9LMlZNNUorVVlIaFp1U0o5RCt2cXd6VWhCZkVEQ3J4?=
 =?utf-8?B?K0s5ZEhRemhINDd2LzE4bnVybDhsWDFPMjlDVk5BWDFsbHBqcVlnOFVWeDdB?=
 =?utf-8?B?ZUZzVEtXUGNWb3JsMzAvcThwR1c2cmw3SnBBblFjd2RpeUdnSzhVUE5Wc2VR?=
 =?utf-8?B?SUt4Y014azZsQVNYcVBzTFpOMGVoR3lGaU5ZTkwrT0M3MWc4LzlWa2RwSklH?=
 =?utf-8?B?WVhlS1FoOEx1T1BBT21YSXBVeGdzblFyb01MYlhOQitHUzNOUGZKVXFDOXU2?=
 =?utf-8?B?WUdGZUF6cUlXaVRpbkV4VVhNVTA1NlRFRklHM0N5c2x5M1V1cy9IK1ByQlVZ?=
 =?utf-8?B?angwM05kRDk2cllhb21yRlBVT2ZSK1lHTnpLTnBubVErbWNucktZcTFTOVpP?=
 =?utf-8?B?NWxSd3RsMVJzQnFLK3BGNmUxNHFUOVRVa1VaZnZHVlBNbTY5YjMwWlVXV05L?=
 =?utf-8?B?c1dwWUF5MGNaZ1labGV4aW9nZHhtbDdCNWJ4WDRZRWR1VFNjcGhITWNZcDRB?=
 =?utf-8?B?b3JjNjB0QW9lRDU2K0VBZmd0RXZTeEZSd0taZnJxRWZGNnBLMllzMWttTHBw?=
 =?utf-8?B?NHRTZUZLSW90MXpZUEtlYzY3RkxRTFFvREJueG9SWml1R2FGOGYyMU1Id25G?=
 =?utf-8?B?QzJLY0g4bW5YR0pUbnRaK1FmaE9ISk5wUGZYKzlvWGdrYXRGcVNLOTF1NFVL?=
 =?utf-8?B?c2xVOVJnK3J1aDZlYXpjVnF1UHNmdWNEYkFySDhrRHdteDZOQWE3RkdPRWdF?=
 =?utf-8?B?QytUSjBOc3dzbSt0VmJkWnZIbys0UnlQd0xibGt1eStESDZlQVMxNmpiS0N4?=
 =?utf-8?B?dnMrNTdJcHpwMWt3M2NrcTc1VC9WRG1pREh0bHcrVGY5RW91SHVldWZ0VVUz?=
 =?utf-8?B?NEx4NWtHeDQ0bmtIbGE2anlSaENHRVZZcXZ6THFKVHY4eTZxQlV0VVkyVW8v?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bcad288e-223b-4c2f-3598-08dd5d71f1bd
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 12:16:52.5986 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c3X6rBdG0ZV4ZZh3YjxX10xNjXwoUVxAykqSml/qKoyUygxSVHzZ/Zgma0jrzpDzPGMxZywX91SNsBd+5sEWjHeX8UC2N1qmziiHvF8OsQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
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

This test was supposed to show bug in tigerlake and dg2 hardware.
The bug was found and fixed in newer generations.
Since we won't support any new hardware with this driver, the test
should now be turned off in the CI to not polute it with random failures
on previous hardware.

Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
---
Sorry for the duplicate, I've sent it to wrong mailing list.

Fixes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697

v1 -> v2: Disabled the test instead of removing it,
                                        Change name from 'remove' to 'disable'

 drivers/gpu/drm/i915/gt/selftest_lrc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 22e750108c5f..419a7cd61b65 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -3,6 +3,7 @@
  * Copyright © 2018 Intel Corporation
  */
 
+#include "linux/kconfig.h"
 #include <linux/prime_numbers.h>
 
 #include "gem/i915_gem_internal.h"
@@ -858,6 +859,16 @@ static int live_lrc_timestamp(void *arg)
 		U32_MAX,
 	};
 
+	/*
+	 * This test was created to show existence of hardware bug.
+	 * The bug was found and fixed in further generations but
+	 * now this test polutes our CI on previous generations.
+	 *
+	 * https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697
+	 */
+	if (!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN))
+		return 0;
+
 	/*
 	 * We want to verify that the timestamp is saved and restore across
 	 * context switches and is monotonic.
-- 
2.48.1

