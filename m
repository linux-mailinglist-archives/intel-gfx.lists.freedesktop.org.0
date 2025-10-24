Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88036C04B63
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 09:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAA010E9EE;
	Fri, 24 Oct 2025 07:26:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kSAUhYPD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D696B10E9EC;
 Fri, 24 Oct 2025 07:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761290816; x=1792826816;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VUR2+txcZEmXk01BYCehzTFOqm6r3TBM+dT9nPFOX94=;
 b=kSAUhYPDmCvirTb8iGnvdVivDBuYAquzCtY3x+LUVPb8plysaAP6OjZc
 vCrKibGQ17RHdsngU+MKVCXcX7LwTkyiswUjwEVkYOR9xfElwbUs4snEX
 GSHmnwwmE1MZpyGVfLbCWmA5+wZJqn7NDUby4jAiPUtcAQdmGVTT4il1u
 AbphkpBPwJPZjdJsmzlnvyaN9pI4T4y7aGbCGRp8MfTaBgpOyxi5jeKhH
 F0aLenuKfUHmz8owyJ5r3WZ6AZ/1HQvmAG4AVijHYkwCG5z+xfZGnO67E
 EAs11xfLYrl2kYyKRbA8z45f6YSNLZVsHD/BYYBnBsgSkTWBrIqQM4hMr Q==;
