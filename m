Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5876AA504EC
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 17:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E090610E058;
	Wed,  5 Mar 2025 16:32:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GcAFTfpX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B336610E058
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Mar 2025 16:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741192367; x=1772728367;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NwF5a0zWJMCOaafSTpZ1Qu6wAmHMVMh0BZoJgHs++Qs=;
 b=GcAFTfpXBm4D+zTFy1gp+0b41GOn//LI+k8BTJbjCq49LP++viNqn9TG
 wi3vikWSHGpFBmpsthUhDZ3rfdOg/es2uDuEPpKTiapLgGOaatmNnosWh
 hNDaK6d3F1uMU0IlPz2swfZxQiAmotRa0FfpGa7iQmNO7ZEn7Lb+W5ZpS
 lt2O8Lv3UV1RG5EKD00rYRU1ING+N95WjyhuX8QAJU1Eu/nRdpLIwsvA2
 4uHHu9nPx/PSsUPKetj3oYIOG76utLRGIz9V4ZgvHTYM/WlIj9vzyRNte
 0/bFzUw78P848AmW5XCnO42qa5k1Flo9nkIM+kK7zlpOZh/QYuVhX1A4v A==;
X-CSE-ConnectionGUID: rf6gs1z8QdG4mS0z9K0LNA==
X-CSE-MsgGUID: Lps53SC5QZytakNnjEt0mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41876037"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="41876037"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:32:46 -0800
X-CSE-ConnectionGUID: j3kCBirFTCOuDQowyoGvnw==
X-CSE-MsgGUID: 1zbJMRWjQruwWLx5Cu1tnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155950982"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2025 08:32:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Mar 2025 08:32:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 08:32:45 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 08:32:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m+MGGIGkTC2qeF7FCwaRTRmo+FNbVwGZvQ4o1qHeajI5d9KS3i9FgKMcD//neHrGN9MJnABSfh/n574O0+cREKwFd7B1TiZ6KyMCrG2sCizia1KEpRXN4TiilyzlaoxN6/xj91X8dvCJfxv8PanFUygRdMXCSa7FPHDPYUQ5u+UEzmqLZGgC4rb6r6UIBAXCN09rORDZYQ/6uCpewH2mSW3plnwURK0EBZxld6sBJYiLOLJHLZiovGr7PtxUxgOJ2fntoxbvPR3cKnjuJNQHVzwv2uPgEqEm/TRKJsYI0rlbGx//riROzhSJ2tdDtW1Z6LcO6dmMMcKRdpwmlZPNxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GB+cC7KGIZbdqSCk+OaJmckLRPnWAyArG4Dg9hUGpwY=;
 b=NfXSJghBkQt9VR5psUoUKqQvqzRp8gAMcRQya9zzv5OA//bonHtF6GJPi1ZSTtFcimc30qZ6HiJyzWEIq6fUHXM8aehX/WN3/ZFTKLnGejp6tsxQ1EQAAotKXKFYRPPaUIcMu/UPPyI1fnaREmVike9QyS2yItLqJcqO6nuLPLu9iWqe4ksM/DEwnShYSxLgwbZhRZkf7hWYUlhgBmH3w8uUWKk34L4smDE56QJvF5fVetSiTHfK6CDXHpU2ad0Gs3g0ejAT2bo9a7N6zOCJTfu63qBzhCElmTmBV1sF3sDfsCSPKKJhkq68NENIhF2czX8ZDMXNaDKnr8FNiYUX5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by MW6PR11MB8367.namprd11.prod.outlook.com (2603:10b6:303:249::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Wed, 5 Mar
 2025 16:32:00 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%6]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 16:31:59 +0000
Date: Wed, 5 Mar 2025 17:31:49 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>, <chris.p.wilson@intel.com>
Subject: Re: [PATCH v2] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <p7p3dfiuyss4fyu33ll7dl2lovhiga4nrmqtzvmq22nz6qorxb@3cnervmi5h6q>
References: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
X-ClientProxiedBy: VI1PR08CA0231.eurprd08.prod.outlook.com
 (2603:10a6:802:15::40) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|MW6PR11MB8367:EE_
