Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A14AFC87F01
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 04:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DCE110E505;
	Wed, 26 Nov 2025 03:21:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WF3MLebp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630BB10E502;
 Wed, 26 Nov 2025 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764127285; x=1795663285;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pdjhw5DBkp+VZwasBq9O09aQUNlM/b3DRJE6g6G3Qac=;
 b=WF3MLebpxtMOqmrbF4aiwU4Zx9zipEhB8HPspgTuboGvohbRaSPWC7Zd
 4cuD6yopLBLqn0k5b8f8y3ghjALNHSuAJNR9DCeDA08Ejo1RngxH9F8Vq
 zw/MPZ32rov6g0evsVYNl1storQHeqN0TsZW7tSRHbj9HQhxhodL6YEYn
 akBrfJmW2PxJCBrE8P8heYIyc5goBEMoL5ump1bAGozBIWnuDTYsiCg1o
 r8apvqOkG5qy5hRVpMh7Snb7zsyLcuLI37RCEl43IpAIuxM+EQHWSq3eH
 Gu0+8VohJaMaEP2qY0Jso5Zx2hMH85YaRAFBxJYQ1qL+bX6jCJDtEtKMD g==;
X-CSE-ConnectionGUID: LcLwElq8Q4mUYOfyqqfs0g==
X-CSE-MsgGUID: Jw4SrS/HTPuTc4x1Pb/Y4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="91644429"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="91644429"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 19:21:25 -0800
X-CSE-ConnectionGUID: UDVna6KNSSKvlsvWAjysGQ==
X-CSE-MsgGUID: kH43I0pXSayW2IBi+bwtdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="193255087"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 19:21:25 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 19:21:24 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 19:21:24 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 19:21:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q//YZgqySHT2wskv+Ft3ZEA+sWDEmEdrEzEOwZ2tW2FBzlp6/Hbi0UXnPovRWdlRxBRNpP3EbBwIQVhpg9DLXJ1HmAHK5Wj3nazBX5pXuJ4EiTV/ukWgRpu3IgCIABKNs/FGvQTcmSfV202llMp8Qth+LgrptHRNI6bVYHl+3R/QMqnDuSnbKCHzYllbGPUfXnUxZVy1lGcfWcdIXYVvw3Ikk/2Q9c9UTbCNGPqKc/iMdSpH9TU6E87ob8SH5R5jAX0E+l9vm0cT26sSaK5xEN1/ph3mUTHisZa5Lqm0zm6xx4U3ZCGeNEd8+LUlaE1JfPiLNx3Zkcrngtp2jjWUyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZnuGzvnSZ5OpMpXluELgeFHQK2F8WxyUR0du1CWhXSQ=;
 b=HA7wScsWjSKKzD4KNFzPLYRDbzgIfFnLy+/AGtRLsUthNcDRn/gtoWnvw7aNTJ2ihjFfNIyfDZ9DaGlMIDb4UU1t41muhDwHwgwekFaRhYYuTp+W6Iv2w7pjRWBQIGkJxZvepUUxly1MhAkolv1LgWoU3MvxBkY3eCkUUk8mwq2zqzYblKAka2Sze/SgrRXySngdx6cw0v5lApVep7GS/pSap5uJQcZyqWAcUsWNju14TYeW6572NRMtk5AmC3gWj4h0vZ+VtacvfqseLk10LE1KU5hzbTYkC5VNQQq9+5kGJEVdctEshmIaYopV98zBKdx9BBpMcxqJdpp9Ebn9uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN9PR11MB5258.namprd11.prod.outlook.com (2603:10b6:408:133::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 03:21:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 03:21:22 +0000
Message-ID: <27efb1e9-9d3f-4392-8d7c-a98facee74b6@intel.com>
Date: Wed, 26 Nov 2025 08:51:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 06/18] drm/i915/vrr: Add state dump for DC Balance
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0186.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::16) To BL1PR11MB5333.namprd11.prod.outlook.com
 (2603:10b6:208:309::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN9PR11MB5258:EE_
X-MS-Office365-Filtering-Correlation-Id: 0dd0ef36-2dc2-4f3c-9b10-08de2c9adeba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bldCdUJpMzJYRnE4T3kxbEpCZGZYNmlTYkZmTWdVSEEzZklWT0RPRFAwRW00?=
 =?utf-8?B?UHVGSWFEelNwMS9PRHNBb1NjT0h0RVRhWUJIempWa2N4TVF2VUpQbE5iN0RD?=
 =?utf-8?B?YTIrNldWQjdRRFlkN3dmcWZkOWNzeUhXUFQ2N2JCeTArekhaZ0ZLZm5FSncr?=
 =?utf-8?B?V1U5SlBVZ0tXVFIzZklCNkVsb25pRjRYZ3hpZjVZYVp3eGhnNmFQckovbnFV?=
 =?utf-8?B?UWlXQUg4TzN4eGxGU0czcjQ1TjlHRS9sWUhiSHdxZkJUQVl4YkV5OUpsUlhQ?=
 =?utf-8?B?NDlQTndEMmtNOFRMWERwbXRQWGRTQUlNTzY3SGhld0ZUZWdqalgwTFdiN084?=
 =?utf-8?B?QitjMUNLUSt5WjVqZy9NbGUrK3ppSldsQmJWZjNYamdmVVlzUTdOczB3R0t3?=
 =?utf-8?B?WFFKbUxjemYrRWZTMlBmbnF1UmdqSU1UbGpLNDBDbXMyQTM3aTlNakdsS1hO?=
 =?utf-8?B?NlhXS1Z2NXFuc3plbG83Z3FoWlQ3a0Njb0ZKUDdMbVFvOG5ra3dNcDc2ekJj?=
 =?utf-8?B?VTZySlE0VEdlRUd4eDVkMC9FR3RwZFdvblI3WEd0SHdKT2hORUo0MlpaUTlJ?=
 =?utf-8?B?VWxvY3kwN1BMMldiU1h2NGhLdGZ1NGxwK0RnYUhIMytuNFZ1a295KzRDRy9Y?=
 =?utf-8?B?SExXY0FQQ0JtWjJRWUxDOUcyTHAwcCtuWk5HSGNtQ2U0S3lONm4yRkptT2xr?=
 =?utf-8?B?MDZWaHJBYnZGbUttbWdmTUpSRndMYUtBNWpicVAyLzJSYTRwZVZPV1JLWE13?=
 =?utf-8?B?N0hFNlUzLzZBelBPWHJhWHlVOVJFVnYyUmFRdy90OVN3WGZsODRhQnNvWHRi?=
 =?utf-8?B?a3RUKy83aGFnMDBwdFc2S1d3VFJqREtQV0c0ajRZS2RzMWpPTlhrTHVvdVBI?=
 =?utf-8?B?UVI4TGFuRlZ4SVVXV0EvSmVFN0h4NTNENmVULzJLdnpLYWdrS0RhOVFFTmFG?=
 =?utf-8?B?TmxUMzVFVlFCc1VkaEtYNVdiaC91QVlraDVWMEpBZUs0Y1dqdERSSURJT0w3?=
 =?utf-8?B?WWIxNWFEVHF1VXZNY2wzaWs0eVkzajBRQXZhTXpTTFpXV2UzV2g5WDE1bmZI?=
 =?utf-8?B?TCs5TVNLM0RrUFU2dG1sZTE3VlJRZEUzWUkvdnJNVy94bG03TXlFRHJEYTg3?=
 =?utf-8?B?VFJudlQxSi9yanhRY3NNc2JJY0JBUlBXd2J2TjdrYWxSTjN4eXVzdjdqaEs5?=
 =?utf-8?B?T1JrbkRuZnVWRE4zVUZPUHZnWTNlaGVCalhZelNwRUNRQU4yNFcycnJycjE2?=
 =?utf-8?B?ZjZiVS92Q2Fhck9YU0RjUkl6dUlKNkVHNTNYcElnY0RjREtXL3pNUk5pQzJv?=
 =?utf-8?B?SU5nK1lLTEVTYXYwTUVSYUhFSW1QbS8vbHZRaUpDM3Jsaml5dE0xcVlMbmxP?=
 =?utf-8?B?N1RodEt6TThSV0xBMEVrQ3Vjam1Oak0xYXdxeFdGYUd0d0JDRHpUWkhTT1VJ?=
 =?utf-8?B?NlRLMmxmaFNrTGM0ZnVvM21lVzlhSlV4SVBGekxJZkw5RWpZcHV2Zk42REJo?=
 =?utf-8?B?cGh0NDNTQnl1eDBYZjRROUVFMStWV1gwZmExaFBpRFZhaDBCWHhTN2p2S2xS?=
 =?utf-8?B?UlFWV3dtb1JXWmVQejNkSExOV1NCVkVzNjNxSkRONGhOOGRQb3FNTWd0NmtD?=
 =?utf-8?B?dmhNM1o1L1lRQVpoVFQrRDRKTUF3T0hPTGVGY1B6bVRabDNKdUNYRC9QeTZL?=
 =?utf-8?B?a2dtOXZvM1p1Mm80Mi9vM1RhVDlsRTRhaG9ZSjRUSG5xd1NoNHNRdEt6d3VF?=
 =?utf-8?B?dmRWVzExa2k5MG0yeXJxajg5dVNwbE5pak1MUUNMZkIyUzArNlNySXQzRUtR?=
 =?utf-8?B?clVjY0NHMzNVdVBIdFNZUDRkWGs1WCtBZ21MOWtZb3pwNTNXRXRENnpnbnJN?=
 =?utf-8?B?alhKMi9mQSt1WGtSRDBFWEJnb1lzY3l1cFExSmYzWlVpc1UwVWYwOWE5SHZl?=
 =?utf-8?Q?Icu1BAvSevK2kBYdcPWbv4S8TZpkAWtj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjRMOTRJU1NSKytZMDJlc1ZLR1pmM01SREwxV0IwTE9meHRqcUVIS3ZBVlNU?=
 =?utf-8?B?UFd3MzFYQWdVeERYUGhOZlFrRytidnhRZGRzOTh2RTR5UnVPUFQ1SW1sdlYx?=
 =?utf-8?B?Q0hUV2gyZHlyWVlwb2lkZTFYMjBibjBxMDJHMHM3VndHOWprNjltZTFucldS?=
 =?utf-8?B?cWF2NW1Nb21zN0dkK3pndFlXYUM3WDRkbElkeUpGWDQvaHJ6clJ2RE1EdFdQ?=
 =?utf-8?B?c2lieGdiQWpkbHR2azFzb08wNFc1ZnJRc2ZUWUU1ZUVYUUZmOExGY1RJTEc3?=
 =?utf-8?B?U1gweTVCMXpVMGlaYVhzMEZIczB5UmwzVzhDajNwREhhMG1xYUVMRTRTOFRI?=
 =?utf-8?B?K3FaMDhuSmc4Nk9tN25ZMjVCbnBVMlNqOFRaMlNLY3g0dWFLTkJmNktrWFZn?=
 =?utf-8?B?K1ozMTJTZ2JoNzFyVHo2SEVjU2NaeVNJOFBOemNtUzdQeGkyY2VLMndpQjFN?=
 =?utf-8?B?T0gwc2NPck4yMzhkNGVhUHBycklzWWFkMVFDK0lrdzJ2ekhiWEx0ckNNYXFy?=
 =?utf-8?B?SVA5RGZqSmNRK3F1bUlhVUN6NDM0ZlZwUTJkSlcwVThWSGt3TnNtdXRGOWta?=
 =?utf-8?B?Yy9OUzJNY09YdGR5cVZlNGg3Mlp1cEVPZElYZlNtVUFFUmhZcDh6TTZ2dGVR?=
 =?utf-8?B?N2dwNjBQWG81RW1hS2dNa2hXdHBWNkJaZ1dVVlJKVEp1NHhwTktMcXhSVHZT?=
 =?utf-8?B?aTQ3QXNSbmhkcENkV3Z1QXJ3ODNJV0pUdVdVQ0NZYUFRTHVtd2JIL3BVQXZ2?=
 =?utf-8?B?dVFGRmhiTjZKWmpiMDYyZVVRazcyK2Q5Q3p3L28zTHZTblIvY2VIa2xRR2t0?=
 =?utf-8?B?SWNieitqc0txa25WdDRob0huakdkKzVEY0VaR0lPZGcxcTNjMzE3WmpKZjMz?=
 =?utf-8?B?YXlTQmZrYzVNalY3enNZa0F4TVdHbVpNZDBRYTN2dzRsSllQSENiSElJbURC?=
 =?utf-8?B?dWZHM0gxM1QrMlhwNHdacDZiQUpiTWtEMmc3Z0hFNXVlTFNFOVh1ZTh1cmNW?=
 =?utf-8?B?d1pPeGZPcndMS3VkV0RrM0h3TkNNNGF5WTR6MWhGajZqb3FFUzlIbTdyWktn?=
 =?utf-8?B?bGkwaFhvM2pxdTB1bXJoekVzM2RIdDlpaDFCcU1GWWdBT2JaSU5uV1UrN2dy?=
 =?utf-8?B?ZG1uUFZtdHpQNkN6V3g1L09ML3VPYWlJZUNkaGswZ2RJbE4vSlhqaGk4MzJl?=
 =?utf-8?B?TTJzK3ZEcWNDTHFGM0FhbW1nN1FwaFhXcVNBN1JxV29aQnhXaVVrNTlsTUF6?=
 =?utf-8?B?aUptTmlqMmM5Skk1Q0RrTTdxNFFqek5yaWZhVWo4THhUc0wwWUNTNTRrMWJB?=
 =?utf-8?B?WWZ0NUQwSlBXa0VTQzRoRU80ZUp0cnZrTVdJTW11M0VWb01XWGlaSmFwQTcx?=
 =?utf-8?B?SmxXVDVmV0RQTGk0UHNxd0FHTHphLzd2Rm5pbjhTRWR3TVowZ3hDM28xN25a?=
 =?utf-8?B?dnFzbURuQy9ySFZmUnYvQnhVbmx2NzhMR2hhZjlNS040cWd0Y0RZcEVldnhy?=
 =?utf-8?B?S2tscW4xZlBPZ3RWWitCUHlyV20wZjZUNEVPVDQxNUgzU3JGNmZXSjdaem9V?=
 =?utf-8?B?cUgvRWdCeTFrSmtyM1RndXU5bExleVNZeFNvZnhHdS94UkR6K2NjcVI4Rzh6?=
 =?utf-8?B?NWUwKzZhbmJoMDVQVUZWWHRPME80c041VnVWc0swQTlSM1NIU1dhYTdYYTBZ?=
 =?utf-8?B?Z2lRamFualAxV0FPRnloaW1iKzV5Mzk3NzlIUllkZDdtemxRU1VUWVRaOGhE?=
 =?utf-8?B?TGdoM0RvSjFvUzJTWHcxS3RRY0NTb1NvV1hJY2ZFa1BUNW9mZThpRUNJcVVK?=
 =?utf-8?B?VHJFZytkNFIwR1p4S2pRTkNlN3AzOG00S1pTc3dDWlJaQlRhSGFaY1VpbjND?=
 =?utf-8?B?YWJPdFE2by8wWnJ3ZnhIbFNlL0kxS2JDK25HSGtUQXFkNWttLzVURmx4ZUJj?=
 =?utf-8?B?dHhvT3p2c1pJUDgvekFBb0hLZ3VjM2RxTEFPZXdqdWVFSHd3UUppUzJtRXhs?=
 =?utf-8?B?WVppdDhyK0JSSERqMjFwOU1vSEgrTHpXS0lUUjBxelBXSWdmTkw3Sk1SRGtZ?=
 =?utf-8?B?ZWJPRUFDL2hZZHZ3cENseFY3YXFWaTBiMUFXc2FIdXA1QVEybjJYY1k1eGlX?=
 =?utf-8?B?RlBraDIvSFZoSGF0b3NLVUFJVTVSYUx3RVF5clR3YjhqZFIyUllxRy9Kc2NO?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dd0ef36-2dc2-4f3c-9b10-08de2c9adeba
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5333.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 03:21:22.9657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4/xyh02IH113WV7JEYRMxHjMIl0DrfPKmfW0PPjuHwZefsFg6nBD8JYWojNLHLP1RUbiJwqtTUN5UTbAZqSyuwBYNPWJp8ehqcYL+odpb2k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5258
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Add state dump for dc balance params to track DC Balance
> crtc state config.
>
> -v1:
> -- nitpick: s/Vblank target/vblank target. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index c2a6217c2262..234843b8f83a 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -303,6 +303,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   	drm_printf(&p, "vrr: vmin vblank: %d, vmax vblank: %d, vmin vtotal: %d, vmax vtotal: %d\n",
>   		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),
>   		   intel_vrr_vmin_vtotal(pipe_config), intel_vrr_vmax_vtotal(pipe_config));
> +	drm_printf(&p, "vrr: dc balance: %s, vmin: %d vmax: %d guardband: %d, slope: %d max increase: %d max decrease: %d vblank target: %d\n",
> +		   str_yes_no(pipe_config->vrr.dc_balance.enable),
> +		   pipe_config->vrr.dc_balance.vmin, pipe_config->vrr.dc_balance.vmax,
> +		   pipe_config->vrr.dc_balance.guardband,
> +		   pipe_config->vrr.dc_balance.slope,
> +		   pipe_config->vrr.dc_balance.max_increase,
> +		   pipe_config->vrr.dc_balance.max_decrease,
> +		   pipe_config->vrr.dc_balance.vblank_target);
>   
>   	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
>   		   DRM_MODE_ARG(&pipe_config->hw.mode));
