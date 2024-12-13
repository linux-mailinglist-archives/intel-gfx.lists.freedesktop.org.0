Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 004629F0C22
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 13:23:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9BA10EFF5;
	Fri, 13 Dec 2024 12:22:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fi2nNKvI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7E510EFEF;
 Fri, 13 Dec 2024 12:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734092577; x=1765628577;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k4yD/Kn9TqKzIU8w1fMf/z/4eqjspWWeJ4q83mvmJxk=;
 b=fi2nNKvI38MtJ13u5di4iF9qmz3btBa29XKTWLGABA4S3icO0KqKdlkW
 Aj6n3TP2+IDj+lb+PUlj2Dzt5UsKy3Ek9uoM9aRwbqZLBo6439wdvwJrF
 G+UjeFbu9Hi7hO60p+3ltkTLPUvbLtt9FNwxxVs018Rreynna5s2uhCoT
 7M6Ze+UC4mTy7GzpLnAey0cW4xJrPJNvmf4IotOCOvnfeCIU1Z2X/Cr6+
 NWGJyP9Ql3+MTkMitRVIrxsi1FL5yyiuVsif8uPf+Qx1YxreXNtaRxAbx
 QbQxFvCR2HPREWuV9h280JOSmMl98cof7zSsQPI9Vwk+qPga6ODUIfFjb Q==;