X-MS-Office365-Filtering-Correlation-Id: 6195276c-42f1-4b3e-c192-08dd5c0340ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Zm1JRHY0ZUhXOHcvUCtVNmJmNXpBNWExRUlFcUE3cm1PNG1GV1RDNjljSWcy?=
 =?utf-8?B?MDBKc08vRFF3dTBYUk9nVFg5K0syQ05SMlBSV3dlNUdhQmNaUjB6bWhJOU9D?=
 =?utf-8?B?enZCSEhXRFhSS0hGQVlrQURIM2Nra2pPWi8xcW9GZTlrMkRBVGtWMk1xY2lh?=
 =?utf-8?B?eDFFcDQ4UnpJVXQ5elU3TWF3cHhDQmNsUm9HZ3J3WVNtU0x0L0VmYlNJS3Bk?=
 =?utf-8?B?aU80cHZlbldmdzlXYUM1TGcwNE5vcHhVZUxDcE9QQzBXUm5kUXB4WVZSRURn?=
 =?utf-8?B?TTZFcURXNE5RMlRvbmJ3bzFSRlpmOUVSTE1jQnhZQkp3VlR6THY1cFk4dUpl?=
 =?utf-8?B?NlR6S0ZobGlXS2hkSW5tTFZHN0pOQnd6b25GWUhjUUl5cC9vTUE5RitVYjhE?=
 =?utf-8?B?SWR2eHl3MjIycEJORndCd1UrMlZnS3dxSTBjVDRQZjBWQ20vRjVwcHJLS3Qv?=
 =?utf-8?B?VHJXNExyUTYzWTdvYk4vRVZ1K2pIMWljNW56Nnp2K2czRlBUbU5QS0RzUjFB?=
 =?utf-8?B?di8vZlowcGhHV2tqclJDdXU2dkFvTGFvbjl2dENaaVhzK1hOOU1JUmtNdUtk?=
 =?utf-8?B?c2hLbWpMb3lOLzRDVjVvQWNadnNuT0hzV1c0MG9oc0oxOUZrY1YvS01lNEFo?=
 =?utf-8?B?bmNEZkdqSmpob3dCQlRPZGlmWW5VR3JGNWxCbmF0aGtDcmh0T3NqaXlrdXNk?=
 =?utf-8?B?UzMwODVGTnJlM3dxNmhJUXAxWXVwSHRPcG9ldWlsNjlYb1pGNHZUUGExSVRw?=
 =?utf-8?B?Q0RpSml5Z3h6aWF1UWx5SVJrdEJaYnQrMjloVk9YN1dOV2FSSDNTdHFkWWhL?=
 =?utf-8?B?cWNIaWZSRnBPN1BxY3FCTzdjdXVEaVNKTWZrZ2VZSEw1ZExEbVNET0M4cnZR?=
 =?utf-8?B?TmJvRmpuZUtoYmZPV3JNcHNJV0xrOW02NTBNSUlVd0ZGdnRZR0hvUGFIZzZ1?=
 =?utf-8?B?cnBhN0VUQitHc0kwR2JCa1F2eUIyOUhrM1VPNElQRE1FWkdUa3Z6V1E4N0Rh?=
 =?utf-8?B?bzkwcWVFcDFUQnNScEUwempjdUErbzJnZ2lNbGNzSWgzNFhCOGNqaGp4aXNl?=
 =?utf-8?B?Zi9VOStlazhZSjlBMjllTFlaeXg2THdNMDZ2RDN4NkwvN25pOGtRR3poYW9q?=
 =?utf-8?B?bnVVTmdXckRKUUxmdlI5K2FSZkliU3dQZFRDeXJhZVBMTW92MUgycHkzcEJB?=
 =?utf-8?B?dEgxQ0p6YkhFbStvZitOTUlQS0JPcnZ2L2hNU1E4L21qNXZHT0swa0dobmQ1?=
 =?utf-8?B?RHdXRWY5SmRZMmdCNjZZQkhaZUVlWkg5blQ2MzdqRm9UdGpaSzljRHdvaTNk?=
 =?utf-8?B?TVZqUi9FUDNlS3ZLSGxMYytHNkxjWUs2dFA5RWlHajBHSGJrd2Z6NldWRDZP?=
 =?utf-8?B?VExFZXdJdUhCaG9kVENDV09yODBwODc5Tm53dzVMdWdJbURSaERtZDYwN25B?=
 =?utf-8?B?UEpiNnNQNmREUEV5VUYyaWdnT0RHM0Y0a0ZKZk50RGFJcDNiandjTlBMellJ?=
 =?utf-8?B?aFlSaGt4SFRUd3hGellMNEppUFlEWEpRaHg0azgvUHY1djFYd21YSjVWWEpk?=
 =?utf-8?B?eFAyU2VCOW9RbW5RaGdqUDFyL0ZqcG51K3pVTlVLM2JUc2hWL2lqRFhaeWlG?=
 =?utf-8?B?Q1FvMEkrbVBXVFB2YUpEYVNOTEpxcGMxT3ByVHM4ZkYvWjJVdEd6VGNTYTlQ?=
 =?utf-8?B?ZmNoYytTK3lpTUJwVTk2b3hJNUtpeWpRR0VPd05yV0hHSEJ6RzhEUWE5YjRi?=
 =?utf-8?B?VmtvVjQ0QkZJclpFUE9kOEZZNGdxdUhvTkhSNUJObnM1b0Jlak5GNmpjNlk4?=
 =?utf-8?B?b2o4WkE4Skk3L0RxbCtmWGw3M1NVdVh1dDcrdEYrMjIwY0lQWFc2bTFyK1Zr?=
 =?utf-8?Q?6xHw7vpY7DQyv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVp0aVRYeHNkaTg5N3U3aGU3cnBGaVpIMU1VNTNWRFBmazRrNnduUVMxNGN2?=
 =?utf-8?B?MjlsWEM1KzR5ekE2Ny8zTXJRYVM0dGkrbmM3Q1RoRTVraW1XeCtpY2hUWGkw?=
 =?utf-8?B?S3p1eVpxNVBidU1ncG5pcHcxWUN1SEdzN3FXb2pVaENtSkRnOTJKUG5nRmNC?=
 =?utf-8?B?bWMzUlp6aDNLOVlmSTlQdVJBNjlDQkJVVWRadUtHajJSaThyR3Y3MEJUVUU4?=
 =?utf-8?B?N2JhVnpjYkpTR09PZmx6RWM4OHlRQ0U2R1NnbjJTdWZZQVdmQ2d3ZHA5UkFv?=
 =?utf-8?B?SXQ4dlU0M21DVWN3dEZxNmxXVldEYUhrMjJiNjhNNUpYc1U4Y3lFbytmclVN?=
 =?utf-8?B?S1lrT25KUVc4d0kyQ0RLY3RxMkFNV2wvbDg5c1F2cUFxOE54WXVGQTByUnJM?=
 =?utf-8?B?VFhNY0gralJUY3IxbXlvT2xEMFhqL2plZWlGSUpCelVlb2NKb3RNQzFCT280?=
 =?utf-8?B?SEwrTUxBcVF6QWY2R3p2THZCeEpDbXVGMy8veUtVU1pnenlqY1UrUkQwTkxs?=
 =?utf-8?B?TFZvTGdIcy9nODFHb1dRSDluYVNVM0NRTVFKcTV3MW9weE5zQlJlRjVQTTMr?=
 =?utf-8?B?THVpVUpOMFRIaGVKMk0yTi9Kd2VYaEVUUHhtSDY5SHovd2wzcEQ1T3RyWm9p?=
 =?utf-8?B?QXRwbW9keWJGTjlmYmlpSHREc1NpVUNmSWRPcWZJYjVJMWJ5M0NNVDQwdUtR?=
 =?utf-8?B?LzV1MVErVkJudk9XMWVLNjgxOERTM1lwS0g2QjRnY25vZEptS01wY0FwZURj?=
 =?utf-8?B?R3lROEk3MENhc3FYd3F5blE4ZVNYa2Q4Z1B1OTFsUkV4U1NsMk9CcWltR3Rm?=
 =?utf-8?B?Y2s0QkFXTmtNOThvMndQT3hRaFUwK2lieExSZExKN3poeGxWL3Myd2hINXNY?=
 =?utf-8?B?dWZDOXVCWkR4anQ3N3FDb29aT0tFZ2NaVmwvclhCWVE3b2F1RUYwTmZ1RUNT?=
 =?utf-8?B?aHFKVEtWL1Q5Y2RnMS81WFBYaXVXQm5kZTZ0WUdmQWQ3MFZGTUc2VExUMlJZ?=
 =?utf-8?B?VmZGR1Y1NTRxVUtxQlRoaFJ5K3NUODg4NlozMmhiZDdVZDZqOXdDK1I1UDMw?=
 =?utf-8?B?YWJpQXJrQTl3WVpCdkIweGxXdCtidDkvN1A5S1piTVpnclo1TVM4U1lrME5V?=
 =?utf-8?B?S2JxcERiNnhDajFRcy9ETy93K1p3NEt3NWt3WVYwcUpqVkF3TXloZ09NMVNG?=
 =?utf-8?B?eUEzSllTbk1KSnhlbGFGQlYwTDFLYzdEdktsb3JCUFJGZXZ3MmUzdzFsekUz?=
 =?utf-8?B?YVMrZCtwSGVJcE5CQzJPejR4R0piWk8zaDNvbGFoYm5Idlp1YXBzNXU2RXd4?=
 =?utf-8?B?dDM4dFU2V2VvT0V6QXladmZRQ1djS251aG9RTVhBaUx1ekFpUmp6bkR3NERP?=
 =?utf-8?B?b2QvZG5Da01uczQzVmRQZk1rdC8xM3RIMmMvZUFaelhURExRc3FwdFFQK2dS?=
 =?utf-8?B?SUxBa2l6ODUxS2hSeGlPbVhPRzdyT3BTc3ZWV1hnbWdUejJBKzhXTXk2NzZr?=
 =?utf-8?B?bDFjTGxsMkR1U1pSQXZQL25aN2FhL0ZuYk1jbVhXblowOHVHeVBINHNCOW5X?=
 =?utf-8?B?ZG9zejNnZlFENjF6S2RUNFlJUy8xQXhTdmdORWREK1ZVZlpuK3NRMGp5Z1J2?=
 =?utf-8?B?OWFmTFZHRjUxRno5c1dLTmhHcm1oaEVLcGo4M0cvRVdiazhiVlN2dEdrU1hj?=
 =?utf-8?B?U0Vhd2kxUEV0dEJRdThrbThKekhDOEhVOXpMZURYZDlGbW8wc3V6Qk5yZlNY?=
 =?utf-8?B?OEh3VnBralFIUlA3UDR1SXhZWlJVaFF0empzbXlUUHJpZnZvR2RzQS8xN0lU?=
 =?utf-8?B?bHFFWDN5MHNJanp2S2tOUVZ1dUQrUkZaWU5YWVRVWG5FTUM0U2VxNEFvQlc0?=
 =?utf-8?B?QlN0WkpuY2s3Z2tmNDR5QWlhTUdwdTh2dFJJQUlLOEFvMEJXZzhIR3RobWNZ?=
 =?utf-8?B?ZEIyQkdaQ0xDelYyME1nTjJIRSsvRGdmZ1I1bWVnQU1xZlg2SHhIalo0cFBI?=
 =?utf-8?B?bndPY1BickIvNmo2cUpXZXhwVFNhUzVHb29Hc21aTFQxbUt1N3A3MnM2UVBu?=
 =?utf-8?B?WjJUWkpFak5OV2hER2dsTENPWUhKem1XTWZPZ0VuWEdPREpxME5zZ290QVNK?=
 =?utf-8?B?bXAyVXJvamJocEZoYjRJU2JEbjF4UnZjM041R3NXVlZYc0ZiTnIrZXpZWHgv?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6195276c-42f1-4b3e-c192-08dd5c0340ad
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 16:31:59.7961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4nXwV2dbgkmEzxo+VPa5l6k9lVZAcLrcY7VtaDNF7QiBqdpzXUv3caLyfCmSBNbI+s2h4wlmC3EUfSUY9otFu+e8P3OkBBhoQ+7L1ksHxYM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8367
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