X-CSE-ConnectionGUID: J1wvv0RsR5Kw6hBlKpcKog==
X-CSE-MsgGUID: 5gR0ij4XQ3OhkN9w5ePoQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63174399"
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="63174399"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:26:56 -0700
X-CSE-ConnectionGUID: +LVeqPSiSm6g+43XtCBUKA==
X-CSE-MsgGUID: TBgJBwksQiKUYqIaHpt3Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="189490226"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:26:55 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:26:54 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 00:26:54 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:26:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZnKHtbLzE39vqBGNIg9QPD35+v/pcuzqHTEMEav6caRlOJ1Ir2tb2kqcY1GqCPFkWO2eXqyv8qNLsfkugEUFTMd1edmYadAdpyBRYHpuqwYivbsHcAP54Uasg6na8xsK1ttpwo6D1h91lLPmpPNOpvx0xbjEr/fnmQvX5D1Wixzil3fqubSs5fbhd8/T7dnWLROc8lHbEvOO6esM265gqLDPFoHE+CmpPsBuCd8E6b2hacF4Pp8vcRiIr5q/jds8ZXTXXWxy9hHafJnY95/NGoDCV/tGnbSG6/HCNyqIacawYekl+YsX8kDstGg1E2w2HYehVko8oiqHgOTxO2lBPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/2rpOssEoGQZBr25jxSi3DCBBvMSR+SAZ8VIbiT69S0=;
 b=jZEYOJ9ul+iynLdgin+pWszU9vwS+JK7luSsxbkPHDIfsX4/yjCzCk218ri+unor3rNoscTodL8iTNE8RIK/mAimAbS5MVCqOdMTlXTIUfC19y6lSrSCop1lTzRTV0TNxNm9KIFbsHx4E1R8boBEBmfoLsoqaxm2fLxmQl+9iU715zWPstFuftixM9uH1xQxroKlXsKjos9PBgspMw/E14FXYLjTruoDHh/gnNjiYnc2db8u+Zqq2BI6aRc165iEia7Tb4VvWZeXYCEr4SSmwT38YGM9dcMLa1F5Nw4eFPloitZpFyvGbUW8loo2N/rYUNRBkiAQBBd0PFEWQufOWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB7243.namprd11.prod.outlook.com (2603:10b6:930:96::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 07:26:52 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 07:26:52 +0000
Message-ID: <860f87c8-79ea-4c0c-8273-881610992407@intel.com>
Date: Fri, 24 Oct 2025 12:56:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/25] drm/i915/ltphy: Define LT PHY PLL state verify
 function
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-23-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-23-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0078.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::11) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CY8PR11MB7243:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e348660-bedd-448a-b01a-08de12ceb3b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R0k5OVBBenhidHBCYzZqM2k4ODN3aXNuclk0SVJ0NG9OdksvdHQ5bU5XV2w4?=
 =?utf-8?B?dWkwemhXL2tPL09kWmZORjk2MFlzdms3YWlCYVBkc2syRFQ3dU0wRnFNQlVk?=
 =?utf-8?B?L0NLbFJIdXVPaGJia0NHQ21NNzA2SVU2VExvYmJHTkl0ZWdkalVNNmhDaHpv?=
 =?utf-8?B?NUlnMEVBQVF3WnNGbmlHMmR4cU9NYUdTNWhZK1BDYlVSTVJJVjZRK2E1SE1p?=
 =?utf-8?B?UUxTRnE3T1pSN3o0a0o2OEtPejcxbHQyYWw0L09vc0ZjdktoWk0zc2laS1RF?=
 =?utf-8?B?clFZYy9Bc2h4czZ0K3NxWllpMVZldmpMaFYyS1h3eU1nMGppTTNwbEFzNVVN?=
 =?utf-8?B?aXFzbnpidE1WdExKM1QycU50TU9CRzlGREYxeC8xTjh5aFRmTDBlNG9LVnZw?=
 =?utf-8?B?OUh0NEFINUR6RERJelYrY1VFMC9Ea3drZzY4bWc1MlVUU0VJQUhZaWpyUllW?=
 =?utf-8?B?NEdEdThORlJ1dTh0NzZFaEkwZTlJb2RrWVFETEFkcG1jSUNUNXU5QUNGeXhI?=
 =?utf-8?B?Ylh5WGdSdWV6azhNNUQ3THF0Y0xmYnQ0bEtEbmRJbTFYd2hzcVdkVnByM3Vi?=
 =?utf-8?B?RmRBR0kvYmtBNnYzQ3hyR09IWkV6TGhzdmdhOW1RZkkvRUU1ZmdKYXM3MVBI?=
 =?utf-8?B?RlFoNldFQTNxNk9XZGVJU2NGNHFhNmJURlBtanFOaHZHSnkxc3lWazJEK0hy?=
 =?utf-8?B?clh6RnVlaW1EYjFKZ210TGlEaW1lZkFwNkdLK0g4M0lmR0gzaldQdlRSQXZX?=
 =?utf-8?B?N3ZpeFQ3M2orWmMrbGpqTnFvRW81eXJxZkdRTFlhUDVUYjFLRis5ajRrdlVD?=
 =?utf-8?B?bjVZbEwrVENiZ0pNMCsyRlZoZ1NpelZXYWRmZ0R6NlRUcGNCK0l6UE1Idlpq?=
 =?utf-8?B?SmRkWTMyQTl5SWhhRWNhUU9INkY4ZFhxeVpIS0RsaHU5TW9QVjloMVQyMFJo?=
 =?utf-8?B?TWhXalRoQ1ZremJucE5mSy8vZFNYano2Z3l4dld5OWJwNXBydFdScUkyMUQ0?=
 =?utf-8?B?Tk5tRStOQ0pwVUdERE1VeTVtRklBZkk5a1VnWjYyUUlsazBQUVVjQ0ZUSXJz?=
 =?utf-8?B?UFJKVHVQa2VDb3dWeEpRZERYNWhsSjMvZ1FqSEN3ZGVjcEUzUmVYWG5nZVVY?=
 =?utf-8?B?SUtHcXYvYUdMZ3NXUVlJT2dzS3E1SDQ3YUF3NHdqYUpkNFdHVTJFbDdYektU?=
 =?utf-8?B?b0gySW5hY3hZZ3djMkc2K3c1WSs2cXZXcWw5UlNjQW5ONitTeEpYSHU5REo3?=
 =?utf-8?B?NUk3a3pWc3c5WU9xNTdNYmhYenNxcHFaVGVKNy9ONkU5UWZXMGNqN3prdVNQ?=
 =?utf-8?B?REZxRUdaZWlUQ2x4czNWVTIyK2JYRU04QWxJSTYzSHRXSlIyOWhWZTh4K0ww?=
 =?utf-8?B?Q0VNTVV1YmVyU2lXZFg3aXNMVGtuQVlWYnpZa3JaYWNuc0dvcGZUbWYwaU5P?=
 =?utf-8?B?V1VHNHFVUkZXUlpFWEdYMEdFcDlqck42NjhsV1NrZEk4VTducndFMDdFODBk?=
 =?utf-8?B?OE5hc1d5VUFucUhxcStyUFdSOGFRK2phUm52QkNscG5zSXJBMGFtcXBCMWdj?=
 =?utf-8?B?Si9sUXZEcjM0MlY3RTFMMC9FdkYrUHo3Tk51NGxKdWEzdkhRM0d6RlVOc1dW?=
 =?utf-8?B?RmlWWGEvVFAvRHRLS0xCZmJrZEFOUk14UDdzK1pBOERUZ1NEZUFzSmE2QUR4?=
 =?utf-8?B?RVA4S3I5RzQ1bzVVVE9qaUtyRDN1QUtDdlZ4RVdWZmdBWUhMUmF5M3BxR2xt?=
 =?utf-8?B?VzRqM013VmUzYUh6TWxyajBlcnNlOVlSc1JjbE5uSU8vaGZ1QkZvY1c0V2x2?=
 =?utf-8?B?RlVvbGlUelpRcmtzT2l2MElxa0lMOXE2Rjlkd2dSNG1VWlQ4VmdPeEp4ajJB?=
 =?utf-8?B?RVJjYktLdTcwNEkyMXNZeGN5dy91TnJjYnpIcmRicGlYUDVwcTJEeXN2azRS?=
 =?utf-8?Q?aBodQJfoLuwFJkFjPOXMs2U5vPoeAVAo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ditKbW11bUI2WnpUQmJXbEZPMUdoZFk4Q0J2RDErakxVNUZtZVVaRG1JM0dO?=
 =?utf-8?B?V1pYNGMxZG5rTXovZU5ZU1FxV1hjWTJINnZRUHhydFhEMDY1L2NteXdnUG5U?=
 =?utf-8?B?TFcra3YrU05laUtOYjhOYVAyQk8vbW5YN0lXSHFkM2dNRHdFNTVQVm5RTGtw?=
 =?utf-8?B?YUZNaGxEc0YzRnM4THVwN0dzUFlIeW56c2lQVkQ5R243WkNjTmU0d2VBMlkw?=
 =?utf-8?B?dWZaRWdLUWx3OFM0RC8wb3FVcmxMZkFoTmFqUCtHK015eDhaclNNd1BiY3cx?=
 =?utf-8?B?ZlRGd0I0eHVTNkZWdzJyeG9lUEgzOHd6OHp5dmdmM0Z6UlcxZGNadEwxN0hX?=
 =?utf-8?B?Nm1OM3FBTzByOElROXVGS1dFaUdzTHlrMHZ2Wmxwc2piUGZUVFRISjY4Zml1?=
 =?utf-8?B?N3ZLT21rUlptNlJSRWJQNUIzMm5vZFRNYys3anhkZkxxV1ZEWlE0MnVCL3FM?=
 =?utf-8?B?a0gvSlNlbFNmUGNOSWJsZGFqalk3WHFBbnVkakhKN0xVWVhJWkxobUcwMkZL?=
 =?utf-8?B?bTVXYVVIZDhFYkE2bzVVdmhWS1FRN0huSmpuUTRSdldudWQ0OWN0ZHlVYzlY?=
 =?utf-8?B?Q3E5UWN5R3ZBcWhKai9FalAySUwzRDlSRlViaWthUmJOTW9xV2tKNVdON3pF?=
 =?utf-8?B?RnlucFdORGpnYkl4T25FTzRHUEFtVTJEN0NyTlRpem9LTnJFVHQ1VW5UUDE3?=
 =?utf-8?B?S3NoaUIzRmtVOEZ6MnUzNjZheWdLUDBVSEhhNEFoWTJlbE1FdGIwc2pnejE3?=
 =?utf-8?B?SnV3TElTc28wNUl5TWcwYVVWTmVteWI5QjBwa3diZ2lkclRRKzRLSHA3SFpr?=
 =?utf-8?B?dTJsQTJNU3V1dmxkMEllaUJnemUxd3gwWU05K0FldGJ0ZHFNSXRxTTBZOWR0?=
 =?utf-8?B?cHlJd3ZGU3VEdmI0WFlkRVFiTkQvMUVGRmJxL01wL3AwNFhmdDZ3S3J3R0Mz?=
 =?utf-8?B?cE9DNHlDVzVQS29ZeHMzZTdNay92SFdhK3BtRWs0cmgrVXpoMGdldWl6S0Fq?=
 =?utf-8?B?S2xCZllVRWJwWkdRbDlkdmM1U294bW0rcTF5S0RyWU84RTl0WE9YZXluY3VE?=
 =?utf-8?B?MkZDQWllQjVMbmVYZTlpMjJ4RW8zMHJ3K0V6dlhTTXh6cjBzOEU0alU1Ynk3?=
 =?utf-8?B?YmhEK3c3K1FCUjJQZU5BaFlpMmUzR000VEN2aU5LMnI3ZitWOFBia1BncU5D?=
 =?utf-8?B?S2lCZEx3MWFSNlpGRFVNWm92c1MzVVVpTzgvL0JXY2NoY21xNks2RFVwVTJl?=
 =?utf-8?B?VGhZSlROclVVMStPVVo5eGFxOVhvSUJySE9MOFdZNmd3bzc1ajhDamFrY3Fr?=
 =?utf-8?B?d0lJa3AySjR3U3JjcUgrd1JOVDRvZ2FQaEtQV1JYM3NjSGovR1c0MjhGMDBN?=
 =?utf-8?B?c1FuNjh6cElNWGRqQ01hcUlZOUI1NEFjZ29tNytPcjFxUVk2WXRjLzY4R20x?=
 =?utf-8?B?RGg4T2pjeUpxMU5XZXFuaDhFa0xTQ3hZNXNILzNoTG1vYVFDUVlDYXM5Znlu?=
 =?utf-8?B?RllzNE05bVljTjZHMTBIcTNYcmdhOXdlZEM4dTdpaTZKZy9zekdPb0tCYmVZ?=
 =?utf-8?B?N2Fra1kvTXViMnZuVmF3cTVoK2VSRmo3VDhSbWU3T2QzSUMxbGV1YjFRNkFT?=
 =?utf-8?B?L2Q1UUdLV29EeVRKOFo1OU1OTlVkeUFVRVptNGlMYlUyT3JRVzBiVDVEeTM1?=
 =?utf-8?B?MHkxbE5Na3lRNjQzUmMyUU4xelpGd21WTWthUmRhK2hEdlh5QnA4djd2RFhn?=
 =?utf-8?B?bkVIamtONGlLQkx4S2lNVmcwT3hTeUlRSmpjNllHVnJqYmdqcitkUGovNGdm?=
 =?utf-8?B?b0dmdFNWdXlHSHRoVEhkRzRFRWxwZ3FsYTBXWnFQdUFsQkNoQ1F4SDdpeWZm?=
 =?utf-8?B?bzRmay81aDNhRFlFZEczTTk4MnBSUnBRZ2ZndXNzbTBrNm4vQXJLS0VSNkg0?=
 =?utf-8?B?bXRLeWdwdm11eUMxaTRXVWY3VjNvQ1FFa3N4YXd5Mkg1cGFhV1F6YkdrRE1L?=
 =?utf-8?B?YmpNU2c4aWNlM1g1a1R6OEF3MXgrQlZpZTNabEs3dXl0M2ZVd0l5cHFKV3Fp?=
 =?utf-8?B?Wll5aHlJc0djb2RDK0pUQ3JmSlUvT2JRS0FmMm5oWW56QXdESFU5TlZkVUhl?=
 =?utf-8?B?ZWdMODIvYWZkVzJ1anFncGprSDNWS1Z0b3Y5ZmZSUUs2YzRlVStnSDJVQysv?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e348660-bedd-448a-b01a-08de12ceb3b1
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 07:26:52.4872 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AJ91JD1Vv3MynM0FxU6UFCye+sGBHdXx7vZqTgZt3xnkaH/Xoxrnb5V/txlSt8srH3CF/E6kKVuI5D3z8dYGhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7243
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> Define function to verify the LT PHY PLL state function and call it
> in intel_modeset_verify_crtc.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

