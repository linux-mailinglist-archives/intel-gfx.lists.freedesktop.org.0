Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 695B0A82186
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 11:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C40E10E82E;
	Wed,  9 Apr 2025 09:59:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fdG5+slC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0BBD10E82D;
 Wed,  9 Apr 2025 09:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744192749; x=1775728749;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wns2KP1qk1xx3ZjvjE3DnYmzDLtjO3dhqvrt7UaSpeA=;
 b=fdG5+slCmumWvD3VfLxAzuRKc0aKAtmJvqCD3ZU9VoRYTWfbTveFwBS7
 QP+me3UrBWbOUZ02iF3vbUdVkPoGTht0CLPE7NpoFwPVMel8Na6+zXkFj
 4GE8WSDXU76x8sXSajR77PwaoG9Wwf+ezAEwSNAs6fGZojiiWWDjSxctI
 QTFLruFDYMuzM44erOrwtiWKoDPjPrEZRNxtEjkDDO/21UjfGYssFMdDn
 GBKLwsV8qtSGftKIviXuvcbv+VBFykbRgXUEcNL5mXlpDt3bcHjPODa0D
 JGCBBtmMZKwBNkIWePkfN1XdMIHjLbaVuVhPrT/5yCgJffU96gwJzQ5YY Q==;
X-CSE-ConnectionGUID: 7Os/6qXiRhiTjIk1ZgiTTQ==
X-CSE-MsgGUID: GcCtTT9gQ4WTzUZzxNWtng==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="33264358"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="33264358"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 02:59:08 -0700
X-CSE-ConnectionGUID: rUw+hOlwQbS8G8UTzn0iwQ==
X-CSE-MsgGUID: W/6FVgRPQDa07O+2o4hg7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="128277447"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 02:59:08 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 02:59:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 02:59:07 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 02:59:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U9QcsXpclu+kMq1vZMlL3sgLEHoetGDZK/0R26HDDFHzgzwto+QHwpZpeFmpScLgno0k9qidxR6y5k/zHIqhCMSkYgFWXcZsv0MS8EOQUw3oPwdWavI7VlwSLC24YpnB6NSdqxFA5Ipm1gFyNcfouUUhtmc1g+yYPaoV8D83GhiW0kbP+o6iGiUQTpHxib//Xfojx18G+4j1oVwbcMM9hmAg0WLx5Hc9wysK5MTDEENm97RzXhf0FsQZfYKVpcNllOFYDVWVujKcfHWtZBaLSvegzGI3EAZyxSg6D0DOo6dtEOm5WpHbcI746ywYKbiACHMPV+cM0PFu2xzoQCj6Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5RycpdIAwDfM4ldsJqVsHq2VCA+ABy1z1stDSpbW7H8=;
 b=QuEtRM/WqixHuHdhjKmyrxeSQJtuIGDK53+EKik6aIyK5imnkLRcqDpA8f2yJQwAmcwYVoXB+8a5/Tz9cCGRGkHHj/yFZM39fHLipnrVr+7m+P6pkgd/jb4CW2EcU0lres5fwvemnQzjzRcfSYA9f6EFNcKezanXH3ZTa/PZY5HxX2NV05KXLiHsPisrwdTKGMpHWeDysqNoFj1RS5QyK8yLLBjRYEc3nqRYlDoBMRsGPzaqvWxiLIpa9BSjP3e7WX4PzoWUeJBFib2lZOSfaMVZyjlXOVV2T8aMvbEgf8N8AAzjEcn8EJPVX+OnnkLLbs/moWb6wQoSz+KThnx60w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 SA1PR11MB6735.namprd11.prod.outlook.com (2603:10b6:806:25e::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8606.34; Wed, 9 Apr 2025 09:59:05 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca%6]) with mapi id 15.20.8632.017; Wed, 9 Apr 2025
 09:59:05 +0000
Message-ID: <a4046beb-7973-49b1-b7e7-ea407a007f3e@intel.com>
Date: Wed, 9 Apr 2025 15:28:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t 2/2] tests/xe_pmu: Add frequency test
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
References: <20250407234406.4084642-1-vinay.belgaumkar@intel.com>
 <20250407234406.4084642-3-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20250407234406.4084642-3-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0089.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::15) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|SA1PR11MB6735:EE_
