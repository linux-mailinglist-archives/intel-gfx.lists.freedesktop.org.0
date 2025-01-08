Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D65A05849
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 11:38:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CB5B10E85A;
	Wed,  8 Jan 2025 10:38:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EaB1odWk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73BE010E858
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 10:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736332682; x=1767868682;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ueIYphmFOb2znfHytPYxM9gKN4Tv53YI11xF4i9WlW8=;
 b=EaB1odWkbR4fbUdxkesFzpIlm2+3sN4X8ouJW+mKZCM5JD8GPp0Iikij
 4Czcn6tv73UzIhpBQz6Lux5+fX+qs4ykzoKxI6XKv0Uc78KaIiP5ha1x9
 l8ri2XxObKxcyKox0R2PsyjjLCKD/nFkfOY9OcybJ68qZtbdRlESou7sV
 zLMcYNpy3+S8T/jJ5U1IjvRJSrWobnUWHpmzSbODVHjYc9lTxT73IrM35
 XqWm4ghZErgbgg6uGZLAWoMNqfq0QH7f9G7V4NMk9k1VdLnWB/cCgqqCU
 I5a4QnFpYDAV9nUKG4NEyrBaKVOYKqTA/JYTCr0EB+zPM1kIxSRJ7xaPM A==;
X-CSE-ConnectionGUID: z50G35mVQOCPu7c0ExUqxA==
X-CSE-MsgGUID: I25LaxyVS0+C/ZQlPgUPpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36665982"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36665982"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:38:02 -0800
X-CSE-ConnectionGUID: 1XrHm47GTbyqLHQTVe51IQ==
X-CSE-MsgGUID: mecNVRGwTuS/oqRDV3Pr9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108155251"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 02:38:01 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 02:38:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 02:38:01 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 02:38:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g97VI+sPFXQ0ufv7dIabwtKnHqQlDritjTL++Zoi6IBIsaL7F9aWsRy/7zeYn4ez1HppCwtNMj2V2k9jvygXgUHkD+nQ2RBGbLosdGF4kkPyktQZKDGKCf72rQ8Yorg7QL/0Xki8K2i9q/E1mk1wTt2MqsiMCOhJcqj+4idi6PH1RwbdWVc3FTcmH9Ih1z9R/CnknQRDWa5LBNe3CXIpr665CnfDpptgecROhdZFSK+cLtNmmiBknlO+hjY5c/6+k7r8cfkbgsKhb//8h6e54X9VI3HhylMw1VLPo2oTSN5yS75E5nczLjfo3f1t5N2T5q9HxcjipL8Z6t9/pwk1eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NuZuoe3Tt2dd1ffB3jriT/ZWj1ZktxoJGaig4WGmiwU=;
 b=EZHl4UyTZVCj1rP35syiJA0HP7pL0tHsidt1NqTs7gQWJTYdOKezQe4y1RIcfBqtqW9aGgrUBCdG6kBIbwXIbyOtIqWTq4z4gJJyOx7Z7I2IHJku4BtPhNYEHLdbZ90DaikQiZIa+pVXnQvLfexdW2RfAzmaZl3vA5tfjyOnF4J5cOOWuVSGmJ9PPetBcbMoEjNHHScnVoQ/Ojh8q/KLSJSThO9wKQ6VZufWUM0uET+kjF6ROk6vFIXWZ3NHoQZElH8DKjjnEWTbdFC+M4M7K5zK8qyDW80kJwJPXc0yvMya6qvMzqsvCPFFE1WoS0lU/CqRji/eJz27BJ9kRsiTQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Wed, 8 Jan
 2025 10:37:59 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca%3]) with mapi id 15.20.8314.018; Wed, 8 Jan 2025
 10:37:59 +0000
Message-ID: <732690ca-3766-4933-b63a-4c3df02d65b9@intel.com>
Date: Wed, 8 Jan 2025 16:07:52 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
To: <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <karthik.poosa@intel.com>,
 <badal.nilawar@intel.com>, <ravi.kishore.koppuravuri@intel.com>