X-CSE-ConnectionGUID: PNX7/3XRSD2pIBC7yjoa+w==
X-CSE-MsgGUID: OAdHyUkBQhi5HRaXoo6KQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="34681758"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34681758"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 04:22:57 -0800
X-CSE-ConnectionGUID: cjmxT5oZSPiSrmW59SJkAQ==
X-CSE-MsgGUID: myA7DE9gRW6Mczbg/QtMEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96381499"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2024 04:22:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 13 Dec 2024 04:22:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 13 Dec 2024 04:22:56 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 13 Dec 2024 04:22:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eKmaghar5t4bCHDteSVghcEWkMcR48QPLhCUaxaoTYXK+NEvW5JVBY9WwhDEXl/SBQNTBne3xOG8au7aN6imUQpG0s/jJ8Q1/wLyu1XCklbsDPvhzkR0a4jTGoyyBLFf0XjH0ZtxRxLoy7fs3dqmlSb51ckLi2EImA0p6R/zZeKRV150DG5AK7hzOhUpjkk50uV/dX9202V8vvKXh4u8b4F5fAHhvtw2Mi/Xrwo3O5afd6WZUNMFyxncGYUCU8whiYlSSQ8GwrOUZIhy1SiUCNL3DJ0zGPDBwE6E5ScJIX8i0Ekn4WPXm6foMo37WLDoY6JwZNW/Vu41PGWrVoofDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ChUoBWcBkqdOSgk/lnrSlzkbM/LSX5BR5/ueqRzrMpc=;
 b=UZ2Pvqip75hYiVwYfrHxnZ9pqzlKtY6l5a+bOsTUPCRYzlTm+zhh0d/kuceNXlV2jtLNlU/94+Rqb6bAmmIVqC2pfsGdFk4gldZwXLF2iO17ua/mGQwReurZUcNtCGuW1NbjjmUXBexB1TZiNl9luCdwxgQU1m7pQQ6Gf5utSriBvoOHDKrjt8Cn12UWiYiINsuq0AjlGfziployocgpLOIb1Gsb+2T6k6/zY0QRIrIb51Zyxj/VGzhAAq6eue1g5alG+99Oaqdcxu48LYIQKAtT2e4U21m2gMspuV9cIigCaEhx3jSJB3ctZ2kY0X5qVkXNtnHyemM/ls5FDdVfgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4880.namprd11.prod.outlook.com (2603:10b6:a03:2af::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.17; Fri, 13 Dec
 2024 12:22:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8251.008; Fri, 13 Dec 2024
 12:22:26 +0000
Message-ID: <af0cd1e1-6dee-48c5-b16f-877e67bbd53d@intel.com>
Date: Fri, 13 Dec 2024 17:52:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/mst: use intel_dp_compute_config_limits() for DP
 MST
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@intel.com>
References: <20241211144310.701895-1-jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241211144310.701895-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0140.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4880:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ce661b1-4d01-4628-d09a-08dd1b70cdd0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZHdwblgxUzBoS0VaTG1tZEpWMzdIRUxOL01oY1RpcFRxV2JDRitYTWRBZklI?=
 =?utf-8?B?NFUzR29LM2JHWXdXV01iZUhLR3kydlZzc3puSWJPSklHZUo2R3RqQ2tDWWtJ?=
 =?utf-8?B?U1RNTmF1dnlENS9PWlovanBMbThYVU1zWU9zNHcva2cvelRjeTRvVm9yS3JB?=
 =?utf-8?B?NjBNeDdid3V6dk5HWXJycU1qMDFwZVE2cERsU3lvZVFGSDZDdS9LR1BwVzd6?=
 =?utf-8?B?MGExbGRBR0tQWXV1a21jeU9vLzNlUCtBT3YrNlVCY2IveWh5OVNZZm00enhI?=
 =?utf-8?B?N3NRTFg0SnN4Kzg2L1NsRlVPcDByeFpYdmFSc25nclM0N1dWOXpVM3VsVXhV?=
 =?utf-8?B?S3lWUkdPNnBIZzhsY0Q0UC9CeG5sSENRYXpIK054N3owdDRocWpmWXkrYWNW?=
 =?utf-8?B?dDFScVAxN2hSUWFaTGIxUmQ3Vk54TUp3c1paajhZa0NpeSs3c0RhYVZ3THJS?=
 =?utf-8?B?a3lKZ0t2WHV0SHo1aVAwWklEREtSOGNzWDFNNEJvM0JMMkx4T3BvT0x1SDNr?=
 =?utf-8?B?ZUpHSVYrdWZQRS9CSUlsUnFjaVFEVnVoTTg2c0xDcTlWbm5HSnAvOWsrOExI?=
 =?utf-8?B?NVphQnVZeGhpOGpnYXZ4ZERYeFNiVEo5d0lINmZKV3BWU1BZRm96MEMvUkZT?=
 =?utf-8?B?ZUR1OE9TSjFTWkxWbC9qZjZYNnhQZk9tSFlHWnYyaVc4NmFieGlSejRGa3kw?=
 =?utf-8?B?ZXRrTDVFZnVBN2VTZW93NkFqM3F3a2FqMWh0N250NUNxNXl1MlJnMEZzOEls?=
 =?utf-8?B?Y1luTzJQRzZweUsxOWUzMjFzbjdWUlM3S3R2aEJCTkt3NWRjVTIyT0xVdkZz?=
 =?utf-8?B?NDcwT3NNT0kyOExCREFrT3FyZmlTbHhMc1d2WHZabURlaTUvOVd2bDZUYjY5?=
 =?utf-8?B?YzIyTTljTlYwSFk5dnY1UWNZd3B4VmFiVGVvMmNMS0t6WmZHUlg4ZUtzYS9T?=
 =?utf-8?B?alRYMWxhMG42MTZJazM2R204KzlMdzhKa2t2UDEvV0N3YTJkOTlXclhRRHoy?=
 =?utf-8?B?ZndhNDltb0NadVZXN2o3V2s5T1pXOGxUUThjUGZ1ZEl2R1VtUkJHK0padkgw?=
 =?utf-8?B?WnNqRzhjTVY3bW1EczBsTk10SS9jU2VhOUhMSUZaYzB6MnA3SWFkM0tuL3l6?=
 =?utf-8?B?QmdTYk50ZzBLSnkzYlFBcDNOKytiZXJubWt3SGNDaXd1b3l0ZE50K3RyVFNk?=
 =?utf-8?B?NThqbmgzSzBLVUExQnVnNUx3ZUQyY0U2cFMxWEROdk9oYThoNjYwYmQvdlRB?=
 =?utf-8?B?R25kTC9WZjB3Z21jZjV0Ym1QeStCZUpZc2Y0UzdIWHJKbHkxOGtXTHUzc2d5?=
 =?utf-8?B?c3Yyb1F6eVZOQWhlQk1FdDRwZG0rZTl4U2Y0VWRzSHhTZ2pYeDlmNWZMdGpF?=
 =?utf-8?B?QVVCK3UyempGQkM0SlZrOG5UT1prenBHMzZTS05BcThaWlMrQVdzc2tOSGV0?=
 =?utf-8?B?d3ZqN3p5MFppMWV2YzJaYTNrblJCVDhCTytpNzZxU2hTTWdnb3lJZ0JYWG1J?=
 =?utf-8?B?K2pRRlhBMlY5SDhPQ3BMTVpOdjg1QjlwWG5qSTUvbGZyNUp1NWlncERSWHRJ?=
 =?utf-8?B?VnVsVDdmSk1lcnJ0RlNpVjZmbkJtTUxVRWlvR2s4dDFWQkFZWDU1cVY2endy?=
 =?utf-8?B?K0tkRDJJOElWbmVRODZnaVdBVThkREJxT1RpU0hnejdjeWZmc0dQT2x1ZjRB?=
 =?utf-8?B?TjUwRnRiY0hITzFnYiszYzVHaHhCL0E3Z1haRStQbE5ibXorZzBkYlJWaEdm?=
 =?utf-8?B?T2J6bUh2TEtzOHFQbi8vSHB2MGtBUkVlR1hNb2drY2FncFdUTytMSUF0OC9T?=
 =?utf-8?B?ek95ZW5SQXJxUkpZbHZZdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTNjOUxUQXV0VGlQdW5NNVVTaXVSV1p4d2QwdTY4Z2F0d05WaUtvUjQrQU1j?=
 =?utf-8?B?YVI4cHVjMjA2cGpNSkFvZVV2VFBld2M2dGhkZWYrRHF6aWNNbHhQZEd2dDBY?=
 =?utf-8?B?OXNDSEJTcUZYUjJJWGJGdnlhMHpFU1p5c050OXAxajhtb1BxRVVOd01Dbjh4?=
 =?utf-8?B?OEQ2eHU1ZTR1TlhHNkw3R0packhQZ25La3hVZDJpcUZjTTM2T0dKODZGMTh0?=
 =?utf-8?B?cGxHSXVlUkFodkthelNjc2NBRi9CbUtZOGpuMUpzTzg0WkF2WTMxS0J4YjNk?=
 =?utf-8?B?cjdVMU1hc0ZQcjVodXJwUmo0ZWxWZU1hVlljWTEzcEcyaVdiVzROOGthTWlx?=
 =?utf-8?B?cmYxK01MVkdZdkx6MmJ1d3ZlUEwzMVc0Qlg2a3oraDFFTlhEaVp4Qk1aeUxU?=
 =?utf-8?B?b2ZxWmpqNEFBVENVa083L1Q4a0RBV3NsL0RlNXhZYk9vbGlaaDJsOGE3L2VM?=
 =?utf-8?B?c1RLdlp5N3dhRlhyUnh5VDJEOVMwK0NtWWNEQ05FS09FU1NKamM2SlRwaXZY?=
 =?utf-8?B?aW1rR2IyZWNYNXM4ZE5WdUM1aFNtU090VGpzUzUwVU02MzkyT0ZnRjVVVGlE?=
 =?utf-8?B?Y1o1bTRsWmFWazQ5YnA2TXo1UFJKUnhZbnd5TUVYSnpDOTZranpRWHl1WWVS?=
 =?utf-8?B?Z0NlcjNGVytEbjJFeTVNWXdpNVFHcUZIM2VmYXBLZkp2VkxXb0w4Z0RPOGhV?=
 =?utf-8?B?LzVqMW1zOXI5Uk9UNFVaa1F1c24vQ0JpTTdIZjVPWExqTHpCdStsTUkxVFJH?=
 =?utf-8?B?M2tGRmt1QVozKzgwKzdBSzExSGxQbytIOWVxUWZTVktiekl5U3RteEM2dFZ2?=
 =?utf-8?B?a2poaEwxUTAxcEZmRjc2aUxNUml0RzUwYkI4T0dpY1BGRmlhSk5NclVXNFY4?=
 =?utf-8?B?eFJrNEJYeDNlUG9XdzhYU0ZsTExLUGxNaVRhbEQ2WnFPOTdpZmJZWGh0SGl2?=
 =?utf-8?B?VWJsdjc3RVZBOWZKK3B3b2NCaVdnaDZOenEvNW91b2Jmb1lPbnFCWjNDcklD?=
 =?utf-8?B?RWY1UGV3cVZiZXZnNXc3THpMVzFveXRPQjFDQ3drUEZFclFCV2ZVNVduaThw?=
 =?utf-8?B?Y2labDBTeS8yb3N6dmZjeXNFdFNPTGs0Zi9BMWh0VEF1U3lTQW9DenRlQWtj?=
 =?utf-8?B?R1RrV0FWUytpaEZNbWEraDg4bVJ0UWpXOFFDdGpUVlp0UUlDOVlUd2dlMDJv?=
 =?utf-8?B?T3hBZXY5QTkvcVorRVVwb2d3eU5JQlJ1R0lZdlNNUXdmck9HblJqRUZvWC8y?=
 =?utf-8?B?Q2Q0dmtPWDVhU1FSOHdkcGxuUkp6VS8xdzlTYTVhdFpLNXdRMDhmZzlzL0w3?=
 =?utf-8?B?aWo4czJ5OTdUZVRDNU1BUzB4MTI5eVlXa0RJSE53aGc1M1EwMFJGcnJaL0ZI?=
 =?utf-8?B?aUsvbG1nRkhDNWx4YUZrdnhIREZvZTRRZStFZEhlMHF0NGFTQ2wyN0tYWmZk?=
 =?utf-8?B?MEhOQzJvSngrU0Y4cXlVYVVDUkZtZW9rVk5hVkk3ZGx2N0kvbVdGS1F0WU4v?=
 =?utf-8?B?UnB2bGdNS0pIRHd6Y0ZVcFdQOStEYzFZYnlZZ01wRS96YXZmUDBWeCsyU3Ba?=
 =?utf-8?B?M3AxNExxdFNwYUpocUVBeVgyaDlvZHk4T0pXSXBtVHcxblhYV1htaDRkdU9S?=
 =?utf-8?B?bEVzUUZoTnBYTlBqUFhKaTRVeFViVjdZOHJockVrbUdKc2dDSUphSDlUR1ph?=
 =?utf-8?B?OFM0MEZ5cUs5Y3VFTURiZUFKdDF4SWg0N0NMYlVtT2xEbTB5eTRlVXVLOVYx?=
 =?utf-8?B?d0dKOUNqWm9XQ3ZsNlRHd3ZZMEF6OW9jT0x3Tk1kdVNqUUYvbTI2d1JNdjhL?=
 =?utf-8?B?NUw1dDFBZnQ0U0pzbW9pV1VyRXR1UERpYzRtWU9WQW5XaER6QlhpNE5NdVNk?=
 =?utf-8?B?SUJzRWMxck1IV2JIODFYc2dyYjcyc2FUQkpEcXhPdWZSZy94Y2lCMTcxV3Ar?=
 =?utf-8?B?Qkd0ZUI1azBZUy9KOHFGVkpZa1BvUjF6N0JCZXNnU2Q1TGpMRjZLaDl0Y3hn?=
 =?utf-8?B?VEJnbGVhL0tOQXRkcjN2Q0RId3ZPRnJKS1hFVVVUQ05rR2h2RzdpZ0dyaGRm?=
 =?utf-8?B?T29tK3pPdFpiaHEvTGl0RWFqcy9SNll3RWMxSWNHS0N2YVR5b0tPWDFML3Ir?=
 =?utf-8?B?Qk9HcUJXTkEwdFJKb2xOREJiK0RRcnJSdXhJYzNtbjVkUFpWZ2hUcWk3WjdZ?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ce661b1-4d01-4628-d09a-08dd1b70cdd0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2024 12:22:26.3354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dh/JIFGjALkSKYWXkUgCSW+qqI/W+UlutGDtStnhBf6BTbdG4PDKh5l4m8TBx5xiujW5TEC5gQ7yGpyNOU5/EPNh2M5IBnKpHqDz3dWIQCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4880
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


On 12/11/2024 8:13 PM, Jani Nikula wrote:
> There's a lot of duplication between mst_stream_compute_config_limits()
> and intel_dp_compute_config_limits(). Adjust the latter to suit the
> needs of the former, and use the same function for both. This reduces
> duplication and highlights the differences for SST and MST and UHBR.
>
> Remove the kernel-doc for intel_dp_compute_config_link_bpp_limits()
> which now becomes static.
>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c     | 44 +++++++++++++--------
>   drivers/gpu/drm/i915/display/intel_dp.h     | 10 ++---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 29 +-------------
>   3 files changed, 34 insertions(+), 49 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index fbe6b77d642e..4b6676e785bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2455,19 +2455,11 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   	return 0;
>   }
>   
> -/**
> - * intel_dp_compute_config_link_bpp_limits - compute output link bpp limits
> - * @intel_dp: intel DP
> - * @crtc_state: crtc state
> - * @dsc: DSC compression mode
> - * @limits: link configuration limits
> - *
> - * Calculates the output link min, max bpp values in @limits based on the
> - * pipe bpp range, @crtc_state and @dsc mode.
> - *
> - * Returns %true in case of success.
> +/*
> + * Calculate the output link min, max bpp values in limits based on the pipe bpp
> + * range, crtc_state and dsc mode. Return true on success.
>    */
> -bool
> +static bool
>   intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>   					const struct intel_crtc_state *crtc_state,
>   					bool dsc,
> @@ -2515,29 +2507,47 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>   	return true;
>   }
>   
> -static bool
> +bool
>   intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>   			       struct intel_crtc_state *crtc_state,
>   			       bool respect_downstream_limits,
>   			       bool dsc,
>   			       struct link_config_limits *limits)
>   {
> +	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> +
>   	limits->min_rate = intel_dp_min_link_rate(intel_dp);
>   	limits->max_rate = intel_dp_max_link_rate(intel_dp);
>   
>   	/* FIXME 128b/132b SST support missing */
> -	limits->max_rate = min(limits->max_rate, 810000);
> +	if (!is_mst)
> +		limits->max_rate = min(limits->max_rate, 810000);
>   	limits->min_rate = min(limits->min_rate, limits->max_rate);
>   
>   	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
>   	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
>   
>   	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> -	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
> -						     respect_downstream_limits);
> +	if (is_mst) {
> +		/*
> +		 * FIXME: If all the streams can't fit into the link with their
> +		 * current pipe_bpp we should reduce pipe_bpp across the board
> +		 * until things start to fit. Until then we limit to <= 8bpc
> +		 * since that's what was hardcoded for all MST streams
> +		 * previously. This hack should be removed once we have the
> +		 * proper retry logic in place.
> +		 */
> +		limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
> +	} else {
> +		limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
> +							respect_downstream_limits);
> +	}
>   
> -	if (intel_dp->use_max_params) {
> +	if (is_mst || intel_dp->use_max_params) {
>   		/*
> +		 * For MST we always configure max link bw - the spec doesn't
> +		 * seem to suggest we should do otherwise.
> +		 *
>   		 * Use the maximum clock and number of lanes the eDP panel
>   		 * advertizes being capable of in case the initial fast
>   		 * optimal params failed us. The panels are generally
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 48f10876be65..8572d7df5335 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -193,11 +193,11 @@ void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp);
>   void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
>   int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
>   
> -bool
> -intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
> -					const struct intel_crtc_state *crtc_state,
> -					bool dsc,
> -					struct link_config_limits *limits);
> +bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> +				    struct intel_crtc_state *crtc_state,
> +				    bool respect_downstream_limits,
> +				    bool dsc,
> +				    struct link_config_limits *limits);
>   
>   void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
>   bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 123c4ece6268..d77ebcb1432e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -585,33 +585,8 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
>   				 bool dsc,
>   				 struct link_config_limits *limits)
>   {
> -	/*
> -	 * for MST we always configure max link bw - the spec doesn't
> -	 * seem to suggest we should do otherwise.
> -	 */
> -	limits->min_rate = limits->max_rate =
> -		intel_dp_max_link_rate(intel_dp);
> -
> -	limits->min_lane_count = limits->max_lane_count =
> -		intel_dp_max_lane_count(intel_dp);
> -
> -	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> -	/*
> -	 * FIXME: If all the streams can't fit into the link with
> -	 * their current pipe_bpp we should reduce pipe_bpp across
> -	 * the board until things start to fit. Until then we
> -	 * limit to <= 8bpc since that's what was hardcoded for all
> -	 * MST streams previously. This hack should be removed once
> -	 * we have the proper retry logic in place.
> -	 */
> -	limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
> -
> -	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
> -
> -	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
> -						     crtc_state,
> -						     dsc,
> -						     limits))
> +	if (!intel_dp_compute_config_limits(intel_dp, crtc_state, false, dsc,
> +					    limits))
>   		return false;
>   
>   	return adjust_limits_for_dsc_hblank_expansion_quirk(connector,
