Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 675FBA4F8D1
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 09:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A09E10E1BF;
	Wed,  5 Mar 2025 08:30:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UcJp5AhT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8254810E1BF;
 Wed,  5 Mar 2025 08:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741163457; x=1772699457;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d4M6p8IeVWxQXypliVETcLkJ1yYMYeLt+3iwRo9tB80=;
 b=UcJp5AhTttXgDKKAIuPgb4eQWz6V8jVs/CugVYvWt3l0vJnbnWzlGuSO
 /03Bs5k0+iWuCezz+bLY8gf9Er9KaW2EE3iCzvE6fHv0t2p6O2sbzn9zM
 UiYFNkPPRQkdMNrm8XgeTTWLVaNlviqUvLUS6KA/kpvu6/BJd4mGChr9/
 1riZUKYzE+vtnrvFp2iSOkqpxu0rigJrIhWA2GjmSlgpIelKywqr4zlja
 cWzuroYfVP5EU2jIT0Ly+novSZuoCOtJFxGrbN6yogPPNEj5sSHhzHvDN
 r5w1l2y97gTa/H4h7qpY7Pjn8BTSAw0nYkQm2vZ2aVG1AghUk8ie1OOvQ Q==;
X-CSE-ConnectionGUID: s9tY9p+RR1GH1erCXbWEJw==
X-CSE-MsgGUID: HVAsbC4IQUqzMdAmFHxw4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="59657296"
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="59657296"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 00:30:57 -0800
X-CSE-ConnectionGUID: MRd6GBx8RK6RPThDQSSs9w==
X-CSE-MsgGUID: oAJ4P1qVSqaN9QSLDrLbNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="123721763"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 00:30:57 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 00:30:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 00:30:56 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 00:30:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d0Eheb2roJ6lhbxNymIQ/pHhjai6gzABfj707e3YKwXhzYItc4Bc//ErxYbnNXkv8JXlUKnNjmzOlwFNOI4ylmZvuw4Dzft3FIXQwkpDKiLGHDHXCg8ESuVtCK/zeXww3PZMmHmSzM8k2YRP4iPBRO/7fbtbct6L8LKWldVQSRYpezfWmEaom+QkPx3q2/YRGDMxWbZjaAOOCkq9T0HJv5UOs2WTVLaYK7do/wB54oVyzGSU5R+KdLtBZKLWhcCJkO/CNzLFvx7wmTxy23HJnCl1m7AWcrO8ecGFMO3aghIjkjB/ZuJh4YwKDTwjovn1JeRU5rofR1ONuTWPAywiGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C2jrQ3Lm9iQsElLO3t9leBIGEkkL6AWh/RIAs64rQ/E=;
 b=dnIPXKNLtR2evQI1vwsrfTV2hpwnDwyukTfI+YwVlh4GGBLcERjSByP0HLesMbklXdjhAJTq+C9jTP6h61n/JOTF0Chr9v03+kBeUcnSenyju0fyrHtI6rkc0QhBRoVknBCX8O6RECooKgMHzn5jhEmnZSFXcKDAMcK+V7SI7JWCxVSyEuU0H03KOtQZG7Q15BpU1e9i4FiCKMdxBJLY+Vb8INvDh/EIHU8FFAuvjtSOUlmwfLV0r+mIewSaNN/t0bCqXrfZjkjIHVivpWZkgvOeuO+Ti1l4aRSznGX+psIBjo5G555suBqfouEdDrE7NPF26I/oBEXSiZpuRwa7AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB7634.namprd11.prod.outlook.com (2603:10b6:510:28d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Wed, 5 Mar
 2025 08:30:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 08:30:52 +0000
Message-ID: <c136da5d-6e46-44a3-a9df-5798146e4dab@intel.com>
Date: Wed, 5 Mar 2025 14:00:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/22] drm/i915/vrr: Prepare for fixed refresh rate timings
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
 <20250304081948.3177034-8-ankit.k.nautiyal@intel.com>
 <Z8dLQPox84RBqlNU@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z8dLQPox84RBqlNU@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0111.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB7634:EE_
