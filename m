Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC101A67218
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 12:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC8F10E360;
	Tue, 18 Mar 2025 11:05:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aq/Hxl7+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE5E10E360
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Mar 2025 11:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742295927; x=1773831927;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=a4U1bo3ShWc7jNdhmvmdxIOAswnrLd4AP7SG7RRcnZI=;
 b=aq/Hxl7+Wd8OX5YotoNFmJkTeItlRzDCselp63RTAgaIhG245rrjqiK+
 qygilF2cRYHkfgRemMBMW9pomUyIH35lNOq6MoQwvnVNtAMwv09Kl8Lyw
 bJVO4oqzosF22/nHYBOzNd4wj/26LtcVkDRQSuMY7lEjISXGGs1gskGGE
 CzNz2Aq5WnLVhDUyL9WMqtnel77eGYnjQPpAZ/ddlaVPm2YN2sifA86sx
 tYvuop8HREQNI/XEUZ33tagTajAm9bHHBBw+g4s70dNgFkIQgk1RhZv7q
 0EVfbmxZrDNKpo+9HXlf643VEsuQhZdhcoFcmX6Z84ASsaPUgqzfHlxT4 g==;
X-CSE-ConnectionGUID: v/jyHHfpRC+Wg+ekEP1jkg==
X-CSE-MsgGUID: opJ+c2gsTc28/voMzsEjWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="43567012"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="43567012"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 04:05:27 -0700
X-CSE-ConnectionGUID: zBfMN/n2TsGvHjvbGsMejw==
X-CSE-MsgGUID: Yb2k8dLYQI6VbYnCzuVo7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="145406268"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 04:05:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 18 Mar 2025 04:05:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 18 Mar 2025 04:05:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Mar 2025 04:05:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LYC7Ynd6rYe1OSOy0Nrk2tOFPcsCa7wpLwEGMrvUMefKIf5Kp9XZBvjz7CgzPtOPHxdnzZ0qYEvHHe2ajRou2jSFlXjbGpQJU4ggjq3GQhx7YjkT9seucHupGaHS1LEDOph7MimkOYu7STQ40+Lm9GKw9L6yK9XR1lxMjPiCCbcXEan+7appSlNLlNAdcRAys6Za5KtHSMcuze84B7KWCXdPniUUqYozRFDNq/zLj3N26WqcU6yCXbeqXfsFGhRoaS1IonN6pWpSVOE/nIE6EAP0NOKN/yyM498YgL1qCUVwz3TFytGiDDuT5qhiAukHr2jvs3jaQXoRgOM/x1Ni0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CHRxtCwevoPAEm9k+53Qd/z8Y4jmgIX4l06gGlsHTn8=;
 b=btiORolm7apYQPbI2AZznvfFc/TChwiLk2FDGnvABEP3CyDd3eOMfGir/Xo3oKtuRy0CrW336/Qa/yfrTrhiHVh14CwDbFKW78+3xAALqT4wL7BJAWz7U3LFMlkei7WvjC169/myAdMosd2wv6Aj9oPwusajKDE6wnTb1uyfLJKlFUiGc8E/QDcUmG6cGlrLAl7NaMz133dOZaQCrAnme70+i2Fm3t/P24VJrxhkGv6mK/tHCi8s1LfTn3+KZRQfLip7OP+VPTm0I6rlFiHHpYbF4Tu+rREgUmrzY68SxNV7vda2AniNzbyMZPN/46j1Z2NVtQJ0qfBGFC5/WcyguA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CO1PR11MB4868.namprd11.prod.outlook.com (2603:10b6:303:90::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Tue, 18 Mar
 2025 11:04:56 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%3]) with mapi id 15.20.8534.031; Tue, 18 Mar 2025
 11:04:56 +0000