X-MS-Office365-Filtering-Correlation-Id: 62a1eb7c-c986-40e9-df77-08dd774d2992
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHViWWVTcDduWXRDOGJESjZKRE5MdkhmVUZ6blpINEdPdldlc3MzcG53WVV1?=
 =?utf-8?B?QXlPN3Q5RnJCbkhQeE1POVMwY1k0cmRNSHRibXJYeVRFbGRPcnRtMTZDTTlU?=
 =?utf-8?B?QWxqNE9WRlEyUE9UMFZSOEdPMDZubTFjSHB4dWlocVc0bExYaUI5ZHZhbGpl?=
 =?utf-8?B?d0RMQk81MklRU01WK3JtaUsxYlZOK2Y1eHdrZjQ2aGdMai9URmdNSXRySGI2?=
 =?utf-8?B?SmI2bkhHb0tQMXMrTWJQcUJXbDkzd2YzUHFUNlVHRDc5bEZkN29na1NiU0tY?=
 =?utf-8?B?MUgzZWxjMkxCN3d2TWN4anJHYWM3SmpwNUxrcWZSNytKSGRTRGhSbWVRcHpv?=
 =?utf-8?B?V3NLd3ZVVTFpUnN5Vm51dXlFa2RTYVVKS29ia3pUdGhJRHJNRG9ma1lhdTJ5?=
 =?utf-8?B?Wjc2Zkdpc2xnTWNuVlovZ0pPWmxXb01vcmV6RnE1U29VZW5iYTJJdTErdW1u?=
 =?utf-8?B?VndERTNrV09qcFY2VStycDFZRkwycElmOS9CRG5ERzRtaS83U1grd3ZUS1gx?=
 =?utf-8?B?VTdQZHVEUVdHbmQyZ0NxSVAwQ2N5emxZbW8ybEpoN056QXUrZFE5ZUxpTW9v?=
 =?utf-8?B?OFpXM0oyWTRha1FxYnM4dUpIeFlvcDdwNEpDU0lnU25XdlA3ZU8vWkNReUNG?=
 =?utf-8?B?b3BkNXZqYnVMWGdYcHg4YWVBR29iYU43anJITUNOVC9iLzlwb2QxUXV1SjM3?=
 =?utf-8?B?SldDS1QwWENJNlQwQTdrbnpXMEpMcmZmbklUZFVSWFFzc08zemJOL1FjRnVV?=
 =?utf-8?B?bTVJQlJUS0RWWW1RK2pHYlcvQVYxcnphTnk4K3NrRE92cTkvbnhieThJUTc1?=
 =?utf-8?B?NXFhU2dFVFZ5U280U2tlNWNnUENVd2MvTXR3QmN6bGhWbGw0WSswWW5Zbi9S?=
 =?utf-8?B?MWppREtuQm0weVk1TWZrZzhZMTBkUUxFSHhJeG0yU0ZPSklqUjdVRnYydlVY?=
 =?utf-8?B?RDEzVU03bHNOaUZjK2l6QzlMSkVMU2VLV3hHQlpEUW44dlhyaStnTjBzdXFY?=
 =?utf-8?B?akJySFRYZkx0SkVSai8veXR5OUx5ZnJreFd3VnZ2WVVvOHF5bE1UelkwUVkz?=
 =?utf-8?B?UUEwMVJ1WkN5RC9ieStaVHYxYzBDaHNkR2NEa0EwTjJ3QS9MNjdLYVRVQ2ty?=
 =?utf-8?B?M2JwWjBtMFN1d3N2bkZ1Wkc1QWVUWE84RVVpeFVMUkVxc2M4dHVoTDBVcGhT?=
 =?utf-8?B?VGUrTk9naUYrTVY1NjFHWTJIODl3dXBQUm0zeU8yQWxiU2pzNUU3OTl5dkh5?=
 =?utf-8?B?V3ZXc0RRaEFxeDRMTHBuUWR5cERRNkxoWllONENDTkVMZFlNYzlvZmZLVGVs?=
 =?utf-8?B?TlluVHdWM2lWejgrV3dKSW5tZURJemJFNkRqWVJ3aXFlZm1BYm9LT3k2WjV2?=
 =?utf-8?B?K2JoYTlCUnR5SjlZY0czRkhycUQyblVQMW96ZExtUDB0SlEwWWd5TmtHVXRh?=
 =?utf-8?B?Qmk2ZGdFdWJ5dTZoRDB0STBsSDNLSzJMbFluZXdLRmdoMDJvTFlmMnZoRjk3?=
 =?utf-8?B?Q3Rxc0E1YVp5dnBvMjlvQnd5QWJ0cDBWVEladjBqK0Nqcmp3K2NJdkt5OWV6?=
 =?utf-8?B?ckxQZXVmOHpyU0hYaTNteHFrQXJyWGZGa3JJa1ZITWVoSWliWEU5SW9JWTg2?=
 =?utf-8?B?UC9tRXFHTk9ObVdQdG9XV292RVFSWnhqT044RmJsRWtFV3cwZnZyNTg0c21l?=
 =?utf-8?B?T3FlbndkaVJGY0RzN1F2czIzLzlRNndQdUc5Q29Xc21lVUJKbUxhOTI1dC9i?=
 =?utf-8?B?RG9EV3FQRGlHbGhDSXVtSW1TdCtRdVRpYUUzWDJ1Z0k0VFJDdHJ3dzdOTWVC?=
 =?utf-8?B?eEpQejNwMDB2d2N1ek1kMm1pTjZ1UGJhY0xlNmc5L1R2Rk9yNThlYjVOYjZQ?=
 =?utf-8?Q?YJbXbyAF4DSyS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHlncG5LWGZLN1VRbUdlY3ltR0Z5eGNYTEM2b3lRZm5pUG5keWl6dEs0YmRR?=
 =?utf-8?B?T2JFNGg5WFd5QmNrV3hIS3dvMFBRTHZ5emg3c09FS0x3OGtHdU5NZDRRSGFq?=
 =?utf-8?B?ajFoVWlHdXk4TnMzWS9BdWNtV0RXckZsaHZGRkFhd1ZPZXZqTVNUTWNUaDgx?=
 =?utf-8?B?My9KRm5vcGZFWXBVbi82SkdjdG9nRHRVSUJXT21ZY1dvSGtZR2JFV013TU42?=
 =?utf-8?B?Ym9BNUlEVDJuUnd5TzhTQU9MUnA4OVlhTVNBRjRVRzdOdlhLOWpoUXRheHBH?=
 =?utf-8?B?eUhYVy8vbU1pZVJ5NnVUUU5xWGJXYThXRUpiTHA3UUdOZ1Y1VGEzby9vMDdy?=
 =?utf-8?B?dHB3dTY5eERleDRaUUg1NGNDUkhmS0daeEkwV0N2cnZ2VW04SlZ3SkhtclN3?=
 =?utf-8?B?QnVmZVNqYWtoaXgycFpxYkVqMjhJdnFnWXlMM0JDdUJpTWNzQ0RtNHcrR056?=
 =?utf-8?B?K2VrSXUrQlZTVWpwMkpUNXhZcGRqcWFBcmpzYnB0ZnptVGFIWWpWTjA5emRo?=
 =?utf-8?B?M3dlYVFGYVlhWHk1blRVVnVTL2ZROFdGdXdHS096UWpoaGUyRnI4ME5tVXU5?=
 =?utf-8?B?STFlL0owV3pzbDhEL0g4a2JwSnU3aUJGeG83YjR2a2lRRU9DalViVGVHdzB4?=
 =?utf-8?B?U3JCY3J5UW1YSmhyNjRIMXdjVXk1ME9jN3Q5MXNhN0F1WU9pTzk4ZDBrVC9r?=
 =?utf-8?B?d1Z5cG1QNlEzaG1SaWl0VHNkeWhWcDBkalVINHkvbnJacFhZZHVhRDJJWTlv?=
 =?utf-8?B?dFhtb212c3JFc3J6bWl5UnRLb3lOMFQyaG5LMnU4Q2RuUVNvZEp5dFV2Tm40?=
 =?utf-8?B?djdNNkVTTFpkWXUvR2UyNGRzN3dkUXVNVHV3Q3pwZXg0Q3BFWVZ3WFY1eUMy?=
 =?utf-8?B?WDBIaGg2Z2ZKMlZLdEFJWkRtUE91akJUek5BaVdUYzlQWit4Vkd2Y2d6TGha?=
 =?utf-8?B?SFdZZVFNMmpoTmhYRWZseE1vejNjTzZ5VHhQaFYwa3NOekhjZUpZREJlaGNm?=
 =?utf-8?B?dFhtVGVSeE5XU3lCaVE4a1NzZ1N1c0hSb0kzWTc0TFcwMU00bUpGZDFhQWx0?=
 =?utf-8?B?TjNXdGUzcWUrcEtLajN3Q0F1aEF5enM5TzJoYWFpYlNudUhERXJERnZDZHc3?=
 =?utf-8?B?QnR0eHhKVnVzS0V2RGFCcW53T2JtNDl4Uk5NT0JySFhZdFp0TDFVUlNUOG1n?=
 =?utf-8?B?aFUvY3hZRS9jcXZzQ09mNXJONG00Y3dXZFZjclZzYVhhOURJb0V2UDFtRzND?=
 =?utf-8?B?MlMzOEJiK3N5RThjY1M3RHU5aWpVcUVsaHNMWmR1MXJkRlRTRWNpV1hGNlNs?=
 =?utf-8?B?SWFTUm5FVFEwRjZjVGJzTjZtUmY4ZGZmb3JyWVB0elRpYXBqeFN5WnRTMVkr?=
 =?utf-8?B?OU5RVjNrdXoxT2NQNHYyVFRVeEsvYUg0R1lVdzZuTkhzaTlaa2xxR3lkWEtk?=
 =?utf-8?B?VHFLakZGdjNmZHJvVy90dEt3WCs0YXF1WVlWdXVrZEJzQkFZamVPWkFIZ1Fz?=
 =?utf-8?B?bHhFYkZGS1RWMDR3K1I2a1Z3ZXI1NzJRRzhrR0VmZkhCSU4xWm1YNW55MnZZ?=
 =?utf-8?B?QzU0UkpKRTQ3aW5qTnB0R2x1UmV4VGozYmRTaVRUVmcwZkxGM3RFQjBQd0tm?=
 =?utf-8?B?ZC8wQTdIbzk3R1MyUXV6OGd6dVl3eTc2QlRhMVBxSnd5U3QwbnFDeng4akxE?=
 =?utf-8?B?eVA2VURFT2VwSWVUa0lHMUliZnJjcUp6dVVwM042anNzemV6Y0o0ODZ1MVRB?=
 =?utf-8?B?Q1U2UVc1MWtuQWR6V0EwVEVnSjlTai9XVlNiazNjaXNUWUtrS3lzcThRTE5Y?=
 =?utf-8?B?cmNyd3ZCOFpHZGx3S3N3b3BVSDQ0Qzk0S0dZMkJWb0lIa1FOL3ZBNkhhRUlp?=
 =?utf-8?B?UWd6NGhXSmQ3U25YTWVsY1FlZllHbnZlNE1tNWp2UmozdXJhbmMvMWpFY1VZ?=
 =?utf-8?B?S25wQ3YxcTBKZjZuSFdBaHRqbmNNV21oU1liZTBzQ2V4dzVlcmgwOGowbFVK?=
 =?utf-8?B?QjhRQStqV08yVUFiSDVZZS9UaHQvWGNtM3BXczRkS1lIRnRoUzFoRk5EMlg2?=
 =?utf-8?B?YWp5MS9mcmtoUzF1T3ZmZThJMkJ6b0VJcGt5d2NrbHZYT085RHYvTVRKYzg1?=
 =?utf-8?Q?AqF3sJq29OirKBcF45M3zniRO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62a1eb7c-c986-40e9-df77-08dd774d2992
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 09:59:05.3934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cRYXgMAnqLxNpPaRKF0r00HX2obFHxilU1eUJ1r3r7UTlmrDBI0npSOWbwug/Y6tHTKKMsNpXGlbqTq4qd6ALQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6735
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