X-MS-Office365-Filtering-Correlation-Id: 38591d00-f797-4233-469b-08dd5bbffede
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Tk5QVldWS2J5YjB5SXpMYnFLZTFNdUppY2dMc3FNandIZFdHd3k0Z3p5cVMr?=
 =?utf-8?B?MDVJb2M2ck9NNUcxUnF1TVI5azBZQ2VQeEVOVjBYQXcwVTUxRkpteVE5NVV6?=
 =?utf-8?B?SGJqaXI0Z0J0WVZFTTZ4N3ZwYnNHZG9pK3JiTnJoazAzYXA2MllEUUljQ3dC?=
 =?utf-8?B?aTNHbVRINVdtQW9PVDF5OEJHMWlzdW9SUGJNY0FDRjF6K05GK2ZLWU8rbWpG?=
 =?utf-8?B?MnBOaDZDVGlYcTdtQUdVQVRJSXFiYkNBV0lLUllKd2dlT2wrbFJFWVJMNWJ1?=
 =?utf-8?B?ZFVKTEQrRmtvcnV6Q3dHSHpxTmhNOCtLNHJ6eDZyWnh2YU1HU2NxNExwN0V3?=
 =?utf-8?B?bDR6UVllS3dXa2tVVDdldldtQkRSSGt4SjJrQmZxTVpuS25qYkVidEZrTmRp?=
 =?utf-8?B?TUNEOHYxMHpHMmRBYVR3OE9YYnJUdkxRUUpmZ0Jsd3Q1a1UzNmJUUHRmMkpL?=
 =?utf-8?B?VGcyNk42cnF5ZTFFUUxoMnpTNFV0VjN2QTl1RVQ2K2JxODdnQlFQRVR0SjFO?=
 =?utf-8?B?R3B5bHV3Z2tXKzMyOXJsbWs1VWk1YjdnLzZnNVo5Vmt1Mm9pL0JEeERkOHJB?=
 =?utf-8?B?QVVBZFlZZklPalQ2ekREWjBvMUF5dmE3RzYwakQxMi9mVkptTlAvamhLOUtX?=
 =?utf-8?B?czg2YythMzJiUmdlc05KcEZDdHppM0w1aExNcWhCU3dmMmxsYnRrZ3lGVUpM?=
 =?utf-8?B?OFRTRnpLTE1mcDRWSFZ0eEpOa0hDbWkwbE1xZlR1OGN5elBKbE9LZzlESzFk?=
 =?utf-8?B?U1VSblJaNm4xUFEyY0tkK21pOG5NQjhzMXdmL09wV21peGlMVXlQM1pCQ1lW?=
 =?utf-8?B?YTJvVTNFZWswc2dSSGh6QkRHcEJGam4wU3c5S2hxU2NYd1JPZ1JXdEhKTFZo?=
 =?utf-8?B?WG00ZjZFWnM1RzAzNXFPV21ycEtOeTBVZVUvZXF3SStlRE5iK0UzMkc1QlRt?=
 =?utf-8?B?cU1XVm1rbGlIMldSTmtOanoxRWdsSVBkTXM5WW5zY001N1FnSU44SDJKY2s1?=
 =?utf-8?B?dG5wcFJhNzhRMmFLMW5FcEtLaFpJZ2EzNTNISlh0YVE1M0tpYUtvZzRTQmo2?=
 =?utf-8?B?dFZyQ0UrZlFIa3Bjd0xRTXdYeVpBaHFoaVMvL3ZZV0N5ZisycFFlYysybU0x?=
 =?utf-8?B?NFZqWkFlVXE4bi8vT04yeDg2Y1hkS3RuR3g4UE9ObytGRXd5c2tRZGwwNmpz?=
 =?utf-8?B?dmI0VU5XaFIvRThpb0pVYWMxeUEyS1hadHpJWGE5R1Z1MkdIbTdCYVV5cjJF?=
 =?utf-8?B?bW9rbS9JWFpiY2g1UXJMTzE2ZXFLbkhXdDk5VmpWTWVjVkszQ28xQkJHWEpS?=
 =?utf-8?B?MG13OWM4ZnJuTFY2a2VkcklzQUMrUjRoYzNBNlNSWVdWRWc5N1J4Uy8ydEY4?=
 =?utf-8?B?N3VNam9GSTJhMzF5QWVoZVMwVkk3VzBxYTdFQ2NTak1pZUM4MStTaUsya1N4?=
 =?utf-8?B?REQ0eXFSOWVWYkhkMGdLZG9UeEZBWlpwUGMySk54ZUVPcnA2NmpFVHh2bE9R?=
 =?utf-8?B?ZlNhWk9UVlRFbUpvbmFNMUdNSGllSllmZiszRHYzTnFlRllWT1lBVjl1a2Zl?=
 =?utf-8?B?aCtxNUNPR1RxVmNIREpaYlFsT3g5amh1WnNqdTFQTS9nN25DZ3NrZzdOcVBk?=
 =?utf-8?B?MGlkMmtpQU4ra1R5WGVEL1dpQVR0L1FoRHN0eGdhK0pvbmZ4TWJnOWI4QkFp?=
 =?utf-8?B?M2lyamNXOUlMcUhqVElQMHFiRmJqR0pzdnZsUnpaejNscjhINTBBTUVPWTNH?=
 =?utf-8?B?UjVkMXcrV0hLOUF3dlYxV2dYM3RNelBkRENXSUcra0sxdUQrSDhXYWpyMUlJ?=
 =?utf-8?B?MEVQYUx2YXducnpFMmp1dlFaeDRFN1gyeTVoM2ZmVkJLT3VYamtWWHdhWnZj?=
 =?utf-8?Q?/MwxBdCOfroA8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzhjeTlGdjZVUkJCL3FVRVJhQVJ1ZDNTQjl3N3ZsUFlrVk9CUWhIbUY2L3dl?=
 =?utf-8?B?UVo1WmJRZWc5aGk2czBmNTRJRWNVQjJGeG1hWE1WRFM4Q25QWjNScVVMVnRU?=
 =?utf-8?B?WFFFdE1HcDhUeVUxekpQVTBhMnhEbGNtbTRmRHR4RXFmeUtnQWd2U1Fmc2d6?=
 =?utf-8?B?MGh3bkF6RDVWTjdMakFUOE40YW56NUxFRkpHcXkvTlV2N1JKV1VCTmpsN3ps?=
 =?utf-8?B?N2hINXhpL3VFRzQ0YVRHdjNsZmtKVlJNT3VxWDhvSEZTY3NGa1ZienVmUmJQ?=
 =?utf-8?B?clRxOFc2RjdlOW5CbCtMaFV5VjArQWNSWTRVd1B3YXBiU25aRmNJaXV0dDh4?=
 =?utf-8?B?VHVmNW0xa1NqaHhxY0hmVC85Y0xUWk1MSjRjVU03T0p3cGZoWG5LSk1idS9h?=
 =?utf-8?B?SU9GbGVIQnZrWjBHTHk5c1pIdU9PNXp6VEZNK1V6UWtFSklrQWhvWG5HZjFO?=
 =?utf-8?B?THNjMXNWY3NTdHVBTm5WQmFWM3lDNDhVaGZyWUZNaVA3c1R6T0JZTHlPT0Yv?=
 =?utf-8?B?SlZoVS9XWDArN29UcFFRM1BjWCtXTkVNYm9JVEx5eG10SEtWMjZZenRVWGRL?=
 =?utf-8?B?citKVmFPOEw5TnRzU1gwaHlIdC9WRklhQkxCZHpqR3hTazJUSjhlcFdXYWNj?=
 =?utf-8?B?S3BQMzVmM3NlcDdBeXBnTklSQ2lkZnBSdE95SHFhdjJGdG9ERExPSWhldVdF?=
 =?utf-8?B?dFNQMWZSRk9XVFJ0V0hOQWdDaWlGQ0w2c3hncENqTTNEd211aHhxdnZDZVJp?=
 =?utf-8?B?dCtlZ3BEY0RBTVQ5a1VURXl6SG9CL3kybDFsRVNMSVVuRVVSS2pZYkw5aFU4?=
 =?utf-8?B?OWRBVXhpcmhETkFieVZDN29zeWRzZzhxVGtKQ3RrYUpiRUJNQVhiTUZCYStm?=
 =?utf-8?B?bW9QbldXN2VuQjU2ZWVYZ0pDQ3hTR0t6WDJBUE5Xa0pONjJZZzYwVHBpaU5Q?=
 =?utf-8?B?ZTZDcGEvY00xNStrbnRxOHZMdTd1bjVqMG1EQXM5dytJeUNvTE9NZjFZYWM2?=
 =?utf-8?B?L2lRc21YTllsQnFvaHlwdnNmMHBVelZaeUVOWWlBQzNhbWo1eWxSdllNNkZl?=
 =?utf-8?B?R0dlRUUxZGRzNDJsbHQyYll6SzBzTDZJSTNuVHNRVlRNdDB5Ulp6V3RzRE9V?=
 =?utf-8?B?eVBDdEtwYUhyU2huS0t2ZGZvbnBPZXhUaFoyZ3o3TlFQZi9TZHNiQ281elRP?=
 =?utf-8?B?eFZYN0cyb1VWZGxuOXlPeVFZRm9QMWdCM3ZiWEdIQ1JRdk4yZ3V2cHVrMzY4?=
 =?utf-8?B?eHdOU0I0b2NxMHRrVDJWRXdaeGxaVVo0MzdzeTBPYjNSei9mVlJ0eS9OQWY4?=
 =?utf-8?B?RExpelNDZm13VElWR2JRK2k0dkVvYnVBcDh0ZXFkS0l2b0E0UWhtRmZNYkZL?=
 =?utf-8?B?SERFMGhzeWdJUFFGYnRmUFQ3T09RYjlINGxBNUhnR25GSGFXYXkxK1M4eW42?=
 =?utf-8?B?eTNMbGQvNFZ4bzN3UGVtN0xFdTJscFAzZHJaMUdVZDdGd0srOXRCcG85TWJ1?=
 =?utf-8?B?Y0FyeGhkUmpJVmcrRU00VkdZUitUNWJmUjNiOTFET0RDUlUwenhhZnlVS0xz?=
 =?utf-8?B?Qjk0Yi9UbSs1aUZRNVFqVDdtcUZVTFlnSHhtM3ZHRkdqelpWWW5kNmdpWGY0?=
 =?utf-8?B?SDBsUi9CQjZ2WUdNaFRtdW16UkR5OVVDUVVRUUJRcGdqRjQ4SmR2ZDhDMWlG?=
 =?utf-8?B?M1VOL0JhK09ZTlQvamR2V1N0dHkzL2lTL2xvZmNCRVR2R2lyaWFQajNFa2pJ?=
 =?utf-8?B?bkNJaWdpSTcxS0NqWGVjNzhIYUpzajQ5NlZOTFhrd20wQ2JCRHNZQlFMQWhR?=
 =?utf-8?B?OFIyQkI3aDJyMnl2ZFUxSlhocXFmWThWQ1BVdm9ielhPUURpMHBjcEhXWm1M?=
 =?utf-8?B?MDVsNmNiR3lUZzAybGNPUXpqaUJsSUI1cFYreFZSZ3Q4REV0SHlQRFBZeGRM?=
 =?utf-8?B?Tkl4ZkNJRHRWVDVaZmtSak11NEk0dkZsckF6dndXOGFZRS9XVTIzcjBrQ0cx?=
 =?utf-8?B?WUhUWTRDd2pYcnlsOW9lbzhSeDJoRXJXVXZyaTV5UGVXSnUvNk15SUMxUnRH?=
 =?utf-8?B?cVhqMkY2Ukx0YlZyTWtRWU14UlFWTk9ULzNxem0wZmRldUkxQkpFTTFjOFQ3?=
 =?utf-8?B?encxRTloTmZlR25mRzBWaHdjTXNmWDh0dS9EZXRoQkY3NGVENGNMdDNxc21O?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38591d00-f797-4233-469b-08dd5bbffede
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 08:30:52.4506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: roAt7S+H1pjljRnCAVgG6GrZJDsQ+0J5xgHgj9cSZj36LSrR7g4M/E6oMAm+KUDGWeDJofWLlppNWs9ti9e9y4tUywK/Yf0MQAOEH1K/oyY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7634
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


