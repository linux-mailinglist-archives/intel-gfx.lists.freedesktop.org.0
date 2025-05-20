Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBCAABD258
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:52:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6E210E52F;
	Tue, 20 May 2025 08:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOrTing/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE6710E51B;
 Tue, 20 May 2025 08:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747731139; x=1779267139;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gEjcUFfGt7Cbyi1D5rJmAlUoAM3azZ5d5tEamMH88OE=;
 b=MOrTing/5cToplpV37QoYTn6HbHe3VGFQdaA6qqwz8vdPiuSu/HW/km8
 jw4KkgjMRz2k+m4e/C5XvE3RZDECiLqfQWfHHoI1DRA07bCbEi6dt12S2
 U87VGoD05oNqeact86ggMihJJNu+Supm+bWIzvkbSo6ZdSW053oE3nblA
 kvuwobdnR1BLDisH7EINoEPeN2+M+U8Ahub4IZrYGQjk47JxCqkVNsEnH
 f0gYW1XM/J8VpuF+wWnV6w8YxpnvaTsZr1TR30H9T7B00VZxnC4iGsVIz
 H0ZQ4YIsRsPcXMilaoEx8Lm7A+NRlmXTOL9sEYEAFX4B4DC8GBoLYZw0A Q==;
X-CSE-ConnectionGUID: K9bn6JpRRcuASX82E9lGkw==
X-CSE-MsgGUID: OSewKXkBSbmZJmYPo8oU/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48769249"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48769249"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:52:18 -0700
X-CSE-ConnectionGUID: KZu6NOhZQu6Iqv9CRh+EZA==
X-CSE-MsgGUID: reHieorbSb6HznquQXH05g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="143625410"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:52:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 01:52:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 01:52:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 01:52:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vtsicP/8FOFTF+jUg55qAxVI4wrkBLKWIcFaX6SNHp2ywKDut8swba3IBnMHlhdfaY3CWVu78qtWjyBT/sxh9hix0QT7we+KClLibvQpgoTpQmFJyeXpVk3Bma5hbLRhsixqlspvftsi4EdLKtW9qdYk1z0l5VITpQFrkj+a5arIj8fEMsVjyBZaYJtm4QBqtPzMtgvUiYFqFpv2hV2hYKqZJiQSRGQXLPq3+s03UEmBUxFE/GF3+D8sd6lRo4EoG+R2Xhghn0b60zfJX+S5YB2ytqiW8yM0CgUHere1l/ms1WvSL6K8waF7HHhdsRWwknzxdqStznYwD6LPnHNaTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q1ow9ztnilYBfz2gNaNR/hNfcIHKSM8NauGZ5Xrj3Bg=;
 b=P2xazHASgFbSvCBOeDf9N+WN0pv2hVozmdeh0Ruox8r09Qy67gRLnqjFXMBGBQeCIDmktpN6635bJiS8wRZ9XbRIvSdyf3XQ8jxxTBYeWvqZ3DYWn9l8wabrUHbBDOulUk4298+5r6HEe1sQ5thZjyzPhj6K1mbREDdPA0tv7+9xmHPlWFTv8GKZoAW8901DKC7XOfnMgcb9OMltNnMzwnHDdfim1aoNKcl3HP5XxKF0nKdSyNiMo9E0Sjd7I93tNIOSNifbFqxLnRA/D40/qSoljheEhnYTc1+ETMvAkOyHyiFQsNEGmJrD8iJGhtKv3bRDUgfW/PU3HfEQAoE/1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7778.namprd11.prod.outlook.com (2603:10b6:930:76::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 08:52:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 08:52:16 +0000
Message-ID: <9b6b80a9-37c3-4c12-a857-84bd9107ee9a@intel.com>
Date: Tue, 20 May 2025 14:22:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/11] drm/i915/psr: Add interface to check if AUXLess
 ALPM is needed by PSR
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-6-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-6-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0096.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a59c6db-7de2-4b6b-39f9-08dd977b9eef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUdxYkVNK1hWOGZ3RXR0VVdLZXRXVmR4YkZrclFPTjhSUmlsV2d1ODhtK2k0?=
 =?utf-8?B?SjA2QXByMlJucVBGdGM4c0VkcDVrZ3J2dUZpUDBLVDBwMytkaDNDZmhVOUdF?=
 =?utf-8?B?bEI3L0JQQTZGdXdSRHZLR3JWZWZrdXBXc0FQUFk0ZEdhVXNhWVVqTzk2WXhk?=
 =?utf-8?B?QVhuem0rdXh6OUpoR3ZXYm91TXdxRDJ6TUlMaVBaWFFhQlp6OTR0d3B2cXFM?=
 =?utf-8?B?WnNkQVNQTUl2VFR5aytsZjBTVCtQTmhrOVdCaFdJTE41ekdFOHdXR3cyRUdD?=
 =?utf-8?B?ZmpjR2RuMlB4bWFlSXlSMGcwNDZkRHV2K05aMnRTZEZkS00xUGRWbEQzejNR?=
 =?utf-8?B?TktRQVZNUnBtUDI2UmhtMVZlNTA2UkJGRFdJZFJxUmNJcUpQb0l5NzAyR1RK?=
 =?utf-8?B?SEp4ZmdYWTlpdEYwV3N1SkFxRnY3Z2FWdmJYSDdUUGJNS3I1c0VrS2NWQVNF?=
 =?utf-8?B?TEVQYXlqdkt5VHprSzl5UVNjT1IvQVgzVDcyd2ZzcGFselV2a3UvallISFVp?=
 =?utf-8?B?YlpJOVUvZU9RMHk4R1p0ZGVmdlVhZUdEMXhpT2RNMUtUWTBNWnI1ZGVtMjVa?=
 =?utf-8?B?UzNxSkhMTWl2SFhEeXpPQTdTQTR0bHpaRFl6eXZWcmxCQmNSN1BBYTNTZW5K?=
 =?utf-8?B?YndoWDVldmNHbWlKQitsSFBRWGh4MDZ2L0Mxa2srOHB2bWduRFhsaVN6WC84?=
 =?utf-8?B?ZXlSdm5WeStEbzlWOU8zV2pXRXpvSm9seXM4akRkSlgzWTdnK3RCdzNVUzND?=
 =?utf-8?B?UGNVUnd3ckQxclVzdjVpbmxaUC9kVlRPMCs5RTc5SElPK0tWNjg4aHd6T1JS?=
 =?utf-8?B?S1lnWlVIWGlERnlIcmRLV1poVDdCakdhK01TUS9UT2FETFJibGg2TFJHWXBJ?=
 =?utf-8?B?RHVSNit2TDh4NXY1dEMraXVEVGZyZ3JKY3hIUDVJTkZZcjIrSVFMenRtSTVV?=
 =?utf-8?B?TmtuNm9NSXB3eUZlTlE5NzJmVDBIWTNzcUFRUTZZUFJBYUhVRVJ0MXNHSEpJ?=
 =?utf-8?B?aTlNTldRNUpOY0hjaFRyMUU5WGhCYUh2YkdIMG5vYXhCTUVpVHBtbmNZeHlk?=
 =?utf-8?B?dlUyQkZ4UTc2MkdBV213Q3RWK000VmJheHdmR2FYVFdyeU9QaSs4S01hVVZE?=
 =?utf-8?B?QytpWjlZYnZpK0N5SXNwdWc5bXRXTDJhZVhFVnZxa2dkaHNuTE5yWU8xd3lY?=
 =?utf-8?B?Si94VnhML0d6QnJPeGllS3hySFBSUDIvZEpVMXhIdjBkK0p5RDh1WC9vbFNt?=
 =?utf-8?B?UWpKQ2J3NCtidkpYRG5NTUd2QXBqNFh5QStuaG9lc2lndEZ1WlNtZjZiN0tx?=
 =?utf-8?B?MEZVQ1JoWTRDWGNMNGtkcmVFaGhjSTVoc25NNFgvaFFQU3RLWjV0MW1iNXNP?=
 =?utf-8?B?d3FjeTlWck1jU2tQcWNQYzVOT1RYTXc5bnBQSWU1a1g1LzRtSjhKeitRSGlO?=
 =?utf-8?B?OTJxQ0ZQS1VCREJIQ1ZPN25tQVVsNFY4VFJ5RFY0MEVVam50UElWdU05Yk1R?=
 =?utf-8?B?VFRnTHU2emV3Rm5sZXBNNTF3a3ZFcVlYOVRDZHllOHBHUnh6NmtZMmh3dFdN?=
 =?utf-8?B?UU5qcThIc1RPSkVSdHlEcE40YTZGSkdLUVJPUFFMcXFJQWdNSGpkQmY4eXhq?=
 =?utf-8?B?dFNPOG1jbXMvRVM2M0ZhMVMvZkVvRG1WOGdXcmtENUp3ODV0NXVQSVhxSmIv?=
 =?utf-8?B?Q2UyR1Nkc1l0NzROU3ZxakEvaFgxMnoxZUlKT3ZSZXkrWVpKMFJkTXBMWmxG?=
 =?utf-8?B?WE8wMFJRS21OSnQ4dTBtY2JKUWZsRWVSYkZqbW1VRjRGN2hKVGpQbUllSXVz?=
 =?utf-8?B?OWVJWEp0UG94aENQQ3c3eExTYnVxY3MzNUlSK21OZ3g3QkZyclFFS1ZxV2lM?=
 =?utf-8?B?NGUweitiZzJiZUdXak9TWnB1WUpQcjl3MDNPcXdQTlBhdDJuK1pIZ3R5VHBu?=
 =?utf-8?Q?gQsUzRGtBys=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cm42WlJmR2J0YXhBYWZGYTU1ZjFPRjBzYURLWnpuSXFzd0NWVEh6MnRacFFw?=
 =?utf-8?B?ZlRxL2JCaHROeTF6a2Q4RjZsbG9iNzJlbEplU0lKRHR4RGEvZFg0OGFEVXVx?=
 =?utf-8?B?MUgrcDM4QTlwbGFIU3RlRmQzVDdjakd4dHFNdzVZYUEybDdxdlV2cjZtajZD?=
 =?utf-8?B?ZkVvUVRXYmFjaC9ITlhnenhrcWNCZFQ4dHFweWFib2E4T1dtbjNiYmN0NUFU?=
 =?utf-8?B?U1ljcjlJZ1ZiMW5ydUQwcE1RMnc1Zk5GaUhiWUhza21ENmpTSWhCVHV2ZytX?=
 =?utf-8?B?QW1GcDhVa3Rvd0lITFZzZTBGVU9xek8vZFoxemcwQTd0YTJVMzVaTitERENW?=
 =?utf-8?B?VjBUU1lHcU1SY1AxLzgzVG50dW9mbjhQenlVL0pGY0dCamNFbXdnYlNLNUVT?=
 =?utf-8?B?VFRiSCtZUzFGdXFTT2JsWDdGaFQ4a2o0VTNaWkFLR3ZES3dRUlRINGZRYWVO?=
 =?utf-8?B?dGUxUGQ4emVqVjlObDN0NzhOUE1MVTFHYzZnVGliYnlVdkZ4Zm5ZaDVoVFdM?=
 =?utf-8?B?U2dEbVVYL3dJaGd4RDluSUx2emZEbzUwazJQdWVGMjZnL1V6YUZsT3dwSldr?=
 =?utf-8?B?WGFLUDRPZjB1enYrQ0txbmNPb0lBYWI5b01TYUJSOEEwZjViaDF1N1BkV3li?=
 =?utf-8?B?M3VpOW1ROFJLV01jeDFoS3pjNy9vcWI3dldJeDhETFZIb0pvbTJYT0tCd2dS?=
 =?utf-8?B?S0F5cDRFMlozZGZDV1pSa1NlL0wrbEE1SGt3cjdjTVBvRENQbUJaa24xMEV0?=
 =?utf-8?B?YlJOQzB4aXdMZkg0K3JoeHJ5Ylg4dlE2SXFzQkt2V3ErZ3IvR1RUWGlNMzJK?=
 =?utf-8?B?ZTFaZGpmeFZDNzltd0Erenc4TVBIalEvRTJsZmFGSXZzQjNKcktQb0U3eVh4?=
 =?utf-8?B?aE1ERlhDTFVhcWZiaWVGOWRwNW5HSVR6bzJjdFhYaUFFR29Ma0xmaGxvc2ls?=
 =?utf-8?B?THQvUTBqYWNwdzlrRnFldXZkVHc5T0N6b2VFeTd5dHRSYmhudE1tWGVhRVF3?=
 =?utf-8?B?YmZOWlg3Ri9OSUNvSGg4YXNJTDhxakUvVm1nNE9zME9RUWlXTVhoNGxkdXhn?=
 =?utf-8?B?VUxzdG5EdGxrM3ZIR0hBT1Exc2NDdk5IOTN6RjFySUxjNjZwbGFqVWEwVnlv?=
 =?utf-8?B?OFVjTHJxZExxZVZwQzNaelozQ29WVzVSbEl2M3FSRFBmZEIyL0pLUjhVcGVz?=
 =?utf-8?B?R0svTGNjTHdmUlBSb3ltN1ZxZVZPZ1orRExhZWdQTHo3b1g1Q21MUUpMZVI3?=
 =?utf-8?B?RUtDUHBTRGcxM1hUdE5meTJVV2hLVEFxamVQV3VDcENvM2dpUktoNENwWWNn?=
 =?utf-8?B?eDNXQUl5RFF1MHNnZjc1U3FQS2VFcXpLNUtYM0p0T2ExUFltMXM4bWJnRElp?=
 =?utf-8?B?YnFWNEpTSzRkdmJBTjNLSllLUVh1TjlYakp4dnB2ekQ5Uk1hbml0QjREWmlG?=
 =?utf-8?B?eHpzQTd4MXlTb3kvMjQvRkhoTHczRUdmU2w4bVVCNzJ6bmcrb1JzU3ZQMVY0?=
 =?utf-8?B?Y2ZEc05sYmNFVDBNblhkekdiTHFXaGQ3SUtCM2Y4aVcrZFVNcXZHY3RxTEFs?=
 =?utf-8?B?eCtMNzR2N0NwOTlLQzFORVE4MDBUN0w1MHB2aXhjSlRwSDJ0djdTUjJ0amFO?=
 =?utf-8?B?OVRpdVZsNWorUUo0NEN6cmxQQldFNEs5SWhYYkVmUStNUUdxUGU3ejVkeW4z?=
 =?utf-8?B?Y25udUp4ckhVTVNxTGpQV3A2ZWw5MUc4aWRnUXJpa3U5OG5zYWtHSURNaUNs?=
 =?utf-8?B?ZlVoWmZWbGJTRTlKUG5HMlc1YTArL0pUTkdwT1QzZHdKOXVDekNPL3NVVnRu?=
 =?utf-8?B?MDk0VzBqRnhOVjZZczkzY2RBc3U2VDF0ajEwcGlFMUlGbXRTZi9EZ0RDbFg0?=
 =?utf-8?B?NFdDb0QzVjZKNzgweWlmR2J5M1JrU2VZL3lERStyTCs4dmJVR1VYM0lWQy9l?=
 =?utf-8?B?YUU2U0Y5K0lUS291WUVUaTltdG5kbHJjRDRVTkdYaE9BYTZLVXRTb09YTkhl?=
 =?utf-8?B?VVoySUgyRTl5Wng1RDhvQnFZWThiaGZGQnVKWVNOekg2MElhblBYd1owWURZ?=
 =?utf-8?B?Q2hYZVZvNHhrbncwM0RvRmZSZkN3eGxEYk1CcC96emloLzFEU2RZWG02WVFU?=
 =?utf-8?B?TVVEMVZKeW1pUXZBeWpBck1wSGYvaGszQk5qVjZqVG0vdjBBN3lOeFMyOTM3?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a59c6db-7de2-4b6b-39f9-08dd977b9eef
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 08:52:16.3528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: se7TGxaU1VVR9JrtWXxSKlAcb7iGm7okn/JLGI7hdMVVfcukx1qG+Jz7Es7V9Dar8G+mHHfERzDRtL9J7dScTdr9OOHRwUr6MtbZF4R8bW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7778
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


