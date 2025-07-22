Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5D0B0D185
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 07:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2283E10E5E9;
	Tue, 22 Jul 2025 05:56:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kVpSnDjk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA1110E2F4;
 Tue, 22 Jul 2025 05:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753163783; x=1784699783;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y+qSNlu/74p2TtBgYgBGOUAe/FDJEXD0Kt+HT0HqjPg=;
 b=kVpSnDjkH9TSEeUlrHrChsvFF98CfqNUNlW8+VxwAE7CUoW4Bl5utUGG
 KSTSjHQx+gkBYBCv7ZCxWfVblcZRFax2gv2N5Myimawa6vMww7opDUmwI
 UTkR2P/4A9Nhr6P1n2LhOCZYY6A8De/6/UqsHGVK9G/Dhc5PjETHTCbgA
 tyiAZvlsaFfdfR0ISxYP2F/LFWHpQEA/T7BPlQqDsHZFBq4U0lavTr5SQ
 7F2Hlu0bIq3vuW3h8tLpYSDxuEmpWt/1ZavQKcpKyb3HDoFcL6eohbE94
 ZKbieeL17YHSiku+TAxipyHw26TGnTC042J/BAkowjCYKxyqIU3OgZA4k w==;
X-CSE-ConnectionGUID: WvlykTJMSkOLX2f84y3Q9A==
X-CSE-MsgGUID: E5lff1kOTzSDhFVrj4pN3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="54499072"
X-IronPort-AV: E=Sophos;i="6.16,330,1744095600"; d="scan'208";a="54499072"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 22:56:22 -0700
X-CSE-ConnectionGUID: Fx4Nb4wRRkWCdO16DvMWoA==
X-CSE-MsgGUID: GUaEK+KyQGmivLuA+g5gfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,330,1744095600"; d="scan'208";a="158360607"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 22:56:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 22:56:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 22:56:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.59)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 22:56:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q7o2YfKZjYSqwp1puxxtuai3hnwtD5OV0yaPB62gpbMlwMK7FeG+YRqSSS2YmhOchS2rE4aicnb9w4Tl+A/copDyWVxSWuGy1v6/dMiaw3/JfwKd4esKimMb5GteeiKn41qWMwFKnjlx80eStqLcS02MH4NYlyXlpVMjJckdzM8DmTWfOtjes+YE5AGmJl1V6nqIyXO73uWxR3TT1z4ICTNogwNb7bAcYrC6Aa5h2rEMvzPWHBsDT03UG3q/xaXm0BDc5RMT14v5uSz3smVnF5uIxhH7Xh3H4wnTX1C6yG4EksZ1DWSyizIPD+Iy0OQNHlSHRDLT2YLLa/5s0hThJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4NpT/Axzo5gY3J9H1Oa/fxuX4qGBOI+bYJaPg5jf3kg=;
 b=i744NM6Qsszk9ZlaDT3Z5tSWVD3g9bvJVM38cRc5/XB3S/kJPTWx8vSLxGztnm+vV+New9llD9RQJPwHK8qe7Vni7u/oEtkfNb/w4jochPH0gubQPgGapLJ7t628auA2vX+YixpTBQg9KlJlDmVapVxSCCHabNUj3WWKH8LUtyNRAqP+I2OD45eBesXrcywtG66ElKGqZRv3IqugQYz04CuYdJ5B80wy0HRnReCbgKG064CkHkMSdUKnz1mNLcjgaskrjPCGZSGJED2HAB8URqabfi3408WWmPQJx9T0KR+p60qKURmibVZqhLRKiGwuyuVAHIc9VvStYh15HKNPzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN9PR11MB5258.namprd11.prod.outlook.com (2603:10b6:408:133::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 22 Jul
 2025 05:55:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8943.029; Tue, 22 Jul 2025
 05:55:39 +0000
Message-ID: <05541222-45bf-4546-9976-797735d40e78@intel.com>
Date: Tue, 22 Jul 2025 11:25:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] drm/i915/dp: Limit m/n ratio to 10 for DP SST
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
 <20250721091529.3864004-3-ankit.k.nautiyal@intel.com>
 <aH4ngmg05DDtKmDN@ideak-desk>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aH4ngmg05DDtKmDN@ideak-desk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0018.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN9PR11MB5258:EE_