Hi Mikolaj,

On 2025-03-04 at 09:43:26 GMT, Mikolaj Wasiak wrote:
> When the driver is loaded on the system with numa nodes it might be run in
> a kthread, which makes it impossible to use current->mm in the selftest.
> This patch allows the selftest to use current->mm by using active_mm.
> 
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> Reviewed-by: Eugene Kobyak <eugene.kobyak@intel.com>
> ---
> v1 -> v2: Simplify logic of enabling and disabling active_mm
> 
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 804f74084bd4..9c3f17e51885 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1837,6 +1837,8 @@ static int igt_mmap_revoke(void *arg)
>  
>  int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
>  {
> +	int ret;
> +	bool unuse_mm = false;
>  	static const struct i915_subtest tests[] = {
>  		SUBTEST(igt_partial_tiling),
>  		SUBTEST(igt_smoke_tiling),
> @@ -1848,5 +1850,15 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(igt_mmap_gpu),
>  	};
>  
> -	return i915_live_subtests(tests, i915);
> +	if (!current->mm) {
> +		kthread_use_mm(current->active_mm);

Don't we run into the same issue as in V1, meaning we use an unknown
current->active_mm (since we run in a kthread, and cannot control it) to
use as the current->mm? Maybe a better approach would be to create a new
mm for the duration of the test, similarly to how the patch Janusz
mentioned does it? (51104c19d857)

Thanks
Krzysztof