References: <20250108044858.3825662-1-sk.anirban@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20250108044858.3825662-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0251.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:21a::17) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|SN7PR11MB8282:EE_
X-MS-Office365-Filtering-Correlation-Id: 6753fc58-a0dd-44f3-9d86-08dd2fd08502
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VTc0ZVZOSzllR25BMDlZQkcwN3BsRDdScU9pOUtDenFiSkdUWkJTR1dScmhK?=
 =?utf-8?B?Nnc5RUllYXljSkE0M21RZ1VzMlpuVFZSRnFPZWZSbFo4bFo3ZUtyUHdudXh5?=
 =?utf-8?B?UnZVbUFSaFQxa01iNUYzWnJ1eGxhbTRNWnA0eXlZWm04TER5TStDaFYrSWcv?=
 =?utf-8?B?UkxoeGFrdkhBOCthaDF3N0tGUnhQNUhWSzZpdFZHU29ldWdtQ0pNanFIdWhR?=
 =?utf-8?B?ejZQWFBtNGRQcFdBYkVrUnZmeEdYZ2Y5R0FDNE9hREY2cHhpTWlKZEN1bU10?=
 =?utf-8?B?bnZJWGhCY20rcW9FUXFGR3NmdnVpeUtTWFQzUXFEajNlVjVLRUQrb2prYmdw?=
 =?utf-8?B?dVUxN2RvOUNoSVNXMU5mYzNnMUtNTzM0RXNIMEtHNGs2V2x3TkRacGlTeFpG?=
 =?utf-8?B?QXFrVy9XRTJndW15MWhZZklOSms4MnRFVXJ0bHFPVjgvVTNCMDRqQU5LeE9a?=
 =?utf-8?B?QjBnQjVBL3Y0d3VtamlhWkxEMzhocGo4bE5mU2llYkdpOE00d3poaXVNTnVH?=
 =?utf-8?B?aWMyS2lqeXFxNDRNKzVJUmREakxlZ0lXbEtPQnJwSzlVaEw0S3E3dHZlQ1dO?=
 =?utf-8?B?RGFtdzNvTmUvN2pOQ3VzZnRweWpIRFM1eHBicnJ5a09CVDJoWU5HNTVOdHhH?=
 =?utf-8?B?Q3A0M3Z5blVhN3Z2V0NYYkd6VFNoYmNxVlo2NXBLN05HRVVTcEtCY0FhUVNq?=
 =?utf-8?B?c25lL0xwTEQ4RkplbXhsSTQ1VzR4WUlRb3c2cFdOSXAzbXVMazdQYzRhODFN?=
 =?utf-8?B?NCt0bG56MHFjOHJLcmo0TmNza0wvYmdCdk9lOU5FMDJ3NnlBVDJxc2trUEk2?=
 =?utf-8?B?dGtwM2RwK2N5eDc3ZkJQVzdjcjlVSXdlczlvVnlWNzQxUWZjMk1TbGp4WVBI?=
 =?utf-8?B?QUVhTkZOeHo1Zk5Wb2JFMmdSNXNONjhRbnVJZ25rcmg5VVNEWnBEaEkwdDNz?=
 =?utf-8?B?SzFPRUVqSGNLQkZUb05ZVkJCWmVESllrSlN6Y1JqR1BYSzYra2duTjlXdllQ?=
 =?utf-8?B?NlF6SEM4N0tlM0xidjNWYVhrSncvT0dtS0RHZ0NHYWdGY0RMR0NESG9YWGdQ?=
 =?utf-8?B?ZG00Q2F3OEFQV2tGdnhwa1k5WUEvcTdrc1Y5dkczMWZyVFN3c3lVNmRCSUo5?=
 =?utf-8?B?Rm1iNDlaNXlMUTFoZ2hXVTFjRnNtWEIxMVhNa2tLVnM3dkp5M3pvTUlCR1lF?=
 =?utf-8?B?YnFzaDdQNlVqZjJ6M1loci8xUFFjTExkcVgyVWNwQTVQZ0xTL2c1VVpDb01k?=
 =?utf-8?B?V3dwdkx3M245VmV5b0tBK281TE5vN3Awc1hQcC9NT0VWdDdjTUdOTDllZlFG?=
 =?utf-8?B?dVFPQ1QzVVY1S24zUmUwbVpBUi9RYzF0cER2d2lzbU9kckhCbnl5VVJudXNN?=
 =?utf-8?B?ZzVXTXFIbndHWWtrS0tIMW5tUzJkZ1ExZjZwdlBWL2FQcVVPU1hxeW1UUmF2?=
 =?utf-8?B?NGcxV1RSTjJoeVhuUXdxWnVTSm9kVko5Rm9pT012OUs0aVlvZGtTUG5ubUZJ?=
 =?utf-8?B?Uk1NcnpLWFAvQ3RVbzF4TmNsMC9TNUt4M1J3SWltTVpkODd0VFNOYnJoTHlq?=
 =?utf-8?B?SHVONURoU3U0LzQvQ1VDSkMrRmdJblVpYW5Qd1hGckl6S3lGcVZORG51VmFo?=
 =?utf-8?B?YVg5QlllT0lsaE1JeHlsOHMrWWdoc045b2dzOFJQSE1GY2E0SzNiaHJ1R3pJ?=
 =?utf-8?B?Lys4aXowTzBGQU9uUFptT3lQdW9xRU5BNTlNUHIyUklBVkRuMm9icy8wU1BR?=
 =?utf-8?B?aUlYNzlReHFubldzcFZ2UCt5U2d4SUZmQndlTVpLU3RURUsrQWhNdXQ1M0hB?=
 =?utf-8?B?dlRpRFNNMVozc2ExTHhvTzhxeEo2T3g5OXRXVTZFL01KR2hvY1E2YTFaeExz?=
 =?utf-8?Q?Fgwnm/4NE5I73?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NllSS2RiWVlkTytud2htY29jUmYvL05GZzJaYjNTV0lDa1M3SExlNmpqam1k?=
 =?utf-8?B?bGh0bFdyaW9sa25DTnM4aW8vY29NcHcyc084ZmR5TWh0RDBjak9tenZvUWF0?=
 =?utf-8?B?T3ZzaERYVmdMK3pVVW9PMlVQYms4OU1RUm1IbEUxT3Y0NktLOHBZSHIwZndC?=
 =?utf-8?B?dkxVczRtNEYrZ3FhMk1tY3FtZ0ZScmczaDNSbEZzZUloQmJHTkQyTWtUVFo5?=
 =?utf-8?B?WEx0M3o5Q0kxa0MyNFZ3OFh2VjJ3OXZqYWFCQTBJYWJnU3BvMzVLNDhrSWRm?=
 =?utf-8?B?R2FJTXB4WUJBU1N1U2N6Q1lQRnlJVk1BVjNpRzV0R1hPZzNSZFFqaFE5Z3ZE?=
 =?utf-8?B?T1pWajhueHl4NXEyd1NFendnZDRXaUJ0WDZNc2lRMVZaYThhMVZidDQ1bVlx?=
 =?utf-8?B?dEp2R2hEZjRoRWp6VVVSZFUwMGlKTXF5Q2tDRWcydWhiMVpaSjNwZ1NESy9z?=
 =?utf-8?B?VGF2SG9nS29KV3c3QTgxeHhXODE4NzlsVnNOZ0VYVytTd0NtMjdJeWV5Y1Y4?=
 =?utf-8?B?SFpMZVZvdXZ0Sk9mQTNKRU1FRUc0R2ZjblI4OXJTQW9aQWdKdnZUR285UzNo?=
 =?utf-8?B?REdZcVN2aVJhdW1nS01HMkhTZ3FhUThlL3BCQ1RoNWdQYllzMkg5VXN1dkE3?=
 =?utf-8?B?dlpqWXFkU3BzZEZ1R1E2UXhtVEhyVzR5ZlBQWVU5RE5EeWYvUXhtRVM5N0tS?=
 =?utf-8?B?cUpDb0FQbjVwVXVqZ2daanlqZFFXODhuMkFCWStCN1JSaU0yTGh6cURqYW9j?=
 =?utf-8?B?U2ZFK1M2aFhjNnNxLy83NUE3aFNRVlRJUGhyeWdRU3ZTa2Zmbmc5eDFFb2dv?=
 =?utf-8?B?a2VtcktVYVlFcC95ZUQwOHRxVzg0UDJhcWR4WVhrY3dycTEvbVA0WkcvR1dV?=
 =?utf-8?B?SnZEa09Dc2JtaTh2b2xsd2hJZnBIa1JpUFRoalZOMjlGL255Z2NzUTVKQ2w5?=
 =?utf-8?B?amZ2M0ZnSFRSamV5SWJWajRLVmlWSXdGcGhJdjNTb2pmMWc1akM3dUxrcDlQ?=
 =?utf-8?B?eU03RHluSTJXR2FKbFJlVG9FWFdrWDltR1gvQ2J3VGoyenBpeXJmNVRxNFgv?=
 =?utf-8?B?UGthQWpSUmxUdWc0ZWV0Z2MyRExLeHozMSt0QVNaakdwNnF4bzB6OS9xcTA3?=
 =?utf-8?B?azJocEpIbzA2R3BBZk9hK1lZTGpnQ2pSNnpjMG5nMTdkQ0J3ZEIveURjcU5R?=
 =?utf-8?B?NmlhRk1xMGJnMlloYXovbGlOMExZS0ptK3pBZnZ3Z1ZLSG11dWYxaThuamdE?=
 =?utf-8?B?ZXhJK3k1a3RuQTIrTjlrSDM5MGlVbXRKYU1CdUhvSENCVGdCOVArdER4LzFq?=
 =?utf-8?B?M0ZFWW1tWTJCSWdCQzQ0KzI1dUYyRDJITzJVVk9JRllweFE3NFJwZ1gxR2xW?=
 =?utf-8?B?Y3RQY2hueVRtajJCc1RUVDhpcWtsd2lvZmdTSFNhTSsyRzNkeVFCdC90WWF4?=
 =?utf-8?B?bk9Ia3NCb2FVdlMyS0VWMnZteTNOTUErUHErYTRNdmljU3d4RHhZbnFjS0k4?=
 =?utf-8?B?TUQ5UG1TRDZiR0JIaTAzUU1WcUpxUFNackNoeVNqZ2ZjbFVRMktCTDYva1Fo?=
 =?utf-8?B?VnQ0WG45a2VueTgzYlRYS1dQWG1aMFdSWTRFTjVwRkkxbTJpbSt5M3hXWHMx?=
 =?utf-8?B?eDZqYWVZY1NZaEh1WFpFa0dwd2Zqc2FaUGdLdUk0OUk5L08vUERNZm5zV0JS?=
 =?utf-8?B?NmVtY0xYMmNHWE9QdkdPOVZ0aXpReGtqMG5yTHBFNzIxdXRCbHNzZ0hiays2?=
 =?utf-8?B?T1FWbGJmYnN3dnlwNkIrZC9vZTdhWGhSdWg4NFphclRRM21odHJraVZxcmJ2?=
 =?utf-8?B?dUROZy9iUDFjaGs4dDE2Q0ZnajVHQXVDUGl6OEZvaTNjWE1HK25FdVdTWGVw?=
 =?utf-8?B?Q3lDRXBnQ1VBYXlQK002eFZZZ0JKS25ISmRuRy9UNjM3cEJCWVl3NXVNblNt?=
 =?utf-8?B?ZkxvNjlLSHJxU1hqTWMwL2JCc1NybEk2SmVaUWUxMitoTGttMVZCSG4yQita?=
 =?utf-8?B?eWpiSjJQSTZEL3ZwZGI2TUpTaFI4bzIwRU5kZi9KWVZRYjgwYWpEYmZ0cHBK?=
 =?utf-8?B?SkFoeUdXeGNjcFlqampleFB6b0xrWDIzS1YrbHlENTBicXN2aUN0Q0lpU0Zw?=
 =?utf-8?Q?wohMNqwRKsviQhtT+acpEdQqD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6753fc58-a0dd-44f3-9d86-08dd2fd08502
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 10:37:59.1309 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QT4OkozSvgSZV+ByXomg+46HOUaiiHj71xgOzxiRFLBuL7zrUxmn9+zL2q6khGTWGlCQSdEwbOtY4VI2pPgI1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8282
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