X-MS-Office365-Filtering-Correlation-Id: 4214746b-5b10-4b48-e25d-08ddc8e46285
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmJEc3FwYVhWeis3YWhTU2xRMmZsdmF0aTNIdkpnV2NoSzk1RktadUlKVCtF?=
 =?utf-8?B?OC85ME9CYkQzNU44MlVIOVdiRDZLZGFFZHRwcGF4Mzh2VUFrWGNFOUNxaVFU?=
 =?utf-8?B?RHdXSXZkSFhjOTRtbWJITUZ0SVVJS3VqTXA0bWdwbmxaZkRmc1ZIZ1p6RTB0?=
 =?utf-8?B?SHZWWnZ0TU1COHBsVWw5UVRlNnMvaEd5NW4vcEJiRU9tdW4yTDB1VkxlZjVh?=
 =?utf-8?B?bCtkRUlmNUtscE9Fd2VnaXF2VEx2MlFuOHFGdFBZNjRtNjRkZmVkSTQ1Uzl4?=
 =?utf-8?B?Qmd5ODAybEtRb0VnZkJaMEM2aGxrcS9meVVkem9rMlRvZ3Y3TjJFdkYvVGxa?=
 =?utf-8?B?WmtMWkJGSllCUEpRUGNpR2pScWdlOGdBWEppeENQOERab0NuanNlMWt6ZmU3?=
 =?utf-8?B?RlQvL05jSFhkLzI5RGV2VEZIUFlsWnZ5YVNvQWU1MVJMWVk4elBoTWxvRE1l?=
 =?utf-8?B?Zm8zWTdJWW1IR0NUUUtkbnE2ajVZL2xvZ2JLRlk5dE93QVMzU29DWmNzTlBF?=
 =?utf-8?B?ZjBleGdKY3Rka3k4a3I0YjVzVWlwNFlvQnEzajB6MEp6QWEwdU1aOWRuTjVM?=
 =?utf-8?B?M3JaTzNXSWFKZFlMWS9FWmZXZGhzSGVPc3Y4RWRzR2wvczIyaktEeHRQS0pw?=
 =?utf-8?B?WHNsUElCL01ZR3NZOWkvTVNHeGZ5cU90dXpHTWQvbHR4ZW45QWZlNXRUY21t?=
 =?utf-8?B?d1c4d0dabnhEenNFNXFuOVNzbzBpY2JOU250OHJFMTIwMGtYVk9DSXBacHhr?=
 =?utf-8?B?TzZuclpnWkFVbm04K3BibXNNM3cveUQrU1lCM3lYUUdNc1JIdjdUSTEvQkVK?=
 =?utf-8?B?YWY3MkFGbTQ1YVI5V21lb3lvWUtZVGQ5ZDYrdnBsNjlJbktQU2JiY2RLWW45?=
 =?utf-8?B?cjNOYllVbnA3ekY2OWRKWk9LOFRrKzJsMUljMHloUFRUSjlrYlJDOHR6Y1dM?=
 =?utf-8?B?eThhTy9QNjJtd21pY2UzWUMvNFZ1MkR0SEFhTlQ3VzE2TjF6WGRKbnNFUXNO?=
 =?utf-8?B?NWpkOWZpN2dJMVhUSWhkTlFFbFNKSGZ1c2UyQ2tCK2RkQ1ppK3E5VHg0cDNw?=
 =?utf-8?B?bG45OWIrbTNVSk9qTUR3bHRsZktROXNLTncra1NQVGhDY0RucVJzelZnS3Ez?=
 =?utf-8?B?b2d5TFZOaW1PNkNKS3g0RmhmaG5lbVQvaHpNM0FhUk1GMnZHM3JZbnBVVjh1?=
 =?utf-8?B?YnNETGF1d0kzbkhIRU5iVkNFRmI3ZEVQQS9WVmVReDdJbEEwZG9LbjROc0s3?=
 =?utf-8?B?TEdZcGZ4NXc5aE1nN3R2SmpCQ1ozbk55eXhDellFVXRmN1Nsamx1UStPcEFy?=
 =?utf-8?B?RFNDa2Rrb0hpU0pUVEo4U2MwNGZIOEt3VU5SbXczN3dHb0l2TnJaSEh3eVB2?=
 =?utf-8?B?TlJTeXBnUjM1b0Z5UU1Za09DRW9IeTh1eEN6WTJINGxYKy9BZDh4aHVVdGRz?=
 =?utf-8?B?UUtkRms3d2VTeDJWQ25pREdTb3dybFRZR2V4MElzNU1wZnJwVGpobmhCQ0Y3?=
 =?utf-8?B?UTYxdzhrMVFOK1ZRdmFzZkh5d2crbVVmV2Y3dWNjV2o1Z2txYkpJanRqa0pO?=
 =?utf-8?B?ZHhKdzRjQ0lSMENUZWNzSE5ROFdMMEc0MDdMcDEvTkozUTZqbnFwSmhIc29L?=
 =?utf-8?B?M3UwdGpsdklnUVVRNUJ6U0JGOWlrSmhxbUlIdzcwTkc0Y1V6cWZHNkFRZUVu?=
 =?utf-8?B?WjNPclZkMVo0eHRDQWZjOWRSM2JUU0Q2NndycDJlUlRBaXl5UUFNUmpZNXhO?=
 =?utf-8?B?WTZ1TkMrcnFKSFNjUE00VENta0pmeXlzeGo5YnJCNkYwVnNZK2U0U0NEZ0l5?=
 =?utf-8?B?bFM4Z1FpSzQ0OUZXN0ZIWXdlWXo2YkpPbVdZWEtMblkvVVlTRXFvd3BJY1Uz?=
 =?utf-8?B?ZHR4OHJKRGtyeVduRDNlaDNYdktFc244RGMvSlQrTzgzcVAxaVB5akNXTjNz?=
 =?utf-8?Q?aidsXhCNi6I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFJlV2xucmlyYkVmUXVablE4d1J0WjNnd1FweG5tQ3pYa2UyazJNOHg2Vk5S?=
 =?utf-8?B?a1hYdjU0YmlQdWJRcUcwWTc1Mk10aE9ZVnZYd2xpVk1MNFFPcW1ZUzNUL0No?=
 =?utf-8?B?MDE0ckYwUUh0anU4TFRKVkYzamNLZlBPRlhLYndsS3R1bi9vZDZIZlBjUzVj?=
 =?utf-8?B?ZW9iQVBVNWtwVHBNRHJhQ25JK1JJZkEwdzM1K3pZNGlwbGhrblVjbDdlc0h4?=
 =?utf-8?B?YWJ1NGV0Wk9SblV5VVNUd3FabHhqZml0MGRycTdRMndlTG0wNWErQlh5UnZw?=
 =?utf-8?B?NGdTdHREY3VnZmk4NStXa2VpRGxjY0w2MklEdkdvbllxRXFoRmxVU3VPeHRt?=
 =?utf-8?B?cEh6OGRCcnRibDNJWGtlUkgzWmJaeS83NWtld0JPSFBscTNTaUIrQ0piQ2hn?=
 =?utf-8?B?T3dRQXVuNTUyQk4reFdhVWt3NnJ4QUpyRmkyQ282NFFVUmowdUlBdWlnUWo2?=
 =?utf-8?B?clcrWHVITVhjd0krbE9zUWRna2RjbEJhenpwVmJsL01LM2F0ZWlMRHFMWWw2?=
 =?utf-8?B?VjlzQlg3eEFkNHk4Qmtaa3RxdzFWTTlQdDJKdC8wak05OVIvYVZmMlplaEJ1?=
 =?utf-8?B?QXJZUXJKeEhnY0xUVjYybFdIVW9YMWRPdnNYYUlsNUNZR3JMSWdnc00yeFdH?=
 =?utf-8?B?VUgwMTZ1azFMNzRQN2RCV21XRzM5NDNXNFI0SitnSlpvRzJ5WlkzWHFoNy9i?=
 =?utf-8?B?akFrUEorRlJ2ajdRcW1GY291dlZiTmhUVC94Q0M1OFJ0dFRhREFFV1IzcHZR?=
 =?utf-8?B?TUNiZ1JLR1lqZy9kYWxRS251OUFrMFlHWCtsOERQSmNjY0VpSjJTRCt3VS9Q?=
 =?utf-8?B?WmRwMEJRZ1FaY1hRVFlPUFNFQ3gzWElhTWxqY3JreUU2UEN3dVNwMVk5a3pl?=
 =?utf-8?B?Y3dpWDF2dnZXcWppTHVManpkZTdwYlRtOFFwY3M3ei9BdWxyTDBrRm11MkMr?=
 =?utf-8?B?QWpoRGc0UU1RZUl2eFFIbmxhVGhhZTB6cXVzMFc2aXZ4bHU3MG5XME5RSXpz?=
 =?utf-8?B?a1A2NE51WG5NVEx4ZURZYTZvdmVDcmdpODh6STkzNTc3aWQrQmZockEraExI?=
 =?utf-8?B?bWdobEQyNGVNVmd2YzMrQmpnSHJOMlJYeUtmME9TSXNKdkpVanR3bE9HbWhh?=
 =?utf-8?B?NW1Ba01yclRNL29KODl2VW1qSmRqMHRqdUpwMFN5c041VWFrcXZxNnd3U1NB?=
 =?utf-8?B?NXBuZXd0d3F2MjduVzhoY3ZzNlNtS1JjWTFsMHlVNGNGcjlnUWwzbHFWcHRX?=
 =?utf-8?B?ell6aXFoMUpjbUI2V3I1aC9ldmVCcklsaGFEUDQ5MkxpV1FYRVI2dm1kV1Zq?=
 =?utf-8?B?alVVd1JWUjBnZ1dXenBXYXlvaUpoZ1ZMdGVmMkE2bWFZMitqbVliY1NCRWlh?=
 =?utf-8?B?eFV2cmVkNXAvaFNEdDg5VUYyeERUWThwc3hJTnVwNE1YbFJNWGt1N2hpQlZk?=
 =?utf-8?B?WUY0V2VUcVk4MGpQTHdzeDh6d29oRlFXZDkxaHdKN01rcEx6SjhLWGljbmZ4?=
 =?utf-8?B?Q2JGY0FlSUx0QUFZYkluNkdDY1pyb1drK0VONDBDdkpwNnVGWHAyeThpdC9o?=
 =?utf-8?B?cUJWZUlaa1A1Y3Z2VkxkT0luaWtCUlJLU01NZDZXV3l4UTZpZDZ4UCtUV25x?=
 =?utf-8?B?UkhabUtwUXJPT05Xb1ZqeEVab0VGMkE2bWNqOE1MbW44U0RXbzNuYTJ5bDJq?=
 =?utf-8?B?dTlwSVhuNU9tdzZESTJOczUyTHh1N0lYV1ljR1Y2TkMyQmdYc1Mxa2hLdE1q?=
 =?utf-8?B?RUZ0U3pLTThnNEdMN05kUVRST3kxNUNocnlmSVlqRjBOeXdzNmRDVGNoMTRX?=
 =?utf-8?B?RmhhVGpjdkxaYXh3c1N3SUVXTEdvbG1QODR6Vm1CWVUxdFp1T3Q4cGtuZ1Vx?=
 =?utf-8?B?U0JUN3IvQzBOcWxHbTRlWXdEZFk0VTl5NGZvRUVzVU9Cc1d4U0dPYmdGZTF4?=
 =?utf-8?B?Ukl1OXFxYUlIckhqbHpCUmRYVE1ETE51WXBwaENMbG1wdWwxL3FYQ0FjMFhO?=
 =?utf-8?B?VWRybXdFaWdQOW9YYURLcFRGa2tXYjRZRFBYQzF2ZmllQXpNQW1ZK25renZs?=
 =?utf-8?B?RSt0Q25RMU0xQ0lEOVpnQUFrWWVjSEpnWXQ3ekdKYWxoQzJQQThLQjdYdFJi?=
 =?utf-8?B?OGpqa3pRd09zTDZpd0MwVkpZT0JOcEdMU1ZWRjB0a1dNZnZ3dzdURWV4SzlW?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4214746b-5b10-4b48-e25d-08ddc8e46285
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 05:55:39.1281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ug+4drX4Dr7jj1/N5mJwOCU7L/Fw/Nq/Uv99jlQ0OEtZohJvj8WD98WDmCItTDE1fECW1n40N6b+wc/iq6kbbhy/e9QjOQxrnwiJ8EhPtY8=
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