On 4/8/2025 5:14 AM, Vinay Belgaumkar wrote:
> Add a basic test that uses PMU to read GT actual and requested
> frequencies while running a workload.
> 
> v2: Rebase and comments (Riana)
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/intel/xe_pmu.c | 128 ++++++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 127 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
> index 175bbf374..fbac9c798 100644
> --- a/tests/intel/xe_pmu.c
> +++ b/tests/intel/xe_pmu.c
> @@ -376,6 +376,94 @@ static void test_gt_c6_idle(int xe, unsigned int gt)
>   	close(pmu_fd);
>   }
>   
> +/**
> + * SUBTEST: gt-frequency
> + * Description: Validate we can collect accurate frequency PMU stats
> + *		while running a workload.
> + */
> +static void test_gt_frequency(int fd, struct drm_xe_engine_class_instance *eci)
> +{
> +	struct xe_cork *cork = NULL;
> +	uint64_t end[2], start[2];
> +	unsigned long config_rq_freq, config_act_freq;
> +	double min[2], max[2];
> +	uint32_t gt = eci->gt_id;
> +	uint32_t orig_min = xe_gt_get_freq(fd, eci->gt_id, "min");
> +	uint32_t orig_max = xe_gt_get_freq(fd, eci->gt_id, "max");
> +	uint32_t vm;
> +	int pmu_fd[2];
> +
> +	config_rq_freq = get_event_config(gt, NULL, "gt-requested-frequency");
> +	pmu_fd[0] = open_group(fd, config_rq_freq, -1);
> +
> +	config_act_freq = get_event_config(gt, NULL, "gt-actual-frequency");
> +	pmu_fd[1] = open_group(fd, config_act_freq, pmu_fd[0]);
> +
> +	vm = xe_vm_create(fd, 0, 0);
> +
> +	cork = xe_cork_create_opts(fd, eci, vm, 1, 1);
> +	xe_cork_sync_start(fd, cork);
> +
> +	/*
> +	 * Set GPU to min frequency and read PMU counters.
> +	 */
> +	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_min) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_min);
> +
> +	pmu_read_multi(pmu_fd[0], 2, start);
> +	usleep(SLEEP_DURATION * USEC_PER_SEC);
> +	pmu_read_multi(pmu_fd[0], 2, end);
> +
> +	min[0] = (end[0] - start[0]);
> +	min[1] = (end[1] - start[1]);
> +
> +	/*
> +	 * Set GPU to max frequency and read PMU counters.
> +	 */
> +	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_max) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_max);
> +	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_max) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_max);
> +
> +	pmu_read_multi(pmu_fd[0], 2, start);
> +	usleep(SLEEP_DURATION * USEC_PER_SEC);
> +	pmu_read_multi(pmu_fd[0], 2, end);
> +
> +	max[0] = (end[0] - start[0]);
> +	max[1] = (end[1] - start[1]);
> +
> +	xe_cork_sync_end(fd, cork);
> +
> +	/*
> +	 * Restore min/max.
> +	 */
> +	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_min) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_min);
> +
> +	igt_info("Minimum frequency: requested %.1f, actual %.1f\n",
> +		 min[0], min[1]);
> +	igt_info("Maximum frequency: requested %.1f, actual %.1f\n",
> +		 max[0], max[1]);
> +
> +	close(pmu_fd[0]);
> +	close(pmu_fd[1]);
> +
> +	if (cork)
> +		xe_cork_destroy(fd, cork);
> +
> +	xe_vm_destroy(fd, vm);
> +
> +	close(pmu_fd[0]);
> +	close(pmu_fd[1]);
> +
> +	assert_within_epsilon(min[0], orig_min, tolerance);
> +	/*
> +	 * On thermally throttled devices we cannot be sure maximum frequency
> +	 * can be reached so use larger tolerance downwards.
> +	 */
> +	assert_within_epsilon_up_down(max[0], orig_max, tolerance, 0.15f);
> +}
> +
>   static unsigned int enable_and_provision_vfs(int fd)
>   {
>   	unsigned int gt, num_vfs;
> @@ -429,8 +517,9 @@ static void disable_vfs(int fd)
>   
>   igt_main
>   {
> -	int fd, gt;
> +	int fd, gt, num_gts;
>   	struct drm_xe_engine_class_instance *eci;
> +	uint32_t *stash_min, *stash_max;
>   
>   	igt_fixture {
>   		fd = drm_open_driver(DRIVER_XE);
> @@ -482,6 +571,43 @@ igt_main
>   			disable_vfs(fd);
>   	}
>   
> +	igt_subtest_group {
> +		igt_fixture {
> +			igt_require(xe_sysfs_gt_has_node(fd, 0, "freq0"));
> +			num_gts = xe_number_gt(fd);
> +
> +			stash_min = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
> +			stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
> +
> +			xe_for_each_gt(fd, gt) {
> +				stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
> +				stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
This can be moved inside the igt_subtest with local variables since it's 
only one test. The subtest group is executed for all the other tests too

Thanks
Riana> +			}
> +		}
> +
> +		igt_describe("Validate PMU GT freq measured is within the tolerance");
> +		igt_subtest_with_dynamic("gt-frequency") {
> +			xe_for_each_gt(fd, gt) {
> +				igt_dynamic_f("gt%u", gt)
> +				xe_for_each_engine(fd, eci) {
> +					if (gt == eci->gt_id) {
> +						test_gt_frequency(fd, eci);
> +						break;
> +					}
> +				}
> +			}
> +		}
> +
> +		igt_fixture {
> +			xe_for_each_gt(fd, gt) {
> +				xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
> +				xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
> +			}
> +			free(stash_min);
> +			free(stash_max);
> +		}
> +	}
> +
>   	igt_fixture {
>   		close(fd);
>   	}