Date: Tue, 18 Mar 2025 11:04:50 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: intel-gfx <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 0/4] Trivial style fixes
Message-ID: <d64w6ub64fku6uuuoylov2kmr7oynbokvlu3dkadiswzjs4eug@czp2gud5cwuv>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250314021225.11813-1-andi.shyti@linux.intel.com>
X-ClientProxiedBy: ZR2P278CA0073.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:52::16) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CO1PR11MB4868:EE_
X-MS-Office365-Filtering-Correlation-Id: fa8440f5-f201-40e4-ad81-08dd660cb770
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b1YyeGNNZSs1eGZqaTJIRDFoWW1wN2RsaXhMUlZKT1RjQlFQeVM4Y1NPL2hp?=
 =?utf-8?B?RnlrWHI4RU1UWGwxcmVWbU5CRWp1OFNJT1FCaHdFaFY0UlR4eGEvbStTQUN4?=
 =?utf-8?B?c1E4ZTFKcEY5NUxzZ1Y4RURGTklZS0JpQXloaHlzTGdRN3BaKzczZG5rQVJl?=
 =?utf-8?B?YVVFYUp2L0l0VjZiOHFabmtUZ0ZxZTJ3b0NndlZQRVFlNFdDLzNKekJYTUIz?=
 =?utf-8?B?TWw3a0ZIdXFzMlJ0UDNEeWl6dnBLNE5raS8xTEhMV2xMOFhHSzRUaEVBTGlX?=
 =?utf-8?B?WVg3WlMyQ3Q5ZlRCL2JpZm1NZW4wdWJmVFZpaEg5Q0VWT1JmUXJyOFd5L3Nl?=
 =?utf-8?B?QXIzU1g4aklwYk0zUlRDUGpSV05hSzJ6aDlGdXo0d0pDTkYrSjFkb0hVR3VR?=
 =?utf-8?B?VjhnTWp0MnFhazUrNmhUSE1MRzJDbHp6azRsTVV5Wkt6U0NoclhWOCtycXhM?=
 =?utf-8?B?NnR0TzloNitXVXJRSG1sS2YwaVg2WkI5a003bU1wb3B2aW5IcmxWTHJHSVgv?=
 =?utf-8?B?RXluWjhxVmpiNm9RcFFYdUo3T2lmWTZUYVIzNktPTjFwTVlIa0RMdTdGZVdY?=
 =?utf-8?B?MmhTMFVXMjRwbHNQeGZiNUVYYjZOYXdsR0c1QjEvajkvcWZFa3RrTFprM2Va?=
 =?utf-8?B?eGJUNVFFeXVVUDZWYkFBY2xTSHJMY0Z3OFpnVS9TN0Q0YmIxQ0c2MGdEYlFM?=
 =?utf-8?B?WVZHMXFuNUZVZUpNbS82UkRic1VJRDhXY3hDNkJEbHhoRUJFZU1vblJWTVVC?=
 =?utf-8?B?MkZad29za1R2TEwwamhGK3NMbzQ3Sm9XY0JTYmljaHJ2a0NnL1duSXBUWXVi?=
 =?utf-8?B?RnpMcnhFUUZXL1phaDhJSmZJMG5PWUNJcnUvQTN6RzdRaUR3VGxtbXpZWjBO?=
 =?utf-8?B?THBUakpwVUlYeHVCM3lXeGJyQnhpS0dDaU5iSmFkVWpQY2tTSWJvNDBEWHJ4?=
 =?utf-8?B?UUowdTZvbHMyMkl0YXRPQnZCUzJpMFNxTklIYlc4Zmx2ZEdZQlUrUlFRbXJt?=
 =?utf-8?B?d1A3V0RMOUVmMnduTXBDSGNsYkRGbjVKTHU2aXlUUCtBaFB0ekkybVh2QXIw?=
 =?utf-8?B?blFuczNqYldyajIyWVlwU0FlOTFWaFBKNkZES2thL011OG5MaVFMdHZzN2ty?=
 =?utf-8?B?NVo1dWw0MmxzZWY0VGgxVWRVTmZMODV0QVpCT3VudHU1MDJTc1NVMFAyMGIz?=
 =?utf-8?B?UVI2UGowRzNjdzRVZ3ovTTcvNktkVXJoK1VUaDlYYlVnY0Vac09IT3RoRldO?=
 =?utf-8?B?bE43d1JxdU4zc2VQQ0ZxcllnaWxwbzhZZWFPMEIxZDZBWVJIWVNMckVUY3I2?=
 =?utf-8?B?dU9SOUlGbnpNRmRZSlN3Y3FBb3ZldHpqZkQyd0ZKa2pvbTJQOTl0OE9JR2hz?=
 =?utf-8?B?WU1BaXZBMTZkcXR0MXFkZGt5TDhJbzNWclVTZVBRUFVSZGJwNzBRbnI0aGtT?=
 =?utf-8?B?K0x6UjNMUktFZ0ZLRTU3V09TZm5aRk5hWnJVQnB3WldGb052OCtiUytwcGo5?=
 =?utf-8?B?TGRXTVNPbTZ0b1BzZUJ6Ry8xVTF5ZFArK08rbVl4ck0wc3ZaOEx2eTBkd2Mr?=
 =?utf-8?B?SlM5N2VIRm52V0ZSd1lvSGJwSi9TdGkzMU1pOGhyUExDZ0h1Q1JFSWtZTUJj?=
 =?utf-8?B?N0I0T1JoNjdDRi95RzVzeEVkWTVpTDVTeDNzMzVOc2pjSFJwZ3Y5MFdGL25p?=
 =?utf-8?B?VVBxZUViVGVlNjFMWk11K0V2U3pnUjJkOXZ1WXRUZFVFSlVRaktKM2FKS0I3?=
 =?utf-8?B?OFBvOVF5dFNQY2lOSVcvcU9jYmFwSW54QUdPSTk5RU5GeGJZaC9XaUltZmFv?=
 =?utf-8?B?ME1NQ3JFVjlFNWhKcnVETEpNTXZlNjFJaDhGMkRkc2E2dU9UNkhpMVZja1RG?=
 =?utf-8?Q?iA6IiDFl1NdwF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cERNTkxES1BmcVFTbTQzZHNGcHBHNExUaTZub3RoRW5VazcxenN5VEp3WWJ1?=
 =?utf-8?B?UUcrYjJ5dHlJZHNSbWZqRm9FTFZBV0VKMUFEZkhCTEdZdW41dnNya0hwOXJN?=
 =?utf-8?B?dHpPRisxd2NsOENyN09FMEN6cWxhMkhtekRjL1MrbnNFeDZPUW9rbm9xMUph?=
 =?utf-8?B?QWE4SnNBVDZhN1A5NGRNVUw3d2pYdG9nT21RQ1kwVjhDMVpSZERKRDRjeDRm?=
 =?utf-8?B?Q0Z4a0l5TVBRNklLdDB3RmFWWk9xL1oxVzFPdExDSWRPdnBCcjBYNHRXeHhP?=
 =?utf-8?B?b0pUeUtUYUdCZmRBMU1EM2RON3o1MzcwUjMxK3AwaWRoUXBKVHpEdU9jQjdt?=
 =?utf-8?B?Q3RBTUVDVXkva0V5WURiNVNpaHgxbFV4aE91eldEYm9LZENKV2JzSE1ncEtm?=
 =?utf-8?B?c05zYmNPL0xhUi91cG9abWh0REhYNmFlcXh5VklBU3cyRUVwNXd0ZDlhS2s3?=
 =?utf-8?B?Z0NzMXRHTFJyZm1WQjdrNWxhMHBSNzllRVA2QVF6UzdKM2FkUG56Uk9NZmxO?=
 =?utf-8?B?ZjVKV0cybU5jVnFjVlNPN3FGU3BxOWZJbHY5Q1RKNnREdTdoMUVNeStpS2xK?=
 =?utf-8?B?cTZkVDFhMjlZbnAvTTVMYzNpUGZ2c1VQamZSdlRIQjk4QVMzTUk2c3B6RTFl?=
 =?utf-8?B?eWlIc1Q3S1J1OUREbnVTS0hvQ041MUowUHhpZ01KWkRzV1Z0TU1pdDVaRGdY?=
 =?utf-8?B?cExVSWtEZ1huRkZWTnhWZ3BDeUxUS1g5bGpQOUZLM3lZaHBEOENreS9mTjJF?=
 =?utf-8?B?TWZnYml4YVVJdUFlUisxS1kvZDYwNmFmU25qWGRGYWpXSTBOSHZhNVNxYjhJ?=
 =?utf-8?B?YlRKSDB3cVVjbXVyOS9wR0tyV1RQWjNtT0cyaDlkaU9pM3JGMXZrSGlKVG9x?=
 =?utf-8?B?YmZqeVRjMU43MHNxZmR3NEZZVDk1YWRyZlpGTHZ3cURSd1R5dytkNFN4TDBi?=
 =?utf-8?B?dUdwMXFTbW1DenJGblIrQVRtTnQ3RGNhang0VXZMNkwwOEdDTUozZ2FhNnRH?=
 =?utf-8?B?SElIdlVGU082aTBhWWk2bC9YOUVuMFZRRlNuYkRKL0djL1lXS1JCdndOZWdy?=
 =?utf-8?B?ZnAzaFd2MmkxMlA4ZFlLL2oxbnBHTWEreGVBMHdGY2VkcWtyZGhLWm04UzNs?=
 =?utf-8?B?ZzdwdExkNzdtdGVmUW8zV05QcXhBMWRjV3FCMUlvMUxJT0pUelRYU3VMZVE0?=
 =?utf-8?B?NXRva2dFOGRRLzFvYVRnaTAxVkdtR091SVZ1SFNvYkV4aTl1eGZ1Qm5hTU83?=
 =?utf-8?B?ZzloNGNRN1VzMFVJOUJpV05rVlVldldrVWFFb0IwQTNrelFUR3A2OStSTW5C?=
 =?utf-8?B?dkN4TU5CQWpKWjM0RmVzQ08zc1gyRDJic213SWptT3paSWxVcFNqUzJ6cHBV?=
 =?utf-8?B?TWpYaGROYVV1YnZZM1ZrZTU0NWlNYUQ4S0xCTEUrWnNaWFBVZXJNMm9NaTVF?=
 =?utf-8?B?ZTI1aFVsWkQ0RnQwUGcwRFdiL09wVUdudFJFcGQ2Nk5JZUFsMmNXak9MT1dT?=
 =?utf-8?B?MXVUWHpoQkcxc1hCR1lkZjUyZU5WMmd0NzdVUmM0dkFObVNEdkxVa1ZKSFhx?=
 =?utf-8?B?NFlEZm1MaitrZ3hJZkdkZTRWK1Y0OVZEdmNFa3pHZzFxTkdyendRUEd0elJC?=
 =?utf-8?B?Nml1L1E4OWRGNEJ1NkZNdFFzZ3BEN200TG9hWnUvQ1M0STczYW8rNUNiS25q?=
 =?utf-8?B?VVJhM3AxbDcxY0JoQ1FXelJCTVdoRmx3TDhsaDhmaGVabDdmZW8xSUl4TlZ5?=
 =?utf-8?B?TTh2TzIrZ1o4TE1hV0prRzZsOHdGdU9xQjRJU0hFeWhValRucnBlUTIvd2Nl?=
 =?utf-8?B?WlczSEV0R0E5MFAwZHFkVmdqaU05eGwzODRwVks0K1VHTUFhZUgxc3dYYmor?=
 =?utf-8?B?ZVE3VGp6anJGb01JeTRDajlkbXpQOGRMb0dpcVQva2s3bzd0NUlTTWdsUEVP?=
 =?utf-8?B?K3BOajNNZk1Qc0NiMFdjc2dTUEJsamJZaDRqZElsZTJQU1RWaWZWdCtIaGxB?=
 =?utf-8?B?T3ZvblVzOWkvVjRJR2VuZk5NYU52SnczaWgrbjFxVGU1a3E1TUwzUkcxT3VY?=
 =?utf-8?B?enl1WnU0Ri9WVWdlUW5sN1JOcVRDbkQyOUVXVFJDQWNyYTFSd1hSSWNEdXRr?=
 =?utf-8?B?dGdVK2M3N2pTd2dwMXBrQjFEZTBEYS9QMU0zTXJiMVlCd2VTZ0RNN2FicmZq?=
 =?utf-8?B?K2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fa8440f5-f201-40e4-ad81-08dd660cb770
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2025 11:04:56.1004 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T+9E8W6wM2/kKKjicq9Lur2KzWcYnz7sUD+ndSUZavcbCTBRabYp9M8M2F8sI3No0Krv6VHu/QbAZXo1ZX8LkL5PE4Kae7Cvx2Jq0HbVrBQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4868
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

Hi Andi,

> Hi
> 
> Browsing through my endless list of branches I found a few with
> random cleanups that I fix while rading the code. They tend to be
> forgotten over the time and never sent. This time I decided to
> send them.

The patches look good:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
on the whole series.

> And I have plenty more :-)
Can't wait! :)

Best Regards,
Krzysztof