On 7/21/2025 5:11 PM, Imre Deak wrote:
> On Mon, Jul 21, 2025 at 02:45:22PM +0530, Ankit Nautiyal wrote:
>> The hardware cannot support DisplayPort configurations where the
>> ceiling of the Link M/Link N ratio exceeds 10. This limitation has
>> always existed, but it typically wasn't encountered without the use of
>> joiners and DSC.
>>
>> With higher resolutions and combinations involving joiners and DSC,
>> this constraint can now be hit in certain scenarios.
>>
>> Introduce a check during link rate configuration to ensure
>> the computed M/N ratio does not exceed the hardware limit. If no valid
>> link rate satisfies this constraint, the mode will be rejected.
>>
>> Note: This change applies the check only for SST. Support for MST will
>> be added in a subsequent commit.
>>
>> v2:
>> -Move the M/N ratio check to the link rate configuration phase instead
>> of during M/N computation. (Ville)
>> -Prune modes that cannot be supported even with highest link rate due to
>> M/N ratio restriction.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c |  1 -
>>   drivers/gpu/drm/i915/display/intel_display.h |  3 ++
>>   drivers/gpu/drm/i915/display/intel_dp.c      | 33 +++++++++++++++++++-
>>   3 files changed, 35 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 671491a2a3b6..f32a4956c926 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2506,7 +2506,6 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
>>   	intel_reduce_m_n_ratio(ret_m, ret_n);
>>   }
>>   
>> -static
>>   void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
>>   				u32 pixel_clock,
>>   				u32 link_clock)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> index 37e2ab301a80..bfa3db219b9c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -559,5 +559,8 @@ bool assert_port_valid(struct intel_display *display, enum port port);
>>   
>>   bool intel_scanout_needs_vtd_wa(struct intel_display *display);
>>   int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
>> +void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
>> +				u32 pixel_clock,
>> +				u32 link_clock);
>>   
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 54d88f24b689..4245dd65b2af 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1407,6 +1407,28 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>>   	return true;
>>   }
>>   
>> +static int
>> +intel_dp_get_max_m_n_ratio(void)
>> +{
>> +	return 10;
>> +}
>> +
>> +static bool
>> +intel_dp_can_support_m_n(int pixel_clock,
>> +			 int link_rate)
>> +{
>> +	int max_m_n_ratio = intel_dp_get_max_m_n_ratio();
>> +	u32 link_m, link_n;
>> +	int m_n_ratio;
>> +
>> +	intel_display_get_link_m_n(&link_m, &link_n,
>> +				   pixel_clock, link_rate);
>> +
>> +	m_n_ratio = DIV_ROUND_UP(link_m, link_n);
>> +
>> +	return m_n_ratio <= max_m_n_ratio;
>> +}
>> +
>>   static enum drm_mode_status
>>   intel_dp_mode_valid(struct drm_connector *_connector,
>>   		    const struct drm_display_mode *mode)
>> @@ -1518,6 +1540,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   	if (status != MODE_OK)
>>   		return status;
>>   
>> +	if (!intel_dp_can_support_m_n(target_clock, max_rate))
>> +		return MODE_CLOCK_HIGH;
>> +
>>   	return intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>>   }
>>   
>> @@ -1789,6 +1814,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>   			    link_rate > limits->max_rate)
>>   				continue;
>>   
>> +			if (!intel_dp_can_support_m_n(clock, link_rate))
>> +				continue;
> Could this limit be set in limits->min_rate, computed already in
> intel_dp_compute_config_limits()? (And fail already there if this is
> bigger than limits->max_rate.)