On 5/2/2025 2:28 PM, Jouni Högander wrote:
> Currently we spread ugly PSR details into ALPM code to check if AUXLess
> ALPM is needed. Prepare to hide these details to PSR code by adding new
> interface for checking if AUXLess ALPM is needed.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 14 ++++++++++++++
>   drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
>   2 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 2d78d64b8db8d..8d8fe1c34479d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -4227,3 +4227,17 @@ bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_sta
>   	return intel_dp_is_edp(intel_dp) && (crtc_state->has_sel_update ||
>   					     crtc_state->has_panel_replay);
>   }
> +
> +/**
> + * intel_psr_needs_alpm_aux_less - Check if PSR needs ALPM AUXLess
> + * @intel_dp: Intel DP
> + * @crtc_state: CRTC status

I think you mean crtc state.


> + *
> + * This returns true if PSR needs AUXLess ALPM. I.e. if it's Panel Replay in
> + * eDP.

Lets use `Return:` as per kernel docs.

Patch LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> + */
> +bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
> +				   const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 73c3fa40844bc..0cf53184f13f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -77,5 +77,7 @@ int intel_psr_min_vblank_delay(const struct intel_crtc_state *crtc_state);
>   void intel_psr_connector_debugfs_add(struct intel_connector *connector);
>   void intel_psr_debugfs_register(struct intel_display *display);
>   bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
> +bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
> +				   const struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_PSR_H__ */
