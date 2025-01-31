Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D972A23A80
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 09:13:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9E3410EA37;
	Fri, 31 Jan 2025 08:13:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fhaSh+ya";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B90110EA37;
 Fri, 31 Jan 2025 08:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738311220; x=1769847220;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qJTwhP8KPHjYRIvHbe4s230BhYxs0SO7h1tNTW5u4/k=;
 b=fhaSh+yaA7upPhodIvOaX99yW5BKewPIFsHn4htSezdrHXtdCJFECmRx
 WNGBHydObhLalH8TbMytshBC+tu3c5sm6Fk+YfS8QxWy+O9vUPfxK5Lhr
 TyqS02HRkoSnqxJNizu8eIlZeAN3L0rm06gzGQ5aVFF1dOoNXnEmmGeL1
 hppEztaKj1NZpdUW6VeLTvAhunrGrAWq1LQYfatEYmDbzLF9S5P+neFA0
 f8Xf+1MTDhtqvGdPQSpoFZ6VLT09t2gjDPS3zgGKvUfzpDUwVk8Y6P5DZ
 Z6wfWrcO1IdDi+5LUb+4QSa/GiH1Smhq4xZ/9QvYTv5Pnax6cYHAEfbSf g==;
X-CSE-ConnectionGUID: AREkTDoOT3+Q8dIWkgfmpA==
X-CSE-MsgGUID: fXNcxbsWT6mF4eaD3Lyl5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="56422723"
X-IronPort-AV: E=Sophos;i="6.13,247,1732608000"; d="scan'208";a="56422723"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 00:13:40 -0800
X-CSE-ConnectionGUID: Citlw6geRcWO/Zytk7zfJg==
X-CSE-MsgGUID: dZhmPPYaTBSgjmfE4NeGDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132828612"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2025 00:13:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 31 Jan 2025 00:13:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 31 Jan 2025 00:13:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 31 Jan 2025 00:13:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aKHdRRf7FvBqXvlcuxAXfgjlwgXVbyfCpsJN3yfOUH/vyQWc4ZOuKHpTxw4Sjmt0LK98Laff2476WwHTjtNe09WW8uJVJ3hPQjgY5ujgc2iQ3ykJsh6V3IAV0AGf6cainRJ5uo5dszIqdgSd48ryJ+tdzbi27h+Qlr4pTHqRPHXZFBRPBLsIXDIebcTK/nGO9zIetCzd6YGPC4/vZ9dsCYpV/lTIuPTqlLmyKsmJh3FFdi/6ZdKH0KvSAUrpWL7J0TQb2IhSXDj3p6cQd3Z3HLRDS+VbakdHM6k9dslvAolvL5IbK323yeyGhEaBmU4Rlj3wVb0iKlLqUxyH8sapxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IyUTp7r6kbTXi6IApW6hg+0MV8xjapkhJTkgZ32JSmM=;
 b=RTsT0xlEdbjVUxu5N/ua6ijrOZb1Ru0rkRdnvBcrhPCI8j6CD1vIQGAccc/pIZM4tCaLbQAvnayjSwoxuPmB4HpSpdQJB2/vfmDhF0aKSRuIy2PWrUhyrWbCqxpJfpmOvJzXIH3Syay6/pBtljgBa+iZ/IPWYxLVDAnekG5XcxZCukRci9oHEq51XO3xgL6Tm7SJMlfIj8twVyTzL4Gslvugj27+cHzu6H8tcHqD9Z0GbjmsMNw0NQhUo0OosBas0u8tbOx/TKX/yascAXhcezaSf7AcNXizDBbe7Rnw5Dp598r1H98o7W9AWOiZrd2LApsF+wcL79z0s+xaDYEIgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 SJ1PR11MB6300.namprd11.prod.outlook.com (2603:10b6:a03:455::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.20; Fri, 31 Jan
 2025 08:13:10 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca%4]) with mapi id 15.20.8398.018; Fri, 31 Jan 2025
 08:13:10 +0000