>   drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  2 +-
>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 56 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h   |  4 ++
>   .../drm/i915/display/intel_modeset_verify.c   |  2 +
>   4 files changed, 63 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 986da034d4de..fc6cdf026a34 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3580,7 +3580,7 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
>   	struct intel_encoder *encoder;
>   	struct intel_cx0pll_state mpll_hw_state = {};
>   
> -	if (DISPLAY_VER(display) < 14)
> +	if (!IS_DISPLAY_VER(display, 14, 30))
>   		return;
>   
>   	if (!new_crtc_state->hw.active)
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 11178cd00a5b..72c3ba787e2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1906,6 +1906,61 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>   	intel_lt_phy_transaction_end(encoder, wakeref);
>   }
>   
> +void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
> +				   struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(state);
> +	struct intel_digital_port *dig_port;
> +	const struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_encoder *encoder;
> +	struct intel_lt_phy_pll_state pll_hw_state = {};
> +	const struct intel_lt_phy_pll_state *pll_sw_state = &new_crtc_state->dpll_hw_state.ltpll;
> +	int clock;
> +	int i, j;
> +
> +	if (DISPLAY_VER(display) < 35)
> +		return;
> +
> +	if (!new_crtc_state->hw.active)
> +		return;
> +
> +	/* intel_get_crtc_new_encoder() only works for modeset/fastset commits */
> +	if (!intel_crtc_needs_modeset(new_crtc_state) &&
> +	    !intel_crtc_needs_fastset(new_crtc_state))
> +		return;
> +
> +	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
> +	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state, &pll_hw_state);
> +	clock = intel_lt_phy_calc_port_clock(encoder, new_crtc_state);
> +
> +	dig_port = enc_to_dig_port(encoder);
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +		return;
> +
> +	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.clock != clock,
> +				 "[CRTC:%d:%s] mismatch in LT PHY: Register CLOCK (expected %d, found %d)",
> +				 crtc->base.base.id, crtc->base.name,
> +				 pll_sw_state->clock, pll_hw_state.clock);
> +
> +	for (i = 0; i < 3; i++) {
> +		INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[i] != pll_sw_state->config[i],
> +					 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG%d: (expected 0x%04x, found 0x%04x)",
> +					 crtc->base.base.id, crtc->base.name, i,
> +					 pll_sw_state->config[i], pll_hw_state.config[i]);
> +	}
> +
> +	for (i = 0; i <= 12; i++) {
> +		for (j = 3; j >= 0; j--)
> +			INTEL_DISPLAY_STATE_WARN(display,
> +						 pll_hw_state.data[i][j] !=
> +						 pll_sw_state->data[i][j],
> +						 "[CRTC:%d:%s] mismatch in LT PHY PLL DATA[%d][%d]: (expected 0x%04x, found 0x%04x)",
> +						 crtc->base.base.id, crtc->base.name, i, j,
> +						 pll_sw_state->data[i][j], pll_hw_state.data[i][j]);
> +	}
> +}
> +
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state)
>   {
> @@ -1925,4 +1980,5 @@ void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
>   		intel_mtl_tbt_pll_disable(encoder);
>   	else
>   		intel_lt_phy_pll_disable(encoder);
> +
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index dd8cbb151b23..a538d4c69210 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -8,9 +8,11 @@
>   
>   #include <linux/types.h>
>   
> +struct intel_atomic_state;
>   struct intel_display;
>   struct intel_encoder;
>   struct intel_crtc_state;
> +struct intel_crtc;
>   struct intel_lt_phy_pll_state;
>   
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> @@ -31,6 +33,8 @@ intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
>   void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>   				       const struct intel_crtc_state *crtc_state,
>   				       struct intel_lt_phy_pll_state *pll_state);
> +void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
> +				   struct intel_crtc *crtc);
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state);
>   void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index f2f6b9d9afa1..b361a77cd235 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -16,6 +16,7 @@
>   #include "intel_display_core.h"
>   #include "intel_display_types.h"
>   #include "intel_fdi.h"
> +#include "intel_lt_phy.h"
>   #include "intel_modeset_verify.h"
>   #include "intel_snps_phy.h"
>   #include "skl_watermark.h"
> @@ -246,6 +247,7 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
>   	intel_dpll_state_verify(state, crtc);
>   	intel_mpllb_state_verify(state, crtc);
>   	intel_cx0pll_state_verify(state, crtc);
> +	intel_lt_phy_pll_state_verify(state, crtc);
>   }
>   
>   void intel_modeset_verify_disabled(struct intel_atomic_state *state)