On 3/5/2025 12:19 AM, Ville Syrjälä wrote:
> On Tue, Mar 04, 2025 at 01:49:33PM +0530, Ankit Nautiyal wrote:
>> Currently we always compute the timings as if vrr is enabled.
>> With this approach the state checker becomes complicated when we
>> introduce fixed refresh rate mode with vrr timing generator.
>>
>> To avoid the complications, instead of always computing vrr timings, we
>> compute vrr timings based on uapi.vrr_enable knob.
>> So when the knob is disabled we always compute vmin=flipline=vmax.
>>
>> v2: Use actual timings without any adjustments while preparing for
>> fixed timings in compute_config. (Ville)
>> v3: Avoid setting fixed timings if !vrr_possible().
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (#v2)
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 73 ++++++++++++++++++++++++
>>   1 file changed, 73 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index e0573e28014b..0e606dfe4a56 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -246,6 +246,68 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   }
>>   
>> +/*
>> + * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
>> + * Vtotal value.
>> + */
>> +static
>> +int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
>> +
>> +	if (DISPLAY_VER(display) >= 13)
>> +		return crtc_vtotal;
>> +	else
>> +		return crtc_vtotal -
>> +			intel_vrr_real_vblank_delay(crtc_state);
>> +}
>> +
>> +static
>> +int intel_vrr_fixed_rr_vmax(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return intel_vrr_fixed_rr_vtotal(crtc_state);
>> +}
>> +
>> +static
>> +int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +
>> +	return intel_vrr_fixed_rr_vtotal(crtc_state) -
>> +		intel_vrr_flipline_offset(display);
>> +}
>> +
>> +static
>> +int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return intel_vrr_fixed_rr_vtotal(crtc_state);
>> +}
>> +
>> +static
>> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	if (!intel_vrr_possible(crtc_state))
>> +		return;
>> +
>> +	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>> +		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
>> +	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> +		       intel_vrr_fixed_rr_vmax(crtc_state) - 1);
>> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>> +		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);
>> +}
>> +
>> +static
>> +void intel_vrr_prepare_fixed_timings(struct intel_crtc_state *crtc_state)
>> +{
>> +	crtc_state->vrr.vmax = intel_vrr_vmin_flipline(crtc_state);
>> +	crtc_state->vrr.flipline = intel_vrr_vmin_flipline(crtc_state);
> I think it would be cleaner to just use crtc_vtotal during
> all this timing compute stuff, and move the magic vmin
> adjustment to be done after it's all done.
Alright so IIUC for fixed timings case :
crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;

And will move  crtc_state->vrr.vmin -= 
intel_vrr_flipline_offset(display); after all compute timings is done.


>
>> +}
>> +
>>   static
>>   int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>>   {
>> @@ -325,6 +387,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   		intel_vrr_compute_vrr_timings(crtc_state);
>>   	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>>   		intel_vrr_compute_cmrr_timings(crtc_state);
>> +	else
>> +		intel_vrr_prepare_fixed_timings(crtc_state);
> The "compute" vs. "prepare" difference in terminology is a bit
> confusing.
Can change this to `intel_vrr_compute_fixed_rr_timings()`


Regards,

Ankit

>
>>   
>>   	if (HAS_AS_SDP(display)) {
>>   		crtc_state->vrr.vsync_start =
>> @@ -496,6 +560,13 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   	if (!crtc_state->vrr.enable)
>>   		return;
>>   
>> +	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>> +		       crtc_state->vrr.vmin - 1);
>> +	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> +		       crtc_state->vrr.vmax - 1);
>> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>> +		       crtc_state->vrr.flipline - 1);
>> +
>>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>   		       TRANS_PUSH_EN);
>>   
>> @@ -523,6 +594,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   				TRANS_VRR_STATUS(display, cpu_transcoder),
>>   				VRR_STATUS_VRR_EN_LIVE, 1000);
>>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>> +
>> +	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>   }
>>   
>>   static
>> -- 
>> 2.45.2