Message-ID: <d854cc73-1268-4938-979e-99af73717e23@intel.com>
Date: Fri, 31 Jan 2025 13:43:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v7 3/3] tests/xe/pmu: Add pmu tests for gt-c6
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
References: <20250130213028.3852086-1-vinay.belgaumkar@intel.com>
 <20250130213028.3852086-4-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20250130213028.3852086-4-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0173.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::17) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|SJ1PR11MB6300:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c8010a1-324e-42bc-8cc5-08dd41cf1995
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Sk9ob3dBbm1aV08rQnBFbmk0WGc3cmFWNWRxWTJIblhOQ08xREd4akluZ3RN?=
 =?utf-8?B?b21LUkpDYVdYVW9tcjVGakplYVpOTU52T0NGd1Qra05KMVhSL0VxZGFXeFNS?=
 =?utf-8?B?U2lUSGx0U3kzN2hOZkFiK2ZibnVxRERlUTlQTGdISWpBbFJJdVBjZUdITXBH?=
 =?utf-8?B?aVg5SUhxWlNpcUxFV2NhcGkrS3FRSFJENkVDTlpERU9jczRXN1Y4dHAzdi93?=
 =?utf-8?B?VzNQbDFpNnhwYWQ4c29vUGNETFZnOXVMMlB4WWNMc0U0RDVEMzdYQ1Zsdysx?=
 =?utf-8?B?a1ZPRFVYeUQxeXIrOE8xQnRTZUFkR3BOQUJBaFR0KzdMUVJEZ29LN0RBUzRE?=
 =?utf-8?B?bGxXdW04WkJjMGlUUEk4RG0rbVZUbU4wd3RzSVIyQkpFZnZyWmYvUkorNUFS?=
 =?utf-8?B?cnF3YUExY3A2ZFZzUmV5SlMvd0pKQTJRWmdYeWlNM1VMdzhEYzdHN0kzWndH?=
 =?utf-8?B?MXRjZVJVWm1Uams0YzNBTnM1dkt1VmF6dE8vaWplSWVxbk9TbzJuZWkyeDFH?=
 =?utf-8?B?SDR2SldiSDBWOUFvN3h4dExlclZrdk9pTTBuQlJvM0dsVHM3YXB1L0pUQllQ?=
 =?utf-8?B?SjlKMVI1UjU1akNlV3ZIcm5QRE1ZcU9JYlplV0NxVDVkT1FhaG8ySzFDZGdj?=
 =?utf-8?B?eVZSWVo5QlY3TDhOTjRCdWdhbFVHK2ZNVGw5L1VLY1MyZHMvOHlHMlBDUTU2?=
 =?utf-8?B?OFFwVUFXQ1N0SGZPTjl5c0toVW0zTU1jb21NOUhKeUZpR0U0Z2RpdW1lM0Zk?=
 =?utf-8?B?dERoMXNIeXJvWWFtQm83MUNERDI5U1BOeElNOWM4OEswS0dTdHBYVW94R3F2?=
 =?utf-8?B?enZiOTJ0WThLME5kdTk1WkxoN3dkcEZzL0M3RVJqSllrTVBwRlpDenFvV0xT?=
 =?utf-8?B?SWRabkVaenE2QW5CWkxrTG42eFgyd3BwbWRpRmQySjNsQS9xVy91ajV3cGJO?=
 =?utf-8?B?SmNmajFreXFnYVpwaE1abG5iOU51UHVMUllDSC91bFFQWUlpL2N3OGE2UnFK?=
 =?utf-8?B?WExsWDkrUVhyU2VoRlV1SkpnVjVvb29GNXA5dE9yZkViVnEyQVpLTG9vZHZL?=
 =?utf-8?B?Tk1DeVdid1lNYVVaWVhsTC9IUDFFZWxaa0tzWnM5ZVFvVVZVQllVcUpjdENk?=
 =?utf-8?B?Z3VMd3VGUkdBL0kzandKZUpkNmlxWnV5ai9lbThYNExxdzBPWjczYjAxWW13?=
 =?utf-8?B?YVlDUzFvNTJ5N25QcnBwblhxZnNMZm9NbEdGUkpvTENrVFEvWHlUeVg0aGkv?=
 =?utf-8?B?VkFlb0NLR0hIU0k4UDJpcThvYm5GZ2VxUlVkK1FYRDB6NmZFaXBzd1lKQjRj?=
 =?utf-8?B?ZUZ1RTBHekRIUmhqRFZudHA2RGFYWnh2ZElaQjZHMXdFdXJuc1grM3NsZ3Zs?=
 =?utf-8?B?OFpxYTVrcjNxamdRejRUcUthQkJ4NkxiT2xvQTh3UlFhUVJ3Rlp4ZWhSbFBn?=
 =?utf-8?B?eTY1dUJWUHR2dE42bGdFWXdnTHFTWXIrRStsMCtpSDI5azBRUFEyV21oTTZo?=
 =?utf-8?B?Q1JXZGhPK0U3VWkvd29jQTEraUE5QmxqV3FsRDR4aDU1eWdhdldENTB0UlJZ?=
 =?utf-8?B?cXVULzFKYkxNQmk0VGRhZDc3ZWhQT2hPUlgzK2FxSk83ZFBFVVk3emNJSTZM?=
 =?utf-8?B?cTdqT1ZYTHVacDRaQ3QrSkFnYk9NcmtPZXc5UHpqWkgrSmdDd1RDb3RoZVN4?=
 =?utf-8?B?bVdwUi9mVW5vazFMak5BaisrcGhlS3JUSmxicFNxaHhUVTFWWUl2aE1nbVhR?=
 =?utf-8?B?dCtRNVlhU3FrRVhld2RtTExPSzRXbHdTLzFOOVpOd3F4ajFrY1NnYjFuM2Zw?=
 =?utf-8?B?aHNtbkRQcUxYcHQ1dUwvelNOODY3bnZwRmYvSVh0KzBsd2ZjSnZqVGtOTlBj?=
 =?utf-8?Q?e9/ku5nzGwbCq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnZsMTlwTnNrWU1KQmVEaFFVUkNLYTVkamoyRytjUXVOSTFiQ203MTV2TGhW?=
 =?utf-8?B?aVVMQkdPSCtpeFFpRnNQNEgxSWVTdDhOSzUzTzgrUURKS2xCNkttUVNRcURR?=
 =?utf-8?B?dVc3WEVwYzE5NWtYM2pLcTh1aGp0ZDRDbktCQzNndW5LWXMxOTdLdThQaXhU?=
 =?utf-8?B?eC9zVHFPY3hPOHdOdHF0M3BTRXUwZHRkeHZKS2xkaGdRUWlkRHhmSnlCRXN3?=
 =?utf-8?B?V2dmcWpZOFR6NDlGT3llYzB4YllTM0FVaWtnYWVuWDF6V2JlU0ZVUE5OWjlH?=
 =?utf-8?B?WFVUMWVrMzE3T1hBcklKR0dQL2RIdjVZRjJTcG00YmpFb1dpN1dBOU02TlJW?=
 =?utf-8?B?cE9NSW5vT2dqcFFLQWFUNzNzektTWW1FbzZwYnB6NXRxZkN6bW1Qc1ZyRGty?=
 =?utf-8?B?YVhOSFkydFVJL0h6bGhCOHRzZVFTenJHb29RUTZjN2FFclhzS29WMDhGRG5R?=
 =?utf-8?B?YTFwM0FwZ2JyaWVuL1BIWUhNYkdBZVBmNXoxT0VFZWRGQTBmd2NTQjl0dC9i?=
 =?utf-8?B?NjEraVl5amhQcUFMOWRZRXpNTmg1bExiUXhLZCs1dHBxb2hHWVpCa1FiMk1W?=
 =?utf-8?B?Zmg3aEZPOGtia0RoN1k0d0ViMjRybFJNcFZEUkhlYWJ6TUtHRVBBS0tRVGZV?=
 =?utf-8?B?Y0lSdStPOWlwM0M0eGNidjNzWWJLcXBqcHlXS1JJSHRGcWg0NlJERmtWVVZZ?=
 =?utf-8?B?YmYyK002MDlqcU5zTHFnYXd5MlNYV3dHSVU0Q1RzeEdMM0phek5WZnNtUTU2?=
 =?utf-8?B?YThNUWQ5ZEdKZEtJZTNQUWNETkdCMzVrMUhrNko0RTI3M1drRnpjWHNRMHFC?=
 =?utf-8?B?UGlkQXJWTUw5bVlQaHZ0UDhnTm1HSkhUblVqbXZEbzdvYThSSUk3b2FYbk9G?=
 =?utf-8?B?SkgyazVSZTBZYWdITEkyYUxiUFZNbzQzRnI1aEgxUXAraXcyRXBnNWpZOFhE?=
 =?utf-8?B?ZlZSam9YQmhqQitiSTRFMDE2VzFDYkcrVEEzaHNCOE5DMVZvYTVnRzkxYU13?=
 =?utf-8?B?WmUrRXpIbmYyL0pOVi9DamZocXprdWxPMmZZb2FDU0hXN0laakZ0ZFNPdE9F?=
 =?utf-8?B?cDNFbVBnV0hYOHVCUXpld1J5aTdQT1BYZkNhV2ZuUTU4Qk1DMXZTZlYxZmdC?=
 =?utf-8?B?OVV3UVppQkJQNGRsaTh0by9TNlYxZ21TWmxmbWFpMHNsYTZzWE04eUtMOWRT?=
 =?utf-8?B?RDQydmxzVFpWN3pETkZUU2p6UC9UWkRXUGJHMTB5N3YwOVNBNDJIMHVMaEJV?=
 =?utf-8?B?STJscG16QUgxNmZwclpjRE1wQktLNzBSWlgzUTlHR2x1dDBMc0VRNXlRYVY1?=
 =?utf-8?B?eDdjQUZGTGlNYUlCQmNQYWhtRzlDR042a3l2WllRaGJzMGtrWUF4TnZXQWty?=
 =?utf-8?B?dUlGWmJkcjkyYmxZVmZqZERwak5Xd00za3R4QnZlZk9OUTVPS2orUlBLUUFo?=
 =?utf-8?B?V2tyay9nRU1FR3czTzRzSVFOSVJ6cll1bDM4ekMxVXNqb1VsVllNYkxMNjVx?=
 =?utf-8?B?NFJpVC9FSzg0TFQxajlxZHFkcXp0K05qWkhmVlNsRDZvcUUreDd6NmRTVm5N?=
 =?utf-8?B?RmhzdlVVM09vVjVZREhPc3QydEd4Y0NQOVlaQXlXYloySk5sRzlYVEVRdTNh?=
 =?utf-8?B?VXUxTW4zS01GQjJNcUpPb1B0STNrZHh4cmRnZWhPcGVZejlhSitkRGN5d0tn?=
 =?utf-8?B?eFpUR01pUmVKOW10U21ESDlhMndzeFlsY0pFd1I4ZkFPcjBZY1FmK21tVkxV?=
 =?utf-8?B?YnEwL3pIbU9ZUTRueTJSOHBFU3J5WDdKOGlLTnFGT1oxcG9iaFNJVkxHVnJt?=
 =?utf-8?B?QVg1eXZ2SFppb21DVTZYNksrLzJYYkRSZXZKTVJVMjlGaFBLT1VpcU9vU21n?=
 =?utf-8?B?akp0QVhBYmh3TmYvRldIYkRDR2VyNi9nQTZDdVlEb21NU09FQVUwMWpYVk41?=
 =?utf-8?B?SXRUVDJEQWhaMkJ0VEhHbm44YmJObzVLZHJBUE9aYXV6WDQ2L3JQRUNnalVm?=
 =?utf-8?B?THA5NjdJMTQrZSttemtsZUdOUStpaFlmbU0wZjA5empLZ3R4ZVB3T2NRYnlW?=
 =?utf-8?B?NXgrSTNHTHQ3MjVJQ0xkaktxMFFhUXlaSlpZVFpITVVnWldPUE9tODI4dndl?=
 =?utf-8?Q?41kP3nubRe1V992MNbjbRJNsr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c8010a1-324e-42bc-8cc5-08dd41cf1995
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2025 08:13:10.2985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n37IYVWUI/MvNa95M1oVuhe0swPxOIhT8rh0Z5DanOlNrfENczVrjTXuOu2EHCxkhPgvWqJRHsGeibKm0Bl+iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6300
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