On 1/8/2025 10:18 AM, sk.anirban@intel.com wrote:
> From: Sk Anirban <sk.anirban@intel.com>
> 
> Fix the frequency calculation by ensuring it is adjusted
adjusted?
"Fix the frequency calculation during power measurement"
should be enough
> only once during power measurement. Update live_rps_power test
> to use the correct frequency values for logging and comparison.
> 
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rps.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index c207a4fb03bf..d65135dfd80e 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -1126,6 +1126,7 @@ static u64 measure_power_at(struct intel_rps *rps, int *freq)
>   {
>   	*freq = rps_set_check(rps, *freq);
>   	msleep(100);
> +	*freq = intel_gpu_freq(rps, *freq);
>   	return measure_power(rps, freq);
>   }
>   
> @@ -1202,13 +1203,13 @@ int live_rps_power(void *arg)
>   
>   		pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
>   			engine->name,
> -			min.power, intel_gpu_freq(rps, min.freq),
> -			max.power, intel_gpu_freq(rps, max.freq));
> +			min.power, min.freq,
> +			max.power, max.freq);
>   
>   		if (10 * min.freq >= 9 * max.freq) {
>   			pr_notice("Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n",
> -				  min.freq, intel_gpu_freq(rps, min.freq),
> -				  max.freq, intel_gpu_freq(rps, max.freq));
> +				  min.freq, min.freq,
> +				  max.freq, max.freq);
You don't have to print this twice.


With the above fixed
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
>   			continue;
>   		}
>   