Yes right this can be done in intel_dp_compute_config_limit.

We can iterate over the array of common_rates and find the rate for 
which the ratio is within limits and bail out early if we cant find such 
a link rate.

Or otherwise instead of iterating over rates, I guess theoretically we 
can calculate the minimum link rate for given pixelclock and ratio and 
set it to limits->min_rate and bail out early if this is more than the 
limits->max_rate.

However this might be bit tricky as symbol size is different for uhbr.

I will check this out, and move this in intel_dp_compute_config_limits.

Thanks & Regards,

Ankit


>
>> +
>>   			for (lane_count = limits->min_lane_count;
>>   			     lane_count <= limits->max_lane_count;
>>   			     lane_count <<= 1) {
>> @@ -1796,7 +1824,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>   									 link_rate,
>>   									 lane_count);
>>   
>> -
>>   				if (mode_rate <= link_avail) {
>>   					pipe_config->lane_count = lane_count;
>>   					pipe_config->pipe_bpp = bpp;
>> @@ -1983,6 +2010,10 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
>>   		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
>>   			continue;
>>   
>> +		if (!intel_dp_can_support_m_n(adjusted_mode->clock,
>> +					      link_rate))
>> +			continue;
>> +
>>   		for (lane_count = limits->min_lane_count;
>>   		     lane_count <= limits->max_lane_count;
>>   		     lane_count <<= 1) {
>> -- 
>> 2.45.2
>>