Hi Vinay

On 1/31/2025 3:00 AM, Vinay Belgaumkar wrote:
> Simple tests for validating the PMU implementation for GT C6
> residencies.
> 
> v2: Rename rc6-residency-* to gt-c6-residency and remove freq tests.
> v3: Keep just gt-c6 tests, add frequency tests later.
> v4: Review comments (Riana)
> v5: Review comments (Lucas)
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Riana Tauro <riana.tauro@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/intel/xe_pmu.c | 149 +++++++++++++++++++++++++++++++++++++++++++
>   tests/meson.build    |   1 +
>   2 files changed, 150 insertions(+)
>   create mode 100644 tests/intel/xe_pmu.c
> 
> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
> new file mode 100644
> index 000000000..44589cb86
> --- /dev/null
> +++ b/tests/intel/xe_pmu.c
> @@ -0,0 +1,149 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +/**
> + * TEST: Test Xe PMU functionality
> + * Category: Perf Monitoring Unit
> + * Mega feature: Perf Monitoring Unit
> + * Sub-category: Telemetry
> + * Functionality: Power/Perf
> + * Test category: Functional tests
> + */
> +
> +#include <fcntl.h>
> +#include <limits.h>
> +#include <time.h>
> +#include <errno.h>
> +#include <dirent.h>
> +#include <string.h>
> +#include <sys/time.h>
> +
> +#include "igt.h"
> +#include "igt_device.h"
> +#include "igt_power.h"
> +#include "igt_sysfs.h"
> +#include "igt_perf.h"
> +
> +#include "lib/igt_syncobj.h"
> +#include "xe/xe_ioctl.h"
> +#include "xe/xe_gt.h"
> +#include "xe/xe_query.h"
> +#include "xe/xe_spin.h"
> +#include "xe/xe_util.h"

few headers here that are not used
> +
> +#define SLEEP_DURATION 2 /* in seconds */
> +const double tolerance = 0.1;
> +const char *no_debug_data = "\0";
> +
> +static int open_pmu(int xe, uint64_t config)
> +{
> +	int fd;
> +
> +	fd = perf_xe_open(xe, config);
> +	igt_skip_on(fd < 0 && errno == ENODEV);
> +	igt_assert(fd >= 0);
> +
> +	return fd;
> +}
> +
> +static uint64_t __pmu_read_single(int fd, uint64_t *ts)
> +{
> +	uint64_t data[2];
> +
> +	igt_assert_eq(read(fd, data, sizeof(data)), sizeof(data));
> +	if (ts)
> +		*ts = data[1];
> +
> +	return data[0];
> +}
> +
> +static unsigned long read_idle_residency(int fd, int gt)
> +{
> +	unsigned long residency = 0;
> +	int gt_fd;
> +
> +	gt_fd = xe_sysfs_gt_open(fd, gt);
> +	igt_assert(gt_fd >= 0);
> +	igt_assert(igt_sysfs_scanf(gt_fd, "gtidle/idle_residency_ms", "%lu", &residency) == 1);
> +	close(gt_fd);
> +
> +	return residency;
> +}
> +
> +static u64 get_event_config(int xe, unsigned int gt, char *event)
> +{
> +	int ret;
> +	char xe_device[100];
> +	u64 pmu_config;
%/u64/uint64_t

igt uses uint64_t mostly. To maintain consistency, u32 and u64 in
this file should be replaced with uint64_t .


With the above comments fixed
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> +	u32 start, end;
> +
> +	xe_perf_device(xe, xe_device, sizeof(xe_device));
> +	ret = perf_event_config(xe_device, event, &pmu_config);
> +	igt_assert(ret >= 0);
> +	ret = perf_event_format(xe_device, "gt", &start, &end);
> +	igt_assert(ret >= 0);
> +	pmu_config |= (u64) gt << start;
> +
> +	return pmu_config;
> +}
> +
> +/**
> + * SUBTEST: gt-c6-idle
> + * Description: Basic residency test to validate idle residency
> + *		measured over a time interval is within the tolerance
> + */
> +static void test_gt_c6_idle(int xe, unsigned int gt)
> +{
> +	int pmu_fd;
> +	u64 pmu_config;
> +	char event[100];
> +	uint64_t ts[2];
> +	unsigned long slept, start, end;
> +	uint64_t val;
> +
> +	/* Get the PMU config for the gt-c6 event */
> +	sprintf(event, "gt-c6-residency");
> +	pmu_config = get_event_config(xe, gt, event);
> +
> +	pmu_fd = open_pmu(xe, pmu_config);
> +
> +	igt_require_f(igt_wait(xe_gt_is_in_c6(xe, gt), 1000, 10), "GT %d should be in C6\n", gt);
> +
> +	/* While idle check full RC6. */
> +	start = read_idle_residency(xe, gt);
> +	val = __pmu_read_single(pmu_fd, &ts[0]);
> +	slept = igt_measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
> +	end = read_idle_residency(xe, gt);
> +	val = __pmu_read_single(pmu_fd, &ts[1]) - val;
> +
> +	igt_debug("gt%u: slept=%lu, perf=%"PRIu64"\n",
> +		  gt, slept,  val);
> +
> +	igt_debug("Start res: %lu, end_res: %lu", start, end);
> +
> +	assert_within_epsilon(val,
> +			      (ts[1] - ts[0])/USEC_PER_SEC,
> +			      tolerance);
> +	close(pmu_fd);
> +}
> +
> +igt_main
> +{
> +	int fd, gt;
> +
> +	igt_fixture {
> +		fd = drm_open_driver(DRIVER_XE);
> +		igt_require(!IS_PONTEVECCHIO(xe_dev_id(fd)));
> +	}
> +
> +	igt_describe("Validate PMU gt-c6 residency counters when idle");
> +	igt_subtest("gt-c6-idle")
> +		xe_for_each_gt(fd, gt)
> +			test_gt_c6_idle(fd, gt);
> +
> +	igt_fixture {
> +		close(fd);
> +	}
> +}
> diff --git a/tests/meson.build b/tests/meson.build
> index 33dffad31..d20f50766 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -309,6 +309,7 @@ intel_xe_progs = [
>   	'xe_pat',
>   	'xe_peer2peer',
>   	'xe_pm',
> +	'xe_pmu',
>   	'xe_pm_residency',
>   	'xe_prime_self_import',
>   	'xe_query',

